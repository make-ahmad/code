#! /bin/bash

# Please only run IF YOU ARE SURE YOU SHOULD!
# 
# @author @Ahmad 
# @created 15 November 2018

# 1. Add Ondrejs PPA Repo and update
echo "$(tput setaf 2)1. Remove Current PHP Version$(tput sgr 0)"
sudo apt-get purge php5.6 php5.6-common > /dev/null 2>&1
sudo apt-get purge php7.0 php7.0-common > /dev/null 2>&1
sudo apt-get purge php7.1 php7.1-common > /dev/null 2>&1
sudo apt-get purge php7.2 php7.2-common > /dev/null 2>&1
sudo apt-get purge php7.3 php7.3-common > /dev/null 2>&1

# # 2. Remove default PHP 7.0
# echo "$(tput setaf 2)2. Update PHP to latest$(tput sgr 0)"
# sudo apt-get purge php7.0 php7.0-common -y > /dev/null 2>&1

# # 3. Add other PHP Packages for Laravel
# echo "$(tput setaf 2)3. Adding PHP packages$(tput sgr 0)"
# sudo apt-get install php7.2-curl php7.2-xml php7.2-zip php7.2-gd php7.2-mysql php7.2-mbstring -y > /dev/null 2>&1

# # 5. OPTIONAL - turn on mod_rewrite
# a2enmod rewrite > /dev/null 2>&1
# service apache2 restart

# # 6. Done
# echo "$(tput setaf 2)Completed! - PHP version is reporting it is version:$(tput sgr 0)"
# php -v
# echo "$(tput setaf 2)<3 from wildrocket.io$(tput sgr 0)"