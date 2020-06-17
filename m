Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0561FC66D
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 08:53:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D98336E0AA;
	Wed, 17 Jun 2020 06:53:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88F636E0AA
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jun 2020 06:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592376814;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=qfWjdyzjns6rMJinMSVknDCymTxMG/w3IcCAnswbmLY=;
 b=HG/gAE3+TLWoCTm0Aw4yNPOQBfF0AJhcbrJomC88eV6BhahE0eGWHE6oiRowEH23QHWuVU
 2XJkqHH0lN8EoCCrnIjjJncQzdYYqTDdNg0E55nxWS0oTy846pV1uwUZ+Ti4FE3KxvsIjf
 SmNgLRg/Zn+UNVIHpOCYyRnbWbVneyc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-395-9FQQpgykMDyo5dzrHyVg4g-1; Wed, 17 Jun 2020 02:53:29 -0400
X-MC-Unique: 9FQQpgykMDyo5dzrHyVg4g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 954341010883;
 Wed, 17 Jun 2020 06:53:27 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-13-46.pek2.redhat.com
 [10.72.13.46])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 88A1979317;
 Wed, 17 Jun 2020 06:53:19 +0000 (UTC)
Date: Wed, 17 Jun 2020 14:53:15 +0800
From: Dave Young <dyoung@redhat.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20200617065315.GA6501@dhcp-128-65.nay.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Subject: [Intel-gfx] i915/kexec: warning at
 drivers/gpu/drm/i915/display/intel_psr.c:782 intel_psr_activate+0x3c6/0x440
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
Cc: bhe@redhat.com, intel-gfx@lists.freedesktop.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, ebiederm@xmission.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

This warning exists for long time, I did not find time to report, here
is the latest kernel logs, can you please to have a look?

