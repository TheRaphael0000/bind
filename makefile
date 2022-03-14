install:
	cp named.conf.options /etc/bind/
	cp named.conf.local /etc/bind
	zsh ./update_bind.sh
	systemctl restart bind9
