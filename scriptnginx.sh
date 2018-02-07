#!/bin/bash
echo "Script de Wordpress en NGINX"
rm -r /usr/share/nginx/html/*
cd ~
apt install -y apt-transport-https lsb-release ca-certificates wget
wget http://wordpress.org/latest.tar.gz
tar -xf latest.tar.gz
chown -R nginx:nginx /usr/share/nginx/html/*
cp -r wordpress/* /usr/share/nginx/html/
mkdir /usr/share/nginx/html/wp-content/uploads
cd /usr/share/nginx/html
cp wp-config-sample.php wp-config.php
sed -i 's/database_name_here/wordb/g' wp-config.php
sed -i 's/username_here/root/g' wp-config.php
sed -i 's/password_here/root/g' wp-config.php
sed -i 's/localhost/db/g' wp-config.php
echo "Script Finalizado Correctamente"
/usr/local/bin/supervisord -n -c /etc/supervisord.conf
