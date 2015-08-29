#!/bin/bash


echo " #	│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│ "
echo " #	│                                                    │ "
echo " #	│                  PHP Installer                     │ "
echo " #	│                                                    │ "
echo " #	│                  Ahmed Ashraf                      │ "
echo " #	│                                                    │ "
echo " #	│           @ahmedash95 | ahmedash95.com             │ "
echo " #	│                                                    │ "
echo " #	│  Install Your PHP Environment With Only One Script │ "
echo " #	│                                                    │ "
echo " #	│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│ "


##############
#update Distro
##############

echo " "
echo "#####################################"
echo "At first i need to update your DISTRO"
echo "#####################################"
echo " "

sudo apt-get update -y

echo " "
echo "########################"
echo "INSTALLING APACHE SERVER"
echo "########################"
echo " "

sudo apt-get install apache2 -y 


echo " "
echo "##############"
echo "INSTALLING PHP"
echo "##############"
echo " "
sudo apt-get install php5 libapache2-mod-php5 php5-mcrypt



echo " "
echo "#########################"
echo "INSTALLING MYSQL DATABASE"
echo "#########################"
echo " "
sudo apt-get install mysql-server libapache2-mod-auth-mysql php5-mysql -y

sudo mysql_install_db

sudo /usr/bin/mysql_secure_installation

echo " "
echo "#####################"
echo "INSTALLING PHPMYADMIN"
echo "#####################"
echo " "

sudo apt-get install phpmyadmin apache2-utils -y


echo 'Include /etc/phpmyadmin/apache.conf' >> /etc/apache2/apache2.conf

echo " "
echo "#################"
echo "RESTARTING APACHE"
echo "#################"
echo " "

sudo service apache2 restart

echo " #	│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│ "
echo " #	│                                                    │ "
echo " #	│          Done ................                     │ "
echo " #	│                                                    │ "
echo " #	│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│ "
echo " "
