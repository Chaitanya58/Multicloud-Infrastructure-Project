#!/bin/bash
sudo su
yum update -y
yum install -y httpd
cd /var/www/html
wget https://www.tooplate.com/zip-template/2113_earth.zip
unzip 2113_earth.zip
cp -r 2113_earth/* /var/www/html/
systemctl start httpd
systemctl enable httpd
EOF
