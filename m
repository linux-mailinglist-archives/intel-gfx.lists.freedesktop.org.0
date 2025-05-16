Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E8CABBE7F
	for <lists+intel-gfx@lfdr.de>; Mon, 19 May 2025 15:00:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BEB210E252;
	Mon, 19 May 2025 13:00:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="lrxd+6hv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBE1510EAC1
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 May 2025 13:42:28 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 57EF6A4E7E2;
 Fri, 16 May 2025 13:42:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71791C4CEE4;
 Fri, 16 May 2025 13:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1747402947;
 bh=aLYDJlTT7IRM0qT71WmfkZAWJ+7/1EpwdPBNvOb6nNk=;
 h=Date:From:To:Cc:Subject:From;
 b=lrxd+6hvJoHrmB12RX7yPrq4/RmCH0WqRup9D26kWG7I7U+KJaWAQru1JvLgc0cv0
 IAzFZQZlCE/7KFEOq17SQrkbF6HXkojVfpfrSNRtcsNdANBMu+okujcq2HcwDzCN8S
 JBKj8R8NChnuaqYsqZwODCAxMDTU5hHBaUy4se7F4mjLEhmsvtifRWw4wzIg8imy8u
 O0Xty0D0LmQTF14z8fPd8SQE7ennmFgM7bLoo6q90weIH8+vVWqqJuUOUivm5D7ezT
 6uEkBTqYYPieVkiSLqLIKlpfuHFgit2XGqSBqv9DLK3/vtdrUVPPsPHmI+Mz/EPSh7
 KL/sHAr4ETXeA==
Date: Fri, 16 May 2025 15:42:22 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Damien Le Moal <dlemoal@kernel.org>, kernel-dev@rsta79.anonaddy.me
Cc: linux-ide@vger.kernel.org, intel-gfx@lists.freedesktop.org
Subject: ahci + intel iGPU problems
Message-ID: <aCdAvkKOfBEQCnZd@ryzen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Approved-At: Mon, 19 May 2025 13:00:14 +0000
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello there,

This bug report came in to Serial ATA bugzilla recently:
https://bugzilla.kernel.org/show_bug.cgi?id=220111

The user claims to have bisected a problem to commit
7627a0edef54 ("ata: ahci: Drop low power policy board type")

However, when looking at the dmesg from:
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14213
(see dmesg inlined at the end of this email), I cannot see a
single AHCI, SCSI or libata timeout, or any other error that
would indicate that there is a problem with the drive.

I do however see a bunch of i915 timeouts.


What happens if you include the i915 and any eventual firmware
for i915 in your initramfs?


Kind regards,
Niklas



