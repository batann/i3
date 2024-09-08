#!/bin/bash

clear
while :;
do
	clear

read -p 'term   >>>   ' abc
read -e -p 'site >>>   ' -i '-w youtube.com ' bcd
ddgr $bcd  $abc
efg=$(xclip -o -selec clip)
clear

input="$input $efg"
if [[ -z $abc ]]; then
	break
clear
yt-dlp -x --audio-format mp3 --restrict-filenames $input
fi
done

