# Nginx Real IP for Cloudflare IPs
Bash script for setting nginx config to show real ips.

```
#!/bin/bash
...
```

# Nginx Real IP
 Since CloudFlare acts as a reverse proxy, all connections now come from one of CloudFlare's IP addresses. CloudFlare follows industry standards and includes the originating IP address in the X-Forwarded-For header. The CF-Connecting-IP header may also be used. To preserve the originating IP of your visitor, use the following Nginx module and parameters:

http://nginx.org/en/docs/http/ngx_http_realip_module.html
```
   # Cloudflare
   set_real_ip_from   199.27.128.0/21;
   set_real_ip_from   173.245.48.0/20;
   set_real_ip_from   103.21.244.0/22;
   set_real_ip_from   103.22.200.0/22;
   set_real_ip_from   103.31.4.0/22;
   set_real_ip_from   141.101.64.0/18;
   set_real_ip_from   108.162.192.0/18;
   set_real_ip_from   190.93.240.0/20;
   set_real_ip_from   188.114.96.0/20;   
   set_real_ip_from   197.234.240.0/22;
   set_real_ip_from   198.41.128.0/17;
   set_real_ip_from   162.158.0.0/15;
   set_real_ip_from   104.16.0.0/12;
   set_real_ip_from   2400:cb00::/32;
   set_real_ip_from   2606:4700::/32;
   set_real_ip_from   2803:f800::/32;
   set_real_ip_from   2405:b500::/32;
   set_real_ip_from   2405:8100::/32;
   ...
   real_ip_header     CF-Connecting-IP;
```
