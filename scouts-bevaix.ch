$TTL	604800
@	IN	SOA	scouts-bevaix.ch. root.scouts-bevaix.ch. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	scouts-bevaix.ch.
@	IN	A	{{ ip }}
www IN  A	{{ ip }}
