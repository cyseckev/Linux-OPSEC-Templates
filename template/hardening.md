# 🔐 Linux Hardening Guide

This guide summarizes **core steps for securing a Linux system**.  
It is not exhaustive, but provides a strong OPSEC baseline.

---

## 1️⃣ User & Authentication
- Disable root SSH login  
- Enforce strong passwords or SSH keys only  
- Use `sudo` with logging  

    sudo passwd -l root

---

## 2️⃣ System Updates
- Enable unattended upgrades (Debian/Ubuntu)  
- Regularly patch kernel and software  

    sudo apt update && sudo apt upgrade -y

---

## 3️⃣ Firewall & Networking
- Default: deny all incoming traffic  
- Allow only required ports (e.g., 22, 443)  
- Use iptables/nftables (see `firewall.sh`)  

---

## 4️⃣ Kernel Hardening
- Apply `sysctl.conf` from this repo  
- Disable IP forwarding, redirects, and source routing  
- Enable SYN cookies and stricter TCP handling  

---

## 5️⃣ SSH Security
- Use provided `sshd_config`  
- Key-based login only  
- Disable password authentication  

---

## 6️⃣ Monitoring & Logging
- Apply `audit.rules` for critical system events  
- Forward logs to remote syslog (optional)  
- Regular log review  

---

## 7️⃣ OPSEC Tips
- Minimize installed packages  
- Use separate VM/container for risky tasks  
- Combine with VPN/Tor/WireGuard for anonymity  
