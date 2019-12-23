Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B2412992F
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 18:14:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 466AC6E2E9;
	Mon, 23 Dec 2019 17:14:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 552 seconds by postgrey-1.36 at gabe;
 Mon, 23 Dec 2019 17:14:53 UTC
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0FC36E2E9
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 17:14:53 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 154101C2453; Mon, 23 Dec 2019 18:05:39 +0100 (CET)
Date: Mon, 23 Dec 2019 18:05:38 +0100
From: Pavel Machek <pavel@ucw.cz>
To: kernel list <linux-kernel@vger.kernel.org>, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 intel-gfx@lists.freedesktop.org
Message-ID: <20191223170537.GA27398@duo.ucw.cz>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-gfx] xorg hang in 5.5-rc1 -- use after free?
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0154359527=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0154359527==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="pf9I7BMVVzbSWLtt"
Content-Disposition: inline


--pf9I7BMVVzbSWLtt
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

I got an X hang and there seems to be something useful in dmesg... Any
ideas?

									Pavel


[    0.000000] Linux version 5.5.0-rc1+ (pavel@amd) (gcc version 4.9.2 (Deb=
ian 4.9.2-10+deb8u2)) #73 SMP PREEMPT Fri Dec 13 00:46:17 CET 2019
[    0.000000] Command line: BOOT_IMAGE=3D(hd1,2)/l/k/o/64/arch/x86/boot/bz=
Image root=3D/dev/sda3 resume=3D/dev/sda1
[    0.000000] Disabled fast string operations
[    0.000000] x86/fpu: Supporting XSAVE feature 0x001: 'x87 floating point=
 registers'
[    0.000000] x86/fpu: Supporting XSAVE feature 0x002: 'SSE registers'
[    0.000000] x86/fpu: Supporting XSAVE feature 0x004: 'AVX registers'
[    0.000000] x86/fpu: xstate_offset[2]:  576, xstate_sizes[2]:  256
[    0.000000] x86/fpu: Enabled xstate features 0x7, context size is 832 by=
tes, using 'standard' format.
[    0.000000] BIOS-provided physical RAM map:
[    0.000000] BIOS-e820: [mem 0x0000000000000000-0x000000000009d7ff] usable
[    0.000000] BIOS-e820: [mem 0x000000000009d800-0x000000000009ffff] reser=
ved
[    0.000000] BIOS-e820: [mem 0x00000000000e0000-0x00000000000fffff] reser=
ved
[    0.000000] BIOS-e820: [mem 0x0000000000100000-0x000000001fffffff] usable
[    0.000000] BIOS-e820: [mem 0x0000000020000000-0x00000000201fffff] reser=
ved
[    0.000000] BIOS-e820: [mem 0x0000000020200000-0x000000003fffffff] usable
[    0.000000] BIOS-e820: [mem 0x0000000040000000-0x00000000401fffff] reser=
ved
[    0.000000] BIOS-e820: [mem 0x0000000040200000-0x00000000da99efff] usable
[    0.000000] BIOS-e820: [mem 0x00000000da99f000-0x00000000dae9efff] reser=
ved
[    0.000000] BIOS-e820: [mem 0x00000000dae9f000-0x00000000daf9efff] ACPI =
NVS
[    0.000000] BIOS-e820: [mem 0x00000000daf9f000-0x00000000daffefff] ACPI =
data
[    0.000000] BIOS-e820: [mem 0x00000000dafff000-0x00000000daffffff] usable
[    0.000000] BIOS-e820: [mem 0x00000000db000000-0x00000000df9fffff] reser=
ved
[    0.000000] BIOS-e820: [mem 0x00000000f8000000-0x00000000fbffffff] reser=
ved
[    0.000000] BIOS-e820: [mem 0x00000000fec00000-0x00000000fec00fff] reser=
ved
[    0.000000] BIOS-e820: [mem 0x00000000fed08000-0x00000000fed08fff] reser=
ved
[    0.000000] BIOS-e820: [mem 0x00000000fed10000-0x00000000fed19fff] reser=
ved
[    0.000000] BIOS-e820: [mem 0x00000000fed1c000-0x00000000fed1ffff] reser=
ved
[    0.000000] BIOS-e820: [mem 0x00000000fee00000-0x00000000fee00fff] reser=
ved
[    0.000000] BIOS-e820: [mem 0x00000000ffd20000-0x00000000ffffffff] reser=
ved
[    0.000000] BIOS-e820: [mem 0x0000000100000000-0x000000019e5fffff] usable
[    0.000000] BIOS-e820: [mem 0x000000019e600000-0x000000019e7fffff] reser=
ved
[    0.000000] NX (Execute Disable) protection: active
[    0.000000] SMBIOS 2.6 present.
[    0.000000] DMI: LENOVO 42872WU/42872WU, BIOS 8DET74WW (1.44 ) 03/13/2018
[    0.000000] tsc: Fast TSC calibration using PIT
[    0.000000] tsc: Detected 2492.091 MHz processor
[    0.001588] e820: update [mem 0x00000000-0x00000fff] usable =3D=3D> rese=
rved
[    0.001591] e820: remove [mem 0x000a0000-0x000fffff] usable
[    0.001599] last_pfn =3D 0x19e600 max_arch_pfn =3D 0x400000000
[    0.001605] MTRR default type: uncachable
[    0.001606] MTRR fixed ranges enabled:
[    0.001608]   00000-9FFFF write-back
[    0.001610]   A0000-BFFFF uncachable
[    0.001611]   C0000-FFFFF write-protect
[    0.001612] MTRR variable ranges enabled:
[    0.001614]   0 base 0FFC00000 mask FFFC00000 write-protect
[    0.001616]   1 base 000000000 mask F80000000 write-back
[    0.001618]   2 base 080000000 mask FC0000000 write-back
[    0.001619]   3 base 0C0000000 mask FE0000000 write-back
[    0.001621]   4 base 0DC000000 mask FFC000000 uncachable
[    0.001622]   5 base 0DB000000 mask FFF000000 uncachable
[    0.001624]   6 base 100000000 mask F80000000 write-back
[    0.001625]   7 base 180000000 mask FE0000000 write-back
[    0.001626]   8 base 19F000000 mask FFF000000 uncachable
[    0.001628]   9 base 19E800000 mask FFF800000 uncachable
[    0.002410] x86/PAT: Configuration [0-7]: WB  WC  UC- UC  WB  WP  UC- WT=
 =20
