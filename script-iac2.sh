#!/bin/bash

echo "Preparando sistema e atualizando o servidor..."
apt-get update -y
apt-get upgrade -y
apt-get install unzip apache2 -y

echo "Baixando e copiando os arquivos da aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/


