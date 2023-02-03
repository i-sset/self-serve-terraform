#!/bin/bash

sudo apt-get update -y

sudo apt-get install nginx -y

sudo systemctl start nginx

sudo systemctl enable nginx

sudo systemctl status nginx

hs=`hostname`

cd /var/www/html

echo $hs > /var/www/html/index.html