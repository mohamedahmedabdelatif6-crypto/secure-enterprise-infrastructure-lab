#!/bin/bash

echo "=== System Information ==="
hostname
uname -r
uptime

echo
echo "=== Network Information ==="
ip addr
ip route

echo
echo "=== Connectivity Test ==="
ping -c 4 8.8.8.8

echo
echo "=== DNS Test ==="
getent hosts google.com

