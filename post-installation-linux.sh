#!/bin/bash

echo "------- sudo passwd ---------"
if ! sudo passwd; then
    echo "Mudança de senha do sudo falhou"
    exit
fi
echo "------- atualizando distro -------"
if ! sudo apt-get update && sudo apt-get upgrade; then
    echo "Atualização dos pacotes falhou"
    exit
fi
echo "------- instalando programas --------"
sudo apt-get install virtualbox qbittorrent git
## vscode
sudo apt update
sudo apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code
## google-chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
## spotify
sudo apt-get install snap
sudo snap install spotify


sudo apt-get autoclean && sudo apt-get autoremove

echo "Reiniciando pc"
sleep 10

sudo reboot -f