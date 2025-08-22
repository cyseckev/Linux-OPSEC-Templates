# 🔒 Linux Template Hardening Guide

Dieses Template ist ein **praxisgetestetes Minimal-Setup** für gehärtete Linux-Umgebungen.

## 🛡️ Enthalten
- `sshd_config` – restriktive SSH-Policies (kein Root, keine Passwörter, nur definierte User)
- `sysctl.conf` – Kernel- und Netzwerk-Hardening
- `firewall.sh` – Minimalistische iptables-Policy
- `audit.rules` – System-Monitoring & Logging

## 🚀 Anwendung
```bash
# Firewall aktivieren
sudo bash firewall.sh

# Sysctl laden
sudo sysctl -p sysctl.conf

# SSH-Konfig übernehmen
sudo cp sshd_config /etc/ssh/sshd_config
sudo systemctl restart sshd
