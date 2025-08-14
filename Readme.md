ZynqMP-FPGA-Debian12
====================================================================================

Overview
------------------------------------------------------------------------------------

### Introduction

This Repository provides a Linux Boot Image(U-boot, Kernel, Debian 12 RootFS) for Zynq MPSoC.

### Note

**The Linux Kernel Image and Debian12 RootFS provided in this repository is not official.**

**I modified it to my liking. Please handle with care.**


### Features

* Hardware
  + UltraZed-EG-IOCC : Xilinx Zynq UltraScale+ MPSoC Starter Kit by Avnet.
  + Ultra96    : Xilinx Zynq UltraScale+ MPSoC development board based on the Linaro 96Boards specification. 
  + Ultra96-V2 : updates and refreshes the Ultra96 product that was released in 2018.
  + KV260      : Kria KV260 Vision AI Startar Kit.
  + KR260      : Kria KR260 Robotics  Startar Kit.
* Boot Loader
  + FSBL(First Stage Boot Loader for ZynqMP)
  + PMU Firmware(Platform Management Unit Firmware)
  + BL31(ARM Trusted Firmware Boot Loader stage 3-1)
  + U-Boot xilinx-v2019.2 (customized)
* [Linux Kernel Version 6.1.108-zynqmp-fpga-generic](https://github.com/ikwzm/ZynqMP-FPGA-Linux-Kernel-6.1/tree/6.1.108-zynqmp-fpga-generic-1)
  + [linux-stable 6.1.108](https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git//tag/?h=v6.1.108)
  + Patched equivalent to linux-xlnx v2023.1
  + Enable Device Tree Overlay with Configuration File System
  + Enable FPGA Manager
  + Enable FPGA Bridge
  + Enable FPGA Reagion
  + Enable ATWILC3000 Linux Driver for Ultra96-V2
* Debian12(bookworm) Root File System
  + Installed build-essential
  + Installed device-tree-compiler
  + Installed ruby ruby-msgpack ruby-serialport
  + Installed python python3 python3-numpy msgpack-rpc-python
  + Installed u-boot-tools
  + Installed Other package list -> [files/debian12-dpkg-list.txt](files/debian12-dpkg-list.txt)
* FPGA Device Drivers and Services
  + [fclkcfg    (FPGA Clock Configuration Device Driver)](https://github.com/ikwzm/fclkcfg)
  + [u-dma-buf  (User space mappable DMA Buffer)](https://github.com/ikwzm/udmabuf)

Release
------------------------------------------------------------------------------------

The main branch contains only Readme.md.     
For Linux Kernel and Debian12 RootFS, please refer to the respective release tag listed below.

| Release  | Released  | Debian Version | Linux Kernel Version           | Release Tag |
|:---------|:----------|:---------------|:-------------------------------|:------------|
| v7.0.0   | 2024-9-13 | Debian 12.7    | 6.1.108-zynqmp-fpga-generic-1  | [v7.0.0](https://github.com/ikwzm/ZynqMP-FPGA-Debian12/tree/v7.0.0)
| v4.1.0   | 2024-1-12 | Debian 12.4    | 6.1.70-zynqmp-fpga-generic-2   | [v4.1.0](https://github.com/ikwzm/ZynqMP-FPGA-Debian12/tree/v4.1.0)
| v1.0.0   | 2023-7-23 | Debian 12.1    | 6.1.38-zynqmp-fpga-generic-2   | [v1.0.0](https://github.com/ikwzm/ZynqMP-FPGA-Debian12/tree/v1.0.0)

Install
------------------------------------------------------------------------------------

* Install Boot Loader and Linux to SD-Card
  + [UltraZed-EG-IOCC](doc/install/ultrazed-eg-iocc.md)
  + [Ultra96](doc/install/ultra96.md)
  + [Ultra96-V2](doc/install/ultra96v2.md)
  + [KV260](doc/install/kv260.md)
  + [KR260](doc/install/kr260.md)


Build 
------------------------------------------------------------------------------------

* [Build Boot Loader for UltraZed-EG-IOCC](doc/build/boot-ultrazed-eg-iocc.md)
* [Build Boot Loader for Ultra96](doc/build/boot-ultra96.md)
* [Build Boot Loader for Ultra96-V2](doc/build/boot-ultra96v2.md)
* [Build Linux Kernel](doc/build/linux-kernel-6.1.108-zynqmp-fpga-generic.md)
* [Build Debian12 RootFS](doc/build/debian12-rootfs.md)


Other Projects
------------------------------------------------------------------------------------

* https://github.com/ikwzm/ZynqMP-FPGA-Linux-Kernel-6.1
  + Linux Kernel (v6.1.x) Image and Device Trees for Zynq MPSoC.
* https://github.com/ikwzm/ZynqMP-U-Boot-Ultra96
  + Boot Loader(U-Boot, FSBL, PMUFW,ATF) for Ultra96
* https://github.com/ikwzm/ZynqMP-U-Boot-Ultra96-V2
  + Boot Loader(U-Boot, FSBL, PMUFW,ATF) for Ultra96-V2
* https://github.com/ikwzm/ZynqMP-U-Boot-UltraZed-EG-IOCC
  + Boot Loader(U-Boot, FSBL, PMUFW,ATF) for UltraZed-EG-IOCC
* https://github.com/ikwzm/ZynqMP-FPGA-Debian13
  + Linux Boot Image(U-boot, Kernel, Debian13) for Ultra96/Ultra96-V2/Kv260/Kr260
* https://github.com/ikwzm/ZynqMP-FPGA-Ubuntu22.04-Console
  + Linux Boot Image(U-boot, Kernel, Ubuntu 22.04-Console) for Ultra96/Ultra96-V2/Kv260/Kr260
* https://github.com/ikwzm/ZynqMP-FPGA-Ubuntu22.04-Desktop
  + Linux Boot Image(U-boot, Kernel, Ubuntu 22.04-Desktop) for Ultra96/Ultra96-V2/Kv260/Kr260


Examples
------------------------------------------------------------------------------------

* https://github.com/ikwzm/ArgSort-Kv260
  + ArgSort for Kv260
* https://github.com/ikwzm/ArgSort-Ultra96
  + ArgSort for Ultra96/Ultra96-V2
* https://github.com/ikwzm/ZynqMP-FPGA-Linux-Example-2-Ultra96
  + ZynqMP-FPGA-Linux Example (2) binary and test code for Ultra96
* https://github.com/ikwzm/ZynqMP-FPGA-Linux-Example-0-UltraZed
  + ZynqMP-FPGA-Linux Example (0) binary and test code for UltraZed-EG-IOCC
* https://github.com/ikwzm/ZynqMP-FPGA-Linux-Example-2-UltraZed
  + ZynqMP-FPGA-Linux Example (2) binary and test code for UltraZed-EG-IOCC
* https://github.com/ikwzm/ZynqMP-FPGA-Linux-Example-3-UltraZed
  + ZynqMP-FPGA-Linux Example (3) binary and test code for UltraZed-EG-IOCC
