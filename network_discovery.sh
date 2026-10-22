#!/bin/bash

echo "================================"
echo " Automated Network Discovery Script "
echo " Using Nmap + Bash"
echo "================================"

# Ask for target network
read -p "Enter Target IP or Network (Example: 192.168.1.0/24): " target

# Create results directory
mkdir -p scan_results

echo "[+] Starting Network Discovery..."

# Host discovery
echo "[+] Discovering Live Hosts..."
nmap -sn $target -oN scan_results/live_hosts.txt

# Port scanning
echo "[+] Scanning Open Ports..."
nmap -p- $target -oN scan_results/open_ports.txt

# Service detection
echo "[+] Detecting Services..."
nmap -sV $target -oN scan_results/services.txt

# OS detection
echo "[+] Detecting Operating System..."
nmap -O $target -oN scan_results/os_detection.txt

echo "[+] Scan Completed!"
echo "Results saved in scan_results folder."