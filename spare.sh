RED="\e[1;31m"
GREEN="\e[1;32m"
ENDCOLOR="\e[0m"

clear
echo -e "${GREEN}Installing Spare Premium Proxy...${ENDCOLOR}"
sleep 1
if [ -f "proxy_linux" ]; then
    echo -e "${RED}Deleting Old Client...${ENDCOLOR}"
    rm proxy_linux
    sleep 1
    echo -e "${GREEN}Updating Spare Proxy...${ENDCOLOR}"
fi
pkg update -y
pkg upgrade -y
pkg install openssl -y
pkg install curl -y
pkg install libenet -y
pkg install wget -y
clear
wget -q https://github.com/spare-proxy/android/raw/main/proxy_linux
echo -e "${GREEN}Spare Premium Proxy Is Installed.${ENDCOLOR}"
echo -e "${GREEN}Execute Proxy with this Command: ./proxy_linux${ENDCOLOR}"
chmod +x proxy_linux