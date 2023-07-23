
##### Run debootstrap second stage

distro=bookworm
export LANG=C
/debootstrap/debootstrap --second-stage

##### Setup APT

cat <<EOT > /etc/apt/sources.list
deb     http://ftp.jp.debian.org/debian  bookworm           main contrib non-free non-free-firmware
deb-src http://ftp.jp.debian.org/debian  bookworm           main contrib non-free non-free-firmware
deb     http://ftp.jp.debian.org/debian  bookworm-updates   main contrib non-free non-free-firmware
deb-src http://ftp.jp.debian.org/debian  bookworm-updates   main contrib non-free non-free-firmware
deb     http://security.debian.org       bookworm-security  main contrib non-free non-free-firmware
deb-src http://security.debian.org       bookworm-security  main contrib non-free non-free-firmware
EOT

cat <<EOT > /etc/apt/apt.conf.d/71-no-recommends
APT::Install-Recommends "0";
APT::Install-Suggests   "0";
EOT

apt update -y
apt upgrade -y

##### Install Core applications

apt install -y locales dialog
dpkg-reconfigure locales
apt install -y net-tools openssh-server ntpdate resolvconf sudo less hwinfo ntp tcsh zsh file wget

##### Setup hostname

echo "debian-fpga" > /etc/hostname

##### Set root password

echo Set root password. please input "admin"
passwd

cat <<EOT >> /etc/securetty
# Serial Port for Xilinx ZynqMP
ttyPS0
ttyPS1
EOT

##### Add fpga user

echo Add fpga user. please input "fpga"
adduser fpga
apt install -y sudo
echo "fpga ALL=(ALL:ALL) ALL" > /etc/sudoers.d/fpga

##### Setup sshd config

apt install -y ssh
sed -i -e 's/#PasswordAuthentication/PasswordAuthentication/g' /etc/ssh/sshd_config

##### Setup Time Zone

dpkg-reconfigure tzdata

##### Setup fstab

cat <<EOT > /etc/fstab
none		/config		configfs	defaults	0	0
EOT

##### Setup Network

apt install -y ifupdown
cat <<EOT > /etc/network/interfaces.d/eth0
allow-hotplug eth0
iface eth0 inet dhcp
EOT

##### Setup /lib/firmware

mkdir /lib/firmware
mkdir /lib/firmware/ti-connectivity
mkdir /lib/firmware/mchp

##### Install Development applications

apt install -y build-essential
apt install -y git git-lfs
apt install -y u-boot-tools device-tree-compiler
apt install -y libssl-dev
apt install -y socat
apt install -y ruby rake ruby-msgpack ruby-serialport
apt install -y python3 python3-dev python3-setuptools python3-wheel python3-pip python3-numpy
apt install -y flex bison pkg-config
apt install -y file dosfstools

##### Install Wireless tools and firmware

apt install -y wireless-tools
apt install -y wpasupplicant
apt install -y firmware-realtek
apt install -y firmware-ralink

git clone git://git.ti.com/wilink8-wlan/wl18xx_fw.git
cd wl18xx_fw && git checkout d2588c16809ecca8e0dc7ea011fc6180c7b08a92 && cd ..
cp wl18xx_fw/wl18xx-fw-4.bin /lib/firmware/ti-connectivity
rm -rf wl18xx_fw/

git clone git://git.ti.com/wilink8-bt/ti-bt-firmware
cp ti-bt-firmware/TIInit_11.8.32.bts /lib/firmware/ti-connectivity
rm -rf ti-bt-firmware

git clone https://github.com/linux4wilc/firmware  linux4wilc-firmware  
cp linux4wilc-firmware/*.bin /lib/firmware/mchp
rm -rf linux4wilc-firmware  

##### Install Other applications

apt install -y samba
apt install -y avahi-daemon

##### Install haveged for Linux Kernel 4.19

apt install -y haveged

##### Install Linux Modules

mkdir /mnt/boot
dpkg -i linux-*.deb

##### Clean Cache

apt clean

##### Create Debian Package List

dpkg -l > dpkg-list.txt