[    0.003810] last_pfn =3D 0xdb000 max_arch_pfn =3D 0x400000000
[    0.003831] reserving inaccessible SNB gfx pages
[    0.003837] BRK [0x06001000, 0x06001fff] PGTABLE
[    0.003840] BRK [0x06002000, 0x06002fff] PGTABLE
[    0.003842] BRK [0x06003000, 0x06003fff] PGTABLE
[    0.003904] BRK [0x06004000, 0x06004fff] PGTABLE
[    0.004060] BRK [0x06005000, 0x06005fff] PGTABLE
[    0.004332] BRK [0x06006000, 0x06006fff] PGTABLE
[    0.004839] ACPI: Early table checksum verification disabled
[    0.004846] ACPI: RSDP 0x00000000000F00E0 000024 (v02 LENOVO)
[    0.004851] ACPI: XSDT 0x00000000DAFFE120 0000AC (v01 LENOVO TP-8D    00=
001440 PTEC 00000002)
[    0.004858] ACPI: FACP 0x00000000DAFE7000 0000F4 (v04 LENOVO TP-8D    00=
001440 PTL  00000002)
[    0.004865] ACPI: DSDT 0x00000000DAFEA000 00FA89 (v01 LENOVO TP-8D    00=
001440 INTL 20061109)
[    0.004870] ACPI: FACS 0x00000000DAF2D000 000040
[    0.004874] ACPI: FACS 0x00000000DAF2D000 000040
[    0.004877] ACPI: SLIC 0x00000000DAFFD000 000176 (v01 LENOVO TP-8D    00=
001440 PTEC 00000001)
[    0.004882] ACPI: SSDT 0x00000000DAFFC000 000249 (v01 LENOVO TP-SSDT2 00=
000200 INTL 20061109)
[    0.004886] ACPI: SSDT 0x00000000DAFFB000 000033 (v01 LENOVO TP-SSDT1 00=
000100 INTL 20061109)
[    0.004890] ACPI: SSDT 0x00000000DAFFA000 0007D1 (v01 LENOVO SataAhci 00=
001000 INTL 20061109)
[    0.004894] ACPI: HPET 0x00000000DAFE6000 000038 (v01 LENOVO TP-8D    00=
001440 PTL  00000002)
[    0.004898] ACPI: APIC 0x00000000DAFE5000 000098 (v01 LENOVO TP-8D    00=
001440 PTL  00000002)
[    0.004902] ACPI: MCFG 0x00000000DAFE4000 00003C (v01 LENOVO TP-8D    00=
001440 PTL  00000002)
[    0.004907] ACPI: ECDT 0x00000000DAFE3000 000052 (v01 LENOVO TP-8D    00=
001440 PTL  00000002)
[    0.004911] ACPI: ASF! 0x00000000DAFE9000 0000A5 (v32 LENOVO TP-8D    00=
001440 PTL  00000002)
[    0.004915] ACPI: TCPA 0x00000000DAFE2000 000032 (v02 PTL    LENOVO   06=
040000 LNVO 00000001)
[    0.004920] ACPI: SSDT 0x00000000DAFE1000 000A27 (v01 PmRef  Cpu0Ist  00=
003000 INTL 20061109)
[    0.004924] ACPI: SSDT 0x00000000DAFE0000 000996 (v01 PmRef  CpuPm    00=
003000 INTL 20061109)
[    0.004928] ACPI: DMAR 0x00000000DAFDF000 0000E8 (v01 INTEL  SNB      00=
000001 INTL 00000001)
[    0.004932] ACPI: UEFI 0x00000000DAFDE000 00003E (v01 LENOVO TP-8D    00=
001440 PTL  00000002)
[    0.004936] ACPI: UEFI 0x00000000DAFDD000 000042 (v01 PTL    COMBUF   00=
000001 PTL  00000001)
[    0.004941] ACPI: UEFI 0x00000000DAFDC000 000292 (v01 LENOVO TP-8D    00=
001440 PTL  00000002)
[    0.004949] ACPI: Local APIC address 0xfee00000
[    0.004997] Zone ranges:
[    0.004999]   DMA      [mem 0x0000000000001000-0x0000000000ffffff]
[    0.005002]   DMA32    [mem 0x0000000001000000-0x00000000ffffffff]
[    0.005004]   Normal   [mem 0x0000000100000000-0x000000019e5fffff]
[    0.005007] Movable zone start for each node
[    0.005008] Early memory node ranges
[    0.005011]   node   0: [mem 0x0000000000001000-0x000000000009cfff]
[    0.005013]   node   0: [mem 0x0000000000100000-0x000000001fffffff]
[    0.005015]   node   0: [mem 0x0000000020200000-0x000000003fffffff]
[    0.005017]   node   0: [mem 0x0000000040200000-0x00000000da99efff]
[    0.005019]   node   0: [mem 0x00000000dafff000-0x00000000daffffff]
[    0.005021]   node   0: [mem 0x0000000100000000-0x000000019e5fffff]
[    0.005248] Zeroed struct page in unavailable ranges: 23236 pages
[    0.005249] Initmem setup node 0 [mem 0x0000000000001000-0x000000019e5ff=
fff]
[    0.005253] On node 0 totalpages: 1542972
[    0.005255]   DMA zone: 56 pages used for memmap
[    0.005256]   DMA zone: 156 pages reserved
[    0.005258]   DMA zone: 3996 pages, LIFO batch:0
[    0.005302]   DMA32 zone: 12172 pages used for memmap
[    0.005303]   DMA32 zone: 890272 pages, LIFO batch:63
[    0.015357]   Normal zone: 8869 pages used for memmap
[    0.015361]   Normal zone: 648704 pages, LIFO batch:63
[    0.021998] Reserving Intel graphics memory at [mem 0xdba00000-0xdf9ffff=
f]
[    0.022171] ACPI: PM-Timer IO Port: 0x408
[    0.022175] ACPI: Local APIC address 0xfee00000
[    0.022182] ACPI: LAPIC_NMI (acpi_id[0x00] high edge lint[0x1])
[    0.022184] ACPI: LAPIC_NMI (acpi_id[0x01] high edge lint[0x1])
[    0.022200] IOAPIC[0]: apic_id 2, version 32, address 0xfec00000, GSI 0-=
23
[    0.022204] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
[    0.022207] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
[    0.022210] ACPI: IRQ0 used by override.
[    0.022212] ACPI: IRQ9 used by override.
[    0.022216] Using ACPI (MADT) for SMP configuration information
[    0.022219] ACPI: HPET id: 0x8086a301 base: 0xfed00000
[    0.022224] smpboot: Allowing 8 CPUs, 4 hotplug CPUs
[    0.022253] PM: Registered nosave memory: [mem 0x00000000-0x00000fff]
[    0.022256] PM: Registered nosave memory: [mem 0x0009d000-0x0009dfff]
[    0.022258] PM: Registered nosave memory: [mem 0x0009e000-0x0009ffff]
[    0.022260] PM: Registered nosave memory: [mem 0x000a0000-0x000dffff]
[    0.022262] PM: Registered nosave memory: [mem 0x000e0000-0x000fffff]
[    0.022265] PM: Registered nosave memory: [mem 0x20000000-0x201fffff]
[    0.022268] PM: Registered nosave memory: [mem 0x40000000-0x401fffff]
[    0.022271] PM: Registered nosave memory: [mem 0xda99f000-0xdae9efff]
[    0.022273] PM: Registered nosave memory: [mem 0xdae9f000-0xdaf9efff]
[    0.022275] PM: Registered nosave memory: [mem 0xdaf9f000-0xdaffefff]
[    0.022278] PM: Registered nosave memory: [mem 0xdb000000-0xdf9fffff]
[    0.022279] PM: Registered nosave memory: [mem 0xdfa00000-0xf7ffffff]
[    0.022281] PM: Registered nosave memory: [mem 0xf8000000-0xfbffffff]
[    0.022283] PM: Registered nosave memory: [mem 0xfc000000-0xfebfffff]
[    0.022285] PM: Registered nosave memory: [mem 0xfec00000-0xfec00fff]
[    0.022287] PM: Registered nosave memory: [mem 0xfec01000-0xfed07fff]
[    0.022289] PM: Registered nosave memory: [mem 0xfed08000-0xfed08fff]
[    0.022291] PM: Registered nosave memory: [mem 0xfed09000-0xfed0ffff]
[    0.022293] PM: Registered nosave memory: [mem 0xfed10000-0xfed19fff]
[    0.022295] PM: Registered nosave memory: [mem 0xfed1a000-0xfed1bfff]
[    0.022296] PM: Registered nosave memory: [mem 0xfed1c000-0xfed1ffff]
[    0.022298] PM: Registered nosave memory: [mem 0xfed20000-0xfedfffff]
[    0.022300] PM: Registered nosave memory: [mem 0xfee00000-0xfee00fff]
[    0.022302] PM: Registered nosave memory: [mem 0xfee01000-0xffd1ffff]
[    0.022304] PM: Registered nosave memory: [mem 0xffd20000-0xffffffff]
[    0.022308] [mem 0xdfa00000-0xf7ffffff] available for PCI devices
[    0.022312] clocksource: refined-jiffies: mask: 0xffffffff max_cycles: 0=
xffffffff, max_idle_ns: 7645519600211568 ns
[    0.022321] setup_percpu: NR_CPUS:8 nr_cpumask_bits:8 nr_cpu_ids:8 nr_no=
de_ids:1
[    0.024112] percpu: Embedded 61 pages/cpu s212168 r8192 d29496 u262144
[    0.024122] pcpu-alloc: s212168 r8192 d29496 u262144 alloc=3D1*2097152
[    0.024124] pcpu-alloc: [0] 0 1 2 3 4 5 6 7=20
[    0.024151] Built 1 zonelists, mobility grouping on.  Total pages: 15217=
19
[    0.024155] Kernel command line: BOOT_IMAGE=3D(hd1,2)/l/k/o/64/arch/x86/=
boot/bzImage root=3D/dev/sda3 resume=3D/dev/sda1
[    0.028021] Dentry cache hash table entries: 1048576 (order: 11, 8388608=
 bytes, linear)
[    0.029931] Inode-cache hash table entries: 524288 (order: 10, 4194304 b=
ytes, linear)
[    0.030027] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.291609] Memory: 5970156K/6171888K available (16388K kernel code, 115=
0K rwdata, 5668K rodata, 1076K init, 5768K bss, 201732K reserved, 0K cma-re=
served)
[    0.291634] random: get_random_u32 called from cache_alloc_refill+0x784/=
0xca0 with crng_init=3D0
[    0.292248] Kernel/User page tables isolation: enabled
[    0.292432] rcu: Preemptible hierarchical RCU implementation.
[    0.292434] 	Tasks RCU enabled.
[    0.292437] rcu: RCU calculated value of scheduler-enlistment delay is 2=
5 jiffies.
[    0.292466] NR_IRQS: 4352, nr_irqs: 104, preallocated irqs: 16
[    0.294452] Console: colour VGA+ 80x25
[    0.303297] printk: console [tty0] enabled
[    0.303356] Lock dependency validator: Copyright (c) 2006 Red Hat, Inc.,=
 Ingo Molnar
[    0.303429] ... MAX_LOCKDEP_SUBCLASSES:  8
[    0.303488] ... MAX_LOCK_DEPTH:          48
[    0.303548] ... MAX_LOCKDEP_KEYS:        8192
[    0.303608] ... CLASSHASH_SIZE:          4096
[    0.303668] ... MAX_LOCKDEP_ENTRIES:     32768
[    0.303728] ... MAX_LOCKDEP_CHAINS:      65536
[    0.303789] ... CHAINHASH_SIZE:          32768
[    0.303850]  memory used by lock dependency info: 3509 kB
[    0.303914]  per task-struct memory footprint: 1920 bytes
[    0.303984] ACPI: Core revision 20191018
[    0.304329] clocksource: hpet: mask: 0xffffffff max_cycles: 0xffffffff, =
max_idle_ns: 133484882848 ns
[    0.304439] APIC: Switch to symmetric I/O mode setup
[    0.304957] ..TIMER: vector=3D0x30 apic1=3D0 pin1=3D2 apic2=3D-1 pin2=3D=
-1
[    0.324437] clocksource: tsc-early: mask: 0xffffffffffffffff max_cycles:=
 0x23ec0a82ecd, max_idle_ns: 440795233939 ns
[    0.324535] Calibrating delay loop (skipped), value calculated using tim=
er frequency.. 4984.18 BogoMIPS (lpj=3D9968364)
[    0.324632] pid_max: default: 32768 minimum: 301
[    0.324850] Mount-cache hash table entries: 16384 (order: 5, 131072 byte=
s, linear)
[    0.324940] Mountpoint-cache hash table entries: 16384 (order: 5, 131072=
 bytes, linear)
[    0.325067] *** VALIDATE tmpfs ***
[    0.325426] *** VALIDATE proc ***
[    0.325541] *** VALIDATE cgroup1 ***
[    0.325600] *** VALIDATE cgroup2 ***
[    0.325690] Disabled fast string operations
[    0.325761] process: using mwait in idle threads
[    0.325824] Last level iTLB entries: 4KB 512, 2MB 8, 4MB 8
[    0.325890] Last level dTLB entries: 4KB 512, 2MB 32, 4MB 32, 1GB 0
[    0.325959] Spectre V1 : Mitigation: usercopy/swapgs barriers and __user=
 pointer sanitization
[    0.326048] Spectre V2 : Mitigation: Full generic retpoline
[    0.326113] Spectre V2 : Spectre v2 / SpectreRSB mitigation: Filling RSB=
 on context switch
