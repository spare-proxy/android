RED="\033[0;31m"
GREEN="\033[0;32m"
ENDCOLOR="\033[0m"

clear
echo -e "${GREEN}Installing Spare Premium Proxy...${ENDCOLOR}"
if [ -f "proxy_linux" ]; then
    echo -e "${RED}Deleting Old Client...${ENDCOLOR}"
    rm proxy_linux
    echo "Old Proxy Client has been deleted."
fi
echo -e "${GREEN}Updating Spare Premium Proxy...${ENDCOLOR}"
wget -q https://github.com/spare-proxy/android/raw/main/proxy_linux
echo -e "${GREEN}Spare Premium Proxy Has Been Installed.${ENDCOLOR}"
echo -e "${GREEN}Execute Proxy with this Command: ./proxy_linux${ENDCOLOR}"
chmod +x proxy_linux
