# Security Assessment
## Sudo
- User: mohamedahmed
- Sudo access: enabled
- sudo -l confirmed (ALL) ALL

## Firewall
- firewalld: running
- Active zone: public
- Interfaces: ens160, ens224
- Allowed services: cockpit, dhcpv6-client, ssh
- Manually configured ports: none

## SSH
- sshd service: active
- SSH listening on TCP port 22

## SELinux
- Status: enabled
- Policy: targeted
- Current mode: enforcing
- Configured mode: enforcing

## Result
The RHEL server has active firewall protection, SSH administration, and SELinux enforcement. No manually configured firewall ports were detected in the public zone.
