#!/bin/bash


#installing Dependencies
echo "########"
echo "installing Packages"
echo "###########" yum install wget unzip http-y
echo


# start & enable serivce
echo "#############"
echo "start & enable HTTPD Service"
echo "#############" systemctl start httpd systemctl enable httpd
echo
# creating temp directory
echo "###########"
echo "starting artifact Deployment"
echo "###########"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo

wget https://templatemo.com/tm-zip-files-2020/templatemo_519_beauty.zip
unzip 2098_health.zip
cp -r 2098_health.zip/*/var/www/html/
echo
#Bounc service
echo "###########"
echo "Restarting HTTPD Service"
echo "########"
systemctl restart httpd
echo
#clean up
echo "##############"
echo "removing temporary files"
echo "############"
rm -rf /tmp/webfiles
echo

