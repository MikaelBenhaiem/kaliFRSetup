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


