#!/bin/bash

echo "------- sudo passwd ---------"

if ! sudo passwd; then
    echo "Mudança de senha do sudo falhou"
    exit
fi

echo "------- atualizando distro -------"

if ! sudo apt-get update && sudo apt-get upgrade; then
    echo "Atualização falhou"
    exit
fi

echo "------- instalando programas --------"

sudo apt-get install virtualbox
sudo apt-get install qbittorrent
sudo apt-get install git
sudo apt-get install vlc
sudo apt-get install gcc
sudo apt-get install wine
sudo apt-get install steam
sudo apt-get install curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

## Lightshot

wget http://app.prntscr.com/build/setup-lightshot.exe
wine ./setup-lightshot.exe

## lutris

sudo add-apt-repository ppa:lutris-team/lutris
sudo apt update
sudo apt install lutris

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

## nodejs

curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -
sudo apt-get install -y nodejs

## lampp

sudo apt-get update && sudo apt-get install apache2
sudo apt-get update && sudo apt-get install mysql-server
sudo mysql_secure_installation
sudo apt-get update && sudo apt-get install php libapache2-mod-php php-mysql

## limpando

sudo apt-get autoclean && sudo apt-get autoremove

echo "Reiniciando pc"

sleep 10

## Reiniciando
sudo reboot -f