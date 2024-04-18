RED="\e[1;31m"
GREEN="\e[1;32m"
ENDCOLOR="\e[0m"

clear
bito=$(getprop ro.product.cpu.abi)
if [[ "$bito" != "arm64-v8a" && "$bito" != "x86_64" ]]; then
  echo -e "${RED}Sorry, Your device is 32-bit, The proxy does not support 32-bit device.${ENDCOLOR}"
  exit 1
fi
echo -e "${GREEN}Installing Proxy...${ENDCOLOR}"
sleep 1
if [ -f "proxy_linux" ]; then
    echo -e "${RED}Deleting old proxy...${ENDCOLOR}"
    rm arunika
    sleep 1
    echo -e "${GREEN}Updating proxy...${ENDCOLOR}"
fi
echo -e "${GREEN}Checking Termux Installer...${ENDCOLOR}"
pkg update -y
pkg upgrade -y
pkg install openssl -y
pkg install curl -y
pkg install libenet -y
pkg install wget -y
clear
wget -q https://github.com/spare-proxy/android/raw/main/proxy_linux
sleep 1
echo -e "${GREEN}Proxy Installed${ENDCOLOR}"
echo -e "${GREEN}Execute proxy with this command: ./proxy_linux${ENDCOLOR}"
chmod +x proxy_linux