#!/bin/bash
echo 
echo "############################################################"
echo "Install required packages"
echo "############################################################"
sudo yum install wget httpd unzip -y
echo 
echo "############################################################"
echo "Start and enable the service"
echo "############################################################"
sudo systemctl start httpd 
sudo systemctl enable httpd 
echo 
echo "############################################################"
echo "Create artifactory and http source files"
echo "############################################################"
cd /tmp
mkdir webfiles
cd /tmp/webfiles
echo  
wget https://www.tooplate.com/zip-templates/2097_pop.zip
unzip 2097_pop.zip
echo 
sudo cp -r 2097_pop/* /var/www/html
echo
echo "############################################################"
echo "Restart http service" 
echo "############################################################"
sudo systemctl restart httpd 
echo "############################################################"
echo "Clean up artifactory files"
echo "############################################################"
echo 
rm -r /tmp/webfiles

