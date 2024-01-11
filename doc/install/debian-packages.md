### Install Debian Packages

#### Boot Target Board and login fpga or root user

fpga'password is "fpga".

```console
debian-fpga login: fpga
Password:
fpga@debian-fpga:~$
```

root'password is "admin".

```console
debian-fpga login: root
Password:
root@debian-fpga:~#
```

#### Install Linux Image Package

Since linux-image-6.1.70-zynqmp-fpga-generic_6.1.70-zynqmp-fpga-generic-1_arm64.deb is already pre-installed in debian11-rootfs.tgz, this The process can be omitted.

```console
root@debian-fpga:~# cd /home/fpga/debian
root@debian-fpga:/home/fpga/debian# dpkg -i linux-image-6.1.70-zynqmp-fpga-generic_6.1.70-zynqmp-fpga-generic-2_arm64.deb
(Reading database ... 48245 files and directories currently installed.)
Preparing to unpack linux-image-6.1.70-zynqmp-fpga-generic_6.1.70-zynqmp-fpga-generic-2_arm64.deb ...
Unpacking linux-image-6.1.70-zynqmp-fpga-generic (6.1.70-zynqmp-fpga-generic-2) over (6.1.70-zynqmp-fpga-generic-1) ...
Setting up linux-image-6.1.70-zynqmp-fpga-generic (6.1.70-zynqmp-fpga-generic-2) ...
```

#### Install Linux Headers Package

```console
root@debian-fpga:~# cd /home/fpga/debian
root@debian-fpga:/home/fpga/debian# dpkg -i linux-headers-6.1.70-zynqmp-fpga-generic_6.1.70-zynqmp-fpga-generic-2_arm64.deb
Selecting previously unselected package linux-headers-6.1.70-zynqmp-fpga-generic.
(Reading database ... 30894 files and directories currently installed.)
Preparing to unpack linux-headers-6.1.70-zynqmp-fpga-generic_6.1.70-zynqmp-fpga-generic-2_arm64.deb ...
Unpacking linux-headers-6.1.70-zynqmp-fpga-generic (6.1.70-zynqmp-fpga-generic-2) ...
Setting up linux-headers-6.1.70-zynqmp-fpga-generic (6.1.70-zynqmp-fpga-generic-2) ...
make: Entering directory '/usr/src/linux-headers-6.1.70-zynqmp-fpga-generic'
  SYNC    include/config/auto.conf.cmd
  HOSTCC  scripts/basic/fixdep
  HOSTCC  scripts/kconfig/conf.o
  HOSTCC  scripts/kconfig/confdata.o
  HOSTCC  scripts/kconfig/expr.o
  LEX     scripts/kconfig/lexer.lex.c
  YACC    scripts/kconfig/parser.tab.[ch]
  HOSTCC  scripts/kconfig/lexer.lex.o
  HOSTCC  scripts/kconfig/menu.o
  HOSTCC  scripts/kconfig/parser.tab.o
  HOSTCC  scripts/kconfig/preprocess.o
  HOSTCC  scripts/kconfig/symbol.o
  HOSTCC  scripts/kconfig/util.o
  HOSTLD  scripts/kconfig/conf
*
* Restart config...
*
*
* General architecture-dependent options
*
Kprobes (KPROBES) [N/y/?] n
Optimize very unlikely/likely branches (JUMP_LABEL) [N/y/?] n
Enable seccomp to safely execute untrusted bytecode (SECCOMP) [Y/n/?] y
  Show seccomp filter cache status in /proc/pid/seccomp_cache (SECCOMP_CACHE_DEBUG) [N/y/?] n
Stack Protector buffer overflow detection (STACKPROTECTOR) [Y/n/?] y
  Strong Stack Protector (STACKPROTECTOR_STRONG) [Y/n/?] y
Shadow Call Stack (SHADOW_CALL_STACK) [N/y/?] (NEW)
Link Time Optimization (LTO)
> 1. None (LTO_NONE)
choice[1]: 1
Number of bits to use for ASLR of mmap base address (ARCH_MMAP_RND_BITS) [18] 18
Number of bits to use for ASLR of mmap base address for compatible applications (ARCH_MMAP_RND_COMPAT_BITS) [11] 11
Provide system calls for 32-bit time_t (COMPAT_32BIT_TIME) [Y/n/?] y
Use a virtually-mapped stack (VMAP_STACK) [Y/n/?] y
Support for randomizing kernel stack offset on syscall entry (RANDOMIZE_KSTACK_OFFSET) [Y/n/?] y
  Default state of kernel stack offset randomization (RANDOMIZE_KSTACK_OFFSET_DEFAULT) [N/y/?] n
Locking event counts collection (LOCK_EVENT_COUNTS) [N/y/?] n
*
* Memory initialization
*
Initialize kernel stack variables at function entry
> 1. no automatic stack variable initialization (weakest) (INIT_STACK_NONE)
  2. pattern-init everything (strongest) (INIT_STACK_ALL_PATTERN) (NEW)
  3. zero-init everything (strongest and safest) (INIT_STACK_ALL_ZERO) (NEW)
choice[1-3?]:
Enable heap memory zeroing on allocation by default (INIT_ON_ALLOC_DEFAULT_ON) [N/y/?] n
Enable heap memory zeroing on free by default (INIT_ON_FREE_DEFAULT_ON) [N/y/?] n
Enable register zeroing on function exit (ZERO_CALL_USED_REGS) [N/y/?] (NEW)
*
* KCSAN: dynamic data race detector
*
KCSAN: dynamic data race detector (KCSAN) [N/y/?] (NEW)
*
* Kernel Testing and Coverage
*
Notifier error injection (NOTIFIER_ERROR_INJECTION) [N/m/y/?] n
Fault-injection framework (FAULT_INJECTION) [N/y/?] n
Code coverage for fuzzing (KCOV) [N/y/?] (NEW)
Memtest (MEMTEST) [N/y/?] n
  HOSTCC  scripts/dtc/dtc.o
  HOSTCC  scripts/dtc/flattree.o
  HOSTCC  scripts/dtc/fstree.o
  HOSTCC  scripts/dtc/data.o
  HOSTCC  scripts/dtc/livetree.o
  HOSTCC  scripts/dtc/treesource.o
  HOSTCC  scripts/dtc/srcpos.o
  HOSTCC  scripts/dtc/checks.o
  HOSTCC  scripts/dtc/util.o
  HOSTCC  scripts/dtc/dtc-lexer.lex.o
  HOSTCC  scripts/dtc/dtc-parser.tab.o
  HOSTLD  scripts/dtc/dtc
  HOSTCC  scripts/dtc/libfdt/fdt.o
  HOSTCC  scripts/dtc/libfdt/fdt_ro.o
  HOSTCC  scripts/dtc/libfdt/fdt_wip.o
  HOSTCC  scripts/dtc/libfdt/fdt_sw.o
  HOSTCC  scripts/dtc/libfdt/fdt_rw.o
  HOSTCC  scripts/dtc/libfdt/fdt_strerror.o
  HOSTCC  scripts/dtc/libfdt/fdt_empty_tree.o
  HOSTCC  scripts/dtc/libfdt/fdt_addresses.o
  HOSTCC  scripts/dtc/libfdt/fdt_overlay.o
  HOSTCC  scripts/dtc/fdtoverlay.o
  HOSTLD  scripts/dtc/fdtoverlay
  HOSTCC  scripts/selinux/genheaders/genheaders
  HOSTCC  scripts/selinux/mdp/mdp
  HOSTCC  scripts/kallsyms
  HOSTCC  scripts/sorttable
  HOSTCC  scripts/asn1_compiler
  CC      scripts/mod/empty.o
  HOSTCC  scripts/mod/mk_elfconfig
  MKELF   scripts/mod/elfconfig.h
  CC      scripts/mod/devicetable-offsets.s
  HOSTCC  scripts/mod/modpost.o
  HOSTCC  scripts/mod/file2alias.o
  HOSTCC  scripts/mod/sumversion.o
  HOSTLD  scripts/mod/modpost
make: Leaving directory '/usr/src/linux-headers-6.1.70-zynqmp-fpga-generic'
```