[    0.326188] Spectre V2 : Enabling Restricted Speculation for firmware ca=
lls
[    0.326259] Spectre V2 : mitigation: Enabling conditional Indirect Branc=
h Prediction Barrier
[    0.326335] Spectre V2 : User space: Mitigation: STIBP via prctl
[    0.326402] Speculative Store Bypass: Vulnerable
[    0.326950] MDS: Vulnerable: Clear CPU buffers attempted, no microcode
[    0.327183] Freeing SMP alternatives memory: 48K
[    0.328313] TSC deadline timer enabled
[    0.328318] smpboot: CPU0: Intel(R) Core(TM) i5-2520M CPU @ 2.50GHz (fam=
ily: 0x6, model: 0x2a, stepping: 0x7)
[    0.348601] Performance Events: PEBS fmt1+, SandyBridge events, 16-deep =
LBR, full-width counters, Intel PMU driver.
[    0.348730] ... version:                3
[    0.348790] ... bit width:              48
[    0.348851] ... generic registers:      4
[    0.348911] ... value mask:             0000ffffffffffff
[    0.348975] ... max period:             00007fffffffffff
[    0.349040] ... fixed-purpose events:   3
[    0.349100] ... event mask:             000000070000000f
[    0.356555] rcu: Hierarchical SRCU implementation.
[    0.368875] NMI watchdog: Enabled. Permanently consumes one hw-PMU count=
er.
[    0.376581] smp: Bringing up secondary CPUs ...
[    0.408985] x86: Booting SMP configuration:
[    0.409051] .... node  #0, CPUs:      #1
[    0.015829] Disabled fast string operations
[    0.411388] MDS CPU bug present and SMT on, data leak possible. See http=
s://www.kernel.org/doc/html/latest/admin-guide/hw-vuln/mds.html for more de=
tails.
[    0.440911]  #2
[    0.015829] Disabled fast string operations
[    0.472977]  #3
[    0.015829] Disabled fast string operations
[    0.475274] smp: Brought up 1 node, 4 CPUs
[    0.475274] smpboot: Max logical packages: 2
[    0.475274] smpboot: Total of 4 processors activated (19936.72 BogoMIPS)
[    0.476877] devtmpfs: initialized
[    0.477072] PM: Registering ACPI NVS region [mem 0xdae9f000-0xdaf9efff] =
(1048576 bytes)
[    0.477474] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xfffffff=
f, max_idle_ns: 7645041785100000 ns
[    0.477474] futex hash table entries: 2048 (order: 6, 262144 bytes, line=
ar)
[    0.477474] thermal_sys: Registered thermal governor 'step_wise'
[    0.477474] NET: Registered protocol family 16
[    0.478288] cpuidle: using governor ladder
[    0.478370] cpuidle: using governor menu
[    0.478497] ACPI FADT declares the system doesn't support PCIe ASPM, so =
disable it
[    0.478571] ACPI: bus type PCI registered
[    0.478936] PCI: MMCONFIG for domain 0000 [bus 00-3f] at [mem 0xf8000000=
-0xfbffffff] (base 0xf8000000)
[    0.480562] PCI: MMCONFIG at [mem 0xf8000000-0xfbffffff] reserved in E820
[    0.480642] PCI: Using configuration type 1 for base access
[    0.480742] core: PMU erratum BJ122, BV98, HSD29 worked around, HT is on
[    0.481096] ENERGY_PERF_BIAS: Set to 'normal', was 'performance'
[    0.511986] ACPI: Added _OSI(Module Device)
[    0.511986] ACPI: Added _OSI(Processor Device)
[    0.511986] ACPI: Added _OSI(3.0 _SCP Extensions)
[    0.511986] ACPI: Added _OSI(Processor Aggregator Device)
[    0.511986] ACPI: Added _OSI(Linux-Dell-Video)
[    0.511986] ACPI: Added _OSI(Linux-Lenovo-NV-HDMI-Audio)
[    0.511986] ACPI: Added _OSI(Linux-HPI-Hybrid-Graphics)
[    0.553458] ACPI: 6 ACPI AML tables successfully acquired and loaded
[    0.556108] ACPI: EC: EC started
[    0.556167] ACPI: EC: interrupt blocked
[    0.558840] ACPI: \: Used as first EC
[    0.558902] ACPI: \: GPE=3D0x11, IRQ=3D-1, EC_CMD/EC_SC=3D0x66, EC_DATA=
=3D0x62
[    0.558972] ACPI: EC: Boot ECDT EC used to handle transactions
[    0.559619] ACPI: [Firmware Bug]: BIOS _OSI(Linux) query ignored
[    0.570259] ACPI: Dynamic OEM Table Load:
[    0.570333] ACPI: SSDT 0xFFFF888197304000 0008C0 (v01 PmRef  Cpu0Cst  00=
003001 INTL 20061109)
[    0.573154] ACPI: Dynamic OEM Table Load:
[    0.573225] ACPI: SSDT 0xFFFF888197F52000 000303 (v01 PmRef  ApIst    00=
003000 INTL 20061109)
[    0.575509] ACPI: Dynamic OEM Table Load:
[    0.575580] ACPI: SSDT 0xFFFF888197E96200 000119 (v01 PmRef  ApCst    00=
003000 INTL 20061109)
[    0.579522] ACPI: Interpreter enabled
[    0.579628] ACPI: (supports S0 S3 S4 S5)
[    0.579691] ACPI: Using IOAPIC for interrupt routing
[    0.579833] PCI: Using host bridge windows from ACPI; if necessary, use =
"pci=3Dnocrs" and report a bug
[    0.580687] ACPI: Enabled 6 GPEs in block 00 to 3F
[    0.594036] ACPI: Power Resource [PUBS] (on)
[    0.594750] acpi PNP0C0A:01: ACPI dock station (docks/bays count: 1)
[    0.599589] acpi LNXIOBAY:00: ACPI dock station (docks/bays count: 2)
[    0.606613] acpi IBM0079:00: ACPI dock station (docks/bays count: 3)
[    0.608651] ACPI: PCI Interrupt Link [LNKA] (IRQs 3 4 5 6 7 9 10 *11)
[    0.609095] ACPI: PCI Interrupt Link [LNKB] (IRQs 3 4 5 6 7 9 10 *11)
[    0.609536] ACPI: PCI Interrupt Link [LNKC] (IRQs 3 4 5 6 7 9 10 *11)
[    0.609975] ACPI: PCI Interrupt Link [LNKD] (IRQs 3 4 5 6 7 9 *10 11)
[    0.610414] ACPI: PCI Interrupt Link [LNKE] (IRQs 3 4 5 6 *7 9 10 11)
[    0.610755] ACPI: PCI Interrupt Link [LNKF] (IRQs 3 4 5 6 7 9 10 11) *0,=
 disabled.
[    0.611199] ACPI: PCI Interrupt Link [LNKG] (IRQs 3 4 5 6 *7 9 10 11)
[    0.611637] ACPI: PCI Interrupt Link [LNKH] (IRQs 3 4 5 6 7 9 *10 11)
[    0.612607] ACPI: PCI Root Bridge [PCI0] (domain 0000 [bus 00-fe])
[    0.612607] acpi PNP0A08:00: _OSC: OS supports [ExtendedConfig ASPM Cloc=
kPM Segments HPX-Type3]
[    0.612648] acpi PNP0A08:00: _OSC: not requesting OS control; OS require=
s [ExtendedConfig ASPM ClockPM MSI]
[    0.612752] acpi PNP0A08:00: [Firmware Info]: MMCONFIG for domain 0000 [=
bus 00-3f] only partially covers this bridge
[    0.612994] PCI host bridge to bus 0000:00
[    0.613066] pci_bus 0000:00: root bus resource [io  0x0000-0x0cf7 window]
[    0.613140] pci_bus 0000:00: root bus resource [io  0x0d00-0xffff window]
[    0.613213] pci_bus 0000:00: root bus resource [mem 0x000a0000-0x000bfff=
f window]
[    0.613289] pci_bus 0000:00: root bus resource [mem 0xdfa00000-0xfebffff=
f window]
[    0.613364] pci_bus 0000:00: root bus resource [mem 0xfed40000-0xfed4bff=
f window]
[    0.613441] pci_bus 0000:00: root bus resource [bus 00-fe]
[    0.613536] pci 0000:00:00.0: [8086:0104] type 00 class 0x060000
[    0.613853] pci 0000:00:02.0: [8086:0126] type 00 class 0x030000
[    0.613942] pci 0000:00:02.0: reg 0x10: [mem 0xf0000000-0xf03fffff 64bit]
[    0.614021] pci 0000:00:02.0: reg 0x18: [mem 0xe0000000-0xefffffff 64bit=
 pref]
[    0.614099] pci 0000:00:02.0: reg 0x20: [io  0x5000-0x503f]
[    0.614546] pci 0000:00:16.0: [8086:1c3a] type 00 class 0x078000
[    0.614649] pci 0000:00:16.0: reg 0x10: [mem 0xf2525000-0xf252500f 64bit]
[    0.614822] pci 0000:00:16.0: PME# supported from D0 D3hot D3cold
[    0.615133] pci 0000:00:19.0: [8086:1502] type 00 class 0x020000
[    0.615231] pci 0000:00:19.0: reg 0x10: [mem 0xf2500000-0xf251ffff]
[    0.615311] pci 0000:00:19.0: reg 0x14: [mem 0xf252b000-0xf252bfff]
[    0.615389] pci 0000:00:19.0: reg 0x18: [io  0x5080-0x509f]
[    0.615544] pci 0000:00:19.0: PME# supported from D0 D3hot D3cold
[    0.615934] pci 0000:00:1a.0: [8086:1c2d] type 00 class 0x0c0320
[    0.616037] pci 0000:00:1a.0: reg 0x10: [mem 0xf252a000-0xf252a3ff]
[    0.616223] pci 0000:00:1a.0: PME# supported from D0 D3hot D3cold
[    0.616625] pci 0000:00:1b.0: [8086:1c20] type 00 class 0x040300
[    0.616729] pci 0000:00:1b.0: reg 0x10: [mem 0xf2520000-0xf2523fff 64bit]
[    0.616925] pci 0000:00:1b.0: PME# supported from D0 D3hot D3cold
[    0.617317] pci 0000:00:1c.0: [8086:1c10] type 01 class 0x060400
[    0.617548] pci 0000:00:1c.0: PME# supported from D0 D3hot D3cold
[    0.617961] pci 0000:00:1c.1: [8086:1c12] type 01 class 0x060400
[    0.618202] pci 0000:00:1c.1: PME# supported from D0 D3hot D3cold
[    0.618610] pci 0000:00:1c.3: [8086:1c16] type 01 class 0x060400
[    0.618851] pci 0000:00:1c.3: PME# supported from D0 D3hot D3cold
[    0.619263] pci 0000:00:1c.4: [8086:1c18] type 01 class 0x060400
[    0.619502] pci 0000:00:1c.4: PME# supported from D0 D3hot D3cold
[    0.619916] pci 0000:00:1d.0: [8086:1c26] type 00 class 0x0c0320
[    0.620019] pci 0000:00:1d.0: reg 0x10: [mem 0xf2529000-0xf25293ff]
[    0.620200] pci 0000:00:1d.0: PME# supported from D0 D3hot D3cold
[    0.620605] pci 0000:00:1f.0: [8086:1c4f] type 00 class 0x060100
[    0.621111] pci 0000:00:1f.2: [8086:1c03] type 00 class 0x010601
[    0.621213] pci 0000:00:1f.2: reg 0x10: [io  0x50a8-0x50af]
[    0.621292] pci 0000:00:1f.2: reg 0x14: [io  0x50bc-0x50bf]
[    0.621369] pci 0000:00:1f.2: reg 0x18: [io  0x50a0-0x50a7]
[    0.621446] pci 0000:00:1f.2: reg 0x1c: [io  0x50b8-0x50bb]
[    0.621523] pci 0000:00:1f.2: reg 0x20: [io  0x5060-0x507f]
[    0.621601] pci 0000:00:1f.2: reg 0x24: [mem 0xf2528000-0xf25287ff]
[    0.621737] pci 0000:00:1f.2: PME# supported from D3hot
[    0.622117] pci 0000:00:1f.3: [8086:1c22] type 00 class 0x0c0500
[    0.622222] pci 0000:00:1f.3: reg 0x10: [mem 0xf2524000-0xf25240ff 64bit]
[    0.622323] pci 0000:00:1f.3: reg 0x20: [io  0xefa0-0xefbf]
[    0.622809] pci 0000:00:1c.0: PCI bridge to [bus 02]
[    0.623272] pci 0000:03:00.0: [8086:0084] type 00 class 0x028000
[    0.623620] pci 0000:03:00.0: reg 0x10: [mem 0xf2400000-0xf2401fff 64bit]
[    0.624893] pci 0000:03:00.0: PME# supported from D0 D3hot D3cold
[    0.625766] pci 0000:00:1c.1: PCI bridge to [bus 03]
[    0.625840] pci 0000:00:1c.1:   bridge window [mem 0xf2400000-0xf24fffff]
[    0.626026] pci 0000:00:1c.3: PCI bridge to [bus 05-0c]
[    0.626106] pci 0000:00:1c.3:   bridge window [io  0x4000-0x4fff]
[    0.626180] pci 0000:00:1c.3:   bridge window [mem 0xf1c00000-0xf23fffff]
[    0.626260] pci 0000:00:1c.3:   bridge window [mem 0xf0400000-0xf0bfffff=
 64bit pref]
