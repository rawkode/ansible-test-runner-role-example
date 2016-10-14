#!/usr/bin/env sh
clear="\e[0m"
red="\e[31m"
green="\e[32m"
yellow="\e[33m"
blue="\e[34m"

function assertExit() {
  echo -en "[ ${blue}Asserting${clear} ] $1"
  error=$($2 2>&1)
  exit=$?

  if [ $exit -ne 0 ];
  then
    echo -e " [ ${red}Failed${clear} ]"
    echo -e "\n ${red}Output:${clear} ${error}\n\n"
    return 1
  fi

  echo -e " [ ${green}Success${clear} ]"
  return 0
}
