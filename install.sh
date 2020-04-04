#!/bin/sh

FRP_VERSION="0.32.1"

sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

apk add --no-cache wget
wget --no-check-certificate https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_amd64.tar.gz \
-e use_proxy=yes -e http_proxy=http://192.168.1.101:7890 -O frp.tar.gz
tar xzf frp.tar.gz
rm -rf frp.tar.gz

mv frp_${FRP_VERSION}_linux_amd64/frps /usr/local/frps
rm frp_* -rf

cat <<EOT >> /etc/frps.ini
[common]
bind_port = 7000
bind_udp_port = 7001
vhost_http_port = 80
vhost_https_port = 443
EOT