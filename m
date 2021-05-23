Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF40838E62C
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 14:05:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F25186E284;
	Mon, 24 May 2021 12:05:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 584 seconds by postgrey-1.36 at gabe;
 Sun, 23 May 2021 19:57:39 UTC
Received: from granite.fifsource.com (granite.fifsource.com [173.255.216.206])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3D406E1D8
 for <intel-gfx@lists.freedesktop.org>; Sun, 23 May 2021 19:57:19 +0000 (UTC)
Received: from ceramic.fifi.org (107-142-44-66.lightspeed.sntcca.sbcglobal.net
 [107.142.44.66]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 by granite.fifsource.com (Postfix) with ESMTPSA id B05734060;
 Sun, 23 May 2021 12:47:34 -0700 (PDT)
Message-ID: <4d84b06ee9e8dad88ff101de5e7b78b9b09cfee3.camel@fifi.org>
From: Philippe Troin <phil@fifi.org>
To: linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Sun, 23 May 2021 12:47:34 -0700
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33) 
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 24 May 2021 12:05:07 +0000
Subject: [Intel-gfx] Bug: 5.12.5 - list_add double add at
 __i915_gem_object_make_shrinkable+0xa6/0xe0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Found the following bug on a FUJITSU LIFEBOOK S6520.

The kernel crash happens when selecting a user from the gdm login
screen right after boot.
The same hardware has no problems with 5.11.21.

