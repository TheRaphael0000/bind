$TTL	604800
@	IN	SOA	rmargueron.ch. root.rmargueron.ch. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	rmargueron.ch.
@	IN	A	{{ ip }}
www IN  A	{{ ip }}
