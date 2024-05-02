#!/bin/bash
# Bash Menu Script Example
clear
source $HOME/.build_temp
source $MAIN/CONFIG
echo "Setup"
echo "Options:"
PS3='Please enter your choice: '
options=("Install Google Drive Ocamfulse" "Install Build environment" "Install Remote desktop" "Format external disk" "List options" "Disable visual effects" "Return")
select opt in "${options[@]}"
do
	case $opt in
		"List options")
			clear
			echo "Options:"
			echo "1) Install Google Drive Ocamfulse  5) List options"
			echo "2) Install Build environment	   6) Disable visual effects"
			echo "3) Install Remote desktop	   7) Return"
			echo "4) Format external disk"
			;;
		"Disable visual effects")
			ccsm & unity-tweak-tool
			;;
		"Format external disk")
			sudo mkfs.ext4 -m 0 -F -E lazy_itable_init=0,lazy_journal_init=0,discard /dev/sdb
			;;
		"Install Build environment")
			sudo apt-get update
			sudo apt-get upgrade
			sudo apt-get install -y bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev lib32z-dev libc6-dev libc6-dev-i386 libgl1-mesa-dev liblz4-tool libncurses* libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libssl-dev libx11-dev libxml2 libxml2-utils lzop maven ncftp openjdk-8-jdk openjdk-8-jre pngcrush python-is-python3 rsync schedtool screen squashfs-tools tmux unzip w3m x11proto-core-dev xsltproc zip zlib1g-dev
			sudo apt-get update
			sudo apt-get upgrade
			;;
		"Install Google Drive Ocamfulse")
			sudo add-apt-repository ppa:alessandro-strada/ppa
			sudo apt-get update
			sudo apt-get install google-drive-ocamlfuse
			;;
		"Install Remote desktop")
			wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
			sudo apt update
			sudo dpkg --install chrome-remote-desktop_current_amd64.deb
			sudo apt install --assume-yes --fix-broken
			sudo apt-get install -y gnome-shell ubuntu-gnome-desktop autocutsel gnome-core gnome-panel gnome-themes-standard unity-tweak-tool unity-lens-applications unity-lens-files compizconfig-settings-manager
			echo ""
			echo "Abra esta página no computador local:"
			echo "https://remotedesktop.google.com/headless"
			echo ""
			;;
		"Return")
			clear
			echo "Options:"
			echo "1) $ROM1		 3) $ROM3	  5) List options  7) Quit"
			echo "2) $ROM2		 4) Free space	  6) Setup"
			break
			;;
		*) echo Invalid option
			;;
	esac
done
