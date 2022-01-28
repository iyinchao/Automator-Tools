#!/bin/bash

LIGHT_BLUE='\033[1;34m'
GREEN='\033[0;32m'
NC='\033[0m'

# disable system settings
printf "${LIGHT_BLUE}Disabling System Secure limit...${NC}\n"
spctl --master-disable
printf "${GREEN}Done.${NC}\n"

# Remove quarantine attr to run apps
# go to root dir
ROOT_DIR="${PWD}/`dirname "$0"`/.."
cd ${ROOT_DIR}

printf "${LIGHT_BLUE}Remove quarantine attr for apps to enable it...${NC}\n"

appFiles=(
   *.app
)
appFileCount=${#appFiles[@]}

for (( i=0; i<${appFileCount}; i++ ));
do
  echo "Removing ${appFiles[$i]}..."
  xattr -r -d com.apple.quarantine "./${appFiles[$i]}"
done
printf "${GREEN}Done.${NC}\n"
