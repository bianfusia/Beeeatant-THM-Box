#!/bin/bash
sudo apt install figlet toilet -y > /dev/null 2>&1
GREEN=$'\e[0;32m'
NC=$'\e[0m'
figlet -k "Beeeeatant THM Box"
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
echo "${GREEN}[+] Downloading LINPEAS...${NC}"
wget https://github.com/carlospolop/PEASS-ng/releases/download/20220203/linpeas.sh > /dev/null 2>&1
echo "${GREEN}[+] Downloading winPEAS.bat...${NC}"
wget https://github.com/carlospolop/PEASS-ng/releases/download/20220203/winPEAS.bat > /dev/null 2>&1
echo "${GREEN}[+] Downloading winPEASx64.exe...${NC}"
wget https://github.com/carlospolop/PEASS-ng/releases/download/20220203/winPEASx64.exe > /dev/null 2>&1
echo "${GREEN}[+][+][+][+] YOUR KALI BOX IS READY TO CTF! [+][+][+][+]${NC}"
