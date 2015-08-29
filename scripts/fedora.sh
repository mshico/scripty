#!/bin/bash

echo " "
echo " #	│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│ "
echo " #	│                                                    │ "
echo " #	│                 fedora Installer                   │ "
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

sudo dnf -y update

##########
#add Repos
##########

echo " "
echo "#############################"
echo "i will add cool repos for you"
echo "#############################"
echo " "

echo " "
echo "################################"
echo "Install RPMFusion free & nonfree"
echo "################################"
echo " "

dnf -y  install --nogpgcheck   http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

echo " "
echo "##########################"
echo "Install Google-chrome repo"
echo "##########################"
echo " "

wget https://dl-ssl.google.com/linux/linux_signing_key.pub
rpm --import linux_signing_key.pub
########
#cleanup
########
rm -f linux_signing_key.pub


echo "[google-chrome]
name=Google Chrome - \$basearch
baseurl=http://dl.google.com/linux/chrome/rpm/stable/\$basearch" >> /etc/yum.repos.d/google-chrome.repo

dnf -y update 

##############
#install Progs
##############

echo " "
echo "############################"
echo "i will install progs for you"
echo "############################"
echo " "


dnf -y install vlc
dnf -y install gnome-tweak-tool
dnf -y install google-chrome-stable
dnf -y install nano
dnf -y install vim
dnf -y install gimp
dnf -y install gparted

echo " "
echo "################################################################################################"
echo "with this program named fedy u can install  mp3 codecs , skype ,Team viewer and more good stuffs"
echo "################################################################################################"
echo " "

curl https://satya164.github.io/fedy/fedy-installer -o fedy-installer && chmod +x fedy-installer && ./fedy-installer

dnf -y install java 
dnf -y install p7zip
dnf -y install gstreamer-plugins-bad gstreamer-plugins-bad-free-extras gstreamer-plugins-ugly gstreamer-ffmpeg gstreamer1-libav gstreamer1-plugins-bad-free-extras gstreamer1-plugins-bad-freeworld gstreamer-plugins-base-tools gstreamer1-plugins-good-extras gstreamer1-plugins-ugly gstreamer1-plugins-bad-free gstreamer1-plugins-good gstreamer1-plugins-base gstreamer1

echo "[Dropbox]
name=Dropbox Repository
baseurl=http://linux.dropbox.com/fedora/20/
gpgkey=http://linux.dropbox.com/fedora/rpm-public-key.asc" >> /etc/yum.repos.d/dropbox.repo

dnf -y install nautilus-dropbox
dnf -y install nautilus-open-terminal

echo " "
echo "##########################################################"
echo "Congrats, All apps are now ready, installation successfull"
echo "##########################################################"
echo " "
echo " "
echo " #	│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│ "
echo " #	│                                                    │ "
echo " #	│          Done ................                     │ "
echo " #	│                                                    │ "
echo " #	│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│ "
echo " "
