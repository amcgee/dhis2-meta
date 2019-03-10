#!/usr/bin/env bash

RED='\033[1;31m' # Light red
CYAN='\033[1;36m' # Light cyan
NC='\033[0m' # No Color
BOLD='\033[1m' 

SUCCESS=1
function detect_command {
	local CMD="$1"
	echo -en "Pre-requisite ${BOLD}${CMD}${NC}\t"
	command -v $CMD >/dev/null 2>/dev/null
	if [[ $? -eq 1 ]]; then
		echo -e "${RED}${BOLD} NOT FOUND ${NC}"
		SUCCESS=0
	else
		echo -e "${CYAN}${BOLD} FOUND ${NC}"
		SUCCESS=$((SUCCESS & 1 ))
	fi
}

detect_command "npx"
detect_command "git"


if [[ $SUCCESS -eq 0 ]]; then
	echo -e "${RED}${BOLD}[ERROR]${NC}${RED} One or more pre-requisites were not found, please ensure they are installed and present in \$PATH${NC}"
	exit 1
fi

echo -e "${CYAN}Cloning macro-repo...${NC}"

npx meta git update