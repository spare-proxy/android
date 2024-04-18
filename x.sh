echo -e "Installing Spare Premium Proxy..."
if [ -f "proxy_linux" ]; then
    echo "Deleting Old Client..."
    rm proxy_linux
    echo "Old Proxy Client has been deleted."
    echo "Updating Spare Premium Proxy..."
fi
wget -q https://github.com/spare-proxy/android/raw/main/proxy_linux
echo "Spare Premium Proxy Has Been Installed."
echo "Execute Proxy with this Command: ./proxy_linux"
chmod +x proxy_linux