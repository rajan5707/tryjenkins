sudo apt-get update
sudo apt-get upgrade
echo "=================================================   INSTALLING CURL ====================================================="
sudo apt-get install curl
echo "================================================    INSTALLING NODE ====================================================="
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

echo "=================================================== INSTALLING NPM ======================================================="
sudo npm install -g @angular/cli

echo "================================================ INSTALLING ANGULAR ====================================================="
sudo npm install -g @angular/cli
echo "===================================================== node,npm ,angular version ========================================="
node --version
npm --version
ng v
