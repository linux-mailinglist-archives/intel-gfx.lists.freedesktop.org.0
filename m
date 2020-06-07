Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B4D1F0935
	for <lists+intel-gfx@lfdr.de>; Sun,  7 Jun 2020 03:17:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 011E06E101;
	Sun,  7 Jun 2020 01:17:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F35E6E0AC
 for <intel-gfx@lists.freedesktop.org>; Sun,  7 Jun 2020 01:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591492662;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9bUhtvFVIxyPvH377e3W0nGcFSqMIvCNQpU/Rwc1KFc=;
 b=JcneaNHJ669RNX8hYGzi6xWNlboOcXfsQLdMy4kQM1oZseSnrHTCLm2IL5/bsHXk1P+P5V
 6ssylF9+KEh7fgcy/VaSeJf1/dEWv+44Xi4sMTFYrmU1krYHP+03+HKgJS+ychDyEYnp3U
 tmrOozlhugy9U1qGLoG5QIZAEseXAi0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-46-dvLtMpd6Oeq_JsuAvSTABA-1; Sat, 06 Jun 2020 21:17:38 -0400
X-MC-Unique: dvLtMpd6Oeq_JsuAvSTABA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 06073464;
 Sun,  7 Jun 2020 01:17:37 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-114-66.rdu2.redhat.com
 [10.10.114.66])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E82661001E91;
 Sun,  7 Jun 2020 01:17:34 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <2136072.1591491984@warthog.procyon.org.uk>
References: <2136072.1591491984@warthog.procyon.org.uk>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
MIME-Version: 1.0
Content-ID: <2147271.1591492654.1@warthog.procyon.org.uk>
Date: Sun, 07 Jun 2020 02:17:34 +0100
Message-ID: <2147272.1591492654@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Subject: Re: [Intel-gfx] A panic and a hang in the i915 drm driver
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
Cc: dhowells@redhat.com, airlied@redhat.com, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Here's the dmesg from a successful boot (commit
f84e1ba336a4f47ae251e4d2d8a694902571b0df).

