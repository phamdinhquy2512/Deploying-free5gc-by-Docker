#!/bin/bash
#
# Configure iptables in UPF
#
ip route delete default via 10.100.3.1
ip route add default via 10.100.6.101 dev dn0

iptables -I FORWARD 1 -j ACCEPT