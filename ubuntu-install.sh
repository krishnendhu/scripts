#!/bin/bash
#sudo apt-get update;
#sudo apt-get upgrade;

#This is for changing the dash to bash
#pushd /bin
#sudo rm -rf sh
#sudo ln -s bash sh
#popd

#Installing the tools for Development
#sudo apt-get install vim flex bison m4 gawk gettext vim-gtk wine build-essential -y

#Installing another set of Tools for Development
#sudo apt-get install synaptic vlc gimp gimp-data gimp-plugin-registry gimp-data-extras  flashplugin-installer unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack lha arj cabextract file-roller libxine1-ffmpeg mencoder flac faac faad sox ffmpeg totem-mozilla icedax lame libmad0 libjpeg-progs filezilla ubuntu-restricted-extras libxss1 -y 

#Installing the Kernel Headers
#sudo apt-get install linux-headers-$(uname -r)

#Installing Chrome
if [[ $(getconf LONG_BIT) = "64" ]]
then
	echo "64bit Detected" &&
	echo "Installing Google Chrome" &&
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&
	sudo dpkg -i google-chrome-stable_current_amd64.deb &&
	rm -f google-chrome-stable_current_amd64.deb
else
	echo "32bit Detected" &&
	echo "Installing Google Chrome" &&
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb &&
	sudo dpkg -i google-chrome-stable_current_i386.deb &&
	rm -f google-chrome-stable_current_i386.deb
fi

