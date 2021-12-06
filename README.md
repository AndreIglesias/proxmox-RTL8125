# proxomox-RTL8125

## Connect to the network with another interface
```bash
ip addr show
ip link set enp12s0f3u3 up
dhclient enp12s0f3u3
ping 1.1.1.1
```
## Change to community mirror if you don't have an enterprise subscription
```
echo 'deb http://download.proxmox.com/debian/pve bullseye pve-no-subscription' > /etc/apt/sources.list.d/pve-enterprise.list
```
