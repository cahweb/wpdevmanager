#!/bin/bash

YELLOW='\033[1;33m'
GREEN='\033[1;32m'
NC='\033[0m'

mkdir -p ~/.config/ ~/.config/wpdevmanager

echo -ne "\nwhat is the dev server's local ip address?: "
read ip

echo -n "which user would you like to ssh as?: "
read user

echo -n "what is your servers http root directory?: "
read srvroot

echo -e "\n${YELLOW}please ensure to copy your ssh keys to the dev to simplify every transaction\n${NC}"

echo "installing..."
install -m 775 bin/* /usr/local/bin

echo -e "\ncreating config file ~/.config/wpdevmanager/config"
echo -e "USER=$user\nIP=$ip\nSRVROOT=$srvroot" > ~/.config/wpdevmanager/config

echo -e "\nfixing permissions..."

echo -e "\n${GREEN}done.${NC}\n"