#!/bin/bash
#installing Dependencies
echo "#####"
echo "installing packages"
echo "########"
yum install wget unzip httpd -y > /dev/null
echo
 #start & enable Service
 echo "#######"
 echo "start & enable HTTPD Service"
 echo "######"
 systemctl start httpd
 systemctl enable httpd
echo
#creating temp Directory
echo "##########"
echo "starting Artifact Deployment"
echo "#######"
mkdir -p /temp/webfile
cd /tmp/webfile
echo

wget https://www.tooplate.com/zip-templates/2098_health.zip > /dev/null
unzip 2098_health.zip > /dev/null
cp -r 2098_health/*/var/www/html/
echo
#Bonce Service
echo "############"
echo "Restarting HTTPD Service"
echo "############"
systemctl restart httpd
echo
#clean up
echo "#############"
echo "removing Tempoary Files"
echo "###########"
rm -rf /tmp/webfiles
echo

