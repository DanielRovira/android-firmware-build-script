#!/bin/bash
clear
source $HOME/.build_temp
source $MAIN/CONFIG
source $SCRIPTS/.last
source $SCRIPTS/$ROM/config
echo $ROM
echo "Options:"
PS3='Please enter your choice: '
options=("Build" "Clean" "Sync repo" "Return" "List options")
select opt in "${options[@]}"
do
	case $opt in
		"List options")
			clear
			echo "Options:"
			echo "1) Build	 3) Sync repo	  5) List options"
			echo "2) Clean	 4) Return"
			;;
		"Build")
			echo "SHUT="'"'"no"'"' > $SCRIPTS/.shutdown
			#tmux new 'source $MAIN/CONFIG && bash $SCRIPTS/build.sh |& tee $HOME/logs/$(date +%H.%M.%S-%d.%m)-$ROM_log.txt'
			bash $SCRIPTS/build.sh |& tee $MAIN/logs/$(date +%H.%M.%S-%d.%m)-$ROM_log.txt
			;;
		"Sync repo")
			bash $SCRIPTS/repo.sh
			;;
		"Clean")
			cd $HD/$ROM
			make clean && make clobber
			ccache -C
			rm -r $HD/.ccache
			rm -r $HD/.Trash-1001
			cd $HOME
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
