#! /bin/bash

# Please only run IF YOU ARE SURE YOU SHOULD!
# 
# @author @Ahmad 
# @created 15 November 2018

oldversion="5.6"
newversion="7.2"

echo "$(tput setaf 2)1. Removing Current PHP Version PHP $oldversion $(tput sgr 0)"
sudo apt-get purge php$oldversion php$oldversion-common -y > /dev/null 2>&1

echo "$(tput setaf 2)2. Check and Update Common Properties PHP $newversion $(tput sgr 0)"
sudo apt-get install software-properties-common -y > /dev/null 2>&1

echo "$(tput setaf 2)3. Getting Repository for Version PHP $newversion $(tput sgr 0)"
sudo add-apt-repository ppa:ondrej/php-$newversion -y > /dev/null 2>&1

echo "$(tput setaf 2)4. PHP/Apache Update $(tput sgr 0)"
sudo apt-get update > /dev/null 2>&1

echo "$(tput setaf 2)5. Install PHP $newversion $(tput sgr 0)"
sudo apt-get install php$newversion -y > /dev/null 2>&1

echo "$(tput setaf 2)6. Install Package - CURL $newversion $(tput sgr 0)"
sudo apt-get install php$newversion-curl -y > /dev/null 2>&1

echo "$(tput setaf 2)7. Install Package - XML $newversion $(tput sgr 0)"
sudo apt-get install php$newversion-xml -y > /dev/null 2>&1

echo "$(tput setaf 2)8. Install Package - ZIP $newversion $(tput sgr 0)"
sudo apt-get install php$newversion-zip -y > /dev/null 2>&1

echo "$(tput setaf 2)9. Install Package - GD $newversion $(tput sgr 0)"
sudo apt-get install php$newversion-gd -y > /dev/null 2>&1

echo "$(tput setaf 2)10. Install Package - mysql $newversion $(tput sgr 0)"
sudo apt-get install php$newversion-mysql -y > /dev/null 2>&1

echo "$(tput setaf 2)11. Install Package - mbstring $newversion $(tput sgr 0)"
sudo apt-get install php$newversion-mbstring -y > /dev/null 2>&1

echo "$(tput setaf 2)12. Restart Apache $(tput sgr 0)"
service apache2 restart

echo "$(tput setaf 2)13. Current PHP Version $(tput sgr 0)"
php -v