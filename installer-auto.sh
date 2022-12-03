#!/bin/sh

# Update / Upgrade / Autoremove Script
echo "[+] System Updates !"
echo ""
apt update
echo "[*] Done !"
echo ""
clear -x
echo "[+] System Upgrades !"
apt upgrade -y
echo "[*] Done !"
echo ""
clear -x
echo "[+] System Full Upgrades !"
apt full-upgrade -y
echo "[*] Done !"
echo ""
clear -x
echo "[+] System AutoRemove !"
apt autoremove -y
echo "[*] Done !"
echo ""
clear -x




# installasjons script
echo "[-] Installer Program !"

read -p "vil du installere Standard Opsett? [Y/n] (N for nei) " STD Opsett

case $tor in
	[Yy]* ) apt install software-properties-common git gh curl axel wget libnewt-dev libssl-dev libncurses5-dev subversion libsqlite3-dev build-essential libjansson-dev libxml2-dev uuid-dev install python2.7 python3.10-full gpg gufw synaptic snap snapd preload install ubuntu-restricted-extras  -y; break;;
	[Nn]* ) break;;
       	* ) echo "You didn't type Y or n, aborting!"; break;;
esac;
clear -x
read -p "vil du installere MacChanger? [Y/n] (N for nei) " tor
case $tor in
	[Yy]* ) apt install macchanger -y; break;;
	[Nn]* ) break;;
        * ) echo "You didn't type Y or n, aborting!"; break;;
esac;
clear -x
echo "Ferdig, kom deg videre"

