#!/bin/bash

# Rajout du path pour ifconfig avec l'user kali
export PATH=$PATH:/usr/sbin

# Repo d'outils
mkdir ~/outils
cd outils

# Suppression mise en veille
sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target

# Clavier Azerty et changement de PATH dans le .bashrc
echo "setxkbmap fr" >> ~/.bashrc 
echo "export PATH=$PATH:/usr/sbin" >> ~/.bashrc 

# Raccourci "ll" pour "ls -la"
sudo touch /usr/bin/ll
sudo chown $USER:$USER /usr/bin/ll
echo "ls -la" > "/usr/bin/ll"


# Si pas de réseau : 
# /etc/network/interfaces 
# auto eth0
# iface eth0 inet loopback
#
# sudo dhclient eth0


# Outils utiles
sudo apt-get install gobuster
sudo apt-get install crackmapexec
