$TTL 604800

@   IN SOA localhost. root.localhost. (
; Serial / Refresh / Retry / Expire / Negative Cache TTL
2
604800
86400
2419200
604800)

@   IN NS scouts-bevaix.ch.
@   IN  A {{ ip }}
www IN  A {{ ip }}
