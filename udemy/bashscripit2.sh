nstalling Dependencies
echo "########"
echo "Installing Packages"
echo "###########"
yum install wget unzip httpd -y
echo

# Start & Enable HTTPD Service
echo "#############"
echo "Starting & Enabling HTTPD Service"
echo "#############"
systemctl start httpd
systemctl enable httpd
echo

# Creating temp directory
echo "###########"
echo "Starting artifact Deployment"
echo "###########"
mkdir -p /tmp/webfiles
cd /tmp/webfiles || { echo "Failed to change directory"; exit 1; }
echo

# Downloading and unzipping website template
wget https://templatemo.com/tm-zip-files-2020/templatemo_519_beauty.zip
unzip templatemo_519_beauty.zip
cp -r templatemo_519_beauty/* /var/www/html/
echo

# Restart HTTPD Service to apply changes
echo "###########"
echo "Restarting HTTPD Service"
echo "###########"
systemctl restart httpd
echo

# Clean up
echo "##############"
echo "Removing temporary files"
echo "##############"
rm -rf /tmp/webfiles
echo

