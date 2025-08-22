#!/bin/bash
# 🛡️ Linux Minimal Firewall – iptables
# Blocks all inbound traffic except SSH (22) and HTTPS (443)
# Default: deny incoming, allow outgoing

# Flush old rules
iptables -F
iptables -X

# Default policies
iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT ACCEPT

# Allow loopback
iptables -A INPUT -i lo -j ACCEPT

# Allow established connections
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

# Allow SSH (adjust port if needed)
iptables -A INPUT -p tcp --dport 22 -j ACCEPT

# Allow HTTPS
iptables -A INPUT -p tcp --dport 443 -j ACCEPT

# Log dropped packets (optional)
iptables -A INPUT -j LOG --log-prefix "IPTables-Dropped: " --log-level 4

echo "[+] Firewall rules applied."