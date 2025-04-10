#!/bin/bash

apt-get update
apt-get upgrade -y

apt install apache2 -y

echo "O apache foi instalado com sucesso!"

apt install unzip -y

echo "O unzip foi instalado com sucesso!"

cd /tmp
wget hhtps://github.con/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "O arquivo foi baixado com sucesso!"

unzip main.zip

cd linux-site-dio-main
cp -R * /var/www/html/