#### Install fclkcfg Device Driver and Services Package

```console
root@debian-fpga:~# cd /home/fpga/debian
root@debian-fpga:/home/fpga/debian# dpkg -i fclkcfg-6.1.70-zynqmp-fpga-generic_1.7.3-1_arm64.deb
Selecting previously unselected package fclkcfg-6.1.70-zynqmp-fpga-generic.
(Reading database ... 48233 files and directories currently installed.)
Preparing to unpack fclkcfg-6.1.70-zynqmp-fpga-generic_1.7.3-1_arm64.deb ...
Unpacking fclkcfg-6.1.70-zynqmp-fpga-generic (1.7.3-1) ...
Setting up fclkcfg-6.1.70-zynqmp-fpga-generic (1.7.3-1) ...
```

#### Install u-dma-buf Device Driver and Services Package

```console
root@debian-fpga:~# cd /home/fpga/debian
root@debian-fpga:/home/fpga/debian# dpkg -i u-dma-buf-6.1.70-zynqmp-fpga-generic_4.5.2-0_arm64.deb
Selecting previously unselected package u-dma-buf-6.1.70-zynqmp-fpga-generic.
(Reading database ... 48239 files and directories currently installed.)
Preparing to unpack u-dma-buf-6.1.70-zynqmp-fpga-generic_4.5.2-0_arm64.deb ...
Unpacking u-dma-buf-6.1.70-zynqmp-fpga-generic (4.5.2-0) ...
Setting up u-dma-buf-6.1.70-zynqmp-fpga-generic (4.5.2-0) ...
```

