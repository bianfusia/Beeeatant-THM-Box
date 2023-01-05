#!/bin/bash
sudo apt install figlet toilet -y > /dev/null 2>&1
figlet -k "Beeeatant Bat Radar"
echo""
echo "*******developed by: @beeeatant**************"

find ./ -type f > allfiles.txt

while IFS= read -r line; do
	if cat "$line" | grep "password" > /dev/null 2>&1; then
		echo "[+] $line may contain password"
	fi
done < allfiles.txt