[    0.626576] pci 0000:0d:00.0: [1180:e822] type 00 class 0x088001
[    0.626853] pci 0000:0d:00.0: MMC controller base frequency changed to 5=
0Mhz.
[    0.627138] pci 0000:0d:00.0: reg 0x10: [mem 0xf1400000-0xf14000ff]
[    0.627664] pci 0000:0d:00.0: supports D1 D2
[    0.627727] pci 0000:0d:00.0: PME# supported from D0 D1 D2 D3hot D3cold
[    0.628599] pci 0000:00:1c.4: PCI bridge to [bus 0d]
[    0.628599] pci 0000:00:1c.4:   bridge window [io  0x3000-0x3fff]
[    0.628599] pci 0000:00:1c.4:   bridge window [mem 0xf1400000-0xf1bfffff]
[    0.628599] pci 0000:00:1c.4:   bridge window [mem 0xf0c00000-0xf13fffff=
 64bit pref]
[    0.628667] pci_bus 0000:00: on NUMA node 0
[    0.632541] ACPI: EC: interrupt unblocked
[    0.632541] ACPI: EC: event unblocked
[    0.632541] ACPI: \_SB_.PCI0.LPC_.EC__: GPE=3D0x11, IRQ=3D-1, EC_CMD/EC_=
SC=3D0x66, EC_DATA=3D0x62
[    0.632541] ACPI: \_SB_.PCI0.LPC_.EC__: Boot DSDT EC used to handle tran=
sactions and events
[    0.632705] pci 0000:00:02.0: vgaarb: setting as boot VGA device
[    0.632705] pci 0000:00:02.0: vgaarb: VGA device added: decodes=3Dio+mem=
,owns=3Dio+mem,locks=3Dnone
[    0.632740] pci 0000:00:02.0: vgaarb: bridge control possible
[    0.632807] vgaarb: loaded
[    0.633196] SCSI subsystem initialized
[    0.633300] libata version 3.00 loaded.
[    0.633300] ACPI: bus type USB registered
[    0.633300] usbcore: registered new interface driver usbfs
[    0.633300] usbcore: registered new interface driver hub
[    0.633300] usbcore: registered new device driver usb
[    0.633336] mc: Linux media interface: v0.10
[    0.633431] videodev: Linux video capture interface: v2.00
[    0.633529] pps_core: LinuxPPS API ver. 1 registered
[    0.633601] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo =
Giometti <giometti@linux.it>
[    0.634197] PTP clock support registered
[    0.634354] EDAC MC: Ver: 3.0.0
[    0.636859] Advanced Linux Sound Architecture Driver Initialized.
[    0.637018] PCI: Using ACPI for IRQ routing
[    0.638364] PCI: pci_cache_line_size set to 64 bytes
[    0.638855] e820: reserve RAM buffer [mem 0x0009d800-0x0009ffff]
[    0.638858] e820: reserve RAM buffer [mem 0xda99f000-0xdbffffff]
[    0.638861] e820: reserve RAM buffer [mem 0xdb000000-0xdbffffff]
[    0.638863] e820: reserve RAM buffer [mem 0x19e600000-0x19fffffff]
[    0.639273] Bluetooth: Core ver 2.22
[    0.639365] NET: Registered protocol family 31
[    0.639427] Bluetooth: HCI device and connection manager initialized
[    0.639501] Bluetooth: HCI socket layer initialized
[    0.639567] Bluetooth: L2CAP socket layer initialized
[    0.639642] Bluetooth: SCO socket layer initialized
[    0.640661] clocksource: Switched to clocksource tsc-early
[    0.641120] *** VALIDATE ramfs ***
[    0.641240] pnp: PnP ACPI init
[    0.642714] system 00:00: [mem 0x00000000-0x0009ffff] could not be reser=
ved
[    0.642791] system 00:00: [mem 0x000c0000-0x000c3fff] could not be reser=
ved
[    0.642867] system 00:00: [mem 0x000c4000-0x000c7fff] could not be reser=
ved
[    0.642941] system 00:00: [mem 0x000c8000-0x000cbfff] has been reserved
[    0.643014] system 00:00: [mem 0x000cc000-0x000cffff] has been reserved
[    0.643087] system 00:00: [mem 0x000d0000-0x000d3fff] has been reserved
[    0.643160] system 00:00: [mem 0x000d4000-0x000d7fff] has been reserved
[    0.643233] system 00:00: [mem 0x000d8000-0x000dbfff] has been reserved
[    0.643306] system 00:00: [mem 0x000dc000-0x000dffff] has been reserved
[    0.643380] system 00:00: [mem 0x000e0000-0x000e3fff] could not be reser=
ved
[    0.643454] system 00:00: [mem 0x000e4000-0x000e7fff] could not be reser=
ved
[    0.643529] system 00:00: [mem 0x000e8000-0x000ebfff] could not be reser=
ved
[    0.643604] system 00:00: [mem 0x000ec000-0x000effff] could not be reser=
ved
[    0.643679] system 00:00: [mem 0x000f0000-0x000fffff] could not be reser=
ved
[    0.643754] system 00:00: [mem 0x00100000-0xdf9fffff] could not be reser=
ved
[    0.643829] system 00:00: [mem 0xfec00000-0xfed3ffff] could not be reser=
ved
[    0.643904] system 00:00: [mem 0xfed4c000-0xffffffff] could not be reser=
ved
[    0.644001] system 00:00: Plug and Play ACPI device, IDs PNP0c01 (active)
[    0.644292] system 00:01: [io  0x0400-0x047f] has been reserved
[    0.644364] system 00:01: [io  0x0500-0x057f] has been reserved
[    0.644434] system 00:01: [io  0x0800-0x080f] has been reserved
[    0.644505] system 00:01: [io  0x15e0-0x15ef] has been reserved
[    0.644586] system 00:01: [io  0x1600-0x167f] has been reserved
[    0.644658] system 00:01: [mem 0xf8000000-0xfbffffff] has been reserved
[    0.644732] system 00:01: [mem 0x00000000-0x00000fff] could not be reser=
ved
[    0.644806] system 00:01: [mem 0xfed1c000-0xfed1ffff] has been reserved
[    0.644879] system 00:01: [mem 0xfed10000-0xfed13fff] has been reserved
[    0.644953] system 00:01: [mem 0xfed18000-0xfed18fff] has been reserved
[    0.645026] system 00:01: [mem 0xfed19000-0xfed19fff] has been reserved
[    0.645099] system 00:01: [mem 0xfed45000-0xfed4bfff] has been reserved
[    0.645189] system 00:01: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.645347] pnp 00:02: Plug and Play ACPI device, IDs PNP0b00 (active)
[    0.645416] pnp 00:03: Plug and Play ACPI device, IDs PNP0303 (active)
[    0.645486] pnp 00:04: Plug and Play ACPI device, IDs LEN0020 PNP0f13 (a=
ctive)
[    0.645639] pnp 00:05: Plug and Play ACPI device, IDs SMO1200 PNP0c31 (a=
ctive)
[    0.646872] pnp: PnP ACPI: found 6 devices
[    0.657625] clocksource: acpi_pm: mask: 0xffffff max_cycles: 0xffffff, m=
ax_idle_ns: 2085701024 ns
[    0.657728] pci 0000:00:1c.0: bridge window [io  0x1000-0x0fff] to [bus =
02] add_size 1000
[    0.657806] pci 0000:00:1c.0: bridge window [mem 0x00100000-0x000fffff 6=
4bit pref] to [bus 02] add_size 200000 add_align 100000
[    0.657906] pci 0000:00:1c.0: bridge window [mem 0x00100000-0x000fffff] =
to [bus 02] add_size 200000 add_align 100000
[    0.658013] pci 0000:00:1c.0: BAR 8: assigned [mem 0xdfa00000-0xdfbfffff]
[    0.658088] pci 0000:00:1c.0: BAR 9: assigned [mem 0xdfc00000-0xdfdfffff=
 64bit pref]
[    0.658164] pci 0000:00:1c.0: BAR 7: assigned [io  0x2000-0x2fff]
[    0.658236] pci 0000:00:1c.0: PCI bridge to [bus 02]
[    0.658303] pci 0000:00:1c.0:   bridge window [io  0x2000-0x2fff]
[    0.658377] pci 0000:00:1c.0:   bridge window [mem 0xdfa00000-0xdfbfffff]
[    0.658452] pci 0000:00:1c.0:   bridge window [mem 0xdfc00000-0xdfdfffff=
 64bit pref]
[    0.658533] pci 0000:00:1c.1: PCI bridge to [bus 03]
[    0.658603] pci 0000:00:1c.1:   bridge window [mem 0xf2400000-0xf24fffff]
[    0.658685] pci 0000:00:1c.3: PCI bridge to [bus 05-0c]
[    0.658752] pci 0000:00:1c.3:   bridge window [io  0x4000-0x4fff]
[    0.658825] pci 0000:00:1c.3:   bridge window [mem 0xf1c00000-0xf23fffff]
[    0.658900] pci 0000:00:1c.3:   bridge window [mem 0xf0400000-0xf0bfffff=
 64bit pref]
[    0.658981] pci 0000:00:1c.4: PCI bridge to [bus 0d]
[    0.659047] pci 0000:00:1c.4:   bridge window [io  0x3000-0x3fff]
[    0.659121] pci 0000:00:1c.4:   bridge window [mem 0xf1400000-0xf1bfffff]
[    0.659195] pci 0000:00:1c.4:   bridge window [mem 0xf0c00000-0xf13fffff=
 64bit pref]
[    0.659278] pci_bus 0000:00: resource 4 [io  0x0000-0x0cf7 window]
[    0.659346] pci_bus 0000:00: resource 5 [io  0x0d00-0xffff window]
[    0.659414] pci_bus 0000:00: resource 6 [mem 0x000a0000-0x000bffff windo=
w]
[    0.659485] pci_bus 0000:00: resource 7 [mem 0xdfa00000-0xfebfffff windo=
w]
[    0.659556] pci_bus 0000:00: resource 8 [mem 0xfed40000-0xfed4bfff windo=
w]
[    0.659627] pci_bus 0000:02: resource 0 [io  0x2000-0x2fff]
[    0.659693] pci_bus 0000:02: resource 1 [mem 0xdfa00000-0xdfbfffff]
[    0.659762] pci_bus 0000:02: resource 2 [mem 0xdfc00000-0xdfdfffff 64bit=
 pref]
[    0.659834] pci_bus 0000:03: resource 1 [mem 0xf2400000-0xf24fffff]
[    0.659903] pci_bus 0000:05: resource 0 [io  0x4000-0x4fff]
[    0.659969] pci_bus 0000:05: resource 1 [mem 0xf1c00000-0xf23fffff]
[    0.660038] pci_bus 0000:05: resource 2 [mem 0xf0400000-0xf0bfffff 64bit=
 pref]
[    0.660110] pci_bus 0000:0d: resource 0 [io  0x3000-0x3fff]
[    0.660176] pci_bus 0000:0d: resource 1 [mem 0xf1400000-0xf1bfffff]
[    0.660245] pci_bus 0000:0d: resource 2 [mem 0xf0c00000-0xf13fffff 64bit=
 pref]
[    0.660605] NET: Registered protocol family 2
[    0.661023] tcp_listen_portaddr_hash hash table entries: 4096 (order: 6,=
 294912 bytes, linear)
