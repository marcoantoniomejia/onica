#!/bin/bash
yum -y install httpd
yum -y install php
yum -y install git
cd /var/www/html
git clone https://github.com/marcoantoniomejia/onica.git
cp onica/index.php index.php
systemctl enable httpd
systemctl start httpd
