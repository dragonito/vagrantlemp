#!/usr/bin/env bash

curl -s https://packagecloud.io/install/repositories/phalcon/stable/script.deb.sh | sudo bash
sudo apt-get update

sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install nginx php-curl php7.2-phalcon php7.2-cli php7.2-fpm php7.2-curl php7.2-gd php7.2-mysql php7.2-mbstring zip unzip
sudo service php7.2-fpm restart

sudo rm -rf /etc/nginx/sites-enabled/*
sudo cp /srv/www/provision/dev_www.conf /etc/nginx/sites-enabled/

sudo systemctl restart nginx