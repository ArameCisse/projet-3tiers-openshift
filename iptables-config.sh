#!/bin/bash
# Configuration iptables VM1 - Firewall/Passerelle
# Architecture 3-tiers - LAN/DMZ

# Activer le forwarding IP
sysctl -w net.ipv4.ip_forward=1

# Configurer l'IP LAN sur VM1
ip addr add 192.168.10.1/24 dev enp1s0

# Règles iptables
# Autoriser trafic établi
iptables -A FORWARD -m state --state ESTABLISHED,RELATED -j ACCEPT

# Autoriser HTTP depuis Internet vers DMZ
iptables -A FORWARD -p tcp --dport 80 -j ACCEPT

# Autoriser MySQL depuis DMZ vers LAN uniquement
iptables -A FORWARD -p tcp --dport 3306 -j ACCEPT

# Bloquer tout autre trafic
iptables -A FORWARD -j DROP

# NAT pour accès Internet
iptables -t nat -A POSTROUTING -o enp1s0 -j MASQUERADE

echo "Configuration iptables terminée !"
