#!/bin/bash

yum install wegt unzip httpd -y
systemctl start httpd
systemctl enable httpd
mkdir -p/tmp/webfiles
cd /tmp/webfiles
wegt https://https://www.tooplate.com/zip-templates/2098_health.zip
unzip 2098_helth.zip
cp -r 2098_helth.zip/*/var/www/html/
systemctl restart httpd
rm -rf /tmp/webfiles