[    0.661256] TCP established hash table entries: 65536 (order: 7, 524288 =
bytes, linear)
[    0.661431] TCP bind hash table entries: 65536 (order: 10, 4194304 bytes=
, linear)
[    0.663547] TCP: Hash tables configured (established 65536 bind 65536)
[    0.663962] UDP hash table entries: 4096 (order: 7, 655360 bytes, linear)
[    0.664335] UDP-Lite hash table entries: 4096 (order: 7, 655360 bytes, l=
inear)
[    0.664813] NET: Registered protocol family 1
[    0.665235] RPC: Registered named UNIX socket transport module.
[    0.665305] RPC: Registered udp transport module.
[    0.665369] RPC: Registered tcp transport module.
[    0.665434] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.665798] pci 0000:00:02.0: Video device with shadowed ROM at [mem 0x0=
00c0000-0x000dffff]
[    0.666997] PCI: CLS 64 bytes, default 64
[    0.667120] PCI-DMA: Using software bounce buffering for IO (SWIOTLB)
[    0.667191] software IO TLB: mapped [mem 0xd699f000-0xda99f000] (64MB)
[    0.670924] Initialise system trusted keyrings
[    0.671088] workingset: timestamp_bits=3D62 max_order=3D21 bucket_order=
=3D0
[    0.672531] Installing knfsd (copyright (C) 1996 okir@monad.swb.de).
[    0.673353] ntfs: driver 2.1.32 [Flags: R/W].
[    0.673546] fuse: init (API version 7.31)
[    0.673620] *** VALIDATE fuse ***
[    0.673679] *** VALIDATE fuse ***
[    0.678523] Key type asymmetric registered
[    0.678590] Asymmetric key parser 'x509' registered
[    0.678679] Block layer SCSI generic (bsg) driver version 0.4 loaded (ma=
jor 249)
[    0.678756] io scheduler mq-deadline registered
[    0.678842] io scheduler bfq registered
[    0.679089] pcieport 0000:00:1c.0: enabling device (0000 -> 0003)
[    0.680749] intel_idle: MWAIT substates: 0x21120
[    0.680751] intel_idle: v0.4.1 model 0x2A
[    0.681546] intel_idle: lapic_timer_reliable_states 0xffffffff
[    0.681965] ACPI: Deprecated procfs I/F for AC is loaded, please retry w=
ith CONFIG_ACPI_PROCFS_POWER cleared
[    0.682338] ACPI: AC Adapter [AC] (on-line)
[    0.682606] input: Lid Switch as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0=
D:00/input/input0
[    0.688762] ACPI: Lid Switch [LID]
[    0.688995] input: Sleep Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0=
C0E:00/input/input1
[    0.692630] ACPI: Sleep Button [SLPB]
[    0.692888] input: Power Button as /devices/LNXSYSTM:00/LNXPWRBN:00/inpu=
t/input2
[    0.696746] ACPI: Power Button [PWRF]
[    0.700363] thermal LNXTHERM:00: registered as thermal_zone0
[    0.700434] ACPI: Thermal Zone [THM0] (44 C)
[    0.701007] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
[    0.701082] battery: ACPI: Deprecated procfs I/F for battery is loaded, =
please retry with CONFIG_ACPI_PROCFS_POWER cleared
[    0.701208] battery: ACPI: Battery Slot [BAT0] (battery absent)
[    0.702325] lp: driver loaded but no devices found
[    0.702473] Non-volatile memory driver v1.3
[    0.702721] Linux agpgart interface v0.103
[    0.703071] [drm] radeon kernel modesetting enabled.
[    0.704054] i915 0000:00:02.0: vgaarb: deactivate vga console
[    0.704654] Console: switching to colour dummy device 80x25
[    0.716557] [drm] Supports vblank timestamp caching Rev 2 (21.10.2013).
[    0.716577] [drm] Driver supports precise vblank timestamp query.
[    0.717590] i915 0000:00:02.0: vgaarb: changed VGA decodes: olddecodes=
=3Dio+mem,decodes=3Dio+mem:owns=3Dio+mem
[    0.813566] [drm] Initialized i915 1.6.0 20191101 for 0000:00:02.0 on mi=
nor 0
[    0.815603] ACPI: Video Device [VID] (multi-head: yes  rom: no  post: no)
[    0.816228] input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08=
:00/LNXVIDEO:00/input/input3
[    0.816646] usbcore: registered new interface driver udl
[    0.827362] loop: module loaded
[    0.889695] ahci 0000:00:1f.2: version 3.0
[    0.890330] ahci 0000:00:1f.2: SSS flag set, parallel bus scan disabled
[    0.900716] ahci 0000:00:1f.2: AHCI 0001.0300 32 slots 6 ports 6 Gbps 0x=
17 impl SATA mode
[    0.900750] ahci 0000:00:1f.2: flags: 64bit ncq sntf ilck stag pm led cl=
o pio slum part ems sxs apst=20
[    0.939225] scsi host0: ahci
[    0.939638] scsi host1: ahci
[    0.940014] scsi host2: ahci
[    0.940326] scsi host3: ahci
[    0.940644] scsi host4: ahci
[    0.940973] scsi host5: ahci
[    0.941184] ata1: SATA max UDMA/133 abar m2048@0xf2528000 port 0xf252810=
0 irq 19
[    0.941217] ata2: SATA max UDMA/133 abar m2048@0xf2528000 port 0xf252818=
0 irq 19
[    0.941237] ata3: SATA max UDMA/133 abar m2048@0xf2528000 port 0xf252820=
0 irq 19
[    0.941255] ata4: DUMMY
[    0.941263] ata5: SATA max UDMA/133 abar m2048@0xf2528000 port 0xf252830=
0 irq 19
[    0.941281] ata6: DUMMY
[    0.942300] tun: Universal TUN/TAP device driver, 1.6
[    0.942609] e1000e: Intel(R) PRO/1000 Network Driver - 3.2.6-k
[    0.942629] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
[    0.943079] e1000e 0000:00:19.0: Interrupt Throttling Rate (ints/sec) se=
t to dynamic conservative mode
[    1.039987] e1000e 0000:00:19.0 0000:00:19.0 (uninitialized): registered=
 PHC clock
[    1.102175] fbcon: i915drmfb (fb0) is primary device
[    1.133486] e1000e 0000:00:19.0 eth0: (PCI Express:2.5GT/s:Width x1) f0:=
de:f1:e3:99:75
[    1.133503] e1000e 0000:00:19.0 eth0: Intel(R) PRO/1000 Network Connecti=
on
[    1.133553] e1000e 0000:00:19.0 eth0: MAC: 10, PHY: 11, PBA No: 1000FF-0=
FF
[    1.133724] PPP generic driver version 2.4.2
[    1.133898] PPP BSD Compression module registered
[    1.133900] PPP Deflate Compression module registered
[    1.133901] SLIP: version 0.8.4-NET3.019-NEWTTY (dynamic channels, max=
=3D256).
[    1.133902] CSLIP: code copyright 1989 Regents of the University of Cali=
fornia.
[    1.133948] iwl3945: Intel(R) PRO/Wireless 3945ABG/BG Network Connection=
 driver for Linux, in-tree:ds
[    1.133949] iwl3945: Copyright(c) 2003-2011 Intel Corporation
[    1.133950] iwl3945: hw_scan is disabled
[    1.133986] Intel(R) Wireless WiFi driver for Linux
[    1.133986] Copyright(c) 2003- 2015 Intel Corporation
[    1.134511] iwlwifi 0000:03:00.0: pci_enable_msi failed - -38
[    1.134861] iwlwifi 0000:03:00.0: loaded firmware version 39.31.5.1 buil=
d 35138 op_mode iwldvm
[    1.135108] iwlwifi 0000:03:00.0: CONFIG_IWLWIFI_DEBUG disabled
[    1.135111] iwlwifi 0000:03:00.0: CONFIG_IWLWIFI_DEBUGFS disabled
[    1.135113] iwlwifi 0000:03:00.0: CONFIG_IWLWIFI_DEVICE_TRACING disabled
[    1.135118] iwlwifi 0000:03:00.0: Detected Intel(R) Centrino(R) Wireless=
-N 1000 BGN, REV=3D0x6C
[    1.177249] ieee80211 phy0: Selected rate control algorithm 'iwl-agn-rs'
[    1.177900] usbcore: registered new interface driver ax88179_178a
[    1.177938] usbcore: registered new interface driver cdc_ether
[    1.177981] usbcore: registered new interface driver cdc_eem
[    1.178021] usbcore: registered new interface driver net1080
[    1.178060] usbcore: registered new interface driver cdc_subset
[    1.178098] usbcore: registered new interface driver zaurus
[    1.178150] usbcore: registered new interface driver cdc_ncm
[    1.178189] usbcore: registered new interface driver cdc_mbim
[    1.178509] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    1.178517] ehci-pci: EHCI PCI platform driver
[    1.178846] ehci-pci 0000:00:1a.0: EHCI Host Controller
[    1.178996] ehci-pci 0000:00:1a.0: new USB bus registered, assigned bus =
number 1
[    1.179025] ehci-pci 0000:00:1a.0: debug port 2
[    1.182959] ehci-pci 0000:00:1a.0: cache line size of 64 is not supported
[    1.182970] ehci-pci 0000:00:1a.0: irq 16, io mem 0xf252a000
[    1.196701] ehci-pci 0000:00:1a.0: USB 2.0 started, EHCI 1.00
[    1.196927] usb usb1: New USB device found, idVendor=3D1d6b, idProduct=
=3D0002, bcdDevice=3D 5.05
[    1.196930] usb usb1: New USB device strings: Mfr=3D3, Product=3D2, Seri=
alNumber=3D1
[    1.196931] usb usb1: Product: EHCI Host Controller
[    1.196933] usb usb1: Manufacturer: Linux 5.5.0-rc1+ ehci_hcd
[    1.196934] usb usb1: SerialNumber: 0000:00:1a.0
[    1.197473] hub 1-0:1.0: USB hub found
[    1.197495] hub 1-0:1.0: 3 ports detected
[    1.198513] ehci-pci 0000:00:1d.0: EHCI Host Controller
[    1.198725] ehci-pci 0000:00:1d.0: new USB bus registered, assigned bus =
number 2
[    1.198756] ehci-pci 0000:00:1d.0: debug port 2
[    1.202702] ehci-pci 0000:00:1d.0: cache line size of 64 is not supported
[    1.202732] ehci-pci 0000:00:1d.0: irq 23, io mem 0xf2529000
[    1.216662] ehci-pci 0000:00:1d.0: USB 2.0 started, EHCI 1.00
[    1.217134] usb usb2: New USB device found, idVendor=3D1d6b, idProduct=
=3D0002, bcdDevice=3D 5.05
[    1.217137] usb usb2: New USB device strings: Mfr=3D3, Product=3D2, Seri=
alNumber=3D1
[    1.217138] usb usb2: Product: EHCI Host Controller
[    1.217140] usb usb2: Manufacturer: Linux 5.5.0-rc1+ ehci_hcd
[    1.217141] usb usb2: SerialNumber: 0000:00:1d.0
[    1.217658] hub 2-0:1.0: USB hub found
[    1.217709] hub 2-0:1.0: 3 ports detected
[    1.218405] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    1.218420] ohci-pci: OHCI PCI platform driver
[    1.218473] uhci_hcd: USB Universal Host Controller Interface driver
[    1.218648] usbcore: registered new interface driver cdc_acm
[    1.218649] cdc_acm: USB Abstract Control Model driver for USB modems an=
d ISDN adapters
[    1.218700] usbcore: registered new interface driver usblp
[    1.218743] usbcore: registered new interface driver cdc_wdm
[    1.218802] usbcore: registered new interface driver usb-storage
[    1.218837] usbcore: registered new interface driver ums-sddr09
[    1.218957] usbcore: registered new interface driver usbserial_generic
[    1.218997] usbserial: USB Serial support registered for generic
[    1.219039] usbcore: registered new interface driver ch341
[    1.219077] usbserial: USB Serial support registered for ch341-uart
[    1.219115] usbcore: registered new interface driver cp210x
[    1.219151] usbserial: USB Serial support registered for cp210x
[    1.219200] usbcore: registered new interface driver ftdi_sio
[    1.219233] usbserial: USB Serial support registered for FTDI USB Serial=
 Device
