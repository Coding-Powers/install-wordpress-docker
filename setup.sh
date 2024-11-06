#!/bin/bash

# Define color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
RESET='\033[0m'  # Reset to default color

echo -e "${CYAN}==================== Installing Wordpress ====================${RESET}"
sudo apt update -y && sudo apt upgrade -y && sudo apt install docker-compose -y
mkdir db_data
mkdir wp_data
sudo docker-compose kill && sudo docker-compose up -d
echo -e "${CYAN}==================== Done Installation ====================${RESET}"
