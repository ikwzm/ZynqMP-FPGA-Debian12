### Build Linux Kernel 6.1.108-zynqmp-fpga-generic

#### Download FPGA-SoC-Linux-Kernel-6.1

```console
shell$ wget https://github.com/ikwzm/ZynqMP-FPGA-Linux-Kernel-6.1/archive/refs/tags/6.1.108-zynqmp-fpga-generic-1.tar.gz
shell$ tar xfz 6.1.108-zynqmp-fpga-generic-1.tar.gz
```

#### Setup parameters

```console
shell$ export LINUX_KERNEL_REPOSITORY=ZynqMP-FPGA-Linux-Kernel-6.1-6.1.108-zynqmp-fpga-generic-1
shell$ export LINUX_KERNEL_VERSION=6.1.108
shell$ export LINUX_KERNEL_RELEASE=$LINUX_KERNEL_VERSION-zynqmp-fpga-generic
```


#### Copy Linux Kernel Image to this repository

```console
shell$ cp $LINUX_KERNEL_REPOSITORY/vmlinuz-$LINUX_KERNEL_RELEASE-*      ./files
shell$ cp $LINUX_KERNEL_REPOSITORY/files/config-$LINUX_KERNEL_RELEASE-* ./files
```

#### Copy Linux Image and Header Debian Packages to this repository

```console
shell$ cp $LINUX_KERNEL_REPOSITORY/linux-image-$LINUX_KERNEL_RELEASE_*.deb   ./debian
shell$ cp $LINUX_KERNEL_REPOSITORY/linux-headers-$LINUX_KERNEL_RELEASE_*.deb ./debian
```

#### Copy devicetree for KV260

```console
shell$ bash $LINUX_KERNEL_REPOSITORY/scripts/install-linux-$LINUX_KERNEL_RELEASE.sh -d ./target/Kv260/boot -U -v kv260
# SCRIPT NAME     =  ZynqMP-FPGA-Linux-Kernel-6.1-6.1.108-zynqmp-fpga-generic-1/scripts/install-linux-6.1.108-zynqmp-fpga-generic.sh
# SCRIPT VERSION  =  0.1
# KERNEL_RELEASE  =  6.1.108-zynqmp-fpga-generic
# BUILD_VERSION   =  1
# TARGET          =  kv260_revB
# TARGET_DIRECTRY =  ./target/Kv260/boot
install -d ./target/Kv260/boot
gzip -d -c /home/ichiro/work2/ZynqMP-FPGA-Debian12/ZynqMP-FPGA-Linux-Kernel-6.1-6.1.108-zynqmp-fpga-generic-1/vmlinuz-6.1.108-zynqmp-fpga-generic-1 > ./target/Kv260/boot/image-6.1.108-zynqmp-fpga-generic
# do_install_dtb(kv260_revB)
cp /home/ichiro/work2/ZynqMP-FPGA-Debian12/ZynqMP-FPGA-Linux-Kernel-6.1-6.1.108-zynqmp-fpga-generic-1/devicetrees/6.1.108-zynqmp-fpga-generic-1/zynqmp-kv260-revB.dtb ./target/Kv260/boot/devicetree-6.1.108-zynqmp-fpga-generic-kv260-revB.dtb
dtc -I dtb -O dts --symbols -o ./target/Kv260/boot/devicetree-6.1.108-zynqmp-fpga-generic-kv260-revB.dts ./target/Kv260/boot/devicetree-6.1.108-zynqmp-fpga-generic-kv260-revB.dtb
# do_generate_uenv(kv260_revB)
# cat ... > ./target/Kv260/boot/uEnv-linux-6.1.108-zynqmp-fpga-generic.txt
```

#### Copy devicetree for KR260