[    1.219291] usbcore: registered new interface driver option
[    1.219335] usbserial: USB Serial support registered for GSM modem (1-po=
rt)
[    1.219387] usbcore: registered new interface driver pl2303
[    1.219426] usbserial: USB Serial support registered for pl2303
[    1.219461] usbcore: registered new interface driver ti_usb_3410_5052
[    1.219497] usbserial: USB Serial support registered for TI USB 3410 1 p=
ort adapter
[    1.219533] usbserial: USB Serial support registered for TI USB 5052 2 p=
ort adapter
[    1.219538] ftdi_elan: driver ftdi-elan
[    1.219582] usbcore: registered new interface driver ftdi-elan
[    1.219728] i8042: PNP: PS/2 Controller [PNP0303:KBD,PNP0f13:MOU] at 0x6=
0,0x64 irq 1,12
[    1.223398] serio: i8042 KBD port at 0x60,0x64 irq 1
[    1.223538] serio: i8042 AUX port at 0x60,0x64 irq 12
[    1.223932] mousedev: PS/2 mouse device common for all mice
[    1.224717] input: PC Speaker as /devices/platform/pcspkr/input/input5
[    1.225014] rtc_cmos 00:02: RTC can wake from S4
[    1.225406] rtc_cmos 00:02: registered as rtc0
[    1.225482] rtc_cmos 00:02: alarms up to one month, y3k, 114 bytes nvram=
, hpet irqs
[    1.225531] i2c /dev entries driver
[    1.226720] usbcore: registered new interface driver uvcvideo
[    1.226721] USB Video Class driver (1.1.1)
[    1.226723] gspca_main: v2.14.0 registered
[    1.226767] usbcore: registered new interface driver sq930x
[    1.227509] device-mapper: ioctl: 4.41.0-ioctl (2019-09-16) initialised:=
 dm-devel@redhat.com
[    1.227513] Bluetooth: HCI UART driver ver 2.3
[    1.227516] Bluetooth: HCI UART protocol H4 registered
[    1.227517] Bluetooth: HCI UART protocol BCSP registered
[    1.227600] usbcore: registered new interface driver btusb
[    1.227607] intel_pstate: Intel P-state driver initializing
[    1.228084] sdhci: Secure Digital Host Controller Interface driver
[    1.228088] sdhci: Copyright(c) Pierre Ossman
[    1.228188] sdhci-pci 0000:0d:00.0: SDHCI controller found [1180:e822] (=
rev 7)
[    1.228582] input: AT Translated Set 2 keyboard as /devices/platform/i80=
42/serio0/input/input4
[    1.230238] mmc0 bounce up to 128 segments into one, max segment size 65=
536 bytes
[    1.231895] mmc0: SDHCI controller on PCI [0000:0d:00.0] using DMA
[    1.232939] hid: raw HID events driver (C) Jiri Kosina
[    1.238502] usbcore: registered new interface driver usbhid
[    1.238507] usbhid: USB HID core driver
[    1.239545] thinkpad_acpi: ThinkPad ACPI Extras v0.26
[    1.239546] thinkpad_acpi: http://ibm-acpi.sf.net/
[    1.239548] thinkpad_acpi: ThinkPad BIOS 8DET74WW (1.44 ), EC unknown
[    1.239549] thinkpad_acpi: Lenovo ThinkPad X220, model 42872WU
[    1.240178] Console: switching to colour frame buffer device 102x42
[    1.241058] thinkpad_acpi: radio switch found; radios are enabled
[    1.241241] thinkpad_acpi: Tablet mode switch found (type: MHKG), curren=
tly in laptop mode
[    1.241260] thinkpad_acpi: This ThinkPad has standard ACPI backlight bri=
ghtness control, supported by the ACPI video driver
[    1.241261] thinkpad_acpi: Disabling thinkpad-acpi brightness events by =
default...
[    1.245940] thinkpad_acpi: rfkill switch tpacpi_bluetooth_sw: radio is u=
nblocked
[    1.247393] thinkpad_acpi: warning: userspace override of important firm=
ware LEDs is enabled
[    1.247411] thinkpad_acpi: Standard ACPI backlight interface available, =
not loading native one
[    1.247412] thinkpad_acpi: volume: disabled as there is no ALSA support =
in this kernel
[    1.247871] battery: new extension: ThinkPad Battery Extension
[    1.247952] input: ThinkPad Extra Buttons as /devices/platform/thinkpad_=
acpi/input/input8
[    1.248353] random: fast init done
[    1.253918] usbcore: registered new interface driver snd-usb-audio
[    1.254945] i915 0000:00:02.0: fb0: i915drmfb frame buffer device
[    1.260578] ata1: SATA link up 1.5 Gbps (SStatus 113 SControl 300)
[    1.261487] NET: Registered protocol family 17
[    1.263379] ata1.00: ACPI cmd ef/02:00:00:00:00:a0 (SET FEATURES) succee=
ded
[    1.264022] Bluetooth: RFCOMM TTY layer initialized
[    1.264711] ata1.00: ACPI cmd f5/00:00:00:00:00:a0 (SECURITY FREEZE LOCK=
) filtered out
[    1.265440] Bluetooth: RFCOMM socket layer initialized
[    1.265448] Bluetooth: RFCOMM ver 1.11
[    1.265456] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[    1.265457] Bluetooth: BNEP filters: protocol multicast
[    1.265461] Bluetooth: BNEP socket layer initialized
[    1.265462] Bluetooth: HIDP (Human Interface Emulation) ver 1.2
[    1.265464] Bluetooth: HIDP socket layer initialized
[    1.265610] microcode: sig=3D0x206a7, pf=3D0x10, revision=3D0x2d
[    1.266697] ata1.00: ACPI cmd ef/10:03:00:00:00:a0 (SET FEATURES) filter=
ed out
[    1.268482] microcode: Microcode Update Driver: v2.2.
[    1.268486] IPI shorthand broadcast: enabled
[    1.270515] ata1.00: ATA-8: Hitachi HTS545050A7E380, GG2OA7J0, max UDMA/=
133
[    1.270979] sched_clock: Marking stable (1259081363, 11829659)->(1277623=
946, -6712924)
[    1.272010] ata1.00: 976773168 sectors, multi 16: LBA48 NCQ (depth 32), =
AA
[    1.273421] Loading compiled-in X.509 certificates
[    1.277466] ata1.00: ACPI cmd ef/02:00:00:00:00:a0 (SET FEATURES) succee=
ded
[    1.278527] Key type ._fscrypt registered
[    1.279503] ata1.00: ACPI cmd f5/00:00:00:00:00:a0 (SECURITY FREEZE LOCK=
) filtered out
[    1.280409] Key type .fscrypt registered
[    1.281522] ata1.00: ACPI cmd ef/10:03:00:00:00:a0 (SET FEATURES) filter=
ed out
[    1.283225] Key type encrypted registered
[    1.284289] ata1.00: configured for UDMA/133
[    1.285328] rtc_cmos 00:02: setting system clock to 2019-12-21T08:02:01 =
UTC (1576915321)
[    1.286176] scsi 0:0:0:0: Direct-Access     ATA      Hitachi HTS54505 A7=
J0 PQ: 0 ANSI: 5
[    1.287483] cfg80211: Loading compiled-in X.509 certificates for regulat=
ory database
[    1.289893] sd 0:0:0:0: [sda] 976773168 512-byte logical blocks: (500 GB=
/466 GiB)
[    1.289910] sd 0:0:0:0: Attached scsi generic sg0 type 0
[    1.291181] cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'
[    1.291678] sd 0:0:0:0: [sda] 4096-byte physical blocks
[    1.292431] platform regulatory.0: Direct firmware load for regulatory.d=
b failed with error -2
[    1.293042] sd 0:0:0:0: [sda] Write Protect is off
[    1.293700] cfg80211: failed to load regulatory.db
[    1.294432] sd 0:0:0:0: [sda] Mode Sense: 00 3a 00 00
[    1.390061] sd 0:0:0:0: [sda] Write cache: enabled, read cache: enabled,=
 doesn't support DPO or FUA
