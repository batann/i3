#!/bin/bash

clear
counter="1"
while :;
do
	echo -e "\033[34m[[[ \033[31m$counter \033[34m]]]\033[0m"
	read -p 'URL:   >>>   ' abc
	input="$input $abc"
	((counter++))
	clear
	if [[ -z $abc ]]; then
		break
	fi;
done
yt-dlp --download-archive /home/batan/.config/yt-dlp/archive.txt --restrict-filenames $input
mv *mp4 /home/batan/Videos
clear



