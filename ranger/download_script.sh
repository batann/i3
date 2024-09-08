#!/bin/bash

clear
read -p 'term   >>>   ' abc
read -e -p 'site >>>   ' -i '-w ' bcd
ddgr ${bcd}.com $abc
efg=$(xclip -o -selec clip)
clear
ijk=$(yt-dlp -F $efg |grep "mp4-"|cut -c 1-10)
options=$ijk
select quo in ${options[@]}
do yt-dlp -f $quo $efg
done

