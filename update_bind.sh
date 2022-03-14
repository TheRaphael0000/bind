#!/bin/zsh

IP=$(wget -O - https://ipecho.net/plain)

for f in *.ch;
do;
sed "s/%IP%/$IP/" "$f" > /etc/bind/zones/$f
done;
systemctl restart bind9
