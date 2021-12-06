# proxmox-RTL8125

## List realtek devices
```bash
lspci | grep -i rtl
```
## Connect to the network with another interface
```bash
ip addr show
ip link set enp12s0f3u3 up
dhclient enp12s0f3u3
ping 1.1.1.1
```
## Change to the community mirror if you don't have an enterprise subscription
```bash
echo 'deb http://download.proxmox.com/debian/pve bullseye pve-no-subscription' > /etc/apt/sources.list.d/pve-enterprise.list
```
## setup
- Select the download option **"2.5G Ethernet LINUX driver r8125 for kernel up to 5.6"** from [here](https://www.realtek.com/en/component/zoo/category/network-interface-controllers-10-100-1000m-gigabit-ethernet-pci-express-software)

- Solve the captcha and extract the temporary download link to replace to the one in the [wget call](https://github.com/AndreIglesias/proxmox-RTL8125/blob/6f067b85abe3f439dbd4de440417526137091eb6/setup.sh#L14)
### Run the script
```bash
./setup
```
## Connect to the network with RTL8125
```bash
ip addr show
ip link set enp0s0 up
dhclient enp0s0
ping 1.1.1.1
```
## Assign the RTL8125 interface as a bridge-port for your vmbrX
```bash
vi /etc/network/interfaces
```
