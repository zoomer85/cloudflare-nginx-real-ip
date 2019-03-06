#!/bin/bash
FILE="/etc/nginx/conf.d/00_cloudflare.conf"
DATE=$(date)
echo "#-------------Cloudflare------------" > $FILE;
echo "#--- ${DATE} ---" >> $FILE;
echo "#" >> $FILE;
for v4 in `curl https://www.cloudflare.com/ips-v4`; do
        echo "set_real_ip_from $v4;" >> $FILE;
done
echo "#" >> $FILE;
for v6 in `curl https://www.cloudflare.com/ips-v6`; do
        echo "set_real_ip_from $v6;" >> $FILE;
done
echo "#" >>$FILE;
echo "real_ip_header CF-Connecting-IP;" >> $FILE;
echo "#" >> $FILE;

service nginx configtest && service nginx restart