David
---
[    0.007455]   Normal   [mem 0x0000000100000000-0x000000041fdfffff]
[    0.007456] Movable zone start for each node
[    0.007456] Early memory node ranges
[    0.007457]   node   0: [mem 0x0000000000001000-0x0000000000057fff]
[    0.007458]   node   0: [mem 0x0000000000059000-0x000000000009efff]
[    0.007459]   node   0: [mem 0x0000000000100000-0x00000000af304fff]
[    0.007460]   node   0: [mem 0x00000000af30c000-0x00000000af774fff]
[    0.007460]   node   0: [mem 0x00000000afbbd000-0x00000000d8b7bfff]
[    0.007461]   node   0: [mem 0x00000000d9fff000-0x00000000d9ffffff]
[    0.007461]   node   0: [mem 0x0000000100000000-0x000000041fdfffff]
[    0.007845] Zeroed struct page in unavailable ranges: 31541 pages
[    0.007846] Initmem setup node 0 [mem 0x0000000000001000-0x000000041fdfffff]
[    0.007848] On node 0 totalpages: 4162763
[    0.007849]   DMA zone: 64 pages used for memmap
[    0.007849]   DMA zone: 24 pages reserved
[    0.007850]   DMA zone: 3997 pages, LIFO batch:0
[    0.007901]   DMA32 zone: 13789 pages used for memmap
[    0.007901]   DMA32 zone: 882478 pages, LIFO batch:63
[    0.020153]   Normal zone: 51192 pages used for memmap
[    0.020155]   Normal zone: 3276288 pages, LIFO batch:63
[    0.064070] Reserving Intel graphics memory at [mem 0xdb200000-0xdf1fffff]
[    0.064144] ACPI: PM-Timer IO Port: 0x1808
[    0.064146] ACPI: Local APIC address 0xfee00000
[    0.064150] ACPI: LAPIC_NMI (acpi_id[0xff] high edge lint[0x1])
[    0.064159] IOAPIC[0]: apic_id 8, version 32, address 0xfec00000, GSI 0-23
[    0.064161] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
[    0.064162] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
[    0.064163] ACPI: IRQ0 used by override.
[    0.064164] ACPI: IRQ9 used by override.
[    0.064166] Using ACPI (MADT) for SMP configuration information
[    0.064167] ACPI: HPET id: 0x8086a701 base: 0xfed00000
[    0.064171] [Firmware Bug]: TSC_DEADLINE disabled due to Errata; please update microcode to version: 0x22 (or later)
[    0.064172] smpboot: Allowing 4 CPUs, 0 hotplug CPUs
[    0.064198] [mem 0xdf200000-0xf7ffffff] available for PCI devices
[    0.064204] clocksource: refined-jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645519600211568 ns
[    0.077227] setup_percpu: NR_CPUS:4 nr_cpumask_bits:4 nr_cpu_ids:4 nr_node_ids:1
[    0.077563] percpu: Embedded 54 pages/cpu s181200 r8192 d31792 u524288
[    0.077569] pcpu-alloc: s181200 r8192 d31792 u524288 alloc=1*2097152
[    0.077570] pcpu-alloc: [0] 0 1 2 3 
[    0.077588] Built 1 zonelists, mobility grouping on.  Total pages: 4097694
[    0.077588] Policy zone: Normal
[    0.077590] Kernel command line: BOOT_IMAGE=/data/tftp/andromeda-vmlinuz ip=enp3s0:dhcp console=tty0 console=ttyS0,115200 ro root=/dev/sdb2
[    0.079327] Dentry cache hash table entries: 2097152 (order: 12, 16777216 bytes, linear)
[    0.080136] Inode-cache hash table entries: 1048576 (order: 11, 8388608 bytes, linear)
[    0.080167] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.159182] Memory: 16016000K/16651052K available (12290K kernel code, 1927K rwdata, 5372K rodata, 1608K init, 1296K bss, 635052K reserved, 0K cma-reserved)
[    0.159242] Kernel/User page tables isolation: enabled
[    0.159256] ftrace: allocating 47297 entries in 185 pages
[    0.172236] ftrace: allocated 185 pages with 5 groups
[    0.172293] rcu: Hierarchical RCU implementation.
[    0.172294] rcu: RCU calculated value of scheduler-enlistment delay is 25 jiffies.
[    0.175046] NR_IRQS: 4352, nr_irqs: 456, preallocated irqs: 16
[    0.175193] rcu: 	Offload RCU callbacks from CPUs: (none).
[    0.175244] random: get_random_bytes called from start_kernel+0x3f5/0x5c0 with crng_init=0
[    0.175342] Console: colour dummy device 80x25
[    0.175458] printk: console [tty0] enabled
[    0.957870] printk: console [ttyS0] enabled
[    0.960753] ACPI: Core revision 20200326
[    0.963468] clocksource: hpet: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 133484882848 ns
[    0.971296] APIC: Switch to symmetric I/O mode setup
[    0.975260] ..TIMER: vector=0x30 apic1=0 pin1=2 apic2=0 pin2=0
[    0.999294] clocksource: tsc-early: mask: 0xffffffffffffffff max_cycles: 0x6a6cab8f549, max_idle_ns: 881590883366 ns
[    1.008503] Calibrating delay loop (skipped), value calculated using timer frequency.. 7383.19 BogoMIPS (lpj=14766392)
[    1.012503] pid_max: default: 32768 minimum: 301
[    1.024069] LSM: Security Framework initializing
[    1.024510] Yama: becoming mindful.
[    1.028507] SELinux:  Initializing.
[    1.030772] Mount-cache hash table entries: 32768 (order: 6, 262144 bytes, linear)
[    1.032558] Mountpoint-cache hash table entries: 32768 (order: 6, 262144 bytes, linear)
[    1.036710] mce: CPU0: Thermal monitoring enabled (TM1)
[    1.040511] process: using mwait in idle threads
[    1.043830] Last level iTLB entries: 4KB 1024, 2MB 1024, 4MB 1024
[    1.044502] Last level dTLB entries: 4KB 1024, 2MB 1024, 4MB 1024, 1GB 4
[    1.048505] Spectre V1 : Mitigation: usercopy/swapgs barriers and __user pointer sanitization
[    1.052503] Spectre V2 : Spectre mitigation: kernel not compiled with retpoline; no mitigation available!
[    1.052503] Speculative Store Bypass: Vulnerable
[    1.060503] MDS: Vulnerable: Clear CPU buffers attempted, no microcode
[    1.064625] Freeing SMP alternatives memory: 20K
[    1.178187] smpboot: CPU0: Intel(R) Core(TM) i3-4170 CPU @ 3.70GHz (family: 0x6, model: 0x3c, stepping: 0x3)
[    1.180565] Performance Events: PEBS fmt2+, Haswell events, 16-deep LBR, full-width counters, Intel PMU driver.
[    1.184503] ... version:                3
[    1.188502] ... bit width:              48
[    1.191292] ... generic registers:      4
[    1.192502] ... value mask:             0000ffffffffffff
[    1.196502] ... max period:             00007fffffffffff
[    1.200502] ... fixed-purpose events:   3
[    1.204502] ... event mask:             000000070000000f
[    1.208533] rcu: Hierarchical SRCU implementation.
[    1.212577] NMI watchdog: Enabled. Permanently consumes one hw-PMU counter.
[    1.216539] smp: Bringing up secondary CPUs ...
[    1.220566] x86: Booting SMP configuration:
[    1.223447] .... node  #0, CPUs:      #1 #2
[    1.224922] MDS CPU bug present and SMT on, data leak possible. See https://www.kernel.org/doc/html/latest/admin-guide/hw-vuln/mds.html for more details.
[    1.228581]  #3
[    1.228891] smp: Brought up 1 node, 4 CPUs
[    1.231764] smpboot: Max logical packages: 1
[    1.232504] smpboot: Total of 4 processors activated (29532.78 BogoMIPS)
[    1.237746] devtmpfs: initialized
[    1.238667] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
[    1.248506] futex hash table entries: 1024 (order: 4, 65536 bytes, linear)
[    1.252550] xor: automatically using best checksumming function   avx       
[    1.256508] thermal_sys: Registered thermal governor 'step_wise'
[    1.256509] thermal_sys: Registered thermal governor 'user_space'
[    1.264534] NET: Registered protocol family 16
[    1.272557] audit: initializing netlink subsys (disabled)
[    1.276507] audit: type=2000 audit(1591492487.292:1): state=initialized audit_enabled=0 res=1
[    1.280505] cpuidle: using governor ladder
[    1.284508] cpuidle: using governor menu
[    1.288569] ACPI FADT declares the system doesn't support PCIe ASPM, so disable it
[    1.292503] ACPI: bus type PCI registered
[    1.296538] PCI: MMCONFIG for domain 0000 [bus 00-3f] at [mem 0xf8000000-0xfbffffff] (base 0xf8000000)
[    1.304504] PCI: MMCONFIG at [mem 0xf8000000-0xfbffffff] reserved in E820
[    1.308507] pmd_set_huge: Cannot satisfy [mem 0xf8000000-0xf8200000] with a huge-page mapping due to MTRR override.
[    1.320528] PCI: Using configuration type 1 for base access
[    1.324555] core: PMU erratum BJ122, BV98, HSD29 worked around, HT is on
[    1.328598] ENERGY_PERF_BIAS: Set to 'normal', was 'performance'
[    1.337943] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
[    1.672051] raid6: avx2x4   gen() 35252 MB/s
[    1.740050] raid6: avx2x4   xor()  9138 MB/s
[    1.808050] raid6: avx2x2   gen() 32271 MB/s
[    1.876050] raid6: avx2x2   xor() 20587 MB/s
[    1.944050] raid6: avx2x1   gen() 28431 MB/s
[    2.012050] raid6: avx2x1   xor() 16505 MB/s
[    2.080050] raid6: sse2x4   gen() 18324 MB/s
[    2.148050] raid6: sse2x4   xor()  8936 MB/s
[    2.216051] raid6: sse2x2   gen() 16730 MB/s
[    2.284050] raid6: sse2x2   xor() 10417 MB/s
[    2.352050] raid6: sse2x1   gen() 13939 MB/s
[    2.420051] raid6: sse2x1   xor()  8368 MB/s
[    2.420503] raid6: using algorithm avx2x4 gen() 35252 MB/s
[    2.424502] raid6: .... xor() 9138 MB/s, rmw enabled
[    2.428503] raid6: using avx2x2 recovery algorithm
[    2.432530] ACPI: Added _OSI(Module Device)
[    2.436503] ACPI: Added _OSI(Processor Device)
[    2.440506] ACPI: Added _OSI(3.0 _SCP Extensions)
[    2.440506] ACPI: Added _OSI(Processor Aggregator Device)
[    2.444503] ACPI: Added _OSI(Linux-Dell-Video)
[    2.448504] ACPI: Added _OSI(Linux-Lenovo-NV-HDMI-Audio)
[    2.452503] ACPI: Added _OSI(Linux-HPI-Hybrid-Graphics)
[    2.470763] ACPI: 6 ACPI AML tables successfully acquired and loaded
[    2.477867] ACPI: Dynamic OEM Table Load:
[    2.480507] ACPI: SSDT 0xFFFF88840D189400 0003D3 (v01 PmRef  Cpu0Cst  00003001 INTL 20051117)
[    2.488608] ACPI: Dynamic OEM Table Load:
[    2.491316] ACPI: SSDT 0xFFFF88840D153000 0005AA (v01 PmRef  ApIst    00003000 INTL 20051117)
[    2.497383] ACPI: Dynamic OEM Table Load:
[    2.500506] ACPI: SSDT 0xFFFF88840D185800 000119 (v01 PmRef  ApCst    00003000 INTL 20051117)
[    2.509943] ACPI: Interpreter enabled
[    2.512510] ACPI: (supports S0 S5)
[    2.514606] ACPI: Using IOAPIC for interrupt routing
[    2.516531] PCI: Using host bridge windows from ACPI; if necessary, use "pci=nocrs" and report a bug
[    2.524784] ACPI: Enabled 10 GPEs in block 00 to 3F
[    2.529162] ACPI: Power Resource [PG00] (on)
[    2.532789] ACPI: Power Resource [PG01] (on)
[    2.536780] ACPI: Power Resource [PG02] (on)
[    2.548508] ACPI: Power Resource [FN00] (off)
[    2.548575] ACPI: Power Resource [FN01] (off)
[    2.552576] ACPI: Power Resource [FN02] (off)
[    2.556576] ACPI: Power Resource [FN03] (off)
[    2.560574] ACPI: Power Resource [FN04] (off)
[    2.564695] ACPI: PCI Root Bridge [PCI0] (domain 0000 [bus 00-3e])
[    2.568507] acpi PNP0A08:00: _OSC: OS supports [ExtendedConfig ASPM ClockPM Segments MSI HPX-Type3]
[    2.576752] acpi PNP0A08:00: _OSC: platform does not support [PME]
[    2.580671] acpi PNP0A08:00: _OSC: OS now controls [AER PCIeCapability LTR]
[    2.588503] acpi PNP0A08:00: FADT indicates ASPM is unsupported, using BIOS configuration
[    2.592818] PCI host bridge to bus 0000:00
[    2.596504] pci_bus 0000:00: root bus resource [io  0x0000-0x0cf7 window]
[    2.600503] pci_bus 0000:00: root bus resource [io  0x0d00-0xffff window]
[    2.608503] pci_bus 0000:00: root bus resource [mem 0x000a0000-0x000bffff window]
[    2.612503] pci_bus 0000:00: root bus resource [mem 0x000d0000-0x000d3fff window]
[    2.620503] pci_bus 0000:00: root bus resource [mem 0x000d4000-0x000d7fff window]
[    2.624503] pci_bus 0000:00: root bus resource [mem 0x000d8000-0x000dbfff window]
[    2.632504] pci_bus 0000:00: root bus resource [mem 0x000dc000-0x000dffff window]
[    2.636503] pci_bus 0000:00: root bus resource [mem 0xdf200000-0xfeafffff window]
[    2.644503] pci_bus 0000:00: root bus resource [bus 00-3e]
[    2.648510] pci 0000:00:00.0: [8086:0c00] type 00 class 0x060000
[    2.652584] pci 0000:00:01.0: [8086:0c01] type 01 class 0x060400
[    2.656532] pci 0000:00:01.0: PME# supported from D0 D3hot D3cold
[    2.664616] pci 0000:00:02.0: [8086:041e] type 00 class 0x030000
[    2.668510] pci 0000:00:02.0: reg 0x10: [mem 0xf7400000-0xf77fffff 64bit]
[    2.672506] pci 0000:00:02.0: reg 0x18: [mem 0xe0000000-0xefffffff 64bit pref]
[    2.680505] pci 0000:00:02.0: reg 0x20: [io  0xf000-0xf03f]
[    2.684576] pci 0000:00:03.0: [8086:0c0c] type 00 class 0x040300
[    2.688508] pci 0000:00:03.0: reg 0x10: [mem 0xf7c10000-0xf7c13fff 64bit]
[    2.692593] pci 0000:00:14.0: [8086:8cb1] type 00 class 0x0c0330
[    2.700521] pci 0000:00:14.0: reg 0x10: [mem 0xf7c00000-0xf7c0ffff 64bit]
[    2.704554] pci 0000:00:14.0: PME# supported from D3hot D3cold
[    2.708571] pci 0000:00:16.0: [8086:8cba] type 00 class 0x078000
[    2.712519] pci 0000:00:16.0: reg 0x10: [mem 0xf7c19000-0xf7c1900f 64bit]
[    2.720554] pci 0000:00:16.0: PME# supported from D0 D3hot D3cold
[    2.724593] pci 0000:00:1a.0: [8086:8cad] type 00 class 0x0c0320
[    2.728520] pci 0000:00:1a.0: reg 0x10: [mem 0xf7c17000-0xf7c173ff]
[    2.732573] pci 0000:00:1a.0: PME# supported from D0 D3hot D3cold
[    2.740572] pci 0000:00:1c.0: [8086:8c90] type 01 class 0x060400
[    2.744567] pci 0000:00:1c.0: PME# supported from D0 D3hot D3cold
[    2.748618] pci 0000:00:1c.2: [8086:8c94] type 01 class 0x060400
[    2.752568] pci 0000:00:1c.2: PME# supported from D0 D3hot D3cold
[    2.756616] pci 0000:00:1c.3: [8086:244e] type 01 class 0x060401
[    2.764569] pci 0000:00:1c.3: PME# supported from D0 D3hot D3cold
[    2.768616] pci 0000:00:1c.4: [8086:8c98] type 01 class 0x060400
[    2.772567] pci 0000:00:1c.4: PME# supported from D0 D3hot D3cold
[    2.776619] pci 0000:00:1d.0: [8086:8ca6] type 00 class 0x0c0320
[    2.780520] pci 0000:00:1d.0: reg 0x10: [mem 0xf7c16000-0xf7c163ff]
[    2.788558] pci 0000:00:1d.0: PME# supported from D0 D3hot D3cold
[    2.792574] pci 0000:00:1f.0: [8086:8cc6] type 00 class 0x060100
[    2.796657] pci 0000:00:1f.2: [8086:8c82] type 00 class 0x010601
[    2.800515] pci 0000:00:1f.2: reg 0x10: [io  0xf0b0-0xf0b7]
[    2.804507] pci 0000:00:1f.2: reg 0x14: [io  0xf0a0-0xf0a3]
[    2.808511] pci 0000:00:1f.2: reg 0x18: [io  0xf090-0xf097]
[    2.812507] pci 0000:00:1f.2: reg 0x1c: [io  0xf080-0xf083]
[    2.820507] pci 0000:00:1f.2: reg 0x20: [io  0xf060-0xf07f]
[    2.824507] pci 0000:00:1f.2: reg 0x24: [mem 0xf7c15000-0xf7c157ff]
[    2.828531] pci 0000:00:1f.2: PME# supported from D3hot
[    2.832565] pci 0000:00:1f.3: [8086:8ca2] type 00 class 0x0c0500
[    2.836516] pci 0000:00:1f.3: reg 0x10: [mem 0xf7c14000-0xf7c140ff 64bit]
[    2.840518] pci 0000:00:1f.3: reg 0x20: [io  0xf040-0xf05f]
[    2.844591] pci 0000:00:01.0: PCI bridge to [bus 01]
[    2.848542] pci 0000:02:00.0: [144d:a801] type 00 class 0x010601
[    2.856564] pci 0000:02:00.0: reg 0x24: [mem 0xf7b00000-0xf7b01fff]
[    2.860611] pci 0000:02:00.0: 8.000 Gb/s available PCIe bandwidth, limited by 5.0 GT/s PCIe x2 link at 0000:00:1c.0 (capable of 31.504 Gb/s with 8.0 GT/s PCIe x4 link)
[    2.872586] pci 0000:00:1c.0: PCI bridge to [bus 02]
[    2.876506] pci 0000:00:1c.0:   bridge window [mem 0xf7b00000-0xf7bfffff]
[    2.884546] pci 0000:03:00.0: [10ec:8168] type 00 class 0x020000
[    2.888530] pci 0000:03:00.0: reg 0x10: [io  0xe000-0xe0ff]
[    2.892528] pci 0000:03:00.0: reg 0x18: [mem 0xf7a00000-0xf7a00fff 64bit]
[    2.896517] pci 0000:03:00.0: reg 0x20: [mem 0xf0000000-0xf0003fff 64bit pref]
[    2.904598] pci 0000:03:00.0: supports D1 D2
[    2.907562] pci 0000:03:00.0: PME# supported from D0 D1 D2 D3hot D3cold
[    2.912630] pci 0000:00:1c.2: PCI bridge to [bus 03]
[    2.916505] pci 0000:00:1c.2:   bridge window [io  0xe000-0xefff]
[    2.920505] pci 0000:00:1c.2:   bridge window [mem 0xf7a00000-0xf7afffff]
[    2.924505] pci 0000:00:1c.2:   bridge window [mem 0xf0000000-0xf00fffff 64bit pref]
[    2.932539] pci 0000:04:00.0: [1b21:1080] type 01 class 0x060401
[    2.936660] pci 0000:00:1c.3: PCI bridge to [bus 04-05] (subtractive decode)
[    2.944509] pci 0000:00:1c.3:   bridge window [io  0x0000-0x0cf7 window] (subtractive decode)
[    2.948503] pci 0000:00:1c.3:   bridge window [io  0x0d00-0xffff window] (subtractive decode)
[    2.956503] pci 0000:00:1c.3:   bridge window [mem 0x000a0000-0x000bffff window] (subtractive decode)
[    2.964503] pci 0000:00:1c.3:   bridge window [mem 0x000d0000-0x000d3fff window] (subtractive decode)
[    2.972503] pci 0000:00:1c.3:   bridge window [mem 0x000d4000-0x000d7fff window] (subtractive decode)
[    2.980503] pci 0000:00:1c.3:   bridge window [mem 0x000d8000-0x000dbfff window] (subtractive decode)
[    2.988503] pci 0000:00:1c.3:   bridge window [mem 0x000dc000-0x000dffff window] (subtractive decode)
[    2.996503] pci 0000:00:1c.3:   bridge window [mem 0xdf200000-0xfeafffff window] (subtractive decode)
[    3.004527] pci_bus 0000:05: extended config space not accessible
[    3.008570] pci 0000:04:00.0: PCI bridge to [bus 05] (subtractive decode)
[    3.016518] pci 0000:04:00.0:   bridge window [io  0x0000-0x0cf7 window] (subtractive decode)
[    3.020504] pci 0000:04:00.0:   bridge window [io  0x0d00-0xffff window] (subtractive decode)
[    3.028503] pci 0000:04:00.0:   bridge window [mem 0x000a0000-0x000bffff window] (subtractive decode)
[    3.036504] pci 0000:04:00.0:   bridge window [mem 0x000d0000-0x000d3fff window] (subtractive decode)
[    3.044503] pci 0000:04:00.0:   bridge window [mem 0x000d4000-0x000d7fff window] (subtractive decode)
[    3.052503] pci 0000:04:00.0:   bridge window [mem 0x000d8000-0x000dbfff window] (subtractive decode)
[    3.060503] pci 0000:04:00.0:   bridge window [mem 0x000dc000-0x000dffff window] (subtractive decode)
[    3.068503] pci 0000:04:00.0:   bridge window [mem 0xdf200000-0xfeafffff window] (subtractive decode)
[    3.076549] pci 0000:06:00.0: [8086:10fb] type 00 class 0x020000
[    3.080528] pci 0000:06:00.0: reg 0x10: [mem 0xf7880000-0xf78fffff 64bit]
[    3.088510] pci 0000:06:00.0: reg 0x18: [io  0xd000-0xd01f]
[    3.092522] pci 0000:06:00.0: reg 0x20: [mem 0xf7900000-0xf7903fff 64bit]
[    3.096510] pci 0000:06:00.0: reg 0x30: [mem 0xf7800000-0xf787ffff pref]
[    3.100568] pci 0000:06:00.0: PME# supported from D0 D3hot
[    3.108502] pci 0000:06:00.0: 8.000 Gb/s available PCIe bandwidth, limited by 5.0 GT/s PCIe x2 link at 0000:00:1c.4 (capable of 32.000 Gb/s with 5.0 GT/s PCIe x8 link)
[    3.120573] pci 0000:00:1c.4: PCI bridge to [bus 06]
[    3.124504] pci 0000:00:1c.4:   bridge window [io  0xd000-0xdfff]
[    3.128505] pci 0000:00:1c.4:   bridge window [mem 0xf7800000-0xf79fffff]
[    3.136510] ACPI: PCI Interrupt Link [LNKA] (IRQs 3 4 5 6 7 10 *11 12 14 15)
[    3.140557] ACPI: PCI Interrupt Link [LNKB] (IRQs 3 4 5 6 7 10 11 12 14 15) *0, disabled.
[    3.148557] ACPI: PCI Interrupt Link [LNKC] (IRQs *3 4 5 6 7 10 11 12 14 15)
[    3.152556] ACPI: PCI Interrupt Link [LNKD] (IRQs 3 4 5 6 7 10 11 12 14 *15)
[    3.160556] ACPI: PCI Interrupt Link [LNKE] (IRQs 3 4 *5 6 7 10 11 12 14 15)
[    3.164555] ACPI: PCI Interrupt Link [LNKF] (IRQs 3 4 5 6 7 *10 11 12 14 15)
[    3.172555] ACPI: PCI Interrupt Link [LNKG] (IRQs 3 4 5 6 7 10 11 12 14 15) *0, disabled.
[    3.176556] ACPI: PCI Interrupt Link [LNKH] (IRQs 3 4 5 6 7 10 11 12 *14 15)
[    3.184849] iommu: Default domain type: Translated 
[    3.188515] pci 0000:00:02.0: vgaarb: setting as boot VGA device
[    3.192501] pci 0000:00:02.0: vgaarb: VGA device added: decodes=io+mem,owns=io+mem,locks=none
[    3.200505] pci 0000:00:02.0: vgaarb: bridge control possible
[    3.204502] vgaarb: loaded
[    3.205969] SCSI subsystem initialized
[    3.208514] libata version 3.00 loaded.
[    3.208547] ACPI: bus type USB registered
[    3.211270] usbcore: registered new interface driver usbfs
[    3.216511] usbcore: registered new interface driver hub
[    3.220514] usbcore: registered new device driver usb
[    3.220525] pps_core: LinuxPPS API ver. 1 registered
[    3.224505] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
[    3.232506] PTP clock support registered
[    3.236533] Registered efivars operations
[    3.240551] PCI: Using ACPI for IRQ routing
[    3.244808] PCI: pci_cache_line_size set to 64 bytes
[    3.244851] e820: reserve RAM buffer [mem 0x00058000-0x0005ffff]
[    3.244852] e820: reserve RAM buffer [mem 0x0009f000-0x0009ffff]
[    3.244853] e820: reserve RAM buffer [mem 0xaf089018-0xafffffff]
[    3.244854] e820: reserve RAM buffer [mem 0xaf0bc018-0xafffffff]
[    3.244855] e820: reserve RAM buffer [mem 0xaf0ca018-0xafffffff]
[    3.244856] e820: reserve RAM buffer [mem 0xaf305000-0xafffffff]
[    3.244856] e820: reserve RAM buffer [mem 0xaf775000-0xafffffff]
[    3.244857] e820: reserve RAM buffer [mem 0xd8b7c000-0xdbffffff]
[    3.244858] e820: reserve RAM buffer [mem 0xda000000-0xdbffffff]
[    3.244859] e820: reserve RAM buffer [mem 0x41fe00000-0x41fffffff]
[    3.244955] NetLabel: Initializing
[    3.247052] NetLabel:  domain hash size = 128
[    3.248506] NetLabel:  protocols = UNLABELED CIPSOv4 CALIPSO
[    3.252512] NetLabel:  unlabeled traffic allowed by default
[    3.256714] hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0, 0, 0, 0, 0, 0
[    3.260504] hpet0: 8 comparators, 64-bit 14.318180 MHz counter
[    3.269516] clocksource: Switched to clocksource tsc-early
[    3.383101] FS-Cache: Loaded
[    3.384737] CacheFiles: Loaded
[    3.386503] pnp: PnP ACPI init
[    3.388461] system 00:00: [io  0x0800-0x087f] has been reserved
[    3.393083] system 00:00: Plug and Play ACPI device, IDs PNP0c02 (active)
[    3.393108] pnp 00:01: Plug and Play ACPI device, IDs PNP0b00 (active)
[    3.393147] system 00:02: [io  0x1854-0x1857] has been reserved
[    3.397770] system 00:02: Plug and Play ACPI device, IDs INT3f0d PNP0c02 (active)
[    3.397869] system 00:03: [io  0x0290-0x029f] has been reserved
[    3.402482] system 00:03: [io  0x02a0-0x02af] has been reserved
[    3.407101] system 00:03: [io  0x0a00-0x0aff] has been reserved
[    3.411720] system 00:03: Plug and Play ACPI device, IDs PNP0c02 (active)
[    3.411768] system 00:04: [io  0x04d0-0x04d1] has been reserved
[    3.416384] system 00:04: Plug and Play ACPI device, IDs PNP0c02 (active)
[    3.416625] pnp 00:05: [dma 0 disabled]
[    3.416656] pnp 00:05: Plug and Play ACPI device, IDs PNP0501 (active)
[    3.416710] pnp 00:06: Plug and Play ACPI device, IDs IFX0102 PNP0c31 (active)
[    3.416979] system 00:07: [mem 0xfed1c000-0xfed1ffff] has been reserved
[    3.422291] system 00:07: [mem 0xfed10000-0xfed17fff] has been reserved
[    3.427602] system 00:07: [mem 0xfed18000-0xfed18fff] has been reserved
[    3.432908] system 00:07: [mem 0xfed19000-0xfed19fff] has been reserved
[    3.438219] system 00:07: [mem 0xf8000000-0xfbffffff] has been reserved
[    3.443523] system 00:07: [mem 0xfed20000-0xfed3ffff] has been reserved
[    3.448828] system 00:07: [mem 0xfed90000-0xfed93fff] has been reserved
[    3.454139] system 00:07: [mem 0xfed45000-0xfed8ffff] has been reserved
[    3.459443] system 00:07: [mem 0xff000000-0xffffffff] has been reserved
[    3.464747] system 00:07: [mem 0xfee00000-0xfeefffff] could not be reserved
[    3.470398] system 00:07: [mem 0xf7fe0000-0xf7feffff] has been reserved
[    3.475701] system 00:07: [mem 0xf7ff0000-0xf7ffffff] has been reserved
[    3.481007] system 00:07: Plug and Play ACPI device, IDs PNP0c02 (active)
[    3.481204] pnp: PnP ACPI: found 8 devices
[    3.489528] clocksource: acpi_pm: mask: 0xffffff max_cycles: 0xffffff, max_idle_ns: 2085701024 ns
[    3.497098] pci 0000:00:01.0: PCI bridge to [bus 01]
[    3.500758] pci 0000:00:1c.0: PCI bridge to [bus 02]
[    3.504423] pci 0000:00:1c.0:   bridge window [mem 0xf7b00000-0xf7bfffff]
[    3.509912] pci 0000:00:1c.2: PCI bridge to [bus 03]
[    3.513575] pci 0000:00:1c.2:   bridge window [io  0xe000-0xefff]
[    3.518368] pci 0000:00:1c.2:   bridge window [mem 0xf7a00000-0xf7afffff]
[    3.523853] pci 0000:00:1c.2:   bridge window [mem 0xf0000000-0xf00fffff 64bit pref]
[    3.530292] pci 0000:04:00.0: PCI bridge to [bus 05]
[    3.533970] pci 0000:00:1c.3: PCI bridge to [bus 04-05]
[    3.537898] pci 0000:00:1c.4: PCI bridge to [bus 06]
[    3.541557] pci 0000:00:1c.4:   bridge window [io  0xd000-0xdfff]
[    3.546342] pci 0000:00:1c.4:   bridge window [mem 0xf7800000-0xf79fffff]
[    3.551833] pci_bus 0000:00: resource 4 [io  0x0000-0x0cf7 window]
[    3.556706] pci_bus 0000:00: resource 5 [io  0x0d00-0xffff window]
[    3.561577] pci_bus 0000:00: resource 6 [mem 0x000a0000-0x000bffff window]
[    3.567148] pci_bus 0000:00: resource 7 [mem 0x000d0000-0x000d3fff window]
[    3.572711] pci_bus 0000:00: resource 8 [mem 0x000d4000-0x000d7fff window]
[    3.578275] pci_bus 0000:00: resource 9 [mem 0x000d8000-0x000dbfff window]
[    3.583840] pci_bus 0000:00: resource 10 [mem 0x000dc000-0x000dffff window]
[    3.589490] pci_bus 0000:00: resource 11 [mem 0xdf200000-0xfeafffff window]
[    3.595140] pci_bus 0000:02: resource 1 [mem 0xf7b00000-0xf7bfffff]
[    3.600098] pci_bus 0000:03: resource 0 [io  0xe000-0xefff]
[    3.604360] pci_bus 0000:03: resource 1 [mem 0xf7a00000-0xf7afffff]
[    3.609318] pci_bus 0000:03: resource 2 [mem 0xf0000000-0xf00fffff 64bit pref]
[    3.615230] pci_bus 0000:04: resource 4 [io  0x0000-0x0cf7 window]
[    3.620099] pci_bus 0000:04: resource 5 [io  0x0d00-0xffff window]
[    3.624970] pci_bus 0000:04: resource 6 [mem 0x000a0000-0x000bffff window]
[    3.630534] pci_bus 0000:04: resource 7 [mem 0x000d0000-0x000d3fff window]
[    3.636096] pci_bus 0000:04: resource 8 [mem 0x000d4000-0x000d7fff window]
[    3.641662] pci_bus 0000:04: resource 9 [mem 0x000d8000-0x000dbfff window]
[    3.647225] pci_bus 0000:04: resource 10 [mem 0x000dc000-0x000dffff window]
[    3.652875] pci_bus 0000:04: resource 11 [mem 0xdf200000-0xfeafffff window]
[    3.658527] pci_bus 0000:05: resource 4 [io  0x0000-0x0cf7 window]
[    3.663396] pci_bus 0000:05: resource 5 [io  0x0d00-0xffff window]
[    3.668268] pci_bus 0000:05: resource 6 [mem 0x000a0000-0x000bffff window]
[    3.673830] pci_bus 0000:05: resource 7 [mem 0x000d0000-0x000d3fff window]
[    3.679394] pci_bus 0000:05: resource 8 [mem 0x000d4000-0x000d7fff window]
[    3.684959] pci_bus 0000:05: resource 9 [mem 0x000d8000-0x000dbfff window]
[    3.690530] pci_bus 0000:05: resource 10 [mem 0x000dc000-0x000dffff window]
[    3.696182] pci_bus 0000:05: resource 11 [mem 0xdf200000-0xfeafffff window]
[    3.701831] pci_bus 0000:06: resource 0 [io  0xd000-0xdfff]
[    3.706097] pci_bus 0000:06: resource 1 [mem 0xf7800000-0xf79fffff]
[    3.711162] NET: Registered protocol family 2
[    3.714368] tcp_listen_portaddr_hash hash table entries: 8192 (order: 6, 327680 bytes, linear)
[    3.721733] TCP established hash table entries: 131072 (order: 8, 1048576 bytes, linear)
[    3.728717] TCP bind hash table entries: 65536 (order: 9, 2097152 bytes, linear)
[    3.735208] TCP: Hash tables configured (established 131072 bind 65536)
[    3.740558] UDP hash table entries: 8192 (order: 7, 786432 bytes, linear)
[    3.746203] UDP-Lite hash table entries: 8192 (order: 7, 786432 bytes, linear)
[    3.752305] NET: Registered protocol family 1
[    3.755452] RPC: Registered named UNIX socket transport module.
[    3.760071] RPC: Registered udp transport module.
[    3.763475] RPC: Registered tcp transport module.
[    3.766871] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    3.772010] pci 0000:00:02.0: Video device with shadowed ROM at [mem 0x000c0000-0x000dffff]
[    3.800593] pci 0000:00:1a.0: quirk_usb_early_handoff+0x0/0x603 took 20830 usecs
[    3.828587] pci 0000:00:1d.0: quirk_usb_early_handoff+0x0/0x603 took 21383 usecs
[    3.834697] PCI: CLS 64 bytes, default 64
[    3.837441] Unpacking initramfs...
[    4.030087] Freeing initrd memory: 18924K
[    4.032806] PCI-DMA: Using software bounce buffering for IO (SWIOTLB)
[    4.037939] software IO TLB: mapped [mem 0xc6875000-0xca875000] (64MB)
[    4.043257] RAPL PMU: API unit is 2^-32 Joules, 4 fixed counters, 655360 ms ovfl timer
[    4.049866] RAPL PMU: hw unit of domain pp0-core 2^-14 Joules
[    4.054307] RAPL PMU: hw unit of domain package 2^-14 Joules
[    4.058660] RAPL PMU: hw unit of domain dram 2^-14 Joules
[    4.062748] RAPL PMU: hw unit of domain pp1-gpu 2^-14 Joules
[    4.067860] Initialise system trusted keyrings
[    4.071011] Key type blacklist registered
[    4.073747] workingset: timestamp_bits=40 max_order=22 bucket_order=0
[    4.079010] DLM installed
[    4.080436] NFS: Registering the id_resolver key type
[    4.084187] Key type id_resolver registered
[    4.087068] Key type id_legacy registered
[    4.089805] SGI XFS with ACLs, security attributes, quota, no debug enabled
[    4.099126] NET: Registered protocol family 38
[    4.102274] Key type asymmetric registered
[    4.105067] Asymmetric key parser 'x509' registered
[    4.108638] Key type pkcs7_test registered
[    4.111434] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 249)
[    4.117521] io scheduler mq-deadline registered
[    4.120745] io scheduler kyber registered
[    4.124417] intel_idle: MWAIT substates: 0x42120
[    4.124418] intel_idle: v0.5.1 model 0x3C
[    4.124542] intel_idle: Local APIC timer is reliable in all C-states
[    4.124543] IPMI message handler: version 39.2
[    4.127693] ipmi device interface
[    4.129719] ipmi_si: IPMI System Interface driver
[    4.133162] ipmi_si: Unable to find any System Interface(s)
[    4.137429] ipmi_ssif: IPMI SSIF Interface driver
[    4.140969] input: Power Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0C:00/input/input0
[    4.148013] ACPI: Power Button [PWRB]
[    4.150405] input: Power Button as /devices/LNXSYSTM:00/LNXPWRBN:00/input/input1
[    4.156497] ACPI: Power Button [PWRF]
[    4.159618] thermal LNXTHERM:00: registered as thermal_zone0
[    4.163977] ACPI: Thermal Zone [TZ00] (28 C)
[    4.167199] thermal LNXTHERM:01: registered as thermal_zone1
[    4.171557] ACPI: Thermal Zone [TZ01] (30 C)
[    4.174589] EINJ: EINJ table not found.
[    4.184064] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[    4.189113] 00:05: ttyS0 at I/O 0x3f8 (irq = 4, base_baud = 115200) is a 16550A
[    4.195804] i915 0000:00:02.0: vgaarb: deactivate vga console
[    4.201050] [drm] Supports vblank timestamp caching Rev 2 (21.10.2013).
[    4.206693] i915 0000:00:02.0: vgaarb: changed VGA decodes: olddecodes=io+mem,decodes=io+mem:owns=io+mem
[    4.226176] [drm] Initialized i915 1.6.0 20200430 for 0000:00:02.0 on minor 0
[    4.233345] ACPI: Video Device [GFX0] (multi-head: yes  rom: no  post: no)
[    4.239141] input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:00/input/input2
[    4.248274] loop: module loaded
[    4.250269] ACPI Warning: SystemIO range 0x0000000000001828-0x000000000000182F conflicts with OpRegion 0x0000000000001800-0x000000000000187F (\PMIO) (20200326/utaddress-204)
[    4.260568] i915 0000:00:02.0: [drm] Cannot find any crtc or sizes
[    4.264448] ACPI: If an ACPI driver is available for this device, you should use it instead of the native driver
[    4.278156] ACPI Warning: SystemIO range 0x0000000000001C40-0x0000000000001C4F conflicts with OpRegion 0x0000000000001C00-0x0000000000001FFF (\GPR) (20200326/utaddress-204)
[    4.292218] ACPI: If an ACPI driver is available for this device, you should use it instead of the native driver
[    4.301081] ACPI Warning: SystemIO range 0x0000000000001C30-0x0000000000001C3F conflicts with OpRegion 0x0000000000001C00-0x0000000000001C3F (\GPRL) (20200326/utaddress-204)
[    4.307503] i915 0000:00:02.0: [drm] Cannot find any crtc or sizes
[    4.315249] ACPI Warning: SystemIO range 0x0000000000001C30-0x0000000000001C3F conflicts with OpRegion 0x0000000000001C00-0x0000000000001FFF (\GPR) (20200326/utaddress-204)
[    4.324146] i915 0000:00:02.0: [drm] Cannot find any crtc or sizes
[    4.334185] ACPI: If an ACPI driver is available for this device, you should use it instead of the native driver
[    4.347899] ACPI Warning: SystemIO range 0x0000000000001C00-0x0000000000001C2F conflicts with OpRegion 0x0000000000001C00-0x0000000000001C3F (\GPRL) (20200326/utaddress-204)
[    4.362051] ACPI Warning: SystemIO range 0x0000000000001C00-0x0000000000001C2F conflicts with OpRegion 0x0000000000001C00-0x0000000000001FFF (\GPR) (20200326/utaddress-204)
[    4.376115] ACPI: If an ACPI driver is available for this device, you should use it instead of the native driver
[    4.384972] lpc_ich: Resource conflict(s) found affecting gpio_ich
[    4.389960] ahci 0000:00:1f.2: version 3.0
[    4.390085] ahci 0000:00:1f.2: AHCI 0001.0300 32 slots 4 ports 6 Gbps 0xf impl SATA mode
[    4.396864] ahci 0000:00:1f.2: flags: 64bit ncq led clo pio slum part ems apst 
[    4.436923] scsi host0: ahci
[    4.438569] scsi host1: ahci
[    4.440207] scsi host2: ahci
[    4.441869] scsi host3: ahci
[    4.443488] ata1: SATA max UDMA/133 abar m2048@0xf7c15000 port 0xf7c15100 irq 31
[    4.449575] ata2: SATA max UDMA/133 abar m2048@0xf7c15000 port 0xf7c15180 irq 31
[    4.455664] ata3: SATA max UDMA/133 abar m2048@0xf7c15000 port 0xf7c15200 irq 31
[    4.461748] ata4: SATA max UDMA/133 abar m2048@0xf7c15000 port 0xf7c15280 irq 31
[    4.478234] ahci 0000:02:00.0: AHCI 0001.0300 32 slots 1 ports 6 Gbps 0x1 impl SATA mode
[    4.485020] ahci 0000:02:00.0: flags: 64bit ncq led clo only pio ccc 
[    4.490352] scsi host4: ahci
[    4.491989] ata5: SATA max UDMA/133 abar m8192@0xf7b00000 port 0xf7b00100 irq 32
[    4.498189] tun: Universal TUN/TAP device driver, 1.6
[    4.502030] ixgbe: Intel(R) 10 Gigabit PCI Express Network Driver - version 5.1.0-k
[    4.508394] ixgbe: Copyright (c) 1999-2016 Intel Corporation.
[    4.679612] ixgbe 0000:06:00.0: Multiqueue Enabled: Rx Queue count = 4, Tx Queue count = 4 XDP Queue count = 0
[    4.688584] ixgbe 0000:06:00.0: 8.000 Gb/s available PCIe bandwidth, limited by 5.0 GT/s PCIe x2 link at 0000:00:1c.4 (capable of 32.000 Gb/s with 5.0 GT/s PCIe x8 link)
[    4.702503] ixgbe 0000:06:00.0: MAC: 2, PHY: 14, SFP+: 3, PBA No: Unknown
[    4.707985] ixgbe 0000:06:00.0: 00:1b:21:bb:e6:30
[    4.713008] ixgbe 0000:06:00.0: Intel(R) 10 Gigabit Network Connection
[    4.718330] libphy: ixgbe-mdio: probed
[    4.720807] r8169 0000:03:00.0: can't disable ASPM; OS doesn't have ASPM control
[    4.737408] libphy: r8169: probed
[    4.739557] r8169 0000:03:00.0 eth1: RTL8168g/8111g, f0:79:59:65:de:78, XID 4c0, IRQ 38
[    4.746257] r8169 0000:03:00.0 eth1: jumbo features [frames: 9200 bytes, tx checksumming: ko]
[    4.753492] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    4.758718] ehci-pci: EHCI PCI platform driver
[    4.761968] ehci-pci 0000:00:1a.0: EHCI Host Controller
[    4.765898] ehci-pci 0000:00:1a.0: new USB bus registered, assigned bus number 1
[    4.771993] ehci-pci 0000:00:1a.0: debug port 2
[    4.779123] ehci-pci 0000:00:1a.0: cache line size of 64 is not supported
[    4.782715] ata3: SATA link down (SStatus 0 SControl 300)
[    4.784614] ehci-pci 0000:00:1a.0: irq 20, io mem 0xf7c17000
[    4.788727] ata4: SATA link down (SStatus 0 SControl 300)
[    4.797168] ata2: SATA link down (SStatus 0 SControl 300)
[    4.801321] ata1: SATA link up 6.0 Gbps (SStatus 133 SControl 300)
[    4.807007] ata1.00: ATA-9: ST1000DM003-1CH162, CC49, max UDMA/133
[    4.811555] ata5: SATA link up 6.0 Gbps (SStatus 133 SControl 300)
[    4.811891] ata1.00: 1953525168 sectors, multi 16: LBA48 NCQ (depth 32), AA
[    4.816783] ehci-pci 0000:00:1a.0: USB 2.0 started, EHCI 1.00
[    4.818118] ata5.00: ATA-9: SAMSUNG MZHPV128HDGM-00000, BXW2500Q, max UDMA/133
[    4.818119] ata5.00: 250069680 sectors, multi 1: LBA48 NCQ (depth 32), AA
[    4.818329] ata5.00: configured for UDMA/133
[    4.823220] ata1.00: configured for UDMA/133
[    4.826983] hub 1-0:1.0: USB hub found
[    4.832838] scsi 0:0:0:0: Direct-Access     ATA      ST1000DM003-1CH1 CC49 PQ: 0 ANSI: 5
[    4.838266] hub 1-0:1.0: 2 ports detected
[    4.838498] ehci-pci 0000:00:1d.0: EHCI Host Controller
[    4.841353] sd 0:0:0:0: Attached scsi generic sg0 type 0
[    4.841384] sd 0:0:0:0: [sda] 1953525168 512-byte logical blocks: (1.00 TB/932 GiB)
[    4.841385] sd 0:0:0:0: [sda] 4096-byte physical blocks
[    4.841389] sd 0:0:0:0: [sda] Write Protect is off
[    4.841390] sd 0:0:0:0: [sda] Mode Sense: 00 3a 00 00
[    4.841396] sd 0:0:0:0: [sda] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
[    4.844215] ehci-pci 0000:00:1d.0: new USB bus registered, assigned bus number 2
[    4.846742] scsi 4:0:0:0: Direct-Access     ATA      SAMSUNG MZHPV128 500Q PQ: 0 ANSI: 5
[    4.853453] ehci-pci 0000:00:1d.0: debug port 2
[    4.856260] sd 4:0:0:0: Attached scsi generic sg1 type 0
[    4.856280] sd 4:0:0:0: [sdb] 250069680 512-byte logical blocks: (128 GB/119 GiB)
[    4.856288] sd 4:0:0:0: [sdb] Write Protect is off
[    4.856289] sd 4:0:0:0: [sdb] Mode Sense: 00 3a 00 00
[    4.856300] sd 4:0:0:0: [sdb] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
[    4.863965] ehci-pci 0000:00:1d.0: cache line size of 64 is not supported
[    4.928515] ehci-pci 0000:00:1d.0: irq 23, io mem 0xf7c16000
[    4.934299]  sdb: sdb1 sdb2 sdb3 < sdb5 >
[    4.937255] sd 4:0:0:0: [sdb] Attached SCSI disk
[    4.948547] ehci-pci 0000:00:1d.0: USB 2.0 started, EHCI 1.00
[    4.953161] hub 2-0:1.0: USB hub found
[    4.955610] hub 2-0:1.0: 2 ports detected
[    4.958433] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    4.963318] ohci-pci: OHCI PCI platform driver
[    4.966467] uhci_hcd: USB Universal Host Controller Interface driver
[    4.966588]  sda: sda1 sda2 sda3 sda4 < sda5 >
[    4.971642] xhci_hcd 0000:00:14.0: xHCI Host Controller
[    4.974905] sd 0:0:0:0: [sda] Attached SCSI disk
[    4.978594] xhci_hcd 0000:00:14.0: new USB bus registered, assigned bus number 3
[    4.989035] xhci_hcd 0000:00:14.0: hcc params 0x200077c1 hci version 0x100 quirks 0x0000000000009810
[    4.996865] xhci_hcd 0000:00:14.0: cache line size of 64 is not supported
[    5.002617] hub 3-0:1.0: USB hub found
[    5.005085] hub 3-0:1.0: 14 ports detected
[    5.008431] xhci_hcd 0000:00:14.0: xHCI Host Controller
[    5.012356] xhci_hcd 0000:00:14.0: new USB bus registered, assigned bus number 4
[    5.018449] xhci_hcd 0000:00:14.0: Host supports USB 3.0 SuperSpeed
[    5.023589] hub 4-0:1.0: USB hub found
[    5.026053] hub 4-0:1.0: 6 ports detected
[    5.029204] usbcore: registered new interface driver usb-storage
[    5.033935] i8042: PNP: No PS/2 controller found.
[    5.037464] mousedev: PS/2 mouse device common for all mice
[    5.041842] rtc_cmos 00:01: RTC can wake from S4
[    5.045292] rtc_cmos 00:01: registered as rtc0
[    5.048465] rtc_cmos 00:01: setting system clock to 2020-06-07T01:14:52 UTC (1591492492)
[    5.055257] rtc_cmos 00:01: alarms up to one month, y3k, 242 bytes nvram, hpet irqs
[    5.061627] i2c /dev entries driver
[    5.064050] i801_smbus 0000:00:1f.3: SPD Write Disable is set
[    5.068519] i801_smbus 0000:00:1f.3: SMBus using PCI interrupt
[    5.073564] iTCO_wdt: Intel TCO WatchDog Timer Driver v1.11
[    5.077851] iTCO_wdt: Found a 9 Series TCO device (Version=2, TCOBASE=0x1860)
[    5.083707] tsc: Refined TSC clocksource calibration: 3691.451 MHz
[    5.083757] iTCO_wdt: initialized. heartbeat=30 sec (nowayout=0)
[    5.088589] clocksource: tsc: mask: 0xffffffffffffffff max_cycles: 0x6a6b9449ba6, max_idle_ns: 881590891201 ns
[    5.093302] iTCO_vendor_support: vendor-support=0
[    5.105394] device-mapper: uevent: version 1.0.3
[    5.108737] clocksource: Switched to clocksource tsc
[    5.108762] device-mapper: ioctl: 4.42.0-ioctl (2020-02-27) initialised: dm-devel@redhat.com
[    5.119529] intel_pstate: Intel P-state driver initializing
[    5.124307] usbcore: registered new interface driver usbhid
[    5.128600] usbhid: USB HID core driver
[    5.131690] NET: Registered protocol family 10
[    5.135597] Segment Routing with IPv6
[    5.138056] mip6: Mobile IPv6
[    5.139729] NET: Registered protocol family 17
[    5.144935] NET: Registered protocol family 33
[    5.148079] Key type rxrpc registered
[    5.150445] Key type rxrpc_s registered
[    5.152988] sctp: Hash tables configured (bind 128/128)
[    5.157059] NET: Registered protocol family 21
[    5.160210] Key type dns_resolver registered
[    5.163437] IPI shorthand broadcast: enabled
[    5.166421] sched_clock: Marking stable (4357120504, 809288175)->(5217185576, -50776897)
[    5.173363] registered taskstats version 1
[    5.176158] Loading compiled-in X.509 certificates
[    5.180509] usb 1-1: new high-speed USB device number 2 using ehci-pci
[    5.206707] Loaded X.509 cert 'Build time autogenerated kernel key: c0aa0c87903d5a43603e1674589edab2dd4eb1a6'
[    5.215321] kAFS: Red Hat AFS client v0.1 registering.
[    5.219256] FS-Cache: Netfs 'afs' registered for caching
[    5.223479] Btrfs loaded, crc32c=crc32c-generic, debug=on, integrity-checker=on, ref-verify=on
[    5.231106] hub 1-1:1.0: USB hub found
[    5.233829] hub 1-1:1.0: 6 ports detected
[    5.235068] Key type big_key registered
[    5.241258] Key type encrypted registered
[    5.245471] Freeing unused kernel image (initmem) memory: 1608K
[    5.260549] Write protecting the kernel read-only data: 20480k
[    5.265592] Freeing unused kernel image (text/rodata gap) memory: 2044K
[    5.271093] Freeing unused kernel image (rodata/data gap) memory: 772K
[    5.276343] Run /init as init process
[    5.278703]   with arguments:
[    5.278703]     /init
[    5.278704]   with environment:
[    5.278704]     HOME=/
[    5.278704]     TERM=linux
[    5.278705]     BOOT_IMAGE=/data/tftp/andromeda-vmlinuz
[    5.278705]     ip=enp3s0:dhcp
[    5.292497] systemd[1]: systemd 239 running in system mode. (+PAM +AUDIT +SELINUX +IMA -APPARMOR +SMACK +SYSVINIT +UTMP +LIBCRYPTSETUP +GCRYPT +GNUTLS +ACL +XZ +LZ4 +SECCOMP +BLKID +ELFUTILS +KMOD +IDN2 -IDN +PCRE2 default-hierarchy=hybrid)
[    5.312463] usb 2-1: new high-speed USB device number 2 using ehci-pci
[    5.336576] systemd[1]: Detected architecture x86-64.
[    5.340324] systemd[1]: Running in initial RAM disk.
[    5.345327] hub 2-1:1.0: USB hub found
[    5.347906] hub 2-1:1.0: 8 ports detected
[    5.380585] systemd[1]: Set hostname to <andromeda.procyon.org.uk>.
[    5.422009] systemd[1]: File /usr/lib/systemd/system/systemd-journald.service:26 configures an IP firewall (IPAddressDeny=any), but the local system does not support BPF/cgroup based firewalling.
[    5.438102] systemd[1]: Proceeding WITHOUT firewalling in effect! (This warning is only shown for the first loaded unit using IP firewalling.)
[    5.456109] random: systemd: uninitialized urandom read (16 bytes read)
[    5.461438] systemd[1]: Reached target Slices.
[    5.476586] random: systemd: uninitialized urandom read (16 bytes read)
[    5.481909] systemd[1]: Reached target Local File Systems.
[    5.500585] random: systemd: uninitialized urandom read (16 bytes read)
[    5.506032] systemd[1]: Listening on Journal Socket (/dev/log).
[    5.524597] systemd[1]: Reached target Timers.
[    5.704833] audit: type=1130 audit(1591492493.152:2): pid=1 uid=0 auid=4294967295 ses=4294967295 subj=kernel msg='unit=systemd-journald comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
[    5.740600] audit: type=1130 audit(1591492493.188:3): pid=1 uid=0 auid=4294967295 ses=4294967295 subj=kernel msg='unit=systemd-vconsole-setup comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
[    5.759627] audit: type=1131 audit(1591492493.188:4): pid=1 uid=0 auid=4294967295 ses=4294967295 subj=kernel msg='unit=systemd-vconsole-setup comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
[    5.792571] audit: type=1130 audit(1591492493.240:5): pid=1 uid=0 auid=4294967295 ses=4294967295 subj=kernel msg='unit=systemd-tmpfiles-setup-dev comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
[    5.824597] audit: type=1130 audit(1591492493.272:6): pid=1 uid=0 auid=4294967295 ses=4294967295 subj=kernel msg='unit=systemd-sysctl comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
[    5.888651] audit: type=1130 audit(1591492493.336:7): pid=1 uid=0 auid=4294967295 ses=4294967295 subj=kernel msg='unit=systemd-tmpfiles-setup comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
[    5.920619] audit: type=1130 audit(1591492493.368:8): pid=1 uid=0 auid=4294967295 ses=4294967295 subj=kernel msg='unit=dracut-cmdline comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
[    5.968699] audit: type=1130 audit(1591492493.416:9): pid=1 uid=0 auid=4294967295 ses=4294967295 subj=kernel msg='unit=dracut-pre-udev comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
[    6.020600] audit: type=1130 audit(1591492493.468:10): pid=1 uid=0 auid=4294967295 ses=4294967295 subj=kernel msg='unit=systemd-udevd comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
[    6.144574] r8169 0000:03:00.0 enp3s0: renamed from eth1
[    6.177109] ixgbe 0000:06:00.0 enp6s0: renamed from eth0
[    6.272741] random: fast init done
[    6.564043] EXT4-fs (sdb2): mounted filesystem with ordered data mode. Opts: (null)
[    6.724445] kauditd_printk_skb: 4 callbacks suppressed
[    6.724447] audit: type=1130 audit(1591492494.168:15): pid=1 uid=0 auid=4294967295 ses=4294967295 subj=kernel msg='unit=initrd-parse-etc comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
[    6.748244] audit: type=1131 audit(1591492494.168:16): pid=1 uid=0 auid=4294967295 ses=4294967295 subj=kernel msg='unit=initrd-parse-etc comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
[    6.926226] audit: type=1130 audit(1591492494.372:17): pid=1 uid=0 auid=4294967295 ses=4294967295 subj=kernel msg='unit=dracut-pre-pivot comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
[    6.949110] audit: type=1131 audit(1591492494.396:18): pid=1 uid=0 auid=4294967295 ses=4294967295 subj=kernel msg='unit=dracut-pre-pivot comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
[    6.969876] audit: type=1130 audit(1591492494.416:19): pid=1 uid=0 auid=4294967295 ses=4294967295 subj=kernel msg='unit=systemd-tmpfiles-setup comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
[    6.989403] audit: type=1131 audit(1591492494.416:20): pid=1 uid=0 auid=4294967295 ses=4294967295 subj=kernel msg='unit=systemd-tmpfiles-setup comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
[    7.010288] audit: type=1130 audit(1591492494.460:21): pid=1 uid=0 auid=4294967295 ses=4294967295 subj=kernel msg='unit=dracut-initqueue comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
[    7.029843] audit: type=1131 audit(1591492494.460:22): pid=1 uid=0 auid=4294967295 ses=4294967295 subj=kernel msg='unit=dracut-initqueue comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
[    7.029933] audit: type=1130 audit(1591492494.476:23): pid=1 uid=0 auid=4294967295 ses=4294967295 subj=kernel msg='unit=systemd-sysctl comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
[    7.068200] audit: type=1131 audit(1591492494.476:24): pid=1 uid=0 auid=4294967295 ses=4294967295 subj=kernel msg='unit=systemd-sysctl comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
[    7.199317] systemd-journald[1910]: Received SIGTERM from PID 1 (systemd).
[    7.218785] printk: systemd: 11 output lines suppressed due to ratelimiting
[    7.375860] SELinux:  Permission watch in class filesystem not defined in policy.
[    7.382044] SELinux:  Permission watch in class file not defined in policy.
[    7.387694] SELinux:  Permission watch_mount in class file not defined in policy.
[    7.393866] SELinux:  Permission watch_sb in class file not defined in policy.
[    7.399777] SELinux:  Permission watch_with_perm in class file not defined in policy.
[    7.406293] SELinux:  Permission watch_reads in class file not defined in policy.
[    7.412466] SELinux:  Permission watch in class dir not defined in policy.
[    7.418037] SELinux:  Permission watch_mount in class dir not defined in policy.
[    7.424122] SELinux:  Permission watch_sb in class dir not defined in policy.
[    7.429947] SELinux:  Permission watch_with_perm in class dir not defined in policy.
[    7.436385] SELinux:  Permission watch_reads in class dir not defined in policy.
[    7.442473] SELinux:  Permission watch in class lnk_file not defined in policy.
[    7.448475] SELinux:  Permission watch_mount in class lnk_file not defined in policy.
[    7.454991] SELinux:  Permission watch_sb in class lnk_file not defined in policy.
[    7.461250] SELinux:  Permission watch_with_perm in class lnk_file not defined in policy.
[    7.468112] SELinux:  Permission watch_reads in class lnk_file not defined in policy.
[    7.474632] SELinux:  Permission watch in class chr_file not defined in policy.
[    7.480636] SELinux:  Permission watch_mount in class chr_file not defined in policy.
[    7.487153] SELinux:  Permission watch_sb in class chr_file not defined in policy.
[    7.493411] SELinux:  Permission watch_with_perm in class chr_file not defined in policy.
[    7.500274] SELinux:  Permission watch_reads in class chr_file not defined in policy.
[    7.506795] SELinux:  Permission watch in class blk_file not defined in policy.
[    7.512798] SELinux:  Permission watch_mount in class blk_file not defined in policy.
[    7.519316] SELinux:  Permission watch_sb in class blk_file not defined in policy.
[    7.525572] SELinux:  Permission watch_with_perm in class blk_file not defined in policy.
[    7.532438] SELinux:  Permission watch_reads in class blk_file not defined in policy.
[    7.538955] SELinux:  Permission watch in class sock_file not defined in policy.
[    7.545038] SELinux:  Permission watch_mount in class sock_file not defined in policy.
[    7.551643] SELinux:  Permission watch_sb in class sock_file not defined in policy.
[    7.557988] SELinux:  Permission watch_with_perm in class sock_file not defined in policy.
[    7.564946] SELinux:  Permission watch_reads in class sock_file not defined in policy.
[    7.571553] SELinux:  Permission watch in class fifo_file not defined in policy.
[    7.577643] SELinux:  Permission watch_mount in class fifo_file not defined in policy.
[    7.584245] SELinux:  Permission watch_sb in class fifo_file not defined in policy.
[    7.590591] SELinux:  Permission watch_with_perm in class fifo_file not defined in policy.
[    7.597542] SELinux:  Permission watch_reads in class fifo_file not defined in policy.
[    7.604239] SELinux:  Class xdp_socket not defined in policy.
[    7.608678] SELinux:  Class perf_event not defined in policy.
[    7.613115] SELinux:  Class lockdown not defined in policy.
[    7.617379] SELinux: the above unknown classes and permissions will be allowed
[    7.623300] SELinux:  policy capability network_peer_controls=1
[    7.627908] SELinux:  policy capability open_perms=1
[    7.631566] SELinux:  policy capability extended_socket_class=1
[    7.636177] SELinux:  policy capability always_check_network=0
[    7.640701] SELinux:  policy capability cgroup_seclabel=1
[    7.644791] SELinux:  policy capability nnp_nosuid_transition=1
[    7.649402] SELinux:  policy capability genfs_seclabel_symlinks=0
[    7.684944] systemd[1]: Successfully loaded SELinux policy in 416.158ms.
[    7.754705] systemd[1]: Relabelled /dev, /run and /sys/fs/cgroup in 52.855ms.
[    7.762864] systemd[1]: systemd 239 running in system mode. (+PAM +AUDIT +SELINUX +IMA -APPARMOR +SMACK +SYSVINIT +UTMP +LIBCRYPTSETUP +GCRYPT +GNUTLS +ACL +XZ +LZ4 +SECCOMP +BLKID +ELFUTILS +KMOD +IDN2 -IDN +PCRE2 default-hierarchy=hybrid)
[    7.800637] systemd[1]: Detected architecture x86-64.
[    7.805413] systemd[1]: Set hostname to <andromeda.procyon.org.uk>.
[    7.871918] systemd[1]: File /usr/lib/systemd/system/systemd-journald.service:26 configures an IP firewall (IPAddressDeny=any), but the local system does not support BPF/cgroup based firewalling.
[    7.887999] systemd[1]: Proceeding WITHOUT firewalling in effect! (This warning is only shown for the first loaded unit using IP firewalling.)
[    8.011700] systemd[1]: Stopped Switch Root.
[    8.014934] systemd[1]: systemd-journald.service: Service has no hold-off time (RestartSec=0), scheduling restart.
[    8.025363] systemd[1]: systemd-journald.service: Scheduled restart job, restart counter is at 1.
[    8.034702] systemd[1]: Stopped Journal Service.
[    8.039155] systemd[1]: Starting Journal Service...
[    8.082722] EXT4-fs (sdb2): re-mounted. Opts: (null)
[    8.126253] systemd-journald[3397]: Received request to flush runtime journal from PID 1
[    8.140536] Adding 67108860k swap on /dev/sda1.  Priority:-2 extents:1 across:67108860k 
[    8.660947] EXT4-fs (sdb1): mounted filesystem with ordered data mode. Opts: (null)
[    8.665412] EXT4-fs (sdb5): mounted filesystem with ordered data mode. Opts: (null)
[    8.667800] ext4 filesystem being mounted at /boot supports timestamps until 2038 (0x7fffffff)
[    9.311410] Generic FE-GE Realtek PHY r8169-300:00: attached PHY driver [Generic FE-GE Realtek PHY] (mii_bus:phy_addr=r8169-300:00, irq=IGNORE)
[    9.433402] r8169 0000:03:00.0 enp3s0: Link is Down
[    9.462639] ixgbe 0000:06:00.0: registered PHC device on enp6s0
[    9.648542] ixgbe 0000:06:00.0 enp6s0: detected SFP+: 3
[    9.996542] ixgbe 0000:06:00.0 enp6s0: NIC Link is Up 10 Gbps, Flow Control: RX/TX
[   10.003072] IPv6: ADDRCONF(NETDEV_CHANGE): enp6s0: link becomes ready
[   10.047533] random: crng init done
[   10.049646] random: 7 urandom warning(s) missed due to ratelimiting
[   10.288558] ixgbe 0000:06:00.0 enp6s0: detected SFP+: 3
[   10.333072] virbr0: port 1(virbr0-nic) entered blocking state
[   10.337526] virbr0: port 1(virbr0-nic) entered disabled state
[   10.342031] device virbr0-nic entered promiscuous mode
[   10.421249] ixgbe 0000:06:00.0 enp6s0: NIC Link is Up 10 Gbps, Flow Control: RX/TX
[   10.457505] device virbr0-nic left promiscuous mode
[   10.461093] virbr0: port 1(virbr0-nic) entered disabled state
[   12.185669] r8169 0000:03:00.0 enp3s0: Link is Up - 1Gbps/Full - flow control rx/tx
[   12.192099] IPv6: ADDRCONF(NETDEV_CHANGE): enp3s0: link becomes ready

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
