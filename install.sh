#!/bin/bash

YELLOW='\033[1;33m'
GREEN='\033[1;32m'
NC='\033[0m'

mkdir -p ~/.config/ ~/.config/wpdevmanager

echo -ne "what is the dev server's local ip address?: "
read ip

echo -n "which user would you like to ssh as?: "
read user

echo -n "what is your servers http root directory?: "
read srvroot

echo -n "what is your local http root directory?: "
read locroot

echo -n "is your local machine using MAMP [y/N]: "
read mac

if [ "$mac" = "y" ]; then
	echo -e "\ncreating symlink to /Applications/MAMP/Library/bin/mysql to /usr/local/bin"
	ln -s /Applications/MAMP/Library/bin/mysql /usr/local/bin
fi


echo -e "${YELLOW}please ensure to copy your ssh keys to the dev to simplify every transaction${NC}"

echo "installing..."
sudo install -m 775 bin/* /usr/local/bin

echo -e "creating config file ~/.config/wpdevmanager/config"
echo -e "USER=$user\nIP=$ip\nSRVROOT=$srvroot\nLOCROOT=$locroot" > ~/.config/wpdevmanager/config

echo -e "${GREEN}done.${NC}"
