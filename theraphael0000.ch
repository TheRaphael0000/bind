$TTL 604800

@   IN SOA localhost. root.localhost. (
; Serial / Refresh / Retry / Expire / Negative Cache TTL
2
604800
86400
2419200
604800)

@            IN NS theraphael0000.ch.
@            IN  A {{ ip }}
www          IN  A {{ ip }}
files        IN  A {{ ip }}
dav          IN  A {{ ip }}
cv           IN  A {{ ip }}
blog         IN  A {{ ip }}

