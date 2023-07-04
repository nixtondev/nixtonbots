#!/bin/bash

export COLOR_NC='\e[0m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_LIGHT_PURPLE='\e[1;35m'

/usr/bin/clear

command -v curl >/dev/null 2>&1 || {

echo -en >&2 "Installing first curl.";
sudo apt install -y curl >/dev/null 2>&1 && echo -e "[ ${COLOR_LIGHT_GREEN}OK${COLOR_NC} ]"

}

sleep 3

echo -e ${COLOR_LIGHT_PURPLE}
curl https://nixton.dev/archive/nixton.txt
echo -e ${COLOR_NC}

sleep 3 && echo -e "[ ${COLOR_LIGHT_GREEN}?${COLOR_NC} ] Searching for packages";
sleep 5

command -v wget >/dev/null 2>&1 || {

echo -en >&2 "Installing wget.";
sudo apt install -y wget >/dev/null 2>&1 && echo -e "[ ${COLOR_LIGHT_GREEN}OK${COLOR_NC} ]"

}

command -v figlet >/dev/null 2>&1 || {

echo -en >&2 "Installing figlet.";
sudo apt install -y figlet >/dev/null 2>&1 && echo -e "[ ${COLOR_LIGHT_GREEN}OK${COLOR_NC} ]"

}

sleep 3 && echo -e "[ ${COLOR_RED}!${COLOR_NC} ] Running now.";

wget https://nixton.dev/nixtonbots/linux/python/system.py >/dev/null 2>&1 && echo -e "[ ${COLOR_LIGHT_GREEN}OK${COLOR_NC} ] Downloaded system.py";

sleep 3
python3 system.py

rm $0