[    1.437548]  sda: sda1 sda2 sda3 sda4
[    1.440908] sd 0:0:0:0: [sda] Attached SCSI disk
[    1.528651] usb 1-1: new high-speed USB device number 2 using ehci-pci
[    1.532748] snd_hda_intel 0000:00:1b.0: bound 0000:00:02.0 (ops i915_aud=
io_component_bind_ops)
[    1.548652] usb 2-1: new high-speed USB device number 2 using ehci-pci
[    1.554555] snd_hda_codec_generic hdaudioC0D0: autoconfig for Generic: l=
ine_outs=3D1 (0x1f/0x0/0x0/0x0/0x0) type:speaker
[    1.560813] snd_hda_codec_generic hdaudioC0D0:    speaker_outs=3D0 (0x0/=
0x0/0x0/0x0/0x0)
[    1.561880] snd_hda_codec_generic hdaudioC0D0:    hp_outs=3D1 (0x19/0x0/=
0x0/0x0/0x0)
[    1.562939] snd_hda_codec_generic hdaudioC0D0:    mono: mono_out=3D0x0
[    1.563982] snd_hda_codec_generic hdaudioC0D0:    inputs:
[    1.565041] snd_hda_codec_generic hdaudioC0D0:      Internal Mic=3D0x23
[    1.566070] snd_hda_codec_generic hdaudioC0D0:      Mic=3D0x1b
[    1.570562] snd_hda_codec_generic hdaudioC0D3: ignore pin 0x7, too many =
assigned pins
[    1.571573] snd_hda_codec_generic hdaudioC0D3: autoconfig for Generic: l=
ine_outs=3D0 (0x0/0x0/0x0/0x0/0x0) type:line
[    1.572653] snd_hda_codec_generic hdaudioC0D3:    speaker_outs=3D0 (0x0/=
0x0/0x0/0x0/0x0)
[    1.573656] snd_hda_codec_generic hdaudioC0D3:    hp_outs=3D0 (0x0/0x0/0=
x0/0x0/0x0)
[    1.574599] snd_hda_codec_generic hdaudioC0D3:    mono: mono_out=3D0x0
[    1.575520] snd_hda_codec_generic hdaudioC0D3:    dig-out=3D0x5/0x6
[    1.576417] snd_hda_codec_generic hdaudioC0D3:    inputs:
[    1.579623] input: HDA Intel PCH Mic as /devices/pci0000:00/0000:00:1b.0=
/sound/card0/input9
[    1.580825] input: HDA Intel PCH Headphone as /devices/pci0000:00/0000:0=
0:1b.0/sound/card0/input10
[    1.582009] input: HDA Intel PCH HDMI as /devices/pci0000:00/0000:00:1b.=
0/sound/card0/input11
[    1.583158] input: HDA Intel PCH HDMI as /devices/pci0000:00/0000:00:1b.=
0/sound/card0/input12
[    1.604739] ata2: SATA link down (SStatus 0 SControl 300)
[    1.676741] tsc: Refined TSC clocksource calibration: 2491.905 MHz
[    1.680263] clocksource: tsc: mask: 0xffffffffffffffff max_cycles: 0x23e=
b5abbd7b, max_idle_ns: 440795277677 ns
[    1.684029] clocksource: Switched to clocksource tsc
[    1.688436] usb 1-1: New USB device found, idVendor=3D8087, idProduct=3D=
0024, bcdDevice=3D 0.00
[    1.691985] usb 1-1: New USB device strings: Mfr=3D0, Product=3D0, Seria=
lNumber=3D0
[    1.694891] hub 1-1:1.0: USB hub found
[    1.697256] hub 1-1:1.0: 6 ports detected
[    1.717642] usb 2-1: New USB device found, idVendor=3D8087, idProduct=3D=
0024, bcdDevice=3D 0.00
[    1.720754] usb 2-1: New USB device strings: Mfr=3D0, Product=3D0, Seria=
lNumber=3D0
[    1.724823] hub 2-1:1.0: USB hub found
[    1.726731] hub 2-1:1.0: 8 ports detected
[    1.920639] ata3: SATA link up 3.0 Gbps (SStatus 123 SControl 300)
[    1.936687] ata3.00: ACPI cmd ef/02:00:00:00:00:a0 (SET FEATURES) succee=
ded
[    1.936695] ata3.00: ACPI cmd f5/00:00:00:00:00:a0 (SECURITY FREEZE LOCK=
) filtered out
[    1.938584] ata3.00: ACPI cmd ef/10:03:00:00:00:a0 (SET FEATURES) filter=
ed out
[    1.945677] ata3.00: ATA-8: KINGSTON SMS200S3240G, 60AABBF0, max UDMA/133
[    1.947693] ata3.00: 468862128 sectors, multi 1: LBA48 NCQ (depth 32), AA
[    1.954759] ata3.00: ACPI cmd ef/02:00:00:00:00:a0 (SET FEATURES) succee=
ded
[    1.954766] ata3.00: ACPI cmd f5/00:00:00:00:00:a0 (SECURITY FREEZE LOCK=
) filtered out
[    1.956624] ata3.00: ACPI cmd ef/10:03:00:00:00:a0 (SET FEATURES) filter=
ed out
[    1.963487] ata3.00: configured for UDMA/133
[    1.965805] scsi 2:0:0:0: Direct-Access     ATA      KINGSTON SMS200S BB=
F0 PQ: 0 ANSI: 5
[    1.970328] sd 2:0:0:0: Attached scsi generic sg1 type 0
[    1.970658] sd 2:0:0:0: [sdb] 468862128 512-byte logical blocks: (240 GB=
/224 GiB)
[    1.975294] sd 2:0:0:0: [sdb] Write Protect is off
[    1.977509] sd 2:0:0:0: [sdb] Mode Sense: 00 3a 00 00
[    1.977590] sd 2:0:0:0: [sdb] Write cache: enabled, read cache: enabled,=
 doesn't support DPO or FUA
[    1.981634]  sdb: sdb2 sdb4
[    1.985540] sd 2:0:0:0: [sdb] Attached SCSI disk
[    1.988695] usb 1-1.3: new full-speed USB device number 3 using ehci-pci
[    2.016694] usb 2-1.2: new high-speed USB device number 3 using ehci-pci
[    2.103344] usb 1-1.3: New USB device found, idVendor=3D147e, idProduct=
=3D2016, bcdDevice=3D 0.02
[    2.106820] usb 1-1.3: New USB device strings: Mfr=3D1, Product=3D2, Ser=
ialNumber=3D0
[    2.110333] usb 1-1.3: Product: Biometric Coprocessor
[    2.113844] usb 1-1.3: Manufacturer: UPEK
[    2.129856] usb 2-1.2: New USB device found, idVendor=3D1a40, idProduct=
=3D0101, bcdDevice=3D 1.11
[    2.130316] psmouse serio1: synaptics: queried max coordinates: x [..547=
2], y [..4448]
[    2.131741] usb 2-1.2: New USB device strings: Mfr=3D0, Product=3D1, Ser=
ialNumber=3D0
[    2.135656] usb 2-1.2: Product: USB 2.0 Hub
[    2.137835] hub 2-1.2:1.0: USB hub found
[    2.139283] hub 2-1.2:1.0: 4 ports detected
[    2.196679] usb 1-1.4: new full-speed USB device number 4 using ehci-pci
[    2.213222] psmouse serio1: synaptics: Touchpad model: 1, fw: 8.0, id: 0=
x1e2b1, caps: 0xd001a3/0x940300/0x120c00/0x0, board id: 1611, fw id: 774180
[    2.220301] psmouse serio1: synaptics: serio: Synaptics pass-through por=
t at isa0060/serio1/input0
[    2.272034] input: SynPS/2 Synaptics TouchPad as /devices/platform/i8042=
/serio1/input/input7
[    2.288694] ata5: SATA link down (SStatus 0 SControl 300)
[    2.321743] usb 1-1.4: config 1 interface 1 altsetting 0 endpoint 0x83 h=
as wMaxPacketSize 0, skipping
[    2.325556] usb 1-1.4: config 1 interface 1 altsetting 0 endpoint 0x3 ha=
s wMaxPacketSize 0, skipping
[    2.330279] usb 1-1.4: New USB device found, idVendor=3D0a5c, idProduct=
=3D217f, bcdDevice=3D 7.48
[    2.330510] PM: Image not found (code -22)
[    2.333308] usb 1-1.4: New USB device strings: Mfr=3D1, Product=3D2, Ser=
ialNumber=3D3
[    2.333313] usb 1-1.4: Product: Broadcom Bluetooth Device
[    2.336343] ALSA device list:
[    2.339298] usb 1-1.4: Manufacturer: Broadcom Corp
[    2.340670]   #0: HDA Intel PCH at 0xf2520000 irq 22
[    2.341994] usb 1-1.4: SerialNumber: 7CE9D3B855AA
[    2.424630] usb 1-1.6: new high-speed USB device number 5 using ehci-pci
[    2.532683] usb 2-1.2.1: new low-speed USB device number 4 using ehci-pci
[    2.545330] usb 1-1.6: New USB device found, idVendor=3D04f2, idProduct=
=3Db217, bcdDevice=3D 8.54
[    2.548863] usb 1-1.6: New USB device strings: Mfr=3D1, Product=3D2, Ser=
ialNumber=3D0
[    2.551007] usb 1-1.6: Product: Integrated Camera
[    2.553026] usb 1-1.6: Manufacturer: Chicony Electronics Co., Ltd.
[    2.558216] uvcvideo: Found UVC 1.00 device Integrated Camera (04f2:b217)
[    2.573738] uvcvideo 1-1.6:1.0: Entity type for entity Extension 3 was n=
ot initialized!
[    2.577360] uvcvideo 1-1.6:1.0: Entity type for entity Processing 2 was =
not initialized!
[    2.580804] uvcvideo 1-1.6:1.0: Entity type for entity Camera 1 was not =
initialized!
[    2.783472] usb 2-1.2.1: New USB device found, idVendor=3D06a3, idProduc=
t=3D053f, bcdDevice=3D 0.02
[    2.787109] usb 2-1.2.1: New USB device strings: Mfr=3D1, Product=3D2, S=
erialNumber=3D3
[    2.790605] usb 2-1.2.1: Product: Saitek X36
[    2.794025] usb 2-1.2.1: Manufacturer: Saitek
[    2.797403] usb 2-1.2.1: SerialNumber: 00103464
[    2.839378] input: Saitek Saitek X36 as /devices/pci0000:00/0000:00:1d.0=
/usb2/2-1/2-1.2/2-1.2.1/2-1.2.1:1.0/0003:06A3:053F.0001/input/input14
[    2.844234] hid-generic 0003:06A3:053F.0001: input,hidraw0: USB HID v1.0=
0 Joystick [Saitek Saitek X36] on usb-0000:00:1d.0-1.2.1/input0
[    3.028862] psmouse serio2: trackpoint: IBM TrackPoint firmware: 0x0e, b=
uttons: 3/3
[    3.048688] usb 2-1.2.2: new low-speed USB device number 5 using ehci-pci
[    3.287748] usb 2-1.2.2: New USB device found, idVendor=3D046d, idProduc=
t=3Dc050, bcdDevice=3D27.20
[    3.291668] usb 2-1.2.2: New USB device strings: Mfr=3D1, Product=3D2, S=
erialNumber=3D0
[    3.294378] usb 2-1.2.2: Product: USB-PS/2 Optical Mouse
[    3.297310] input: TPPS/2 IBM TrackPoint as /devices/platform/i8042/seri=
o1/serio2/input/input13
[    3.300246] usb 2-1.2.2: Manufacturer: Logitech
[    3.307873] input: Logitech USB-PS/2 Optical Mouse as /devices/pci0000:0=
0/0000:00:1d.0/usb2/2-1/2-1.2/2-1.2.2/2-1.2.2:1.0/0003:046D:C050.0002/input=
/input15
[    3.310520] hid-generic 0003:046D:C050.0002: input,hidraw1: USB HID v1.1=
0 Mouse [Logitech USB-PS/2 Optical Mouse] on usb-0000:00:1d.0-1.2.2/input0
[    3.405547] md: Waiting for all devices to be available before autodetect
[    3.409421] md: If you don't use raid, use raid=3Dnoautodetect
[    3.414778] md: Autodetecting RAID arrays.
[    3.418662] md: autorun ...
[    3.422339] md: ... autorun DONE.
[    3.480951] EXT4-fs (sda3): mounted filesystem with ordered data mode. O=
pts: (null)
[    3.484926] VFS: Mounted root (ext4 filesystem) readonly on device 8:3.
[    3.512693] usb 2-1.2.3: new low-speed USB device number 6 using ehci-pci
[    3.518812] devtmpfs: mounted
[    3.525481] Freeing unused kernel image (initmem) memory: 1076K
[    3.528778] Write protecting the kernel read-only data: 24576k
[    3.532812] Freeing unused kernel image (text/rodata gap) memory: 2040K
[    3.534084] Freeing unused kernel image (rodata/data gap) memory: 476K
[    3.543830] x86/mm: Checked W+X mappings: passed, no W+X pages found.
[    3.544809] rodata_test: all tests were successful
[    3.545770] x86/mm: Checking user space page tables
[    3.555202] x86/mm: Checked W+X mappings: passed, no W+X pages found.
[    3.556145] Run /sbin/init as init process
[    3.752885] usb 2-1.2.3: New USB device found, idVendor=3D04f2, idProduc=
t=3D0111, bcdDevice=3D 1.02
[    3.756306] usb 2-1.2.3: New USB device strings: Mfr=3D1, Product=3D2, S=
erialNumber=3D0
[    3.759780] usb 2-1.2.3: Product: USB Keyboard
[    3.761365] usb 2-1.2.3: Manufacturer: Chicony
[    3.768571] input: Chicony USB Keyboard as /devices/pci0000:00/0000:00:1=
d.0/usb2/2-1/2-1.2/2-1.2.3/2-1.2.3:1.0/0003:04F2:0111.0003/input/input16
[    3.830762] hid-generic 0003:04F2:0111.0003: input,hidraw2: USB HID v1.1=
0 Keyboard [Chicony USB Keyboard] on usb-0000:00:1d.0-1.2.3/input0
[    3.845294] input: Chicony USB Keyboard System Control as /devices/pci00=
00:00/0000:00:1d.0/usb2/2-1/2-1.2/2-1.2.3/2-1.2.3:1.1/0003:04F2:0111.0004/i=
nput/input17
[    3.905635] input: Chicony USB Keyboard Consumer Control as /devices/pci=
0000:00/0000:00:1d.0/usb2/2-1/2-1.2/2-1.2.3/2-1.2.3:1.1/0003:04F2:0111.0004=
/input/input18
[    3.915209] hid-generic 0003:04F2:0111.0004: input,hiddev96,hidraw3: USB=
 HID v1.10 Device [Chicony USB Keyboard] on usb-0000:00:1d.0-1.2.3/input1
