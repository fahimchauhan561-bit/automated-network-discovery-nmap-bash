# Automated Network Discovery Using Nmap and Bash

## 📌 Project Overview

This project automates network discovery and reconnaissance using **Nmap** and **Bash scripting**.

The Bash script automates multiple network scanning tasks, including host discovery, port scanning, service detection, and operating system detection. It collects scan results and stores them in separate files for easier analysis.

## 🎯 Objectives

- Automate network discovery using Bash scripting.
- Identify active hosts on a network.
- Discover open ports on target systems.
- Detect running services and their versions.
- Identify operating systems of target machines.
- Store scan results in an organized format.

## 🛠️ Tools & Technologies

- **Nmap:** Network discovery, port scanning, service detection, and OS detection.
- **Bash Scripting:** Automates multiple Nmap commands.
- **Linux:** Environment for executing the scanning script.

## ⚙️ Features

- Automated host discovery.
- Full port scanning (65,535 ports).
- Service and version detection.
- Operating system detection.
- Automatic creation of a `scan_results` directory.
- Separate storage of scan outputs for analysis.

## 📂 Project Structure

```text
automated-network-discovery-nmap-bash/
│
├── network_discovery.sh
├── README.md
│
└── scan_results/
    ├── live_hosts.txt
    ├── open_ports.txt
    ├── services.txt
    └── os_detection.txt
```

## 💻 Complete Bash Script

**File: `network_discovery.sh`**

```bash
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
```

## 🚀 Installation & Usage

### 1. Clone the repository

```bash
git clone https://github.com/fahimchauhan561-bit/automated-network-discovery-nmap-bash.git
```

### 2. Navigate to the project directory

```bash
cd automated-network-discovery-nmap-bash
```

### 3. Install Nmap

```bash
sudo apt update
sudo apt install nmap -y
```

### 4. Give execution permission

```bash
chmod +x network_discovery.sh
```

### 5. Run the script

```bash
sudo ./network_discovery.sh
```

### 6. Enter the target IP address or network range

Example:

```text
192.168.1.0/24
```

The script will perform the scanning operations and save the results in the `scan_results` directory.

## 🔍 Nmap Commands Used

| Command | Purpose |
|---|---|
| `nmap -sn` | Host discovery |
| `nmap -p-` | Scan all TCP ports |
| `nmap -sV` | Service and version detection |
| `nmap -O` | Operating system detection |

## 📊 Expected Results

The project identifies:

- Active hosts in the target network.
- Open ports and their associated services.
- Service versions.
- Operating system information.

All scan results are stored in separate output files for convenient review and analysis.

## 🔐 Security Risks Identified

1. **Open Ports:** Unnecessary open ports increase the attack surface.
2. **Outdated Services:** Older service versions may contain vulnerabilities.
3. **OS Fingerprinting:** Operating system information may help attackers plan targeted attacks.
4. **Network Exposure:** Visible active hosts may become potential targets.

## 🛡️ Mitigation Strategies

- Close unnecessary open ports.
- Update and patch outdated services.
- Configure firewalls to restrict unauthorized access.
- Implement network monitoring.
- Use Intrusion Detection Systems (IDS).

## 🎓 Learning Outcomes

Through this project, I gained practical experience in:

- Bash scripting and automation.
- Network reconnaissance.
- Nmap scanning techniques.
- Host and port discovery.
- Service and OS detection.
- Basic network security assessment.

## ⚠️ Disclaimer

This project is intended for educational purposes and authorized security testing only.

Only scan networks and systems that you own or have explicit permission to test. Unauthorized network scanning may violate applicable laws and policies.

## 👨‍💻 Author

**Fahim Chauhan**