```console
shell$ bash $LINUX_KERNEL_REPOSITORY/scripts/install-linux-$LINUX_KERNEL_RELEASE.sh -d ./target/Kr260/boot -U -v kr260
# SCRIPT NAME     =  ZynqMP-FPGA-Linux-Kernel-6.1-6.1.108-zynqmp-fpga-generic-1/scripts/install-linux-6.1.108-zynqmp-fpga-generic.sh
# SCRIPT VERSION  =  0.1
# KERNEL_RELEASE  =  6.1.108-zynqmp-fpga-generic
# BUILD_VERSION   =  1
# TARGET          =  kr260_revB
# TARGET_DIRECTRY =  ./target/Kr260/boot
install -d ./target/Kr260/boot
gzip -d -c /home/ichiro/work2/ZynqMP-FPGA-Debian12/ZynqMP-FPGA-Linux-Kernel-6.1-6.1.108-zynqmp-fpga-generic-1/vmlinuz-6.1.108-zynqmp-fpga-generic-1 > ./target/Kr260/boot/image-6.1.108-zynqmp-fpga-generic
# do_install_dtb(kr260_revB)
cp /home/ichiro/work2/ZynqMP-FPGA-Debian12/ZynqMP-FPGA-Linux-Kernel-6.1-6.1.108-zynqmp-fpga-generic-1/devicetrees/6.1.108-zynqmp-fpga-generic-1/zynqmp-kr260-revB.dtb ./target/Kr260/boot/devicetree-6.1.108-zynqmp-fpga-generic-kr260-revB.dtb
dtc -I dtb -O dts --symbols -o ./target/Kr260/boot/devicetree-6.1.108-zynqmp-fpga-generic-kr260-revB.dts ./target/Kr260/boot/devicetree-6.1.108-zynqmp-fpga-generic-kr260-revB.dtb
# do_generate_uenv(kr260_revB)
# cat ... > ./target/Kr260/boot/uEnv-linux-6.1.108-zynqmp-fpga-generic.txt
```

#### Copy devicetree for Ultra96

```console
shell$ bash $LINUX_KERNEL_REPOSITORY/scripts/install-linux-$LINUX_KERNEL_RELEASE.sh -d ./target/Ultra96/boot -U -v ultra96
# SCRIPT NAME     =  ZynqMP-FPGA-Linux-Kernel-6.1-6.1.108-zynqmp-fpga-generic-1/scripts/install-linux-6.1.108-zynqmp-fpga-generic.sh
# SCRIPT VERSION  =  0.1
# KERNEL_RELEASE  =  6.1.108-zynqmp-fpga-generic
# BUILD_VERSION   =  1
# TARGET          =  ultra96
# TARGET_DIRECTRY =  ./target/Ultra96/boot
install -d ./target/Ultra96/boot
gzip -d -c /home/ichiro/work2/ZynqMP-FPGA-Debian12/ZynqMP-FPGA-Linux-Kernel-6.1-6.1.108-zynqmp-fpga-generic-1/vmlinuz-6.1.108-zynqmp-fpga-generic-1 > ./target/Ultra96/boot/image-6.1.108-zynqmp-fpga-generic
# do_install_dtb(ultra96)
cp /home/ichiro/work2/ZynqMP-FPGA-Debian12/ZynqMP-FPGA-Linux-Kernel-6.1-6.1.108-zynqmp-fpga-generic-1/devicetrees/6.1.108-zynqmp-fpga-generic-1/avnet-ultra96-rev1.dtb ./target/Ultra96/boot/devicetree-6.1.108-zynqmp-fpga-generic-ultra96.dtb
dtc -I dtb -O dts --symbols -o ./target/Ultra96/boot/devicetree-6.1.108-zynqmp-fpga-generic-ultra96.dts ./target/Ultra96/boot/devicetree-6.1.108-zynqmp-fpga-generic-ultra96.dtb
# do_generate_uenv(ultra96)
# cat ... > ./target/Ultra96/boot/uEnv-linux-6.1.108-zynqmp-fpga-generic.txt
```

#### Copy devicetree for Ultra96-V2

