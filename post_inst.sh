#!/bin/zsh

## Removendo travas
sudo rm /var/lib/dpkg/lock-frontend; sudo rm /var/cache/apt/archives/lock

##Atualizando o Sistema
sudo apt update

## Baixando programas de fontes externas
mkdir /home/$USER/Downloads/programas
cd /home/$USER/Downloads/programas
#Google Chrome
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#Mega Client for Desktop
wget -c https://mega.nz/linux/repo/xUbuntu_22.04/amd64/megasync-xUbuntu_22.04_amd64.deb
#Terabox for Desktop
#wget -c https://d-jp.nephobox.com/issue/terabox/Linux/1.4.1/TeraBox_1.4.1_amd64.deb?to=jp&sign=BOTH-F3530edecde9cd71b79378b290804a96-aRWKZNOF4Ogdjqkk0sX1YBCjICo%3D&region=tky&pkey=00002ee5aeb65e0c226248d81ae05a78341f
#Insomnia
wget -c https://objects.githubusercontent.com/github-production-release-asset-2e65be/56899284/66bf04e1-56a2-402e-af10-85c47d81520a?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAVCODYLSA53PQK4ZA%2F20240405%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240405T160942Z&X-Amz-Expires=300&X-Amz-Signature=3a05effb349ca22abe80757cec11ce4a8436cb5a24aa485ff079a597702ea608&X-Amz-SignedHeaders=host&actor_id=0&key_id=0&repo_id=56899284&response-content-disposition=attachment%3B%20filename%3DInsomnia.Core-8.6.1.deb&response-content-type=application%2Foctet-stream
#Instaa os pacotes que foram baixados
sudo apt install ./*.deb -y
#Caso ocorra erro de dependencia
sudo apt install -fy
#Instalando programas do repositório
sudo apt install vlc -y
sudo apt install virtualbox -y
sudo apt install gimp -y
sudo apt install inkscape -y
sudo apt install calibre -y
sudo apt install wireshark -y
sudo apt install telegram-desktop -y
sudo apt install timeshift -y
sudo apt install flatpak -y
#Configurando o flathub
flatpak remote-add --user --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
#Instalando Pacotes Flatpak
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub com.valvesoftware.Steam -y
