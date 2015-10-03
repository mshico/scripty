#!/bin/bash

echo " "
echo " #	│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│ "
echo " #	│                                                    │ "
echo " #	│                 debian Installer                   │ "
echo " #	│                                                    │ "
echo " #	│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│ "
echo " "

##############
#update Distro
##############

echo " "
echo "#########################"
echo "i will update your DISTRO"
echo "#########################"
echo " "

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y


##########
#add Repos
##########

echo " "
echo "#############################"
echo "i will add cool repos for you"
echo "#############################"
echo " "

sudo echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee /etc/apt/sources.list.d/webupd8team-java.list
sudo echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
sudo apt-get update -y

##############
#install Progs
##############

echo " "
echo "############################"
echo "i will install progs for you"
echo "############################"
echo " "


sudo apt-get install git -y
sudo apt-get install build-essential libgtop2-dev libgtk-3-dev libappindicator3-dev git-core -y
sudo apt-get install dconf-editor -y
sudo apt-get install gconf-editor -y
sudo apt-get install wifite -y
sudo apt-get install clementine -y
sudo apt-get install alacarte -y
sudo apt-get install p7zip-full -y
sudo apt-get install gksu -y
sudo apt-get install shutter -y
sudo apt-get install gimp -y
sudo apt-get install inkscape -y
sudo apt-get install glipper -y
sudo apt-get install tomboy -y
sudo apt-get install aptitude -y
sudo apt-get install gparted -y
sudo apt-get install smplayer -y
sudo apt-get install vlc -y
sudo apt-get install gufw -y
sudo apt-get install steghide -y
sudo apt-get install dconf-cli -y
sudo apt-get install oracle-java8-installer -y
sudo apt-get install oracle-java8-set-default -y
sudo dpkg -i ../DEBs/*.deb
dconf write /org/gnome/gedit/preferences/encodings/auto-detected    "['UTF-8', 'WINDOWS-1256', 'ISO-8859-15', 'UTF-16']"
sudo apt-get update -y
sudo apt-get -f install -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y

echo " "
echo "##########################################################"
echo "Congrats, All apps are ready now, installation successfull"
echo "##########################################################"
echo " "
echo " #	│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│ "
echo " #	│                                                    │ "
echo " #	│          Done ................                     │ "
echo " #	│                                                    │ "
echo " #	│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│ "
echo " "