OOPS:
   list_add double add: new=ffff8e785604c620, prev=ffff8e785604c620, next=ffff8e784d105b38.
   ------------[ cut here ]------------
   kernel BUG at lib/list_debug.c:29!
   invalid opcode: 0000 [#1] SMP PTI
   CPU: 0 PID: 1498 Comm: gnome-shell Not tainted 5.12.5-200.fc33.x86_64 #1
   Hardware name: FUJITSU LIFEBOOK S6520/FJNB1E6, BIOS Version 1.31  09/09/2009
   RIP: 0010:__list_add_valid.cold+0x26/0x3f
   Code: d8 77 a6 ff 4c 89 c1 48 c7 c7 10 52 41 b8 e8 7f 2c fe ff 0f 0b 48 89 f2 4c 89 c1 48 89 fe 48 c7 c7 c0 52 41 b8 e8 68 2c fe ff <0f> 0b 48 89 d1 4c 89 c6 4c 89 ca 48 c7 c7 68 52 41 b8 e8 51 2c fe
   RSP: 0018:ffffb84100ebfcf8 EFLAGS: 00010082
   RAX: 0000000000000058 RBX: ffff8e785604c340 RCX: 0000000000000000
   RDX: ffff8e787bc26720 RSI: ffff8e787bc185c0 RDI: ffff8e787bc185c0
   RBP: ffff8e784d105b38 R08: 0000000000000000 R09: ffffb84100ebfb30
   R10: ffffb84100ebfb28 R11: ffffffffb8b45f28 R12: ffff8e784d100000
   R13: 0000000000000246 R14: ffff8e784d105b20 R15: ffff8e785604c620
   FS:  00007fa65ebf6d40(0000) GS:ffff8e787bc00000(0000) knlGS:0000000000000000
   CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
   CR2: 00007fa638311a10 CR3: 00000001162d0000 CR4: 00000000000006f0
   Call Trace:
    __i915_gem_object_make_shrinkable+0xa6/0xe0 [i915]
    i915_gem_object_set_tiling+0x4fe/0x530 [i915]
    ? i915_gem_object_make_unshrinkable+0x75/0xd0 [i915]
    i915_gem_set_tiling_ioctl+0x148/0x230 [i915]
    ? i915_gem_object_set_tiling+0x530/0x530 [i915]
    drm_ioctl_kernel+0x86/0xd0 [drm]
    drm_ioctl+0x20f/0x3a0 [drm]
    ? i915_gem_object_set_tiling+0x530/0x530 [i915]
    ? handle_mm_fault+0xd5/0x2b0
    __x64_sys_ioctl+0x83/0xb0
    do_syscall_64+0x33/0x40
    entry_SYSCALL_64_after_hwframe+0x44/0xae
   RIP: 0033:0x7fa662d8ff7b
   Code: 89 d8 49 8d 3c 1c 48 f7 d8 4c 39 e0 77 b5 e8 1c ff ff ff 85 c0 78 ba 4c 89 e0 5b 5d 41 5c c3 f3 0f 1e fa b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d cd be 0c 00 f7 d8 64 89 01 48
   RSP: 002b:00007ffd4273adf8 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
   RAX: ffffffffffffffda RBX: 000055db91ae4d70 RCX: 00007fa662d8ff7b
   RDX: 00007ffd4273ae00 RSI: 00000000c0106461 RDI: 000000000000000b
   RBP: 0000000000000000 R08: 000055db8de78400 R09: 0000000000000000
   R10: 00007ffd42740080 R11: 0000000000000246 R12: 0000000000000000
   R13: 000055db8de782e0 R14: 00000000c0106461 R15: 00007ffd4273ae00
   Modules linked in: ccm xt_recent ip6t_REJECT nf_reject_ipv6 ip6t_rpfilter ipt_REJECT nf_reject_ipv4 xt_conntrack nft_counter nft_chain_nat nf_nat nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 ip6_tables nft_compat ip_set nf_tables nfnetlink bnep snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_generic ledtrig_audio snd_hda_intel snd_intel_dspcfg snd_intel_sdw_acpi snd_hda_codec snd_hda_core snd_hwdep snd_seq_dummy iwldvm snd_seq_oss snd_seq_midi_event mac80211 iTCO_wdt intel_pmc_bxt iTCO_vendor_support ppdev uvcvideo libarc4 iwlwifi snd_pcm_oss videobuf2_vmalloc coretemp videobuf2_memops snd_mixer_oss kvm_intel videobuf2_v4l2 btusb kvm snd_seq videobuf2_common btrtl irqbypass btbcm btintel bluetooth snd_seq_device cfg80211 snd_pcm ecdh_generic i2c_i801 ecc joydev pcspkr i2c_smbus snd_timer rfkill lpc_ich snd soundcore parport_pc parport tpm_infineon fujitsu_laptop sparse_keymap acpi_cpufreq binfmt_misc ip_tables xfs dm_crypt trusted i915 i2c_algo_bit drm_kms_helper cec
    drm sdhci_pci cqhci sdhci firewire_ohci mmc_core firewire_core serio_raw sky2 yenta_socket crc_itu_t video videodev mc fuse
   ---[ end trace 397aeb714833de66 ]---
   RIP: 0010:__list_add_valid.cold+0x26/0x3f
   Code: d8 77 a6 ff 4c 89 c1 48 c7 c7 10 52 41 b8 e8 7f 2c fe ff 0f 0b 48 89 f2 4c 89 c1 48 89 fe 48 c7 c7 c0 52 41 b8 e8 68 2c fe ff <0f> 0b 48 89 d1 4c 89 c6 4c 89 ca 48 c7 c7 68 52 41 b8 e8 51 2c fe
   RSP: 0018:ffffb84100ebfcf8 EFLAGS: 00010082
   RAX: 0000000000000058 RBX: ffff8e785604c340 RCX: 0000000000000000
   RDX: ffff8e787bc26720 RSI: ffff8e787bc185c0 RDI: ffff8e787bc185c0
   RBP: ffff8e784d105b38 R08: 0000000000000000 R09: ffffb84100ebfb30
   R10: ffffb84100ebfb28 R11: ffffffffb8b45f28 R12: ffff8e784d100000
   R13: 0000000000000246 R14: ffff8e784d105b20 R15: ffff8e785604c620
   FS:  00007fa65ebf6d40(0000) GS:ffff8e787bc00000(0000) knlGS:0000000000000000
   CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
   CR2: 00007fa638311a10 CR3: 00000001162d0000 CR4: 00000000000006f0

lspci -vv:
   00:00.0 Host bridge: Intel Corporation Mobile 4 Series Chipset Memory Controller Hub (rev 07)
   	Subsystem: Fujitsu Limited. Device 144e
   	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
   	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort+ >SERR- <PERR- INTx-
   	Latency: 0
   	Capabilities: <access denied>
   
   00:02.0 VGA compatible controller: Intel Corporation Mobile 4 Series Chipset Integrated Graphics Controller (rev 07) (prog-if 00 [VGA controller])
   	Subsystem: Fujitsu Limited. Device 1450
   	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
   	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
   	Latency: 0
   	Interrupt: pin A routed to IRQ 16
   	Region 0: Memory at f0000000 (64-bit, non-prefetchable) [size=4M]
   	Region 2: Memory at d0000000 (64-bit, prefetchable) [size=256M]
   	Region 4: I/O ports at 1800 [size=8]
   	Expansion ROM at 000c0000 [virtual] [disabled] [size=128K]
   	Capabilities: <access denied>
   	Kernel driver in use: i915
   	Kernel modules: i915
   
   00:02.1 Display controller: Intel Corporation Mobile 4 Series Chipset Integrated Graphics Controller (rev 07)
   	Subsystem: Fujitsu Limited. Device 1450
   	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
   	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
   	Latency: 0
   	Region 0: Memory at f0400000 (64-bit, non-prefetchable) [size=1M]
   	Capabilities: <access denied>
   
   00:1a.0 USB controller: Intel Corporation 82801I (ICH9 Family) USB UHCI Controller #4 (rev 03) (prog-if 00 [UHCI])
   	Subsystem: Fujitsu Limited. Device 1472
   	Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
   	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
   	Latency: 0
   	Interrupt: pin A routed to IRQ 16
   	Region 4: I/O ports at 1820 [size=32]
   	Capabilities: <access denied>
   	Kernel driver in use: uhci_hcd
   
   00:1a.1 USB controller: Intel Corporation 82801I (ICH9 Family) USB UHCI Controller #5 (rev 03) (prog-if 00 [UHCI])
   	Subsystem: Fujitsu Limited. Device 1472
   	Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
   	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
   	Latency: 0
   	Interrupt: pin B routed to IRQ 17
   	Region 4: I/O ports at 1840 [size=32]
   	Capabilities: <access denied>
   	Kernel driver in use: uhci_hcd
   
   00:1a.2 USB controller: Intel Corporation 82801I (ICH9 Family) USB UHCI Controller #6 (rev 03) (prog-if 00 [UHCI])
   	Subsystem: Fujitsu Limited. Device 1472
   	Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
   	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
   	Latency: 0
   	Interrupt: pin C routed to IRQ 18
   	Region 4: I/O ports at 1860 [size=32]
   	Capabilities: <access denied>
   	Kernel driver in use: uhci_hcd
   
   00:1a.7 USB controller: Intel Corporation 82801I (ICH9 Family) USB2 EHCI Controller #2 (rev 03) (prog-if 20 [EHCI])
   	Subsystem: Fujitsu Limited. Device 1473
   	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
   	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
   	Latency: 0
   	Interrupt: pin C routed to IRQ 18
   	Region 0: Memory at f0a04800 (32-bit, non-prefetchable) [size=1K]
   	Capabilities: <access denied>
   	Kernel driver in use: ehci-pci
   
   00:1b.0 Audio device: Intel Corporation 82801I (ICH9 Family) HD Audio Controller (rev 03)
   	Subsystem: Fujitsu Limited. Device 1475
   	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx+
   	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
   	Latency: 0, Cache Line Size: 64 bytes
   	Interrupt: pin A routed to IRQ 28
   	Region 0: Memory at f0a00000 (64-bit, non-prefetchable) [size=16K]
   	Capabilities: <access denied>
   	Kernel driver in use: snd_hda_intel
   	Kernel modules: snd_hda_intel
   
   00:1c.0 PCI bridge: Intel Corporation 82801I (ICH9 Family) PCI Express Port 1 (rev 03) (prog-if 00 [Normal decode])
   	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx+
   	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
   	Latency: 0, Cache Line Size: 64 bytes
   	Interrupt: pin A routed to IRQ 24
   	Bus: primary=00, secondary=08, subordinate=0f, sec-latency=0
   	I/O behind bridge: 00002000-00002fff [size=4K]
   	Memory behind bridge: f0500000-f05fffff [size=1M]
   	Prefetchable memory behind bridge: 00000000c0000000-00000000c01fffff [size=2M]
   	Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort+ <SERR- <PERR-
   	BridgeCtl: Parity- SERR+ NoISA+ VGA- VGA16- MAbort- >Reset- FastB2B-
   		PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
   	Capabilities: <access denied>
   	Kernel driver in use: pcieport
   
   00:1c.2 PCI bridge: Intel Corporation 82801I (ICH9 Family) PCI Express Port 3 (rev 03) (prog-if 00 [Normal decode])
   	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx+
   	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
   	Latency: 0, Cache Line Size: 64 bytes
   	Interrupt: pin C routed to IRQ 25
   	Bus: primary=00, secondary=18, subordinate=1f, sec-latency=0
   	I/O behind bridge: 00003000-00003fff [size=4K]
   	Memory behind bridge: f0600000-f06fffff [size=1M]
   	Prefetchable memory behind bridge: 00000000c0200000-00000000c03fffff [size=2M]
   	Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort+ <SERR- <PERR-
   	BridgeCtl: Parity- SERR+ NoISA+ VGA- VGA16- MAbort- >Reset- FastB2B-
   		PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
   	Capabilities: <access denied>
   	Kernel driver in use: pcieport
   
   00:1d.0 USB controller: Intel Corporation 82801I (ICH9 Family) USB UHCI Controller #1 (rev 03) (prog-if 00 [UHCI])
   	Subsystem: Fujitsu Limited. Device 1472
   	Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
   	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
   	Latency: 0
   	Interrupt: pin A routed to IRQ 23
   	Region 4: I/O ports at 1880 [size=32]
   	Capabilities: <access denied>
   	Kernel driver in use: uhci_hcd
   
   00:1d.1 USB controller: Intel Corporation 82801I (ICH9 Family) USB UHCI Controller #2 (rev 03) (prog-if 00 [UHCI])
   	Subsystem: Fujitsu Limited. Device 1472
   	Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
   	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
   	Latency: 0
   	Interrupt: pin B routed to IRQ 19
   	Region 4: I/O ports at 18a0 [size=32]
   	Capabilities: <access denied>
   	Kernel driver in use: uhci_hcd
   
   00:1d.2 USB controller: Intel Corporation 82801I (ICH9 Family) USB UHCI Controller #3 (rev 03) (prog-if 00 [UHCI])
   	Subsystem: Fujitsu Limited. Device 1472
   	Control: I/O+ Mem- BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
   	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
   	Latency: 0
   	Interrupt: pin C routed to IRQ 18
   	Region 4: I/O ports at 18c0 [size=32]
   	Capabilities: <access denied>
   	Kernel driver in use: uhci_hcd
   
   00:1d.7 USB controller: Intel Corporation 82801I (ICH9 Family) USB2 EHCI Controller #1 (rev 03) (prog-if 20 [EHCI])
   	Subsystem: Fujitsu Limited. Device 1473
   	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
   	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
   	Latency: 0
   	Interrupt: pin A routed to IRQ 23
   	Region 0: Memory at f0a04c00 (32-bit, non-prefetchable) [size=1K]
   	Capabilities: <access denied>
   	Kernel driver in use: ehci-pci
   
   00:1e.0 PCI bridge: Intel Corporation 82801 Mobile PCI Bridge (rev 93) (prog-if 01 [Subtractive decode])
   	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
   	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
   	Latency: 0
   	Bus: primary=00, secondary=38, subordinate=39, sec-latency=32
   	I/O behind bridge: 00004000-00004fff [size=4K]
   	Memory behind bridge: f0700000-f07fffff [size=1M]
   	Prefetchable memory behind bridge: [disabled]
   	Secondary status: 66MHz- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort+ <SERR- <PERR+
   	BridgeCtl: Parity- SERR+ NoISA+ VGA- VGA16- MAbort- >Reset- FastB2B-
   		PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
   	Capabilities: <access denied>
   
   00:1f.0 ISA bridge: Intel Corporation ICH9M LPC Interface Controller (rev 03)
   	Subsystem: Fujitsu Limited. Device 146b
   	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
   	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
   	Latency: 0
   	Capabilities: <access denied>
   	Kernel driver in use: lpc_ich
   	Kernel modules: lpc_ich
   
   00:1f.2 SATA controller: Intel Corporation 82801IBM/IEM (ICH9M/ICH9M-E) 4 port SATA Controller [AHCI mode] (rev 03) (prog-if 01 [AHCI 1.0])
   	Subsystem: Fujitsu Limited. Device 146d
   	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+
   	Status: Cap+ 66MHz+ UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
   	Latency: 0
   	Interrupt: pin B routed to IRQ 26
   	Region 0: I/O ports at 1818 [size=8]
   	Region 1: I/O ports at 180c [size=4]
   	Region 2: I/O ports at 1810 [size=8]
   	Region 3: I/O ports at 1808 [size=4]
   	Region 4: I/O ports at 18e0 [size=32]
   	Region 5: Memory at f0a04000 (32-bit, non-prefetchable) [size=2K]
   	Capabilities: <access denied>
   	Kernel driver in use: ahci
   
   00:1f.3 SMBus: Intel Corporation 82801I (ICH9 Family) SMBus Controller (rev 03)
   	Subsystem: Fujitsu Limited. Device 1470
   	Control: I/O+ Mem+ BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
   	Status: Cap- 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
   	Interrupt: pin C routed to IRQ 19
   	Region 0: Memory at c0400000 (64-bit, non-prefetchable) [size=256]
   	Region 4: I/O ports at 1c00 [size=32]
   	Kernel driver in use: i801_smbus
   	Kernel modules: i2c_i801
   
   08:00.0 Ethernet controller: Marvell Technology Group Ltd. 88E8055 PCI-E Gigabit Ethernet Controller (rev 14)
   	Subsystem: Fujitsu Limited. Device 14ab
   	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
   	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
   	Latency: 0, Cache Line Size: 64 bytes
   	Interrupt: pin A routed to IRQ 16
   	Region 0: Memory at f0500000 (64-bit, non-prefetchable) [size=16K]
   	Region 2: I/O ports at 2000 [size=256]
   	Expansion ROM at f0520000 [virtual] [disabled] [size=128K]
   	Capabilities: <access denied>
   	Kernel driver in use: sky2
   	Kernel modules: sky2
   
   18:00.0 Network controller: Intel Corporation Ultimate N WiFi Link 5300
   	Subsystem: Intel Corporation Device 1101
   	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx+
   	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
   	Latency: 0, Cache Line Size: 64 bytes
   	Interrupt: pin A routed to IRQ 27
   	Region 0: Memory at f0600000 (64-bit, non-prefetchable) [size=8K]
   	Capabilities: <access denied>
   	Kernel driver in use: iwlwifi
   	Kernel modules: iwlwifi
   
   38:03.0 CardBus bridge: O2 Micro, Inc. OZ711SP1 Memory CardBus Controller (rev 01)
   	Subsystem: Fujitsu Limited. Device 143d
   	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping+ SERR- FastB2B- DisINTx-
   	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=slow >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
   	Latency: 168
   	Interrupt: pin A routed to IRQ 17
   	Region 0: Memory at c4000000 (32-bit, non-prefetchable) [size=4K]
   	Bus: primary=38, secondary=39, subordinate=39, sec-latency=176
   	Memory window 0: c8000000-cbffffff (prefetchable)
   	Memory window 1: cc000000-cfffffff
   	I/O window 0: 00004000-000040ff
   	I/O window 1: 00004400-000044ff
   	BridgeCtl: Parity- SERR- ISA- VGA- MAbort- >Reset+ 16bInt+ PostWrite+
   	16-bit legacy interface ports at 0001
   	Capabilities: <access denied>
   	Kernel driver in use: yenta_cardbus
   	Kernel modules: yenta_socket
   
   38:03.2 SD Host controller: O2 Micro, Inc. Integrated MMC/SD Controller (rev 02) (prog-if 01)
   	Subsystem: Fujitsu Limited. Device 143d
   	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
   	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=slow >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
   	Latency: 32, Cache Line Size: 64 bytes
   	Interrupt: pin A routed to IRQ 17
   	Region 0: Memory at f0700000 (32-bit, non-prefetchable) [size=256]
   	Capabilities: <access denied>
   	Kernel driver in use: sdhci-pci
   	Kernel modules: sdhci_pci
   
   38:03.3 Mass storage controller: O2 Micro, Inc. Integrated MS/xD Controller (rev 01)
   	Subsystem: Fujitsu Limited. Device 143d
   	Control: I/O- Mem+ BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
   	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=slow >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
   	Interrupt: pin A routed to IRQ 11
   	Region 0: Memory at f0701000 (32-bit, non-prefetchable) [size=4K]
   	Capabilities: <access denied>
   
   38:03.4 FireWire (IEEE 1394): O2 Micro, Inc. Firewire (IEEE 1394) (rev 02) (prog-if 10 [OHCI])
   	Subsystem: Fujitsu Limited. Device 143e
   	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV+ VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
   	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx+
   	Latency: 32, Cache Line Size: 64 bytes
   	Interrupt: pin A routed to IRQ 17
   	Region 0: Memory at f0702000 (32-bit, non-prefetchable) [size=4K]
   	Region 1: Memory at f0700800 (32-bit, non-prefetchable) [size=2K]
   	Capabilities: <access denied>
   	Kernel driver in use: firewire_ohci
   	Kernel modules: firewire_ohci
   

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
