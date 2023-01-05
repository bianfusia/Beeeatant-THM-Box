#!/bin/bash
sudo apt install figlet toilet -y > /dev/null 2>&1
figlet -k "Beeeatant Bat Radar"
echo""
echo "*******developed by: @beeeatant**************"

find ./ -type f > allfiles.txt

while IFS= read -r line; do
	if cat "$line" | grep -i "password" > /dev/null 2>&1; then
		echo "[+] $line may contain password" | tee -a findings.txt
		cat "$line" | grep -i -o -P --color=always '.{0,30}password.{0,30}' | tee -a findings.txt
	fi
done < allfiles.txt
