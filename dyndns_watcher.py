import base64
import glob
import json
import os
import pathlib
import tempfile
import urllib.request

from jinja2 import Template

last_ip_filename = pathlib.Path(tempfile.gettempdir()) / "last_ip"
bind_zone_folder = "/etc/bind/zones/"
ip_fetcher_url = "https://ipecho.net/plain"
no_ip_update_route = "https://dynupdate.no-ip.com/nic/update"

config = json.load(open("config.json"))

# get previous ip
try:
    previous_ip = open(last_ip_filename, "rb").read().decode("utf-8")
except FileNotFoundError:
    previous_ip = None

current_ip = urllib.request.urlopen(ip_fetcher_url).read().decode("utf-8")

# nothing to do if the last check was
if previous_ip == current_ip:
    print(f"IP NOT CHANGED, {previous_ip} == {current_ip}")
    print("EXITING")
    exit()

print(f"IP CHANGED, {previous_ip} != {current_ip}")

# update the last ip file
open(last_ip_filename, "wb").write(current_ip.encode("utf-8"))

# ask no ip for ip update
print("NO-IP IP CHANGE REQUEST")
url = f"{no_ip_update_route}?hostname={','.join(config['noip_ddns'])}"
request = urllib.request.Request(url)
user_pass = f"{config['noip_user']}:{config['noip_pass']}".encode("ascii")
b64_user_pass = base64.b64encode(user_pass)
request.add_header("Authorization", f"Basic {b64_user_pass}")
result = urllib.request.urlopen(request)
print(result.read().decode("utf-8"))

# update bind zones files
dns_files = glob.glob("*.ch")

print("UPDATING ZONES")
for dns_file in dns_files:
    print("UPDATING ZONE FILE:", dns_file)
    template = Template(open(dns_file, "r").read())
    rendered_template = template.render(ip=current_ip)
    open(bind_zone_folder + dns_file,
         "wb").write(rendered_template.encode("utf-8"))

os.system("systemctl restart bind9")