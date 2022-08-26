#!/bin/sh

sudo apt-get update;
sudo apt-get dist-upgrade -y;
sudo apt-get autoclean -y;
sudo apt-get autoremove -y;
sudo apt-get install apache2
sudo snap install core;
sudo snap refresh core;
sudo snap install certbot --classic;
sudo ln -s /snap/bin/certbot /usr/bin/certbot;
sudo certbot --apache;
sudo rm /var/www/html/index.html

#copy pictures over to /var/www/html
#start apache with sudo systemctl start apache2