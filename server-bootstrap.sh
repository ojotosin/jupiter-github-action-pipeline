#!/bin/bash
sudo su
yum update -y
yum install -y httpd
cd /var/www/html
wget https://github.com/ojotosin/jupiter-github-action-pipeline/raw/main/jupiter-main.zip
unzip jupiter-main.zip
cp -r jupiter-main/* /var/www/html/
rm -rf jupiter-main main.zip
systemctl enable httpd 
systemctl start httpd