#!/bin/bash
nstalling Dependencies
echo "#####"
echo "Installing packages"
echo "########"
sudo apt install wget unzip apache2 -y > /dev/null
echo

# Start & Enable Apache2 (HTTPD) Service
echo "#######"
echo "Starting & Enabling Apache2 (HTTPD) Service"
echo "######"
sudo systemctl start apache2
sudo systemctl enable apache2
echo

# Creating Temporary Directory
echo "##########"
echo "Starting Artifact Deployment"
echo "#######"
mkdir -p /tmp/webfile
cd /tmp/webfile
echo

# Downloading and Unzipping the Template
wget https://www.tooplate.com/zip-templates/2098_health.zip > /dev/null
unzip 2098_health.zip > /dev/null
sudo cp -r 2098_health/* /var/www/html/
echo

# Restart Apache2 (HTTPD) Service
echo "############"
echo "Restarting Apache2 (HTTPD) Service"
echo "############"
sudo systemctl restart apache2
echo

# Clean Up
echo "#############"
echo "Removing Temporary Files"
echo "###########"
rm -rf /tmp/webfile
echo "Deployment Complete!"

