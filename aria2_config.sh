#!/bin/bash

cd ~/.aria2c

echo "Please input your domain name"
read Domain

#sed -i 11c\drive-name=gdrive  script.conf
#sed -i 14c\drive-dir=/Download  script.conf
#sed -i 17c\upload-log=/root/.aria2c/upload.log  script.conf

#sed -i 301c\on-download-complete=/root/.aria2c/upload.sh aria2.conf

sed -i 332c\rpc-secret=xiaohuyanghaoniubi84 aria2.conf
sed -i 340c\rpc-secure=false aria2.conf
sed -i 343c\rpc-certificate=/www/server/panel/vhost/ssl/$Domain/fullchain.pem aria2.conf
sed -i 346c\rpc-private-key=/www/server/panel/vhost/ssl/$Domain/privkey.pem aria2.conf

service aria2 restart
