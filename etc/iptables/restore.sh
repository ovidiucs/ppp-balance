#!/bin/bash
iptables -F -t mangle
iptables-restore < /etc/iptables/iptables-nth
