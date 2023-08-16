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
@ IN MX 5 mta-gw.infomaniak.ch.
@ IN TXT "v=spf1 include:spf.infomaniak.ch -all"
autoconfig IN CNAME infomaniak.com.
autodiscover IN CNAME infomaniak.com.
20230816._domainkey IN TXT "v=DKIM1; t=s; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA7JRZjIwZF9LECaIXyWrW5Wco9HO/cXQQ952lS4oMNjjro5Ls5in+/zPaeqKtcVEFXZ510DK8yFbcood8zE1s0U9ZQjYIDj+eG1pfHD4f9Ou0f4jmeFu4sRz72jWqzY+o22QEvr+gwtAHFwiI46wi6BWT+DphC3ZofKcz7Tr/V3tQ8JBtpTNadLoEu6A1RO" "bBpiDzmLjKD+E6Fvp7Q6sfQq7WSsdB++zvJx2ggHgoNfEVis+QWb3+KXuWThBcODIo07aAECa/8/BqUba46botTjJP8KXPOLL/fXaLoJEDM98HjF1C5dxExDhj8UYNH2pglFOmDIKOt0lUR8vIoAFJhwIDAQAB"

