#!/bin/bash
clear
source CONFIG
echo "MAIN="'"'"$MAIN"'"' > $HOME/.build_temp
## Pasta rom (segundo drive)
			if [ -d "$HD" ]; then
				if [[ $(findmnt -M "$HD") ]]; then :
				else
				echo "Mounting $HD"
				sudo mount -o discard,defaults /dev/sdc "$HD"
				sudo chmod a+w "$HD"
				fi
			else
				mkdir "$HD"
				echo "Mounting $HD"
				sudo mount -o discard,defaults /dev/sdc "$HD"
				sudo chmod a+w "$HD"
			fi
## Google Drive
			# if [ -d "$GD" ]; then
			# 	if [[ $(findmnt -M "$GD") ]]; then :
			# 	else
			# 	echo "Mounting Google Drive"
			# 	google-drive-ocamlfuse "$GD"
			# 	fi
			# else
			# 	mkdir "$GD"
			# 	echo "Mounting Google Drive"
			# 	google-drive-ocamlfuse "$GD"
			# fi
## ATALHO PARA SCRIPTS
			# if [ -d "$SCRIPTS" ]; then :
			# else
			# ln -s $GD/Celular/Building_from_source/scripts $SCRIPTS
			# fi
## Pasta Logs
			if [ -d "logs" ]; then :
			else
			mkdir logs
			fi
echo "Rovira builder script"
echo "Options:"
PS3='Please enter your choice: '
options=("$ROM1" "$ROM2" "$ROM3" "Free space" "List options" "Setup" "Quit")
select opt in "${options[@]}"
do
	case $opt in
		"List options")
			clear
			echo "Options:"
			echo "1) $ROM1		 3) $ROM3	  5) List options  7) Quit"
			echo "2) $ROM2		 4) Free space	  6) Setup"
			;;
		"$ROM1")
			echo "ROM="'"'"$opt"'"' > $SCRIPTS/.last
			bash $SCRIPTS/menu.sh
			;;
		"$ROM2")
			echo "ROM="'"'"$opt"'"' > $SCRIPTS/.last
			bash $SCRIPTS/menu.sh
			;;
		"$ROM3")
			echo "ROM="'"'"$opt"'"' > $SCRIPTS/.last
			bash $SCRIPTS/menu.sh
			;;
		"Setup")
			bash $SCRIPTS/setup.sh
			;;
		"Free space")
			echo "Free space and folder size script"
			echo ""
			echo "User: $USER"
			echo "Current working directory : $(pwd)"
			echo ""
			echo "Disks free space:"
			echo ""
			sudo df -h ~/ ~/HD
			echo ""
			echo "ROMs folder's size:       Wait a moment..."
			echo ""
			if [ -d "$HD/$ROM1" ]; then
				echo "$ROM1"
				du -sh $HD/$ROM1
			fi
			if [ -d "$HD/$ROM2" ]; then
				echo ""
				echo "$ROM2"
				du -sh $HD/$ROM2
			fi
			if [ -d "$HD/$ROM3" ]; then
				echo ""
				echo "$ROM3"
				du -sh $HD/$ROM3
			fi
			;;
		"Quit")
			break
			;;
		*) echo Invalid option
			;;
	esac
done

