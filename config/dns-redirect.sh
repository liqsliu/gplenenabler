#!/system/bin/sh

IP6TABIP6TABLES=/system/bin/ip6tables
IPTABLES=/system/bin/iptables 

$IPTABLES  -t nat -A OUTPUT -p tcp ! -d 1.1.1.1 --dport 53 -j DNAT --to-destination 127.0.0.1:5354
$IPTABLES  -t nat -A OUTPUT -p udp ! -d 1.1.1.1 --dport 53 -j DNAT --to-destination 127.0.0.1:5354