[    5.416348] systemd[1]: systemd 241 running in system mode. (+PAM +AUDIT=
 +SELINUX +IMA +APPARMOR +SMACK +SYSVINIT +UTMP +LIBCRYPTSETUP +GCRYPT +GNU=
TLS +ACL +XZ +LZ4 +SECCOMP +BLKID +ELFUTILS +KMOD -IDN2 +IDN -PCRE2 default=
-hierarchy=3Dhybrid)
[    5.448882] systemd[1]: Detected architecture x86-64.
[    5.497890] systemd[1]: Set hostname to <duo>.
[    5.518511] systemd[1]: Failed to bump fs.file-max, ignoring: Invalid ar=
gument
[    5.566284] systemd[1]: Couldn't move remaining userspace processes, ign=
oring: Input/output error
[    6.487512] random: crng init done
[    6.504935] systemd[1]: File /lib/systemd/system/systemd-journald.servic=
e:12 configures an IP firewall (IPAddressDeny=3Dany), but the local system =
does not support BPF/cgroup based firewalling.
[    6.513368] systemd[1]: Proceeding WITHOUT firewalling in effect! (This =
warning is only shown for the first loaded unit using IP firewalling.)
[    7.116980] systemd[1]: Binding to IPv6 address not available since kern=
el does not support IPv6.
[    7.121653] systemd[1]: Binding to IPv6 address not available since kern=
el does not support IPv6.
[    7.221198] systemd[1]: /lib/systemd/system/rpc-statd.service:13: PIDFil=
e=3D references path below legacy directory /var/run/, updating /var/run/rp=
c.statd.pid =E2=86=92 /run/rpc.statd.pid; please update the unit file accor=
dingly.
[    8.999177] EXT4-fs (sda3): re-mounted. Opts: errors=3Dremount-ro
[    9.097012] systemd-journald[1742]: Received request to flush runtime jo=
urnal from PID 1
[   10.017712] e1000e 0000:00:19.0 enp0s25: renamed from eth0
[   10.130868] iwlwifi 0000:03:00.0 wlp3s0: renamed from wlan0
[   12.532802] Adding 1681428k swap on /dev/sda1.  Priority:-2 extents:1 ac=
ross:1681428k=20
[   14.287361] EXT4-fs (sda2): mounted filesystem with ordered data mode. O=
pts: errors=3Dremount-ro
[   14.437861] EXT4-fs (sdb2): mounted filesystem with ordered data mode. O=
pts: errors=3Dremount-ro
[   24.999191] NFSD: Using /var/lib/nfs/v4recovery as the NFSv4 state recov=
ery directory
[   25.022738] NFSD: Using legacy client tracking operations.
[   25.024862] NFSD: starting 90-second grace period (net f0000098)
[   25.196106] iwlwifi 0000:03:00.0: Radio type=3D0x0-0x0-0x3
=2E..
[58010.160699] wlp3s0: deauthenticated from 5c:f4:ab:10:d2:bb (Reason: 16=
=3DGROUP_KEY_HANDSHAKE_TIMEOUT)
[58010.984739] wlp3s0: authenticate with 5c:f4:ab:10:d2:bb
[58010.987935] wlp3s0: send auth to 5c:f4:ab:10:d2:bb (try 1/3)
[58010.990699] wlp3s0: authenticated
[58010.993117] wlp3s0: associate with 5c:f4:ab:10:d2:bb (try 1/3)
[58010.996660] wlp3s0: RX AssocResp from 5c:f4:ab:10:d2:bb (capab=3D0x411 s=
tatus=3D0 aid=3D1)
[58011.000084] wlp3s0: associated
[58845.340068] list_del corruption. prev->next should be ffff88817f1e9c88, =
but was 6b6b6b6b6b6b6b6b
[58845.340114] ------------[ cut here ]------------
[58845.340122] kernel BUG at /data/fast/l/k/lib/list_debug.c:53!
[58845.340143] invalid opcode: 0000 [#1] PREEMPT SMP PTI
[58845.340151] CPU: 2 PID: 3119 Comm: Xorg Not tainted 5.5.0-rc1+ #73
[58845.340153] Hardware name: LENOVO 42872WU/42872WU, BIOS 8DET74WW (1.44 )=
 03/13/2018
[58845.340172] RIP: 0010:__list_del_entry_valid+0x8e/0x90
[58845.340176] Code: c6 47 cd ff 0f 0b 48 89 fe 31 c0 48 c7 c7 a8 27 62 85 =
e8 b3 47 cd ff 0f 0b 48 89 fe 31 c0 48 c7 c7 e0 27 62 85 e8 a0 47 cd ff <0f=
> 0b 55 48 89 e5 41 54 53 48 81 ec 88 00 00 00 65 48 8b 04 25 28
[58845.340180] RSP: 0018:ffffc90000363948 EFLAGS: 00010086
[58845.340186] RAX: 0000000000000054 RBX: ffff88817f1e9c80 RCX: 00000000000=
00000
[58845.340189] RDX: 0000000000000000 RSI: ffff88819e2a83b8 RDI: 00000000fff=
fffff
[58845.340191] RBP: ffffc90000363948 R08: 00000000dad2bd40 R09: 00000000000=
00000
[58845.340194] R10: 0000000000000000 R11: 6236623662366201 R12: ffff888034c=
bf000
[58845.340196] R13: ffff888034cbf2c0 R14: ffff88817f1e9c88 R15: 00000000000=
00003
[58845.340214] FS:  00007fa3bca29f00(0000) GS:ffff88819e280000(0000) knlGS:=
0000000000000000
[58845.340217] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[58845.340220] CR2: 00001c80e8d63000 CR3: 00000001891ce005 CR4: 00000000000=
606a0
[58845.340223] Call Trace:
[58845.340240]  __i915_active_fence_set+0x49/0xc0
[58845.340247]  i915_active_ref+0x12d/0x1c0
[58845.340260]  ? i915_gem_do_execbuffer+0x1425/0x1bb0
[58845.340269]  __i915_vma_move_to_active+0x33/0x40
[58845.340274]  i915_vma_move_to_active+0x30/0x130
[58845.340279]  i915_gem_do_execbuffer+0x134a/0x1bb0
[58845.340290]  ? find_held_lock+0x39/0xb0
[58845.340300]  ? kvmalloc_node+0x26/0x70
[58845.340307]  i915_gem_execbuffer2_ioctl+0x1d3/0x390
[58845.340313]  ? i915_gem_execbuffer_ioctl+0x2a0/0x2a0
[58845.340324]  drm_ioctl_kernel+0xae/0xf0
[58845.340331]  drm_ioctl+0x33d/0x3e0
[58845.340336]  ? i915_gem_execbuffer_ioctl+0x2a0/0x2a0
[58845.340343]  ? find_held_lock+0x39/0xb0
[58845.340356]  do_vfs_ioctl+0x9d/0x640
[58845.340364]  ? __fget+0xaf/0xe0
[58845.340369]  ksys_ioctl+0x3c/0x80
[58845.340374]  __x64_sys_ioctl+0x15/0x20
[58845.340385]  do_syscall_64+0x54/0x2c0
[58845.340399]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
[58845.340407] RIP: 0033:0x7fa3bd159427
[58845.340412] Code: 00 00 90 48 8b 05 69 aa 0c 00 64 c7 00 26 00 00 00 48 =
c7 c0 ff ff ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 b8 10 00 00 00 0f 05 <48=
> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 39 aa 0c 00 f7 d8 64 89 01 48
[58845.340416] RSP: 002b:00007ffdf622c048 EFLAGS: 00000246 ORIG_RAX: 000000=
0000000010
[58845.340420] RAX: ffffffffffffffda RBX: 000055bf93aa96d0 RCX: 00007fa3bd1=
59427
[58845.340423] RDX: 00007ffdf622c090 RSI: 0000000040406469 RDI: 00000000000=
0000e
[58845.340427] RBP: 00007ffdf622c090 R08: 000055bf93ae70a0 R09: 00007fa3bc9=
4bd80
[58845.340431] R10: 00007ffdf622c130 R11: 0000000000000246 R12: 00000000404=
06469
[58845.340434] R13: 000000000000000e R14: ffffffffffffffff R15: 00000000000=
00000
[58845.340439] Modules linked in:
[58845.340448] ---[ end trace e76b6c6586dbe0fa ]---
[58845.340458] RIP: 0010:__list_del_entry_valid+0x8e/0x90
[58845.340463] Code: c6 47 cd ff 0f 0b 48 89 fe 31 c0 48 c7 c7 a8 27 62 85 =
e8 b3 47 cd ff 0f 0b 48 89 fe 31 c0 48 c7 c7 e0 27 62 85 e8 a0 47 cd ff <0f=
> 0b 55 48 89 e5 41 54 53 48 81 ec 88 00 00 00 65 48 8b 04 25 28
[58845.340467] RSP: 0018:ffffc90000363948 EFLAGS: 00010086
[58845.340472] RAX: 0000000000000054 RBX: ffff88817f1e9c80 RCX: 00000000000=
00000
[58845.340475] RDX: 0000000000000000 RSI: ffff88819e2a83b8 RDI: 00000000fff=
fffff
[58845.340478] RBP: ffffc90000363948 R08: 00000000dad2bd40 R09: 00000000000=
00000
[58845.340481] R10: 0000000000000000 R11: 6236623662366201 R12: ffff888034c=
bf000
[58845.340484] R13: ffff888034cbf2c0 R14: ffff88817f1e9c88 R15: 00000000000=
00003
[58845.340488] FS:  00007fa3bca29f00(0000) GS:ffff88819e280000(0000) knlGS:=
0000000000000000
[58845.340491] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[58845.340494] CR2: 00001c80e8d63000 CR3: 00000001891ce005 CR4: 00000000000=
606a0
[58845.340504] note: Xorg[3119] exited with preempt_count 2

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--pf9I7BMVVzbSWLtt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCXgDz4QAKCRAw5/Bqldv6
8hJ1AJ4iE/1NyvATHCDCH7oujXCftntSfACguT42LTPJWdCRun3vw42rntW6tYU=
=wO1M
-----END PGP SIGNATURE-----

--pf9I7BMVVzbSWLtt--

--===============0154359527==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0154359527==--
