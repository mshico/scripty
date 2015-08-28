#!/bin/bash

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

sudo add-apt-repository ppa:numix/ppa -y
sudo add-apt-repository ppa:darklin20/bomi -y
sudo add-apt-repository ppa:tsbarnes/indicator-keylock -y
sudo add-apt-repository ppa:jconti/recent-notifications -y
sudo add-apt-repository ppa:linrunner/tlp-y
sudo add-apt-repository ppa:webupd8team/java -y
sudo add-apt-repository ppa:noobslab/apps -y

##############
#install Progs
##############

echo " "
echo "############################"
echo "i will install progs for you"
echo "############################"
echo " "

sudo apt-get update -y
sudo apt-get install git -y
git clone git://github.com/mshico/indicator-netspeed.git && sudo chmod 777 indicator-netspeed && cd indicator-netspeed && sudo make && sudo make install
sudo apt-get install unity-tweak-tool -y
sudo apt-get install gnome-tweak-tool -y
sudo apt-get install dconf-editor -y
sudo apt-get install gconf-editor -y
sudo apt-get install wifite -y
sudo apt-get install clementine -y
sudo apt-get install android-tools-adb -y
sudo apt-get install android-tools-adb android-tools-fastboot -y
wget -O - https://skia.googlesource.com/skia/+archive/cd048d18e0b81338c1a04b9749a00444597df394/platform_tools/android/bin/linux.tar.gz | tar -zxvf - adb
sudo cp adb /usr/bin/adb
sudo chmod +x /usr/bin/adb
sudo apt-get install numix-gtk-theme numix-icon-theme-circle -y
sudo apt-get install iftop -y
sudo apt-get install alacarte -y
sudo apt-get install ettercap-graphical -y
sudo apt-get install wireshark -y
sudo apt-get install p7zip -y
sudo apt-get install gksu -y
sudo apt-get install shutter -y
sudo apt-get install gimp -y
sudo apt-get install inkscape -y
sudo apt-get install nautilus-open-terminal -y
sudo apt-get install aptitude -y
sudo apt-get install gparted -y
sudo apt-get install kismet -y
sudo apt-get install smplayer -y
sudo apt-get install bomi -y
sudo apt-get install vlc -y
sudo apt-get install netbeans -y
sudo apt-get install build-essential libgtop2-dev libgtk-3-dev libappindicator3-dev git-core -y
sudo apt-get install gufw -y
sudo apt-get install indicator-multiload -y
sudo apt-get install virtualbox -y
sudo apt-get install indicator-keylock -y
sudo apt-get install xdman -y
sudo apt-get install ubuntu-restricted-extras -y
sudo apt-get install tlp tlp-rdw -y
sudo apt-get install oracle-java8-installer -y
sudo apt-get install oracle-java8-set-default -y
sudo apt-get install xdman -y
sudo tlp start
sudo dpkg -i DEBs/*.deb
dconf write /org/gnome/gedit/preferences/encodings/auto-detected    "['UTF-8', 'WINDOWS-1256', 'ISO-8859-15', 'UTF-16']"
nautilus -q
sudo apt-get -f install -y
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y

echo " "
echo "#########################################################"
echo "Congrats, All apps are now ready, installation succesfull"
echo "#########################################################"
echo " "
