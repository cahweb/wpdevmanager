#!/bin/bash

YELLOW='\033[1;33m'
GREEN='\033[1;32m'
NC='\033[0m'

mkdir -p ~/.config/wpdevmanager

echo -ne "\nwhat is the dev server's local ip address?: "
read ip

echo -n "which user would you like to ssh as?: "
read user

echo -e "\n${YELLOW}please ensure to copy your ssh keys to the dev to simplify every transaction\n${NC}"

echo "installing..."
cp -vf bin/* /usr/local/bin

echo -e "\n${GREEN}done.${NC}\n"