#!/bin/bash

if [ -d "/tmp/OSCAR" ]
	then 
		echo -e "\e[1;32mOSCAR seems to be ready !\e[0m"
	else
		mkdir /tmp/OSCAR
		cd /tmp/OSCAR
		echo -e "\e[1;32mDownloading StarCraft 2 headless version for Linux\e[0m"
		wget http://blzdistsc2-a.akamaihd.net/Linux/SC2.3.16.1.zip
		echo -e "\e[1;32mUncompresse StarCraft 2\e[0m"
		unzip -P iagreetotheeula SC2.3.16.1.zip
		rm SC2.3.16.1.zip
		echo -e "\e[1;32mDonwloding Maps and Mini-game\e[0m"
		cd StarCraftII/Maps
		wget http://blzdistsc2-a.akamaihd.net/MapPacks/Melee.zip
		wget http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2017Season3.zip 
		wget http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2017Season2.zip 
		wget http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2017Season1.zip 
		unzip -P iagreetotheeula Melee.zip
                unzip -P iagreetotheeula Ladder2017Season3.zip
                unzip -P iagreetotheeula Ladder2017Season2.zip
                unzip -P iagreetotheeula Ladder2017Season1.zip
		rm *.zip
		wget https://github.com/deepmind/pysc2/releases/download/v1.0/mini_games.zip -nv
		unzip mini_games.zip
		rm *.zip
		echo -e "\e[1;32mDone !\e[0m"
fi

echo "set environment variable to StarCraftII intall dir"
export SC2PATH="/tmp/OSCAR/StarCraftII"

if [ ! -e "~/StarCraftII" ]
	then
		ln -s /tmp/OSCAR/StarCraftII ~/StarCraftII
fi
