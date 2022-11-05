#!/usr/bin/python3
# This script aim to automate some standard Nmap scans for OSCP/CTF uses
# command to run includes:
# 1. export IP=$IP - a bit too much work to do this, so ignore.
# 2. nmap -p- --max-rate=10000 -oN fullport $IP
# 3. nmap -sC -sV -p <ports included in fullport> -oN versionscan $IP
# 4. nmap --script vuln -p <ports included in fullport> -oN vulnscan $IP
# 5. May consider including nikto and gobuster scans for standard port 80 and 443.

# TODO: explore threading after first fullport scan

import os

os.system('figlet -k "OSCP Bat Recon"')
# Variable needed
all_ports = []

# DETECTING EXISTING PORTS
ip_addr = input("Target IP address: ")
print("Begin scanning target: " + ip_addr)
command = "nmap -p- -Pn -T4 -oN fullport.txt " + ip_addr
print(command)
os.system(command)

# READING FILE AND ASSIGNING PORTS INTO LIST
with open('fullport.txt') as f:
    lines = f.readlines()

skip_lines = 5
skip_end_lines = 3
newlines = lines[5:-2]
print(str(len(newlines)) + " ports detected.")

for line in newlines:
    port = line.split('/')[0]
    all_ports.append(port)

all_ports_str = (','.join(all_ports))
print("Ports included in list: " + all_ports_str)

# SCANNING VERSIONS AND COMMON SCRIPTS
print("#################################################################")
command = "nmap -sC -sV -Pn -p " + all_ports_str + " -oN versionscan " + ip_addr
print("checking versions and common scripts")
print(command)
os.system(command)

# SCANNING FOR VULNERABLE
print("#################################################################")
command = "nmap --script vuln -Pn -p " + all_ports_str + " -oN vulnscan " + ip_addr
print("checking for common vulns in open ports")
print(command)
os.system(command)

# NIKTO IF 80 OR 443 OPEN
print("#################################################################")
if "80" in all_ports or "443" in all_ports:
    
    command = "nikto -h " + ip_addr
    print("Checking for vuln with nikto")
    print(command)
    os.system(command)

print("completed all scans!")
