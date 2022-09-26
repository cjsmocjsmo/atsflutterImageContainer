#!/bin/sh

sudo apt-get update;
sudo apt-get dist-upgrade -y;
sudo apt-get autoclean -y;
sudo apt-get autoremove -y;
sudo apt-get install apache2;
sudo snap install core;
sudo snap refresh core;
sudo snap install certbot --classic;
sudo ln -s /snap/bin/certbot /usr/bin/certbot;
sudo certbot --apache;
sudo rm /var/www/html/index.html

sudo a2enmod headers

#thin put this in the main config file in /var/www/html directive
Header set Access-Control-Allow-Origin "*"

#copy pictures over to /var/www/html

#start apache with 
sudo apache2 -t
sudo systemctl start apache2
