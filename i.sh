RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"

echo -e "${GREEN}Installing Spare Premium Proxy...${ENDCOLOR}"
if [ -f "proxy_linux" ]; then
    echo -e "${RED}Deleting Old Client...${ENDCOLOR}"
    rm proxy_linux
    sleep 1
    echo -e "${GREEN}Updating Spare Proxy...${ENDCOLOR}"
fi

wget -q https://github.com/spare-proxy/android/raw/main/proxy_linux

echo -e "${GREEN}Spare Premium Proxy Has Been Installed.${ENDCOLOR}"
echo -e "${GREEN}Execute Proxy with this Command: ./proxy_linux${ENDCOLOR}"
chmod +x proxy_linux