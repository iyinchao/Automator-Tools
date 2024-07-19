#!/bin/bash

LIGHT_BLUE='\033[1;34m'
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

# disable system settings
printf "${LIGHT_BLUE}Disabling System Secure limit...${NC}\n"
spctl --master-disable
RES=$?
if [ $RES == 0 ]; then
  printf "${GREEN}Done.${NC}\n"
else
  printf "${RED}Failed.${NC}\n"
  exit 1
fi

# Remove quarantine attr to run apps
# go to root dir
# ROOT_DIR="${PWD}/`dirname "$0"`/.."
ROOT_DIR="$(pwd)/$(dirname "$0")/../"
cd ${ROOT_DIR}

echo "Woring directory: $(pwd)"

printf "${LIGHT_BLUE}Remove quarantine attr for apps to enable it...${NC}\n"

appFiles=(
   *.app
)
appFileCount=${#appFiles[@]}

for (( i=0; i<${appFileCount}; i++ ));
do
  echo "Processing ${appFiles[$i]}..."
  # FILENAME=$(printf %q "${appFiles[$i]}")
  # echo $FILENAME
  xattr -r -d com.apple.quarantine "./${appFiles[$i]}"
  # xattr -r -d com.apple.quarantine "./${FILENAME}"
  RES=$?
  if [ $RES == 0 ]; then
    printf "${GREEN}OK.${NC}\n"
  else
    printf "${RED}Error.${NC}\n"
    exit 1
  fi
done
printf "${GREEN}Done.${NC}\n"
