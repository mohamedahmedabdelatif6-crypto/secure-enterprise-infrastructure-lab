
# Network Assessment

## Interface Status

- ens160: 192.168.1.144/24
- ens224: 192.168.1.50/24
- ens224 secondary address: 192.168.1.239/24
- loopback: 127.0.0.1

## Routing

- Primary default route: 192.168.1.1 via ens160
- Primary route metric: 100
- Secondary route metric: 101

## Connectivity Tests

- Gateway 192.168.1.1: 0% packet loss
- Internet 8.8.8.8: 0% packet loss
- DNS resolution for google.com: successful

## DNS

DNS servers observed on ens224:

- 185.228.168.168
- 185.228.169.168
- 192.168.1.1

## Routing Preference

The default route selected by Linux for 8.8.8.8 uses:

- Interface: ens160
- Source IP: 192.168.1.144
- Gateway: 192.168.1.1

The ens224 interface can also reach 8.8.8.8 when explicitly selected.

## Result

The RHEL system has working network connectivity, routing, and DNS resolution. ens160 is currently the preferred default path because it has the lower route metric.
