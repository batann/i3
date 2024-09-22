#!/bin/bash

cd i3
if [[ ! -d /home/batan/.config/ ]];then
mkdir /home/batan/.config/
mv * /home/batan/.config/
