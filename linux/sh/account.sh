#!/bin/bash

# Define color variables
ITALIC='\e[3m'
BOLD='\e[1m'
DIM='\e[2m'
UNDERLINE='\e[4m'
BLINK='\e[5m'
REVERSE='\e[7m'
HIDDEN='\e[7m'

COLOR_NC='\e[0m' # No Color
COLOR_BLACK='\e[0;30m'
COLOR_GRAY='\e[1;30m'
COLOR_RED='\e[0;31m'
COLOR_LIGHT_RED='\e[1;31m'
COLOR_GREEN='\e[0;32m'
COLOR_LIGHT_GREEN='\e[1;32m'
COLOR_BROWN='\e[0;33m'
COLOR_YELLOW='\e[1;33m'
COLOR_BLUE='\e[0;34m'
COLOR_LIGHT_BLUE='\e[1;34m'
COLOR_PURPLE='\e[0;35m'
COLOR_LIGHT_PURPLE='\e[1;35m'
COLOR_CYAN='\e[0;36m'
COLOR_LIGHT_CYAN='\e[1;36m'
COLOR_LIGHT_GRAY='\e[0;37m'
COLOR_WHITE='\e[1;37m'

# Clear the terminal
clear

echo -e "${COLOR_PURPLE}"
curl https://nixton.dev/nixtonbots/A/text/stuff/account.txt
echo -e "${COLOR_NC}"
echo -e "Nixtonbots - Version: 0.0.7 / Account creator."

read -p "Do you want to create an account? Name: " name

sleep 1

echo -e "${COLOR_LIGHT_BLUE}Creating account. ${COLOR_NC}"
sleep 5
sudo adduser $name

echo -e "[ ${COLOR_LIGHT_GREEN}DONE${COLOR_NC} ] Created account: ${COLOR_GREEN}$name${COLOR_NC}"
sleep 4

# Add sudo and gpio groups to the account
for group in sudo gpio; do
    echo -e "Adding $group group to the account... " && sleep 3 && echo -e "[ ${COLOR_LIGHT_GREEN}OK${COLOR_NC} ]"
    sleep 3
    sudo adduser $name $group >/dev/null 2>&1 && sleep 3 && echo -e "[ ${COLOR_LIGHT_GREEN}DONE${COLOR_NC} ]"
done

echo -e "You now have an account. " && echo -e "[ ${COLOR_LIGHT_GREEN}OK${COLOR_NC} ]"
sleep 3

echo -e "Listing user accounts."
sleep 3
ls /home/
sleep 3

echo -e "Groups list:"
groups $name
