$TTL	604800
@	IN	SOA	localhost. root.localhost. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	theraphael0000.ch.
@	IN	A	{{ ip }}
www IN  A	{{ ip }}
files IN  A	{{ ip }}
dav IN  A	{{ ip }}
challsection IN  A       {{ ip }}
cv IN A {{ ip }}
