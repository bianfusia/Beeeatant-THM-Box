#!/bin/bash
sudo apt install figlet toilet -y > /dev/null 2>&1
GREEN=$'\e[0;32m'
NC=$'\e[0m'
figlet -k "Beeeatant THM Box"
echo""
echo "*******developed by: @beeeatant**************"
echo""
echo "${GREEN}[+] Creating directory for files and scripts...${NC}"
mkdir Beeeatant > /dev/null 2>&1
cd ./Beeeatant > /dev/null 2>&1
echo "${GREEN}[+] Updating kali linux with apt-get update...${NC}"
sudo apt-get update > /dev/null 2>&1
echo "${GREEN}[+] Updating searchsploit with searchsploit -u...${NC}"
sudo searchsploit -u > /dev/null 2>&1
echo "${GREEN}[+] Installing pip for python3 with apt install python3-pip...${NC}"
sudo apt install python3-pip -y > /dev/null 2>&1
echo "${GREEN}[+] Installing Gobuster with apt-get install gobuster...${NC}"
sudo apt-get install gobuster > /dev/null 2>&1
echo "${GREEN}[+] Downloading pentestmonkey's php reverse shell...${NC}"
sudo git clone https://github.com/pentestmonkey/php-reverse-shell > /dev/null 2>&1
echo "${GREEN}[+] Unzipping rockyou.txt from wordlist...${NC}"
gunzip /usr/share/wordlists/rockyou.txt.gz > /dev/null 2>&1
echo "${GREEN}[+] Cloning common CTF wordlists to folder...${NC}"
cp /usr/share/wordlists/rockyou.txt rockyou.txt > /dev/null 2>&1
cp /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt directory-list-2.3-medium.txt > /dev/null 2>&1
sudo apt install remmina -y > /dev/null 2>&1
echo "${GREEN}[+] Installing RDP software remmina...${NC}"
sudo apt install metasploit-framework -y > /dev/null 2>&1
sudo msfdb reinit > /dev/null 2>&1
echo "${GREEN}[+] Updating Metasploit...${NC}"
apt-get remove --purge wpscan > /dev/null 2>&1
apt autoremove -y > /dev/null 2>&1
echo "${GREEN}[+] Removing faulty wpscan...${NC}"
apt install wpscan -y > /dev/null 2>&1
echo "${GREEN}[+] Reinstalling wpscan...${NC}"
echo "${GREEN}[+][+][+][+] YOUR KALI BOX IS READY TO CTF! [+][+][+][+]${NC}"