```console
shell$ bash $LINUX_KERNEL_REPOSITORY/scripts/install-linux-$LINUX_KERNEL_RELEASE.sh -d ./target/Ultra96-V2/boot -U -v ultra96v2
# SCRIPT NAME     =  ZynqMP-FPGA-Linux-Kernel-6.1-6.1.108-zynqmp-fpga-generic-1/scripts/install-linux-6.1.108-zynqmp-fpga-generic.sh
# SCRIPT VERSION  =  0.1
# KERNEL_RELEASE  =  6.1.108-zynqmp-fpga-generic
# BUILD_VERSION   =  1
# TARGET          =  ultra96v2
# TARGET_DIRECTRY =  ./target/Ultra96-V2/boot
install -d ./target/Ultra96-V2/boot
gzip -d -c /home/ichiro/work2/ZynqMP-FPGA-Debian12/ZynqMP-FPGA-Linux-Kernel-6.1-6.1.108-zynqmp-fpga-generic-1/vmlinuz-6.1.108-zynqmp-fpga-generic-1 > ./target/Ultra96-V2/boot/image-6.1.108-zynqmp-fpga-generic
# do_install_dtb(ultra96v2)
cp /home/ichiro/work2/ZynqMP-FPGA-Debian12/ZynqMP-FPGA-Linux-Kernel-6.1-6.1.108-zynqmp-fpga-generic-1/devicetrees/6.1.108-zynqmp-fpga-generic-1/avnet-ultra96v2-rev1.dtb ./target/Ultra96-V2/boot/devicetree-6.1.108-zynqmp-fpga-generic-ultra96v2.dtb
dtc -I dtb -O dts --symbols -o ./target/Ultra96-V2/boot/devicetree-6.1.108-zynqmp-fpga-generic-ultra96v2.dts ./target/Ultra96-V2/boot/devicetree-6.1.108-zynqmp-fpga-generic-ultra96v2.dtb
# do_generate_uenv(ultra96v2)
# cat ... > ./target/Ultra96-V2/boot/uEnv-linux-6.1.108-zynqmp-fpga-generic.txt
```

#### Copy devicetree for UltraZed-EG-IOCC

```console
shell$ bash $LINUX_KERNEL_REPOSITORY/scripts/install-linux-$LINUX_KERNEL_RELEASE.sh -d ./target/UltraZed-EG-IOCC/boot -U -v UltraZed-EG-IOCC
# SCRIPT NAME     =  ZynqMP-FPGA-Linux-Kernel-6.1-6.1.108-zynqmp-fpga-generic-1/scripts/install-linux-6.1.108-zynqmp-fpga-generic.sh
# SCRIPT VERSION  =  0.1
# KERNEL_RELEASE  =  6.1.108-zynqmp-fpga-generic
# BUILD_VERSION   =  1
# TARGET          =  uz3eg_iocc
# TARGET_DIRECTRY =  ./target/UltraZed-EG-IOCC/boot
install -d ./target/UltraZed-EG-IOCC/boot
gzip -d -c /home/ichiro/work2/ZynqMP-FPGA-Debian12/ZynqMP-FPGA-Linux-Kernel-6.1-6.1.108-zynqmp-fpga-generic-1/vmlinuz-6.1.108-zynqmp-fpga-generic-1 > ./target/UltraZed-EG-IOCC/boot/image-6.1.108-zynqmp-fpga-generic
# do_install_dtb(uz3eg_iocc)
cp /home/ichiro/work2/ZynqMP-FPGA-Debian12/ZynqMP-FPGA-Linux-Kernel-6.1-6.1.108-zynqmp-fpga-generic-1/devicetrees/6.1.108-zynqmp-fpga-generic-1/zynqmp-uz3eg-iocc.dtb ./target/UltraZed-EG-IOCC/boot/devicetree-6.1.108-zynqmp-fpga-generic-uz3eg-iocc.dtb
dtc -I dtb -O dts --symbols -o ./target/UltraZed-EG-IOCC/boot/devicetree-6.1.108-zynqmp-fpga-generic-uz3eg-iocc.dts ./target/UltraZed-EG-IOCC/boot/devicetree-6.1.108-zynqmp-fpga-generic-uz3eg-iocc.dtb
# do_generate_uenv(uz3eg_iocc)
# cat ... > ./target/UltraZed-EG-IOCC/boot/uEnv-linux-6.1.108-zynqmp-fpga-generic.txt
```