hardware: Thinkpad T480s
lspci: 00:02.0 VGA compatible controller: Intel Corporation UHD Graphics 620 (rev 07)
--
[    0.000000] Linux version 5.8.0-rc1+ (dyoung@dhcp-128-65.nay.redhat.com) (gcc (GCC) 10.0.1 20200328 (Red Hat 10.0.1-0.11), GNU ld version 2.34-2.fc32) #179 SMP Wed Jun 17 14:12:27 CST 2020
[    0.000000] Command line: ramoops.mem_address=0x20000000 ramoops.mem_size=0x400000 hung_task_panic=1 softlockup_panic=1 panic=6 root=/dev/nvme0n1p9 ro rd.lvm.lv=rhel/swap LANG=zh_CN.UTF-8 audit=0 selinux=0 no_console_suspend crashkernel=160M printk.devkmsg=off usbcore.autosuspend=-1
[    0.000000] KERNEL supported cpus:
[    0.000000]   Intel GenuineIntel
[    0.000000]   AMD AuthenticAMD
[    0.000000] x86/fpu: Supporting XSAVE feature 0x001: 'x87 floating point registers'
[    0.000000] x86/fpu: Supporting XSAVE feature 0x002: 'SSE registers'
[    0.000000] x86/fpu: Supporting XSAVE feature 0x004: 'AVX registers'
[    0.000000] x86/fpu: Supporting XSAVE feature 0x008: 'MPX bounds registers'
[    0.000000] x86/fpu: Supporting XSAVE feature 0x010: 'MPX CSR'
[    0.000000] x86/fpu: xstate_offset[2]:  576, xstate_sizes[2]:  256
[    0.000000] x86/fpu: xstate_offset[3]:  832, xstate_sizes[3]:   64
[    0.000000] x86/fpu: xstate_offset[4]:  896, xstate_sizes[4]:   64
[    0.000000] x86/fpu: Enabled xstate features 0x1f, context size is 960 bytes, using 'compacted' format.
[    0.000000] BIOS-provided physical RAM map:
[    0.000000] BIOS-e820: [mem 0x0000000000000000-0x0000000000057fff] usable
[    0.000000] BIOS-e820: [mem 0x0000000000058000-0x0000000000058fff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000000059000-0x000000000009cfff] usable
[    0.000000] BIOS-e820: [mem 0x000000000009d000-0x00000000000fffff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000000100000-0x000000003fffffff] usable
[    0.000000] BIOS-e820: [mem 0x0000000040000000-0x00000000403fffff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000040400000-0x000000007b4b2fff] usable
[    0.000000] BIOS-e820: [mem 0x000000007b4b3000-0x000000007b4b4fff] reserved
[    0.000000] BIOS-e820: [mem 0x000000007b4b5000-0x000000007b51cfff] usable
[    0.000000] BIOS-e820: [mem 0x000000007b51d000-0x000000007b51dfff] reserved
[    0.000000] BIOS-e820: [mem 0x000000007b51e000-0x00000000ad334fff] usable
[    0.000000] BIOS-e820: [mem 0x00000000ad335000-0x00000000ad335fff] ACPI NVS
[    0.000000] BIOS-e820: [mem 0x00000000ad336000-0x00000000ad336fff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000ad337000-0x00000000ba3e9fff] usable
[    0.000000] BIOS-e820: [mem 0x00000000ba3ea000-0x00000000bb535fff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000bb536000-0x00000000bb599fff] ACPI NVS
[    0.000000] BIOS-e820: [mem 0x00000000bb59a000-0x00000000bb5fefff] ACPI data
[    0.000000] BIOS-e820: [mem 0x00000000bb5ff000-0x00000000bb5fffff] usable
[    0.000000] BIOS-e820: [mem 0x00000000bb600000-0x00000000bf7fffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000f8000000-0x00000000fbffffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000fe010000-0x00000000fe010fff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000100000000-0x000000043e7fffff] usable
[    0.000000] NX (Execute Disable) protection: active
[    0.000000] e820: update [mem 0x00050270-0x000502df] usable ==> usable
[    0.000000] extended physical RAM map:
[    0.000000] reserve setup_data: [mem 0x0000000000000000-0x000000000005026f] usable
[    0.000000] reserve setup_data: [mem 0x0000000000050270-0x00000000000502df] usable
[    0.000000] reserve setup_data: [mem 0x00000000000502e0-0x0000000000057fff] usable
[    0.000000] reserve setup_data: [mem 0x0000000000058000-0x0000000000058fff] reserved
[    0.000000] reserve setup_data: [mem 0x0000000000059000-0x000000000009cfff] usable
[    0.000000] reserve setup_data: [mem 0x000000000009d000-0x00000000000fffff] reserved
[    0.000000] reserve setup_data: [mem 0x0000000000100000-0x000000003fffffff] usable
[    0.000000] reserve setup_data: [mem 0x0000000040000000-0x00000000403fffff] reserved
[    0.000000] reserve setup_data: [mem 0x0000000040400000-0x000000007b4b2fff] usable
[    0.000000] reserve setup_data: [mem 0x000000007b4b3000-0x000000007b4b4fff] reserved
[    0.000000] reserve setup_data: [mem 0x000000007b4b5000-0x000000007b51cfff] usable
[    0.000000] reserve setup_data: [mem 0x000000007b51d000-0x000000007b51dfff] reserved
[    0.000000] reserve setup_data: [mem 0x000000007b51e000-0x00000000ad334fff] usable
[    0.000000] reserve setup_data: [mem 0x00000000ad335000-0x00000000ad335fff] ACPI NVS
[    0.000000] reserve setup_data: [mem 0x00000000ad336000-0x00000000ad336fff] reserved
[    0.000000] reserve setup_data: [mem 0x00000000ad337000-0x00000000ba3e9fff] usable
[    0.000000] reserve setup_data: [mem 0x00000000ba3ea000-0x00000000bb535fff] reserved
[    0.000000] reserve setup_data: [mem 0x00000000bb536000-0x00000000bb599fff] ACPI NVS
[    0.000000] reserve setup_data: [mem 0x00000000bb59a000-0x00000000bb5fefff] ACPI data
[    0.000000] reserve setup_data: [mem 0x00000000bb5ff000-0x00000000bb5fffff] usable
[    0.000000] reserve setup_data: [mem 0x00000000bb600000-0x00000000bf7fffff] reserved
[    0.000000] reserve setup_data: [mem 0x00000000f8000000-0x00000000fbffffff] reserved
[    0.000000] reserve setup_data: [mem 0x00000000fe010000-0x00000000fe010fff] reserved
[    0.000000] reserve setup_data: [mem 0x0000000100000000-0x000000043e7fffff] usable
[    0.000000] efi: EFI v2.50 by Lenovo
[    0.000000] efi: SMBIOS=0xba674000 SMBIOS 3.0=0xba671000 ACPI=0xbb5fe000 ACPI 2.0=0xbb5fe014 ESRT=0xba4ec000 MEMATTR=0xb520e018 RNG=0xba675998 
[    0.000000] efi: seeding entropy pool
[    0.000000] SMBIOS 3.0.0 present.
[    0.000000] DMI: LENOVO 20L8S3M801/20L8S3M801, BIOS N22ET54W (1.31 ) 04/22/2019
[    0.000000] tsc: Detected 2100.000 MHz processor
[    0.001190] tsc: Detected 2099.944 MHz TSC
[    0.001190] e820: update [mem 0x00000000-0x00000fff] usable ==> reserved
[    0.001192] e820: remove [mem 0x000a0000-0x000fffff] usable
[    0.001196] last_pfn = 0x43e800 max_arch_pfn = 0x400000000
[    0.001197] x86/PAT: Configuration [0-7]: WB  WT  UC- UC  WB  WT  UC- UC  
[    0.001197] last_pfn = 0xbb600 max_arch_pfn = 0x400000000
[    0.001202] esrt: Reserving ESRT space from 0x00000000ba4ec000 to 0x00000000ba4ec088.
[    0.001204] kexec: Reserving the low 1M of memory for crashkernel
[    0.001206] Using GB pages for direct mapping
[    0.001704] Secure boot disabled
[    0.001709] ACPI: Early table checksum verification disabled
[    0.001711] ACPI: RSDP 0x00000000BB5FE014 000024 (v02 LENOVO)
[    0.001713] ACPI: XSDT 0x00000000BB5AD188 00010C (v01 LENOVO TP-N22   00001310 PTEC 00000002)
[    0.001716] ACPI: FACP 0x00000000BB5E3000 0000F4 (v05 LENOVO TP-N22   00001310 PTEC 00000002)
[    0.001719] ACPI: DSDT 0x00000000BB5BD000 021E4F (v02 LENOVO SKL      00000000 INTL 20160527)
[    0.001721] ACPI: FACS 0x00000000BB546000 000040
[    0.001722] ACPI: SSDT 0x00000000BB5E9000 01320E (v02 LENOVO DptfTabl 00001000 INTL 20160527)
[    0.001724] ACPI: UEFI 0x00000000BB55C000 000042 (v01 LENOVO TP-N22   00001310 PTEC 00000002)
[    0.001725] ACPI: SSDT 0x00000000BB5E5000 0030B0 (v02 LENOVO SaSsdt   00003000 INTL 20160527)
[    0.001727] ACPI: SSDT 0x00000000BB5E4000 0005C6 (v02 LENOVO PerfTune 00001000 INTL 20160527)
[    0.001728] ACPI: HPET 0x00000000BB5E2000 000038 (v01 LENOVO TP-N22   00001310 PTEC 00000002)
[    0.001730] ACPI: APIC 0x00000000BB5E1000 00012C (v03 LENOVO TP-N22   00001310 PTEC 00000002)
[    0.001731] ACPI: MCFG 0x00000000BB5E0000 00003C (v01 LENOVO TP-N22   00001310 PTEC 00000002)
[    0.001733] ACPI: ECDT 0x00000000BB5DF000 000053 (v01 LENOVO TP-N22   00001310 PTEC 00000002)
[    0.001734] ACPI: SSDT 0x00000000BB5BB000 001C9C (v02 LENOVO RVP7Rtd3 00001000 INTL 20160527)
[    0.001736] ACPI: SSDT 0x00000000BB5B9000 00163C (v02 LENOVO ProjSsdt 00000010 INTL 20160527)
[    0.001738] ACPI: BOOT 0x00000000BB5B8000 000028 (v01 LENOVO TP-N22   00001310 PTEC 00000002)
[    0.001739] ACPI: BATB 0x00000000BB5B7000 00004A (v02 LENOVO TP-N22   00001310 PTEC 00000002)
[    0.001741] ACPI: SSDT 0x00000000BB5B5000 0017AE (v02 LENOVO CpuSsdt  00003000 INTL 20160527)
[    0.001742] ACPI: SSDT 0x00000000BB5B4000 00056D (v02 LENOVO CtdpB    00001000 INTL 20160527)
[    0.001744] ACPI: SSDT 0x00000000BB5B3000 000678 (v02 LENOVO UsbCTabl 00001000 INTL 20160527)
[    0.001745] ACPI: LPIT 0x00000000BB5B2000 000094 (v01 LENOVO TP-N22   00001310 PTEC 00000002)
[    0.001747] ACPI: WSMT 0x00000000BB5B1000 000028 (v01 LENOVO TP-N22   00001310 PTEC 00000002)
[    0.001748] ACPI: SSDT 0x00000000BB5B0000 0001D8 (v02 LENOVO HdaDsp   00000000 INTL 20160527)
[    0.001750] ACPI: SSDT 0x00000000BB5AF000 0004FC (v02 LENOVO TbtTypeC 00000000 INTL 20160527)
[    0.001751] ACPI: SSDT 0x00000000BB5AE000 0002D1 (v02 LENOVO Wwan     00000001 INTL 20160527)
[    0.001753] ACPI: DBGP 0x00000000BB5FD000 000034 (v01 LENOVO TP-N22   00001310 PTEC 00000002)
[    0.001754] ACPI: DBG2 0x00000000BB5AC000 000054 (v00 LENOVO TP-N22   00001310 PTEC 00000002)
[    0.001756] ACPI: POAT 0x00000000BB5AB000 000055 (v03 LENOVO TP-N22   00001310 PTEC 00000002)
[    0.001757] ACPI: DMAR 0x00000000BB5AA000 0000A8 (v01 LENOVO TP-N22   00001310 PTEC 00000002)
[    0.001759] ACPI: ASF! 0x00000000BB5A9000 0000A0 (v32 LENOVO TP-N22   00001310 PTEC 00000002)
[    0.001760] ACPI: FPDT 0x00000000BB5A8000 000044 (v01 LENOVO TP-N22   00001310 PTEC 00000002)
[    0.001762] ACPI: BGRT 0x00000000BB5A7000 000038 (v01 LENOVO TP-N22   00001310 PTEC 00000002)
[    0.001763] ACPI: UEFI 0x00000000BB543000 00013E (v01 LENOVO TP-N22   00001310 PTEC 00000002)
[    0.001768] ACPI: Local APIC address 0xfee00000
[    0.001775] No NUMA configuration found
[    0.001775] Faking a node at [mem 0x0000000000000000-0x000000043e7fffff]
[    0.001778] NODE_DATA(0) allocated [mem 0x43e7fa000-0x43e7fbfff]
[    0.001781] Reserving 160MB of memory at 2608MB for crashkernel (System RAM: 16263MB)
[    0.001791] Zone ranges:
[    0.001792]   DMA      [mem 0x0000000000001000-0x0000000000ffffff]
[    0.001793]   DMA32    [mem 0x0000000001000000-0x00000000ffffffff]
[    0.001794]   Normal   [mem 0x0000000100000000-0x000000043e7fffff]
[    0.001794] Movable zone start for each node
[    0.001795] Early memory node ranges
[    0.001795]   node   0: [mem 0x0000000000001000-0x0000000000057fff]
[    0.001796]   node   0: [mem 0x0000000000059000-0x000000000009cfff]
[    0.001797]   node   0: [mem 0x0000000000100000-0x000000003fffffff]
[    0.001797]   node   0: [mem 0x0000000040400000-0x000000007b4b2fff]
[    0.001798]   node   0: [mem 0x000000007b4b5000-0x000000007b51cfff]
[    0.001798]   node   0: [mem 0x000000007b51e000-0x00000000ad334fff]
[    0.001799]   node   0: [mem 0x00000000ad337000-0x00000000ba3e9fff]
[    0.001799]   node   0: [mem 0x00000000bb5ff000-0x00000000bb5fffff]
[    0.001800]   node   0: [mem 0x0000000100000000-0x000000043e7fffff]
[    0.001961] Zeroed struct page in unavailable ranges: 30847 pages
[    0.001962] Initmem setup node 0 [mem 0x0000000000001000-0x000000043e7fffff]
[    0.001964] On node 0 totalpages: 4163457
[    0.001965]   DMA zone: 64 pages used for memmap
[    0.001965]   DMA zone: 155 pages reserved
[    0.001966]   DMA zone: 3995 pages, LIFO batch:0
[    0.001982]   DMA32 zone: 11840 pages used for memmap
[    0.001983]   DMA32 zone: 757734 pages, LIFO batch:63
[    0.005402]   Normal zone: 53152 pages used for memmap
[    0.005402]   Normal zone: 3401728 pages, LIFO batch:63
[    0.020786] Reserving Intel graphics memory at [mem 0xbd800000-0xbf7fffff]
[    0.020959] ACPI: PM-Timer IO Port: 0x1808
[    0.020960] ACPI: Local APIC address 0xfee00000
[    0.020964] ACPI: LAPIC_NMI (acpi_id[0x01] high edge lint[0x1])
[    0.020965] ACPI: LAPIC_NMI (acpi_id[0x02] high edge lint[0x1])
[    0.020965] ACPI: LAPIC_NMI (acpi_id[0x03] high edge lint[0x1])
[    0.020966] ACPI: LAPIC_NMI (acpi_id[0x04] high edge lint[0x1])
[    0.020966] ACPI: LAPIC_NMI (acpi_id[0x05] high edge lint[0x1])
[    0.020966] ACPI: LAPIC_NMI (acpi_id[0x06] high edge lint[0x1])
[    0.020967] ACPI: LAPIC_NMI (acpi_id[0x07] high edge lint[0x1])
[    0.020967] ACPI: LAPIC_NMI (acpi_id[0x08] high edge lint[0x1])
[    0.020968] ACPI: LAPIC_NMI (acpi_id[0x09] high edge lint[0x1])
[    0.020968] ACPI: LAPIC_NMI (acpi_id[0x0a] high edge lint[0x1])
[    0.020969] ACPI: LAPIC_NMI (acpi_id[0x0b] high edge lint[0x1])
[    0.020969] ACPI: LAPIC_NMI (acpi_id[0x0c] high edge lint[0x1])
[    0.020969] ACPI: LAPIC_NMI (acpi_id[0x0d] high edge lint[0x1])
[    0.020970] ACPI: LAPIC_NMI (acpi_id[0x0e] high edge lint[0x1])
[    0.020970] ACPI: LAPIC_NMI (acpi_id[0x0f] high edge lint[0x1])
[    0.020971] ACPI: LAPIC_NMI (acpi_id[0x10] high edge lint[0x1])
[    0.020997] IOAPIC[0]: apic_id 2, version 32, address 0xfec00000, GSI 0-119
[    0.020998] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
[    0.020999] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
[    0.021000] ACPI: IRQ0 used by override.
[    0.021000] ACPI: IRQ9 used by override.
[    0.021001] Using ACPI (MADT) for SMP configuration information
[    0.021002] ACPI: HPET id: 0x8086a201 base: 0xfed00000
[    0.021005] e820: update [mem 0xb07d0000-0xb0860fff] usable ==> reserved
[    0.021011] TSC deadline timer available
[    0.021011] smpboot: Allowing 8 CPUs, 0 hotplug CPUs
[    0.021023] [mem 0xbf800000-0xf7ffffff] available for PCI devices
[    0.021023] Booting paravirtualized kernel on bare hardware
[    0.021025] clocksource: refined-jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 1910969940391419 ns
[    0.023365] setup_percpu: NR_CPUS:8 nr_cpumask_bits:8 nr_cpu_ids:8 nr_node_ids:1
[    0.023470] percpu: Embedded 50 pages/cpu s167936 r8192 d28672 u262144
[    0.023473] pcpu-alloc: s167936 r8192 d28672 u262144 alloc=1*2097152
[    0.023474] pcpu-alloc: [0] 0 1 2 3 4 5 6 7 
[    0.023484] Built 1 zonelists, mobility grouping on.  Total pages: 4098246
[    0.023485] Policy zone: Normal
[    0.023486] Kernel command line: ramoops.mem_address=0x20000000 ramoops.mem_size=0x400000 hung_task_panic=1 softlockup_panic=1 panic=6 root=/dev/nvme0n1p9 ro rd.lvm.lv=rhel/swap LANG=zh_CN.UTF-8 audit=0 selinux=0 no_console_suspend crashkernel=160M printk.devkmsg=off usbcore.autosuspend=-1
[    0.023516] audit: disabled (until reboot)
[    0.024068] Dentry cache hash table entries: 2097152 (order: 12, 16777216 bytes, linear)
[    0.024322] Inode-cache hash table entries: 1048576 (order: 11, 8388608 bytes, linear)
[    0.024365] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.049642] Memory: 16109860K/16653828K available (10243K kernel code, 1030K rwdata, 2484K rodata, 1224K init, 2960K bss, 543968K reserved, 0K cma-reserved)
[    0.049673] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=8, Nodes=1
[    0.049679] Kernel/User page tables isolation: enabled
[    0.049688] ftrace: allocating 29741 entries in 117 pages
[    0.057842] ftrace: allocated 117 pages with 5 groups
[    0.057893] rcu: Hierarchical RCU implementation.
[    0.057894] 	Rude variant of Tasks RCU enabled.
[    0.057895] rcu: RCU calculated value of scheduler-enlistment delay is 100 jiffies.
[    0.057971] NR_IRQS: 4352, nr_irqs: 2048, preallocated irqs: 16
[    0.058112] rcu: 	Offload RCU callbacks from CPUs: (none).
[    0.058245] random: get_random_bytes called from start_kernel+0x5b1/0x772 with crng_init=0
[    0.058260] Console: colour dummy device 80x25
[    0.058409] printk: console [tty0] enabled
[    0.058418] ACPI: Core revision 20200528
[    0.058701] clocksource: hpet: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 79635855245 ns
[    0.058769] APIC: Switch to symmetric I/O mode setup
[    0.060036] x2apic: IRQ remapping doesn't support X2APIC mode
[    0.064358] ..TIMER: vector=0x30 apic1=0 pin1=2 apic2=-1 pin2=-1
[    0.068800] clocksource: tsc-early: mask: 0xffffffffffffffff max_cycles: 0x1e44fb6c2ab, max_idle_ns: 440795206594 ns
[    0.068803] Calibrating delay loop (skipped), value calculated using timer frequency.. 4199.88 BogoMIPS (lpj=2099944)
[    0.068806] pid_max: default: 32768 minimum: 301
[    0.068842] LSM: Security Framework initializing
[    0.068874] Mount-cache hash table entries: 32768 (order: 6, 262144 bytes, linear)
[    0.068900] Mountpoint-cache hash table entries: 32768 (order: 6, 262144 bytes, linear)
[    0.069032] mce: CPU0: Thermal monitoring enabled (TM1)
[    0.069046] process: using mwait in idle threads
[    0.069048] Last level iTLB entries: 4KB 64, 2MB 8, 4MB 8
[    0.069050] Last level dTLB entries: 4KB 64, 2MB 0, 4MB 0, 1GB 4
[    0.069051] Spectre V1 : Mitigation: usercopy/swapgs barriers and __user pointer sanitization
[    0.069053] Spectre V2 : Mitigation: Full generic retpoline
[    0.069054] Spectre V2 : Spectre v2 / SpectreRSB mitigation: Filling RSB on context switch
[    0.069055] Spectre V2 : Enabling Restricted Speculation for firmware calls
[    0.069057] Spectre V2 : mitigation: Enabling conditional Indirect Branch Prediction Barrier
[    0.069058] Spectre V2 : User space: Mitigation: STIBP via seccomp and prctl
[    0.069060] Speculative Store Bypass: Mitigation: Speculative Store Bypass disabled via prctl and seccomp
[    0.069062] TAA: Mitigation: Clear CPU buffers
[    0.069063] SRBDS: Vulnerable: No microcode
[    0.069063] MDS: Mitigation: Clear CPU buffers
[    0.069180] Freeing SMP alternatives memory: 28K
[    0.069223] smpboot: CPU0: Intel(R) Core(TM) i7-8650U CPU @ 1.90GHz (family: 0x6, model: 0x8e, stepping: 0xa)
[    0.069278] Performance Events: PEBS fmt3+, Skylake events, 32-deep LBR, full-width counters, Intel PMU driver.
[    0.069284] ... version:                4
[    0.069285] ... bit width:              48
[    0.069286] ... generic registers:      4
[    0.069287] ... value mask:             0000ffffffffffff
[    0.069288] ... max period:             00007fffffffffff
[    0.069289] ... fixed-purpose events:   3
[    0.069290] ... event mask:             000000070000000f
[    0.069314] rcu: Hierarchical SRCU implementation.
[    0.069803] NMI watchdog: Enabled. Permanently consumes one hw-PMU counter.
[    0.069803] smp: Bringing up secondary CPUs ...
[    0.069803] x86: Booting SMP configuration:
[    0.069803] .... node  #0, CPUs:      #1 #2 #3 #4
[    0.071250] MDS CPU bug present and SMT on, data leak possible. See https://www.kernel.org/doc/html/latest/admin-guide/hw-vuln/mds.html for more details.
[    0.071250] TAA CPU bug present and SMT on, data leak possible. See https://www.kernel.org/doc/html/latest/admin-guide/hw-vuln/tsx_async_abort.html for more details.
[    0.071250]  #5 #6 #7
[    0.072162] smp: Brought up 1 node, 8 CPUs
[    0.072162] smpboot: Max logical packages: 1
[    0.072162] smpboot: Total of 8 processors activated (33599.10 BogoMIPS)
[    0.072162] devtmpfs: initialized
[    0.072818] PM: Registering ACPI NVS region [mem 0xad335000-0xad335fff] (4096 bytes)
[    0.072820] PM: Registering ACPI NVS region [mem 0xbb536000-0xbb599fff] (409600 bytes)
[    0.072851] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 1911260446275000 ns
[    0.072851] futex hash table entries: 2048 (order: 5, 131072 bytes, linear)
[    0.072862] thermal_sys: Registered thermal governor 'fair_share'
[    0.072889] NET: Registered protocol family 16
[    0.072941] DMA: preallocated 4096 KiB GFP_KERNEL pool for atomic allocations
[    0.072946] DMA: preallocated 4096 KiB GFP_KERNEL|GFP_DMA pool for atomic allocations
[    0.072952] DMA: preallocated 4096 KiB GFP_KERNEL|GFP_DMA32 pool for atomic allocations
[    0.072959] ramoops: using module parameters
[    0.074125] printk: console [ramoops-1] enabled
[    0.074135] pstore: Registered ramoops as persistent store backend
[    0.074135] ramoops: using 0x400000@0x20000000, ecc: 0
[    0.074135] cpuidle: using governor ladder
[    0.074135] Simple Boot Flag at 0x47 set to 0x1
[    0.074135] ACPI FADT declares the system doesn't support PCIe ASPM, so disable it
[    0.074135] ACPI: bus type PCI registered
[    0.074135] PCI: MMCONFIG for domain 0000 [bus 00-3f] at [mem 0xf8000000-0xfbffffff] (base 0xf8000000)
[    0.074135] PCI: MMCONFIG at [mem 0xf8000000-0xfbffffff] reserved in E820
[    0.074135] PCI: Using configuration type 1 for base access
[    0.234910] ACPI: Added _OSI(Module Device)
[    0.234910] ACPI: Added _OSI(Processor Device)
[    0.234910] ACPI: Added _OSI(3.0 _SCP Extensions)
[    0.234910] ACPI: Added _OSI(Processor Aggregator Device)
[    0.234910] ACPI: Added _OSI(Linux-Dell-Video)
[    0.234910] ACPI: Added _OSI(Linux-Lenovo-NV-HDMI-Audio)
[    0.234910] ACPI: Added _OSI(Linux-HPI-Hybrid-Graphics)
[    0.258697] ACPI: 12 ACPI AML tables successfully acquired and loaded
[    0.259375] ACPI: EC: EC started
[    0.259376] ACPI: EC: interrupt blocked
[    0.260428] ACPI: EC: EC_CMD/EC_SC=0x66, EC_DATA=0x62
[    0.260430] ACPI: EC: Boot ECDT EC used to handle transactions
[    0.261354] ACPI: [Firmware Bug]: BIOS _OSI(Linux) query ignored
[    0.266910] ACPI: Dynamic OEM Table Load:
[    0.266921] ACPI: SSDT 0xFFFF88842C3CD000 0005EE (v02 PmRef  Cpu0Ist  00003000 INTL 20160527)
[    0.267682] ACPI: \_PR_.PR00: _OSC native thermal LVT Acked
[    0.268203] ACPI: Dynamic OEM Table Load:
[    0.268210] ACPI: SSDT 0xFFFF88842BA58400 0003FF (v02 PmRef  Cpu0Cst  00003001 INTL 20160527)
[    0.268959] ACPI: Dynamic OEM Table Load:
[    0.268965] ACPI: SSDT 0xFFFF88842BA41480 0000BA (v02 PmRef  Cpu0Hwp  00003000 INTL 20160527)
[    0.269663] ACPI: Dynamic OEM Table Load:
[    0.269668] ACPI: SSDT 0xFFFF88842C3CD800 000628 (v02 PmRef  HwpLvt   00003000 INTL 20160527)
[    0.270545] ACPI: Dynamic OEM Table Load:
[    0.270552] ACPI: SSDT 0xFFFF88842BAB0000 000D14 (v02 PmRef  ApIst    00003000 INTL 20160527)
[    0.271593] ACPI: Dynamic OEM Table Load:
[    0.271599] ACPI: SSDT 0xFFFF88842BA58800 000317 (v02 PmRef  ApHwp    00003000 INTL 20160527)
[    0.272361] ACPI: Dynamic OEM Table Load:
[    0.272366] ACPI: SSDT 0xFFFF88842BA58C00 00030A (v02 PmRef  ApCst    00003000 INTL 20160527)
[    0.274300] ACPI: Interpreter enabled
[    0.274322] ACPI: (supports S0 S3 S5)
[    0.274324] ACPI: Using IOAPIC for interrupt routing
[    0.274344] PCI: Using host bridge windows from ACPI; if necessary, use "pci=nocrs" and report a bug
[    0.274666] ACPI: Enabled 8 GPEs in block 00 to 7F
[    0.276464] ACPI: Power Resource [PUBS] (on)
[    0.308825] ACPI: PCI Root Bridge [PCI0] (domain 0000 [bus 00-3e])
[    0.308832] acpi PNP0A08:00: _OSC: OS supports [ExtendedConfig Segments MSI HPX-Type3]
[    0.308888] acpi PNP0A08:00: _OSC: not requesting OS control; OS requires [ExtendedConfig ASPM ClockPM MSI]
[    0.309086] PCI host bridge to bus 0000:00
[    0.309090] pci_bus 0000:00: root bus resource [io  0x0000-0x0cf7 window]
[    0.309094] pci_bus 0000:00: root bus resource [io  0x0d00-0xffff window]
[    0.309097] pci_bus 0000:00: root bus resource [mem 0x000a0000-0x000bffff window]
[    0.309101] pci_bus 0000:00: root bus resource [mem 0x000c0000-0x000c3fff window]
[    0.309104] pci_bus 0000:00: root bus resource [mem 0x000c4000-0x000c7fff window]
[    0.309108] pci_bus 0000:00: root bus resource [mem 0x000c8000-0x000cbfff window]
[    0.309111] pci_bus 0000:00: root bus resource [mem 0x000cc000-0x000cffff window]
[    0.309115] pci_bus 0000:00: root bus resource [mem 0x000d0000-0x000d3fff window]
[    0.309118] pci_bus 0000:00: root bus resource [mem 0x000d4000-0x000d7fff window]
[    0.309121] pci_bus 0000:00: root bus resource [mem 0x000d8000-0x000dbfff window]
[    0.309125] pci_bus 0000:00: root bus resource [mem 0x000dc000-0x000dffff window]
[    0.309128] pci_bus 0000:00: root bus resource [mem 0x000e0000-0x000e3fff window]
[    0.309132] pci_bus 0000:00: root bus resource [mem 0x000e4000-0x000e7fff window]
[    0.309135] pci_bus 0000:00: root bus resource [mem 0x000e8000-0x000ebfff window]
[    0.309139] pci_bus 0000:00: root bus resource [mem 0x000ec000-0x000effff window]
[    0.309142] pci_bus 0000:00: root bus resource [mem 0x000f0000-0x000fffff window]
[    0.309146] pci_bus 0000:00: root bus resource [mem 0xbf800000-0xf7ffffff window]
[    0.309149] pci_bus 0000:00: root bus resource [mem 0xfd000000-0xfe7fffff window]
[    0.309153] pci_bus 0000:00: root bus resource [bus 00-3e]
[    0.309164] pci 0000:00:00.0: [8086:5914] type 00 class 0x060000
[    0.309758] pci 0000:00:02.0: [8086:5917] type 00 class 0x030000
[    0.309773] pci 0000:00:02.0: reg 0x10: [mem 0xe0000000-0xe0ffffff 64bit]
[    0.309781] pci 0000:00:02.0: reg 0x18: [mem 0xc0000000-0xdfffffff 64bit pref]
[    0.309788] pci 0000:00:02.0: reg 0x20: [io  0xe000-0xe03f]
[    0.309806] pci 0000:00:02.0: BAR 2: assigned to efifb
[    0.310405] pci 0000:00:04.0: [8086:1903] type 00 class 0x118000
[    0.310421] pci 0000:00:04.0: reg 0x10: [mem 0xe1240000-0xe1247fff 64bit]
[    0.311080] pci 0000:00:08.0: [8086:1911] type 00 class 0x088000
[    0.311097] pci 0000:00:08.0: reg 0x10: [mem 0xe1250000-0xe1250fff 64bit]
[    0.311720] pci 0000:00:14.0: [8086:9d2f] type 00 class 0x0c0330
[    0.311745] pci 0000:00:14.0: reg 0x10: [mem 0xe1220000-0xe122ffff 64bit]
[    0.311814] pci 0000:00:14.0: PME# supported from D3hot D3cold
[    0.312481] pci 0000:00:14.2: [8086:9d31] type 00 class 0x118000
[    0.312505] pci 0000:00:14.2: reg 0x10: [mem 0xe1251000-0xe1251fff 64bit]
[    0.313229] pci 0000:00:15.0: [8086:9d60] type 00 class 0x118000
[    0.313495] pci 0000:00:15.0: reg 0x10: [mem 0xe1252000-0xe1252fff 64bit]
[    0.314891] pci 0000:00:16.0: [8086:9d3a] type 00 class 0x078000
[    0.314919] pci 0000:00:16.0: reg 0x10: [mem 0xe1253000-0xe1253fff 64bit]
[    0.314992] pci 0000:00:16.0: PME# supported from D3hot
[    0.315564] pci 0000:00:1c.0: [8086:9d10] type 01 class 0x060400
[    0.315636] pci 0000:00:1c.0: PME# supported from D0 D3hot D3cold
[    0.316190] pci 0000:00:1c.4: [8086:9d14] type 01 class 0x060400
[    0.316261] pci 0000:00:1c.4: PME# supported from D0 D3hot D3cold
[    0.316810] pci 0000:00:1c.6: [8086:9d16] type 01 class 0x060400
[    0.316890] pci 0000:00:1c.6: PME# supported from D0 D3hot D3cold
[    0.317435] pci 0000:00:1d.0: [8086:9d18] type 01 class 0x060400
[    0.317507] pci 0000:00:1d.0: PME# supported from D0 D3hot D3cold
[    0.318082] pci 0000:00:1f.0: [8086:9d4e] type 00 class 0x060100
[    0.318722] pci 0000:00:1f.2: [8086:9d21] type 00 class 0x058000
[    0.318738] pci 0000:00:1f.2: reg 0x10: [mem 0xe124c000-0xe124ffff]
[    0.319260] pci 0000:00:1f.3: [8086:9d71] type 00 class 0x040300
[    0.319290] pci 0000:00:1f.3: reg 0x10: [mem 0xe1248000-0xe124bfff 64bit]
[    0.319322] pci 0000:00:1f.3: reg 0x20: [mem 0xe1230000-0xe123ffff 64bit]
[    0.319370] pci 0000:00:1f.3: PME# supported from D3hot D3cold
[    0.319871] pci 0000:00:1f.4: [8086:9d23] type 00 class 0x0c0500
[    0.319934] pci 0000:00:1f.4: reg 0x10: [mem 0xe1254000-0xe12540ff 64bit]
[    0.320007] pci 0000:00:1f.4: reg 0x20: [io  0xefa0-0xefbf]
[    0.320552] pci 0000:00:1f.6: [8086:15d7] type 00 class 0x020000
[    0.320576] pci 0000:00:1f.6: reg 0x10: [mem 0xe1200000-0xe121ffff]
[    0.320664] pci 0000:00:1f.6: PME# supported from D0 D3hot D3cold
[    0.321165] pci 0000:00:1c.0: PCI bridge to [bus 01]
[    0.321169] pci 0000:00:1c.0:   bridge window [io  0x2000-0x2fff]
[    0.321173] pci 0000:00:1c.0:   bridge window [mem 0xbf800000-0xbf9fffff]
[    0.321179] pci 0000:00:1c.0:   bridge window [mem 0xbfa00000-0xbfbfffff 64bit pref]
[    0.321216] pci 0000:00:1c.4: PCI bridge to [bus 04-3c]
[    0.321583] pci 0000:3d:00.0: [8086:24fd] type 00 class 0x028000
[    0.321686] pci 0000:3d:00.0: reg 0x10: [mem 0xe1100000-0xe1101fff 64bit]
[    0.322020] pci 0000:3d:00.0: PME# supported from D0 D3hot D3cold
[    0.322179] pci 0000:00:1c.6: PCI bridge to [bus 3d]
[    0.322186] pci 0000:00:1c.6:   bridge window [mem 0xe1100000-0xe11fffff]
[    0.322224] pci 0000:3e:00.0: [144d:a808] type 00 class 0x010802
[    0.322254] pci 0000:3e:00.0: reg 0x10: [mem 0xe1000000-0xe1003fff 64bit]
[    0.322401] pci 0000:00:1d.0: PCI bridge to [bus 3e]
[    0.322406] pci 0000:00:1d.0:   bridge window [mem 0xe1000000-0xe10fffff]
[    0.323696] ACPI: PCI Interrupt Link [LNKA] (IRQs 3 4 5 6 10 *11 12 14 15), disabled.
[    0.323735] ACPI: PCI Interrupt Link [LNKB] (IRQs 3 4 5 6 *10 11 12 14 15), disabled.
[    0.323770] ACPI: PCI Interrupt Link [LNKC] (IRQs 3 4 5 6 10 *11 12 14 15), disabled.
[    0.323807] ACPI: PCI Interrupt Link [LNKD] (IRQs 3 4 5 6 10 *11 12 14 15), disabled.
[    0.323856] ACPI: PCI Interrupt Link [LNKE] (IRQs 3 4 5 6 10 *11 12 14 15), disabled.
[    0.323889] ACPI: PCI Interrupt Link [LNKF] (IRQs 3 4 5 6 10 *11 12 14 15), disabled.
[    0.323922] ACPI: PCI Interrupt Link [LNKG] (IRQs 3 4 5 6 10 *11 12 14 15), disabled.
[    0.323956] ACPI: PCI Interrupt Link [LNKH] (IRQs 3 4 5 6 10 *11 12 14 15), disabled.
[    0.324178] ACPI: EC: interrupt unblocked
[    0.324180] ACPI: EC: event unblocked
[    0.324193] ACPI: EC: EC_CMD/EC_SC=0x66, EC_DATA=0x62
[    0.324195] ACPI: EC: GPE=0x16
[    0.324197] ACPI: \_SB_.PCI0.LPCB.EC__: Boot ECDT EC initialization complete
[    0.324200] ACPI: \_SB_.PCI0.LPCB.EC__: EC: Used to handle transactions and events
[    0.324240] pci 0000:00:02.0: vgaarb: setting as boot VGA device
[    0.324240] pci 0000:00:02.0: vgaarb: VGA device added: decodes=io+mem,owns=io+mem,locks=none
[    0.324240] pci 0000:00:02.0: vgaarb: bridge control possible
[    0.324240] vgaarb: loaded
[    0.324240] SCSI subsystem initialized
[    0.324240] libata version 3.00 loaded.
[    0.324240] ACPI: bus type USB registered
[    0.324240] usbcore: registered new interface driver usbfs
[    0.324240] usbcore: registered new interface driver hub
[    0.324240] usbcore: registered new device driver usb
[    0.324240] videodev: Linux video capture interface: v2.00
[    0.324240] Registered efivars operations
[    0.324240] PCI: Using ACPI for IRQ routing
[    0.326401] PCI: pci_cache_line_size set to 64 bytes
[    0.326815] e820: reserve RAM buffer [mem 0x00050270-0x0005ffff]
[    0.326816] e820: reserve RAM buffer [mem 0x00058000-0x0005ffff]
[    0.326816] e820: reserve RAM buffer [mem 0x0009d000-0x0009ffff]
[    0.326817] e820: reserve RAM buffer [mem 0x7b4b3000-0x7bffffff]
[    0.326817] e820: reserve RAM buffer [mem 0x7b51d000-0x7bffffff]
[    0.326818] e820: reserve RAM buffer [mem 0xad335000-0xafffffff]
[    0.326818] e820: reserve RAM buffer [mem 0xb07d0000-0xb3ffffff]
[    0.326819] e820: reserve RAM buffer [mem 0xba3ea000-0xbbffffff]
[    0.326819] e820: reserve RAM buffer [mem 0xbb600000-0xbbffffff]
[    0.326820] e820: reserve RAM buffer [mem 0x43e800000-0x43fffffff]
[    0.326837] hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0, 0, 0, 0, 0, 0
[    0.326840] hpet0: 8 comparators, 64-bit 24.000000 MHz counter
[    0.328813] clocksource: Switched to clocksource tsc-early
[    0.333518] pnp: PnP ACPI init
[    0.333555] system 00:00: [mem 0x40000000-0x403fffff] has been reserved
[    0.333560] system 00:00: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.333617] system 00:01: [mem 0xfd000000-0xfdabffff] has been reserved
[    0.333620] system 00:01: [mem 0xfdad0000-0xfdadffff] has been reserved
[    0.333623] system 00:01: [mem 0xfdb00000-0xfdffffff] has been reserved
[    0.333625] system 00:01: [mem 0xfe000000-0xfe01ffff] could not be reserved
[    0.333627] system 00:01: [mem 0xfe036000-0xfe03bfff] has been reserved
[    0.333630] system 00:01: [mem 0xfe03d000-0xfe3fffff] has been reserved
[    0.333632] system 00:01: [mem 0xfe410000-0xfe7fffff] has been reserved
[    0.333636] system 00:01: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.333779] system 00:02: [io  0xff00-0xfffe] has been reserved
[    0.333783] system 00:02: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.334085] system 00:03: [io  0x0680-0x069f] has been reserved
[    0.334087] system 00:03: [io  0xffff] has been reserved
[    0.334090] system 00:03: [io  0xffff] has been reserved
[    0.334092] system 00:03: [io  0xffff] has been reserved
[    0.334094] system 00:03: [io  0x1800-0x18fe] has been reserved
[    0.334096] system 00:03: [io  0x164e-0x164f] has been reserved
[    0.334099] system 00:03: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.334145] pnp 00:04: Plug and Play ACPI device, IDs PNP0b00 (active)
[    0.334164] system 00:05: [io  0x1854-0x1857] has been reserved
[    0.334168] system 00:05: Plug and Play ACPI device, IDs INT3f0d PNP0c02 (active)
[    0.334176] pnp 00:06: Plug and Play ACPI device, IDs LEN0071 PNP0303 (active)
[    0.334184] pnp 00:07: Plug and Play ACPI device, IDs LEN008f PNP0f13 (active)
[    0.334231] system 00:08: [io  0x1800-0x189f] could not be reserved
[    0.334234] system 00:08: [io  0x0800-0x087f] has been reserved
[    0.334236] system 00:08: [io  0x0880-0x08ff] has been reserved
[    0.334238] system 00:08: [io  0x0900-0x097f] has been reserved
[    0.334241] system 00:08: [io  0x0980-0x09ff] has been reserved
[    0.334243] system 00:08: [io  0x0a00-0x0a7f] has been reserved
[    0.334245] system 00:08: [io  0x0a80-0x0aff] has been reserved
[    0.334247] system 00:08: [io  0x0b00-0x0b7f] has been reserved
[    0.334249] system 00:08: [io  0x0b80-0x0bff] has been reserved
[    0.334251] system 00:08: [io  0x15e0-0x15ef] has been reserved
[    0.334254] system 00:08: [io  0x1600-0x167f] could not be reserved
[    0.334256] system 00:08: [io  0x1640-0x165f] could not be reserved
[    0.334258] system 00:08: [mem 0xf8000000-0xfbffffff] has been reserved
[    0.334261] system 00:08: [mem 0xfed10000-0xfed13fff] has been reserved
[    0.334263] system 00:08: [mem 0xfed18000-0xfed18fff] has been reserved
[    0.334265] system 00:08: [mem 0xfed19000-0xfed19fff] has been reserved
[    0.334268] system 00:08: [mem 0xfeb00000-0xfebfffff] has been reserved
[    0.334270] system 00:08: [mem 0xfed20000-0xfed3ffff] has been reserved
[    0.334272] system 00:08: [mem 0xfed90000-0xfed93fff] has been reserved
[    0.334275] system 00:08: [mem 0xf7fe0000-0xf7ffffff] has been reserved
[    0.334278] system 00:08: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.334873] system 00:09: [mem 0xfdaf0000-0xfdafffff] has been reserved
[    0.334876] system 00:09: [mem 0xfdae0000-0xfdaeffff] has been reserved
[    0.334878] system 00:09: [mem 0xfdac0000-0xfdacffff] has been reserved
[    0.334882] system 00:09: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.335298] system 00:0a: [mem 0xfed10000-0xfed17fff] could not be reserved
[    0.335301] system 00:0a: [mem 0xfed18000-0xfed18fff] has been reserved
[    0.335303] system 00:0a: [mem 0xfed19000-0xfed19fff] has been reserved
[    0.335305] system 00:0a: [mem 0xf8000000-0xfbffffff] has been reserved
[    0.335308] system 00:0a: [mem 0xfed20000-0xfed3ffff] has been reserved
[    0.335310] system 00:0a: [mem 0xfed90000-0xfed93fff] has been reserved
[    0.335312] system 00:0a: [mem 0xfed45000-0xfed8ffff] has been reserved
[    0.335315] system 00:0a: [mem 0xff000000-0xffffffff] has been reserved
[    0.335317] system 00:0a: [mem 0xfee00000-0xfeefffff] has been reserved
[    0.335319] system 00:0a: [mem 0xf7fe0000-0xf7ffffff] has been reserved
[    0.335323] system 00:0a: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.335462] system 00:0b: [mem 0x00000000-0x0009ffff] could not be reserved
[    0.335465] system 00:0b: [mem 0x000f0000-0x000fffff] could not be reserved
[    0.335467] system 00:0b: [mem 0x00100000-0xbf7fffff] could not be reserved
[    0.335470] system 00:0b: [mem 0xfec00000-0xfed3ffff] could not be reserved
[    0.335472] system 00:0b: [mem 0xfed4c000-0xffffffff] could not be reserved
[    0.335476] system 00:0b: Plug and Play ACPI device, IDs PNP0c01 (active)
[    0.335521] pnp: PnP ACPI: found 12 devices
[    0.340600] clocksource: acpi_pm: mask: 0xffffff max_cycles: 0xffffff, max_idle_ns: 2085701024 ns
[    0.340618] NET: Registered protocol family 2
[    0.340679] tcp_listen_portaddr_hash hash table entries: 8192 (order: 5, 131072 bytes, linear)
[    0.340696] TCP established hash table entries: 131072 (order: 8, 1048576 bytes, linear)
[    0.340808] TCP bind hash table entries: 65536 (order: 8, 1048576 bytes, linear)
[    0.340925] TCP: Hash tables configured (established 131072 bind 65536)
[    0.340945] UDP hash table entries: 8192 (order: 6, 262144 bytes, linear)
[    0.340974] UDP-Lite hash table entries: 8192 (order: 6, 262144 bytes, linear)
[    0.341024] NET: Registered protocol family 1
[    0.341032] pci 0000:00:1c.0: PCI bridge to [bus 01]
[    0.341037] pci 0000:00:1c.0:   bridge window [io  0x2000-0x2fff]
[    0.341041] pci 0000:00:1c.0:   bridge window [mem 0xbf800000-0xbf9fffff]
[    0.341045] pci 0000:00:1c.0:   bridge window [mem 0xbfa00000-0xbfbfffff 64bit pref]
[    0.341050] pci 0000:00:1c.4: PCI bridge to [bus 04-3c]
[    0.341060] pci 0000:00:1c.6: PCI bridge to [bus 3d]
[    0.341065] pci 0000:00:1c.6:   bridge window [mem 0xe1100000-0xe11fffff]
[    0.341071] pci 0000:00:1d.0: PCI bridge to [bus 3e]
[    0.341075] pci 0000:00:1d.0:   bridge window [mem 0xe1000000-0xe10fffff]
[    0.341081] pci_bus 0000:00: resource 4 [io  0x0000-0x0cf7 window]
[    0.341084] pci_bus 0000:00: resource 5 [io  0x0d00-0xffff window]
[    0.341086] pci_bus 0000:00: resource 6 [mem 0x000a0000-0x000bffff window]
[    0.341088] pci_bus 0000:00: resource 7 [mem 0x000c0000-0x000c3fff window]
[    0.341091] pci_bus 0000:00: resource 8 [mem 0x000c4000-0x000c7fff window]
[    0.341093] pci_bus 0000:00: resource 9 [mem 0x000c8000-0x000cbfff window]
[    0.341095] pci_bus 0000:00: resource 10 [mem 0x000cc000-0x000cffff window]
[    0.341097] pci_bus 0000:00: resource 11 [mem 0x000d0000-0x000d3fff window]
[    0.341100] pci_bus 0000:00: resource 12 [mem 0x000d4000-0x000d7fff window]
[    0.341102] pci_bus 0000:00: resource 13 [mem 0x000d8000-0x000dbfff window]
[    0.341104] pci_bus 0000:00: resource 14 [mem 0x000dc000-0x000dffff window]
[    0.341106] pci_bus 0000:00: resource 15 [mem 0x000e0000-0x000e3fff window]
[    0.341109] pci_bus 0000:00: resource 16 [mem 0x000e4000-0x000e7fff window]
[    0.341111] pci_bus 0000:00: resource 17 [mem 0x000e8000-0x000ebfff window]
[    0.341113] pci_bus 0000:00: resource 18 [mem 0x000ec000-0x000effff window]
[    0.341115] pci_bus 0000:00: resource 19 [mem 0x000f0000-0x000fffff window]
[    0.341118] pci_bus 0000:00: resource 20 [mem 0xbf800000-0xf7ffffff window]
[    0.341120] pci_bus 0000:00: resource 21 [mem 0xfd000000-0xfe7fffff window]
[    0.341122] pci_bus 0000:01: resource 0 [io  0x2000-0x2fff]
[    0.341124] pci_bus 0000:01: resource 1 [mem 0xbf800000-0xbf9fffff]
[    0.341127] pci_bus 0000:01: resource 2 [mem 0xbfa00000-0xbfbfffff 64bit pref]
[    0.341129] pci_bus 0000:3d: resource 1 [mem 0xe1100000-0xe11fffff]
[    0.341132] pci_bus 0000:3e: resource 1 [mem 0xe1000000-0xe10fffff]
[    0.341195] pci 0000:00:02.0: Video device with shadowed ROM at [mem 0x000c0000-0x000dffff]
[    0.341673] PCI: CLS 0 bytes, default 64
[    0.341691] PCI-DMA: Using software bounce buffering for IO (SWIOTLB)
[    0.341694] software IO TLB: mapped [mem 0xb63ea000-0xba3ea000] (64MB)
[    0.341729] resource sanity check: requesting [mem 0xfed10000-0xfed15fff], which spans more than pnp 00:08 [mem 0xfed10000-0xfed13fff]
[    0.341734] caller snb_uncore_imc_init_box+0x6c/0xb0 mapping multiple BARs
[    0.342043] simple-framebuffer simple-framebuffer.0: framebuffer at 0xc0000000, 0x7e9000 bytes, mapped to 0x000000004ff2874b
[    0.342047] simple-framebuffer simple-framebuffer.0: format=a8r8g8b8, mode=1920x1080x32, linelength=7680
[    0.475073] Console: switching to colour frame buffer device 240x67
[    0.608186] simple-framebuffer simple-framebuffer.0: fb0: simplefb registered!
[    0.608391] Initialise system trusted keyrings
[    0.609324] workingset: timestamp_bits=60 max_order=22 bucket_order=0
[    0.610567] 9p: Installing v9fs 9p2000 file system support
[    0.616822] Key type asymmetric registered
[    0.617209] Asymmetric key parser 'x509' registered
[    0.617668] Key type pkcs7_test registered
[    0.618058] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 249)
[    0.618772] io scheduler bfq registered
[    0.619875] ACPI: AC Adapter [AC] (on-line)
[    0.620314] input: Sleep Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0E:00/input/input0
[    0.621116] ACPI: Sleep Button [SLPB]
[    0.621475] input: Lid Switch as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0D:00/input/input1
[    0.622255] ACPI: Lid Switch [LID]
[    0.622588] input: Power Button as /devices/LNXSYSTM:00/LNXPWRBN:00/input/input2
[    0.623294] ACPI: Power Button [PWRF]
[    0.623815] Monitor-Mwait will be used to enter C-1 state
[    0.623818] Monitor-Mwait will be used to enter C-2 state
[    0.623821] Monitor-Mwait will be used to enter C-3 state
[    0.623823] ACPI: \_PR_.PR00: Found 3 idle states
[    0.624412] ACPI: \_PR_.PR01: Found 3 idle states
[    0.624979] ACPI: \_PR_.PR02: Found 3 idle states
[    0.625545] ACPI: \_PR_.PR03: Found 3 idle states
[    0.626114] ACPI: \_PR_.PR04: Found 3 idle states
[    0.626693] ACPI: \_PR_.PR05: Found 3 idle states
[    0.627275] ACPI: \_PR_.PR06: Found 3 idle states
[    0.627857] ACPI: \_PR_.PR07: Found 3 idle states
[    0.631002] thermal LNXTHERM:00: registered as thermal_zone0
[    0.631535] ACPI: Thermal Zone [THM0] (46 C)
[    0.632018] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
[    0.632947] Non-volatile memory driver v1.3
[    0.633970] brd: module loaded
[    0.634784] nvme nvme0: pci function 0000:3e:00.0
[    0.635268] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    0.635895] ehci-pci: EHCI PCI platform driver
[    0.636403] xhci_hcd 0000:00:14.0: xHCI Host Controller
[    0.636903] xhci_hcd 0000:00:14.0: new USB bus registered, assigned bus number 1
[    0.638679] xhci_hcd 0000:00:14.0: hcc params 0x200077c1 hci version 0x100 quirks 0x0000000081109810
[    0.639627] xhci_hcd 0000:00:14.0: cache line size of 64 is not supported
[    0.640462] usb usb1: New USB device found, idVendor=1d6b, idProduct=0002, bcdDevice= 5.08
[    0.641262] usb usb1: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    0.641965] usb usb1: Product: xHCI Host Controller
[    0.642417] usb usb1: Manufacturer: Linux 5.8.0-rc1+ xhci-hcd
[    0.642985] usb usb1: SerialNumber: 0000:00:14.0
[    0.643553] hub 1-0:1.0: USB hub found
[    0.644738] nvme nvme0: Shutdown timeout set to 8 seconds
[    0.659136] battery: ACPI: Battery Slot [BAT0] (battery present)
[    0.670685] hub 1-0:1.0: 12 ports detected
[    0.706146] nvme nvme0: 8/0/0 default/read/poll queues
[    0.726320] xhci_hcd 0000:00:14.0: xHCI Host Controller
[    0.760397]  nvme0n1: p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11
[    0.782379] xhci_hcd 0000:00:14.0: new USB bus registered, assigned bus number 2
[    0.869762] xhci_hcd 0000:00:14.0: Host supports USB 3.0 SuperSpeed
[    0.899414] usb usb2: New USB device found, idVendor=1d6b, idProduct=0003, bcdDevice= 5.08
[    0.929333] usb usb2: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    0.959125] usb usb2: Product: xHCI Host Controller
[    0.989123] usb usb2: Manufacturer: Linux 5.8.0-rc1+ xhci-hcd
[    1.019029] usb usb2: SerialNumber: 0000:00:14.0
[    1.048692] hub 2-0:1.0: USB hub found
[    1.078218] hub 2-0:1.0: 6 ports detected
[    1.107665] usb: port power management may be unreliable
[    1.137123] i8042: PNP: PS/2 Controller [PNP0303:KBD,PNP0f13:MOU] at 0x60,0x64 irq 1,12
[    1.168929] serio: i8042 KBD port at 0x60,0x64 irq 1
[    1.198243] serio: i8042 AUX port at 0x60,0x64 irq 12
[    1.218815] usb 1-2: new high-speed USB device number 2 using xhci_hcd
[    1.226895] mousedev: PS/2 mouse device common for all mice
[    1.283539] rtc_cmos 00:04: RTC can wake from S4
[    1.311857] rtc_cmos 00:04: registered as rtc0
[    1.338713] rtc_cmos 00:04: setting system clock to 2020-06-17T06:16:02 UTC (1592374562)
[    1.365651] rtc_cmos 00:04: alarms up to one month, y3k, 242 bytes nvram, hpet irqs
[    1.372857] tsc: Refined TSC clocksource calibration: 2111.991 MHz
[    1.392532] usb 1-2: New USB device found, idVendor=0bda, idProduct=5411, bcdDevice= 1.04
[    1.392533] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=0
[    1.392534] usb 1-2: Product: 4-Port USB 2.0 Hub
[    1.392535] usb 1-2: Manufacturer: Generic
[    1.392924] device-mapper: uevent: version 1.0.3
[    1.393324] hub 1-2:1.0: USB hub found
[    1.393916] hub 1-2:1.0: 4 ports detected
[    1.420841] clocksource: tsc: mask: 0xffffffffffffffff max_cycles: 0x1e716fff2bd, max_idle_ns: 440795203249 ns
[    1.638917] clocksource: Switched to clocksource tsc
[    1.638944] input: AT Translated Set 2 keyboard as /devices/platform/i8042/serio0/input/input3
[    1.639001] device-mapper: ioctl: 4.42.0-ioctl (2020-02-27) initialised: dm-devel@redhat.com
[    1.639003] intel_pstate: Intel P-state driver initializing
[    1.693085] usb 2-2: new SuperSpeed Gen 1 USB device number 2 using xhci_hcd
[    1.779384] intel_pstate: HWP enabled
[    1.797519] random: fast init done
[    1.801443] usb 2-2: New USB device found, idVendor=0bda, idProduct=0411, bcdDevice= 1.04
[    1.801444] usb 2-2: New USB device strings: Mfr=1, Product=2, SerialNumber=0
[    1.801445] usb 2-2: Product: 4-Port USB 3.0 Hub
[    1.801445] usb 2-2: Manufacturer: Generic
[    1.806226] hub 2-2:1.0: USB hub found
[    1.806378] EFI Variables Facility v0.08 2004-May-17
[    1.807181] hub 2-2:1.0: 4 ports detected
[    1.909848] usb 1-7: new full-speed USB device number 3 using xhci_hcd
[    1.949253] usbcore: registered new interface driver usbhid
[    2.012594] input: PS/2 Generic Mouse as /devices/platform/i8042/serio1/input/input5
[    2.026540] usbhid: USB HID core driver
[    2.097189] usb 1-7: New USB device found, idVendor=8087, idProduct=0a2b, bcdDevice= 0.10
[    2.113071] Initializing XFRM netlink socket
[    2.142150] usb 1-7: New USB device strings: Mfr=0, Product=0, SerialNumber=0
[    2.193860] usb 1-2.1: new low-speed USB device number 4 using xhci_hcd
[    2.200942] NET: Registered protocol family 17
[    2.321413] NET: Registered protocol family 15
[    2.324535] usb 1-2.1: New USB device found, idVendor=413c, idProduct=301a, bcdDevice= 1.00
[    2.351264] Bridge firewalling registered
[    2.381722] usb 1-2.1: New USB device strings: Mfr=1, Product=2, SerialNumber=0
[    2.381723] usb 1-2.1: Product: Dell MS116 USB Optical Mouse
[    2.411714] 9pnet: Installing 9P2000 support
[    2.433980] usb 2-3: new SuperSpeed Gen 1 USB device number 3 using xhci_hcd
[    2.442082] usb 1-2.1: Manufacturer: PixArt
[    2.457036] usb 2-3: New USB device found, idVendor=0bda, idProduct=0316, bcdDevice= 2.04
[    2.457037] usb 2-3: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[    2.457037] usb 2-3: Product: USB3.0-CRW
[    2.457038] usb 2-3: Manufacturer: Generic
[    2.457038] usb 2-3: SerialNumber: 20120501030900000
[    2.713976] microcode: sig=0x806ea, pf=0x80, revision=0xb4
[    2.718305] input: PixArt Dell MS116 USB Optical Mouse as /devices/pci0000:00/0000:00:14.0/usb1/1-2/1-2.1/1-2.1:1.0/0003:413C:301A.0001/input/input6
[    2.777500] hid-generic 0003:413C:301A.0001: input: USB HID v1.11 Mouse [PixArt Dell MS116 USB Optical Mouse] on usb-0000:00:14.0-2.1/input0
[    2.777608] microcode: Microcode Update Driver: v2.2.
[    2.777628] IPI shorthand broadcast: enabled
[    2.873283] sched_clock: Marking stable (2869680977, 3595871)->(2874053724, -776876)
[    2.885847] usb 1-2.2: new low-speed USB device number 5 using xhci_hcd
[    2.905201] registered taskstats version 1
[    2.969261] Loading compiled-in X.509 certificates
[    3.022476] Loaded X.509 cert 'dyoung kernel test key: 9d5c9a70fe6578e1ba171ba2ab9f3449d6688559'
[    3.034053] usb 1-2.2: New USB device found, idVendor=413c, idProduct=2113, bcdDevice= 1.10
[    3.057031] Loaded X.509 cert 'dyoung kernel test key: 9d5c9a70fe6578e1ba171ba2ab9f3449d6688559'
[    3.090359] usb 1-2.2: New USB device strings: Mfr=0, Product=2, SerialNumber=0
[    3.124441] pstore: Using crash dump compression: lzo
[    3.158473] usb 1-2.2: Product: Dell KB216 Wired Keyboard
[    3.192879] Key type encrypted registered
[    3.236217] input: Dell KB216 Wired Keyboard as /devices/pci0000:00/0000:00:14.0/usb1/1-2/1-2.2/1-2.2:1.0/0003:413C:2113.0002/input/input7
[    3.348685] hid-generic 0003:413C:2113.0002: input: USB HID v1.11 Keyboard [Dell KB216 Wired Keyboard] on usb-0000:00:14.0-2.2/input0
[    3.396179] input: Dell KB216 Wired Keyboard Consumer Control as /devices/pci0000:00/0000:00:14.0/usb1/1-2/1-2.2/1-2.2:1.1/0003:413C:2113.0003/input/input8
[    3.484726] input: Dell KB216 Wired Keyboard System Control as /devices/pci0000:00/0000:00:14.0/usb1/1-2/1-2.2/1-2.2:1.1/0003:413C:2113.0003/input/input9
[    3.527580] hid-generic 0003:413C:2113.0003: input: USB HID v1.11 Device [Dell KB216 Wired Keyboard] on usb-0000:00:14.0-2.2/input1
[    3.573674] EXT4-fs (nvme0n1p9): mounted filesystem with ordered data mode. Opts: (null)
[    3.611217] VFS: Mounted root (ext4 filesystem) readonly on device 259:9.
[    3.640814] usb 1-2.3: new high-speed USB device number 6 using xhci_hcd
[    3.651423] devtmpfs: mounted
[    3.722718] Freeing unused decrypted memory: 2040K
[    3.760257] Freeing unused kernel image (initmem) memory: 1224K
[    3.775165] usb 1-2.3: New USB device found, idVendor=046d, idProduct=085c, bcdDevice= 0.16
[    3.835064] Write protecting the kernel read-only data: 16384k
[    3.872466] usb 1-2.3: New USB device strings: Mfr=0, Product=2, SerialNumber=1
[    3.909811] usb 1-2.3: Product: C922 Pro Stream Webcam
[    3.946736] usb 1-2.3: SerialNumber: 9D6A015F
[    3.983384] Freeing unused kernel image (text/rodata gap) memory: 2044K
[    4.020469] Freeing unused kernel image (rodata/data gap) memory: 1612K
[    4.060040] usb 1-2.4: new high-speed USB device number 7 using xhci_hcd
[    4.096819] Run 5 as init process
[    4.132427]   with arguments:
[    4.132428]     5
[    4.132428]   with environment:
[    4.132428]     HOME=/
[    4.132428]     TERM=linux
[    4.132429]     hung_task_panic=1
[    4.132429]     softlockup_panic=1
[    4.132429]     LANG=zh_CN.UTF-8
[    4.132429]     selinux=0
[    4.132430]     crashkernel=160M
[    4.132440] Default init 5 failed (error -2)
[    4.168197] Run /sbin/init as init process
[    4.185829] usb 1-2.4: New USB device found, idVendor=0bda, idProduct=8152, bcdDevice=20.00
[    4.203820]   with arguments:
[    4.203821]     /sbin/init
[    4.239856] usb 1-2.4: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[    4.239857] usb 1-2.4: Product: USB 10/100 LAN
[    4.275831]   with environment:
[    4.275831]     HOME=/
[    4.275832]     TERM=linux
[    4.275832]     hung_task_panic=1
[    4.311766]     softlockup_panic=1
[    4.311766] usb 1-2.4: Manufacturer: Realtek
[    4.311767] usb 1-2.4: SerialNumber: 00E04C363074
[    4.347697]     LANG=zh_CN.UTF-8
[    4.383522]     selinux=0
[    4.383522]     crashkernel=160M
[    4.906362] random: lvmconfig: uninitialized urandom read (4 bytes read)
[    6.526063] fuse: init (API version 7.31)
[    7.016455] EXT4-fs (nvme0n1p9): re-mounted. Opts: (null)
[    8.256267] i801_smbus 0000:00:1f.4: SPD Write Disable is set
[    8.261557] random: mktemp: uninitialized urandom read (6 bytes read)
[    8.267828] random: mktemp: uninitialized urandom read (6 bytes read)
[    8.273515] random: tlp-readconfs: uninitialized urandom read (4 bytes read)
[    8.306017] i801_smbus 0000:00:1f.4: SMBus using PCI interrupt
[    8.645630] i2c i2c-0: 2/2 memory slots populated (from DMI)
[    8.705690] e1000e: Intel(R) PRO/1000 Network Driver - 3.2.6-k
[    8.706126] i2c i2c-0: Successfully instantiated SPD at 0x51
[    8.780357] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
[    8.942072] e1000e 0000:00:1f.6: Interrupt Throttling Rate (ints/sec) set to dynamic conservative mode
[    8.985248] input: PC Speaker as /devices/platform/pcspkr/input/input10
[    9.042729] checking generic (c0000000 7e9000) vs hw (e0000000 1000000)
[    9.042730] checking generic (c0000000 7e9000) vs hw (c0000000 20000000)
[    9.042731] fb0: switching to inteldrmfb from simple
[    9.043504] thinkpad_acpi: ThinkPad ACPI Extras v0.26
[    9.043512] cfg80211: Loading compiled-in X.509 certificates for regulatory database
[    9.043652] cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'
[    9.098996] e1000e 0000:00:1f.6 eth0: (PCI Express:2.5GT/s:Width x1) 8c:16:45:75:50:6c
[    9.099625] thinkpad_acpi: http://ibm-acpi.sf.net/
[    9.125361] e1000e 0000:00:1f.6 eth0: Intel(R) PRO/1000 Network Connection
[    9.149540] thinkpad_acpi: ThinkPad BIOS N22ET54W (1.31 ), EC N22HT26W
[    9.175060] e1000e 0000:00:1f.6 eth0: MAC: 12, PHY: 12, PBA No: 1000FF-0FF
[    9.243214] thinkpad_acpi: Lenovo ThinkPad T480s, model 20L8S3M801
[    9.405125] Console: switching to colour dummy device 80x25
[    9.405156] i915 0000:00:02.0: vgaarb: deactivate vga console
[    9.408636] Intel(R) Wireless WiFi driver for Linux
[    9.414444] [drm] Supports vblank timestamp caching Rev 2 (21.10.2013).
[    9.415081] i915 0000:00:02.0: [drm] *ERROR* DC state mismatch (0x0 -> 0x2)
[    9.415115] i915 0000:00:02.0: vgaarb: changed VGA decodes: olddecodes=io+mem,decodes=io+mem:owns=io+mem
[    9.416314] i915 0000:00:02.0: [drm] Finished loading DMC firmware i915/kbl_dmc_ver1_04.bin (v1.4)
[    9.431961] iwlwifi 0000:3d:00.0: Found debug destination: EXTERNAL_DRAM
[    9.431968] iwlwifi 0000:3d:00.0: Found debug configuration: 0
[    9.432338] iwlwifi 0000:3d:00.0: loaded firmware version 36.77d01142.0 8265-36.ucode op_mode iwlmvm
[    9.432451] iwlwifi 0000:3d:00.0: Direct firmware load for iwl-debug-yoyo.bin failed with error -2
[    9.435126] thinkpad_acpi: radio switch found; radios are enabled
[    9.435261] thinkpad_acpi: This ThinkPad has standard ACPI backlight brightness control, supported by the ACPI video driver
[    9.435266] thinkpad_acpi: Disabling thinkpad-acpi brightness events by default...
[    9.449417] thinkpad_acpi: rfkill switch tpacpi_bluetooth_sw: radio is unblocked
[    9.468511] [drm] Initialized i915 1.6.0 20200515 for 0000:00:02.0 on minor 0
[    9.472498] thinkpad_acpi: Standard ACPI backlight interface available, not loading native one
[    9.493868] Adding 1048572k swap on /dev/nvme0n1p10.  Priority:-2 extents:1 across:1048572k SS
[    9.512366] ACPI: Video Device [GFX0] (multi-head: yes  rom: no  post: no)
[    9.512522] input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:00/input/input12
[    9.512890] snd_hda_intel 0000:00:1f.3: bound 0000:00:02.0 (ops i915_audio_component_bind_ops [i915])
[    9.520300] thinkpad_acpi: battery 1 registered (start 0, stop 100)
[    9.520303] battery: new extension: ThinkPad Battery Extension
[    9.521015] input: ThinkPad Extra Buttons as /devices/platform/thinkpad_acpi/input/input11
[    9.545743] iwlwifi 0000:3d:00.0: Detected Intel(R) Dual Band Wireless AC 8265, REV=0x230
[    9.562287] iwlwifi 0000:3d:00.0: Applying debug destination EXTERNAL_DRAM
[    9.563432] iwlwifi 0000:3d:00.0: Allocated 0x00400000 bytes for firmware monitor.
[    9.602240] snd_hda_codec_realtek hdaudioC0D0: autoconfig for ALC257: line_outs=1 (0x14/0x0/0x0/0x0/0x0) type:speaker
[    9.602408] snd_hda_codec_realtek hdaudioC0D0:    speaker_outs=0 (0x0/0x0/0x0/0x0/0x0)
[    9.602412] snd_hda_codec_realtek hdaudioC0D0:    hp_outs=1 (0x21/0x0/0x0/0x0/0x0)
[    9.602416] snd_hda_codec_realtek hdaudioC0D0:    mono: mono_out=0x0
[    9.602418] snd_hda_codec_realtek hdaudioC0D0:    inputs:
[    9.602422] snd_hda_codec_realtek hdaudioC0D0:      Mic=0x19
[    9.602425] snd_hda_codec_realtek hdaudioC0D0:      Internal Mic=0x12
[    9.628002] iwlwifi 0000:3d:00.0: base HW address: b4:6b:fc:a3:80:d6
[    9.652406] fbcon: i915drmfb (fb0) is primary device
[    9.653653] ------------[ cut here ]------------
[    9.653654] i915 0000:00:02.0: drm_WARN_ON(intel_de_read(dev_priv, ((const i915_reg_t){ .reg = ((((&(dev_priv)->__info)->trans_offsets[(dev_priv->psr.transcoder)] - (&(dev_priv)->__info)->trans_offsets[TRANSCODER_A] + (0x60800) + ((&(dev_priv)->__info)->display_mmio_offset)) - dev_priv->hsw_psr_mmio_adjust)) })) & (1 << 31))
[    9.657092] WARNING: CPU: 1 PID: 103 at drivers/gpu/drm/i915/display/intel_psr.c:782 intel_psr_activate+0x3c6/0x440 [i915]
[    9.657093] Modules linked in: snd_hda_codec_realtek(+) snd_hda_codec_generic iwlmvm(+) mac80211 input_leds snd_hda_intel snd_intel_dspcfg snd_hda_codec snd_hwdep snd_hda_core kvm_intel libarc4 snd_seq kvm snd_seq_device iwlwifi serio_raw irqbypass snd_pcm thinkpad_acpi pcspkr cfg80211 ledtrig_audio snd_timer rfkill i915 e1000e snd i2c_i801 soundcore i2c_smbus video intel_gtt iosf_mbi drm_kms_helper syscopyarea sysfillrect sysimgblt fb_sys_fops fuse drm
[    9.657262] CPU: 1 PID: 103 Comm: kworker/u16:3 Not tainted 5.8.0-rc1+ #179
[    9.657262] Hardware name: LENOVO 20L8S3M801/20L8S3M801, BIOS N22ET54W (1.31 ) 04/22/2019
[    9.657262] Workqueue: events_unbound async_run_entry_fn
[    9.657263] RIP: 0010:intel_psr_activate+0x3c6/0x440 [i915]
[    9.657264] Code: 4c 8b 6f 50 4d 85 ed 75 03 4c 8b 2f e8 c3 e0 1f e1 48 c7 c1 a0 ca 2e a0 4c 89 ea 48 c7 c7 40 3b 30 a0 48 89 c6 e8 f2 21 e0 e0 <0f> 0b 80 bd 88 69 00 00 00 0f 84 b5 fc ff ff 48 8b 7d 18 4c 8b 6f
[    9.657264] RSP: 0018:ffff88842ad2b898 EFLAGS: 00010282
[    9.657265] RAX: 0000000000000000 RBX: 0000000000000001 RCX: 0000000000000000
[    9.657265] RDX: 000000000000013a RSI: ffffffff825346da RDI: ffffffff82534ada
[    9.657265] RBP: ffff888423228000 R08: 000000023f6713ae R09: 000000000000013a
[    9.657266] R10: 0000000000000067 R11: 000000000002fa10 R12: ffff88842c16b128
[    9.657266] R13: ffff88842bb09970 R14: 0000000000000001 R15: ffff88842cbcc000
[    9.657266] FS:  0000000000000000(0000) GS:ffff88842e440000(0000) knlGS:0000000000000000
[    9.657267] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[    9.657267] CR2: 000055b5c70404c8 CR3: 0000000421d96005 CR4: 00000000001606e0
[    9.657267] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[    9.657267] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[    9.657267] Call Trace:
[    9.657268]  intel_psr_update+0x17c/0x1a0 [i915]
[    9.657268]  intel_ddi_update_pipe+0x6c/0xb0 [i915]
[    9.657268]  intel_update_crtc+0x28b/0x420 [i915]
[    9.657268]  skl_commit_modeset_enables+0x142/0x4e0 [i915]
[    9.657269]  intel_atomic_commit_tail+0x2c6/0x1290 [i915]
[    9.657269]  ? complete+0x2f/0x40
[    9.657269]  ? flush_workqueue_prep_pwqs+0x118/0x130
[    9.657269]  ? flush_workqueue+0x178/0x3c0
[    9.657270]  intel_atomic_commit+0x281/0x300 [i915]
[    9.657270]  drm_client_modeset_commit_atomic+0x1be/0x200 [drm]
[    9.657270]  drm_client_modeset_commit_locked+0x54/0x150 [drm]
[    9.657270]  drm_client_modeset_commit+0x24/0x40 [drm]
[    9.657271]  drm_fb_helper_restore_fbdev_mode_unlocked+0x49/0x90 [drm_kms_helper]
[    9.657271]  drm_fb_helper_set_par+0x30/0x40 [drm_kms_helper]
[    9.657271]  intel_fbdev_set_par+0x16/0x60 [i915]
[    9.657272]  ? con_is_visible+0x27/0x40
[    9.657272]  fbcon_init+0x2e7/0x680
[    9.657272]  visual_init+0xce/0x130
[    9.657272]  do_bind_con_driver.isra.0+0x1da/0x2e0
[    9.657273]  do_take_over_console+0x116/0x180
[    9.657273]  do_fbcon_takeover+0x5c/0xc0
[    9.657273]  register_framebuffer+0x1e4/0x300
[    9.657274]  __drm_fb_helper_initial_config_and_unlock+0x320/0x490 [drm_kms_helper]
[    9.657274]  intel_fbdev_initial_config+0x14/0x30 [i915]
[    9.657274]  async_run_entry_fn+0x37/0x150
[    9.657274]  process_one_work+0x1bf/0x3d0
[    9.657275]  worker_thread+0x4d/0x3d0
[    9.657275]  ? process_one_work+0x3d0/0x3d0
[    9.657275]  kthread+0x11b/0x140
[    9.657276]  ? kthread_create_worker_on_cpu+0x70/0x70
[    9.657276]  ret_from_fork+0x22/0x30
[    9.657276] ---[ end trace f701c3abca58b4af ]---
[    9.674849] Console: switching to colour frame buffer device 240x67

[snip]

Thanks
Dave

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