May 02 08:02:43 dom0 kernel: Linux version 6.12.21-1.qubes.fc37.x86_64 (mockbuild@f95d19f3373b43faae4cae417a952c59) (gcc (GCC) 12.3.1 20230508 (Red Hat 12.3.1-1), GNU ld version 2.38-27.fc37) #1 SMP PREEMPT_DYNAMIC Fri Apr 25 08:58:31 EDT 2025
May 02 08:02:43 dom0 kernel: Command line: placeholder root=/dev/mapper/qubes_dom0-root ro rd.lvm.lv=qubes_dom0/root rd.lvm.lv=qubes_dom0/swap plymouth.ignore-serial-consoles 6.6.77-1.qubes.fc37.x86_64 x86_64 rhgb quiet usbcore.authorized_default=0 drm.debug=0xe log_buf_len=4M ignore_loglevel
May 02 08:02:43 dom0 kernel: Released 0 page(s)
May 02 08:02:43 dom0 kernel: BIOS-provided physical RAM map:
May 02 08:02:43 dom0 kernel: Xen: [mem 0x0000000000000000-0x000000000007ffff] usable
May 02 08:02:43 dom0 kernel: Xen: [mem 0x0000000000080000-0x00000000000fffff] reserved
May 02 08:02:43 dom0 kernel: Xen: [mem 0x0000000000100000-0x0000000087bfdfff] usable
May 02 08:02:43 dom0 kernel: Xen: [mem 0x0000000087bfe000-0x0000000089f09fff] reserved
May 02 08:02:43 dom0 kernel: Xen: [mem 0x0000000089f0a000-0x0000000089f86fff] ACPI data
May 02 08:02:43 dom0 kernel: Xen: [mem 0x0000000089f87000-0x000000008a40cfff] ACPI NVS
May 02 08:02:43 dom0 kernel: Xen: [mem 0x000000008a40d000-0x000000008ac0dfff] reserved
May 02 08:02:43 dom0 kernel: Xen: [mem 0x000000008ac0e000-0x000000008ac0efff] usable
May 02 08:02:43 dom0 kernel: Xen: [mem 0x000000008ac0f000-0x000000008fffffff] reserved
May 02 08:02:43 dom0 kernel: Xen: [mem 0x00000000e0000000-0x00000000efffffff] reserved
May 02 08:02:43 dom0 kernel: Xen: [mem 0x00000000fe000000-0x00000000fe010fff] reserved
May 02 08:02:43 dom0 kernel: Xen: [mem 0x00000000fec00000-0x00000000fec00fff] reserved
May 02 08:02:43 dom0 kernel: Xen: [mem 0x00000000fed00000-0x00000000fed03fff] reserved
May 02 08:02:43 dom0 kernel: Xen: [mem 0x00000000fed90000-0x00000000fed91fff] reserved
May 02 08:02:43 dom0 kernel: Xen: [mem 0x00000000fee00000-0x00000000feefffff] reserved
May 02 08:02:43 dom0 kernel: Xen: [mem 0x00000000ff000000-0x00000000ffffffff] reserved
May 02 08:02:43 dom0 kernel: Xen: [mem 0x0000000100000000-0x0000000178480fff] usable
May 02 08:02:43 dom0 kernel: printk: debug: ignoring loglevel setting.
May 02 08:02:43 dom0 kernel: NX (Execute Disable) protection: active
May 02 08:02:43 dom0 kernel: APIC: Static calls initialized
May 02 08:02:43 dom0 kernel: SMBIOS 3.2.1 present.
May 02 08:02:43 dom0 kernel: DMI: ASUSTeK COMPUTER INC. ASUSPRO D840MB_M840SA/D840MB, BIOS 320 02/08/2023
May 02 08:02:43 dom0 kernel: DMI: Memory slots populated: 2/4
May 02 08:02:43 dom0 kernel: Hypervisor detected: Xen PV
May 02 08:02:43 dom0 kernel: Xen PV: Detected 8 vCPUS
May 02 08:02:43 dom0 kernel: tsc: Detected 3000.004 MHz processor
May 02 08:02:43 dom0 kernel: e820: update [mem 0x00000000-0x00000fff] usable ==> reserved
May 02 08:02:43 dom0 kernel: e820: remove [mem 0x000a0000-0x000fffff] usable
May 02 08:02:43 dom0 kernel: last_pfn = 0x178481 max_arch_pfn = 0x400000000
May 02 08:02:43 dom0 kernel: MTRR map: 2 entries (0 fixed + 2 variable; max 20), built from 10 variable MTRRs
May 02 08:02:43 dom0 kernel: MTRRs set to read-only
May 02 08:02:43 dom0 kernel: x86/PAT: Configuration [0-7]: WB  WC  UC- UC  WB  WP  UC- WT  
May 02 08:02:43 dom0 kernel: last_pfn = 0x8ac0f max_arch_pfn = 0x400000000
May 02 08:02:43 dom0 kernel: printk: log_buf_len: 4194304 bytes
May 02 08:02:43 dom0 kernel: printk: early log buf free: 259528(99%)
May 02 08:02:43 dom0 kernel: RAMDISK: [mem 0x04000000-0x06668fff]
May 02 08:02:43 dom0 kernel: ACPI: Early table checksum verification disabled
May 02 08:02:43 dom0 kernel: ACPI: RSDP 0x00000000000F05B0 000024 (v02 _ASUS_)
May 02 08:02:43 dom0 kernel: ACPI: XSDT 0x0000000089F230B0 0000DC (v01 _ASUS_ Notebook 01072009 AMI  00010013)
May 02 08:02:43 dom0 kernel: ACPI: FACP 0x0000000089F60D30 000114 (v06 _ASUS_ Desktop  01072009 AMI  00010013)
May 02 08:02:43 dom0 kernel: ACPI: DSDT 0x0000000089F23218 03DB17 (v02 _ASUS_ Desktop  01072009 INTL 20160527)
May 02 08:02:43 dom0 kernel: ACPI: FACS 0x000000008A40B080 000040
May 02 08:02:43 dom0 kernel: ACPI: APIC 0x0000000089F60E48 0000BC (v04 _ASUS_ Desktop  01072009 AMI  00010013)
May 02 08:02:43 dom0 kernel: ACPI: FPDT 0x0000000089F60F08 000044 (v01 _ASUS_ Desktop  01072009 AMI  00010013)
May 02 08:02:43 dom0 kernel: ACPI: FIDT 0x0000000089F60F50 00009C (v01 _ASUS_ Desktop  01072009 AMI  00010013)
May 02 08:02:43 dom0 kernel: ACPI: MCFG 0x0000000089F60FF0 00003C (v01 _ASUS_ Desktop  01072009 MSFT 00000097)
May 02 08:02:43 dom0 kernel: ACPI: SSDT 0x0000000089F61030 001B5F (v02 CpuRef CpuSsdt  00003000 INTL 20160527)
May 02 08:02:43 dom0 kernel: ACPI: SLIC 0x0000000089F62B90 000176 (v01 _ASUS_ Notebook 01072009 ASUS 00000001)
May 02 08:02:43 dom0 kernel: ACPI: MSDM 0x0000000089F62D08 000055 (v03 _ASUS_ Notebook 01072009 ASUS 00000001)
May 02 08:02:43 dom0 kernel: ACPI: SSDT 0x0000000089F62D60 003099 (v02 SaSsdt SaSsdt   00003000 INTL 20160527)
May 02 08:02:43 dom0 kernel: ACPI: HPET 0x0000000089F65E00 000038 (v01 _ASUS_ Desktop  00000002      01000013)
May 02 08:02:43 dom0 kernel: ACPI: SSDT 0x0000000089F65E38 000FAE (v02 _ASUS_ Ther_Rvp 00001000 INTL 20160527)
May 02 08:02:43 dom0 kernel: ACPI: SSDT 0x0000000089F66DE8 002FCD (v02 INTEL  xh_cfsd4 00000000 INTL 20160527)
May 02 08:02:43 dom0 kernel: ACPI: UEFI 0x0000000089F69DB8 000042 (v01 _ASUS_ Desktop  00000002      01000013)
May 02 08:02:43 dom0 kernel: ACPI: LPIT 0x0000000089F69E00 000094 (v01 _ASUS_ Desktop  00000002      01000013)
May 02 08:02:43 dom0 kernel: ACPI: SSDT 0x0000000089F69E98 0027DE (v02 _ASUS_ PtidDevc 00001000 INTL 20160527)
May 02 08:02:43 dom0 kernel: ACPI: SSDT 0x0000000089F6C678 0014E2 (v02 _ASUS_ TbtTypeC 00000000 INTL 20160527)
May 02 08:02:43 dom0 kernel: ACPI: DBGP 0x0000000089F6DB60 000034 (v01 _ASUS_ Desktop  00000002      01000013)
May 02 08:02:43 dom0 kernel: ACPI: DBG2 0x0000000089F6DB98 000054 (v00 _ASUS_ Desktop  00000002      01000013)
May 02 08:02:43 dom0 kernel: ACPI: RMAD 0x0000000089F6DBF0 0000C8 (v01 INTEL  EDK2     00000002      01000013)
May 02 08:02:43 dom0 kernel: ACPI: SSDT 0x0000000089F6DCB8 000144 (v02 Intel  ADebTabl 00001000 INTL 20160527)
May 02 08:02:43 dom0 kernel: ACPI: TPM2 0x0000000089F6DE00 000034 (v04 _ASUS_ Desktop  00000001 AMI  00000000)
May 02 08:02:43 dom0 kernel: ACPI: ASF! 0x0000000089F6DE38 0000A0 (v32 _ASUS_ Desktop  00000002      01000013)
May 02 08:02:43 dom0 kernel: ACPI: WSMT 0x0000000089F6DED8 000028 (v01 _ASUS_ Desktop  01072009 AMI  00010013)
May 02 08:02:43 dom0 kernel: ACPI: Reserving FACP table memory at [mem 0x89f60d30-0x89f60e43]
May 02 08:02:43 dom0 kernel: ACPI: Reserving DSDT table memory at [mem 0x89f23218-0x89f60d2e]
May 02 08:02:43 dom0 kernel: ACPI: Reserving FACS table memory at [mem 0x8a40b080-0x8a40b0bf]
May 02 08:02:43 dom0 kernel: ACPI: Reserving APIC table memory at [mem 0x89f60e48-0x89f60f03]
May 02 08:02:43 dom0 kernel: ACPI: Reserving FPDT table memory at [mem 0x89f60f08-0x89f60f4b]
May 02 08:02:43 dom0 kernel: ACPI: Reserving FIDT table memory at [mem 0x89f60f50-0x89f60feb]
May 02 08:02:43 dom0 kernel: ACPI: Reserving MCFG table memory at [mem 0x89f60ff0-0x89f6102b]
May 02 08:02:43 dom0 kernel: ACPI: Reserving SSDT table memory at [mem 0x89f61030-0x89f62b8e]
May 02 08:02:43 dom0 kernel: ACPI: Reserving SLIC table memory at [mem 0x89f62b90-0x89f62d05]
May 02 08:02:43 dom0 kernel: ACPI: Reserving MSDM table memory at [mem 0x89f62d08-0x89f62d5c]
May 02 08:02:43 dom0 kernel: ACPI: Reserving SSDT table memory at [mem 0x89f62d60-0x89f65df8]
May 02 08:02:43 dom0 kernel: ACPI: Reserving HPET table memory at [mem 0x89f65e00-0x89f65e37]
May 02 08:02:43 dom0 kernel: ACPI: Reserving SSDT table memory at [mem 0x89f65e38-0x89f66de5]
May 02 08:02:43 dom0 kernel: ACPI: Reserving SSDT table memory at [mem 0x89f66de8-0x89f69db4]
May 02 08:02:43 dom0 kernel: ACPI: Reserving UEFI table memory at [mem 0x89f69db8-0x89f69df9]
May 02 08:02:43 dom0 kernel: ACPI: Reserving LPIT table memory at [mem 0x89f69e00-0x89f69e93]
May 02 08:02:43 dom0 kernel: ACPI: Reserving SSDT table memory at [mem 0x89f69e98-0x89f6c675]
May 02 08:02:43 dom0 kernel: ACPI: Reserving SSDT table memory at [mem 0x89f6c678-0x89f6db59]
May 02 08:02:43 dom0 kernel: ACPI: Reserving DBGP table memory at [mem 0x89f6db60-0x89f6db93]
May 02 08:02:43 dom0 kernel: ACPI: Reserving DBG2 table memory at [mem 0x89f6db98-0x89f6dbeb]
May 02 08:02:43 dom0 kernel: ACPI: Reserving RMAD table memory at [mem 0x89f6dbf0-0x89f6dcb7]
May 02 08:02:43 dom0 kernel: ACPI: Reserving SSDT table memory at [mem 0x89f6dcb8-0x89f6ddfb]
May 02 08:02:43 dom0 kernel: ACPI: Reserving TPM2 table memory at [mem 0x89f6de00-0x89f6de33]
May 02 08:02:43 dom0 kernel: ACPI: Reserving ASF! table memory at [mem 0x89f6de38-0x89f6ded7]
May 02 08:02:43 dom0 kernel: ACPI: Reserving WSMT table memory at [mem 0x89f6ded8-0x89f6deff]
May 02 08:02:43 dom0 kernel: APIC: Switched APIC routing to: Xen PV
May 02 08:02:43 dom0 kernel: NUMA turned off
May 02 08:02:43 dom0 kernel: Faking a node at [mem 0x0000000000000000-0x0000000178480fff]
May 02 08:02:43 dom0 kernel: NODE_DATA(0) allocated [mem 0x861fe2c0-0x86228fff]
May 02 08:02:43 dom0 kernel: Zone ranges:
May 02 08:02:43 dom0 kernel:   DMA      [mem 0x0000000000001000-0x0000000000ffffff]
May 02 08:02:43 dom0 kernel:   DMA32    [mem 0x0000000001000000-0x00000000ffffffff]
May 02 08:02:43 dom0 kernel:   Normal   [mem 0x0000000100000000-0x0000000178480fff]
May 02 08:02:43 dom0 kernel:   Device   empty
May 02 08:02:43 dom0 kernel: Movable zone start for each node
May 02 08:02:43 dom0 kernel: Early memory node ranges
May 02 08:02:43 dom0 kernel:   node   0: [mem 0x0000000000001000-0x000000000007ffff]
May 02 08:02:43 dom0 kernel:   node   0: [mem 0x0000000000100000-0x0000000087bfdfff]
May 02 08:02:43 dom0 kernel:   node   0: [mem 0x000000008ac0e000-0x000000008ac0efff]
May 02 08:02:43 dom0 kernel:   node   0: [mem 0x0000000100000000-0x0000000178480fff]
May 02 08:02:43 dom0 kernel: Initmem setup node 0 [mem 0x0000000000001000-0x0000000178480fff]
May 02 08:02:43 dom0 kernel: On node 0, zone DMA: 1 pages in unavailable ranges
May 02 08:02:43 dom0 kernel: On node 0, zone DMA: 128 pages in unavailable ranges
May 02 08:02:43 dom0 kernel: On node 0, zone DMA32: 12304 pages in unavailable ranges
May 02 08:02:43 dom0 kernel: On node 0, zone Normal: 21489 pages in unavailable ranges
May 02 08:02:43 dom0 kernel: On node 0, zone Normal: 31615 pages in unavailable ranges
May 02 08:02:43 dom0 kernel: p2m virtual area at (____ptrval____), size is 40000000
May 02 08:02:43 dom0 kernel: Remapped 492673 page(s)
May 02 08:02:43 dom0 kernel: Remapped 0 non-RAM page(s)
May 02 08:02:43 dom0 kernel: Reserving Intel graphics memory at [mem 0x8c000000-0x8fffffff]
May 02 08:02:43 dom0 kernel: ACPI: PM-Timer IO Port: 0x1808
May 02 08:02:43 dom0 kernel: ACPI: LAPIC_NMI (acpi_id[0x01] high edge lint[0x1])
May 02 08:02:43 dom0 kernel: ACPI: LAPIC_NMI (acpi_id[0x02] high edge lint[0x1])
May 02 08:02:43 dom0 kernel: ACPI: LAPIC_NMI (acpi_id[0x03] high edge lint[0x1])
May 02 08:02:43 dom0 kernel: ACPI: LAPIC_NMI (acpi_id[0x04] high edge lint[0x1])
May 02 08:02:43 dom0 kernel: ACPI: LAPIC_NMI (acpi_id[0x05] high edge lint[0x1])
May 02 08:02:43 dom0 kernel: ACPI: LAPIC_NMI (acpi_id[0x06] high edge lint[0x1])
May 02 08:02:43 dom0 kernel: ACPI: LAPIC_NMI (acpi_id[0x07] high edge lint[0x1])
May 02 08:02:43 dom0 kernel: ACPI: LAPIC_NMI (acpi_id[0x08] high edge lint[0x1])
May 02 08:02:43 dom0 kernel: IOAPIC[0]: apic_id 2, version 32, address 0xfec00000, GSI 0-119
May 02 08:02:43 dom0 kernel: ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
May 02 08:02:43 dom0 kernel: ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
May 02 08:02:43 dom0 kernel: ACPI: Using ACPI (MADT) for SMP configuration information
May 02 08:02:43 dom0 kernel: ACPI: HPET id: 0x8086a201 base: 0xfed00000
May 02 08:02:43 dom0 kernel: CPU topo: Max. logical packages:   1
May 02 08:02:43 dom0 kernel: CPU topo: Max. logical dies:       1
May 02 08:02:43 dom0 kernel: CPU topo: Max. dies per package:   1
May 02 08:02:43 dom0 kernel: CPU topo: Max. threads per core:   1
May 02 08:02:43 dom0 kernel: CPU topo: Num. cores per package:     8
May 02 08:02:43 dom0 kernel: CPU topo: Num. threads per package:   8
May 02 08:02:43 dom0 kernel: CPU topo: Allowing 8 present CPUs plus 0 hotplug CPUs
May 02 08:02:43 dom0 kernel: [mem 0x90000000-0xdfffffff] available for PCI devices
May 02 08:02:43 dom0 kernel: Booting kernel on Xen
May 02 08:02:43 dom0 kernel: Xen version: 4.17.5 (preserve-AD)
May 02 08:02:43 dom0 kernel: clocksource: refined-jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 1910969940391419 ns
May 02 08:02:43 dom0 kernel: setup_percpu: NR_CPUS:8192 nr_cpumask_bits:8 nr_cpu_ids:8 nr_node_ids:1
May 02 08:02:43 dom0 kernel: percpu: Embedded 88 pages/cpu s237568 r8192 d114688 u524288
May 02 08:02:43 dom0 kernel: pcpu-alloc: s237568 r8192 d114688 u524288 alloc=1*2097152
May 02 08:02:43 dom0 kernel: pcpu-alloc: [0] 0 1 2 3 [0] 4 5 6 7 
May 02 08:02:43 dom0 kernel: xen: PV spinlocks enabled
May 02 08:02:43 dom0 kernel: PV qspinlock hash table entries: 256 (order: 0, 4096 bytes, linear)
May 02 08:02:43 dom0 kernel: Kernel command line: placeholder root=/dev/mapper/qubes_dom0-root ro rd.lvm.lv=qubes_dom0/root rd.lvm.lv=qubes_dom0/swap plymouth.ignore-serial-consoles 6.6.77-1.qubes.fc37.x86_64 x86_64 rhgb quiet usbcore.authorized_default=0 drm.debug=0xe log_buf_len=4M ignore_loglevel
May 02 08:02:43 dom0 kernel: Unknown kernel command line parameters "placeholder x86_64 rhgb", will be passed to user space.
May 02 08:02:43 dom0 kernel: random: crng init done
May 02 08:02:43 dom0 kernel: Dentry cache hash table entries: 262144 (order: 9, 2097152 bytes, linear)
May 02 08:02:43 dom0 kernel: Inode-cache hash table entries: 131072 (order: 8, 1048576 bytes, linear)
May 02 08:02:43 dom0 kernel: Fallback order for Node 0: 0 
May 02 08:02:43 dom0 kernel: Built 1 zonelists, mobility grouping on.  Total pages: 1048575
May 02 08:02:43 dom0 kernel: Policy zone: Normal
May 02 08:02:43 dom0 kernel: mem auto-init: stack:all(zero), heap alloc:on, heap free:on
May 02 08:02:43 dom0 kernel: mem auto-init: clearing system memory may take some time...
May 02 08:02:43 dom0 kernel: software IO TLB: area num 8.
May 02 08:02:43 dom0 kernel: SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=8, Nodes=1
May 02 08:02:43 dom0 kernel: ftrace: allocating 59421 entries in 233 pages
May 02 08:02:43 dom0 kernel: ftrace: allocated 233 pages with 5 groups
May 02 08:02:43 dom0 kernel: Dynamic Preempt: full
May 02 08:02:43 dom0 kernel: rcu: Preemptible hierarchical RCU implementation.
May 02 08:02:43 dom0 kernel: rcu:         RCU event tracing is enabled.
May 02 08:02:43 dom0 kernel: rcu:         RCU restricting CPUs from NR_CPUS=8192 to nr_cpu_ids=8.
May 02 08:02:43 dom0 kernel:         Trampoline variant of Tasks RCU enabled.
May 02 08:02:43 dom0 kernel:         Rude variant of Tasks RCU enabled.
May 02 08:02:43 dom0 kernel:         Tracing variant of Tasks RCU enabled.
May 02 08:02:43 dom0 kernel: rcu: RCU calculated value of scheduler-enlistment delay is 100 jiffies.
May 02 08:02:43 dom0 kernel: rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=8
May 02 08:02:43 dom0 kernel: RCU Tasks: Setting shift to 3 and lim to 1 rcu_task_cb_adjust=1 rcu_task_cpu_ids=8.
May 02 08:02:43 dom0 kernel: RCU Tasks Rude: Setting shift to 3 and lim to 1 rcu_task_cb_adjust=1 rcu_task_cpu_ids=8.
May 02 08:02:43 dom0 kernel: RCU Tasks Trace: Setting shift to 3 and lim to 1 rcu_task_cb_adjust=1 rcu_task_cpu_ids=8.
May 02 08:02:43 dom0 kernel: NR_IRQS: 524544, nr_irqs: 2048, preallocated irqs: 16
May 02 08:02:43 dom0 kernel: xen:events: Using FIFO-based ABI
May 02 08:02:43 dom0 kernel: xen: --> pirq=1 -> irq=1 (gsi=1)
May 02 08:02:43 dom0 kernel: xen: --> pirq=2 -> irq=2 (gsi=2)
May 02 08:02:43 dom0 kernel: xen: --> pirq=3 -> irq=3 (gsi=3)
May 02 08:02:43 dom0 kernel: xen: --> pirq=4 -> irq=4 (gsi=4)
May 02 08:02:43 dom0 kernel: xen: --> pirq=5 -> irq=5 (gsi=5)
May 02 08:02:43 dom0 kernel: xen: --> pirq=6 -> irq=6 (gsi=6)
May 02 08:02:43 dom0 kernel: xen: --> pirq=7 -> irq=7 (gsi=7)
May 02 08:02:43 dom0 kernel: xen: --> pirq=8 -> irq=8 (gsi=8)
May 02 08:02:43 dom0 kernel: xen: --> pirq=9 -> irq=9 (gsi=9)
May 02 08:02:43 dom0 kernel: xen: --> pirq=10 -> irq=10 (gsi=10)
May 02 08:02:43 dom0 kernel: xen: --> pirq=11 -> irq=11 (gsi=11)
May 02 08:02:43 dom0 kernel: xen: --> pirq=12 -> irq=12 (gsi=12)
May 02 08:02:43 dom0 kernel: xen: --> pirq=13 -> irq=13 (gsi=13)
May 02 08:02:43 dom0 kernel: xen: --> pirq=14 -> irq=14 (gsi=14)
May 02 08:02:43 dom0 kernel: xen: --> pirq=15 -> irq=15 (gsi=15)
May 02 08:02:43 dom0 kernel: rcu: srcu_init: Setting srcu_struct sizes based on contention.
May 02 08:02:43 dom0 kernel: kfence: initialized - using 2097152 bytes for 255 objects at 0x(____ptrval____)-0x(____ptrval____)
May 02 08:02:43 dom0 kernel: Console: colour VGA+ 80x25
May 02 08:02:43 dom0 kernel: printk: legacy console [tty0] enabled
May 02 08:02:43 dom0 kernel: printk: legacy console [hvc0] enabled
May 02 08:02:43 dom0 kernel: ACPI: Core revision 20240827
May 02 08:02:43 dom0 kernel: clocksource: xen: mask: 0xffffffffffffffff max_cycles: 0x1cd42e4dffb, max_idle_ns: 881590591483 ns
May 02 08:02:43 dom0 kernel: Xen: using vcpuop timer interface
May 02 08:02:43 dom0 kernel: installing Xen timer for CPU 0
May 02 08:02:43 dom0 kernel: clocksource: tsc-early: mask: 0xffffffffffffffff max_cycles: 0x2b3e4942f25, max_idle_ns: 440795326592 ns
May 02 08:02:43 dom0 kernel: Calibrating delay loop (skipped), value calculated using timer frequency.. 6000.00 BogoMIPS (lpj=3000004)
May 02 08:02:43 dom0 kernel: Last level iTLB entries: 4KB 128, 2MB 8, 4MB 8
May 02 08:02:43 dom0 kernel: Last level dTLB entries: 4KB 64, 2MB 32, 4MB 32, 1GB 4
May 02 08:02:43 dom0 kernel: Spectre V1 : Mitigation: usercopy/swapgs barriers and __user pointer sanitization
May 02 08:02:43 dom0 kernel: Spectre V2 : Spectre BHI mitigation: SW BHB clearing on syscall and VM exit
May 02 08:02:43 dom0 kernel: Spectre V2 : Mitigation: Enhanced / Automatic IBRS
May 02 08:02:43 dom0 kernel: Spectre V2 : Spectre v2 / SpectreRSB mitigation: Filling RSB on context switch
May 02 08:02:43 dom0 kernel: Spectre V2 : Spectre v2 / PBRSB-eIBRS: Retire a single CALL on VMEXIT
May 02 08:02:43 dom0 kernel: RETBleed: Mitigation: Enhanced IBRS
May 02 08:02:43 dom0 kernel: Spectre V2 : mitigation: Enabling conditional Indirect Branch Prediction Barrier
May 02 08:02:43 dom0 kernel: Speculative Store Bypass: Mitigation: Speculative Store Bypass disabled via prctl
May 02 08:02:43 dom0 kernel: MMIO Stale Data: Mitigation: Clear CPU buffers
May 02 08:02:43 dom0 kernel: SRBDS: Unknown: Dependent on hypervisor status
May 02 08:02:43 dom0 kernel: x86/fpu: Supporting XSAVE feature 0x001: 'x87 floating point registers'
May 02 08:02:43 dom0 kernel: x86/fpu: Supporting XSAVE feature 0x002: 'SSE registers'
May 02 08:02:43 dom0 kernel: x86/fpu: Supporting XSAVE feature 0x004: 'AVX registers'
May 02 08:02:43 dom0 kernel: x86/fpu: xstate_offset[2]:  576, xstate_sizes[2]:  256
May 02 08:02:43 dom0 kernel: x86/fpu: Enabled xstate features 0x7, context size is 832 bytes, using 'compacted' format.
May 02 08:02:43 dom0 kernel: Freeing SMP alternatives memory: 52K
May 02 08:02:43 dom0 kernel: pid_max: default: 32768 minimum: 301
May 02 08:02:43 dom0 kernel: LSM: initializing lsm=lockdown,capability,yama,ima,evm
May 02 08:02:43 dom0 kernel: Yama: becoming mindful.
May 02 08:02:43 dom0 kernel: Mount-cache hash table entries: 4096 (order: 3, 32768 bytes, linear)
May 02 08:02:43 dom0 kernel: Mountpoint-cache hash table entries: 4096 (order: 3, 32768 bytes, linear)
May 02 08:02:43 dom0 kernel: cpu 0 spinlock event irq 121
May 02 08:02:43 dom0 kernel: VPMU disabled by hypervisor.
May 02 08:02:43 dom0 kernel: Performance Events: unsupported p6 CPU model 158 no PMU driver, software events only.
May 02 08:02:43 dom0 kernel: signal: max sigframe size: 1776
May 02 08:02:43 dom0 kernel: rcu: Hierarchical SRCU implementation.
May 02 08:02:43 dom0 kernel: rcu:         Max phase no-delay instances is 400.
May 02 08:02:43 dom0 kernel: Timer migration: 1 hierarchy levels; 8 children per group; 1 crossnode level
May 02 08:02:43 dom0 kernel: NMI watchdog: Perf NMI watchdog permanently disabled
May 02 08:02:43 dom0 kernel: smp: Bringing up secondary CPUs ...
May 02 08:02:43 dom0 kernel: installing Xen timer for CPU 1
May 02 08:02:43 dom0 kernel: installing Xen timer for CPU 2
May 02 08:02:43 dom0 kernel: installing Xen timer for CPU 3
May 02 08:02:43 dom0 kernel: installing Xen timer for CPU 4
May 02 08:02:43 dom0 kernel: installing Xen timer for CPU 5
May 02 08:02:43 dom0 kernel: installing Xen timer for CPU 6
May 02 08:02:43 dom0 kernel: installing Xen timer for CPU 7
May 02 08:02:43 dom0 kernel: [Firmware Bug]: CPU   1: APIC ID mismatch. CPUID: 0x0001 APIC: 0x0002
May 02 08:02:43 dom0 kernel: cpu 1 spinlock event irq 161
May 02 08:02:43 dom0 kernel: [Firmware Bug]: CPU   2: APIC ID mismatch. CPUID: 0x0002 APIC: 0x0004
May 02 08:02:43 dom0 kernel: cpu 2 spinlock event irq 162
May 02 08:02:43 dom0 kernel: [Firmware Bug]: CPU   3: APIC ID mismatch. CPUID: 0x0003 APIC: 0x0006
May 02 08:02:43 dom0 kernel: cpu 3 spinlock event irq 163
May 02 08:02:43 dom0 kernel: [Firmware Bug]: CPU   4: APIC ID mismatch. CPUID: 0x0004 APIC: 0x0008
May 02 08:02:43 dom0 kernel: cpu 4 spinlock event irq 164
May 02 08:02:43 dom0 kernel: [Firmware Bug]: CPU   5: APIC ID mismatch. CPUID: 0x0005 APIC: 0x000a
May 02 08:02:43 dom0 kernel: cpu 5 spinlock event irq 165
May 02 08:02:43 dom0 kernel: [Firmware Bug]: CPU   6: APIC ID mismatch. CPUID: 0x0006 APIC: 0x000c
May 02 08:02:43 dom0 kernel: cpu 6 spinlock event irq 166
May 02 08:02:43 dom0 kernel: [Firmware Bug]: CPU   7: APIC ID mismatch. CPUID: 0x0007 APIC: 0x000e
May 02 08:02:43 dom0 kernel: cpu 7 spinlock event irq 167
May 02 08:02:43 dom0 kernel: smp: Brought up 1 node, 8 CPUs
May 02 08:02:43 dom0 kernel: Memory: 3909272K/4194300K available (20480K kernel code, 4361K rwdata, 10044K rodata, 5584K init, 5944K bss, 272084K reserved, 0K cma-reserved)
May 02 08:02:43 dom0 kernel: devtmpfs: initialized
May 02 08:02:43 dom0 kernel: x86/mm: Memory block size: 128MB
May 02 08:02:43 dom0 kernel: ACPI: PM: Registering ACPI NVS region [mem 0x89f87000-0x8a40cfff] (4743168 bytes)
May 02 08:02:43 dom0 kernel: clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 1911260446275000 ns
May 02 08:02:43 dom0 kernel: futex hash table entries: 2048 (order: 5, 131072 bytes, linear)
May 02 08:02:43 dom0 kernel: pinctrl core: initialized pinctrl subsystem
May 02 08:02:43 dom0 kernel: PM: RTC time: 12:02:42, date: 2025-05-02
May 02 08:02:43 dom0 kernel: NET: Registered PF_NETLINK/PF_ROUTE protocol family
May 02 08:02:43 dom0 kernel: xen:grant_table: Grant tables using version 1 layout
May 02 08:02:43 dom0 kernel: Grant table initialized
May 02 08:02:43 dom0 kernel: DMA: preallocated 512 KiB GFP_KERNEL pool for atomic allocations
May 02 08:02:43 dom0 kernel: DMA: preallocated 512 KiB GFP_KERNEL|GFP_DMA pool for atomic allocations
May 02 08:02:43 dom0 kernel: DMA: preallocated 512 KiB GFP_KERNEL|GFP_DMA32 pool for atomic allocations
May 02 08:02:43 dom0 kernel: audit: initializing netlink subsys (disabled)
May 02 08:02:43 dom0 kernel: audit: type=2000 audit(1746187363.257:1): state=initialized audit_enabled=0 res=1
May 02 08:02:43 dom0 kernel: thermal_sys: Registered thermal governor 'fair_share'
May 02 08:02:43 dom0 kernel: thermal_sys: Registered thermal governor 'bang_bang'
May 02 08:02:43 dom0 kernel: thermal_sys: Registered thermal governor 'step_wise'
May 02 08:02:43 dom0 kernel: thermal_sys: Registered thermal governor 'user_space'
May 02 08:02:43 dom0 kernel: ACPI FADT declares the system doesn't support PCIe ASPM, so disable it
May 02 08:02:43 dom0 kernel: PCI: ECAM [mem 0xe0000000-0xefffffff] (base 0xe0000000) for domain 0000 [bus 00-ff]
May 02 08:02:43 dom0 kernel: PCI: Using configuration type 1 for base access
May 02 08:02:43 dom0 kernel: kprobes: kprobe jump-optimization is enabled. All kprobes are optimized if possible.
May 02 08:02:43 dom0 kernel: cryptd: max_cpu_qlen set to 1000
May 02 08:02:43 dom0 kernel: raid6: skipped pq benchmark and selected avx2x4
May 02 08:02:43 dom0 kernel: raid6: using avx2x2 recovery algorithm
May 02 08:02:43 dom0 kernel: ACPI: Added _OSI(Module Device)
May 02 08:02:43 dom0 kernel: ACPI: Added _OSI(Processor Device)
May 02 08:02:43 dom0 kernel: ACPI: Added _OSI(3.0 _SCP Extensions)
May 02 08:02:43 dom0 kernel: ACPI: Added _OSI(Processor Aggregator Device)
May 02 08:02:43 dom0 kernel: ACPI: 8 ACPI AML tables successfully acquired and loaded
May 02 08:02:43 dom0 kernel: xen: registering gsi 9 triggering 0 polarity 0
May 02 08:02:43 dom0 kernel: ACPI: Dynamic OEM Table Load:
May 02 08:02:43 dom0 kernel: ACPI: SSDT 0xFFFF8881017C1C00 000400 (v02 PmRef  Cpu0Cst  00003001 INTL 20160527)
May 02 08:02:43 dom0 kernel: ACPI: Dynamic OEM Table Load:
May 02 08:02:43 dom0 kernel: ACPI: SSDT 0xFFFF8881017D2800 000605 (v02 PmRef  Cpu0Ist  00003000 INTL 20160527)
May 02 08:02:43 dom0 kernel: ACPI: Dynamic OEM Table Load:
May 02 08:02:43 dom0 kernel: ACPI: SSDT 0xFFFF8881002F7100 0000F4 (v02 PmRef  Cpu0Psd  00003000 INTL 20160527)
May 02 08:02:43 dom0 kernel: ACPI: Dynamic OEM Table Load:
May 02 08:02:43 dom0 kernel: ACPI: SSDT 0xFFFF8881017D7800 0005FC (v02 PmRef  ApIst    00003000 INTL 20160527)
May 02 08:02:43 dom0 kernel: ACPI: Dynamic OEM Table Load:
May 02 08:02:43 dom0 kernel: ACPI: SSDT 0xFFFF888101829000 000AB0 (v02 PmRef  ApPsd    00003000 INTL 20160527)
May 02 08:02:43 dom0 kernel: ACPI: Dynamic OEM Table Load:
May 02 08:02:43 dom0 kernel: ACPI: SSDT 0xFFFF8881017C3800 00030A (v02 PmRef  ApCst    00003000 INTL 20160527)
May 02 08:02:43 dom0 kernel: ACPI: Interpreter enabled
May 02 08:02:43 dom0 kernel: ACPI: PM: (supports S0 S3 S5)
May 02 08:02:43 dom0 kernel: ACPI: Using IOAPIC for interrupt routing
May 02 08:02:43 dom0 kernel: PCI: Using host bridge windows from ACPI; if necessary, use "pci=nocrs" and report a bug
May 02 08:02:43 dom0 kernel: PCI: Ignoring E820 reservations for host bridge windows
May 02 08:02:43 dom0 kernel: ACPI: Enabled 8 GPEs in block 00 to 7F
May 02 08:02:43 dom0 kernel: ACPI: \_SB_.PCI0.XDCI.USBC: New power resource
May 02 08:02:43 dom0 kernel: ACPI: \_SB_.PCI0.SAT0.VOL0.V0PR: New power resource
May 02 08:02:43 dom0 kernel: ACPI: \_SB_.PCI0.SAT0.VOL1.V1PR: New power resource
May 02 08:02:43 dom0 kernel: ACPI: \_SB_.PCI0.SAT0.VOL2.V2PR: New power resource
May 02 08:02:43 dom0 kernel: ACPI: \_SB_.PCI0.CNVW.WRST: New power resource
May 02 08:02:43 dom0 kernel: ACPI: \_TZ_.FN00: New power resource
May 02 08:02:43 dom0 kernel: ACPI: \_TZ_.FN01: New power resource
May 02 08:02:43 dom0 kernel: ACPI: \_TZ_.FN02: New power resource
May 02 08:02:43 dom0 kernel: ACPI: \_TZ_.FN03: New power resource
May 02 08:02:43 dom0 kernel: ACPI: \_TZ_.FN04: New power resource
May 02 08:02:43 dom0 kernel: ACPI: \PIN_: New power resource
May 02 08:02:43 dom0 kernel: ACPI: PCI Root Bridge [PCI0] (domain 0000 [bus 00-fe])
May 02 08:02:43 dom0 kernel: acpi PNP0A08:00: _OSC: OS supports [ExtendedConfig ASPM ClockPM Segments MSI EDR HPX-Type3]
May 02 08:02:43 dom0 kernel: acpi PNP0A08:00: _OSC: platform does not support [PME]
May 02 08:02:43 dom0 kernel: acpi PNP0A08:00: _OSC: OS now controls [AER PCIeCapability LTR DPC]
May 02 08:02:43 dom0 kernel: acpi PNP0A08:00: FADT indicates ASPM is unsupported, using BIOS configuration
May 02 08:02:43 dom0 kernel: PCI host bridge to bus 0000:00
May 02 08:02:43 dom0 kernel: pci_bus 0000:00: root bus resource [io  0x0000-0x0cf7 window]
May 02 08:02:43 dom0 kernel: pci_bus 0000:00: root bus resource [io  0x0d00-0xffff window]
May 02 08:02:43 dom0 kernel: pci_bus 0000:00: root bus resource [mem 0x000a0000-0x000bffff window]
May 02 08:02:43 dom0 kernel: pci_bus 0000:00: root bus resource [mem 0x90000000-0xdfffffff window]
May 02 08:02:43 dom0 kernel: pci_bus 0000:00: root bus resource [mem 0xfc800000-0xfe7fffff window]
May 02 08:02:43 dom0 kernel: pci_bus 0000:00: root bus resource [bus 00-fe]
May 02 08:02:43 dom0 kernel: pci 0000:00:00.0: [8086:3e30] type 00 class 0x060000 conventional PCI endpoint
May 02 08:02:43 dom0 kernel: pci 0000:00:02.0: [8086:3e98] type 00 class 0x030000 PCIe Root Complex Integrated Endpoint
May 02 08:02:43 dom0 kernel: pci 0000:00:02.0: BAR 0 [mem 0xa0000000-0xa0ffffff 64bit]
May 02 08:02:43 dom0 kernel: pci 0000:00:02.0: BAR 2 [mem 0x90000000-0x9fffffff 64bit pref]
May 02 08:02:43 dom0 kernel: pci 0000:00:02.0: BAR 4 [io  0x3000-0x303f]
May 02 08:02:43 dom0 kernel: pci 0000:00:02.0: Video device with shadowed ROM at [mem 0x000c0000-0x000dffff]
May 02 08:02:43 dom0 kernel: pci 0000:00:14.0: [8086:a36d] type 00 class 0x0c0330 conventional PCI endpoint
May 02 08:02:43 dom0 kernel: pci 0000:00:14.0: BAR 0 [mem 0xa1120000-0xa112ffff 64bit]
May 02 08:02:43 dom0 kernel: pci 0000:00:14.0: PME# supported from D3hot D3cold
May 02 08:02:43 dom0 kernel: pci 0000:00:14.2: [8086:a36f] type 00 class 0x050000 conventional PCI endpoint
May 02 08:02:43 dom0 kernel: pci 0000:00:14.2: BAR 0 [mem 0xa1136000-0xa1137fff 64bit]
May 02 08:02:43 dom0 kernel: pci 0000:00:14.2: BAR 2 [mem 0xa113d000-0xa113dfff 64bit]
May 02 08:02:43 dom0 kernel: pci 0000:00:16.0: [8086:a360] type 00 class 0x078000 conventional PCI endpoint
May 02 08:02:43 dom0 kernel: pci 0000:00:16.0: BAR 0 [mem 0xa113c000-0xa113cfff 64bit]
May 02 08:02:43 dom0 kernel: pci 0000:00:16.0: PME# supported from D3hot
May 02 08:02:43 dom0 kernel: pci 0000:00:16.3: [8086:a363] type 00 class 0x070002 conventional PCI endpoint
May 02 08:02:43 dom0 kernel: pci 0000:00:16.3: BAR 0 [io  0x30a0-0x30a7]
May 02 08:02:43 dom0 kernel: pci 0000:00:16.3: BAR 1 [mem 0xa113b000-0xa113bfff]
May 02 08:02:43 dom0 kernel: pci 0000:00:17.0: [8086:a352] type 00 class 0x010601 conventional PCI endpoint
May 02 08:02:43 dom0 kernel: pci 0000:00:17.0: BAR 0 [mem 0xa1134000-0xa1135fff]
May 02 08:02:43 dom0 kernel: pci 0000:00:17.0: BAR 1 [mem 0xa113a000-0xa113a0ff]
May 02 08:02:43 dom0 kernel: pci 0000:00:17.0: BAR 2 [io  0x3090-0x3097]
May 02 08:02:43 dom0 kernel: pci 0000:00:17.0: BAR 3 [io  0x3080-0x3083]
May 02 08:02:43 dom0 kernel: pci 0000:00:17.0: BAR 4 [io  0x3060-0x307f]
May 02 08:02:43 dom0 kernel: pci 0000:00:17.0: BAR 5 [mem 0xa1139000-0xa11397ff]
May 02 08:02:43 dom0 kernel: pci 0000:00:17.0: PME# supported from D3hot
May 02 08:02:43 dom0 kernel: pci 0000:00:1b.0: [8086:a340] type 01 class 0x060400 PCIe Root Port
May 02 08:02:43 dom0 kernel: pci 0000:00:1b.0: PCI bridge to [bus 01]
May 02 08:02:43 dom0 kernel: pci 0000:00:1b.0: PME# supported from D0 D3hot D3cold
May 02 08:02:43 dom0 kernel: pci 0000:00:1c.0: [8086:a338] type 01 class 0x060400 PCIe Root Port
May 02 08:02:43 dom0 kernel: pci 0000:00:1c.0: PCI bridge to [bus 02]
May 02 08:02:43 dom0 kernel: pci 0000:00:1c.0: PME# supported from D0 D3hot D3cold
May 02 08:02:43 dom0 kernel: pci 0000:00:1c.5: [8086:a33d] type 01 class 0x060400 PCIe Root Port
May 02 08:02:43 dom0 kernel: pci 0000:00:1c.5: PCI bridge to [bus 03-04]
May 02 08:02:43 dom0 kernel: pci 0000:00:1c.5: PME# supported from D0 D3hot D3cold
May 02 08:02:43 dom0 kernel: pci 0000:00:1c.5: PTM enabled (root), 4ns granularity
May 02 08:02:43 dom0 kernel: pci 0000:00:1d.0: [8086:a330] type 01 class 0x060400 PCIe Root Port
May 02 08:02:43 dom0 kernel: pci 0000:00:1d.0: PCI bridge to [bus 05]
May 02 08:02:43 dom0 kernel: pci 0000:00:1d.0: PME# supported from D0 D3hot D3cold
May 02 08:02:43 dom0 kernel: pci 0000:00:1f.0: [8086:a306] type 00 class 0x060100 conventional PCI endpoint
May 02 08:02:43 dom0 kernel: pci 0000:00:1f.3: [8086:a348] type 00 class 0x040300 conventional PCI endpoint
May 02 08:02:43 dom0 kernel: pci 0000:00:1f.3: BAR 0 [mem 0xa1130000-0xa1133fff 64bit]
May 02 08:02:43 dom0 kernel: pci 0000:00:1f.3: BAR 4 [mem 0xa1000000-0xa10fffff 64bit]
May 02 08:02:43 dom0 kernel: pci 0000:00:1f.3: PME# supported from D3hot D3cold
May 02 08:02:43 dom0 kernel: pci 0000:00:1f.4: [8086:a323] type 00 class 0x0c0500 conventional PCI endpoint
May 02 08:02:43 dom0 kernel: pci 0000:00:1f.4: BAR 0 [mem 0xa1138000-0xa11380ff 64bit]
May 02 08:02:43 dom0 kernel: pci 0000:00:1f.4: BAR 4 [io  0xefa0-0xefbf]
May 02 08:02:43 dom0 kernel: pci 0000:00:1f.5: [8086:a324] type 00 class 0x0c8000 conventional PCI endpoint
May 02 08:02:43 dom0 kernel: pci 0000:00:1f.5: BAR 0 [mem 0xfe010000-0xfe010fff]
May 02 08:02:43 dom0 kernel: pci 0000:00:1f.6: [8086:15bb] type 00 class 0x020000 conventional PCI endpoint
May 02 08:02:43 dom0 kernel: pci 0000:00:1f.6: BAR 0 [mem 0xa1100000-0xa111ffff]
May 02 08:02:43 dom0 kernel: pci 0000:00:1f.6: PME# supported from D0 D3hot D3cold
May 02 08:02:43 dom0 kernel: pci 0000:00:1b.0: PCI bridge to [bus 01]
May 02 08:02:43 dom0 kernel: pci 0000:00:1c.0: PCI bridge to [bus 02]
May 02 08:02:43 dom0 kernel: pci 0000:03:00.0: [1b21:1080] type 01 class 0x060400 PCIe to PCI/PCI-X bridge
May 02 08:02:43 dom0 kernel: pci 0000:03:00.0: PCI bridge to [bus 04]
May 02 08:02:43 dom0 kernel: pci 0000:03:00.0: supports D1 D2
May 02 08:02:43 dom0 kernel: pci 0000:03:00.0: PME# supported from D0 D1 D2 D3hot D3cold
May 02 08:02:43 dom0 kernel: pci 0000:00:1c.5: PCI bridge to [bus 03-04]
May 02 08:02:43 dom0 kernel: pci_bus 0000:04: extended config space not accessible
May 02 08:02:43 dom0 kernel: pci 0000:03:00.0: PCI bridge to [bus 04]
May 02 08:02:43 dom0 kernel: pci 0000:00:1d.0: PCI bridge to [bus 05]
May 02 08:02:43 dom0 kernel: xen: registering gsi 13 triggering 1 polarity 0
May 02 08:02:43 dom0 kernel: ACPI: PCI: Interrupt link LNKA configured for IRQ 0
May 02 08:02:43 dom0 kernel: ACPI: PCI: Interrupt link LNKB configured for IRQ 1
May 02 08:02:43 dom0 kernel: ACPI: PCI: Interrupt link LNKC configured for IRQ 0
May 02 08:02:43 dom0 kernel: ACPI: PCI: Interrupt link LNKD configured for IRQ 0
May 02 08:02:43 dom0 kernel: ACPI: PCI: Interrupt link LNKE configured for IRQ 0
May 02 08:02:43 dom0 kernel: ACPI: PCI: Interrupt link LNKF configured for IRQ 0
May 02 08:02:43 dom0 kernel: ACPI: PCI: Interrupt link LNKG configured for IRQ 0
May 02 08:02:43 dom0 kernel: ACPI: PCI: Interrupt link LNKH configured for IRQ 0
May 02 08:02:43 dom0 kernel: xen:balloon: Initialising balloon driver
May 02 08:02:43 dom0 kernel: iommu: Default domain type: Translated
May 02 08:02:43 dom0 kernel: iommu: DMA domain TLB invalidation policy: lazy mode
May 02 08:02:43 dom0 kernel: SCSI subsystem initialized
May 02 08:02:43 dom0 kernel: libata version 3.00 loaded.
May 02 08:02:43 dom0 kernel: ACPI: bus type USB registered
May 02 08:02:43 dom0 kernel: usbcore: registered new interface driver usbfs
May 02 08:02:43 dom0 kernel: usbcore: registered new interface driver hub
May 02 08:02:43 dom0 kernel: usbcore: registered new device driver usb
May 02 08:02:43 dom0 kernel: pps_core: LinuxPPS API ver. 1 registered
May 02 08:02:43 dom0 kernel: pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
May 02 08:02:43 dom0 kernel: PTP clock support registered
May 02 08:02:43 dom0 kernel: EDAC MC: Ver: 3.0.0
May 02 08:02:43 dom0 kernel: NetLabel: Initializing
May 02 08:02:43 dom0 kernel: NetLabel:  domain hash size = 128
May 02 08:02:43 dom0 kernel: NetLabel:  protocols = UNLABELED CIPSOv4 CALIPSO
May 02 08:02:43 dom0 kernel: NetLabel:  unlabeled traffic allowed by default
May 02 08:02:43 dom0 kernel: mctp: management component transport protocol core
May 02 08:02:43 dom0 kernel: NET: Registered PF_MCTP protocol family
May 02 08:02:43 dom0 kernel: PCI: Using ACPI for IRQ routing
May 02 08:02:43 dom0 kernel: PCI: pci_cache_line_size set to 64 bytes
May 02 08:02:43 dom0 kernel: e820: reserve RAM buffer [mem 0x87bfe000-0x87ffffff]
May 02 08:02:43 dom0 kernel: e820: reserve RAM buffer [mem 0x8ac0f000-0x8bffffff]
May 02 08:02:43 dom0 kernel: e820: reserve RAM buffer [mem 0x178481000-0x17bffffff]
May 02 08:02:43 dom0 kernel: pci 0000:00:02.0: vgaarb: setting as boot VGA device
May 02 08:02:43 dom0 kernel: pci 0000:00:02.0: vgaarb: bridge control possible
May 02 08:02:43 dom0 kernel: pci 0000:00:02.0: vgaarb: VGA device added: decodes=io+mem,owns=io+mem,locks=none
May 02 08:02:43 dom0 kernel: vgaarb: loaded
May 02 08:02:43 dom0 kernel: clocksource: Switched to clocksource tsc-early
May 02 08:02:43 dom0 kernel: VFS: Disk quotas dquot_6.6.0
May 02 08:02:43 dom0 kernel: VFS: Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
May 02 08:02:43 dom0 kernel: hugetlbfs: disabling because there are no supported hugepage sizes
May 02 08:02:43 dom0 kernel: pnp: PnP ACPI init
May 02 08:02:43 dom0 kernel: system 00:00: [mem 0x40000000-0x403fffff] could not be reserved
May 02 08:02:43 dom0 kernel: system 00:01: [io  0x0290-0x029f] has been reserved
May 02 08:02:43 dom0 kernel: system 00:02: [io  0x0680-0x069f] has been reserved
May 02 08:02:43 dom0 kernel: system 00:03: [io  0x1854-0x1857] has been reserved
May 02 08:02:43 dom0 kernel: system 00:04: [mem 0xfed10000-0xfed17fff] has been reserved
May 02 08:02:43 dom0 kernel: system 00:04: [mem 0xfed18000-0xfed18fff] has been reserved
May 02 08:02:43 dom0 kernel: system 00:04: [mem 0xfed19000-0xfed19fff] has been reserved
May 02 08:02:43 dom0 kernel: system 00:04: [mem 0xe0000000-0xefffffff] has been reserved
May 02 08:02:43 dom0 kernel: system 00:04: [mem 0xfed20000-0xfed3ffff] has been reserved
May 02 08:02:43 dom0 kernel: system 00:04: [mem 0xfed90000-0xfed93fff] could not be reserved
May 02 08:02:43 dom0 kernel: system 00:04: [mem 0xfed45000-0xfed8ffff] has been reserved
May 02 08:02:43 dom0 kernel: system 00:04: [mem 0xfee00000-0xfeefffff] has been reserved
May 02 08:02:43 dom0 kernel: system 00:05: [io  0x1800-0x18fe] could not be reserved
May 02 08:02:43 dom0 kernel: system 00:05: [mem 0xfd000000-0xfd69ffff] has been reserved
May 02 08:02:43 dom0 kernel: system 00:05: [mem 0xfd6c0000-0xfd6cffff] has been reserved
May 02 08:02:43 dom0 kernel: system 00:05: [mem 0xfd6f0000-0xfdffffff] has been reserved
May 02 08:02:43 dom0 kernel: system 00:05: [mem 0xfe000000-0xfe01ffff] could not be reserved
May 02 08:02:43 dom0 kernel: system 00:05: [mem 0xfe200000-0xfe7fffff] has been reserved
May 02 08:02:43 dom0 kernel: system 00:05: [mem 0xff000000-0xffffffff] has been reserved
May 02 08:02:43 dom0 kernel: system 00:06: [io  0x2000-0x20fe] has been reserved
May 02 08:02:43 dom0 kernel: xen: registering gsi 14 triggering 0 polarity 1
May 02 08:02:43 dom0 kernel: system 00:07: [mem 0xfd6e0000-0xfd6effff] has been reserved
May 02 08:02:43 dom0 kernel: system 00:07: [mem 0xfd6d0000-0xfd6dffff] has been reserved
May 02 08:02:43 dom0 kernel: system 00:07: [mem 0xfd6b0000-0xfd6bffff] has been reserved
May 02 08:02:43 dom0 kernel: system 00:07: [mem 0xfd6a0000-0xfd6affff] has been reserved
May 02 08:02:43 dom0 kernel: pnp: PnP ACPI: found 8 devices
May 02 08:02:43 dom0 kernel: PM-Timer failed consistency check  (0xffffff) - aborting.
May 02 08:02:43 dom0 kernel: NET: Registered PF_INET protocol family
May 02 08:02:43 dom0 kernel: IP idents hash table entries: 32768 (order: 6, 262144 bytes, linear)
May 02 08:02:43 dom0 kernel: tcp_listen_portaddr_hash hash table entries: 1024 (order: 2, 16384 bytes, linear)
May 02 08:02:43 dom0 kernel: Table-perturb hash table entries: 65536 (order: 6, 262144 bytes, linear)
May 02 08:02:43 dom0 kernel: TCP established hash table entries: 16384 (order: 5, 131072 bytes, linear)
May 02 08:02:43 dom0 kernel: TCP bind hash table entries: 16384 (order: 7, 524288 bytes, linear)
May 02 08:02:43 dom0 kernel: TCP: Hash tables configured (established 16384 bind 16384)
May 02 08:02:43 dom0 kernel: MPTCP token hash table entries: 2048 (order: 3, 49152 bytes, linear)
May 02 08:02:43 dom0 kernel: UDP hash table entries: 1024 (order: 3, 32768 bytes, linear)
May 02 08:02:43 dom0 kernel: UDP-Lite hash table entries: 1024 (order: 3, 32768 bytes, linear)
May 02 08:02:43 dom0 kernel: NET: Registered PF_UNIX/PF_LOCAL protocol family
May 02 08:02:43 dom0 kernel: NET: Registered PF_XDP protocol family
May 02 08:02:43 dom0 kernel: pci 0000:00:1d.0: bridge window [io  0x1000-0x0fff] to [bus 05] add_size 1000
May 02 08:02:43 dom0 kernel: pci 0000:00:1d.0: bridge window [mem 0x00100000-0x000fffff 64bit pref] to [bus 05] add_size 200000 add_align 100000
May 02 08:02:43 dom0 kernel: pci 0000:00:1d.0: bridge window [mem 0x00100000-0x000fffff] to [bus 05] add_size 200000 add_align 100000
May 02 08:02:43 dom0 kernel: pci 0000:00:1d.0: bridge window [mem 0xa1200000-0xa13fffff]: assigned
May 02 08:02:43 dom0 kernel: pci 0000:00:1d.0: bridge window [mem 0xa1400000-0xa15fffff 64bit pref]: assigned
May 02 08:02:43 dom0 kernel: pci 0000:00:1d.0: bridge window [io  0x4000-0x4fff]: assigned
May 02 08:02:43 dom0 kernel: pci 0000:00:1b.0: PCI bridge to [bus 01]
May 02 08:02:43 dom0 kernel: pci 0000:00:1c.0: PCI bridge to [bus 02]
May 02 08:02:43 dom0 kernel: pci 0000:03:00.0: PCI bridge to [bus 04]
May 02 08:02:43 dom0 kernel: pci 0000:00:1c.5: PCI bridge to [bus 03-04]
May 02 08:02:43 dom0 kernel: pci 0000:00:1d.0: PCI bridge to [bus 05]
May 02 08:02:43 dom0 kernel: pci 0000:00:1d.0:   bridge window [io  0x4000-0x4fff]
May 02 08:02:43 dom0 kernel: pci 0000:00:1d.0:   bridge window [mem 0xa1200000-0xa13fffff]
May 02 08:02:43 dom0 kernel: pci 0000:00:1d.0:   bridge window [mem 0xa1400000-0xa15fffff 64bit pref]
May 02 08:02:43 dom0 kernel: pci_bus 0000:00: resource 4 [io  0x0000-0x0cf7 window]
May 02 08:02:43 dom0 kernel: pci_bus 0000:00: resource 5 [io  0x0d00-0xffff window]
May 02 08:02:43 dom0 kernel: pci_bus 0000:00: resource 6 [mem 0x000a0000-0x000bffff window]
May 02 08:02:43 dom0 kernel: pci_bus 0000:00: resource 7 [mem 0x90000000-0xdfffffff window]
May 02 08:02:43 dom0 kernel: pci_bus 0000:00: resource 8 [mem 0xfc800000-0xfe7fffff window]
May 02 08:02:43 dom0 kernel: pci_bus 0000:05: resource 0 [io  0x4000-0x4fff]
May 02 08:02:43 dom0 kernel: pci_bus 0000:05: resource 1 [mem 0xa1200000-0xa13fffff]
May 02 08:02:43 dom0 kernel: pci_bus 0000:05: resource 2 [mem 0xa1400000-0xa15fffff 64bit pref]
May 02 08:02:43 dom0 kernel: xen: registering gsi 16 triggering 0 polarity 1
May 02 08:02:43 dom0 kernel: xen: --> pirq=16 -> irq=16 (gsi=16)
May 02 08:02:43 dom0 kernel: pci 0000:03:00.0: Disabling ASPM L0s/L1
May 02 08:02:43 dom0 kernel: pci 0000:03:00.0: can't disable ASPM; OS doesn't have ASPM control
May 02 08:02:43 dom0 kernel: PCI: CLS 64 bytes, default 64
May 02 08:02:43 dom0 kernel: PCI-DMA: Using software bounce buffering for IO (SWIOTLB)
May 02 08:02:43 dom0 kernel: Trying to unpack rootfs image as initramfs...
May 02 08:02:43 dom0 kernel: software IO TLB: mapped [mem 0x0000000173b00000-0x0000000177b00000] (64MB)
May 02 08:02:43 dom0 kernel: clocksource: tsc: mask: 0xffffffffffffffff max_cycles: 0x2b3e4942f25, max_idle_ns: 440795326592 ns
May 02 08:02:43 dom0 kernel: clocksource: Switched to clocksource tsc
May 02 08:02:43 dom0 kernel: platform rtc_cmos: registered platform RTC device (no PNP device found)
May 02 08:02:43 dom0 kernel: Initialise system trusted keyrings
May 02 08:02:43 dom0 kernel: Key type blacklist registered
May 02 08:02:43 dom0 kernel: workingset: timestamp_bits=36 max_order=20 bucket_order=0
May 02 08:02:43 dom0 kernel: zbud: loaded
May 02 08:02:43 dom0 kernel: integrity: Platform Keyring initialized
May 02 08:02:43 dom0 kernel: integrity: Machine keyring initialized
May 02 08:02:43 dom0 kernel: NET: Registered PF_ALG protocol family
May 02 08:02:43 dom0 kernel: xor: automatically using best checksumming function   avx       
May 02 08:02:43 dom0 kernel: Key type asymmetric registered
May 02 08:02:43 dom0 kernel: Asymmetric key parser 'x509' registered
May 02 08:02:43 dom0 kernel: Freeing initrd memory: 39332K
May 02 08:02:43 dom0 kernel: Block layer SCSI generic (bsg) driver version 0.4 loaded (major 245)
May 02 08:02:43 dom0 kernel: io scheduler mq-deadline registered
May 02 08:02:43 dom0 kernel: io scheduler kyber registered
May 02 08:02:43 dom0 kernel: io scheduler bfq registered
May 02 08:02:43 dom0 kernel: atomic64_test: passed for x86-64 platform with CX8 and with SSE
May 02 08:02:43 dom0 kernel: xen: registering gsi 17 triggering 0 polarity 1
May 02 08:02:43 dom0 kernel: xen: --> pirq=17 -> irq=17 (gsi=17)
May 02 08:02:43 dom0 kernel: pcieport 0000:00:1c.5: AER: enabled with IRQ 172
May 02 08:02:43 dom0 kernel: pcieport 0000:00:1c.5: DPC: enabled with IRQ 172
May 02 08:02:43 dom0 kernel: pcieport 0000:00:1c.5: DPC: error containment capabilities: Int Msg #0, RPExt+ PoisonedTLP+ SwTrigger+ RP PIO Log 4, DL_ActiveErr+
May 02 08:02:43 dom0 kernel: intel_idle: intel_idle yielding to none
May 02 08:02:43 dom0 kernel: input: Sleep Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0E:00/input/input0
May 02 08:02:43 dom0 kernel: ACPI: button: Sleep Button [SLPB]
May 02 08:02:43 dom0 kernel: input: Power Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0C:00/input/input1
May 02 08:02:43 dom0 kernel: ACPI: button: Power Button [PWRB]
May 02 08:02:43 dom0 kernel: input: Power Button as /devices/LNXSYSTM:00/LNXPWRBN:00/input/input2
May 02 08:02:43 dom0 kernel: ACPI: button: Power Button [PWRF]
May 02 08:02:43 dom0 kernel: Monitor-Mwait will be used to enter C-1 state
May 02 08:02:43 dom0 kernel: Monitor-Mwait will be used to enter C-2 state
May 02 08:02:43 dom0 kernel: Monitor-Mwait will be used to enter C-3 state
May 02 08:02:43 dom0 kernel: thermal LNXTHERM:00: registered as thermal_zone0
May 02 08:02:43 dom0 kernel: ACPI: thermal: Thermal Zone [TZ00] (28 C)
May 02 08:02:43 dom0 kernel: Serial: 8250/16550 driver, 32 ports, IRQ sharing enabled
May 02 08:02:43 dom0 kernel: xen: registering gsi 19 triggering 0 polarity 1
May 02 08:02:43 dom0 kernel: xen: --> pirq=19 -> irq=19 (gsi=19)
May 02 08:02:43 dom0 kernel: 0000:00:16.3: ttyS4 at I/O 0x30a0 (irq = 19, base_baud = 115200) is a 16550A
May 02 08:02:43 dom0 kernel: hpet_acpi_add: no address or irqs in _CRS
May 02 08:02:43 dom0 kernel: Non-volatile memory driver v1.3
May 02 08:02:43 dom0 kernel: Linux agpgart interface v0.103
May 02 08:02:43 dom0 kernel: ACPI: bus type drm_connector registered
May 02 08:02:43 dom0 kernel: ahci 0000:00:17.0: version 3.0
May 02 08:02:43 dom0 kernel: xen: registering gsi 16 triggering 0 polarity 1
May 02 08:02:43 dom0 kernel: Already setup the GSI :16
May 02 08:02:43 dom0 kernel: ahci 0000:00:17.0: AHCI vers 0001.0301, 32 command slots, 6 Gbps, SATA mode
May 02 08:02:43 dom0 kernel: ahci 0000:00:17.0: 6/6 ports implemented (port mask 0x3f)
May 02 08:02:43 dom0 kernel: ahci 0000:00:17.0: flags: 64bit ncq sntf led clo only pio slum part ems deso sadm sds apst 
May 02 08:02:43 dom0 kernel: scsi host0: ahci
May 02 08:02:43 dom0 kernel: scsi host1: ahci
May 02 08:02:43 dom0 kernel: scsi host2: ahci
May 02 08:02:43 dom0 kernel: scsi host3: ahci
May 02 08:02:43 dom0 kernel: scsi host4: ahci
May 02 08:02:43 dom0 kernel: scsi host5: ahci
May 02 08:02:43 dom0 kernel: ata1: SATA max UDMA/133 abar m2048@0xa1139000 port 0xa1139100 irq 175 lpm-pol 3
May 02 08:02:43 dom0 kernel: ata2: SATA max UDMA/133 abar m2048@0xa1139000 port 0xa1139180 irq 175 lpm-pol 3
May 02 08:02:43 dom0 kernel: ata3: SATA max UDMA/133 abar m2048@0xa1139000 port 0xa1139200 irq 175 lpm-pol 3
May 02 08:02:43 dom0 kernel: ata4: SATA max UDMA/133 abar m2048@0xa1139000 port 0xa1139280 irq 175 lpm-pol 3
May 02 08:02:43 dom0 kernel: ata5: SATA max UDMA/133 abar m2048@0xa1139000 port 0xa1139300 irq 175 lpm-pol 3
May 02 08:02:43 dom0 kernel: ata6: SATA max UDMA/133 abar m2048@0xa1139000 port 0xa1139380 irq 175 lpm-pol 3
May 02 08:02:43 dom0 kernel: usbcore: registered new interface driver usbserial_generic
May 02 08:02:43 dom0 kernel: usbserial: USB Serial support registered for generic
May 02 08:02:43 dom0 kernel: i8042: PNP: No PS/2 controller found.
May 02 08:02:43 dom0 kernel: mousedev: PS/2 mouse device common for all mice
May 02 08:02:43 dom0 kernel: rtc_cmos rtc_cmos: RTC can wake from S4
May 02 08:02:43 dom0 kernel: rtc_cmos rtc_cmos: registered as rtc0
May 02 08:02:43 dom0 kernel: rtc_cmos rtc_cmos: setting system clock to 2025-05-02T12:02:43 UTC (1746187363)
May 02 08:02:43 dom0 kernel: rtc_cmos rtc_cmos: alarms up to one month, y3k, 114 bytes nvram
May 02 08:02:43 dom0 kernel: device-mapper: core: CONFIG_IMA_DISABLE_HTABLE is disabled. Duplicate IMA measurements will not be recorded in the IMA log.
May 02 08:02:43 dom0 kernel: device-mapper: uevent: version 1.0.3
May 02 08:02:43 dom0 kernel: device-mapper: ioctl: 4.48.0-ioctl (2023-03-01) initialised: dm-devel@lists.linux.dev
May 02 08:02:43 dom0 kernel: intel_pstate: CPU model not supported
May 02 08:02:43 dom0 kernel: hid: raw HID events driver (C) Jiri Kosina
May 02 08:02:43 dom0 kernel: usbcore: registered new interface driver usbhid
May 02 08:02:43 dom0 kernel: usbhid: USB HID core driver
May 02 08:02:43 dom0 kernel: drop_monitor: Initializing network drop monitor service
May 02 08:02:43 dom0 kernel: Initializing XFRM netlink socket
May 02 08:02:43 dom0 kernel: NET: Registered PF_INET6 protocol family
May 02 08:02:43 dom0 kernel: Segment Routing with IPv6
May 02 08:02:43 dom0 kernel: RPL Segment Routing with IPv6
May 02 08:02:43 dom0 kernel: In-situ OAM (IOAM) with IPv6
May 02 08:02:43 dom0 kernel: mip6: Mobile IPv6
May 02 08:02:43 dom0 kernel: NET: Registered PF_PACKET protocol family
May 02 08:02:43 dom0 kernel: IPI shorthand broadcast: enabled
May 02 08:02:43 dom0 kernel: AES CTR mode by8 optimization enabled
May 02 08:02:43 dom0 kernel: sched_clock: Marking stable (1828003166, 34095036)->(1863956006, -1857804)
May 02 08:02:43 dom0 kernel: registered taskstats version 1
May 02 08:02:43 dom0 kernel: Loading compiled-in X.509 certificates
May 02 08:02:43 dom0 kernel: Loaded X.509 cert 'Build time autogenerated kernel key: 493fe223f799dfa24d77a95cd1dc9597d6892bae'
May 02 08:02:43 dom0 kernel: Demotion targets for Node 0: null
May 02 08:02:43 dom0 kernel: page_owner is disabled
May 02 08:02:43 dom0 kernel: Key type .fscrypt registered
May 02 08:02:43 dom0 kernel: Key type fscrypt-provisioning registered
May 02 08:02:43 dom0 kernel: Btrfs loaded, zoned=yes, fsverity=yes
May 02 08:02:43 dom0 kernel: Key type big_key registered
May 02 08:02:43 dom0 kernel: Key type trusted registered
May 02 08:02:43 dom0 kernel: Key type encrypted registered
May 02 08:02:43 dom0 kernel: Loading compiled-in module X.509 certificates
May 02 08:02:43 dom0 kernel: Loaded X.509 cert 'Build time autogenerated kernel key: 493fe223f799dfa24d77a95cd1dc9597d6892bae'
May 02 08:02:43 dom0 kernel: ima: Allocated hash algorithm: sha256
May 02 08:02:43 dom0 kernel: ima: No architecture policies found
May 02 08:02:43 dom0 kernel: evm: Initialising EVM extended attributes:
May 02 08:02:43 dom0 kernel: evm: security.selinux
May 02 08:02:43 dom0 kernel: evm: security.SMACK64 (disabled)
May 02 08:02:43 dom0 kernel: evm: security.SMACK64EXEC (disabled)
May 02 08:02:43 dom0 kernel: evm: security.SMACK64TRANSMUTE (disabled)
May 02 08:02:43 dom0 kernel: evm: security.SMACK64MMAP (disabled)
May 02 08:02:43 dom0 kernel: evm: security.apparmor
May 02 08:02:43 dom0 kernel: evm: security.ima
May 02 08:02:43 dom0 kernel: evm: security.capability
May 02 08:02:43 dom0 kernel: evm: HMAC attrs: 0x1
May 02 08:02:43 dom0 kernel: alg: No test for 842 (842-scomp)
May 02 08:02:43 dom0 kernel: alg: No test for 842 (842-generic)
May 02 08:02:43 dom0 kernel: PM:   Magic number: 9:376:25
May 02 08:02:43 dom0 kernel: RAS: Correctable Errors collector initialized.
May 02 08:02:43 dom0 kernel: clk: Disabling unused clocks
May 02 08:02:43 dom0 kernel: PM: genpd: Disabling unused power domains
May 02 08:02:43 dom0 kernel: ata1: SATA link down (SStatus 4 SControl 300)
May 02 08:02:43 dom0 kernel: ata3: SATA link down (SStatus 4 SControl 300)
May 02 08:02:43 dom0 kernel: ata2: SATA link down (SStatus 4 SControl 300)
May 02 08:02:43 dom0 kernel: ata4: SATA link down (SStatus 4 SControl 300)
May 02 08:02:43 dom0 kernel: ata6: SATA link up 6.0 Gbps (SStatus 133 SControl 300)
May 02 08:02:43 dom0 kernel: ata5: SATA link down (SStatus 4 SControl 300)
May 02 08:02:43 dom0 kernel: ata6.00: ATA-8: ST1000DM010-2EP102, CC43, max UDMA/133
May 02 08:02:43 dom0 kernel: ata6.00: 1953525168 sectors, multi 16: LBA48 NCQ (depth 32), AA
May 02 08:02:43 dom0 kernel: ata6.00: configured for UDMA/133
May 02 08:02:43 dom0 kernel: scsi 5:0:0:0: Direct-Access     ATA      ST1000DM010-2EP1 CC43 PQ: 0 ANSI: 5
May 02 08:02:43 dom0 kernel: sd 5:0:0:0: Attached scsi generic sg0 type 0
May 02 08:02:43 dom0 kernel: sd 5:0:0:0: [sda] 1953525168 512-byte logical blocks: (1.00 TB/932 GiB)
May 02 08:02:43 dom0 kernel: sd 5:0:0:0: [sda] 4096-byte physical blocks
May 02 08:02:43 dom0 kernel: sd 5:0:0:0: [sda] Write Protect is off
May 02 08:02:43 dom0 kernel: sd 5:0:0:0: [sda] Mode Sense: 00 3a 00 00
May 02 08:02:43 dom0 kernel: sd 5:0:0:0: [sda] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
May 02 08:02:43 dom0 kernel: sd 5:0:0:0: [sda] Preferred minimum I/O size 4096 bytes
May 02 08:02:43 dom0 kernel:  sda: sda1 sda2
May 02 08:02:43 dom0 kernel: sd 5:0:0:0: [sda] Attached SCSI disk
May 02 08:02:43 dom0 kernel: Freeing unused decrypted memory: 2028K
May 02 08:02:43 dom0 kernel: Freeing unused kernel image (initmem) memory: 5584K
May 02 08:02:43 dom0 kernel: Write protecting the kernel read-only data: 30720k
May 02 08:02:43 dom0 kernel: Freeing unused kernel image (rodata/data gap) memory: 196K
May 02 08:02:43 dom0 kernel: Run /init as init process
May 02 08:02:43 dom0 kernel:   with arguments:
May 02 08:02:43 dom0 kernel:     /init
May 02 08:02:43 dom0 kernel:     placeholder
May 02 08:02:43 dom0 kernel:     x86_64
May 02 08:02:43 dom0 kernel:     rhgb
May 02 08:02:43 dom0 kernel:   with environment:
May 02 08:02:43 dom0 kernel:     HOME=/
May 02 08:02:43 dom0 kernel:     TERM=linux
May 02 08:02:43 dom0 systemd[1]: systemd 251.19-1.fc37 running in system mode (+PAM +AUDIT +SELINUX -APPARMOR +IMA +SMACK +SECCOMP -GCRYPT +GNUTLS +OPENSSL +ACL +BLKID +CURL +ELFUTILS +FIDO2 +IDN2 -IDN -IPTC +KMOD +LIBCRYPTSETUP +LIBFDISK +PCRE2 +PWQUALITY +P11KIT +QRENCODE +TPM2 +BZIP2 +LZ4 +XZ +ZLIB +ZSTD +BPF_FRAMEWORK +XKBCOMMON +UTMP +SYSVINIT default-hierarchy=unified)
May 02 08:02:43 dom0 systemd[1]: Detected virtualization xen.
May 02 08:02:43 dom0 systemd[1]: Detected architecture x86-64.
May 02 08:02:43 dom0 systemd[1]: Running in initial RAM disk.
May 02 08:02:43 dom0 systemd[1]: Hostname set to <dom0>.
May 02 08:02:43 dom0 systemd[1]: Failed to open libbpf, cgroup BPF features disabled: Operation not supported
May 02 08:02:43 dom0 systemd[1]: Queued start job for default target initrd.target.
May 02 08:02:43 dom0 systemd[1]: Reached target initrd-usr-fs.target - Initrd /usr File System.
May 02 08:02:43 dom0 systemd[1]: Reached target local-fs.target - Local File Systems.
May 02 08:02:43 dom0 systemd[1]: Reached target slices.target - Slice Units.
May 02 08:02:43 dom0 systemd[1]: Reached target swap.target - Swaps.
May 02 08:02:43 dom0 systemd[1]: Reached target timers.target - Timer Units.
May 02 08:02:43 dom0 systemd[1]: Listening on systemd-journald-audit.socket - Journal Audit Socket.
May 02 08:02:43 dom0 systemd[1]: Listening on systemd-journald-dev-log.socket - Journal Socket (/dev/log).
May 02 08:02:43 dom0 systemd[1]: Listening on systemd-journald.socket - Journal Socket.
May 02 08:02:43 dom0 systemd[1]: Listening on systemd-udevd-control.socket - udev Control Socket.
May 02 08:02:43 dom0 systemd[1]: Listening on systemd-udevd-kernel.socket - udev Kernel Socket.
May 02 08:02:43 dom0 systemd[1]: Reached target sockets.target - Socket Units.
May 02 08:02:43 dom0 systemd[1]: Starting kmod-static-nodes.service - Create List of Static Device Nodes...
May 02 08:02:43 dom0 systemd[1]: memstrack.service - Memstrack Anylazing Service was skipped because all trigger condition checks failed.
May 02 08:02:43 dom0 systemd[1]: Starting systemd-journald.service - Journal Service...
May 02 08:02:43 dom0 systemd[1]: Starting systemd-modules-load.service - Load Kernel Modules...
May 02 08:02:43 dom0 systemd[1]: Starting systemd-vconsole-setup.service - Setup Virtual Console...
May 02 08:02:43 dom0 systemd[1]: Finished kmod-static-nodes.service - Create List of Static Device Nodes.
May 02 08:02:43 dom0 systemd[1]: Starting systemd-tmpfiles-setup-dev.service - Create Static Device Nodes in /dev...
May 02 08:02:43 dom0 systemd[1]: Finished systemd-tmpfiles-setup-dev.service - Create Static Device Nodes in /dev.
May 02 08:02:43 dom0 kernel: audit: type=1130 audit(1746187363.974:2): pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-tmpfiles-setup-dev comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:43 dom0 kernel: alua: device handler registered
May 02 08:02:43 dom0 kernel: emc: device handler registered
May 02 08:02:43 dom0 kernel: rdac: device handler registered
May 02 08:02:43 dom0 kernel: xen:xen_evtchn: Event-channel device installed
May 02 08:02:43 dom0 kernel: xen_pciback: backend is vpci
May 02 08:02:43 dom0 kernel: xen_acpi_processor: Uploading Xen processor PM info
May 02 08:02:43 dom0 systemd[1]: Finished systemd-modules-load.service - Load Kernel Modules.
May 02 08:02:43 dom0 kernel: audit: type=1130 audit(1746187363.993:3): pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-modules-load comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:43 dom0 systemd-journald[317]: Journal started
May 02 08:02:43 dom0 systemd-journald[317]: Runtime Journal (/run/log/journal/4d78874086394993b8b464392829a0e3) is 8.0M, max 77.5M, 69.5M free.
May 02 08:02:43 dom0 audit[1]: SERVICE_START pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-tmpfiles-setup-dev comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:43 dom0 audit[1]: SERVICE_START pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-modules-load comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:43 dom0 systemd-modules-load[318]: Module 'msr' is built in
May 02 08:02:43 dom0 systemd-modules-load[318]: Inserted module 'dm_multipath'
May 02 08:02:43 dom0 systemd-modules-load[318]: Inserted module 'uinput'
May 02 08:02:43 dom0 systemd-modules-load[318]: Inserted module 'scsi_dh_alua'
May 02 08:02:43 dom0 systemd-modules-load[318]: Inserted module 'scsi_dh_emc'
May 02 08:02:43 dom0 systemd-modules-load[318]: Inserted module 'scsi_dh_rdac'
May 02 08:02:43 dom0 systemd-modules-load[318]: Inserted module 'xen_evtchn'
May 02 08:02:43 dom0 systemd-modules-load[318]: Inserted module 'xen_gntdev'
May 02 08:02:43 dom0 systemd-modules-load[318]: Inserted module 'xen_gntalloc'
May 02 08:02:43 dom0 systemd-modules-load[318]: Inserted module 'xen_blkback'
May 02 08:02:43 dom0 systemd-modules-load[318]: Inserted module 'xen_pciback'
May 02 08:02:43 dom0 systemd-modules-load[318]: Inserted module 'xen_privcmd'
May 02 08:02:43 dom0 systemd-modules-load[318]: Inserted module 'xen_acpi_processor'
May 02 08:02:44 dom0 audit[1]: SERVICE_START pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-journald comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:44 dom0 systemd[1]: Starting systemd-sysctl.service - Apply Kernel Variables...
May 02 08:02:44 dom0 systemd[1]: Started systemd-journald.service - Journal Service.
May 02 08:02:44 dom0 kernel: audit: type=1130 audit(1746187364.043:4): pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-journald comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:44 dom0 systemd[1]: Finished systemd-vconsole-setup.service - Setup Virtual Console.
May 02 08:02:44 dom0 audit[1]: SERVICE_START pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-vconsole-setup comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:44 dom0 systemd[1]: dracut-cmdline-ask.service - dracut ask for additional cmdline parameters was skipped because all trigger condition checks failed.
May 02 08:02:44 dom0 kernel: audit: type=1130 audit(1746187364.044:5): pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-vconsole-setup comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:44 dom0 systemd[1]: Starting dracut-cmdline.service - dracut cmdline hook...
May 02 08:02:44 dom0 systemd[1]: Starting systemd-tmpfiles-setup.service - Create Volatile Files and Directories...
May 02 08:02:44 dom0 systemd[1]: Finished systemd-sysctl.service - Apply Kernel Variables.
May 02 08:02:44 dom0 audit[1]: SERVICE_START pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-sysctl comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:44 dom0 kernel: audit: type=1130 audit(1746187364.049:6): pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-sysctl comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:44 dom0 systemd[1]: Finished systemd-tmpfiles-setup.service - Create Volatile Files and Directories.
May 02 08:02:44 dom0 audit[1]: SERVICE_START pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-tmpfiles-setup comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:44 dom0 kernel: audit: type=1130 audit(1746187364.055:7): pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-tmpfiles-setup comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:44 dom0 dracut-cmdline[336]: dracut-4.2 (R4.2) dracut-059-5.fc37
May 02 08:02:44 dom0 dracut-cmdline[336]: Using kernel command line parameters:    placeholder root=/dev/mapper/qubes_dom0-root ro rd.lvm.lv=qubes_dom0/root rd.lvm.lv=qubes_dom0/swap plymouth.ignore-serial-consoles 6.6.77-1.qubes.fc37.x86_64 x86_64 rhgb quiet usbcore.authorized_default=0 drm.debug=0xe log_buf_len=4M ignore_loglevel
May 02 08:02:44 dom0 kernel: pciback 0000:00:1f.6: xen_pciback: seizing device
May 02 08:02:44 dom0 kernel: xen: registering gsi 16 triggering 0 polarity 1
May 02 08:02:44 dom0 kernel: Already setup the GSI :16
May 02 08:02:44 dom0 dracut-cmdline[336]: Restricting USB in dom0 via usbguard.
May 02 08:02:44 dom0 systemd[1]: Reloading.
May 02 08:02:44 dom0 audit: BPF prog-id=6 op=LOAD
May 02 08:02:44 dom0 audit: BPF prog-id=3 op=UNLOAD
May 02 08:02:44 dom0 audit: BPF prog-id=7 op=LOAD
May 02 08:02:44 dom0 audit: BPF prog-id=8 op=LOAD
May 02 08:02:44 dom0 audit: BPF prog-id=4 op=UNLOAD
May 02 08:02:44 dom0 audit: BPF prog-id=5 op=UNLOAD
May 02 08:02:44 dom0 kernel: audit: type=1334 audit(1746187364.333:8): prog-id=6 op=LOAD
May 02 08:02:44 dom0 kernel: audit: type=1334 audit(1746187364.333:9): prog-id=3 op=UNLOAD
May 02 08:02:44 dom0 kernel: audit: type=1334 audit(1746187364.333:10): prog-id=7 op=LOAD
May 02 08:02:44 dom0 audit: BPF prog-id=9 op=LOAD
May 02 08:02:44 dom0 audit: BPF prog-id=10 op=LOAD
May 02 08:02:44 dom0 audit: BPF prog-id=11 op=LOAD
May 02 08:02:44 dom0 systemd[1]: Starting usbguard.service - USBGuard daemon...
May 02 08:02:44 dom0 usbguard-daemon[432]: [1746187364.373] (W) PERMISSIONS CHECK ON POLICY FILE ARE TURNED OFF!
May 02 08:02:44 dom0 systemd[1]: usbguard.service: Supervising process 444 which is not our child. We'll most likely not notice when it exits.
May 02 08:02:44 dom0 systemd[1]: Started usbguard.service - USBGuard daemon.
May 02 08:02:44 dom0 audit[1]: SERVICE_START pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=usbguard comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:44 dom0 systemd[1]: Finished dracut-cmdline.service - dracut cmdline hook.
May 02 08:02:44 dom0 audit[1]: SERVICE_START pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=dracut-cmdline comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:44 dom0 systemd[1]: Starting dracut-pre-udev.service - dracut pre-udev hook...
May 02 08:02:44 dom0 systemd[1]: Finished dracut-pre-udev.service - dracut pre-udev hook.
May 02 08:02:44 dom0 audit[1]: SERVICE_START pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=dracut-pre-udev comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:44 dom0 audit: BPF prog-id=12 op=LOAD
May 02 08:02:44 dom0 audit: BPF prog-id=13 op=LOAD
May 02 08:02:44 dom0 systemd[1]: Starting systemd-udevd.service - Rule-based Manager for Device Events and Files...
May 02 08:02:44 dom0 systemd-udevd[491]: Using default interface naming scheme 'v251'.
May 02 08:02:44 dom0 systemd[1]: Started systemd-udevd.service - Rule-based Manager for Device Events and Files.
May 02 08:02:44 dom0 audit[1]: SERVICE_START pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-udevd comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:44 dom0 systemd[1]: dracut-pre-trigger.service - dracut pre-trigger hook was skipped because all trigger condition checks failed.
May 02 08:02:44 dom0 systemd[1]: Starting systemd-udev-trigger.service - Coldplug All udev Devices...
May 02 08:02:44 dom0 kernel: tpm tpm0: auth session is active
May 02 08:02:44 dom0 systemd[1]: Created slice system-modprobe.slice - Slice /system/modprobe.
May 02 08:02:44 dom0 systemd[1]: Starting modprobe@configfs.service - Load Kernel Module configfs...
May 02 08:02:44 dom0 systemd[1]: modprobe@configfs.service: Deactivated successfully.
May 02 08:02:44 dom0 systemd[1]: Finished modprobe@configfs.service - Load Kernel Module configfs.
May 02 08:02:44 dom0 audit[1]: SERVICE_START pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=modprobe@configfs comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:44 dom0 audit[1]: SERVICE_STOP pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=modprobe@configfs comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:44 dom0 systemd[1]: Mounting sys-kernel-config.mount - Kernel Configuration File System...
May 02 08:02:44 dom0 systemd[1]: Mounted sys-kernel-config.mount - Kernel Configuration File System.
May 02 08:02:44 dom0 systemd[1]: Finished systemd-udev-trigger.service - Coldplug All udev Devices.
May 02 08:02:44 dom0 audit[1]: SERVICE_START pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-udev-trigger comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:44 dom0 systemd[1]: Reached target sysinit.target - System Initialization.
May 02 08:02:44 dom0 systemd[1]: Starting dracut-initqueue.service - dracut initqueue hook...
May 02 08:02:44 dom0 systemd[1]: Starting plymouth-start.service - Show Plymouth Boot Screen...
May 02 08:02:44 dom0 systemd[1]: Received SIGRTMIN+20 from PID 526 (plymouthd).
May 02 08:02:44 dom0 systemd[1]: Started plymouth-start.service - Show Plymouth Boot Screen.
May 02 08:02:44 dom0 audit[1]: SERVICE_START pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=plymouth-start comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:44 dom0 systemd[1]: systemd-ask-password-console.path - Dispatch Password Requests to Console Directory Watch was skipped because of a failed condition check (ConditionPathExists=!/run/plymouth/pid).
May 02 08:02:44 dom0 systemd[1]: Started systemd-ask-password-plymouth.path - Forward Password Requests to Plymouth Directory Watch.
May 02 08:02:44 dom0 systemd[1]: Reached target paths.target - Path Units.
May 02 08:02:44 dom0 systemd[1]: Reached target basic.target - Basic System.
May 02 08:02:44 dom0 kernel: xen: registering gsi 16 triggering 0 polarity 1
May 02 08:02:44 dom0 kernel: Already setup the GSI :16
May 02 08:02:44 dom0 kernel: xhci_hcd 0000:00:14.0: xHCI Host Controller
May 02 08:02:44 dom0 kernel: xhci_hcd 0000:00:14.0: new USB bus registered, assigned bus number 1
May 02 08:02:44 dom0 kernel: xhci_hcd 0000:00:14.0: hcc params 0x200077c1 hci version 0x110 quirks 0x0000000000009810
May 02 08:02:44 dom0 kernel: xhci_hcd 0000:00:14.0: xHCI Host Controller
May 02 08:02:44 dom0 kernel: xhci_hcd 0000:00:14.0: new USB bus registered, assigned bus number 2
May 02 08:02:44 dom0 kernel: xhci_hcd 0000:00:14.0: Host supports USB 3.1 Enhanced SuperSpeed
May 02 08:02:44 dom0 kernel: usb usb1: New USB device found, idVendor=1d6b, idProduct=0002, bcdDevice= 6.12
May 02 08:02:44 dom0 kernel: usb usb1: New USB device strings: Mfr=3, Product=2, SerialNumber=1
May 02 08:02:44 dom0 kernel: usb usb1: Product: xHCI Host Controller
May 02 08:02:44 dom0 kernel: usb usb1: Manufacturer: Linux 6.12.21-1.qubes.fc37.x86_64 xhci-hcd
May 02 08:02:44 dom0 kernel: usb usb1: SerialNumber: 0000:00:14.0
May 02 08:02:44 dom0 kernel: hub 1-0:1.0: USB hub found
May 02 08:02:44 dom0 kernel: hub 1-0:1.0: 16 ports detected
May 02 08:02:44 dom0 kernel: usb usb2: New USB device found, idVendor=1d6b, idProduct=0003, bcdDevice= 6.12
May 02 08:02:44 dom0 kernel: usb usb2: New USB device strings: Mfr=3, Product=2, SerialNumber=1
May 02 08:02:44 dom0 kernel: usb usb2: Product: xHCI Host Controller
May 02 08:02:44 dom0 kernel: usb usb2: Manufacturer: Linux 6.12.21-1.qubes.fc37.x86_64 xhci-hcd
May 02 08:02:44 dom0 kernel: usb usb2: SerialNumber: 0000:00:14.0
May 02 08:02:44 dom0 kernel: hub 2-0:1.0: USB hub found
May 02 08:02:44 dom0 kernel: hub 2-0:1.0: 10 ports detected
May 02 08:02:44 dom0 audit[444]: USER_DEVICE pid=444 uid=0 auid=4294967295 ses=4294967295 msg='op="inserted-device" device="/devices/pci0000:00/0000:00:14.0/usb1" device_rule=616C6C6F7720696420316436623A30303032206E616D6520227848434920486F737420436F6E74726F6C6C657222207669612D706F72742022757362312220776974682D696E746572666163652030393A30303A303020776974682D636F6E6E6563742D74797065202222 exe="/usr/sbin/usbguard-daemon" hostname=? addr=? terminal=? res=success'
May 02 08:02:44 dom0 audit[444]: USER_DEVICE pid=444 uid=0 auid=4294967295 ses=4294967295 msg='op="changed-authorization-state-for" device="/devices/pci0000:00/0000:00:14.0/usb1" target="allow" device_rule=616C6C6F7720696420316436623A30303032206E616D6520227848434920486F737420436F6E74726F6C6C657222207669612D706F72742022757362312220776974682D696E746572666163652030393A30303A303020776974682D636F6E6E6563742D74797065202222 exe="/usr/sbin/usbguard-daemon" hostname=? addr=? terminal=? res=success'
May 02 08:02:44 dom0 audit[444]: USER_DEVICE pid=444 uid=0 auid=4294967295 ses=4294967295 msg='op="inserted-device" device="/devices/pci0000:00/0000:00:14.0/usb2" device_rule=616C6C6F7720696420316436623A30303033206E616D6520227848434920486F737420436F6E74726F6C6C657222207669612D706F72742022757362322220776974682D696E746572666163652030393A30303A303020776974682D636F6E6E6563742D74797065202222 exe="/usr/sbin/usbguard-daemon" hostname=? addr=? terminal=? res=success'
May 02 08:02:44 dom0 audit[444]: USER_DEVICE pid=444 uid=0 auid=4294967295 ses=4294967295 msg='op="changed-authorization-state-for" device="/devices/pci0000:00/0000:00:14.0/usb2" target="allow" device_rule=616C6C6F7720696420316436623A30303033206E616D6520227848434920486F737420436F6E74726F6C6C657222207669612D706F72742022757362322220776974682D696E746572666163652030393A30303A303020776974682D636F6E6E6563742D74797065202222 exe="/usr/sbin/usbguard-daemon" hostname=? addr=? terminal=? res=success'
May 02 08:02:45 dom0 kernel: usb 1-9: new low-speed USB device number 2 using xhci_hcd
May 02 08:02:45 dom0 kernel: usb 1-9: New USB device found, idVendor=046d, idProduct=c34b, bcdDevice=62.00
May 02 08:02:45 dom0 kernel: usb 1-9: New USB device strings: Mfr=1, Product=2, SerialNumber=0
May 02 08:02:45 dom0 kernel: usb 1-9: Product: USB Keyboard
May 02 08:02:45 dom0 kernel: usb 1-9: Manufacturer: Logitech
May 02 08:02:45 dom0 kernel: usb 1-9: Device is not authorized for usage
May 02 08:02:45 dom0 kernel: usb 1-10: new low-speed USB device number 3 using xhci_hcd
May 02 08:02:45 dom0 kernel: xen: registering gsi 16 triggering 0 polarity 1
May 02 08:02:45 dom0 kernel: Already setup the GSI :16
May 02 08:02:45 dom0 kernel: i915 0000:00:02.0: [drm] Found COFFEELAKE (device ID 3e98) display version 9.00 stepping N/A
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_gt_common_init_early [i915]] WOPCM: 1024K
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_uc_init_early [i915]] GT0: enable_guc=0 (guc:no submission:no huc:no slpc:no)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_pch_type [i915]] Found Cannon Lake PCH (CNP)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_gt_probe_all [i915]] GT0: Setting up Primary GT
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_uncore_init_mmio [i915]] unclaimed mmio detected on uncore init, clearing
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_display_device_info_runtime_init [i915]] rawclk rate: 24000 kHz
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:ggtt_probe_hw [i915]] GGTT size = 4096M
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:ggtt_probe_hw [i915]] GMADR size = 256M
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:ggtt_probe_hw [i915]] DSM size = 64M
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm] VT-d active for gfx access
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: vgaarb: deactivate vga console
May 02 08:02:46 dom0 kernel: Console: switching to colour dummy device 80x25
May 02 08:02:46 dom0 kernel: tmpfs: Unsupported parameter 'huge'
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm] Transparent Hugepage support is recommended for optimal performance when IOMMU is enabled!
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:init_reserved_stolen [i915]] GEN6_STOLEN_RESERVED = 8ff00047
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_gem_init_stolen [i915]] Memory reserved for graphics device: 65536K, usable: 64512K
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_memory_regions_hw_probe [i915]] Memory region(0): system: 3876 MiB [mem 0x00000000-0xf2452fff], io: n/a
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_memory_regions_hw_probe [i915]] Memory region(5): stolen-system: 63 MiB [mem 0x8c000000-0x8fefffff], io: n/a
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_opregion_setup [i915]] graphic opregion physical addr: 0x8a380018
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_opregion_setup [i915]] ACPI OpRegion version 2.0.0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_opregion_setup [i915]] Public ACPI methods supported
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_opregion_setup [i915]] SWSCI Mailbox #2 present for opregion v2.x
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_opregion_setup [i915]] SWSCI supported
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_opregion_setup [i915]] SWSCI GBDA callbacks 00000cb3, SBCB callbacks 00300483
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_opregion_setup [i915]] ASLE supported
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_opregion_setup [i915]] ASLE extension supported
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_opregion_setup [i915]] Found valid VBT in ACPI OpRegion (Mailbox #4)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:skl_get_dram_info [i915]] DRAM type: DDR4
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:skl_dram_get_dimm_info [i915]] CH0 DIMM L size: 64 Gb, width: X8, ranks: 1, 16Gb DIMMs: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:skl_dram_get_dimm_info [i915]] CH0 DIMM S size: 0 Gb, width: X0, ranks: 0, 16Gb DIMMs: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:skl_dram_get_channel_info [i915]] CH0 ranks: 1, 16Gb DIMMs: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:skl_dram_get_dimm_info [i915]] CH1 DIMM L size: 64 Gb, width: X8, ranks: 1, 16Gb DIMMs: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:skl_dram_get_dimm_info [i915]] CH1 DIMM S size: 0 Gb, width: X0, ranks: 0, 16Gb DIMMs: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:skl_dram_get_channel_info [i915]] CH1 ranks: 1, 16Gb DIMMs: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:skl_dram_get_channels_info [i915]] Memory configuration is symmetric? yes
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dram_detect [i915]] Num qgv points 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dram_detect [i915]] DRAM channels: 2
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_hw_probe [i915]] Watermark level 0 adjustment needed: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_bios_init [i915]] Set default to SSC at 120000 kHz
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_bios_init [i915]] VBT signature "$VBT COFFEELAKE     ", BDB version 209
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:init_bdb_block [i915]] Found BDB block 1 (size 5, min size 7)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:init_bdb_block [i915]] Found BDB block 2 (size 309, min size 5)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:init_bdb_block [i915]] Found BDB block 9 (size 96, min size 100)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:init_bdb_block [i915]] Found BDB block 12 (size 19, min size 19)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:init_bdb_block [i915]] Found BDB block 27 (size 748, min size 848)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:init_bdb_block [i915]] Found BDB block 40 (size 26, min size 34)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:init_bdb_block [i915]] Found BDB block 41 (size 148, min size 148)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:init_bdb_block [i915]] Found BDB block 42 (size 1298, min size 1366)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:init_bdb_block [i915]] Found BDB block 43 (size 129, min size 305)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:init_bdb_block [i915]] Found BDB block 44 (size 21, min size 136)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:parse_general_features [i915]] BDB_GENERAL_FEATURES int_tv_support 0 int_crt_support 0 lvds_use_ssc 0 lvds_ssc_freq 120000 display_clock_mode 0 fdi_rx_polarity_inverted 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:parse_general_definitions [i915]] crt_ddc_bus_pin: 2
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:parse_general_definitions [i915]] Found VBT child device with type 0x78c6
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:parse_general_definitions [i915]] Found VBT child device with type 0x60d6
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:parse_general_definitions [i915]] Found VBT child device with type 0x60d6
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:parse_general_definitions [i915]] Found VBT child device with type 0x60d2
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:parse_general_definitions [i915]] Found VBT child device with type 0x68c6
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_bios_init [i915]] Skipping SDVO device mapping
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:print_ddi_port [i915]] Port A VBT info: CRT:0 DVI:0 HDMI:0 DP:1 eDP:1 DSI:0 DP++:0 LSPCON:0 USB-Type-C:0 TBT:0 DSC:0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:print_ddi_port [i915]] Port A VBT HDMI level shift: 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:print_ddi_port [i915]] Port B VBT info: CRT:0 DVI:1 HDMI:1 DP:1 eDP:0 DSI:0 DP++:1 LSPCON:0 USB-Type-C:0 TBT:0 DSC:0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:print_ddi_port [i915]] Port B VBT HDMI level shift: 8
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:print_ddi_port [i915]] Port C VBT info: CRT:0 DVI:1 HDMI:1 DP:1 eDP:0 DSI:0 DP++:1 LSPCON:0 USB-Type-C:0 TBT:0 DSC:0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:print_ddi_port [i915]] Port C VBT HDMI level shift: 8
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:print_ddi_port [i915]] Port D VBT info: CRT:0 DVI:1 HDMI:1 DP:0 eDP:0 DSI:0 DP++:0 LSPCON:0 USB-Type-C:0 TBT:0 DSC:0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:print_ddi_port [i915]] Port D VBT HDMI level shift: 8
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:print_ddi_port [i915]] Port E VBT info: CRT:0 DVI:0 HDMI:0 DP:1 eDP:0 DSI:0 DP++:0 LSPCON:0 USB-Type-C:0 TBT:0 DSC:0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:print_ddi_port [i915]] Port E VBT HDMI level shift: 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:get_allowed_dc_mask [i915]] Allowed DC state mask 02
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:gen9_set_dc_state.part.0 [i915]] Setting DC state from 00 to 00
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] enabling PW_1
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] enabling MISC_IO
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:skl_cdclk_init_hw [i915]] Current CDCLK 675000 kHz, VCO 8100000 kHz, ref 24000 kHz, bypass 24000 kHz, voltage level 3
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_update_max_cdclk [i915]] Max CD clock rate: 675000 kHz
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_power_domains_init_hw [i915]] Max dotclock rate: 675000 kHz
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:gen9_dbuf_slices_update [i915]] Updating dbuf slices to 0x1
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] enabling always-on
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] enabling DC_off
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:gen9_set_dc_state.part.0 [i915]] Setting DC state from 00 to 00
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] enabling PW_2
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: vgaarb: VGA decodes changed: olddecodes=io+mem,decodes=io+mem:owns=io+mem
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] enabling DDI_IO_A_E
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] enabling DDI_IO_B
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] enabling DDI_IO_C
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] enabling DDI_IO_D
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dmc_init [i915]] Loading i915/kbl_dmc_ver1_04.bin
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:parse_dmc_fw_header.isra.0 [i915]] DMC 0:
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:parse_dmc_fw_header.isra.0 [i915]]  mmio[0]: 0x8f074 = 0x2fc0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:parse_dmc_fw_header.isra.0 [i915]]  mmio[1]: 0x8f004 = 0xb40068 (EVT_HTP)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:parse_dmc_fw_header.isra.0 [i915]]  mmio[2]: 0x8f034 = 0xc003b400 (EVT_CTL)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm] Finished loading DMC firmware i915/kbl_dmc_ver1_04.bin (v1.4)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_fbc_init [i915]] Sanitized enable_fbc value: 1
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:skl_sagv_disable [i915]] Disabling SAGV
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_sagv_init [i915]] SAGV supported: yes, original SAGV block time: 30 us
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen9 Plane WM0 latency 2 (2.0 usec)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen9 Plane WM1 latency 19 (19.0 usec)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen9 Plane WM2 latency 28 (28.0 usec)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen9 Plane WM3 latency 32 (32.0 usec)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen9 Plane WM4 latency 63 (63.0 usec)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen9 Plane WM5 latency 77 (77.0 usec)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen9 Plane WM6 latency 83 (83.0 usec)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen9 Plane WM7 latency 99 (99.0 usec)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_display_driver_probe_nogem [i915]] 3 display pipes available.
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_cdclk_dump_config [i915]] Current CDCLK 675000 kHz, VCO 8100000 kHz, ref 24000 kHz, bypass 24000 kHz, voltage level 3
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_ch [i915]] [ENCODER:98:DDI A/PHY A] Using AUX CH A (VBT)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_init_connector [i915]] Adding eDP connector on [ENCODER:98:DDI A/PHY A]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_opregion_get_panel_type [i915]] Ignoring OpRegion panel type (0)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:get_panel_type [i915]] Panel type (VBT): 2
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:get_panel_type [i915]] Selected panel type (VBT): 2
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] DRRS supported mode is static
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:parse_lfp_data [i915]] Found panel mode in BIOS VBT legacy lfp table: "1024x768": 60 65000 1024 1048 1184 1344 768 771 777 806 0x8 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:parse_lfp_data [i915]] VBT initial LVDS value 300
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:parse_lfp_data [i915]] Panel manufacturer name: MS_, product code: 3, serial number: 3, year of manufacture: 2002
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:parse_lfp_data [i915]] Panel name: LFP_PanelName
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:parse_lfp_data [i915]] Seamless DRRS min refresh rate: 0 Hz
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:parse_lfp_backlight [i915]] VBT backlight PWM modulation frequency 200 Hz, active high, min brightness 0, level 255, controller 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] DRRS State Enabled:0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:pps_initial_setup [i915]] [ENCODER:98:DDI A/PHY A] initial power sequencer: PPS 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_pps_dump_state [i915]] bios t1_t3 0 t8 0 t9 0 t10 0 t11_t12 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_pps_dump_state [i915]] vbt t1_t3 2000 t8 10 t9 2000 t10 500 t11_t12 6000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:pps_init_delays [i915]] spec t1_t3 2100 t8 500 t9 500 t10 5000 t11_t12 6100
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:pps_init_delays [i915]] panel power up delay 200, power down delay 50, power cycle delay 600
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:pps_init_delays [i915]] backlight on delay 1, off delay 200
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:pps_init_registers [i915]] panel power sequencer register settings: PP_ON 0x7d00001, PP_OFF 0x1f40001, PP_DIV 0x60
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:pps_vdd_init [i915]] [ENCODER:98:DDI A/PHY A] PPS 0 VDD left on by BIOS, adjusting state tracking
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: usb 1-10: New USB device found, idVendor=046d, idProduct=c077, bcdDevice=72.00
May 02 08:02:46 dom0 kernel: usb 1-10: New USB device strings: Mfr=1, Product=2, SerialNumber=0
May 02 08:02:46 dom0 kernel: usb 1-10: Product: USB Optical Mouse
May 02 08:02:46 dom0 kernel: usb 1-10: Manufacturer: Logitech
May 02 08:02:46 dom0 kernel: usb 1-10: Device is not authorized for usage
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: input: Logitech USB Keyboard as /devices/pci0000:00/0000:00:14.0/usb1/1-9/1-9:1.0/0003:046D:C34B.0001/input/input3
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: hid-generic 0003:046D:C34B.0001: input,hidraw0: USB HID v1.10 Keyboard [Logitech USB Keyboard] on usb-0000:00:14.0-9/input0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: input: Logitech USB Keyboard as /devices/pci0000:00/0000:00:14.0/usb1/1-9/1-9:1.1/0003:046D:C34B.0002/input/input4
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: hid-generic 0003:046D:C34B.0002: input,hidraw1: USB HID v1.10 Device [Logitech USB Keyboard] on usb-0000:00:14.0-9/input1
May 02 08:02:46 dom0 kernel: usb 1-9: authorized to connect
May 02 08:02:46 dom0 kernel: input: Logitech USB Optical Mouse as /devices/pci0000:00/0000:00:14.0/usb1/1-10/1-10:1.0/0003:046D:C077.0003/input/input5
May 02 08:02:46 dom0 kernel: hid-generic 0003:046D:C077.0003: input,hidraw2: USB HID v1.11 Mouse [Logitech USB Optical Mouse] on usb-0000:00:14.0-10/input0
May 02 08:02:46 dom0 kernel: usb 1-10: authorized to connect
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_dpcd_access [drm_display_helper]] AUX A/DDI A/PHY A: Too many retries, giving up. First error: -110
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_xfer [i915]] AUX A/DDI A/PHY A: timeout (status 0x7d40023f)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_dpcd_access [drm_display_helper]] AUX A/DDI A/PHY A: Too many retries, giving up. First error: -110
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm] [ENCODER:98:DDI A/PHY A] failed to retrieve link info, disabling eDP
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_pps_vdd_off_sync_unlocked [i915]] [ENCODER:98:DDI A/PHY A] PPS 0 turning VDD off
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_pps_vdd_off_sync_unlocked [i915]] [ENCODER:98:DDI A/PHY A] PPS 0 PP_STATUS: 0x00000000 PP_CONTROL: 0x00000060
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_ch [i915]] [ENCODER:98:DDI B/PHY B] Using AUX CH B (VBT)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_init_connector [i915]] Adding DP connector on [ENCODER:98:DDI B/PHY B]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_init_connector [i915]] PSR condition failed: Port not supported
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_hdmi_init_connector [i915]] Adding HDMI connector on [ENCODER:98:DDI B/PHY B]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_hdmi_ddc_pin [i915]] [ENCODER:98:DDI B/PHY B] Using DDC pin 0x1 (VBT)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_ch [i915]] [ENCODER:115:DDI C/PHY C] Using AUX CH C (VBT)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_init_connector [i915]] Adding DP connector on [ENCODER:115:DDI C/PHY C]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_init_connector [i915]] PSR condition failed: Port not supported
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_hdmi_init_connector [i915]] Adding HDMI connector on [ENCODER:115:DDI C/PHY C]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_hdmi_ddc_pin [i915]] [ENCODER:115:DDI C/PHY C] Using DDC pin 0x2 (VBT)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_hdmi_init_connector [i915]] Adding HDMI connector on [ENCODER:125:DDI D/PHY D]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_hdmi_ddc_pin [i915]] [ENCODER:125:DDI D/PHY D] Using DDC pin 0x4 (VBT)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_aux_ch [i915]] [ENCODER:129:DDI E/PHY E] Using AUX CH A (VBT)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_init_connector [i915]] Adding DP connector on [ENCODER:129:DDI E/PHY E]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_init_connector [i915]] PSR condition failed: Port not supported
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [CRTC:53:pipe A] hw state readout: enabled
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [CRTC:75:pipe B] hw state readout: disabled
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [CRTC:97:pipe C] hw state readout: disabled
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [PLANE:32:plane 1A] hw state readout: disabled, pipe A
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [PLANE:40:plane 2A] hw state readout: disabled, pipe A
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [PLANE:48:cursor A] hw state readout: disabled, pipe A
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [PLANE:54:plane 1B] hw state readout: disabled, pipe B
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [PLANE:62:plane 2B] hw state readout: disabled, pipe B
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [PLANE:70:cursor B] hw state readout: disabled, pipe B
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [PLANE:76:plane 1C] hw state readout: disabled, pipe C
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [PLANE:84:plane 2C] hw state readout: disabled, pipe C
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [PLANE:92:cursor C] hw state readout: disabled, pipe C
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_read_dpcd_caps [drm_display_helper]] AUX B/DDI B/PHY B: DPCD: 12 14 84 00 01 00 01 40 02 00 02 00 00 00 00
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_dump_desc [drm_display_helper]] AUX B/DDI B/PHY B: DP sink: OUI 00-00-00 dev-ID  HW-rev 0.0 SW-rev 0.0 quirks 0x0000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [ENCODER:98:DDI B/PHY B] hw state readout: enabled, pipe A
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [ENCODER:100:DP-MST A] hw state readout: disabled, pipe A
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [ENCODER:101:DP-MST B] hw state readout: disabled, pipe B
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [ENCODER:102:DP-MST C] hw state readout: disabled, pipe C
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [ENCODER:115:DDI C/PHY C] hw state readout: disabled, pipe A
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [ENCODER:117:DP-MST A] hw state readout: disabled, pipe A
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [ENCODER:118:DP-MST B] hw state readout: disabled, pipe B
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [ENCODER:119:DP-MST C] hw state readout: disabled, pipe C
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [ENCODER:125:DDI D/PHY D] hw state readout: disabled, pipe A
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [ENCODER:129:DDI E/PHY E] hw state readout: disabled, pipe A
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dpll_readout_hw_state [i915]] DPLL 0 hw state readout: pipe_mask 0x0, on 1
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_reference_shared_dpll_crtc [i915]] [CRTC:53:pipe A] reserving DPLL 1
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dpll_readout_hw_state [i915]] DPLL 1 hw state readout: pipe_mask 0x1, on 1
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dpll_readout_hw_state [i915]] DPLL 2 hw state readout: pipe_mask 0x0, on 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dpll_readout_hw_state [i915]] DPLL 3 hw state readout: pipe_mask 0x0, on 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [CONNECTOR:99:DP-1] hw state readout: enabled
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [CONNECTOR:110:HDMI-A-1] hw state readout: disabled
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [CONNECTOR:116:DP-2] hw state readout: disabled
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [CONNECTOR:122:HDMI-A-2] hw state readout: disabled
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [CONNECTOR:126:HDMI-A-3] hw state readout: disabled
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [CONNECTOR:130:DP-3] hw state readout: disabled
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [PLANE:32:plane 1A] min_cdclk 0 kHz
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [PLANE:40:plane 2A] min_cdclk 0 kHz
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [PLANE:48:cursor A] min_cdclk 0 kHz
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_bw_crtc_update [i915]] pipe A data rate 0 num active planes 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [PLANE:54:plane 1B] min_cdclk 0 kHz
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [PLANE:62:plane 2B] min_cdclk 0 kHz
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [PLANE:70:cursor B] min_cdclk 0 kHz
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_bw_crtc_update [i915]] pipe B data rate 0 num active planes 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [PLANE:76:plane 1C] min_cdclk 0 kHz
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [PLANE:84:plane 2C] min_cdclk 0 kHz
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_readout_hw_state [i915]] [PLANE:92:cursor C] min_cdclk 0 kHz
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_bw_crtc_update [i915]] pipe C data rate 0 num active planes 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_ddi_sanitize_encoder_pll_mapping [i915]] [ENCODER:115:DDI C/PHY C] is disabled/in DSI mode with an ungated DDI clock, gate it
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_ddi_sanitize_encoder_pll_mapping [i915]] [ENCODER:125:DDI D/PHY D] is disabled/in DSI mode with an ungated DDI clock, gate it
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_ddi_sanitize_encoder_pll_mapping [i915]] [ENCODER:129:DDI E/PHY E] is disabled/in DSI mode with an ungated DDI clock, gate it
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] [CRTC:53:pipe A] enable: yes [setup_hw_state]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] active: yes, output_types: DP (0x80), output format: RGB, sink format: RGB
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] cpu_transcoder: A, pipe bpp: 24, dithering: 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] MST master transcoder: <invalid>
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] port sync: master transcoder: <invalid>, slave transcoder bitmask = 0x0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] joiner: no, pipes: 0x0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] splitter: disabled, link count 0, overlap 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] dp m_n: lanes: 4; data_m: 1730150, data_n: 8388608, link_m: 144179, link_n: 524288, tu: 64
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] dp m2_n2: lanes: 4; data_m: 0, data_n: 0, link_m: 0, link_n: 0, tu: 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] fec: disabled, enhanced framing: enabled
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] sdp split: disabled
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] psr: disabled, selective update: disabled, panel replay: disabled, selective fetch: disabled
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] framestart delay: 1, MSA timing delay: 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] audio: 0, infoframes: 0, infoframes enabled: 0x0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] vrr: no, vmin: 0, vmax: 0, pipeline full: 0, guardband: 0 flipline: 0, vmin vblank: -1, vmax vblank: -2
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] requested mode: "1920x1080": 60 148500 720 2008 2052 2200 400 1084 1089 1125 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] adjusted mode: "1920x1080": 60 148500 1920 2008 2052 2200 1080 1084 1089 1125 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] crtc timings: clock=148500, hd=1920 hb=1920-2200 hs=2008-2052 ht=2200, vd=1080 vb=1080-1125 vs=1084-1089 vt=1125, flags=0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] pipe mode: "1920x1080": 60 148500 1920 2008 2052 2200 1080 1084 1089 1125 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] crtc timings: clock=148500, hd=1920 hb=1920-2200 hs=2008-2052 ht=2200, vd=1080 vb=1080-1125 vs=1084-1089 vt=1125, flags=0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] port clock: 540000, pipe src: 720x400+0+0, pixel rate 148500
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] linetime: 119, ips linetime: 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] num_scalers: 2, scaler_users: 0x80000000, scaler_id: 0, scaling_filter: 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] pch pfit: 1920x1080+0+0, enabled, force thru: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] ips: 0, double wide: 0, drrs: 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] dpll_hw_state: ctrl1: 0x1, cfgcr1: 0x0, cfgcr2: 0x0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] csc_mode: 0x0 gamma_mode: 0x0 gamma_enable: 0 csc_enable: 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] pre csc lut: 0 entries, post csc lut: 0 entries
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] pipe csc: pre offsets: 0x0000 0x0000 0x0000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] pipe csc: coefficients: 0x0000 0x0000 0x0000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] pipe csc: coefficients: 0x0000 0x0000 0x0000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] pipe csc: coefficients: 0x0000 0x0000 0x0000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] pipe csc: post offsets: 0x0000 0x0000 0x0000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] [CRTC:75:pipe B] enable: no [setup_hw_state]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] [CRTC:97:pipe C] enable: no [setup_hw_state]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dpll_sanitize_state [i915]] DPLL 0 enabled but not in use, disabling
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:skl_wm_get_hw_state [i915]] [CRTC:53:pipe A] dbuf slices 0x1, ddb (0 - 446), active pipes 0x1, mbus joined: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:skl_wm_get_hw_state [i915]] [CRTC:75:pipe B] dbuf slices 0x0, ddb (0 - 0), active pipes 0x1, mbus joined: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:skl_wm_get_hw_state [i915]] [CRTC:97:pipe C] dbuf slices 0x0, ddb (0 - 0), active pipes 0x1, mbus joined: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:init_ggtt [i915]] Reserved GGTT:[0, 2000] for use by error capture
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:init_ggtt [i915]] clearing unused GTT space: [2000, 100000000]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:gen9_gt_workarounds_init.isra.0 [i915]] MCR slice:0/subslice:0 = 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:wa_init_finish [i915]] GT0: Initialized 5 GT workarounds on global
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:wa_init_finish [i915]] GT0: Initialized 8 engine workarounds on rcs'0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:wa_init_finish [i915]] GT0: Initialized 5 whitelist workarounds on rcs'0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:wa_init_finish [i915]] GT0: Initialized 14 context workarounds on rcs'0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_engines_driver_register [i915]] renamed rcs'0 to rcs0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_engines_driver_register [i915]] renamed bcs'0 to bcs0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_engines_driver_register [i915]] renamed vcs'0 to vcs0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_engines_driver_register [i915]] renamed vecs'0 to vecs0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:skl_crtc_allocate_ddb [i915]] [CRTC:53:pipe A] dbuf slices 0x1 -> 0x1, ddb (0 - 446) -> (0 - 892), active pipes 0x1 -> 0x1
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:skl_print_wm_changes [i915]] [PLANE:32:plane 1A] ddb (   0 -  446) -> (   0 -    0), size  446 ->    0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:skl_print_wm_changes [i915]] [PLANE:48:cursor A] ddb (   0 -    0) -> ( 860 -  892), size    0 ->   32
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_atomic_setup_scaler [i915]] Attached scaler id 0.0 to CRTC:53
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_sysfs_connector_add] [CONNECTOR:99:DP-1] adding connector to sysfs
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_connector_register [i915]] registering AUX B/DDI B/PHY B bus for card0-DP-1
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_sysfs_connector_hotplug_event] [CONNECTOR:99:DP-1] generating connector hotplug event
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_sysfs_connector_add] [CONNECTOR:110:HDMI-A-1] adding connector to sysfs
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_sysfs_connector_hotplug_event] [CONNECTOR:110:HDMI-A-1] generating connector hotplug event
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_sysfs_connector_add] [CONNECTOR:116:DP-2] adding connector to sysfs
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_connector_register [i915]] registering AUX C/DDI C/PHY C bus for card0-DP-2
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_sysfs_connector_hotplug_event] [CONNECTOR:116:DP-2] generating connector hotplug event
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_sysfs_connector_add] [CONNECTOR:122:HDMI-A-2] adding connector to sysfs
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_sysfs_connector_hotplug_event] [CONNECTOR:122:HDMI-A-2] generating connector hotplug event
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_sysfs_connector_add] [CONNECTOR:126:HDMI-A-3] adding connector to sysfs
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_sysfs_connector_hotplug_event] [CONNECTOR:126:HDMI-A-3] generating connector hotplug event
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_sysfs_connector_add] [CONNECTOR:130:DP-3] adding connector to sysfs
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_connector_register [i915]] registering AUX A/DDI E/PHY E bus for card0-DP-3
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_sysfs_connector_hotplug_event] [CONNECTOR:130:DP-3] generating connector hotplug event
May 02 08:02:46 dom0 kernel: [drm] Initialized i915 1.6.0 for 0000:00:02.0 on minor 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_opregion_resume [i915]] 6 outputs detected
May 02 08:02:46 dom0 kernel: ACPI: video: Video Device [GFX0] (multi-head: yes  rom: no  post: no)
May 02 08:02:46 dom0 kernel: input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:00/input/input6
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_audio_init [i915]] use AUD_FREQ_CNTRL of 0x10 (init value 0x10)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR:99:DP-1]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_fbdev_init_bios [i915]] [PLANE:32:plane 1A] no fb, skipping
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_fbdev_init_bios [i915]] [CRTC:75:pipe B] not active, skipping
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_read_dpcd_caps [drm_display_helper]] AUX B/DDI B/PHY B: DPCD: 12 14 84 00 01 00 01 40 02 00 02 00 00 00 00
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_fbdev_init_bios [i915]] [CRTC:97:pipe C] not active, skipping
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_fbdev_init_bios [i915]] no active fbs found, not using BIOS config
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_dump_desc [drm_display_helper]] AUX B/DDI B/PHY B: DP sink: OUI 00-00-00 dev-ID  HW-rev 0.0 SW-rev 0.0 quirks 0x0000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_gem_open [i915]] 
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_client_modeset_probe] 
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_detect_dpcd [i915]] [ENCODER:98:DDI B/PHY B] MST support: port: yes, sink: SST, modparam: yes -> enable: SST
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] source rates: 162000, 216000, 270000, 324000, 432000, 540000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sink rates: 162000, 270000, 540000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] common rates: 162000, 270000, 540000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:update_display_info.part.0] [CONNECTOR:99:DP-1] Supported Monitor Refresh rate range is 48 Hz - 165 Hz
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_parse_cea_ext] [CONNECTOR:99:DP-1] HDMI: DVI dual 0, max TMDS clock 0 kHz
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:update_display_info.part.0] [CONNECTOR:99:DP-1] Assigning EDID-1.4 digital sink color depth as 8 bpc.
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_edid_to_eld] [CONNECTOR:99:DP-1] ELD monitor ASUS VG279Q1A
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_edid_to_eld] [CONNECTOR:99:DP-1] HDMI: latency present 0 0, video latency 0 0, audio latency 0 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_edid_to_eld] [CONNECTOR:99:DP-1] ELD size 36, SAD count 1
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECTOR:99:DP-1] VRR capable: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECTOR:99:DP-1] DFP max bpc 0, max dotclock 0, TMDS clock 0-0, PCON Max FRL BW 0Gbps
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] PCON ENCODER DSC DPCD: 00 00 00 00 00 00 00 00 00 00 00 00 00
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_update_420 [i915]] [CONNECTOR:99:DP-1] RGB->YcbCr conversion? no, YCbCr 4:2:0 allowed? no, YCbCr 4:4:4->4:2:0 conversion? no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_hotplug_detect_connector [i915]] [CONNECTOR:99:DP-1] status updated from unknown to connected (epoch counter 0->1)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_hdmi_detect [i915]] [CONNECTOR:110:HDMI-A-1]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpb] NAK for addr: 0050 w(1)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpb] NAK on first message, retry
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpb] NAK for addr: 0050 w(1)
May 02 08:02:46 dom0 kernel: [drm:drm_do_probe_ddc_edid] drm: skipping non-existent adapter i915 gmbus dpb
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_hdmi_set_edid [i915]] HDMI GMBUS EDID read failed, retry using GPIO bit-banging
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_gmbus_force_bit [i915]] enabling bit-banging on i915 gmbus dpb. force bit now 1
May 02 08:02:46 dom0 kernel: [drm:drm_do_probe_ddc_edid] drm: skipping non-existent adapter i915 gmbus dpb
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_gmbus_force_bit [i915]] disabling bit-banging on i915 gmbus dpb. force bit now 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_hotplug_detect_connector [i915]] [CONNECTOR:110:HDMI-A-1] status updated from unknown to disconnected (epoch counter 0->1)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR:116:DP-2]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_hotplug_detect_connector [i915]] [CONNECTOR:116:DP-2] status updated from unknown to disconnected (epoch counter 0->1)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_hdmi_detect [i915]] [CONNECTOR:122:HDMI-A-2]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpc] NAK for addr: 0050 w(1)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpc] NAK on first message, retry
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpc] NAK for addr: 0050 w(1)
May 02 08:02:46 dom0 kernel: [drm:drm_do_probe_ddc_edid] drm: skipping non-existent adapter i915 gmbus dpc
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_hdmi_set_edid [i915]] HDMI GMBUS EDID read failed, retry using GPIO bit-banging
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_gmbus_force_bit [i915]] enabling bit-banging on i915 gmbus dpc. force bit now 1
May 02 08:02:46 dom0 kernel: [drm:drm_do_probe_ddc_edid] drm: skipping non-existent adapter i915 gmbus dpc
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_gmbus_force_bit [i915]] disabling bit-banging on i915 gmbus dpc. force bit now 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_hotplug_detect_connector [i915]] [CONNECTOR:122:HDMI-A-2] status updated from unknown to disconnected (epoch counter 0->1)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_hdmi_detect [i915]] [CONNECTOR:126:HDMI-A-3]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpd] NAK for addr: 0050 w(1)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpd] NAK on first message, retry
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpd] NAK for addr: 0050 w(1)
May 02 08:02:46 dom0 kernel: [drm:drm_do_probe_ddc_edid] drm: skipping non-existent adapter i915 gmbus dpd
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_hdmi_set_edid [i915]] HDMI GMBUS EDID read failed, retry using GPIO bit-banging
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_gmbus_force_bit [i915]] enabling bit-banging on i915 gmbus dpd. force bit now 1
May 02 08:02:46 dom0 kernel: [drm:drm_do_probe_ddc_edid] drm: skipping non-existent adapter i915 gmbus dpd
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_gmbus_force_bit [i915]] disabling bit-banging on i915 gmbus dpd. force bit now 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_hotplug_detect_connector [i915]] [CONNECTOR:126:HDMI-A-3] status updated from unknown to disconnected (epoch counter 0->1)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR:130:DP-3]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_hotplug_detect_connector [i915]] [CONNECTOR:130:DP-3] status updated from unknown to disconnected (epoch counter 0->1)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_sysfs_hotplug_event] generating hotplug event
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:99:DP-1]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR:99:DP-1]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_read_dpcd_caps [drm_display_helper]] AUX B/DDI B/PHY B: DPCD: 12 14 84 00 01 00 01 40 02 00 02 00 00 00 00
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_dump_desc [drm_display_helper]] AUX B/DDI B/PHY B: DP sink: OUI 00-00-00 dev-ID  HW-rev 0.0 SW-rev 0.0 quirks 0x0000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_detect_dpcd [i915]] [ENCODER:98:DDI B/PHY B] MST support: port: yes, sink: SST, modparam: yes -> enable: SST
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] source rates: 162000, 216000, 270000, 324000, 432000, 540000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sink rates: 162000, 270000, 540000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] common rates: 162000, 270000, 540000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:update_display_info.part.0] [CONNECTOR:99:DP-1] Supported Monitor Refresh rate range is 48 Hz - 165 Hz
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_parse_cea_ext] [CONNECTOR:99:DP-1] HDMI: DVI dual 0, max TMDS clock 0 kHz
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:update_display_info.part.0] [CONNECTOR:99:DP-1] Assigning EDID-1.4 digital sink color depth as 8 bpc.
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_edid_to_eld] [CONNECTOR:99:DP-1] ELD monitor ASUS VG279Q1A
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_edid_to_eld] [CONNECTOR:99:DP-1] HDMI: latency present 0 0, video latency 0 0, audio latency 0 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_edid_to_eld] [CONNECTOR:99:DP-1] ELD size 36, SAD count 1
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECTOR:99:DP-1] VRR capable: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECTOR:99:DP-1] DFP max bpc 0, max dotclock 0, TMDS clock 0-0, PCON Max FRL BW 0Gbps
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] PCON ENCODER DSC DPCD: 00 00 00 00 00 00 00 00 00 00 00 00 00
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_update_420 [i915]] [CONNECTOR:99:DP-1] RGB->YcbCr conversion? no, YCbCr 4:2:0 allowed? no, YCbCr 4:4:4->4:2:0 conversion? no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:99:DP-1] probed modes:
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1920x1080": 60 148500 1920 2008 2052 2200 1080 1084 1089 1125 0x48 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1920x1080": 165 380960 1920 1968 2032 2080 1080 1083 1088 1110 0x40 0x9
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1920x1080": 144 332870 1920 1928 1960 2000 1080 1143 1151 1157 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1920x1080": 120 285500 1920 1968 2000 2080 1080 1083 1088 1144 0x40 0x9
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1920x1080": 60 148500 1920 2008 2052 2200 1080 1084 1089 1125 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1920x1080": 60 148352 1920 2008 2052 2200 1080 1084 1089 1125 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1920x1080": 50 148500 1920 2448 2492 2640 1080 1084 1089 1125 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1680x1050": 60 146250 1680 1784 1960 2240 1050 1053 1059 1089 0x40 0x6
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1280x1024": 75 135000 1280 1296 1440 1688 1024 1025 1028 1066 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1280x1024": 60 108000 1280 1328 1440 1688 1024 1025 1028 1066 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1440x900": 60 106500 1440 1520 1672 1904 900 903 909 934 0x40 0x6
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1280x960": 60 108000 1280 1376 1488 1800 960 961 964 1000 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1152x864": 75 108000 1152 1216 1344 1600 864 865 868 900 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1280x720": 60 74250 1280 1390 1430 1650 720 725 730 750 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1280x720": 60 74250 1280 1390 1430 1650 720 725 730 750 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1280x720": 60 74176 1280 1390 1430 1650 720 725 730 750 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1280x720": 50 74250 1280 1720 1760 1980 720 725 730 750 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1440x576": 50 54000 1440 1464 1592 1728 576 581 586 625 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1440x576": 50 54000 1440 1464 1592 1728 576 581 586 625 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1024x768": 75 78750 1024 1040 1136 1312 768 769 772 800 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1024x768": 70 75000 1024 1048 1184 1328 768 771 777 806 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1024x768": 60 65000 1024 1048 1184 1344 768 771 777 806 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1440x480": 60 54054 1440 1472 1596 1716 480 489 495 525 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1440x480": 60 54054 1440 1472 1596 1716 480 489 495 525 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1440x480": 60 54000 1440 1472 1596 1716 480 489 495 525 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1440x480": 60 54000 1440 1472 1596 1716 480 489 495 525 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "800x600": 75 49500 800 816 896 1056 600 601 604 625 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "800x600": 72 50000 800 856 976 1040 600 637 643 666 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "800x600": 60 40000 800 840 968 1056 600 601 605 628 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "800x600": 56 36000 800 824 896 1024 600 601 603 625 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "720x576": 50 27000 720 732 796 864 576 581 586 625 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "720x576": 50 27000 720 732 796 864 576 581 586 625 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "720x480": 60 27027 720 736 798 858 480 489 495 525 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "720x480": 60 27027 720 736 798 858 480 489 495 525 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "720x480": 60 27000 720 736 798 858 480 489 495 525 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "720x480": 60 27000 720 736 798 858 480 489 495 525 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "640x480": 75 31500 640 656 720 840 480 481 484 500 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "640x480": 73 31500 640 664 704 832 480 489 492 520 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "640x480": 67 30240 640 704 768 864 480 483 486 525 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "640x480": 60 25200 640 656 752 800 480 490 492 525 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "640x480": 60 25175 640 656 752 800 480 490 492 525 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "640x480": 60 25175 640 656 752 800 480 490 492 525 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "720x400": 70 28320 720 738 846 900 400 412 414 449 0x40 0x6
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:110:HDMI-A-1]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_hdmi_detect [i915]] [CONNECTOR:110:HDMI-A-1]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpb] NAK for addr: 0050 w(1)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpb] NAK on first message, retry
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpb] NAK for addr: 0050 w(1)
May 02 08:02:46 dom0 kernel: [drm:drm_do_probe_ddc_edid] drm: skipping non-existent adapter i915 gmbus dpb
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_hdmi_set_edid [i915]] HDMI GMBUS EDID read failed, retry using GPIO bit-banging
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_gmbus_force_bit [i915]] enabling bit-banging on i915 gmbus dpb. force bit now 1
May 02 08:02:46 dom0 kernel: [drm:drm_do_probe_ddc_edid] drm: skipping non-existent adapter i915 gmbus dpb
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_gmbus_force_bit [i915]] disabling bit-banging on i915 gmbus dpb. force bit now 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:110:HDMI-A-1] disconnected
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:116:DP-2]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR:116:DP-2]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:116:DP-2] disconnected
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:122:HDMI-A-2]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_hdmi_detect [i915]] [CONNECTOR:122:HDMI-A-2]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpc] NAK for addr: 0050 w(1)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpc] NAK on first message, retry
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpc] NAK for addr: 0050 w(1)
May 02 08:02:46 dom0 kernel: [drm:drm_do_probe_ddc_edid] drm: skipping non-existent adapter i915 gmbus dpc
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_hdmi_set_edid [i915]] HDMI GMBUS EDID read failed, retry using GPIO bit-banging
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_gmbus_force_bit [i915]] enabling bit-banging on i915 gmbus dpc. force bit now 1
May 02 08:02:46 dom0 kernel: [drm:drm_do_probe_ddc_edid] drm: skipping non-existent adapter i915 gmbus dpc
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_gmbus_force_bit [i915]] disabling bit-banging on i915 gmbus dpc. force bit now 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:122:HDMI-A-2] disconnected
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:126:HDMI-A-3]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_hdmi_detect [i915]] [CONNECTOR:126:HDMI-A-3]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpd] NAK for addr: 0050 w(1)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpd] NAK on first message, retry
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpd] NAK for addr: 0050 w(1)
May 02 08:02:46 dom0 kernel: [drm:drm_do_probe_ddc_edid] drm: skipping non-existent adapter i915 gmbus dpd
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_hdmi_set_edid [i915]] HDMI GMBUS EDID read failed, retry using GPIO bit-banging
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_gmbus_force_bit [i915]] enabling bit-banging on i915 gmbus dpd. force bit now 1
May 02 08:02:46 dom0 kernel: [drm:drm_do_probe_ddc_edid] drm: skipping non-existent adapter i915 gmbus dpd
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_gmbus_force_bit [i915]] disabling bit-banging on i915 gmbus dpd. force bit now 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:126:HDMI-A-3] disconnected
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:130:DP-3]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR:130:DP-3]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:130:DP-3] disconnected
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_client_modeset_probe] [CONNECTOR:99:DP-1] enabled? yes
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_client_modeset_probe] [CONNECTOR:110:HDMI-A-1] enabled? no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_client_modeset_probe] [CONNECTOR:116:DP-2] enabled? no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_client_modeset_probe] [CONNECTOR:122:HDMI-A-2] enabled? no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_client_modeset_probe] [CONNECTOR:126:HDMI-A-3] enabled? no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_client_modeset_probe] [CONNECTOR:130:DP-3] enabled? no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_client_firmware_config.isra.0] Not using firmware configuration
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_client_target_preferred] [CONNECTOR:99:DP-1] looking for cmdline mode
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_client_target_preferred] [CONNECTOR:99:DP-1] looking for preferred mode, tile 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_client_target_preferred] [CONNECTOR:99:DP-1] Found mode 1920x1080
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_client_modeset_probe] picking CRTCs for 16384x16384 config
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_client_modeset_probe] [CRTC:53:pipe A] desired mode 1920x1080 set (0,0)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:__drm_fb_helper_find_sizes] test CRTC 0 primary plane
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intelfb_create [i915]] no BIOS fb, allocating a new one
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intelfb_create [i915]] allocated 1920x1080 fb: 0x00100000
May 02 08:02:46 dom0 kernel: fbcon: i915drmfb (fb0) is primary device
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_pipe_config [i915]] [CONNECTOR:99:DP-1] Limiting display bpp to 24 (EDID bpp 24, max requested bpp 36, max platform bpp 36)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_compute_config_link_bpp_limits [i915]] [ENCODER:98:DDI B/PHY B][CRTC:53:pipe A] DP link limits: pixel clock 148500 kHz DSC off max lanes 4 max rate 540000 max pipe_bpp 24 max link_bpp 24.0000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_compute_link_config [i915]] DP lane count 4 clock 162000 bpp input 24 compressed 0.0000 link rate required 445500 available 648000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_compute_config [i915]] PSR disabled by flag
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_pipe_config [i915]] [CRTC:53:pipe A] hw max bpp: 24, pipe bpp: 24, dithering: 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_ddi_compute_config_late [i915]] [ENCODER:98:DDI B/PHY B] [CRTC:53:pipe A]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_pipe_config_compare [i915]] [CRTC:53:pipe A] fastset requirement not met in dp_m_n (expected tu 64 data 1730150/8388608 link 144179/524288, found tu 64, data 5767168/8388608 link 480597/524288)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_pipe_config_compare [i915]] [CRTC:53:pipe A] fastset requirement not met in dpll_hw_state  
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_pipe_config_compare [i915]] expected:
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_pipe_config_compare [i915]] dpll_hw_state: ctrl1: 0x1, cfgcr1: 0x0, cfgcr2: 0x0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_pipe_config_compare [i915]] found:
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_pipe_config_compare [i915]] dpll_hw_state: ctrl1: 0x5, cfgcr1: 0x0, cfgcr2: 0x0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_pipe_config_compare [i915]] [CRTC:53:pipe A] fastset requirement not met in port_clock (expected 540000, found 162000)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_atomic_check [i915]] [CRTC:53:pipe A] fastset requirement not met, forcing full modeset
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_unreference_shared_dpll_crtc [i915]] [CRTC:53:pipe A] releasing DPLL 1
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:skl_print_wm_changes [i915]] [PLANE:32:plane 1A] ddb (   0 -    0) -> (   0 -  860), size    0 ->  860
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:skl_print_wm_changes [i915]] [PLANE:32:plane 1A]   level *wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm -> *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7, twm, swm, stwm
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:skl_print_wm_changes [i915]] [PLANE:32:plane 1A]   lines    1,   1,   1,   1,   1,   1,   1,   1,   1,   0,    0 ->    0,   2,   3,   3,   5,   6,   6,   7,   0,   0,    0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:skl_print_wm_changes [i915]] [PLANE:32:plane 1A]  blocks    4,   7,   7,   7,   7,   7,   7,   7,   7,   0,    0 ->    8,  29,  40,  44,  80,  96,  98, 114,   0,   0,    0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:skl_print_wm_changes [i915]] [PLANE:32:plane 1A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->    9,  30,  41,  45,  81,  97,  99, 115,   0,   0,    0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:skl_print_wm_changes [i915]] [PLANE:40:plane 2A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm ->  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:skl_print_wm_changes [i915]] [PLANE:40:plane 2A]   lines    1,   1,   1,   1,   1,   1,   1,   1,   1,   0,    0 ->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:skl_print_wm_changes [i915]] [PLANE:40:plane 2A]  blocks    7,   7,   7,   7,   7,   7,   7,   7,   7,   0,    0 ->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:skl_print_wm_changes [i915]] [PLANE:40:plane 2A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:skl_print_wm_changes [i915]] [PLANE:48:cursor A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm ->  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:skl_print_wm_changes [i915]] [PLANE:48:cursor A]   lines    1,   1,   1,   1,   1,   1,   1,   1,   1,   0,    0 ->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:skl_print_wm_changes [i915]] [PLANE:48:cursor A]  blocks    7,   7,   7,   7,   7,   7,   7,   7,   7,   0,    0 ->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:skl_print_wm_changes [i915]] [PLANE:48:cursor A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_bw_calc_min_cdclk [i915]] new bandwidth min cdclk (9282 kHz) > old min cdclk (0 kHz)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_calc_cdclk [i915]] Modeset required for cdclk change
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_calc_cdclk [i915]] New cdclk calculated to be logical 337500 kHz, actual 337500 kHz
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_modeset_calc_cdclk [i915]] New voltage level calculated to be logical 0, actual 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_find_shared_dpll [i915]] [CRTC:53:pipe A] allocated DPLL 1
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_reference_shared_dpll_crtc [i915]] [CRTC:53:pipe A] reserving DPLL 1
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:skl_update_scaler [i915]] scaler_user index 0.31: Staged freeing scaler id 0 scaler_users = 0x0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] [CRTC:53:pipe A] enable: yes [modeset]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] active: yes, output_types: DP (0x80), output format: RGB, sink format: RGB
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] cpu_transcoder: A, pipe bpp: 24, dithering: 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] MST master transcoder: <invalid>
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] port sync: master transcoder: <invalid>, slave transcoder bitmask = 0x0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] joiner: no, pipes: 0x0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] splitter: disabled, link count 0, overlap 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] dp m_n: lanes: 4; data_m: 5767168, data_n: 8388608, link_m: 480597, link_n: 524288, tu: 64
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] dp m2_n2: lanes: 4; data_m: 0, data_n: 0, link_m: 0, link_n: 0, tu: 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] fec: disabled, enhanced framing: enabled
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] sdp split: disabled
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] psr: disabled, selective update: disabled, panel replay: disabled, selective fetch: disabled
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] framestart delay: 1, MSA timing delay: 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] audio: 1, infoframes: 0, infoframes enabled: 0x0
May 02 08:02:46 dom0 kernel: ELD: 10 00 08 00 6d 14 00 01 00 00 00 00 00 00 00 00
May 02 08:02:46 dom0 kernel: ELD: 06 b3 03 27 41 53 55 53 20 56 47 32 37 39 51 31
May 02 08:02:46 dom0 kernel: ELD: 41 09 07 07
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] vrr: no, vmin: 0, vmax: 0, pipeline full: 0, guardband: 0 flipline: 0, vmin vblank: -1, vmax vblank: -2
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] requested mode: "1920x1080": 60 148500 1920 2008 2052 2200 1080 1084 1089 1125 0x48 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] adjusted mode: "1920x1080": 60 148500 1920 2008 2052 2200 1080 1084 1089 1125 0x48 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] crtc timings: clock=148500, hd=1920 hb=1920-2200 hs=2008-2052 ht=2200, vd=1080 vb=1080-1125 vs=1084-1089 vt=1125, flags=0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] pipe mode: "1920x1080": 60 148500 1920 2008 2052 2200 1080 1084 1089 1125 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] crtc timings: clock=148500, hd=1920 hb=1920-2200 hs=2008-2052 ht=2200, vd=1080 vb=1080-1125 vs=1084-1089 vt=1125, flags=0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] port clock: 162000, pipe src: 1920x1080+0+0, pixel rate 148500
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] linetime: 119, ips linetime: 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] num_scalers: 2, scaler_users: 0x0, scaler_id: -1, scaling_filter: 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] pch pfit: 0x0+0+0, disabled, force thru: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] ips: 0, double wide: 0, drrs: 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] dpll_hw_state: ctrl1: 0x5, cfgcr1: 0x0, cfgcr2: 0x0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] csc_mode: 0x0 gamma_mode: 0x0 gamma_enable: 0 csc_enable: 1
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] pre csc lut: 0 entries, post csc lut: 0 entries
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] pipe csc: pre offsets: 0x0000 0x0000 0x0000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] pipe csc: coefficients: 0x0db0 0x0000 0x0000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] pipe csc: coefficients: 0x0000 0x0db0 0x0000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] pipe csc: coefficients: 0x0000 0x0000 0x0db0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] pipe csc: post offsets: 0x0100 0x0100 0x0100
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] [PLANE:32:plane 1A] fb: [FB:134] 1920x1080 format = XR24 little-endian (0x34325258) modifier = 0x0, visible: yes
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]]         rotation: 0x1, scaler: -1, scaling_filter: 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]]         src: 1920.000000x1080.000000+0.000000+0.000000 dst: 1920x1080+0+0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] [PLANE:40:plane 2A] fb: [NOFB], visible: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] [PLANE:48:cursor A] fb: [NOFB], visible: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_disable_transcoder [i915]] disabling pipe A
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_disable_shared_dpll [i915]] disable DPLL 1 (active 0x1, on? 1) for [CRTC:53:pipe A]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_disable_shared_dpll [i915]] disabling DPLL 1
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_set_cdclk [i915]] Pre changing CDCLK to 337500 kHz, VCO 8100000 kHz, ref 24000 kHz, bypass 24000 kHz, voltage level 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:spt_irq_handler [i915]] hotplug event received, stat 0x00200000, dig 0x00101011, pins 0x00000020, long 0x00000000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:verify_encoder_state [i915]] [ENCODER:98:DDI B/PHY B]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_hpd_irq_handler [i915]] digital hpd on [ENCODER:98:DDI B/PHY B] - short
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:verify_encoder_state [i915]] [ENCODER:100:DP-MST A]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_hpd_pulse [i915]] got hpd irq on [ENCODER:98:DDI B/PHY B] - short
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:verify_encoder_state [i915]] [ENCODER:101:DP-MST B]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:verify_encoder_state [i915]] [ENCODER:102:DP-MST C]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_read_dpcd_caps [drm_display_helper]] AUX B/DDI B/PHY B: DPCD: 12 14 84 00 01 00 01 40 02 00 02 00 00 00 00
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:verify_encoder_state [i915]] [ENCODER:115:DDI C/PHY C]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_dump_desc [drm_display_helper]] AUX B/DDI B/PHY B: DP sink: OUI 00-00-00 dev-ID  HW-rev 0.0 SW-rev 0.0 quirks 0x0000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:verify_encoder_state [i915]] [ENCODER:117:DP-MST A]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:verify_encoder_state [i915]] [ENCODER:118:DP-MST B]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:verify_encoder_state [i915]] [ENCODER:119:DP-MST C]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:verify_encoder_state [i915]] [ENCODER:125:DDI D/PHY D]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:verify_encoder_state [i915]] [ENCODER:129:DDI E/PHY E]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_enable_shared_dpll [i915]] enable DPLL 1 (active 0x1, on? 0) for [CRTC:53:pipe A]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_enable_shared_dpll [i915]] enabling DPLL 1
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:hsw_set_signal_levels [i915]] Using signal levels 00000000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_read_dpcd_caps [drm_display_helper]] AUX B/DDI B/PHY B: DPCD: 12 14 84 00 01 00 01 40 02 00 02 00 00 00 00
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_prepare_link_train.isra.0 [i915]] [CONNECTOR:99:DP-1][ENCODER:98:DDI B/PHY B][DPRX] Using LINK_BW_SET value 06
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_set_signal_levels [i915]] [CONNECTOR:99:DP-1][ENCODER:98:DDI B/PHY B][DPRX] 8b/10b, lanes: 4, vswing levels: 0/0/0/0, pre-emphasis levels: 0/0/0/0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:hsw_set_signal_levels [i915]] Using signal levels 00000000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_program_link_training_pattern [i915]] [CONNECTOR:99:DP-1][ENCODER:98:DDI B/PHY B][DPRX] Using DP training pattern TPS1
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_get_adjust_train [i915]] [CONNECTOR:99:DP-1][ENCODER:98:DDI B/PHY B][DPRX] 8b/10b, lanes: 4, vswing request: 1/1/1/1, pre-emphasis request: 0/0/0/0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_set_signal_levels [i915]] [CONNECTOR:99:DP-1][ENCODER:98:DDI B/PHY B][DPRX] 8b/10b, lanes: 4, vswing levels: 1/1/1/1, pre-emphasis levels: 0/0/0/0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:hsw_set_signal_levels [i915]] Using signal levels 04000000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_get_adjust_train [i915]] [CONNECTOR:99:DP-1][ENCODER:98:DDI B/PHY B][DPRX] 8b/10b, lanes: 4, vswing request: 1/1/1/1, pre-emphasis request: 0/0/0/0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_set_signal_levels [i915]] [CONNECTOR:99:DP-1][ENCODER:98:DDI B/PHY B][DPRX] 8b/10b, lanes: 4, vswing levels: 1/1/1/1, pre-emphasis levels: 0/0/0/0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:hsw_set_signal_levels [i915]] Using signal levels 04000000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_link_training_clock_recovery [i915]] [CONNECTOR:99:DP-1][ENCODER:98:DDI B/PHY B][DPRX] Clock recovery OK
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_program_link_training_pattern [i915]] [CONNECTOR:99:DP-1][ENCODER:98:DDI B/PHY B][DPRX] Using DP training pattern TPS2
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_link_training_channel_equalization [i915]] [CONNECTOR:99:DP-1][ENCODER:98:DDI B/PHY B][DPRX] Channel EQ done. DP Training successful
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_link_train_phy [i915]] [CONNECTOR:99:DP-1][ENCODER:98:DDI B/PHY B][DPRX] Link Training passed at link rate = 162000, lane count = 4
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_enable_transcoder [i915]] enabling pipe A
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_fbc_alloc_cfb [i915]] reserved 16588800 bytes of contiguous stolen space for FBC, limit: 1
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:__intel_fbc_enable [i915]] Enabling FBC on [PLANE:32:plane 1A]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_audio_codec_enable [i915]] [CONNECTOR:99:DP-1][ENCODER:98:DDI B/PHY B] Enable audio codec on [CRTC:53:pipe A], 36 bytes ELD
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_connector_verify_state [i915]] [CONNECTOR:99:DP-1]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:verify_crtc_state [i915]] [CRTC:53:pipe A]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_sagv_post_plane_update [i915]] Enabling SAGV
May 02 08:02:46 dom0 kernel: Console: switching to colour frame buffer device 240x67
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm] fb0: i915drmfb frame buffer device
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_fb_helper_hotplug_event] 
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_display_driver_register [i915]] i915 display info: display version: 9
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_client_modeset_probe] 
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_display_driver_register [i915]] i915 display info: display stepping: **
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:99:DP-1]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_display_driver_register [i915]] i915 display info: cursor_needs_physical: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR:99:DP-1]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_display_driver_register [i915]] i915 display info: has_cdclk_crawl: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_read_dpcd_caps [drm_display_helper]] AUX B/DDI B/PHY B: DPCD: 12 14 84 00 01 00 01 40 02 00 02 00 00 00 00
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_display_driver_register [i915]] i915 display info: has_cdclk_squash: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_dump_desc [drm_display_helper]] AUX B/DDI B/PHY B: DP sink: OUI 00-00-00 dev-ID  HW-rev 0.0 SW-rev 0.0 quirks 0x0000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_display_driver_register [i915]] i915 display info: has_ddi: yes
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_detect_dpcd [i915]] [ENCODER:98:DDI B/PHY B] MST support: port: yes, sink: SST, modparam: yes -> enable: SST
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_display_driver_register [i915]] i915 display info: has_dp_mst: yes
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_display_driver_register [i915]] i915 display info: has_dsb: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_display_driver_register [i915]] i915 display info: has_fpga_dbg: yes
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_display_driver_register [i915]] i915 display info: has_gmch: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_display_driver_register [i915]] i915 display info: has_hotplug: yes
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] source rates: 162000, 216000, 270000, 324000, 432000, 540000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_display_driver_register [i915]] i915 display info: has_hti: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sink rates: 162000, 270000, 540000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_display_driver_register [i915]] i915 display info: has_ipc: yes
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] common rates: 162000, 270000, 540000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_display_driver_register [i915]] i915 display info: has_overlay: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_display_driver_register [i915]] i915 display info: has_psr: yes
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_display_driver_register [i915]] i915 display info: has_psr_hw_tracking: yes
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_display_driver_register [i915]] i915 display info: overlay_needs_physical: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_display_driver_register [i915]] i915 display info: supports_tv: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_display_driver_register [i915]] i915 display info: has_hdcp: yes
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_display_driver_register [i915]] i915 display info: has_dmc: yes
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_display_driver_register [i915]] i915 display info: has_dsc: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_display_driver_register [i915]] i915 display info: rawclk rate: 24000 kHz
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] disabling DDI_IO_D
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] disabling DDI_IO_C
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] disabling DDI_IO_A_E
May 02 08:02:46 dom0 kernel: [drm:intel_dsm_detect.isra.0 [i915]] no _DSM method for intel device
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: pciid=0x3e98 rev=0x02 platform=COFFEELAKE (subplatform=0x0) gen=9
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: graphics version: 9
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: media version: 9
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: graphics stepping: **
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: media stepping: **
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: gt: 2
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: memory-regions: 0x21
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: page-sizes: 0x11000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: platform: COFFEELAKE
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: ppgtt-size: 48
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: ppgtt-type: 2
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: dma_mask_size: 39
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: is_mobile: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: is_lp: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: require_force_probe: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: is_dgfx: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has_64bit_reloc: yes
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has_64k_pages: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: gpu_reset_clobbers_display: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has_reset_engine: yes
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has_3d_pipeline: yes
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has_flat_ccs: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has_global_mocs: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has_gmd_id: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has_gt_uc: yes
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has_heci_pxp: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has_heci_gscfi: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has_guc_deprivilege: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has_guc_tlb_invalidation: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has_l3_ccs_read: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has_l3_dpf: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has_llc: yes
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has_logical_ring_contexts: yes
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has_logical_ring_elsq: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has_media_ratio_mode: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has_mslice_steering: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has_oa_bpc_reporting: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has_oa_slice_contrib_limits: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has_oam: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has_one_eu_per_fuse_bit: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has_pxp: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has_rc6: yes
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has_rc6p: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has_rps: yes
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has_runtime_pm: yes
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has_snoop: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has_coherent_ggtt: yes
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: tuning_thread_rr_after_dep: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: unfenced_needs_alignment: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: hws_needs_physical: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has_pooled_eu: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: iommu: enabled
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: available engines: 40403
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: slice total: 1, mask=0001
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: subslice total: 3
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: slice0: 3 subslices, mask=00000007
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: slice1: 0 subslices, mask=00000000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: slice2: 0 subslices, mask=00000000
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: EU total: 24
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: EU per subslice: 8
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has slice power gating: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has subslice power gating: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_driver_probe [i915]] device info: has EU power gating: yes
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:i915_gem_open [i915]] 
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:update_display_info.part.0] [CONNECTOR:99:DP-1] Supported Monitor Refresh rate range is 48 Hz - 165 Hz
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_parse_cea_ext] [CONNECTOR:99:DP-1] HDMI: DVI dual 0, max TMDS clock 0 kHz
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:update_display_info.part.0] [CONNECTOR:99:DP-1] Assigning EDID-1.4 digital sink color depth as 8 bpc.
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_edid_to_eld] [CONNECTOR:99:DP-1] ELD monitor ASUS VG279Q1A
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_edid_to_eld] [CONNECTOR:99:DP-1] HDMI: latency present 0 0, video latency 0 0, audio latency 0 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_edid_to_eld] [CONNECTOR:99:DP-1] ELD size 36, SAD count 1
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECTOR:99:DP-1] VRR capable: no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECTOR:99:DP-1] DFP max bpc 0, max dotclock 0, TMDS clock 0-0, PCON Max FRL BW 0Gbps
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] PCON ENCODER DSC DPCD: 00 00 00 00 00 00 00 00 00 00 00 00 00
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_update_420 [i915]] [CONNECTOR:99:DP-1] RGB->YcbCr conversion? no, YCbCr 4:2:0 allowed? no, YCbCr 4:4:4->4:2:0 conversion? no
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:99:DP-1] probed modes:
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1920x1080": 60 148500 1920 2008 2052 2200 1080 1084 1089 1125 0x48 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1920x1080": 165 380960 1920 1968 2032 2080 1080 1083 1088 1110 0x40 0x9
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1920x1080": 144 332870 1920 1928 1960 2000 1080 1143 1151 1157 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1920x1080": 120 285500 1920 1968 2000 2080 1080 1083 1088 1144 0x40 0x9
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1920x1080": 60 148500 1920 2008 2052 2200 1080 1084 1089 1125 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1920x1080": 60 148352 1920 2008 2052 2200 1080 1084 1089 1125 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1920x1080": 50 148500 1920 2448 2492 2640 1080 1084 1089 1125 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1680x1050": 60 146250 1680 1784 1960 2240 1050 1053 1059 1089 0x40 0x6
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1280x1024": 75 135000 1280 1296 1440 1688 1024 1025 1028 1066 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1280x1024": 60 108000 1280 1328 1440 1688 1024 1025 1028 1066 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1440x900": 60 106500 1440 1520 1672 1904 900 903 909 934 0x40 0x6
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1280x960": 60 108000 1280 1376 1488 1800 960 961 964 1000 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1152x864": 75 108000 1152 1216 1344 1600 864 865 868 900 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1280x720": 60 74250 1280 1390 1430 1650 720 725 730 750 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1280x720": 60 74250 1280 1390 1430 1650 720 725 730 750 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1280x720": 60 74176 1280 1390 1430 1650 720 725 730 750 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1280x720": 50 74250 1280 1720 1760 1980 720 725 730 750 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1440x576": 50 54000 1440 1464 1592 1728 576 581 586 625 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1440x576": 50 54000 1440 1464 1592 1728 576 581 586 625 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1024x768": 75 78750 1024 1040 1136 1312 768 769 772 800 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1024x768": 70 75000 1024 1048 1184 1328 768 771 777 806 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1024x768": 60 65000 1024 1048 1184 1344 768 771 777 806 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1440x480": 60 54054 1440 1472 1596 1716 480 489 495 525 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1440x480": 60 54054 1440 1472 1596 1716 480 489 495 525 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1440x480": 60 54000 1440 1472 1596 1716 480 489 495 525 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1440x480": 60 54000 1440 1472 1596 1716 480 489 495 525 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "800x600": 75 49500 800 816 896 1056 600 601 604 625 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "800x600": 72 50000 800 856 976 1040 600 637 643 666 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "800x600": 60 40000 800 840 968 1056 600 601 605 628 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "800x600": 56 36000 800 824 896 1024 600 601 603 625 0x40 0x5
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "720x576": 50 27000 720 732 796 864 576 581 586 625 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "720x576": 50 27000 720 732 796 864 576 581 586 625 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "720x480": 60 27027 720 736 798 858 480 489 495 525 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "720x480": 60 27027 720 736 798 858 480 489 495 525 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "720x480": 60 27000 720 736 798 858 480 489 495 525 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "720x480": 60 27000 720 736 798 858 480 489 495 525 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "640x480": 75 31500 640 656 720 840 480 481 484 500 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "640x480": 73 31500 640 664 704 832 480 489 492 520 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "640x480": 67 30240 640 704 768 864 480 483 486 525 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "640x480": 60 25200 640 656 752 800 480 490 492 525 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "640x480": 60 25175 640 656 752 800 480 490 492 525 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "640x480": 60 25175 640 656 752 800 480 490 492 525 0x40 0xa
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "720x400": 70 28320 720 738 846 900 400 412 414 449 0x40 0x6
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:110:HDMI-A-1]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_hdmi_detect [i915]] [CONNECTOR:110:HDMI-A-1]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpb] NAK for addr: 0050 w(1)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpb] NAK on first message, retry
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpb] NAK for addr: 0050 w(1)
May 02 08:02:46 dom0 kernel: [drm:drm_do_probe_ddc_edid] drm: skipping non-existent adapter i915 gmbus dpb
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_hdmi_set_edid [i915]] HDMI GMBUS EDID read failed, retry using GPIO bit-banging
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_gmbus_force_bit [i915]] enabling bit-banging on i915 gmbus dpb. force bit now 1
May 02 08:02:46 dom0 kernel: [drm:drm_do_probe_ddc_edid] drm: skipping non-existent adapter i915 gmbus dpb
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_gmbus_force_bit [i915]] disabling bit-banging on i915 gmbus dpb. force bit now 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:110:HDMI-A-1] disconnected
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:116:DP-2]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR:116:DP-2]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:116:DP-2] disconnected
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:122:HDMI-A-2]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_hdmi_detect [i915]] [CONNECTOR:122:HDMI-A-2]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpc] NAK for addr: 0050 w(1)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpc] NAK on first message, retry
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpc] NAK for addr: 0050 w(1)
May 02 08:02:46 dom0 kernel: [drm:drm_do_probe_ddc_edid] drm: skipping non-existent adapter i915 gmbus dpc
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_hdmi_set_edid [i915]] HDMI GMBUS EDID read failed, retry using GPIO bit-banging
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_gmbus_force_bit [i915]] enabling bit-banging on i915 gmbus dpc. force bit now 1
May 02 08:02:46 dom0 kernel: [drm:drm_do_probe_ddc_edid] drm: skipping non-existent adapter i915 gmbus dpc
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_gmbus_force_bit [i915]] disabling bit-banging on i915 gmbus dpc. force bit now 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:122:HDMI-A-2] disconnected
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:126:HDMI-A-3]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_hdmi_detect [i915]] [CONNECTOR:126:HDMI-A-3]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpd] NAK for addr: 0050 w(1)
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpd] NAK on first message, retry
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpd] NAK for addr: 0050 w(1)
May 02 08:02:46 dom0 kernel: [drm:drm_do_probe_ddc_edid] drm: skipping non-existent adapter i915 gmbus dpd
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_hdmi_set_edid [i915]] HDMI GMBUS EDID read failed, retry using GPIO bit-banging
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_gmbus_force_bit [i915]] enabling bit-banging on i915 gmbus dpd. force bit now 1
May 02 08:02:46 dom0 kernel: [drm:drm_do_probe_ddc_edid] drm: skipping non-existent adapter i915 gmbus dpd
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_gmbus_force_bit [i915]] disabling bit-banging on i915 gmbus dpd. force bit now 0
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:126:HDMI-A-3] disconnected
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:130:DP-3]
May 02 08:02:46 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR:130:DP-3]
May 02 08:02:45 dom0 audit[444]: USER_DEVICE pid=444 uid=0 auid=4294967295 ses=4294967295 msg='op="inserted-device" device="/devices/pci0000:00/0000:00:14.0/usb1/1-9" device_rule=626C6F636B20696420303436643A63333462206E616D652022555342204B6579626F61726422207669612D706F72742022312D392220776974682D696E74657266616365207B2030333A30313A30312030333A30303A3030207D20776974682D636F6E6E6563742D747970652022686F74706C756722 exe="/usr/sbin/usbguard-daemon" hostname=? addr=? terminal=? res=success'
May 02 08:02:45 dom0 audit[444]: USER_DEVICE pid=444 uid=0 auid=4294967295 ses=4294967295 msg='op="changed-authorization-state-for" device="/devices/pci0000:00/0000:00:14.0/usb1/1-9" target="allow" device_rule=626C6F636B20696420303436643A63333462206E616D652022555342204B6579626F61726422207669612D706F72742022312D392220776974682D696E74657266616365207B2030333A30313A30312030333A30303A3030207D20776974682D636F6E6E6563742D747970652022686F74706C756722 exe="/usr/sbin/usbguard-daemon" hostname=? addr=? terminal=? res=success'
May 02 08:02:45 dom0 audit[444]: USER_DEVICE pid=444 uid=0 auid=4294967295 ses=4294967295 msg='op="inserted-device" device="/devices/pci0000:00/0000:00:14.0/usb1/1-10" device_rule=626C6F636B20696420303436643A63303737206E616D652022555342204F70746963616C204D6F75736522207669612D706F72742022312D31302220776974682D696E746572666163652030333A30313A303220776974682D636F6E6E6563742D747970652022686F74706C756722 exe="/usr/sbin/usbguard-daemon" hostname=? addr=? terminal=? res=success'
May 02 08:02:45 dom0 audit[444]: USER_DEVICE pid=444 uid=0 auid=4294967295 ses=4294967295 msg='op="changed-authorization-state-for" device="/devices/pci0000:00/0000:00:14.0/usb1/1-10" target="allow" device_rule=626C6F636B20696420303436643A63303737206E616D652022555342204F70746963616C204D6F75736522207669612D706F72742022312D31302220776974682D696E746572666163652030333A30313A303220776974682D636F6E6E6563742D747970652022686F74706C756722 exe="/usr/sbin/usbguard-daemon" hostname=? addr=? terminal=? res=success'
May 02 08:02:45 dom0 usbguard-daemon[444]: Ignoring unknown UEvent action: sysfs_devpath=/devices/pci0000:00/0000:00:14.0/usb1/1-9 action=change
May 02 08:02:46 dom0 dracut-initqueue[620]: Scanning devices sda2  for LVM logical volumes qubes_dom0/root
May 02 08:02:46 dom0 dracut-initqueue[620]: qubes_dom0/swap
May 02 08:02:46 dom0 dracut-initqueue[641]:   WARNING: File locking is disabled.
May 02 08:02:45 dom0 usbguard-daemon[444]: Ignoring unknown UEvent action: sysfs_devpath=/devices/pci0000:00/0000:00:14.0/usb1/1-10 action=change
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:130:DP-3] disconnected
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_client_modeset_probe] [CONNECTOR:99:DP-1] enabled? yes
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_client_modeset_probe] [CONNECTOR:110:HDMI-A-1] enabled? no
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_client_modeset_probe] [CONNECTOR:116:DP-2] enabled? no
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_client_modeset_probe] [CONNECTOR:122:HDMI-A-2] enabled? no
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_client_modeset_probe] [CONNECTOR:126:HDMI-A-3] enabled? no
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_client_modeset_probe] [CONNECTOR:130:DP-3] enabled? no
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_client_firmware_config.isra.0] Not using firmware configuration
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_client_target_preferred] [CONNECTOR:99:DP-1] looking for cmdline mode
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_client_target_preferred] [CONNECTOR:99:DP-1] looking for preferred mode, tile 0
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_client_target_preferred] [CONNECTOR:99:DP-1] Found mode 1920x1080
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_client_modeset_probe] picking CRTCs for 1920x1080 config
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_client_modeset_probe] [CRTC:53:pipe A] desired mode 1920x1080 set (0,0)
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_mode_getconnector] User-space requested a forced probe on [CONNECTOR:99:DP-1] but is not the DRM master, demoting to read-only probe
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_client_dev_hotplug] intel-fbdev: ret=0
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_mode_getconnector] User-space requested a forced probe on [CONNECTOR:110:HDMI-A-1] but is not the DRM master, demoting to read-only probe
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_mode_getconnector] User-space requested a forced probe on [CONNECTOR:116:DP-2] but is not the DRM master, demoting to read-only probe
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_mode_getconnector] User-space requested a forced probe on [CONNECTOR:122:HDMI-A-2] but is not the DRM master, demoting to read-only probe
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_mode_getconnector] User-space requested a forced probe on [CONNECTOR:126:HDMI-A-3] but is not the DRM master, demoting to read-only probe
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_mode_getconnector] User-space requested a forced probe on [CONNECTOR:130:DP-3] but is not the DRM master, demoting to read-only probe
May 02 08:02:47 dom0 dracut-initqueue[620]:   qubes_dom0/root thin
May 02 08:02:47 dom0 dracut-initqueue[620]:   qubes_dom0/swap linear
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_mode_addfb2] [FB:135]
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_mode_addfb2] [FB:135]
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_mode_setcrtc] [CRTC:53:pipe A]
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_mode_setcrtc] [CONNECTOR:99:DP-1]
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:99:DP-1]
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR:99:DP-1]
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_read_dpcd_caps [drm_display_helper]] AUX B/DDI B/PHY B: DPCD: 12 14 84 00 01 00 01 40 02 00 02 00 00 00 00
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_dump_desc [drm_display_helper]] AUX B/DDI B/PHY B: DP sink: OUI 00-00-00 dev-ID  HW-rev 0.0 SW-rev 0.0 quirks 0x0000
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_detect_dpcd [i915]] [ENCODER:98:DDI B/PHY B] MST support: port: yes, sink: SST, modparam: yes -> enable: SST
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] source rates: 162000, 216000, 270000, 324000, 432000, 540000
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sink rates: 162000, 270000, 540000
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] common rates: 162000, 270000, 540000
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:update_display_info.part.0] [CONNECTOR:99:DP-1] Supported Monitor Refresh rate range is 48 Hz - 165 Hz
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_parse_cea_ext] [CONNECTOR:99:DP-1] HDMI: DVI dual 0, max TMDS clock 0 kHz
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:update_display_info.part.0] [CONNECTOR:99:DP-1] Assigning EDID-1.4 digital sink color depth as 8 bpc.
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_edid_to_eld] [CONNECTOR:99:DP-1] ELD monitor ASUS VG279Q1A
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_edid_to_eld] [CONNECTOR:99:DP-1] HDMI: latency present 0 0, video latency 0 0, audio latency 0 0
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_edid_to_eld] [CONNECTOR:99:DP-1] ELD size 36, SAD count 1
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECTOR:99:DP-1] VRR capable: no
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECTOR:99:DP-1] DFP max bpc 0, max dotclock 0, TMDS clock 0-0, PCON Max FRL BW 0Gbps
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] PCON ENCODER DSC DPCD: 00 00 00 00 00 00 00 00 00 00 00 00 00
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_update_420 [i915]] [CONNECTOR:99:DP-1] RGB->YcbCr conversion? no, YCbCr 4:2:0 allowed? no, YCbCr 4:4:4->4:2:0 conversion? no
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:99:DP-1] probed modes:
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1920x1080": 60 148500 1920 2008 2052 2200 1080 1084 1089 1125 0x48 0x5
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1920x1080": 165 380960 1920 1968 2032 2080 1080 1083 1088 1110 0x40 0x9
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1920x1080": 144 332870 1920 1928 1960 2000 1080 1143 1151 1157 0x40 0x5
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1920x1080": 120 285500 1920 1968 2000 2080 1080 1083 1088 1144 0x40 0x9
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1920x1080": 60 148500 1920 2008 2052 2200 1080 1084 1089 1125 0x40 0x5
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1920x1080": 60 148352 1920 2008 2052 2200 1080 1084 1089 1125 0x40 0x5
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1920x1080": 50 148500 1920 2448 2492 2640 1080 1084 1089 1125 0x40 0x5
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1680x1050": 60 146250 1680 1784 1960 2240 1050 1053 1059 1089 0x40 0x6
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1280x1024": 75 135000 1280 1296 1440 1688 1024 1025 1028 1066 0x40 0x5
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1280x1024": 60 108000 1280 1328 1440 1688 1024 1025 1028 1066 0x40 0x5
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1440x900": 60 106500 1440 1520 1672 1904 900 903 909 934 0x40 0x6
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1280x960": 60 108000 1280 1376 1488 1800 960 961 964 1000 0x40 0x5
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1152x864": 75 108000 1152 1216 1344 1600 864 865 868 900 0x40 0x5
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1280x720": 60 74250 1280 1390 1430 1650 720 725 730 750 0x40 0x5
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1280x720": 60 74250 1280 1390 1430 1650 720 725 730 750 0x40 0x5
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1280x720": 60 74176 1280 1390 1430 1650 720 725 730 750 0x40 0x5
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1280x720": 50 74250 1280 1720 1760 1980 720 725 730 750 0x40 0x5
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1440x576": 50 54000 1440 1464 1592 1728 576 581 586 625 0x40 0xa
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1440x576": 50 54000 1440 1464 1592 1728 576 581 586 625 0x40 0xa
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1024x768": 75 78750 1024 1040 1136 1312 768 769 772 800 0x40 0x5
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1024x768": 70 75000 1024 1048 1184 1328 768 771 777 806 0x40 0xa
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1024x768": 60 65000 1024 1048 1184 1344 768 771 777 806 0x40 0xa
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1440x480": 60 54054 1440 1472 1596 1716 480 489 495 525 0x40 0xa
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1440x480": 60 54054 1440 1472 1596 1716 480 489 495 525 0x40 0xa
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1440x480": 60 54000 1440 1472 1596 1716 480 489 495 525 0x40 0xa
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "1440x480": 60 54000 1440 1472 1596 1716 480 489 495 525 0x40 0xa
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "800x600": 75 49500 800 816 896 1056 600 601 604 625 0x40 0x5
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "800x600": 72 50000 800 856 976 1040 600 637 643 666 0x40 0x5
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "800x600": 60 40000 800 840 968 1056 600 601 605 628 0x40 0x5
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "800x600": 56 36000 800 824 896 1024 600 601 603 625 0x40 0x5
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "720x576": 50 27000 720 732 796 864 576 581 586 625 0x40 0xa
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "720x576": 50 27000 720 732 796 864 576 581 586 625 0x40 0xa
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "720x480": 60 27027 720 736 798 858 480 489 495 525 0x40 0xa
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "720x480": 60 27027 720 736 798 858 480 489 495 525 0x40 0xa
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "720x480": 60 27000 720 736 798 858 480 489 495 525 0x40 0xa
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "720x480": 60 27000 720 736 798 858 480 489 495 525 0x40 0xa
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "640x480": 75 31500 640 656 720 840 480 481 484 500 0x40 0xa
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "640x480": 73 31500 640 664 704 832 480 489 492 520 0x40 0xa
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "640x480": 67 30240 640 704 768 864 480 483 486 525 0x40 0xa
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "640x480": 60 25200 640 656 752 800 480 490 492 525 0x40 0xa
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "640x480": 60 25175 640 656 752 800 480 490 492 525 0x40 0xa
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "640x480": 60 25175 640 656 752 800 480 490 492 525 0x40 0xa
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] Probed mode: "720x400": 70 28320 720 738 846 900 400 412 414 449 0x40 0x6
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:110:HDMI-A-1]
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:intel_hdmi_detect [i915]] [CONNECTOR:110:HDMI-A-1]
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpb] NAK for addr: 0050 w(1)
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpb] NAK on first message, retry
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpb] NAK for addr: 0050 w(1)
May 02 08:02:47 dom0 kernel: [drm:drm_do_probe_ddc_edid] drm: skipping non-existent adapter i915 gmbus dpb
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:intel_hdmi_set_edid [i915]] HDMI GMBUS EDID read failed, retry using GPIO bit-banging
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:intel_gmbus_force_bit [i915]] enabling bit-banging on i915 gmbus dpb. force bit now 1
May 02 08:02:47 dom0 kernel: [drm:drm_do_probe_ddc_edid] drm: skipping non-existent adapter i915 gmbus dpb
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:intel_gmbus_force_bit [i915]] disabling bit-banging on i915 gmbus dpb. force bit now 0
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:110:HDMI-A-1] disconnected
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:116:DP-2]
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR:116:DP-2]
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:116:DP-2] disconnected
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:122:HDMI-A-2]
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:intel_hdmi_detect [i915]] [CONNECTOR:122:HDMI-A-2]
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpc] NAK for addr: 0050 w(1)
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpc] NAK on first message, retry
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpc] NAK for addr: 0050 w(1)
May 02 08:02:47 dom0 kernel: [drm:drm_do_probe_ddc_edid] drm: skipping non-existent adapter i915 gmbus dpc
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:intel_hdmi_set_edid [i915]] HDMI GMBUS EDID read failed, retry using GPIO bit-banging
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:intel_gmbus_force_bit [i915]] enabling bit-banging on i915 gmbus dpc. force bit now 1
May 02 08:02:47 dom0 kernel: [drm:drm_do_probe_ddc_edid] drm: skipping non-existent adapter i915 gmbus dpc
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:intel_gmbus_force_bit [i915]] disabling bit-banging on i915 gmbus dpc. force bit now 0
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:122:HDMI-A-2] disconnected
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:126:HDMI-A-3]
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:intel_hdmi_detect [i915]] [CONNECTOR:126:HDMI-A-3]
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpd] NAK for addr: 0050 w(1)
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpd] NAK on first message, retry
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:do_gmbus_xfer [i915]] GMBUS [i915 gmbus dpd] NAK for addr: 0050 w(1)
May 02 08:02:47 dom0 kernel: [drm:drm_do_probe_ddc_edid] drm: skipping non-existent adapter i915 gmbus dpd
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:intel_hdmi_set_edid [i915]] HDMI GMBUS EDID read failed, retry using GPIO bit-banging
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:intel_gmbus_force_bit [i915]] enabling bit-banging on i915 gmbus dpd. force bit now 1
May 02 08:02:47 dom0 kernel: [drm:drm_do_probe_ddc_edid] drm: skipping non-existent adapter i915 gmbus dpd
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:intel_gmbus_force_bit [i915]] disabling bit-banging on i915 gmbus dpd. force bit now 0
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:126:HDMI-A-3] disconnected
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:130:DP-3]
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR:130:DP-3]
May 02 08:02:47 dom0 kernel: i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_modes] [CONNECTOR:130:DP-3] disconnected
May 02 08:02:47 dom0 kernel: device-mapper: thin: Data device (dm-1) discard unsupported: Disabling discard passdown.
May 02 08:02:47 dom0 systemd[1]: Found device dev-mapper-qubes_dom0\x2droot.device - /dev/mapper/qubes_dom0-root.
May 02 08:02:47 dom0 systemd[1]: Reached target initrd-root-device.target - Initrd Root Device.
May 02 08:02:48 dom0 kernel: i915 0000:00:02.0: [drm] *ERROR* CPU pipe A FIFO underrun
May 02 08:02:48 dom0 kernel: i915 0000:00:02.0: [drm:intel_fbc_underrun_work_fn [i915]] Disabling FBC due to FIFO underrun.
May 02 08:02:48 dom0 kernel: i915 0000:00:02.0: [drm:__intel_fbc_disable [i915]] Disabling FBC on [PLANE:32:plane 1A]
May 02 08:02:48 dom0 systemd[1]: Finished dracut-initqueue.service - dracut initqueue hook.
May 02 08:02:48 dom0 audit[1]: SERVICE_START pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=dracut-initqueue comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:48 dom0 systemd[1]: Reached target remote-fs-pre.target - Preparation for Remote File Systems.
May 02 08:02:48 dom0 kernel: kauditd_printk_skb: 24 callbacks suppressed
May 02 08:02:48 dom0 kernel: audit: type=1130 audit(1746187368.272:35): pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=dracut-initqueue comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:48 dom0 systemd[1]: Reached target remote-fs.target - Remote File Systems.
May 02 08:02:48 dom0 systemd[1]: dracut-pre-mount.service - dracut pre-mount hook was skipped because all trigger condition checks failed.
May 02 08:02:48 dom0 systemd[1]: Starting systemd-fsck-root.service - File System Check on /dev/mapper/qubes_dom0-root...
May 02 08:02:48 dom0 systemd-fsck[685]: /dev/mapper/qubes_dom0-root: recovering journal
May 02 08:02:48 dom0 systemd-fsck[685]: /dev/mapper/qubes_dom0-root: clean, 217026/1310720 files, 3186781/5242880 blocks
May 02 08:02:48 dom0 systemd[1]: Finished systemd-fsck-root.service - File System Check on /dev/mapper/qubes_dom0-root.
May 02 08:02:48 dom0 audit[1]: SERVICE_START pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-fsck-root comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:48 dom0 kernel: audit: type=1130 audit(1746187368.718:36): pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-fsck-root comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:48 dom0 systemd[1]: Mounting sysroot.mount - /sysroot...
May 02 08:02:48 dom0 kernel: EXT4-fs (dm-3): mounted filesystem 18d04cba-3973-4a32-aa45-7daaca182bee ro with ordered data mode. Quota mode: none.
May 02 08:02:48 dom0 systemd[1]: Mounted sysroot.mount - /sysroot.
May 02 08:02:48 dom0 systemd[1]: Reached target initrd-root-fs.target - Initrd Root File System.
May 02 08:02:48 dom0 systemd[1]: Starting initrd-parse-etc.service - Reload Configuration from the Real Root...
May 02 08:02:48 dom0 systemd[1]: Reloading.
May 02 08:02:48 dom0 audit: BPF prog-id=14 op=LOAD
May 02 08:02:48 dom0 audit: BPF prog-id=6 op=UNLOAD
May 02 08:02:48 dom0 audit: BPF prog-id=15 op=LOAD
May 02 08:02:48 dom0 audit: BPF prog-id=16 op=LOAD
May 02 08:02:48 dom0 audit: BPF prog-id=7 op=UNLOAD
May 02 08:02:48 dom0 audit: BPF prog-id=8 op=UNLOAD
May 02 08:02:48 dom0 kernel: audit: type=1334 audit(1746187368.914:37): prog-id=14 op=LOAD
May 02 08:02:48 dom0 kernel: audit: type=1334 audit(1746187368.914:38): prog-id=6 op=UNLOAD
May 02 08:02:48 dom0 kernel: audit: type=1334 audit(1746187368.914:39): prog-id=15 op=LOAD
May 02 08:02:48 dom0 kernel: audit: type=1334 audit(1746187368.914:40): prog-id=16 op=LOAD
May 02 08:02:48 dom0 kernel: audit: type=1334 audit(1746187368.914:41): prog-id=7 op=UNLOAD
May 02 08:02:48 dom0 kernel: audit: type=1334 audit(1746187368.914:42): prog-id=8 op=UNLOAD
May 02 08:02:48 dom0 audit: BPF prog-id=17 op=LOAD
May 02 08:02:48 dom0 audit: BPF prog-id=9 op=UNLOAD
May 02 08:02:48 dom0 audit: BPF prog-id=18 op=LOAD
May 02 08:02:48 dom0 audit: BPF prog-id=19 op=LOAD
May 02 08:02:48 dom0 audit: BPF prog-id=10 op=UNLOAD
May 02 08:02:48 dom0 audit: BPF prog-id=11 op=UNLOAD
May 02 08:02:48 dom0 kernel: audit: type=1334 audit(1746187368.915:43): prog-id=17 op=LOAD
May 02 08:02:48 dom0 kernel: audit: type=1334 audit(1746187368.915:44): prog-id=9 op=UNLOAD
May 02 08:02:48 dom0 audit: BPF prog-id=20 op=LOAD
May 02 08:02:48 dom0 audit: BPF prog-id=21 op=LOAD
May 02 08:02:48 dom0 audit: BPF prog-id=12 op=UNLOAD
May 02 08:02:48 dom0 audit: BPF prog-id=13 op=UNLOAD
May 02 08:02:48 dom0 systemd[1]: initrd-parse-etc.service: Deactivated successfully.
May 02 08:02:48 dom0 systemd[1]: Finished initrd-parse-etc.service - Reload Configuration from the Real Root.
May 02 08:02:48 dom0 audit[1]: SERVICE_START pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=initrd-parse-etc comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:48 dom0 audit[1]: SERVICE_STOP pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=initrd-parse-etc comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:48 dom0 systemd[1]: Reached target initrd-fs.target - Initrd File Systems.
May 02 08:02:48 dom0 systemd[1]: Reached target initrd.target - Initrd Default Target.
May 02 08:02:48 dom0 systemd[1]: dracut-mount.service - dracut mount hook was skipped because all trigger condition checks failed.
May 02 08:02:48 dom0 systemd[1]: Starting dracut-pre-pivot.service - dracut pre-pivot and cleanup hook...
May 02 08:02:48 dom0 systemd[1]: Finished dracut-pre-pivot.service - dracut pre-pivot and cleanup hook.
May 02 08:02:48 dom0 audit[1]: SERVICE_START pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=dracut-pre-pivot comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:48 dom0 systemd[1]: Starting initrd-cleanup.service - Cleaning Up and Shutting Down Daemons...
May 02 08:02:49 dom0 systemd[1]: Stopped target timers.target - Timer Units.
May 02 08:02:49 dom0 systemd[1]: dracut-pre-pivot.service: Deactivated successfully.
May 02 08:02:49 dom0 systemd[1]: Stopped dracut-pre-pivot.service - dracut pre-pivot and cleanup hook.
May 02 08:02:49 dom0 audit[1]: SERVICE_STOP pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=dracut-pre-pivot comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:49 dom0 systemd[1]: Stopped target initrd.target - Initrd Default Target.
May 02 08:02:49 dom0 systemd[1]: Stopped target basic.target - Basic System.
May 02 08:02:49 dom0 systemd[1]: Stopped target initrd-root-device.target - Initrd Root Device.
May 02 08:02:49 dom0 systemd[1]: Stopped target initrd-usr-fs.target - Initrd /usr File System.
May 02 08:02:49 dom0 systemd[1]: Stopped target paths.target - Path Units.
May 02 08:02:49 dom0 systemd[1]: Stopped target remote-fs.target - Remote File Systems.
May 02 08:02:49 dom0 systemd[1]: Stopped target remote-fs-pre.target - Preparation for Remote File Systems.
May 02 08:02:49 dom0 systemd[1]: Stopped target slices.target - Slice Units.
May 02 08:02:49 dom0 systemd[1]: Stopped target sockets.target - Socket Units.
May 02 08:02:49 dom0 systemd[1]: Stopped target sysinit.target - System Initialization.
May 02 08:02:49 dom0 systemd[1]: Stopped target swap.target - Swaps.
May 02 08:02:49 dom0 systemd[1]: dracut-initqueue.service: Deactivated successfully.
May 02 08:02:49 dom0 systemd[1]: Stopped dracut-initqueue.service - dracut initqueue hook.
May 02 08:02:49 dom0 audit[1]: SERVICE_STOP pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=dracut-initqueue comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:49 dom0 systemd[1]: Starting plymouth-switch-root.service - Plymouth switch root service...
May 02 08:02:49 dom0 systemd[1]: systemd-sysctl.service: Deactivated successfully.
May 02 08:02:49 dom0 systemd[1]: Stopped systemd-sysctl.service - Apply Kernel Variables.
May 02 08:02:49 dom0 audit[1]: SERVICE_STOP pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-sysctl comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:49 dom0 systemd[1]: systemd-modules-load.service: Deactivated successfully.
May 02 08:02:49 dom0 systemd[1]: Stopped systemd-modules-load.service - Load Kernel Modules.
May 02 08:02:49 dom0 audit[1]: SERVICE_STOP pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-modules-load comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:49 dom0 systemd[1]: systemd-udev-trigger.service: Deactivated successfully.
May 02 08:02:49 dom0 systemd[1]: Stopped systemd-udev-trigger.service - Coldplug All udev Devices.
May 02 08:02:49 dom0 audit[1]: SERVICE_STOP pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-udev-trigger comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:49 dom0 systemd[1]: Stopping systemd-udevd.service - Rule-based Manager for Device Events and Files...
May 02 08:02:49 dom0 systemd[1]: Stopping usbguard.service - USBGuard daemon...
May 02 08:02:49 dom0 systemd[1]: usbguard.service: Deactivated successfully.
May 02 08:02:49 dom0 systemd[1]: Stopped usbguard.service - USBGuard daemon.
May 02 08:02:49 dom0 audit[1]: SERVICE_STOP pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=usbguard comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:49 dom0 systemd[1]: initrd-cleanup.service: Deactivated successfully.
May 02 08:02:49 dom0 systemd[1]: Finished initrd-cleanup.service - Cleaning Up and Shutting Down Daemons.
May 02 08:02:49 dom0 audit[1]: SERVICE_START pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=initrd-cleanup comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:49 dom0 audit[1]: SERVICE_STOP pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=initrd-cleanup comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:49 dom0 systemd[1]: systemd-tmpfiles-setup.service: Deactivated successfully.
May 02 08:02:49 dom0 systemd[1]: Stopped systemd-tmpfiles-setup.service - Create Volatile Files and Directories.
May 02 08:02:49 dom0 audit[1]: SERVICE_STOP pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-tmpfiles-setup comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:49 dom0 systemd[1]: Stopped target local-fs.target - Local File Systems.
May 02 08:02:49 dom0 systemd[1]: systemd-udevd.service: Deactivated successfully.
May 02 08:02:49 dom0 systemd[1]: Stopped systemd-udevd.service - Rule-based Manager for Device Events and Files.
May 02 08:02:49 dom0 audit[1]: SERVICE_STOP pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-udevd comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:49 dom0 systemd[1]: systemd-udevd.service: Consumed 2.010s CPU time.
May 02 08:02:49 dom0 systemd[1]: systemd-udevd-control.socket: Deactivated successfully.
May 02 08:02:49 dom0 systemd[1]: Closed systemd-udevd-control.socket - udev Control Socket.
May 02 08:02:49 dom0 systemd[1]: systemd-udevd-kernel.socket: Deactivated successfully.
May 02 08:02:49 dom0 systemd[1]: Closed systemd-udevd-kernel.socket - udev Kernel Socket.
May 02 08:02:49 dom0 systemd[1]: dracut-pre-udev.service: Deactivated successfully.
May 02 08:02:49 dom0 systemd[1]: Stopped dracut-pre-udev.service - dracut pre-udev hook.
May 02 08:02:49 dom0 audit: BPF prog-id=17 op=UNLOAD
May 02 08:02:49 dom0 audit[1]: SERVICE_STOP pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=dracut-pre-udev comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:49 dom0 systemd[1]: dracut-cmdline.service: Deactivated successfully.
May 02 08:02:49 dom0 systemd[1]: Stopped dracut-cmdline.service - dracut cmdline hook.
May 02 08:02:49 dom0 audit[1]: SERVICE_STOP pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=dracut-cmdline comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:49 dom0 systemd[1]: Starting initrd-udevadm-cleanup-db.service - Cleanup udev Database...
May 02 08:02:49 dom0 systemd[1]: systemd-tmpfiles-setup-dev.service: Deactivated successfully.
May 02 08:02:49 dom0 systemd[1]: Stopped systemd-tmpfiles-setup-dev.service - Create Static Device Nodes in /dev.
May 02 08:02:49 dom0 audit[1]: SERVICE_STOP pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-tmpfiles-setup-dev comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:49 dom0 systemd[1]: kmod-static-nodes.service: Deactivated successfully.
May 02 08:02:49 dom0 systemd[1]: Stopped kmod-static-nodes.service - Create List of Static Device Nodes.
May 02 08:02:49 dom0 audit[1]: SERVICE_STOP pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=kmod-static-nodes comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:49 dom0 systemd[1]: initrd-udevadm-cleanup-db.service: Deactivated successfully.
May 02 08:02:49 dom0 systemd[1]: Finished initrd-udevadm-cleanup-db.service - Cleanup udev Database.
May 02 08:02:49 dom0 audit[1]: SERVICE_START pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=initrd-udevadm-cleanup-db comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:49 dom0 audit[1]: SERVICE_STOP pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=initrd-udevadm-cleanup-db comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:49 dom0 systemd[1]: Reached target initrd-switch-root.target - Switch Root.
May 02 08:02:49 dom0 systemd[1]: Finished plymouth-switch-root.service - Plymouth switch root service.
May 02 08:02:49 dom0 audit[1]: SERVICE_START pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=plymouth-switch-root comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:49 dom0 systemd[1]: Starting initrd-switch-root.service - Switch Root...
May 02 08:02:49 dom0 systemd[1]: Switching root.
May 02 08:02:49 dom0 systemd-journald[317]: Journal stopped
May 02 08:02:52 dom0 systemd-journald[317]: Received SIGTERM from PID 1 (systemd).
May 02 08:02:52 dom0 systemd[1]: systemd 251.19-1.fc37 running in system mode (+PAM +AUDIT +SELINUX -APPARMOR +IMA +SMACK +SECCOMP -GCRYPT +GNUTLS +OPENSSL +ACL +BLKID +CURL +ELFUTILS +FIDO2 +IDN2 -IDN -IPTC +KMOD +LIBCRYPTSETUP +LIBFDISK +PCRE2 +PWQUALITY +P11KIT +QRENCODE +TPM2 +BZIP2 +LZ4 +XZ +ZLIB +ZSTD +BPF_FRAMEWORK +XKBCOMMON +UTMP +SYSVINIT default-hierarchy=unified)
May 02 08:02:52 dom0 systemd[1]: Detected virtualization xen.
May 02 08:02:52 dom0 systemd[1]: Detected architecture x86-64.
May 02 08:02:52 dom0 systemd[1]: bpf-lsm: BPF LSM hook not enabled in the kernel, BPF LSM not supported
May 02 08:02:52 dom0 systemd[1]: /usr/lib/systemd/system/qubesd.service:8: Standard output type syslog is obsolete, automatically updating to journal. Please update your unit file, and consider removing the setting altogether.
May 02 08:02:52 dom0 systemd[1]: /usr/lib/systemd/system/qubes-qmemman.service:7: Standard output type syslog is obsolete, automatically updating to journal. Please update your unit file, and consider removing the setting altogether.
May 02 08:02:52 dom0 systemd[1]: /usr/lib/systemd/system/qubes-db-dom0.service:9: Standard output type syslog is obsolete, automatically updating to journal. Please update your unit file, and consider removing the setting altogether.
May 02 08:02:52 dom0 systemd[1]: /usr/lib/systemd/system/qubes-core.service:8: Standard output type syslog is obsolete, automatically updating to journal. Please update your unit file, and consider removing the setting altogether.
May 02 08:02:52 dom0 systemd[1]: initrd-switch-root.service: Deactivated successfully.
May 02 08:02:52 dom0 systemd[1]: Stopped initrd-switch-root.service - Switch Root.
May 02 08:02:52 dom0 systemd[1]: systemd-journald.service: Scheduled restart job, restart counter is at 1.
May 02 08:02:52 dom0 systemd[1]: Created slice system-getty.slice - Slice /system/getty.
May 02 08:02:52 dom0 systemd[1]: Created slice system-qubes\x2dvm.slice - Slice /system/qubes-vm.
May 02 08:02:52 dom0 systemd[1]: Created slice system-serial\x2dgetty.slice - Slice /system/serial-getty.
May 02 08:02:52 dom0 systemd[1]: Created slice system-systemd\x2dfsck.slice - Slice /system/systemd-fsck.
May 02 08:02:52 dom0 systemd[1]: Created slice user.slice - User and Session Slice.
May 02 08:02:52 dom0 systemd[1]: systemd-ask-password-console.path - Dispatch Password Requests to Console Directory Watch was skipped because of a failed condition check (ConditionPathExists=!/run/plymouth/pid).
May 02 08:02:52 dom0 systemd[1]: Set up automount proc-sys-fs-binfmt_misc.automount - Arbitrary Executable File Formats File System Automount Point.
May 02 08:02:52 dom0 systemd[1]: Stopped target initrd-switch-root.target - Switch Root.
May 02 08:02:52 dom0 systemd[1]: Stopped target initrd-fs.target - Initrd File Systems.
May 02 08:02:52 dom0 systemd[1]: Stopped target initrd-root-fs.target - Initrd Root File System.
May 02 08:02:52 dom0 systemd[1]: Reached target integritysetup.target - Local Integrity Protected Volumes.
May 02 08:02:52 dom0 systemd[1]: Reached target remote-cryptsetup.target - Remote Encrypted Volumes.
May 02 08:02:52 dom0 systemd[1]: Reached target remote-fs.target - Remote File Systems.
May 02 08:02:52 dom0 systemd[1]: Reached target slices.target - Slice Units.
May 02 08:02:52 dom0 systemd[1]: Reached target veritysetup.target - Local Verity Protected Volumes.
May 02 08:02:52 dom0 systemd[1]: Listening on dm-event.socket - Device-mapper event daemon FIFOs.
May 02 08:02:52 dom0 systemd[1]: Listening on systemd-coredump.socket - Process Core Dump Socket.
May 02 08:02:52 dom0 systemd[1]: Listening on systemd-initctl.socket - initctl Compatibility Named Pipe.
May 02 08:02:52 dom0 systemd[1]: Listening on systemd-udevd-control.socket - udev Control Socket.
May 02 08:02:52 dom0 systemd[1]: Listening on systemd-udevd-kernel.socket - udev Kernel Socket.
May 02 08:02:52 dom0 systemd[1]: Listening on systemd-userdbd.socket - User Database Manager Socket.
May 02 08:02:52 dom0 systemd[1]: Activating swap dev-mapper-qubes_dom0\x2dswap.swap - /dev/mapper/qubes_dom0-swap...
May 02 08:02:52 dom0 systemd[1]: dev-hugepages.mount - Huge Pages File System was skipped because of a failed condition check (ConditionPathExists=/sys/kernel/mm/hugepages).
May 02 08:02:52 dom0 systemd[1]: Mounting dev-mqueue.mount - POSIX Message Queue File System...
May 02 08:02:52 dom0 systemd[1]: Mounting proc-xen.mount - Mount /proc/xen files...
May 02 08:02:52 dom0 systemd[1]: Mounting sys-kernel-debug.mount - Kernel Debug File System...
May 02 08:02:52 dom0 systemd[1]: Mounting sys-kernel-tracing.mount - Kernel Trace File System...
May 02 08:02:52 dom0 kernel: Adding 4124668k swap on /dev/mapper/qubes_dom0-swap.  Priority:-2 extents:1 across:4124668k 
May 02 08:02:52 dom0 systemd[1]: Starting kmod-static-nodes.service - Create List of Static Device Nodes...
May 02 08:02:52 dom0 systemd[1]: Starting lvm2-monitor.service - Monitoring of LVM2 mirrors, snapshots etc. using dmeventd or progress polling...
May 02 08:02:52 dom0 systemd[1]: Starting modprobe@configfs.service - Load Kernel Module configfs...
May 02 08:02:52 dom0 systemd[1]: Starting modprobe@dm_mod.service - Load Kernel Module dm_mod...
May 02 08:02:52 dom0 systemd[1]: Starting modprobe@drm.service - Load Kernel Module drm...
May 02 08:02:52 dom0 systemd[1]: Starting modprobe@fuse.service - Load Kernel Module fuse...
May 02 08:02:52 dom0 systemd[1]: Starting modprobe@loop.service - Load Kernel Module loop...
May 02 08:02:52 dom0 systemd[1]: plymouth-switch-root.service: Deactivated successfully.
May 02 08:02:52 dom0 systemd[1]: Stopped plymouth-switch-root.service - Plymouth switch root service.
May 02 08:02:52 dom0 systemd[1]: Stopped systemd-journald.service - Journal Service.
May 02 08:02:52 dom0 systemd[1]: Starting systemd-journald.service - Journal Service...
May 02 08:02:52 dom0 systemd[1]: Starting systemd-modules-load.service - Load Kernel Modules...
May 02 08:02:52 dom0 systemd[1]: Starting systemd-network-generator.service - Generate network units from Kernel command line...
May 02 08:02:52 dom0 systemd[1]: Starting systemd-remount-fs.service - Remount Root and Kernel File Systems...
May 02 08:02:52 dom0 systemd[1]: Starting systemd-udev-trigger.service - Coldplug All udev Devices...
May 02 08:02:52 dom0 systemd[1]: Activated swap dev-mapper-qubes_dom0\x2dswap.swap - /dev/mapper/qubes_dom0-swap.
May 02 08:02:52 dom0 systemd[1]: Mounted dev-mqueue.mount - POSIX Message Queue File System.
May 02 08:02:52 dom0 systemd[1]: Mounted sys-kernel-debug.mount - Kernel Debug File System.
May 02 08:02:52 dom0 systemd[1]: Mounted sys-kernel-tracing.mount - Kernel Trace File System.
May 02 08:02:52 dom0 systemd[1]: Finished kmod-static-nodes.service - Create List of Static Device Nodes.
May 02 08:02:52 dom0 systemd[1]: Reached target swap.target - Swaps.
May 02 08:02:52 dom0 systemd[1]: Mounting tmp.mount - Temporary Directory /tmp...
May 02 08:02:52 dom0 systemd[1]: Mounted tmp.mount - Temporary Directory /tmp.
May 02 08:02:52 dom0 systemd-journald[778]: Journal started
May 02 08:02:52 dom0 systemd-journald[778]: Runtime Journal (/run/log/journal/4d78874086394993b8b464392829a0e3) is 8.0M, max 77.5M, 69.5M free.
May 02 08:02:50 dom0 audit: BPF prog-id=22 op=LOAD
May 02 08:02:50 dom0 audit: BPF prog-id=22 op=UNLOAD
May 02 08:02:50 dom0 audit: BPF prog-id=23 op=LOAD
May 02 08:02:50 dom0 audit: BPF prog-id=23 op=UNLOAD
May 02 08:02:52 dom0 systemd[1]: Started systemd-journald.service - Journal Service.
May 02 08:02:50 dom0 audit: BPF prog-id=24 op=LOAD
May 02 08:02:50 dom0 audit: BPF prog-id=24 op=UNLOAD
May 02 08:02:50 dom0 audit: BPF prog-id=25 op=LOAD
May 02 08:02:50 dom0 audit: BPF prog-id=25 op=UNLOAD
May 02 08:02:50 dom0 audit: BPF prog-id=26 op=LOAD
May 02 08:02:50 dom0 audit: BPF prog-id=26 op=UNLOAD
May 02 08:02:50 dom0 audit: BPF prog-id=27 op=LOAD
May 02 08:02:50 dom0 audit: BPF prog-id=28 op=LOAD
May 02 08:02:50 dom0 audit: BPF prog-id=27 op=UNLOAD
May 02 08:02:50 dom0 audit: BPF prog-id=28 op=UNLOAD
May 02 08:02:50 dom0 audit: BPF prog-id=29 op=LOAD
May 02 08:02:50 dom0 audit: BPF prog-id=29 op=UNLOAD
May 02 08:02:50 dom0 audit: BPF prog-id=30 op=LOAD
May 02 08:02:50 dom0 audit: BPF prog-id=30 op=UNLOAD
May 02 08:02:50 dom0 audit: BPF prog-id=31 op=LOAD
May 02 08:02:50 dom0 audit: BPF prog-id=31 op=UNLOAD
May 02 08:02:50 dom0 audit: BPF prog-id=32 op=LOAD
May 02 08:02:50 dom0 audit: BPF prog-id=32 op=UNLOAD
May 02 08:02:50 dom0 audit: BPF prog-id=33 op=LOAD
May 02 08:02:50 dom0 audit: BPF prog-id=34 op=LOAD
May 02 08:02:50 dom0 audit: BPF prog-id=34 op=UNLOAD
May 02 08:02:50 dom0 audit: BPF prog-id=35 op=LOAD
May 02 08:02:50 dom0 audit: BPF prog-id=33 op=UNLOAD
May 02 08:02:50 dom0 audit: BPF prog-id=35 op=UNLOAD
May 02 08:02:52 dom0 audit: BPF prog-id=36 op=LOAD
May 02 08:02:52 dom0 audit: BPF prog-id=14 op=UNLOAD
May 02 08:02:52 dom0 audit: BPF prog-id=37 op=LOAD
May 02 08:02:52 dom0 audit: BPF prog-id=38 op=LOAD
May 02 08:02:52 dom0 audit: BPF prog-id=15 op=UNLOAD
May 02 08:02:52 dom0 audit: BPF prog-id=16 op=UNLOAD
May 02 08:02:52 dom0 audit[1]: SERVICE_STOP pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-journald comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:52 dom0 audit[1]: SERVICE_START pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=initrd-switch-root comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:52 dom0 audit[1]: SERVICE_STOP pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=initrd-switch-root comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:52 dom0 audit: BPF prog-id=36 op=UNLOAD
May 02 08:02:52 dom0 audit[1]: SERVICE_STOP pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=plymouth-switch-root comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:52 dom0 audit[1]: SERVICE_START pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-journald comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:52 dom0 audit[1]: SERVICE_STOP pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-journald comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:52 dom0 audit: BPF prog-id=39 op=LOAD
May 02 08:02:52 dom0 audit: BPF prog-id=40 op=LOAD
May 02 08:02:52 dom0 audit: BPF prog-id=41 op=LOAD
May 02 08:02:52 dom0 audit: BPF prog-id=37 op=UNLOAD
May 02 08:02:52 dom0 audit: BPF prog-id=38 op=UNLOAD
May 02 08:02:52 dom0 audit[1]: SERVICE_START pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=kmod-static-nodes comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:52 dom0 audit: CONFIG_CHANGE op=set audit_enabled=1 old=1 auid=4294967295 ses=4294967295 res=1
May 02 08:02:52 dom0 audit[778]: SYSCALL arch=c000003e syscall=46 success=yes exit=60 a0=3 a1=7fff9608b070 a2=4000 a3=7fff9608b0fc items=0 ppid=1 pid=778 auid=4294967295 uid=0 gid=0 euid=0 suid=0 fsuid=0 egid=0 sgid=0 fsgid=0 tty=(none) ses=4294967295 comm="systemd-journal" exe="/usr/lib/systemd/systemd-journald" key=(null)
May 02 08:02:52 dom0 audit: PROCTITLE proctitle="/usr/lib/systemd/systemd-journald"
May 02 08:02:52 dom0 audit[1]: SERVICE_START pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-journald comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:52 dom0 systemd[1]: Queued start job for default target graphical.target.
May 02 08:02:52 dom0 systemd[1]: systemd-journald.service: Deactivated successfully.
May 02 08:02:52 dom0 systemd[1]: Finished systemd-network-generator.service - Generate network units from Kernel command line.
May 02 08:02:52 dom0 audit[1]: SERVICE_START pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-network-generator comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:52 dom0 systemd[1]: Reached target network-pre.target - Preparation for Network.
May 02 08:02:52 dom0 kernel: EXT4-fs (dm-3): re-mounted 18d04cba-3973-4a32-aa45-7daaca182bee r/w. Quota mode: none.
May 02 08:02:52 dom0 systemd[1]: Finished systemd-remount-fs.service - Remount Root and Kernel File Systems.
May 02 08:02:52 dom0 audit[1]: SERVICE_START pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-remount-fs comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:52 dom0 systemd[1]: systemd-firstboot.service - First Boot Wizard was skipped because of a failed condition check (ConditionFirstBoot=yes).
May 02 08:02:52 dom0 systemd[1]: systemd-hwdb-update.service - Rebuild Hardware Database was skipped because of a failed condition check (ConditionNeedsUpdate=/etc).
May 02 08:02:52 dom0 systemd-modules-load[779]: Module 'msr' is built in
May 02 08:02:52 dom0 systemd[1]: Starting systemd-journal-flush.service - Flush Journal to Persistent Storage...
May 02 08:02:52 dom0 systemd[1]: systemd-pstore.service - Platform Persistent Storage Archival was skipped because of a failed condition check (ConditionDirectoryNotEmpty=/sys/fs/pstore).
May 02 08:02:52 dom0 systemd[1]: Starting systemd-random-seed.service - Load/Save Random Seed...
May 02 08:02:52 dom0 systemd[1]: systemd-sysusers.service - Create System Users was skipped because of a failed condition check (ConditionNeedsUpdate=/etc).
May 02 08:02:52 dom0 systemd[1]: Starting systemd-tmpfiles-setup-dev.service - Create Static Device Nodes in /dev...
May 02 08:02:52 dom0 systemd[1]: modprobe@configfs.service: Deactivated successfully.
May 02 08:02:52 dom0 systemd[1]: Finished modprobe@configfs.service - Load Kernel Module configfs.
May 02 08:02:52 dom0 audit[1]: SERVICE_START pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=modprobe@configfs comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:52 dom0 audit[1]: SERVICE_STOP pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=modprobe@configfs comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:52 dom0 systemd[1]: modprobe@dm_mod.service: Deactivated successfully.
May 02 08:02:52 dom0 systemd[1]: Finished modprobe@dm_mod.service - Load Kernel Module dm_mod.
May 02 08:02:52 dom0 audit[1]: SERVICE_START pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=modprobe@dm_mod comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:52 dom0 audit[1]: SERVICE_STOP pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=modprobe@dm_mod comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:52 dom0 systemd[1]: modprobe@drm.service: Deactivated successfully.
May 02 08:02:52 dom0 systemd[1]: Finished modprobe@drm.service - Load Kernel Module drm.
May 02 08:02:52 dom0 audit[1]: SERVICE_START pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=modprobe@drm comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:52 dom0 audit[1]: SERVICE_STOP pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=modprobe@drm comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:52 dom0 systemd[1]: Finished systemd-udev-trigger.service - Coldplug All udev Devices.
May 02 08:02:52 dom0 audit[1]: SERVICE_START pid=1 uid=0 auid=4294967295 ses=4294967295 msg='unit=systemd-udev-trigger comm="systemd" exe="/usr/lib/systemd/systemd" hostname=? addr=? terminal=? res=success'
May 02 08:02:52 dom0 systemd-journald[778]: Time spent on flushing to /var/log/journal/4d78874086394993b8b464392829a0e3 is 48.421ms for 2197 entries.


