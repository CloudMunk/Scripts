#!/bin/sh
clear
echo "Starting DAPS Masternode update script"
echo "Stopping dapscoind..."
dapscoin-cli stop
echo "Downloading update..."
wget -N https://github.com/DAPSCoin/DAPSCoin/releases/download/1.0.4/master_linux-v1.0.4.6.zip
echo "Installing unzip..."
sudo apt-get install unzip -y
echo "Extracting update..."
sudo unzip -jo master_linux-v1.0.4.6.zip -d /usr/local/bin
echo "Set permissions on files..."
sudo chmod +x /usr/local/bin/daps*
echo "Running dapscoind..."
dapscoind -daemon
echo "Update completed!"