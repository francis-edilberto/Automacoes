#!/bin/env bash

## Removendo travas
sudo rm /var/lib/dpkg/lock-frontend; sudo rm /var/cache/apt/archives/lock

##Atualizando o Sistema
sudo apt update

## Baixando programas de fontes externas
mkdir /home/$USER/Downloads/programas
cd /home/$USER/Downloads/programas
#Google Chrome
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

#Insomnia
wget -c https://objects.githubusercontent.com/github-production-release-asset-2e65be/56899284/66bf04e1-56a2-402e-af10-85c47d81520a?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAVCODYLSA53PQK4ZA%2F20240405%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240405T160942Z&X-Amz-Expires=300&X-Amz-Signature=3a05effb349ca22abe80757cec11ce4a8436cb5a24aa485ff079a597702ea608&X-Amz-SignedHeaders=host&actor_id=0&key_id=0&repo_id=56899284&response-content-disposition=attachment%3B%20filename%3DInsomnia.Core-8.6.1.deb&response-content-type=application%2Foctet-stream
#Instaa os pacotes que foram baixados
sudo apt install ./*.deb -y; sudo apt install -fy
#Instalando programas do repositório
sudo apt install vlc virtualbox gimp inkscape calibre wireshark telegram-desktop timeshift flatpak okular qbittorrent -y
#Configurando o flathub
flatpak remote-add --user --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
#Instalando Pacotes Flatpak
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub com.valvesoftware.Steam -y
