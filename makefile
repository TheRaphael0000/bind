install:
	cp named.conf.options /etc/bind/
	cp named.conf.local /etc/bind
	systemctl restart bind9
