# Projet 3-Tiers OpenShift - Architecture Réseau Virtualisée

# Description
Déploiement d'une architecture réseau multi-VM sur OpenShift Virtualization,
reproduisant un environnement d'entreprise composé d'une passerelle/firewall,
d'un serveur web et d'un serveur de base de données.

# Architecture
- VM1 : Passerelle/Firewall (Ubuntu 22.04 + iptables) - Réseau LAN 192.168.10.0/24
- VM2 : Serveur Web (Ubuntu 22.04 + Nginx + Node.js) - Réseau DMZ 192.168.100.0/24
- VM3 : Serveur BD (Pod MySQL 8.0) - Réseau LAN

# Fichiers
- vm1-firewall.yaml : Configuration VM1
- vm2-webserver.yaml : Configuration VM2
- vm3-database.yaml : Configuration VM3 + Service MySQL
- iptables-config.sh : Script de configuration du firewall

# Technologies
- OpenShift Virtualization
- Ubuntu 22.04 LTS
- Nginx + Node.js
- MySQL 8.0
- iptables

