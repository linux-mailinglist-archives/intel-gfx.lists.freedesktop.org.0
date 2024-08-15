Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 110E7952D8F
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2024 13:33:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E77710E0FE;
	Thu, 15 Aug 2024 11:33:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JQkV+4Wj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAA3B10E0FE;
 Thu, 15 Aug 2024 11:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723721583; x=1755257583;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=hnc6lOjwUPCqUYA/LyqJFOFRfzzyzJzBJcrQlxxMGzg=;
 b=JQkV+4WjDBoO6kDZOgqzSjEOPumOkq+iheirxu4ewkJMm5iM0UKW09OP
 iyMhA0agUBZpV4CnKyW/PPcIDod/hCb9zIxjSh5t+J3Bb/tAVz+/r2sSO
 RbVlGHF3O8XaxjKdy6P27Rot0laKHaP9QZipyx4acGUcbjYwYINXU+47M
 XBuJy2LBgMsRjhzRWI7OMHL1fysTe/y9RZPrhy4gqbnTAKI4WGLKCDJka
 qWB6wWR4zUMCpbnmgkBZgvEbZ3cAK6zPAk3XTS75tkY+cXuNSj8Ras4Io
 bemS4sSIgubyM3vFZ6ipaEawII40hsiCdfyQma8MGTnv2MWjL0n28OcUC A==;
X-CSE-ConnectionGUID: Pj6fhsCMTLOl7BF0RC+oWw==
X-CSE-MsgGUID: sPLRV8iXRee793LSI2c4uA==
X-IronPort-AV: E=McAfee;i="6700,10204,11164"; a="21942560"
X-IronPort-AV: E=Sophos;i="6.10,148,1719903600"; d="scan'208";a="21942560"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2024 04:33:00 -0700
X-CSE-ConnectionGUID: Et+PA1AZQ8GbxV0oMy+FqA==
X-CSE-MsgGUID: Z3O6DhI2QwOnX7kzQ0zUsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,148,1719903600"; d="scan'208";a="90110162"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2024 04:32:55 -0700
Date: Thu, 15 Aug 2024 14:33:14 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Renan W. P." <renanwilliamprado@gmail.com>
Cc: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, tursulin@ursulin.net,
 airlied@gmail.com, daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Subject: Re: A huge warning in dmesg pointing to
 drivers/gpu/drm/i915/display/intel_tc.c
Message-ID: <Zr3neoTc50lYVDs1@ideak-desk.fi.intel.com>
References: <2810b938-7df7-408e-9775-6f20d1694176@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <2810b938-7df7-408e-9775-6f20d1694176@gmail.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 15, 2024 at 02:45:44AM -0300, Renan W. P. wrote:
> Hello, mainteners,
>=20
> [1.] One line summary of the problem:
>=20
> A huge warning in dmesg pointing to drivers/gpu/drm/i915/display/intel_tc=
=2Ec
>=20
> [2.] Full description of the problem/report:
>=20
> I can't identify any factual problems beyond a warning in dmesg triggered=
 at every boot, i.e., I have seen no features affected. The dmesg output is=
 located in the log files in the attachment.
> I am facing this warning in LENOVO 82MG/LNVNB161216, BIOS H4CN35WW(V2.04)=
 04/12/2024 (Lenovo Ganing 3i). I have tried two new kernel versions fromww=
w.kernel.org  site, the Kernel 6.10.5 and 6.1.105.
> Additionally, I have used Debian at least since kernel version 6.1.22. Al=
l kernels present warnings in the same file with slightly different outputs=
 in dmesg. I am compiling the kernel with the config-6.1.105 file in the at=
tachment.
>=20
> [3.] Keywords (i.e., modules, networking, kernel):
>=20
> Modules
>=20
> [4.] Kernel information:
>=20
> The issue is present in Kernel 6.10.5 and 6.1.105, but the warning might =
be present since 6.1.22.
>=20
> [4.1.] Kernel version (from /proc/version):
>=20
> Linux version 6.10.5 (renan@debian) (gcc (Debian 12.2.0-14) 12.2.0, GNU l=
d (GNU Binutils for Debian) 2.40) #1 SMP PREEMPT_DYNAMIC Thu Aug 15 01:06:0=
9 -03 2024
>=20
> [4.2.] Kernel .config file:
>=20
> In the config-6.1.105 file in the attachment
>=20
> [5.] Most recent kernel version which did not have the bug:
>=20
> This computer is "new". I bought it two months ago, and I have not seem t=
his warning not occuring.
>=20
> [6.] Output of Oops.. message (if applicable) with symbolic information
>      resolved (see Documentation/admin-guide/bug-hunting.rst) :
>=20
> [    2.237704] ------------[ cut here ]------------
> [    2.237706] i915 0000:00:02.0: drm_WARN_ON(val =3D=3D 0xffffffff)
> [    2.237721] WARNING: CPU: 7 PID: 217 at drivers/gpu/drm/i915/display/i=
ntel_tc.c:737 tgl_tc_phy_init+0x103/0x130 [i915]
> [    2.237969] Modules linked in: i915(+) joydev hid_generic usbhid hid n=
vme nvme_core t10_pi crc64_rocksoft crc64 crc_t10dif crct10dif_generic i2c_=
algo_bit cec rc_core drm_buddy ttm drm_display_helper xhci_pci xhci_hcd drm=
_kms_helper crct10dif_pclmul usbcore evdev crct10dif_common crc32c_intel se=
rio_raw drm usb_common vmd video wmi fan

I suppose there is no TypeC ports enabled on this platform, but VBT
claims otherwise:

[    1.938614] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port D VBT i=
nfo: CRT:0 DVI:0 HDMI:0 DP:1 eDP:0 DSI:0 DP++:0 LSPCON:0 USB-Type-C:1 TBT:1=
 DSC:0
[    1.938692] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port D VBT H=
DMI level shift: 0
[    1.938827] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port E VBT i=
nfo: CRT:0 DVI:0 HDMI:0 DP:1 eDP:0 DSI:0 DP++:0 LSPCON:0 USB-Type-C:1 TBT:0=
 DSC:0
[    1.938913] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port E VBT H=
DMI level shift: 0

Could you confirm that the laptop doesn't have a USB-C connector (with
video support, so disregarding connectors supporting only charging / USB
devices)?

> [    2.238002] CPU: 7 PID: 217 Comm: (udev-worker) Tainted: G        W   =
       6.10.5 #1
> [    2.238007] Hardware name: LENOVO 82MG/LNVNB161216, BIOS H4CN35WW(V2.0=
4) 04/12/2024
> [    2.238010] RIP: 0010:tgl_tc_phy_init+0x103/0x130 [i915]
> [    2.238241] Code: 48 8b 6f 50 48 85 ed 75 03 48 8b 2f e8 76 62 ac d8 4=
8 c7 c1 e8 94 c5 c0 48 89 ea 48 c7 c7 62 a7 c7 c0 48 89 c6 e8 bd a0 2e d8 <=
0f> 0b 48 8b 3b e8 e3 7d f9 ff 89 c1 89 c5 c1 e9 1f c1 ed 1f 8d 14
> [    2.238248] RSP: 0018:ffffb95e40a53608 EFLAGS: 00010286
> [    2.238252] RAX: 0000000000000000 RBX: ffff8e8f919e7000 RCX: c0000000f=
ffdffff
> [    2.238256] RDX: 0000000000000000 RSI: 00000000fffdffff RDI: 000000000=
0000001
> [    2.238259] RBP: ffff8e8f81bf6d30 R08: 0000000000000000 R09: 000000000=
0000003
> [    2.238262] R10: ffffb95e40a53498 R11: ffff8e952f7fffe8 R12: ffff8e8f8=
13ec000
> [    2.238266] R13: ffff8e8f813ec618 R14: 000fffffffe00000 R15: ffff8e8f8=
13ec000
> [    2.238269] FS:  00007f4ce50158c0(0000) GS:ffff8e952e780000(0000) knlG=
S:0000000000000000
> [    2.238274] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [    2.238278] CR2: 000055b901674008 CR3: 0000000102c70004 CR4: 000000000=
0770ef0
> [    2.238281] PKRU: 55555554
> [    2.238284] Call Trace:
> [    2.238286]  <TASK>
> [    2.238289]  ? __warn+0x7c/0x120
> [    2.238295]  ? tgl_tc_phy_init+0x103/0x130 [i915]
> [    2.238520]  ? report_bug+0x160/0x190
> [    2.238527]  ? prb_read_valid+0x17/0x20
> [    2.238532]  ? handle_bug+0x41/0x70
> [    2.238538]  ? exc_invalid_op+0x13/0x60
> [    2.238543]  ? asm_exc_invalid_op+0x16/0x20
> [    2.238551]  ? tgl_tc_phy_init+0x103/0x130 [i915]
> [    2.238777]  ? tgl_tc_phy_init+0x103/0x130 [i915]
> [    2.238991]  intel_tc_port_init+0x17e/0x220 [i915]
> [    2.239208]  intel_ddi_init+0x9fa/0x11d0 [i915]
> [    2.239435]  ? __pfx_intel_ddi_init+0x10/0x10 [i915]
> [    2.239657]  intel_bios_for_each_encoder+0x31/0x50 [i915]
> [    2.239929]  intel_setup_outputs+0x4e0/0xc20 [i915]
> [    2.240194]  intel_display_driver_probe_nogem+0x139/0x220 [i915]
> [    2.240453]  i915_driver_probe+0x63b/0xba0 [i915]
> [    2.240654]  local_pci_probe+0x3e/0x90
> [    2.240661]  pci_device_probe+0xc3/0x240
> [    2.240667]  really_probe+0xd3/0x380
> [    2.240673]  ? __pfx___driver_attach+0x10/0x10
> [    2.240678]  __driver_probe_device+0x78/0x150
> [    2.240684]  driver_probe_device+0x1f/0x90
> [    2.240689]  __driver_attach+0xce/0x1c0
> [    2.240694]  bus_for_each_dev+0x81/0xd0
> [    2.240699]  bus_add_driver+0x10e/0x240
> [    2.240704]  driver_register+0x55/0x100
> [    2.240710]  i915_init+0x1e/0xc0 [i915]
> [    2.240904]  ? __pfx_i915_init+0x10/0x10 [i915]
> [    2.241092]  do_one_initcall+0x54/0x320
> [    2.241099]  do_init_module+0x60/0x240
> [    2.241103]  init_module_from_file+0x86/0xc0
> [    2.241108]  idempotent_init_module+0x120/0x310
> [    2.241113]  __x64_sys_finit_module+0x5a/0xb0
> [    2.241117]  do_syscall_64+0x7e/0x190
> [    2.241121]  ? vm_mmap_pgoff+0x12d/0x1c0
> [    2.241128]  ? ksys_mmap_pgoff+0x153/0x1f0
> [    2.241135]  ? syscall_exit_to_user_mode+0x73/0x200
> [    2.241140]  ? do_syscall_64+0x8a/0x190
> [    2.241145]  ? syscall_exit_to_user_mode+0x73/0x200
> [    2.241150]  ? do_syscall_64+0x8a/0x190
> [    2.241156]  ? vfs_read+0x292/0x370
> [    2.241162]  ? syscall_exit_to_user_mode+0x73/0x200
> [    2.241167]  ? do_syscall_64+0x8a/0x190
> [    2.241172]  ? syscall_exit_to_user_mode+0x73/0x200
> [    2.241177]  ? do_syscall_64+0x8a/0x190
> [    2.241181]  ? do_syscall_64+0x8a/0x190
> [    2.241185]  ? clear_bhb_loop+0x45/0xa0
> [    2.241189]  ? clear_bhb_loop+0x45/0xa0
> [    2.241192]  ? clear_bhb_loop+0x45/0xa0
> [    2.241195]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> [    2.241202] RIP: 0033:0x7f4ce5723719
> [    2.241205] Code: 08 89 e8 5b 5d c3 66 2e 0f 1f 84 00 00 00 00 00 90 4=
8 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <=
48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d b7 06 0d 00 f7 d8 64 89 01 48
> [    2.241212] RSP: 002b:00007ffe5dcb5ed8 EFLAGS: 00000246 ORIG_RAX: 0000=
000000000139
> [    2.241217] RAX: ffffffffffffffda RBX: 000055df22026c20 RCX: 00007f4ce=
5723719
> [    2.241221] RDX: 0000000000000000 RSI: 00007f4ce58b6efd RDI: 000000000=
0000013
> [    2.241224] RBP: 00007f4ce58b6efd R08: 0000000000000000 R09: 000000000=
000000a
> [    2.241228] R10: 0000000000000013 R11: 0000000000000246 R12: 000000000=
0020000
> [    2.241231] R13: 0000000000000000 R14: 000055df22023820 R15: 000000000=
000000a
> [    2.241236]  </TASK>
> [    2.241238] ---[ end trace 0000000000000000 ]---
>=20
>=20
> [7.] A small shell script or example program which triggers the
>      problem (if possible)
>=20
> Not possible
>=20
> [8.] Environment
> [8.1.] Software (add the output of the ver_linux script here)
>=20
> [8.2.] Processor information (from /proc/cpuinfo):
>=20
> In file cpuinfo.log in the attachments
>=20
> [8.3.] Module information (from /proc/modules):
>=20
> In file modules.log in the attachments
>=20
> [8.4.] Loaded driver and hardware information (/proc/ioports, /proc/iomem)
>=20
> In files ioports.log and iomen.log in the attachments
>=20
> [8.5.] PCI information ('lspci -vvv' as root):
>=20
> In file "sudo lspci -vvv".log in the attachments
>=20
> [8.6.] SCSI information (from /proc/scsi/scsi):
>=20
> File does not exist
>=20
> [8.7.] Other information that might be relevant to the problem
>        (please look in /proc and include all information that you
>        think to be relevant):
>=20
> Not applicable
>=20
> [X.] Other notes, patches, fixes, workarounds:
>=20
> No known workarounds in the web was found

> [    0.000000] Linux version 6.10.5 (renan@debian) (gcc (Debian 12.2.0-14=
) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40) #1 SMP PREEMPT_DYNAMIC Thu=
 Aug 15 01:06:09 -03 2024
> [    0.000000] Command line: BOOT_IMAGE=3D/boot/vmlinuz-6.10.5 root=3DUUI=
D=3D199a867c-5749-4ed5-8946-1a80cae9b76f ro quiet drm.debug=3D0xe log_buf_l=
en=3D4M ignore_loglevel
> [    0.000000] x86/split lock detection: #AC: crashing the kernel on kern=
el split_locks and warning on user-space split_locks
> [    0.000000] BIOS-provided physical RAM map:
> [    0.000000] BIOS-e820: [mem 0x0000000000000000-0x000000000009efff] usa=
ble
> [    0.000000] BIOS-e820: [mem 0x000000000009f000-0x00000000000fffff] res=
erved
> [    0.000000] BIOS-e820: [mem 0x0000000000100000-0x0000000040d98fff] usa=
ble
> [    0.000000] BIOS-e820: [mem 0x0000000040d99000-0x0000000041698fff] res=
erved
> [    0.000000] BIOS-e820: [mem 0x0000000041699000-0x00000000434aefff] usa=
ble
> [    0.000000] BIOS-e820: [mem 0x00000000434af000-0x000000004387efff] typ=
e 20
> [    0.000000] BIOS-e820: [mem 0x000000004387f000-0x00000000452fefff] res=
erved
> [    0.000000] BIOS-e820: [mem 0x00000000452ff000-0x0000000045b2efff] ACP=
I NVS
> [    0.000000] BIOS-e820: [mem 0x0000000045b2f000-0x0000000045bfefff] ACP=
I data
> [    0.000000] BIOS-e820: [mem 0x0000000045bff000-0x0000000045bfffff] usa=
ble
> [    0.000000] BIOS-e820: [mem 0x0000000045c00000-0x0000000049ffffff] res=
erved
> [    0.000000] BIOS-e820: [mem 0x000000004a200000-0x000000004a3fffff] res=
erved
> [    0.000000] BIOS-e820: [mem 0x000000004b000000-0x00000000503fffff] res=
erved
> [    0.000000] BIOS-e820: [mem 0x00000000c0000000-0x00000000cfffffff] res=
erved
> [    0.000000] BIOS-e820: [mem 0x00000000fe010000-0x00000000fe010fff] res=
erved
> [    0.000000] BIOS-e820: [mem 0x00000000fed20000-0x00000000fed7ffff] res=
erved
> [    0.000000] BIOS-e820: [mem 0x00000000ff200000-0x00000000ffffffff] res=
erved
> [    0.000000] BIOS-e820: [mem 0x0000000100000000-0x00000006afbfffff] usa=
ble
> [    0.000000] printk: debug: ignoring loglevel setting.
> [    0.000000] NX (Execute Disable) protection: active
> [    0.000000] APIC: Static calls initialized
> [    0.000000] efi: EFI v2.7 by INSYDE Corp.
> [    0.000000] efi: ACPI=3D0x45bfe000 ACPI 2.0=3D0x45bfe014 TPMFinalLog=
=3D0x45ac5000 SMBIOS=3D0x43a00000 SMBIOS 3.0=3D0x439fe000 MEMATTR=3D0x3cbc4=
018 ESRT=3D0x3cbd0098 MOKvar=3D0x439d4000=20
> [    0.000000] efi: Remove mem80: MMIO range=3D[0xc0000000-0xcfffffff] (2=
56MB) from e820 map
> [    0.000000] e820: remove [mem 0xc0000000-0xcfffffff] reserved
> [    0.000000] efi: Not removing mem81: MMIO range=3D[0xfe010000-0xfe010f=
ff] (4KB) from e820 map
> [    0.000000] efi: Remove mem83: MMIO range=3D[0xff200000-0xffffffff] (1=
4MB) from e820 map
> [    0.000000] e820: remove [mem 0xff200000-0xffffffff] reserved
> [    0.000000] SMBIOS 3.3.0 present.
> [    0.000000] DMI: LENOVO 82MG/LNVNB161216, BIOS H4CN35WW(V2.04) 04/12/2=
024
> [    0.000000] DMI: Memory slots populated: 2/2
> [    0.000000] tsc: Detected 3100.000 MHz processor
> [    0.000000] tsc: Detected 3110.400 MHz TSC
> [    0.000005] e820: update [mem 0x00000000-0x00000fff] usable =3D=3D> re=
served
> [    0.000007] e820: remove [mem 0x000a0000-0x000fffff] usable
> [    0.000012] last_pfn =3D 0x6afc00 max_arch_pfn =3D 0x400000000
> [    0.000014] MTRR map: 5 entries (3 fixed + 2 variable; max 23), built =
=66rom 10 variable MTRRs
> [    0.000016] x86/PAT: Configuration [0-7]: WB  WC  UC- UC  WB  WP  UC- =
WT =20
> [    0.000367] last_pfn =3D 0x45c00 max_arch_pfn =3D 0x400000000
> [    0.007253] esrt: Reserving ESRT space from 0x000000003cbd0098 to 0x00=
0000003cbd0198.
> [    0.007257] e820: update [mem 0x3cbd0000-0x3cbd0fff] usable =3D=3D> re=
served
> [    0.007269] Using GB pages for direct mapping
> [    0.009939] printk: log_buf_len: 4194304 bytes
> [    0.009941] printk: early log buf free: 127704(97%)
> [    0.009941] Secure boot disabled
> [    0.009942] RAMDISK: [mem 0x2e6f7000-0x33372fff]
> [    0.009946] ACPI: Early table checksum verification disabled
> [    0.009949] ACPI: RSDP 0x0000000045BFE014 000024 (v02 LENOVO)
> [    0.009952] ACPI: XSDT 0x0000000045BD9188 000134 (v01 LENOVO CB-01    =
00000001      01000013)
> [    0.009956] ACPI: FACP 0x0000000045BFD000 000114 (v06 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.009960] ACPI: DSDT 0x0000000045B80000 056C5F (v02 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.009962] ACPI: FACS 0x0000000045AA4000 000040
> [    0.009964] ACPI: UEFI 0x0000000045B2E000 000236 (v01 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.009965] ACPI: SSDT 0x0000000045BFA000 00255C (v02 LENOVO CB-01    =
00000001 INTL 20160422)
> [    0.009967] ACPI: SSDT 0x0000000045BF6000 003916 (v02 LENOVO CB-01    =
00000001 INTL 20160422)
> [    0.009969] ACPI: SSDT 0x0000000045BF5000 000106 (v02 LENOVO CB-01    =
00000001 INTL 20160422)
> [    0.009971] ACPI: SSDT 0x0000000045BEF000 005A4E (v02 LENOVO CB-01    =
00000001 INTL 20160422)
> [    0.009973] ACPI: SSDT 0x0000000045BEB000 003DC4 (v02 LENOVO CB-01    =
00000001 INTL 20160422)
> [    0.009974] ACPI: SSDT 0x0000000045BE7000 003300 (v02 LENOVO CB-01    =
00000001 INTL 20160422)
> [    0.009976] ACPI: SSDT 0x0000000045BE6000 00081F (v02 LENOVO CB-01    =
00000001 INTL 20160422)
> [    0.009978] ACPI: SSDT 0x0000000045BE5000 000033 (v02 LENOVO CB-01    =
00000001 INTL 20160422)
> [    0.009980] ACPI: SSDT 0x0000000045BE4000 00077B (v02 LENOVO CB-01    =
00000001 INTL 20160422)
> [    0.009982] ACPI: TPM2 0x0000000045BE3000 00004C (v04 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.009983] ACPI: MSDM 0x0000000045BE2000 000055 (v03 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.009985] ACPI: NHLT 0x0000000045BE0000 00189E (v00 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.009988] ACPI: LPIT 0x0000000045BDF000 0000CC (v01 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.009990] ACPI: WSMT 0x0000000045BDE000 000028 (v01 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.009992] ACPI: SSDT 0x0000000045BDD000 000B70 (v02 LENOVO CB-01    =
00000001 INTL 20160422)
> [    0.009993] ACPI: SSDT 0x0000000045BDC000 00012A (v02 LENOVO CB-01    =
00000001 INTL 20160422)
> [    0.009995] ACPI: DBGP 0x0000000045BDB000 000034 (v01 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.009997] ACPI: DBG2 0x0000000045BDA000 000054 (v00 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.009999] ACPI: HPET 0x0000000045BD8000 000038 (v01 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.010001] ACPI: APIC 0x0000000045BD7000 00012C (v04 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.010002] ACPI: SSDT 0x0000000045B7B000 0042BB (v02 LENOVO CB-01    =
00000001      01000013)
> [    0.010004] ACPI: SSDT 0x0000000045B7A000 000CF6 (v02 LENOVO CB-01    =
00000001      01000013)
> [    0.010006] ACPI: DMAR 0x0000000045B79000 000088 (v02 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.010008] ACPI: SSDT 0x0000000045B76000 00217F (v01 LENOVO CB-01    =
00000001 INTL 20160422)
> [    0.010010] ACPI: UEFI 0x0000000045A5D000 00063A (v01 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.010012] ACPI: UEFI 0x0000000045A5C000 00005C (v01 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.010014] ACPI: MCFG 0x0000000045B75000 00003C (v01 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.010015] ACPI: SSDT 0x0000000045B74000 000DB8 (v02 LENOVO CB-01    =
00000001 INTL 20160422)
> [    0.010017] ACPI: SSDT 0x0000000045B73000 0000F8 (v01 LENOVO CB-01    =
00000001 INTL 20160422)
> [    0.010019] ACPI: FPDT 0x0000000045B72000 000044 (v01 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.010021] ACPI: BGRT 0x0000000045B71000 000038 (v01 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.010022] ACPI: PTDT 0x0000000045B70000 000CFE (v00 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.010024] ACPI: Reserving FACP table memory at [mem 0x45bfd000-0x45b=
fd113]
> [    0.010025] ACPI: Reserving DSDT table memory at [mem 0x45b80000-0x45b=
d6c5e]
> [    0.010025] ACPI: Reserving FACS table memory at [mem 0x45aa4000-0x45a=
a403f]
> [    0.010026] ACPI: Reserving UEFI table memory at [mem 0x45b2e000-0x45b=
2e235]
> [    0.010026] ACPI: Reserving SSDT table memory at [mem 0x45bfa000-0x45b=
fc55b]
> [    0.010027] ACPI: Reserving SSDT table memory at [mem 0x45bf6000-0x45b=
f9915]
> [    0.010027] ACPI: Reserving SSDT table memory at [mem 0x45bf5000-0x45b=
f5105]
> [    0.010027] ACPI: Reserving SSDT table memory at [mem 0x45bef000-0x45b=
f4a4d]
> [    0.010028] ACPI: Reserving SSDT table memory at [mem 0x45beb000-0x45b=
eedc3]
> [    0.010028] ACPI: Reserving SSDT table memory at [mem 0x45be7000-0x45b=
ea2ff]
> [    0.010029] ACPI: Reserving SSDT table memory at [mem 0x45be6000-0x45b=
e681e]
> [    0.010029] ACPI: Reserving SSDT table memory at [mem 0x45be5000-0x45b=
e5032]
> [    0.010030] ACPI: Reserving SSDT table memory at [mem 0x45be4000-0x45b=
e477a]
> [    0.010030] ACPI: Reserving TPM2 table memory at [mem 0x45be3000-0x45b=
e304b]
> [    0.010031] ACPI: Reserving MSDM table memory at [mem 0x45be2000-0x45b=
e2054]
> [    0.010031] ACPI: Reserving NHLT table memory at [mem 0x45be0000-0x45b=
e189d]
> [    0.010031] ACPI: Reserving LPIT table memory at [mem 0x45bdf000-0x45b=
df0cb]
> [    0.010032] ACPI: Reserving WSMT table memory at [mem 0x45bde000-0x45b=
de027]
> [    0.010032] ACPI: Reserving SSDT table memory at [mem 0x45bdd000-0x45b=
ddb6f]
> [    0.010033] ACPI: Reserving SSDT table memory at [mem 0x45bdc000-0x45b=
dc129]
> [    0.010033] ACPI: Reserving DBGP table memory at [mem 0x45bdb000-0x45b=
db033]
> [    0.010034] ACPI: Reserving DBG2 table memory at [mem 0x45bda000-0x45b=
da053]
> [    0.010034] ACPI: Reserving HPET table memory at [mem 0x45bd8000-0x45b=
d8037]
> [    0.010034] ACPI: Reserving APIC table memory at [mem 0x45bd7000-0x45b=
d712b]
> [    0.010035] ACPI: Reserving SSDT table memory at [mem 0x45b7b000-0x45b=
7f2ba]
> [    0.010035] ACPI: Reserving SSDT table memory at [mem 0x45b7a000-0x45b=
7acf5]
> [    0.010036] ACPI: Reserving DMAR table memory at [mem 0x45b79000-0x45b=
79087]
> [    0.010036] ACPI: Reserving SSDT table memory at [mem 0x45b76000-0x45b=
7817e]
> [    0.010037] ACPI: Reserving UEFI table memory at [mem 0x45a5d000-0x45a=
5d639]
> [    0.010037] ACPI: Reserving UEFI table memory at [mem 0x45a5c000-0x45a=
5c05b]
> [    0.010038] ACPI: Reserving MCFG table memory at [mem 0x45b75000-0x45b=
7503b]
> [    0.010038] ACPI: Reserving SSDT table memory at [mem 0x45b74000-0x45b=
74db7]
> [    0.010038] ACPI: Reserving SSDT table memory at [mem 0x45b73000-0x45b=
730f7]
> [    0.010039] ACPI: Reserving FPDT table memory at [mem 0x45b72000-0x45b=
72043]
> [    0.010039] ACPI: Reserving BGRT table memory at [mem 0x45b71000-0x45b=
71037]
> [    0.010040] ACPI: Reserving PTDT table memory at [mem 0x45b70000-0x45b=
70cfd]
> [    0.010219] No NUMA configuration found
> [    0.010219] Faking a node at [mem 0x0000000000000000-0x00000006afbffff=
f]
> [    0.010225] NODE_DATA(0) allocated [mem 0x6ae9d5000-0x6ae9fffff]
> [    0.010337] Zone ranges:
> [    0.010338]   DMA      [mem 0x0000000000001000-0x0000000000ffffff]
> [    0.010339]   DMA32    [mem 0x0000000001000000-0x00000000ffffffff]
> [    0.010340]   Normal   [mem 0x0000000100000000-0x00000006afbfffff]
> [    0.010341]   Device   empty
> [    0.010342] Movable zone start for each node
> [    0.010343] Early memory node ranges
> [    0.010343]   node   0: [mem 0x0000000000001000-0x000000000009efff]
> [    0.010344]   node   0: [mem 0x0000000000100000-0x0000000040d98fff]
> [    0.010345]   node   0: [mem 0x0000000041699000-0x00000000434aefff]
> [    0.010345]   node   0: [mem 0x0000000045bff000-0x0000000045bfffff]
> [    0.010346]   node   0: [mem 0x0000000100000000-0x00000006afbfffff]
> [    0.010347] Initmem setup node 0 [mem 0x0000000000001000-0x00000006afb=
fffff]
> [    0.010351] On node 0, zone DMA: 1 pages in unavailable ranges
> [    0.010370] On node 0, zone DMA: 97 pages in unavailable ranges
> [    0.011660] On node 0, zone DMA32: 2304 pages in unavailable ranges
> [    0.011728] On node 0, zone DMA32: 10064 pages in unavailable ranges
> [    0.011963] On node 0, zone Normal: 9216 pages in unavailable ranges
> [    0.011969] On node 0, zone Normal: 1024 pages in unavailable ranges
> [    0.011990] Reserving Intel graphics memory at [mem 0x4c800000-0x503ff=
fff]
> [    0.012262] ACPI: PM-Timer IO Port: 0x1808
> [    0.012268] ACPI: LAPIC_NMI (acpi_id[0x01] high edge lint[0x1])
> [    0.012269] ACPI: LAPIC_NMI (acpi_id[0x02] high edge lint[0x1])
> [    0.012269] ACPI: LAPIC_NMI (acpi_id[0x03] high edge lint[0x1])
> [    0.012270] ACPI: LAPIC_NMI (acpi_id[0x04] high edge lint[0x1])
> [    0.012270] ACPI: LAPIC_NMI (acpi_id[0x05] high edge lint[0x1])
> [    0.012270] ACPI: LAPIC_NMI (acpi_id[0x06] high edge lint[0x1])
> [    0.012271] ACPI: LAPIC_NMI (acpi_id[0x07] high edge lint[0x1])
> [    0.012271] ACPI: LAPIC_NMI (acpi_id[0x08] high edge lint[0x1])
> [    0.012272] ACPI: LAPIC_NMI (acpi_id[0x09] high edge lint[0x1])
> [    0.012272] ACPI: LAPIC_NMI (acpi_id[0x0a] high edge lint[0x1])
> [    0.012273] ACPI: LAPIC_NMI (acpi_id[0x0b] high edge lint[0x1])
> [    0.012273] ACPI: LAPIC_NMI (acpi_id[0x0c] high edge lint[0x1])
> [    0.012273] ACPI: LAPIC_NMI (acpi_id[0x0d] high edge lint[0x1])
> [    0.012274] ACPI: LAPIC_NMI (acpi_id[0x0e] high edge lint[0x1])
> [    0.012274] ACPI: LAPIC_NMI (acpi_id[0x0f] high edge lint[0x1])
> [    0.012275] ACPI: LAPIC_NMI (acpi_id[0x10] high edge lint[0x1])
> [    0.012309] IOAPIC[0]: apic_id 2, version 32, address 0xfec00000, GSI =
0-119
> [    0.012311] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
> [    0.012313] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
> [    0.012316] ACPI: Using ACPI (MADT) for SMP configuration information
> [    0.012317] ACPI: HPET id: 0x8086a201 base: 0xfed00000
> [    0.012323] e820: update [mem 0x3c740000-0x3c84efff] usable =3D=3D> re=
served
> [    0.012329] TSC deadline timer available
> [    0.012332] CPU topo: Max. logical packages:   1
> [    0.012332] CPU topo: Max. logical dies:       1
> [    0.012333] CPU topo: Max. dies per package:   1
> [    0.012335] CPU topo: Max. threads per core:   2
> [    0.012336] CPU topo: Num. cores per package:     4
> [    0.012336] CPU topo: Num. threads per package:   8
> [    0.012336] CPU topo: Allowing 8 present CPUs plus 0 hotplug CPUs
> [    0.012346] PM: hibernation: Registered nosave memory: [mem 0x00000000=
-0x00000fff]
> [    0.012347] PM: hibernation: Registered nosave memory: [mem 0x0009f000=
-0x000fffff]
> [    0.012348] PM: hibernation: Registered nosave memory: [mem 0x3c740000=
-0x3c84efff]
> [    0.012349] PM: hibernation: Registered nosave memory: [mem 0x3cbd0000=
-0x3cbd0fff]
> [    0.012350] PM: hibernation: Registered nosave memory: [mem 0x40d99000=
-0x41698fff]
> [    0.012351] PM: hibernation: Registered nosave memory: [mem 0x434af000=
-0x4387efff]
> [    0.012351] PM: hibernation: Registered nosave memory: [mem 0x4387f000=
-0x452fefff]
> [    0.012352] PM: hibernation: Registered nosave memory: [mem 0x452ff000=
-0x45b2efff]
> [    0.012352] PM: hibernation: Registered nosave memory: [mem 0x45b2f000=
-0x45bfefff]
> [    0.012353] PM: hibernation: Registered nosave memory: [mem 0x45c00000=
-0x49ffffff]
> [    0.012354] PM: hibernation: Registered nosave memory: [mem 0x4a000000=
-0x4a1fffff]
> [    0.012354] PM: hibernation: Registered nosave memory: [mem 0x4a200000=
-0x4a3fffff]
> [    0.012354] PM: hibernation: Registered nosave memory: [mem 0x4a400000=
-0x4affffff]
> [    0.012355] PM: hibernation: Registered nosave memory: [mem 0x4b000000=
-0x503fffff]
> [    0.012355] PM: hibernation: Registered nosave memory: [mem 0x50400000=
-0xfe00ffff]
> [    0.012356] PM: hibernation: Registered nosave memory: [mem 0xfe010000=
-0xfe010fff]
> [    0.012356] PM: hibernation: Registered nosave memory: [mem 0xfe011000=
-0xfed1ffff]
> [    0.012356] PM: hibernation: Registered nosave memory: [mem 0xfed20000=
-0xfed7ffff]
> [    0.012357] PM: hibernation: Registered nosave memory: [mem 0xfed80000=
-0xffffffff]
> [    0.012358] [mem 0x50400000-0xfe00ffff] available for PCI devices
> [    0.012359] Booting paravirtualized kernel on bare hardware
> [    0.012360] clocksource: refined-jiffies: mask: 0xffffffff max_cycles:=
 0xffffffff, max_idle_ns: 7645519600211568 ns
> [    0.016119] setup_percpu: NR_CPUS:8192 nr_cpumask_bits:8 nr_cpu_ids:8 =
nr_node_ids:1
> [    0.016547] percpu: Embedded 65 pages/cpu s229376 r8192 d28672 u524288
> [    0.016551] pcpu-alloc: s229376 r8192 d28672 u524288 alloc=3D1*2097152
> [    0.016553] pcpu-alloc: [0] 0 1 2 3 [0] 4 5 6 7=20
> [    0.016564] Kernel command line: BOOT_IMAGE=3D/boot/vmlinuz-6.10.5 roo=
t=3DUUID=3D199a867c-5749-4ed5-8946-1a80cae9b76f ro quiet drm.debug=3D0xe lo=
g_buf_len=3D4M ignore_loglevel
> [    0.016613] Unknown kernel command line parameters "BOOT_IMAGE=3D/boot=
/vmlinuz-6.10.5", will be passed to user space.
> [    0.016656] random: crng init done
> [    0.019106] Dentry cache hash table entries: 4194304 (order: 13, 33554=
432 bytes, linear)
> [    0.020321] Inode-cache hash table entries: 2097152 (order: 12, 167772=
16 bytes, linear)
> [    0.020402] Fallback order for Node 0: 0=20
> [    0.020405] Built 1 zonelists, mobility grouping on.  Total pages: 623=
5982
> [    0.020406] Policy zone: Normal
> [    0.020412] mem auto-init: stack:all(zero), heap alloc:on, heap free:o=
ff
> [    0.020421] software IO TLB: area num 8.
> [    0.034356] Memory: 984588K/24943928K available (16384K kernel code, 2=
417K rwdata, 10868K rodata, 4020K init, 5480K bss, 746192K reserved, 0K cma=
-reserved)
> [    0.034488] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D8,=
 Nodes=3D1
> [    0.034517] ftrace: allocating 43822 entries in 172 pages
> [    0.039563] ftrace: allocated 172 pages with 4 groups
> [    0.040117] Dynamic Preempt: voluntary
> [    0.040150] rcu: Preemptible hierarchical RCU implementation.
> [    0.040150] rcu: 	RCU restricting CPUs from NR_CPUS=3D8192 to nr_cpu_i=
ds=3D8.
> [    0.040151] 	Trampoline variant of Tasks RCU enabled.
> [    0.040152] 	Rude variant of Tasks RCU enabled.
> [    0.040152] 	Tracing variant of Tasks RCU enabled.
> [    0.040152] rcu: RCU calculated value of scheduler-enlistment delay is=
 25 jiffies.
> [    0.040153] rcu: Adjusting geometry for rcu_fanout_leaf=3D16, nr_cpu_i=
ds=3D8
> [    0.040158] RCU Tasks: Setting shift to 3 and lim to 1 rcu_task_cb_adj=
ust=3D1.
> [    0.040159] RCU Tasks Rude: Setting shift to 3 and lim to 1 rcu_task_c=
b_adjust=3D1.
> [    0.040160] RCU Tasks Trace: Setting shift to 3 and lim to 1 rcu_task_=
cb_adjust=3D1.
> [    0.041850] NR_IRQS: 524544, nr_irqs: 2048, preallocated irqs: 16
> [    0.042130] rcu: srcu_init: Setting srcu_struct sizes based on content=
ion.
> [    0.042352] Console: colour dummy device 80x25
> [    0.042353] printk: legacy console [tty0] enabled
> [    0.042582] ACPI: Core revision 20240322
> [    0.042814] hpet: HPET dysfunctional in PC10. Force disabled.
> [    0.042816] APIC: Switch to symmetric I/O mode setup
> [    0.042818] DMAR: Host address width 39
> [    0.042819] DMAR: DRHD base: 0x000000fed90000 flags: 0x0
> [    0.042824] DMAR: dmar0: reg_base_addr fed90000 ver 4:0 cap 1c0000c406=
60462 ecap 29a00f0505e
> [    0.042827] DMAR: DRHD base: 0x000000fed91000 flags: 0x1
> [    0.042833] DMAR: dmar1: reg_base_addr fed91000 ver 1:0 cap d2008c4066=
0462 ecap f050da
> [    0.042836] DMAR: RMRR base: 0x0000004c000000 end: 0x000000503fffff
> [    0.042839] DMAR-IR: IOAPIC id 2 under DRHD base  0xfed91000 IOMMU 1
> [    0.042840] DMAR-IR: HPET id 0 under DRHD base 0xfed91000
> [    0.042842] DMAR-IR: Queued invalidation will be enabled to support x2=
apic and Intr-remapping.
> [    0.044438] DMAR-IR: Enabled IRQ remapping in x2apic mode
> [    0.044441] x2apic enabled
> [    0.044501] APIC: Switched APIC routing to: cluster x2apic
> [    0.049024] clocksource: tsc-early: mask: 0xffffffffffffffff max_cycle=
s: 0x2cd5a8bb032, max_idle_ns: 440795365915 ns
> [    0.049031] Calibrating delay loop (skipped), value calculated using t=
imer frequency.. 6220.80 BogoMIPS (lpj=3D12441600)
> [    0.049057] CPU0: Thermal monitoring enabled (TM1)
> [    0.049059] x86/cpu: User Mode Instruction Prevention (UMIP) activated
> [    0.049169] Last level iTLB entries: 4KB 0, 2MB 0, 4MB 0
> [    0.049170] Last level dTLB entries: 4KB 0, 2MB 0, 4MB 0, 1GB 0
> [    0.049173] process: using mwait in idle threads
> [    0.049176] Spectre V1 : Mitigation: usercopy/swapgs barriers and __us=
er pointer sanitization
> [    0.049179] Spectre V2 : Spectre BHI mitigation: SW BHB clearing on vm=
 exit
> [    0.049180] Spectre V2 : Spectre BHI mitigation: SW BHB clearing on sy=
scall
> [    0.049181] Spectre V2 : Mitigation: Enhanced / Automatic IBRS
> [    0.049182] Spectre V2 : Spectre v2 / SpectreRSB mitigation: Filling R=
SB on context switch
> [    0.049184] Spectre V2 : Spectre v2 / PBRSB-eIBRS: Retire a single CAL=
L on VMEXIT
> [    0.049186] Spectre V2 : mitigation: Enabling conditional Indirect Bra=
nch Prediction Barrier
> [    0.049188] Speculative Store Bypass: Mitigation: Speculative Store By=
pass disabled via prctl
> [    0.049191] GDS: Mitigation: Microcode
> [    0.049198] x86/fpu: Supporting XSAVE feature 0x001: 'x87 floating poi=
nt registers'
> [    0.049199] x86/fpu: Supporting XSAVE feature 0x002: 'SSE registers'
> [    0.049201] x86/fpu: Supporting XSAVE feature 0x004: 'AVX registers'
> [    0.049202] x86/fpu: Supporting XSAVE feature 0x020: 'AVX-512 opmask'
> [    0.049203] x86/fpu: Supporting XSAVE feature 0x040: 'AVX-512 Hi256'
> [    0.049205] x86/fpu: Supporting XSAVE feature 0x080: 'AVX-512 ZMM_Hi25=
6'
> [    0.049206] x86/fpu: Supporting XSAVE feature 0x200: 'Protection Keys =
User registers'
> [    0.049208] x86/fpu: Supporting XSAVE feature 0x800: 'Control-flow Use=
r registers'
> [    0.049209] x86/fpu: xstate_offset[2]:  576, xstate_sizes[2]:  256
> [    0.049211] x86/fpu: xstate_offset[5]:  832, xstate_sizes[5]:   64
> [    0.049213] x86/fpu: xstate_offset[6]:  896, xstate_sizes[6]:  512
> [    0.049214] x86/fpu: xstate_offset[7]: 1408, xstate_sizes[7]: 1024
> [    0.049216] x86/fpu: xstate_offset[9]: 2432, xstate_sizes[9]:    8
> [    0.049217] x86/fpu: xstate_offset[11]: 2440, xstate_sizes[11]:   16
> [    0.049219] x86/fpu: Enabled xstate features 0xae7, context size is 24=
56 bytes, using 'compacted' format.
> [    0.053029] Freeing SMP alternatives memory: 36K
> [    0.053029] pid_max: default: 32768 minimum: 301
> [    0.053029] LSM: initializing lsm=3Dlockdown,capability,landlock,yama,=
apparmor,tomoyo,bpf,ima,evm
> [    0.053029] landlock: Up and running.
> [    0.053029] Yama: becoming mindful.
> [    0.053029] AppArmor: AppArmor initialized
> [    0.053029] TOMOYO Linux initialized
> [    0.053029] LSM support for eBPF active
> [    0.053029] Mount-cache hash table entries: 65536 (order: 7, 524288 by=
tes, linear)
> [    0.053029] Mountpoint-cache hash table entries: 65536 (order: 7, 5242=
88 bytes, linear)
> [    0.053029] smpboot: CPU0: 11th Gen Intel(R) Core(TM) i5-11300H @ 3.10=
GHz (family: 0x6, model: 0x8c, stepping: 0x1)
> [    0.053029] Performance Events: PEBS fmt4+-baseline,  AnyThread deprec=
ated, Icelake events, 32-deep LBR, full-width counters, Intel PMU driver.
> [    0.053029] ... version:                5
> [    0.053029] ... bit width:              48
> [    0.053029] ... generic registers:      8
> [    0.053029] ... value mask:             0000ffffffffffff
> [    0.053029] ... max period:             00007fffffffffff
> [    0.053029] ... fixed-purpose events:   4
> [    0.053029] ... event mask:             0001000f000000ff
> [    0.053029] signal: max sigframe size: 3632
> [    0.053029] Estimated ratio of average max frequency by base frequency=
 (times 1024): 1321
> [    0.053029] rcu: Hierarchical SRCU implementation.
> [    0.053029] rcu: 	Max phase no-delay instances is 1000.
> [    0.053029] NMI watchdog: Enabled. Permanently consumes one hw-PMU cou=
nter.
> [    0.053029] smp: Bringing up secondary CPUs ...
> [    0.053029] smpboot: x86: Booting SMP configuration:
> [    0.053029] .... node  #0, CPUs:      #1 #2 #3 #4 #5 #6 #7
> [    0.053371] smp: Brought up 1 node, 8 CPUs
> [    0.053371] smpboot: Total of 8 processors activated (49766.40 BogoMIP=
S)
> [    0.081123] node 0 deferred pages initialised in 24ms
> [    0.082673] devtmpfs: initialized
> [    0.082673] x86/mm: Memory block size: 128MB
> [    0.085283] ACPI: PM: Registering ACPI NVS region [mem 0x452ff000-0x45=
b2efff] (8585216 bytes)
> [    0.085283] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xfffff=
fff, max_idle_ns: 7645041785100000 ns
> [    0.085283] futex hash table entries: 2048 (order: 5, 131072 bytes, li=
near)
> [    0.085283] pinctrl core: initialized pinctrl subsystem
> [    0.085584] NET: Registered PF_NETLINK/PF_ROUTE protocol family
> [    0.085908] DMA: preallocated 4096 KiB GFP_KERNEL pool for atomic allo=
cations
> [    0.086159] DMA: preallocated 4096 KiB GFP_KERNEL|GFP_DMA pool for ato=
mic allocations
> [    0.086418] DMA: preallocated 4096 KiB GFP_KERNEL|GFP_DMA32 pool for a=
tomic allocations
> [    0.086428] audit: initializing netlink subsys (disabled)
> [    0.086436] audit: type=3D2000 audit(1723698945.036:1): state=3Dinitia=
lized audit_enabled=3D0 res=3D1
> [    0.086436] thermal_sys: Registered thermal governor 'fair_share'
> [    0.086436] thermal_sys: Registered thermal governor 'bang_bang'
> [    0.086436] thermal_sys: Registered thermal governor 'step_wise'
> [    0.086436] thermal_sys: Registered thermal governor 'user_space'
> [    0.086436] thermal_sys: Registered thermal governor 'power_allocator'
> [    0.086436] cpuidle: using governor ladder
> [    0.086436] cpuidle: using governor menu
> [    0.086436] acpiphp: ACPI Hot Plug PCI Controller Driver version: 0.5
> [    0.086436] PCI: ECAM [mem 0xc0000000-0xc02fffff] (base 0xc0000000) fo=
r domain 0000 [bus 00-02]
> [    0.086436] PCI: Using configuration type 1 for base access
> [    0.086436] kprobes: kprobe jump-optimization is enabled. All kprobes =
are optimized if possible.
> [    0.086436] HugeTLB: registered 1.00 GiB page size, pre-allocated 0 pa=
ges
> [    0.086436] HugeTLB: 16380 KiB vmemmap can be freed for a 1.00 GiB page
> [    0.086436] HugeTLB: registered 2.00 MiB page size, pre-allocated 0 pa=
ges
> [    0.086436] HugeTLB: 28 KiB vmemmap can be freed for a 2.00 MiB page
> [    0.086436] Demotion targets for Node 0: null
> [    0.086436] ACPI: Added _OSI(Module Device)
> [    0.086436] ACPI: Added _OSI(Processor Device)
> [    0.086436] ACPI: Added _OSI(3.0 _SCP Extensions)
> [    0.086436] ACPI: Added _OSI(Processor Aggregator Device)
> [    0.131569] ACPI BIOS Error (bug): Could not resolve symbol [\_SB.PC00=
=2EI2C0.TPD0], AE_NOT_FOUND (20240322/dswload2-162)
> [    0.131575] ACPI Error: AE_NOT_FOUND, During name lookup/catalog (2024=
0322/psobject-220)
> [    0.131578] ACPI: Skipping parse of AML opcode: OpcodeName unavailable=
 (0x0010)
> [    0.131597] ACPI BIOS Error (bug): Could not resolve symbol [\_SB.PC00=
=2EI2C0.TPL1], AE_NOT_FOUND (20240322/dswload2-162)
> [    0.131600] ACPI Error: AE_NOT_FOUND, During name lookup/catalog (2024=
0322/psobject-220)
> [    0.131602] ACPI: Skipping parse of AML opcode: OpcodeName unavailable=
 (0x0010)
> [    0.132217] ACPI: 17 ACPI AML tables successfully acquired and loaded
> [    0.137832] ACPI: Dynamic OEM Table Load:
> [    0.137832] ACPI: SSDT 0xFFFF8E952B94BC00 000386 (v02 PmRef  Cpu0Cst  =
00003001 INTL 20160422)
> [    0.137948] ACPI: Dynamic OEM Table Load:
> [    0.137953] ACPI: SSDT 0xFFFF8E8F819B9800 0006AA (v02 PmRef  Cpu0Ist  =
00003000 INTL 20160422)
> [    0.138576] ACPI: Dynamic OEM Table Load:
> [    0.138581] ACPI: SSDT 0xFFFF8E952B8F9E00 0001C6 (v02 PmRef  Cpu0Psd  =
00003000 INTL 20160422)
> [    0.139144] ACPI: Dynamic OEM Table Load:
> [    0.139149] ACPI: SSDT 0xFFFF8E952B948C00 00028B (v02 PmRef  Cpu0Hwp  =
00003000 INTL 20160422)
> [    0.139826] ACPI: Dynamic OEM Table Load:
> [    0.139832] ACPI: SSDT 0xFFFF8E8F80189000 0008E7 (v02 PmRef  ApIst    =
00003000 INTL 20160422)
> [    0.141419] ACPI: Dynamic OEM Table Load:
> [    0.141425] ACPI: SSDT 0xFFFF8E8F819BC800 00048A (v02 PmRef  ApHwp    =
00003000 INTL 20160422)
> [    0.142049] ACPI: Dynamic OEM Table Load:
> [    0.142054] ACPI: SSDT 0xFFFF8E8F819BC000 0004D4 (v02 PmRef  ApPsd    =
00003000 INTL 20160422)
> [    0.142675] ACPI: Dynamic OEM Table Load:
> [    0.142680] ACPI: SSDT 0xFFFF8E8F819BE000 00048A (v02 PmRef  ApCst    =
00003000 INTL 20160422)
> [    0.145655] ACPI: _OSC evaluated successfully for all CPUs
> [    0.145681] ACPI: EC: EC started
> [    0.145682] ACPI: EC: interrupt blocked
> [    0.146931] ACPI: EC: EC_CMD/EC_SC=3D0x66, EC_DATA=3D0x62
> [    0.146933] ACPI: \_SB_.PC00.LPCB.EC0_: Boot DSDT EC used to handle tr=
ansactions
> [    0.146935] ACPI: Interpreter enabled
> [    0.146976] ACPI: PM: (supports S0 S3 S4 S5)
> [    0.146977] ACPI: Using IOAPIC for interrupt routing
> [    0.147010] PCI: Using host bridge windows from ACPI; if necessary, us=
e "pci=3Dnocrs" and report a bug
> [    0.147011] PCI: Ignoring E820 reservations for host bridge windows
> [    0.148133] ACPI: Enabled 7 GPEs in block 00 to 7F
> [    0.151312] ACPI: \_SB_.PC00.XHCI.RHUB.HS10.BTRT: New power resource
> [    0.151559] ACPI: \_SB_.PC00.PAUD: New power resource
> [    0.153592] ACPI: \_SB_.PC00.RP05.PCRP: New power resource
> [    0.157867] ACPI: \_SB_.PC00.SAT0.VOL0.V0PR: New power resource
> [    0.157929] ACPI: \_SB_.PC00.SAT0.VOL1.V1PR: New power resource
> [    0.157984] ACPI: \_SB_.PC00.SAT0.VOL2.V2PR: New power resource
> [    0.160586] ACPI: \_SB_.PC00.I2C0.PXTC: New power resource
> [    0.160750] ACPI: \_SB_.PC00.I2C0.PTPL: New power resource
> [    0.162499] ACPI: \_SB_.PC00.CNVW.WRST: New power resource
> [    0.167505] ACPI: \_SB_.PC00.VMD0.RP09.NVPR: New power resource
> [    0.167710] ACPI: \_SB_.PC00.VMD0.PEG0.NVPR: New power resource
> [    0.167791] ACPI: \_SB_.PC00.VMD0.PRT0.NVPR: New power resource
> [    0.167833] ACPI: \_SB_.PC00.VMD0.PRT1.NVPR: New power resource
> [    0.167875] ACPI: \_SB_.PC00.VMD0.PRT2.NVPR: New power resource
> [    0.167917] ACPI: \_SB_.PC00.VMD0.PRT3.NVPR: New power resource
> [    0.167957] ACPI: \_SB_.PC00.VMD0.PRT4.NVPR: New power resource
> [    0.167997] ACPI: \_SB_.PC00.VMD0.PRT5.NVPR: New power resource
> [    0.168041] ACPI: \_SB_.PC00.VMD0.PRT6.NVPR: New power resource
> [    0.168081] ACPI: \_SB_.PC00.VMD0.PRT7.NVPR: New power resource
> [    0.168125] ACPI: \_SB_.PC00.VMD0.VOL0.V0PR: New power resource
> [    0.168154] ACPI: \_SB_.PC00.VMD0.VOL1.V1PR: New power resource
> [    0.168182] ACPI: \_SB_.PC00.VMD0.VOL2.V2PR: New power resource
> [    0.168209] ACPI: \_SB_.PC00.VMD0.VOL3.V3PR: New power resource
> [    0.170603] ACPI: \_TZ_.FN00: New power resource
> [    0.170636] ACPI: \_TZ_.FN01: New power resource
> [    0.170668] ACPI: \_TZ_.FN02: New power resource
> [    0.170699] ACPI: \_TZ_.FN03: New power resource
> [    0.170728] ACPI: \_TZ_.FN04: New power resource
> [    0.171064] ACPI: \PIN_: New power resource
> [    0.171246] ACPI: PCI Root Bridge [PC00] (domain 0000 [bus 00-fe])
> [    0.171251] acpi PNP0A08:00: _OSC: OS supports [ExtendedConfig ASPM Cl=
ockPM Segments MSI HPX-Type3]
> [    0.173273] acpi PNP0A08:00: _OSC: OS now controls [PCIeHotplug SHPCHo=
tplug PME AER PCIeCapability LTR]
> [    0.173295] acpi PNP0A08:00: [Firmware Info]: ECAM [mem 0xc0000000-0xc=
02fffff] for domain 0000 [bus 00-02] only partially covers this bridge
> [    0.175742] PCI host bridge to bus 0000:00
> [    0.175744] pci_bus 0000:00: root bus resource [io  0x0000-0x0cf7 wind=
ow]
> [    0.175746] pci_bus 0000:00: root bus resource [io  0x0d00-0xffff wind=
ow]
> [    0.175748] pci_bus 0000:00: root bus resource [mem 0x000a0000-0x000bf=
fff window]
> [    0.175749] pci_bus 0000:00: root bus resource [mem 0x50400000-0xbffff=
fff window]
> [    0.175751] pci_bus 0000:00: root bus resource [mem 0x4000000000-0x7ff=
fffffff window]
> [    0.175753] pci_bus 0000:00: root bus resource [bus 00-fe]
> [    0.175839] pci 0000:00:00.0: [8086:9a14] type 00 class 0x060000 conve=
ntional PCI endpoint
> [    0.175954] pci 0000:00:02.0: [8086:9a49] type 00 class 0x030000 PCIe =
Root Complex Integrated Endpoint
> [    0.175963] pci 0000:00:02.0: BAR 0 [mem 0x6014000000-0x6014ffffff 64b=
it]
> [    0.175969] pci 0000:00:02.0: BAR 2 [mem 0x4000000000-0x400fffffff 64b=
it pref]
> [    0.175974] pci 0000:00:02.0: BAR 4 [io  0x5000-0x503f]
> [    0.175988] pci 0000:00:02.0: DMAR: Skip IOMMU disabling for graphics
> [    0.175991] pci 0000:00:02.0: Video device with shadowed ROM at [mem 0=
x000c0000-0x000dffff]
> [    0.176017] pci 0000:00:02.0: VF BAR 0 [mem 0x00000000-0x00ffffff 64bi=
t]
> [    0.176019] pci 0000:00:02.0: VF BAR 0 [mem 0x00000000-0x06ffffff 64bi=
t]: contains BAR 0 for 7 VFs
> [    0.176024] pci 0000:00:02.0: VF BAR 2 [mem 0x00000000-0x1fffffff 64bi=
t pref]
> [    0.176025] pci 0000:00:02.0: VF BAR 2 [mem 0x00000000-0xdfffffff 64bi=
t pref]: contains BAR 2 for 7 VFs
> [    0.176136] pci 0000:00:04.0: [8086:9a03] type 00 class 0x118000 conve=
ntional PCI endpoint
> [    0.176154] pci 0000:00:04.0: BAR 0 [mem 0x6015200000-0x601521ffff 64b=
it]
> [    0.176361] pci 0000:00:06.0: [8086:09ab] type 00 class 0x088000 conve=
ntional PCI endpoint
> [    0.176638] pci 0000:00:08.0: [8086:9a11] type 00 class 0x088000 conve=
ntional PCI endpoint
> [    0.176648] pci 0000:00:08.0: BAR 0 [mem 0x6015238000-0x6015238fff 64b=
it]
> [    0.176722] pci 0000:00:0a.0: [8086:9a0d] type 00 class 0x118000 PCIe =
Root Complex Integrated Endpoint
> [    0.176730] pci 0000:00:0a.0: BAR 0 [mem 0x6015220000-0x6015227fff 64b=
it]
> [    0.176750] pci 0000:00:0a.0: enabling Extended Tags
> [    0.176842] pci 0000:00:0e.0: [8086:9a0b] type 00 class 0x010400 PCIe =
Root Complex Integrated Endpoint
> [    0.176855] pci 0000:00:0e.0: BAR 0 [mem 0x6012000000-0x6013ffffff 64b=
it]
> [    0.176862] pci 0000:00:0e.0: BAR 2 [mem 0x52000000-0x53ffffff]
> [    0.176876] pci 0000:00:0e.0: BAR 4 [mem 0x6015100000-0x60151fffff 64b=
it]
> [    0.177107] pci 0000:00:14.0: [8086:a0ed] type 00 class 0x0c0330 conve=
ntional PCI endpoint
> [    0.177129] pci 0000:00:14.0: BAR 0 [mem 0x55180000-0x5518ffff 64bit]
> [    0.177215] pci 0000:00:14.0: PME# supported from D3hot D3cold
> [    0.177476] pci 0000:00:14.2: [8086:a0ef] type 00 class 0x050000 conve=
ntional PCI endpoint
> [    0.177499] pci 0000:00:14.2: BAR 0 [mem 0x6015230000-0x6015233fff 64b=
it]
> [    0.177515] pci 0000:00:14.2: BAR 2 [mem 0x6015237000-0x6015237fff 64b=
it]
> [    0.177659] pci 0000:00:14.3: [8086:a0f0] type 00 class 0x028000 PCIe =
Root Complex Integrated Endpoint
> [    0.177699] pci 0000:00:14.3: BAR 0 [mem 0x601522c000-0x601522ffff 64b=
it]
> [    0.177858] pci 0000:00:14.3: PME# supported from D0 D3hot D3cold
> [    0.178095] pci 0000:00:15.0: [8086:a0e8] type 00 class 0x0c8000 conve=
ntional PCI endpoint
> [    0.178169] pci 0000:00:15.0: BAR 0 [mem 0x00000000-0x00000fff 64bit]
> [    0.178475] pci 0000:00:16.0: [8086:a0e0] type 00 class 0x078000 conve=
ntional PCI endpoint
> [    0.178499] pci 0000:00:16.0: BAR 0 [mem 0x6015235000-0x6015235fff 64b=
it]
> [    0.178584] pci 0000:00:16.0: PME# supported from D3hot
> [    0.178830] pci 0000:00:17.0: [8086:09ab] type 00 class 0x088000 conve=
ntional PCI endpoint
> [    0.179047] pci 0000:00:1c.0: [8086:a0bc] type 01 class 0x060400 PCIe =
Root Port
> [    0.179075] pci 0000:00:1c.0: PCI bridge to [bus 01]
> [    0.179080] pci 0000:00:1c.0:   bridge window [io  0x4000-0x4fff]
> [    0.179083] pci 0000:00:1c.0:   bridge window [mem 0x54000000-0x54ffff=
ff]
> [    0.179093] pci 0000:00:1c.0:   bridge window [mem 0x6000000000-0x6011=
ffffff 64bit pref]
> [    0.179167] pci 0000:00:1c.0: PME# supported from D0 D3hot D3cold
> [    0.179201] pci 0000:00:1c.0: PTM enabled (root), 4ns granularity
> [    0.179578] pci 0000:00:1d.0: [8086:09ab] type 00 class 0x088000 conve=
ntional PCI endpoint
> [    0.179903] pci 0000:00:1d.3: [8086:a0b3] type 01 class 0x060400 PCIe =
Root Port
> [    0.179931] pci 0000:00:1d.3: PCI bridge to [bus 02]
> [    0.179935] pci 0000:00:1d.3:   bridge window [io  0x3000-0x3fff]
> [    0.179939] pci 0000:00:1d.3:   bridge window [mem 0x55000000-0x550fff=
ff]
> [    0.180021] pci 0000:00:1d.3: PME# supported from D0 D3hot D3cold
> [    0.180058] pci 0000:00:1d.3: PTM enabled (root), 4ns granularity
> [    0.180428] pci 0000:00:1f.0: [8086:a082] type 00 class 0x060100 conve=
ntional PCI endpoint
> [    0.180683] pci 0000:00:1f.3: [8086:a0c8] type 00 class 0x040100 conve=
ntional PCI endpoint
> [    0.180726] pci 0000:00:1f.3: BAR 0 [mem 0x6015228000-0x601522bfff 64b=
it]
> [    0.180780] pci 0000:00:1f.3: BAR 4 [mem 0x6015000000-0x60150fffff 64b=
it]
> [    0.180886] pci 0000:00:1f.3: PME# supported from D3hot D3cold
> [    0.181151] pci 0000:00:1f.4: [8086:a0a3] type 00 class 0x0c0500 conve=
ntional PCI endpoint
> [    0.181177] pci 0000:00:1f.4: BAR 0 [mem 0x6015234000-0x60152340ff 64b=
it]
> [    0.181207] pci 0000:00:1f.4: BAR 4 [io  0xefa0-0xefbf]
> [    0.181363] pci 0000:00:1f.5: [8086:a0a4] type 00 class 0x0c8000 conve=
ntional PCI endpoint
> [    0.181383] pci 0000:00:1f.5: BAR 0 [mem 0xfe010000-0xfe010fff]
> [    0.181549] pci 0000:01:00.0: [10de:1f9d] type 00 class 0x030200 PCIe =
Endpoint
> [    0.181569] pci 0000:01:00.0: BAR 0 [mem 0x54000000-0x54ffffff]
> [    0.181586] pci 0000:01:00.0: BAR 1 [mem 0x6000000000-0x600fffffff 64b=
it pref]
> [    0.181603] pci 0000:01:00.0: BAR 3 [mem 0x6010000000-0x6011ffffff 64b=
it pref]
> [    0.181614] pci 0000:01:00.0: BAR 5 [io  0x4000-0x407f]
> [    0.181625] pci 0000:01:00.0: ROM [mem 0xfff80000-0xffffffff pref]
> [    0.181723] pci 0000:01:00.0: PME# supported from D0 D3hot D3cold
> [    0.181870] pci 0000:01:00.0: 31.504 Gb/s available PCIe bandwidth, li=
mited by 8.0 GT/s PCIe x4 link at 0000:00:1c.0 (capable of 252.048 Gb/s wit=
h 16.0 GT/s PCIe x16 link)
> [    0.182048] pci 0000:00:1c.0: PCI bridge to [bus 01]
> [    0.182115] pci 0000:02:00.0: [10ec:8168] type 00 class 0x020000 PCIe =
Endpoint
> [    0.182139] pci 0000:02:00.0: BAR 0 [io  0x3000-0x30ff]
> [    0.182169] pci 0000:02:00.0: BAR 2 [mem 0x55004000-0x55004fff 64bit]
> [    0.182189] pci 0000:02:00.0: BAR 4 [mem 0x55000000-0x55003fff 64bit]
> [    0.182314] pci 0000:02:00.0: supports D1 D2
> [    0.182316] pci 0000:02:00.0: PME# supported from D0 D1 D2 D3hot D3cold
> [    0.182543] pci 0000:00:1d.3: PCI bridge to [bus 02]
> [    0.189505] Low-power S0 idle used by default for system suspend
> [    0.194347] ACPI: EC: interrupt unblocked
> [    0.194349] ACPI: EC: event unblocked
> [    0.194377] ACPI: EC: EC_CMD/EC_SC=3D0x66, EC_DATA=3D0x62
> [    0.194378] ACPI: EC: GPE=3D0x6e
> [    0.194379] ACPI: \_SB_.PC00.LPCB.EC0_: Boot DSDT EC initialization co=
mplete
> [    0.194381] ACPI: \_SB_.PC00.LPCB.EC0_: EC: Used to handle transaction=
s and events
> [    0.194437] iommu: Default domain type: Translated
> [    0.194437] iommu: DMA domain TLB invalidation policy: lazy mode
> [    0.194437] pps_core: LinuxPPS API ver. 1 registered
> [    0.194437] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolf=
o Giometti <giometti@linux.it>
> [    0.194437] PTP clock support registered
> [    0.194437] EDAC MC: Ver: 3.0.0
> [    0.194437] efivars: Registered efivars operations
> [    0.194437] NetLabel: Initializing
> [    0.194437] NetLabel:  domain hash size =3D 128
> [    0.194437] NetLabel:  protocols =3D UNLABELED CIPSOv4 CALIPSO
> [    0.194437] NetLabel:  unlabeled traffic allowed by default
> [    0.194437] PCI: Using ACPI for IRQ routing
> [    0.194437] PCI: pci_cache_line_size set to 64 bytes
> [    0.194437] pci 0000:00:1f.5: BAR 0 [mem 0xfe010000-0xfe010fff]: can't=
 claim; no compatible bridge window
> [    0.194437] e820: reserve RAM buffer [mem 0x0009f000-0x0009ffff]
> [    0.194437] e820: reserve RAM buffer [mem 0x3c740000-0x3fffffff]
> [    0.194437] e820: reserve RAM buffer [mem 0x3cbd0000-0x3fffffff]
> [    0.194437] e820: reserve RAM buffer [mem 0x40d99000-0x43ffffff]
> [    0.194437] e820: reserve RAM buffer [mem 0x434af000-0x43ffffff]
> [    0.194437] e820: reserve RAM buffer [mem 0x45c00000-0x47ffffff]
> [    0.194437] e820: reserve RAM buffer [mem 0x6afc00000-0x6afffffff]
> [    0.194437] pci 0000:00:02.0: vgaarb: setting as boot VGA device
> [    0.194437] pci 0000:00:02.0: vgaarb: bridge control possible
> [    0.194437] pci 0000:00:02.0: vgaarb: VGA device added: decodes=3Dio+m=
em,owns=3Dio+mem,locks=3Dnone
> [    0.194437] vgaarb: loaded
> [    0.194437] clocksource: Switched to clocksource tsc-early
> [    0.194437] VFS: Disk quotas dquot_6.6.0
> [    0.194437] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 by=
tes)
> [    0.194437] AppArmor: AppArmor Filesystem Enabled
> [    0.194437] pnp: PnP ACPI init
> [    0.194437] system 00:00: [io  0x0680-0x069f] has been reserved
> [    0.194437] system 00:00: [io  0x164e-0x164f] has been reserved
> [    0.194437] system 00:00: [io  0xfd60-0xfd63] has been reserved
> [    0.194437] system 00:02: [io  0x1854-0x1857] has been reserved
> [    0.194437] pnp 00:04: disabling [mem 0xc0000000-0xcfffffff] because i=
t overlaps 0000:00:02.0 BAR 9 [mem 0x00000000-0xdfffffff 64bit pref]
> [    0.194437] system 00:04: [mem 0xfedc0000-0xfedc7fff] has been reserved
> [    0.194437] system 00:04: [mem 0xfeda0000-0xfeda0fff] has been reserved
> [    0.194437] system 00:04: [mem 0xfeda1000-0xfeda1fff] has been reserved
> [    0.194437] system 00:04: [mem 0xfed20000-0xfed7ffff] could not be res=
erved
> [    0.194437] system 00:04: [mem 0xfed90000-0xfed93fff] could not be res=
erved
> [    0.194437] system 00:04: [mem 0xfed45000-0xfed8ffff] could not be res=
erved
> [    0.194437] system 00:04: [mem 0xfee00000-0xfeefffff] has been reserved
> [    0.194437] system 00:05: [io  0x1800-0x18fe] could not be reserved
> [    0.194437] system 00:05: [mem 0xfe000000-0xfe01ffff] could not be res=
erved
> [    0.194437] system 00:05: [mem 0xfe04c000-0xfe04ffff] has been reserved
> [    0.194437] system 00:05: [mem 0xfe050000-0xfe0affff] has been reserved
> [    0.194437] system 00:05: [mem 0xfe0d0000-0xfe0fffff] has been reserved
> [    0.194437] system 00:05: [mem 0xfe200000-0xfe7fffff] has been reserved
> [    0.194437] system 00:05: [mem 0xff000000-0xffffffff] has been reserved
> [    0.194437] system 00:05: [mem 0xfd000000-0xfd68ffff] has been reserved
> [    0.194437] system 00:05: [mem 0xfd6b0000-0xfd6cffff] has been reserved
> [    0.194437] system 00:05: [mem 0xfd6f0000-0xfdffffff] has been reserved
> [    0.194597] system 00:06: [io  0x2000-0x20fe] has been reserved
> [    0.194946] pnp: PnP ACPI: found 8 devices
> [    0.200093] clocksource: acpi_pm: mask: 0xffffff max_cycles: 0xffffff,=
 max_idle_ns: 2085701024 ns
> [    0.200127] NET: Registered PF_INET protocol family
> [    0.200266] IP idents hash table entries: 262144 (order: 9, 2097152 by=
tes, linear)
> [    0.208540] tcp_listen_portaddr_hash hash table entries: 16384 (order:=
 6, 262144 bytes, linear)
> [    0.208565] Table-perturb hash table entries: 65536 (order: 6, 262144 =
bytes, linear)
> [    0.208688] TCP established hash table entries: 262144 (order: 9, 2097=
152 bytes, linear)
> [    0.208934] TCP bind hash table entries: 65536 (order: 9, 2097152 byte=
s, linear)
> [    0.209085] TCP: Hash tables configured (established 262144 bind 65536)
> [    0.209169] MPTCP token hash table entries: 32768 (order: 7, 786432 by=
tes, linear)
> [    0.209228] UDP hash table entries: 16384 (order: 7, 524288 bytes, lin=
ear)
> [    0.209284] UDP-Lite hash table entries: 16384 (order: 7, 524288 bytes=
, linear)
> [    0.209337] NET: Registered PF_UNIX/PF_LOCAL protocol family
> [    0.209345] NET: Registered PF_XDP protocol family
> [    0.209351] pci 0000:01:00.0: ROM [mem 0xfff80000-0xffffffff pref]: ca=
n't claim; no compatible bridge window
> [    0.209357] pci_bus 0000:00: max bus depth: 1 pci_try_num: 2
> [    0.209366] pci 0000:00:02.0: VF BAR 2 [mem 0x4020000000-0x40ffffffff =
64bit pref]: assigned
> [    0.209371] pci 0000:00:02.0: VF BAR 0 [mem 0x4010000000-0x4016ffffff =
64bit]: assigned
> [    0.209373] pci 0000:00:15.0: BAR 0 [mem 0x4017000000-0x4017000fff 64b=
it]: assigned
> [    0.209431] pci 0000:00:1f.5: BAR 0 [mem 0x50400000-0x50400fff]: assig=
ned
> [    0.209443] pci 0000:01:00.0: ROM [mem size 0x00080000 pref]: can't as=
sign; no space
> [    0.209445] pci 0000:01:00.0: ROM [mem size 0x00080000 pref]: failed t=
o assign
> [    0.209447] pci 0000:00:1c.0: PCI bridge to [bus 01]
> [    0.209450] pci 0000:00:1c.0:   bridge window [io  0x4000-0x4fff]
> [    0.209454] pci 0000:00:1c.0:   bridge window [mem 0x54000000-0x54ffff=
ff]
> [    0.209458] pci 0000:00:1c.0:   bridge window [mem 0x6000000000-0x6011=
ffffff 64bit pref]
> [    0.209463] pci 0000:00:1d.3: PCI bridge to [bus 02]
> [    0.209466] pci 0000:00:1d.3:   bridge window [io  0x3000-0x3fff]
> [    0.209470] pci 0000:00:1d.3:   bridge window [mem 0x55000000-0x550fff=
ff]
> [    0.209477] pci_bus 0000:00: resource 4 [io  0x0000-0x0cf7 window]
> [    0.209479] pci_bus 0000:00: resource 5 [io  0x0d00-0xffff window]
> [    0.209480] pci_bus 0000:00: resource 6 [mem 0x000a0000-0x000bffff win=
dow]
> [    0.209482] pci_bus 0000:00: resource 7 [mem 0x50400000-0xbfffffff win=
dow]
> [    0.209483] pci_bus 0000:00: resource 8 [mem 0x4000000000-0x7fffffffff=
 window]
> [    0.209485] pci_bus 0000:01: resource 0 [io  0x4000-0x4fff]
> [    0.209487] pci_bus 0000:01: resource 1 [mem 0x54000000-0x54ffffff]
> [    0.209488] pci_bus 0000:01: resource 2 [mem 0x6000000000-0x6011ffffff=
 64bit pref]
> [    0.209490] pci_bus 0000:02: resource 0 [io  0x3000-0x3fff]
> [    0.209491] pci_bus 0000:02: resource 1 [mem 0x55000000-0x550fffff]
> [    0.211722] PCI: CLS 64 bytes, default 64
> [    0.211761] PCI-DMA: Using software bounce buffering for IO (SWIOTLB)
> [    0.211762] software IO TLB: mapped [mem 0x0000000037ebd000-0x00000000=
3bebd000] (64MB)
> [    0.211784] Trying to unpack rootfs image as initramfs...
> [    0.211786] clocksource: tsc: mask: 0xffffffffffffffff max_cycles: 0x2=
cd5a8bb032, max_idle_ns: 440795365915 ns
> [    0.211822] clocksource: Switched to clocksource tsc
> [    0.212075] Initialise system trusted keyrings
> [    0.212084] Key type blacklist registered
> [    0.212104] workingset: timestamp_bits=3D36 max_order=3D23 bucket_orde=
r=3D0
> [    0.212109] zbud: loaded
> [    0.212241] integrity: Platform Keyring initialized
> [    0.212245] integrity: Machine keyring initialized
> [    0.218915] Key type asymmetric registered
> [    0.218920] Asymmetric key parser 'x509' registered
> [    0.539172] Freeing initrd memory: 78320K
> [    0.541770] Block layer SCSI generic (bsg) driver version 0.4 loaded (=
major 247)
> [    0.541795] io scheduler mq-deadline registered
> [    0.544163] pcieport 0000:00:1c.0: PME: Signaling with IRQ 120
> [    0.544228] pcieport 0000:00:1c.0: AER: enabled with IRQ 120
> [    0.544263] pcieport 0000:00:1c.0: DPC: enabled with IRQ 120
> [    0.544265] pcieport 0000:00:1c.0: DPC: error containment capabilities=
: Int Msg #0, RPExt+ PoisonedTLP+ SwTrigger+ RP PIO Log 4, DL_ActiveErr+
> [    0.544488] pcieport 0000:00:1d.3: PME: Signaling with IRQ 121
> [    0.544542] pcieport 0000:00:1d.3: AER: enabled with IRQ 121
> [    0.544568] pcieport 0000:00:1d.3: DPC: enabled with IRQ 121
> [    0.544569] pcieport 0000:00:1d.3: DPC: error containment capabilities=
: Int Msg #0, RPExt+ PoisonedTLP+ SwTrigger+ RP PIO Log 4, DL_ActiveErr+
> [    0.544653] shpchp: Standard Hot Plug PCI Controller Driver version: 0=
=2E4
> [    0.544760] Monitor-Mwait will be used to enter C-1 state
> [    0.544765] Monitor-Mwait will be used to enter C-2 state
> [    0.544769] Monitor-Mwait will be used to enter C-3 state
> [    0.544771] ACPI: \_SB_.PR00: Found 3 idle states
> [    0.546632] thermal LNXTHERM:00: registered as thermal_zone0
> [    0.546635] ACPI: thermal: Thermal Zone [TZ00] (54 C)
> [    0.546767] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
> [    0.547183] hpet_acpi_add: no address or irqs in _CRS
> [    0.547203] Linux agpgart interface v0.103
> [    0.577513] tpm tpm0: tpm_read_log_acpi: Failed to map ACPI memory
> [    0.578308] i8042: PNP: PS/2 Controller [PNP0303:PS2K] at 0x60,0x64 ir=
q 1
> [    0.578312] i8042: PNP: PS/2 appears to have AUX port disabled, if thi=
s is incorrect please boot with i8042.nopnp
> [    0.578765] serio: i8042 KBD port at 0x60,0x64 irq 1
> [    0.578920] mousedev: PS/2 mouse device common for all mice
> [    0.578930] rtc_cmos 00:01: RTC can wake from S4
> [    0.579828] rtc_cmos 00:01: registered as rtc0
> [    0.580004] rtc_cmos 00:01: setting system clock to 2024-08-15T05:15:4=
5 UTC (1723698945)
> [    0.580028] rtc_cmos 00:01: alarms up to one month, y3k, 242 bytes nvr=
am
> [    0.580354] intel_pstate: Intel P-state driver initializing
> [    0.581118] intel_pstate: HWP enabled
> [    0.581151] ledtrig-cpu: registered to indicate activity on CPUs
> [    0.581280] efifb: probing for efifb
> [    0.581290] efifb: framebuffer at 0x4000000000, using 8128k, total 812=
8k
> [    0.581292] efifb: mode is 1920x1080x32, linelength=3D7680, pages=3D1
> [    0.581294] efifb: scrolling: redraw
> [    0.581294] efifb: Truecolor: size=3D8:8:8:8, shift=3D24:16:8:0
> [    0.581346] Console: switching to colour frame buffer device 240x67
> [    0.583825] fb0: EFI VGA frame buffer device
> [    0.584085] NET: Registered PF_INET6 protocol family
> [    0.586974] Segment Routing with IPv6
> [    0.586990] In-situ OAM (IOAM) with IPv6
> [    0.587014] mip6: Mobile IPv6
> [    0.587020] NET: Registered PF_PACKET protocol family
> [    0.587046] mpls_gso: MPLS GSO support
> [    0.587950] ENERGY_PERF_BIAS: Set to 'normal', was 'performance'
> [    0.588024] microcode: Current revision: 0x000000b6
> [    0.588035] microcode: Updated early from: 0x000000aa
> [    0.593579] resctrl: L2 allocation detected
> [    0.593600] IPI shorthand broadcast: enabled
> [    0.594180] sched_clock: Marking stable (586823051, 6723299)->(6185757=
62, -25029412)
> [    0.594273] Timer migration: 1 hierarchy levels; 8 children per group;=
 1 crossnode level
> [    0.595021] registered taskstats version 1
> [    0.595085] Loading compiled-in X.509 certificates
> [    0.613230] Loaded X.509 cert 'Build time autogenerated kernel key: cf=
a62fccb59dbcacbb9cb81569b455badb2b2b1d'
> [    0.614383] Demotion targets for Node 0: null
> [    0.614564] Key type .fscrypt registered
> [    0.614573] Key type fscrypt-provisioning registered
> [    0.625990] Key type encrypted registered
> [    0.626007] AppArmor: AppArmor sha256 policy hashing enabled
> [    0.626701] ima: Allocated hash algorithm: sha256
> [    0.668212] ima: No architecture policies found
> [    0.668281] evm: Initialising EVM extended attributes:
> [    0.668298] evm: security.selinux
> [    0.668310] evm: security.SMACK64 (disabled)
> [    0.668325] evm: security.SMACK64EXEC (disabled)
> [    0.668339] evm: security.SMACK64TRANSMUTE (disabled)
> [    0.668355] evm: security.SMACK64MMAP (disabled)
> [    0.668370] evm: security.apparmor
> [    0.668382] evm: security.ima
> [    0.668393] evm: security.capability
> [    0.668405] evm: HMAC attrs: 0x1
> [    0.690808] input: AT Translated Set 2 keyboard as /devices/platform/i=
8042/serio0/input/input0
> [    0.758093] clk: Disabling unused clocks
> [    0.758105] PM: genpd: Disabling unused power domains
> [    0.762580] Freeing unused decrypted memory: 2028K
> [    0.763088] Freeing unused kernel image (initmem) memory: 4020K
> [    0.763109] Write protecting the kernel read-only data: 28672k
> [    0.763678] Freeing unused kernel image (rodata/data gap) memory: 1420K
> [    0.769387] x86/mm: Checked W+X mappings: passed, no W+X pages found.
> [    0.770115] Run /init as init process
> [    0.770841]   with arguments:
> [    0.771549]     /init
> [    0.772258]   with environment:
> [    0.772964]     HOME=3D/
> [    0.773668]     TERM=3Dlinux
> [    0.774368]     BOOT_IMAGE=3D/boot/vmlinuz-6.10.5
> [    0.856850] wmi_bus wmi_bus-PNP0C14:02: [Firmware Info]: B7F3CA0A-ACDC=
-42D2-9217-77C6C628FBD2 has zero instances
> [    0.857929] wmi_bus wmi_bus-PNP0C14:02: [Firmware Bug]: WQAE data bloc=
k query control method not found
> [    0.922120] vmd 0000:00:0e.0: PCI host bridge to bus 10000:e0
> [    0.923605] pci_bus 10000:e0: root bus resource [bus e0-ff]
> [    0.925043] pci_bus 10000:e0: root bus resource [mem 0x52000000-0x53ff=
ffff]
> [    0.926236] pci_bus 10000:e0: root bus resource [mem 0x6015102000-0x60=
151fffff 64bit]
> [    0.927456] pci 10000:e0:06.0: [8086:9a09] type 01 class 0x060400 PCIe=
 Root Port
> [    0.928599] pci 10000:e0:06.0: PCI bridge to [bus e1]
> [    0.929732] pci 10000:e0:06.0:   bridge window [io  0x0000-0x0fff]
> [    0.930918] pci 10000:e0:06.0:   bridge window [mem 0x52100000-0x521ff=
fff]
> [    0.932234] pci 10000:e0:06.0: PME# supported from D0 D3hot D3cold
> [    0.933382] pci 10000:e0:06.0: PTM enabled (root), 4ns granularity
> [    0.934966] pci 10000:e0:17.0: [8086:a0d3] type 00 class 0x010601 conv=
entional PCI endpoint
> [    0.936112] pci 10000:e0:17.0: BAR 0 [mem 0x00000000-0x00001fff]
> [    0.937234] pci 10000:e0:17.0: BAR 1 [mem 0x00000000-0x000000ff]
> [    0.938419] pci 10000:e0:17.0: BAR 2 [io  0x0000-0x0007]
> [    0.939543] pci 10000:e0:17.0: BAR 3 [io  0x0000-0x0003]
> [    0.940550] pci 10000:e0:17.0: BAR 4 [io  0x0000-0x001f]
> [    0.941372] pci 10000:e0:17.0: BAR 5 [mem 0x52000000-0x520007ff]
> [    0.942574] pci 10000:e0:17.0: PME# supported from D3hot
> [    0.944142] pci 10000:e0:1d.0: [8086:a0b0] type 01 class 0x060400 PCIe=
 Root Port
> [    0.945261] pci 10000:e0:1d.0: PCI bridge to [bus e2]
> [    0.946320] pci 10000:e0:1d.0:   bridge window [io  0x0000-0x0fff]
> [    0.947449] pci 10000:e0:1d.0:   bridge window [mem 0x52200000-0x522ff=
fff]
> [    0.948668] pci 10000:e0:1d.0: PME# supported from D0 D3hot D3cold
> [    0.949834] pci 10000:e0:1d.0: PTM enabled (root), 4ns granularity
> [    0.951082] pci 10000:e0:06.0: Primary bus is hard wired to 0
> [    0.952174] pci 10000:e1:00.0: [1e95:1007] type 00 class 0x010802 PCIe=
 Endpoint
> [    0.953253] pci 10000:e1:00.0: BAR 0 [mem 0x52100000-0x52103fff 64bit]
> [    0.954600] pci 10000:e0:06.0: PCI bridge to [bus e1]
> [    0.955675] pci 10000:e0:1d.0: Primary bus is hard wired to 0
> [    0.956781] pci 10000:e2:00.0: [15b7:5003] type 00 class 0x010802 PCIe=
 Endpoint
> [    0.957853] pci 10000:e2:00.0: BAR 0 [mem 0x52200000-0x52203fff 64bit]
> [    0.964828] pci 10000:e0:1d.0: PCI bridge to [bus e2]
> [    0.965876] pci 10000:e0:06.0: Primary bus is hard wired to 0
> [    0.966873] pci 10000:e0:1d.0: Primary bus is hard wired to 0
> [    0.969284] ACPI: bus type drm_connector registered
> [    0.986910] ACPI: bus type USB registered
> [    0.987894] usbcore: registered new interface driver usbfs
> [    0.988823] usbcore: registered new interface driver hub
> [    0.989757] usbcore: registered new device driver usb
> [    1.021767] xhci_hcd 0000:00:14.0: xHCI Host Controller
> [    1.022702] xhci_hcd 0000:00:14.0: new USB bus registered, assigned bu=
s number 1
> [    1.024804] xhci_hcd 0000:00:14.0: hcc params 0x20007fc1 hci version 0=
x120 quirks 0x0000100200009810
> [    1.027084] xhci_hcd 0000:00:14.0: xHCI Host Controller
> [    1.028178] xhci_hcd 0000:00:14.0: new USB bus registered, assigned bu=
s number 2
> [    1.029261] xhci_hcd 0000:00:14.0: Host supports USB 3.1 Enhanced Supe=
rSpeed
> [    1.030429] usb usb1: New USB device found, idVendor=3D1d6b, idProduct=
=3D0002, bcdDevice=3D 6.10
> [    1.031629] usb usb1: New USB device strings: Mfr=3D3, Product=3D2, Se=
rialNumber=3D1
> [    1.032742] usb usb1: Product: xHCI Host Controller
> [    1.033911] usb usb1: Manufacturer: Linux 6.10.5 xhci-hcd
> [    1.035087] usb usb1: SerialNumber: 0000:00:14.0
> [    1.036557] hub 1-0:1.0: USB hub found
> [    1.037679] hub 1-0:1.0: 12 ports detected
> [    1.040522] usb usb2: New USB device found, idVendor=3D1d6b, idProduct=
=3D0003, bcdDevice=3D 6.10
> [    1.041654] usb usb2: New USB device strings: Mfr=3D3, Product=3D2, Se=
rialNumber=3D1
> [    1.042761] usb usb2: Product: xHCI Host Controller
> [    1.043868] usb usb2: Manufacturer: Linux 6.10.5 xhci-hcd
> [    1.044981] usb usb2: SerialNumber: 0000:00:14.0
> [    1.046309] hub 2-0:1.0: USB hub found
> [    1.047362] hub 2-0:1.0: 4 ports detected
> [    1.142831] pci 10000:e0:06.0: bridge window [mem 0x52000000-0x520ffff=
f]: assigned
> [    1.143912] pci 10000:e0:1d.0: bridge window [mem 0x52100000-0x521ffff=
f]: assigned
> [    1.144949] pci 10000:e0:17.0: BAR 0 [mem 0x52200000-0x52201fff]: assi=
gned
> [    1.146009] pci 10000:e0:06.0: bridge window [io  size 0x1000]: can't =
assign; no space
> [    1.147142] pci 10000:e0:06.0: bridge window [io  size 0x1000]: failed=
 to assign
> [    1.148211] pci 10000:e0:1d.0: bridge window [io  size 0x1000]: can't =
assign; no space
> [    1.149271] pci 10000:e0:1d.0: bridge window [io  size 0x1000]: failed=
 to assign
> [    1.150323] pci 10000:e0:17.0: BAR 5 [mem 0x52202000-0x522027ff]: assi=
gned
> [    1.151437] pci 10000:e0:17.0: BAR 1 [mem 0x52202800-0x522028ff]: assi=
gned
> [    1.152462] pci 10000:e0:17.0: BAR 4 [io  size 0x0020]: can't assign; =
no space
> [    1.153501] pci 10000:e0:17.0: BAR 4 [io  size 0x0020]: failed to assi=
gn
> [    1.154541] pci 10000:e0:17.0: BAR 2 [io  size 0x0008]: can't assign; =
no space
> [    1.155658] pci 10000:e0:17.0: BAR 2 [io  size 0x0008]: failed to assi=
gn
> [    1.156679] pci 10000:e0:17.0: BAR 3 [io  size 0x0004]: can't assign; =
no space
> [    1.157683] pci 10000:e0:17.0: BAR 3 [io  size 0x0004]: failed to assi=
gn
> [    1.158798] pci 10000:e1:00.0: BAR 0 [mem 0x52000000-0x52003fff 64bit]=
: assigned
> [    1.159822] pci 10000:e0:06.0: PCI bridge to [bus e1]
> [    1.160837] pci 10000:e0:06.0:   bridge window [mem 0x52000000-0x520ff=
fff]
> [    1.161858] pci 10000:e2:00.0: BAR 0 [mem 0x52100000-0x52103fff 64bit]=
: assigned
> [    1.162916] pci 10000:e0:1d.0: PCI bridge to [bus e2]
> [    1.163944] pci 10000:e0:1d.0:   bridge window [mem 0x52100000-0x521ff=
fff]
> [    1.165003] pci 10000:e1:00.0: VMD: Default LTR value set by driver
> [    1.166098] pci 10000:e2:00.0: VMD: Default LTR value set by driver
> [    1.167207] pcieport 10000:e0:06.0: can't derive routing for PCI INT D
> [    1.168247] pcieport 10000:e0:06.0: PCI INT D: no GSI
> [    1.169358] pcieport 10000:e0:06.0: PME: Signaling with IRQ 149
> [    1.170638] pcieport 10000:e0:06.0: AER: enabled with IRQ 149
> [    1.171880] pcieport 10000:e0:06.0: DPC: enabled with IRQ 149
> [    1.172920] pcieport 10000:e0:06.0: DPC: error containment capabilitie=
s: Int Msg #0, RPExt+ PoisonedTLP+ SwTrigger+ RP PIO Log 4, DL_ActiveErr+
> [    1.174059] pcieport 10000:e0:1d.0: can't derive routing for PCI INT A
> [    1.175151] pcieport 10000:e0:1d.0: PCI INT A: no GSI
> [    1.176320] pcieport 10000:e0:1d.0: PME: Signaling with IRQ 150
> [    1.177637] pcieport 10000:e0:1d.0: AER: enabled with IRQ 150
> [    1.179015] pcieport 10000:e0:1d.0: DPC: enabled with IRQ 150
> [    1.179733] pcieport 10000:e0:1d.0: DPC: error containment capabilitie=
s: Int Msg #0, RPExt+ PoisonedTLP+ SwTrigger+ RP PIO Log 4, DL_ActiveErr+
> [    1.180580] vmd 0000:00:0e.0: Bound to PCI domain 10000
> [    1.217547] nvme nvme0: pci function 10000:e1:00.0
> [    1.217548] nvme nvme1: pci function 10000:e2:00.0
> [    1.217565] pcieport 10000:e0:1d.0: can't derive routing for PCI INT A
> [    1.218502] pcieport 10000:e0:06.0: can't derive routing for PCI INT A
> [    1.219417] nvme 10000:e2:00.0: PCI INT A: no GSI
> [    1.220130] nvme 10000:e1:00.0: PCI INT A: not connected
> [    1.229278] nvme nvme1: 8/0/0 default/read/poll queues
> [    1.233124]  nvme1n1: p1 p2 p3 p4
> [    1.238874] nvme nvme0: allocated 64 MiB host memory buffer.
> [    1.252827] nvme nvme0: 8/0/0 default/read/poll queues
> [    1.268907]  nvme0n1: p1
> [    1.302734] usb 1-1: new full-speed USB device number 2 using xhci_hcd
> [    1.462741] usb 1-1: New USB device found, idVendor=3D08f2, idProduct=
=3D6811, bcdDevice=3D20.23
> [    1.463825] usb 1-1: New USB device strings: Mfr=3D1, Product=3D2, Ser=
ialNumber=3D3
> [    1.464882] usb 1-1: Product: T505 Graphic Tablet
> [    1.465950] usb 1-1: Manufacturer: SZ PING-IT INC.=20
> [    1.467042] usb 1-1: SerialNumber: Internal CDROM!
> [    1.484245] hid: raw HID events driver (C) Jiri Kosina
> [    1.517180] usbcore: registered new interface driver usbhid
> [    1.517901] usbhid: USB HID core driver
> [    1.523978] input: SZ PING-IT INC.  T505 Graphic Tablet as /devices/pc=
i0000:00/0000:00:14.0/usb1/1-1/1-1:1.1/0003:08F2:6811.0001/input/input1
> [    1.524788] input: SZ PING-IT INC.  T505 Graphic Tablet Mouse as /devi=
ces/pci0000:00/0000:00:14.0/usb1/1-1/1-1:1.1/0003:08F2:6811.0001/input/inpu=
t2
> [    1.525601] input: SZ PING-IT INC.  T505 Graphic Tablet as /devices/pc=
i0000:00/0000:00:14.0/usb1/1-1/1-1:1.1/0003:08F2:6811.0001/input/input3
> [    1.526433] hid-generic 0003:08F2:6811.0001: input,hiddev0,hidraw0: US=
B HID v1.10 Mouse [SZ PING-IT INC.  T505 Graphic Tablet] on usb-0000:00:14.=
0-1/input1
> [    1.527376] input: SZ PING-IT INC.  T505 Graphic Tablet as /devices/pc=
i0000:00/0000:00:14.0/usb1/1-1/1-1:1.2/0003:08F2:6811.0002/input/input4
> [    1.587210] input: SZ PING-IT INC.  T505 Graphic Tablet Keyboard as /d=
evices/pci0000:00/0000:00:14.0/usb1/1-1/1-1:1.2/0003:08F2:6811.0002/input/i=
nput5
> [    1.588110] input: SZ PING-IT INC.  T505 Graphic Tablet as /devices/pc=
i0000:00/0000:00:14.0/usb1/1-1/1-1:1.2/0003:08F2:6811.0002/input/input6
> [    1.588994] hid-generic 0003:08F2:6811.0002: input,hiddev1,hidraw1: US=
B HID v1.10 Keyboard [SZ PING-IT INC.  T505 Graphic Tablet] on usb-0000:00:=
14.0-1/input2
> [    1.602747] usb 1-2: new full-speed USB device number 3 using xhci_hcd
> [    1.751690] usb 1-2: New USB device found, idVendor=3D0c76, idProduct=
=3D1733, bcdDevice=3D 1.00
> [    1.752491] usb 1-2: New USB device strings: Mfr=3D0, Product=3D1, Ser=
ialNumber=3D0
> [    1.753290] usb 1-2: Product: H710 Audio Device
> [    1.755144] input: H710 Audio Device as /devices/pci0000:00/0000:00:14=
=2E0/usb1/1-2/1-2:1.3/0003:0C76:1733.0003/input/input7
> [    1.814878] hid-generic 0003:0C76:1733.0003: input,hidraw2: USB HID v1=
=2E00 Device [H710 Audio Device] on usb-0000:00:14.0-2/input3
> [    1.921131] i915 0000:00:02.0: [drm:intel_gt_common_init_early [i915]]=
 WOPCM: 2048K
> [    1.922080] i915 0000:00:02.0: [drm:intel_uc_init_early [i915]] GT0: e=
nable_guc=3D0 (guc:no submission:no huc:no slpc:no)
> [    1.923049] i915 0000:00:02.0: [drm:intel_pch_type [i915]] Found Tiger=
 Lake LP PCH
> [    1.923996] i915 0000:00:02.0: [drm:intel_gt_probe_all [i915]] GT0: Se=
tting up Primary GT
> [    1.924951] i915 0000:00:02.0: [drm:intel_uncore_init_mmio [i915]] unc=
laimed mmio detected on uncore init, clearing
> [    1.925897] i915 0000:00:02.0: [drm:i915_driver_probe [i915]] rawclk r=
ate: 19200 kHz
> [    1.927019] i915 0000:00:02.0: [drm:intel_engines_init_mmio [i915]] GT=
0: vdbox enable: 0005, instances: 0005
> [    1.927947] i915 0000:00:02.0: [drm:intel_engines_init_mmio [i915]] GT=
0: vebox enable: 0001, instances: 0001
> [    1.929225] i915 0000:00:02.0: [drm:i915_ggtt_probe_hw [i915]] GGTT si=
ze =3D 4096M
> [    1.930178] i915 0000:00:02.0: [drm:i915_ggtt_probe_hw [i915]] GMADR s=
ize =3D 256M
> [    1.931139] i915 0000:00:02.0: [drm:i915_ggtt_probe_hw [i915]] DSM siz=
e =3D 60M
> [    1.932262] Console: switching to colour dummy device 80x25
> [    1.932287] i915 0000:00:02.0: vgaarb: deactivate vga console
> [    1.932543] i915 0000:00:02.0: [drm] Using Transparent Hugepages
> [    1.932547] i915 0000:00:02.0: [drm:i915_gem_init_stolen [i915]] GEN6_=
STOLEN_RESERVED =3D 0x00000000502000c7
> [    1.932656] i915 0000:00:02.0: [drm:i915_gem_init_stolen [i915]] Memor=
y reserved for graphics device: 61440K, usable: 59392K
> [    1.932752] i915 0000:00:02.0: [drm:intel_memory_regions_hw_probe [i91=
5]] Memory region(0): system: 23805 MiB [mem 0x00000000-0x5cfdc8fff], io: n=
/a
> [    1.932836] i915 0000:00:02.0: [drm:intel_memory_regions_hw_probe [i91=
5]] Memory region(5): stolen-system: 58 MiB [mem 0x4c800000-0x501fffff], io=
: n/a
> [    1.932950] i915 0000:00:02.0: [drm:intel_opregion_setup [i915]] graph=
ic opregion physical addr: 0x45abe018
> [    1.933060] i915 0000:00:02.0: [drm:intel_opregion_setup [i915]] ACPI =
OpRegion version 2.1.0
> [    1.933159] i915 0000:00:02.0: [drm:intel_opregion_setup [i915]] Publi=
c ACPI methods supported
> [    1.933254] i915 0000:00:02.0: [drm:intel_opregion_setup [i915]] SWSCI=
 Mailbox #2 present for opregion v2.x
> [    1.933350] i915 0000:00:02.0: [drm:intel_opregion_setup [i915]] SWSCI=
 supported
> [    1.934371] i915 0000:00:02.0: [drm:intel_opregion_setup [i915]] SWSCI=
 GBDA callbacks 00000cb3, SBCB callbacks 00300583
> [    1.934462] i915 0000:00:02.0: [drm:intel_opregion_setup [i915]] ASLE =
supported
> [    1.934548] i915 0000:00:02.0: [drm:intel_opregion_setup [i915]] ASLE =
extension supported
> [    1.934637] i915 0000:00:02.0: [drm:intel_opregion_setup [i915]] Found=
 valid VBT in ACPI OpRegion (RVDA)
> [    1.934728] i915 0000:00:02.0: [drm:intel_dram_detect [i915]] Num qgv =
points 1
> [    1.934813] i915 0000:00:02.0: [drm:intel_dram_detect [i915]] DRAM cha=
nnels: 2
> [    1.934891] i915 0000:00:02.0: [drm:i915_driver_probe [i915]] Watermar=
k level 0 adjustment needed: no
> [    1.934968] i915 0000:00:02.0: [drm:icl_get_qgv_points.constprop.0 [i9=
15]] QGV 0: DCLK=3D2668 tRP=3D19 tRDPRE=3D10 tRAS=3D43 tRCD=3D19 tRC=3D62
> [    1.935070] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW0=
 / QGV 0: num_planes=3D0 deratedbw=3D11821 peakbw: 42688
> [    1.935162] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW1=
 / QGV 0: num_planes=3D2 deratedbw=3D14636 peakbw: 42688
> [    1.935249] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW2=
 / QGV 0: num_planes=3D0 deratedbw=3D16614 peakbw: 42688
> [    1.935334] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW3=
 / QGV 0: num_planes=3D0 deratedbw=3D17818 peakbw: 42688
> [    1.935417] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW4=
 / QGV 0: num_planes=3D0 deratedbw=3D18487 peakbw: 42688
> [    1.935499] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW5=
 / QGV 0: num_planes=3D0 deratedbw=3D18842 peakbw: 42688
> [    1.936199] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Set defaul=
t to SSC at 120000 kHz
> [    1.936310] i915 0000:00:02.0: [drm:intel_bios_init [i915]] VBT signat=
ure "$VBT TIGERLAKE      ", BDB version 237
> [    1.936404] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found BDB =
block 1 (size 5, min size 7)
> [    1.936492] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found BDB =
block 2 (size 356, min size 5)
> [    1.936576] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found BDB =
block 9 (size 100, min size 100)
> [    1.936658] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found BDB =
block 12 (size 19, min size 19)
> [    1.936738] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found BDB =
block 27 (size 780, min size 812)
> [    1.936819] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found BDB =
block 40 (size 30, min size 34)
> [    1.936898] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Generating=
 LFP data table pointers
> [    1.936977] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found BDB =
block 41 (size 148, min size 148)
> [    1.937056] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found BDB =
block 42 (size 1364, min size 1366)
> [    1.937135] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found BDB =
block 43 (size 273, min size 305)
> [    1.937214] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found BDB =
block 44 (size 58, min size 78)
> [    1.937292] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found BDB =
block 52 (size 822, min size 822)
> [    1.937370] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found BDB =
block 56 (size 210, min size 210)
> [    1.937448] i915 0000:00:02.0: [drm:intel_bios_init [i915]] BDB_GENERA=
L_FEATURES int_tv_support 0 int_crt_support 0 lvds_use_ssc 0 lvds_ssc_freq =
120000 display_clock_mode 0 fdi_rx_polarity_inverted 0
> [    1.937527] i915 0000:00:02.0: [drm:intel_bios_init [i915]] crt_ddc_bu=
s_pin: 2
> [    1.937605] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found VBT =
child device with type 0x1806
> [    1.937682] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found VBT =
child device with type 0x60d6
> [    1.937760] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found VBT =
child device with type 0x60d2
> [    1.937837] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found VBT =
child device with type 0x68c6
> [    1.937914] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found VBT =
child device with type 0x68c6
> [    1.937992] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Skipping S=
DVO device mapping
> [    1.938070] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port A VBT=
 info: CRT:0 DVI:0 HDMI:0 DP:1 eDP:1 DSI:0 DP++:0 LSPCON:0 USB-Type-C:0 TBT=
:0 DSC:0
> [    1.938149] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port A VBT=
 HDMI level shift: 0
> [    1.938228] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port B VBT=
 info: CRT:0 DVI:1 HDMI:1 DP:1 eDP:0 DSI:0 DP++:1 LSPCON:0 USB-Type-C:0 TBT=
:0 DSC:0
> [    1.938306] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port B VBT=
 HDMI level shift: 0
> [    1.938383] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port B VBT=
 info: CRT:0 DVI:1 HDMI:1 DP:0 eDP:0 DSI:0 DP++:0 LSPCON:0 USB-Type-C:0 TBT=
:0 DSC:0
> [    1.938461] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port B VBT=
 HDMI level shift: 0
> [    1.938538] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port B VBT=
 HDMI max TMDS clock: 297000 kHz
> [    1.938614] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port D VBT=
 info: CRT:0 DVI:0 HDMI:0 DP:1 eDP:0 DSI:0 DP++:0 LSPCON:0 USB-Type-C:1 TBT=
:1 DSC:0
> [    1.938692] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port D VBT=
 HDMI level shift: 0
> [    1.938827] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port E VBT=
 info: CRT:0 DVI:0 HDMI:0 DP:1 eDP:0 DSI:0 DP++:0 LSPCON:0 USB-Type-C:1 TBT=
:0 DSC:0
> [    1.938913] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port E VBT=
 HDMI level shift: 0
> [    1.938996] i915 0000:00:02.0: [drm:intel_power_domains_init [i915]] A=
llowed DC state mask 4000000a
> [    1.939100] i915 0000:00:02.0: [drm:gen9_set_dc_state.part.0 [i915]] S=
etting DC state from 00 to 00
> [    1.939223] i915 0000:00:02.0: [drm:check_phy_reg [i915]] Combo PHY A =
reg 001628a0 state mismatch: current 300355fc mask e0000000 expected a00000=
00
> [    1.939313] i915 0000:00:02.0: [drm:check_phy_reg [i915]] Combo PHY A =
reg 00162804 state mismatch: current 1c300004 mask 00300000 expected 000000=
00
> [    1.939416] i915 0000:00:02.0: [drm:icl_combo_phys_init [i915]] Initia=
lizing combo PHY A (Voltage/Process Info : 0.85V dot0 (low-voltage))
> [    1.939527] i915 0000:00:02.0: [drm:check_phy_reg [i915]] Combo PHY B =
reg 0006c8a0 state mismatch: current 3003501c mask e0000000 expected a00000=
00
> [    1.939614] i915 0000:00:02.0: [drm:check_phy_reg [i915]] Combo PHY B =
reg 0006c804 state mismatch: current 1c300004 mask 00300000 expected 000000=
00
> [    1.939716] i915 0000:00:02.0: [drm:icl_combo_phys_init [i915]] Initia=
lizing combo PHY B (Voltage/Process Info : 0.85V dot0 (low-voltage))
> [    1.939825] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling PW_1
> [    1.939923] i915 0000:00:02.0: [drm:intel_cdclk_init_hw [i915]] Curren=
t CDCLK 652800 kHz, VCO 1305600 kHz, ref 38400 kHz, bypass 19200 kHz, volta=
ge level 3
> [    1.940016] i915 0000:00:02.0: [drm:gen9_dbuf_slices_update [i915]] Up=
dating dbuf slices to 0x3
> [    1.940132] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling always-on
> [    1.940221] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling DC_off
> [    1.940308] i915 0000:00:02.0: [drm:gen9_set_dc_state.part.0 [i915]] S=
etting DC state from 00 to 00
> [    1.940441] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling PW_2
> [    1.940525] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling PW_3
> [    1.940611] i915 0000:00:02.0: vgaarb: VGA decodes changed: olddecodes=
=3Dio+mem,decodes=3Dio+mem:owns=3Dio+mem
> [    1.940614] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling PW_4
> [    1.940698] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling PW_5
> [    1.940800] i915 0000:00:02.0: [drm:intel_power_well_sync_hw [i915]] T=
C cold unblock succeeded
> [    1.940890] i915 0000:00:02.0: [drm:intel_dmc_init [i915]] Loading i91=
5/tgl_dmc_ver2_12.bin
> [    1.941065] i915 0000:00:02.0: [drm:dmc_load_work_fn [i915]] DMC 0:
> [    1.941151] i915 0000:00:02.0: [drm:dmc_load_work_fn [i915]]  mmio[0]:=
 0x8f074 =3D 0x86fc0
> [    1.941235] i915 0000:00:02.0: [drm:dmc_load_work_fn [i915]]  mmio[1]:=
 0x8f034 =3D 0xc003b400 (EVT_CTL)
> [    1.941317] i915 0000:00:02.0: [drm:dmc_load_work_fn [i915]]  mmio[2]:=
 0x8f004 =3D 0x1a40188 (EVT_HTP)
> [    1.941400] i915 0000:00:02.0: [drm:dmc_load_work_fn [i915]]  mmio[3]:=
 0x8f038 =3D 0xc003b200 (EVT_CTL)
> [    1.941482] i915 0000:00:02.0: [drm:dmc_load_work_fn [i915]]  mmio[4]:=
 0x8f008 =3D 0x3ebc3cc0 (EVT_HTP)
> [    1.941568] i915 0000:00:02.0: [drm:dmc_load_work_fn [i915]]  mmio[5]:=
 0x8f03c =3D 0xc0033200 (EVT_CTL) (disabling)
> [    1.941654] i915 0000:00:02.0: [drm:dmc_load_work_fn [i915]]  mmio[6]:=
 0x8f00c =3D 0x41dc41b0 (EVT_HTP)
> [    1.941738] i915 0000:00:02.0: [drm:dmc_load_work_fn [i915]]  mmio[7]:=
 0x8f040 =3D 0xc003bf00 (EVT_CTL) (disabling)
> [    1.941820] i915 0000:00:02.0: [drm:dmc_load_work_fn [i915]]  mmio[8]:=
 0x8f010 =3D 0x433442b4 (EVT_HTP)
> [    1.941902] i915 0000:00:02.0: [drm:dmc_load_work_fn [i915]] DMC 1:
> [    1.941981] i915 0000:00:02.0: [drm:dmc_load_work_fn [i915]]  mmio[0]:=
 0x92074 =3D 0x90fc0
> [    1.942060] i915 0000:00:02.0: [drm:dmc_load_work_fn [i915]]  mmio[1]:=
 0x92034 =3D 0xc003df00 (EVT_CTL) (disabling)
> [    1.942138] i915 0000:00:02.0: [drm:dmc_load_work_fn [i915]]  mmio[2]:=
 0x92004 =3D 0x1c00188 (EVT_HTP)
> [    1.942217] i915 0000:00:02.0: [drm:dmc_load_work_fn [i915]]  mmio[3]:=
 0x92038 =3D 0xc003e000 (EVT_CTL) (disabling)
> [    1.942295] i915 0000:00:02.0: [drm:dmc_load_work_fn [i915]]  mmio[4]:=
 0x92008 =3D 0x2b4027c (EVT_HTP)
> [    1.942831] i915 0000:00:02.0: [drm] Finished loading DMC firmware i91=
5/tgl_dmc_ver2_12.bin (v2.12)
> [    1.942792] i915 0000:00:02.0: [drm:intel_fbc_init [i915]] Sanitized e=
nable_fbc value: 1
> [    1.943065] i915 0000:00:02.0: [drm:skl_wm_init [i915]] SAGV supported=
: no, original SAGV block time: 11 us
> [    1.943211] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen=
9 Plane WM0 latency 3 (3.0 usec)
> [    1.943328] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen=
9 Plane WM1 latency 54 (54.0 usec)
> [    1.943439] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen=
9 Plane WM2 latency 54 (54.0 usec)
> [    1.943544] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen=
9 Plane WM3 latency 54 (54.0 usec)
> [    1.943625] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen=
9 Plane WM4 latency 54 (54.0 usec)
> [    1.943702] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen=
9 Plane WM5 latency 73 (73.0 usec)
> [    1.943778] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen=
9 Plane WM6 latency 110 (110.0 usec)
> [    1.943854] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen=
9 Plane WM7 latency 115 (115.0 usec)
> [    1.944051] i915 0000:00:02.0: [drm:intel_display_driver_probe_nogem [=
i915]] 4 display pipes available.
> [    1.944302] i915 0000:00:02.0: [drm:intel_cdclk_dump_config [i915]] Cu=
rrent CDCLK 652800 kHz, VCO 1305600 kHz, ref 38400 kHz, bypass 19200 kHz, v=
oltage level 3
> [    1.944406] i915 0000:00:02.0: [drm:intel_update_max_cdclk [i915]] Max=
 CD clock rate: 652800 kHz
> [    1.944499] i915 0000:00:02.0: [drm:intel_display_driver_probe_nogem [=
i915]] Max dotclock rate: 1305600 kHz
> [    1.944599] i915 0000:00:02.0: [drm:intel_dp_aux_ch [i915]] [ENCODER:3=
12:DDI A/PHY A] Using AUX CH A (VBT)
> [    1.944690] i915 0000:00:02.0: [drm:intel_dp_init_connector [i915]] Ad=
ding eDP connector on [ENCODER:312:DDI A/PHY A]
> [    1.945093] i915 0000:00:02.0: [drm:intel_opregion_get_panel_type [i91=
5]] Ignoring OpRegion panel type (0)
> [    1.945186] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] Pane=
l type (VBT): 2
> [    1.945280] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] Sele=
cted panel type (VBT): 2
> [    1.945369] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] DRRS=
 supported mode is seamless
> [    1.945458] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] Foun=
d panel mode in BIOS VBT legacy lfp table: "1024x768": 60 65000 1024 1048 1=
184 1344 768 771 777 806 0x8 0xa
> [    1.945546] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] VBT =
initial LVDS value 300
> [    1.945632] i915 0000:00:02.0: [drm] Panel manufacturer name: MS_, pro=
duct code: 3, serial number: 3, year of manufacture: 2002
> [    1.945634] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] Pane=
l name: LFP_PanelName
> [    1.945723] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] Seam=
less DRRS min refresh rate: 0 Hz
> [    1.945811] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] VBT =
backlight PWM modulation frequency 200 Hz, active high, min brightness 0, l=
evel 255, controller 0
> [    1.945898] i915 0000:00:02.0: [drm:intel_pps_init [i915]] [ENCODER:31=
2:DDI A/PHY A] initial power sequencer: PPS 0
> [    1.946014] i915 0000:00:02.0: [drm:pps_init_delays [i915]] bios t1_t3=
 1 t8 1 t9 1 t10 500 t11_t12 6000
> [    1.946100] i915 0000:00:02.0: [drm:pps_init_delays [i915]] vbt t1_t3 =
2000 t8 10 t9 2000 t10 500 t11_t12 6000
> [    1.946183] i915 0000:00:02.0: [drm:pps_init_delays [i915]] spec t1_t3=
 2100 t8 500 t9 500 t10 5000 t11_t12 6100
> [    1.946265] i915 0000:00:02.0: [drm:pps_init_delays [i915]] panel powe=
r up delay 200, power down delay 50, power cycle delay 600
> [    1.946345] i915 0000:00:02.0: [drm:pps_init_delays [i915]] backlight =
on delay 1, off delay 200
> [    1.946476] i915 0000:00:02.0: [drm:pps_init_registers [i915]] panel p=
ower sequencer register settings: PP_ON 0x7d00001, PP_OFF 0x1f40001, PP_DIV=
 0x60
> [    1.946610] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling AUX_A
> [    1.946732] usb 1-3: new low-speed USB device number 4 using xhci_hcd
> [    1.946722] i915 0000:00:02.0: [drm:intel_pps_vdd_on_unlocked [i915]] =
[ENCODER:312:DDI A/PHY A] PPS 0 turning VDD on
> [    1.946880] i915 0000:00:02.0: [drm:intel_pps_vdd_on_unlocked [i915]] =
[ENCODER:312:DDI A/PHY A] PPS 0 PP_STATUS: 0x80000008 PP_CONTROL: 0x0000006f
> [    1.947484] i915 0000:00:02.0: [drm:drm_dp_read_dpcd_caps [drm_display=
_helper]] AUX A/DDI A/PHY A: DPCD: 11 0a 82 41 00 00 01 c0 02 00 00 00 0f 0=
b 00
> [    1.948005] i915 0000:00:02.0: [drm:drm_dp_read_desc [drm_display_help=
er]] AUX A/DDI A/PHY A: DP sink: OUI 00-1c-f8 dev-ID  HW-rev 0.0 SW-rev 1.1=
6 quirks 0x0000
> [    1.948362] i915 0000:00:02.0: [drm:intel_dp_init_connector [i915]] eD=
P DPCD: 01 fb fd
> [    1.948805] i915 0000:00:02.0: [drm:intel_psr_init_dpcd [i915]] Panel =
replay is not supported by panel
> [    1.953852] i915 0000:00:02.0: [drm:update_display_info.part.0 [drm]] =
[CONNECTOR:313:eDP-1] Supported Monitor Refresh rate range is 48 Hz - 60 Hz
> [    1.953897] i915 0000:00:02.0: [drm:update_display_info.part.0 [drm]] =
[CONNECTOR:313:eDP-1] Assigning EDID-1.4 digital sink color depth as 8 bpc.
> [    1.953926] i915 0000:00:02.0: [drm:update_display_info.part.0 [drm]] =
[CONNECTOR:313:eDP-1] ELD monitor=20
> [    1.953952] i915 0000:00:02.0: [drm:update_display_info.part.0 [drm]] =
[CONNECTOR:313:eDP-1] ELD size 20, SAD count 0
> [    1.953988] i915 0000:00:02.0: [drm:intel_panel_add_edid_fixed_modes [=
i915]] [CONNECTOR:313:eDP-1] using preferred EDID fixed mode: "1920x1080": =
60 166010 1920 2028 2076 2120 1080 1090 1100 1304 0x48 0xa
> [    1.954101] i915 0000:00:02.0: [drm:intel_dp_wait_source_oui [i915]] [=
CONNECTOR:313:eDP-1] Performing OUI wait (30 ms)
> [    1.954568] i915 0000:00:02.0: [drm:intel_panel_init [i915]] [CONNECTO=
R:313:eDP-1] DRRS type: none
> [    1.954680] i915 0000:00:02.0: [drm:cnp_setup_backlight [i915]] [CONNE=
CTOR:313:eDP-1] Using native PCH PWM for backlight control (controller=3D0)
> [    1.954798] i915 0000:00:02.0: [drm:intel_backlight_setup [i915]] [CON=
NECTOR:313:eDP-1] backlight initialized, enabled, brightness 96000/96000
> [    1.954898] i915 0000:00:02.0: [drm:pps_init_delays [i915]] bios t1_t3=
 1 t8 1 t9 1 t10 500 t11_t12 6000
> [    1.954988] i915 0000:00:02.0: [drm:pps_init_delays [i915]] vbt t1_t3 =
2000 t8 10 t9 2000 t10 500 t11_t12 6000
> [    1.955076] i915 0000:00:02.0: [drm:pps_init_delays [i915]] spec t1_t3=
 2100 t8 500 t9 500 t10 5000 t11_t12 6100
> [    1.955164] i915 0000:00:02.0: [drm:pps_init_delays [i915]] panel powe=
r up delay 200, power down delay 50, power cycle delay 600
> [    1.955251] i915 0000:00:02.0: [drm:pps_init_delays [i915]] backlight =
on delay 1, off delay 200
> [    1.955389] i915 0000:00:02.0: [drm:pps_init_registers [i915]] panel p=
ower sequencer register settings: PP_ON 0x7d00001, PP_OFF 0x1f40001, PP_DIV=
 0x60
> [    1.955835] i915 0000:00:02.0: [drm:intel_dp_aux_ch [i915]] [ENCODER:3=
21:DDI B/PHY B] Using AUX CH B (VBT)
> [    1.955925] i915 0000:00:02.0: [drm:intel_dp_init_connector [i915]] Ad=
ding DP connector on [ENCODER:321:DDI B/PHY B]
> [    2.098330] usb 1-3: New USB device found, idVendor=3D4e53, idProduct=
=3D5407, bcdDevice=3D 1.00
> [    2.098333] usb 1-3: New USB device strings: Mfr=3D0, Product=3D1, Ser=
ialNumber=3D0
> [    2.098334] usb 1-3: Product: USB OPTICAL MOUSE=20
> [    2.101511] input: USB OPTICAL MOUSE  as /devices/pci0000:00/0000:00:1=
4.0/usb1/1-3/1-3:1.0/0003:4E53:5407.0004/input/input8
> [    2.101564] hid-generic 0003:4E53:5407.0004: input,hidraw3: USB HID v1=
=2E11 Mouse [USB OPTICAL MOUSE ] on usb-0000:00:14.0-3/input0
> [    2.104731] input: USB OPTICAL MOUSE  Keyboard as /devices/pci0000:00/=
0000:00:14.0/usb1/1-3/1-3:1.1/0003:4E53:5407.0005/input/input9
> [    2.162765] hid-generic 0003:4E53:5407.0005: input,hiddev2,hidraw4: US=
B HID v1.10 Keyboard [USB OPTICAL MOUSE ] on usb-0000:00:14.0-3/input1
> [    2.210864] i915 0000:00:02.0: [drm:drm_dp_dpcd_access [drm_display_he=
lper]] AUX B/DDI B/PHY B: Too many retries, giving up. First error: -6
> [    2.210885] i915 0000:00:02.0: [drm:intel_hdmi_init_connector [i915]] =
Adding HDMI connector on [ENCODER:321:DDI B/PHY B]
> [    2.211021] i915 0000:00:02.0: [drm:intel_hdmi_init_connector [i915]] =
[ENCODER:321:DDI B/PHY B] Using DDC pin 0x2 (VBT)
> [    2.211119] i915 0000:00:02.0: [drm:intel_bios_for_each_encoder [i915]=
] Port B already claimed
> [    2.211225] i915 0000:00:02.0: [drm:intel_dp_aux_ch [i915]] [ENCODER:3=
39:DDI TC1/PHY TC1] Using AUX CH USBC1 (VBT)
> [    2.211313] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling TC_cold_off
> [    2.211421] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] TC=
 cold block succeeded
> [    2.211516] ------------[ cut here ]------------
> [    2.211517] i915 0000:00:02.0: drm_WARN_ON(val =3D=3D 0xffffffff)
> [    2.211527] WARNING: CPU: 7 PID: 217 at drivers/gpu/drm/i915/display/i=
ntel_tc.c:737 tgl_tc_phy_init+0x103/0x130 [i915]
> [    2.211621] Modules linked in: i915(+) joydev hid_generic usbhid hid n=
vme nvme_core t10_pi crc64_rocksoft crc64 crc_t10dif crct10dif_generic i2c_=
algo_bit cec rc_core drm_buddy ttm drm_display_helper xhci_pci xhci_hcd drm=
_kms_helper crct10dif_pclmul usbcore evdev crct10dif_common crc32c_intel se=
rio_raw drm usb_common vmd video wmi fan
> [    2.211636] CPU: 7 PID: 217 Comm: (udev-worker) Not tainted 6.10.5 #1
> [    2.211639] Hardware name: LENOVO 82MG/LNVNB161216, BIOS H4CN35WW(V2.0=
4) 04/12/2024
> [    2.211640] RIP: 0010:tgl_tc_phy_init+0x103/0x130 [i915]
> [    2.211728] Code: 48 8b 6f 50 48 85 ed 75 03 48 8b 2f e8 76 62 ac d8 4=
8 c7 c1 e8 94 c5 c0 48 89 ea 48 c7 c7 62 a7 c7 c0 48 89 c6 e8 bd a0 2e d8 <=
0f> 0b 48 8b 3b e8 e3 7d f9 ff 89 c1 89 c5 c1 e9 1f c1 ed 1f 8d 14
> [    2.211730] RSP: 0018:ffffb95e40a53608 EFLAGS: 00010286
> [    2.211732] RAX: 0000000000000000 RBX: ffff8e8f919e4800 RCX: c0000000f=
ffdffff
> [    2.211734] RDX: 0000000000000000 RSI: 00000000fffdffff RDI: 000000000=
0000001
> [    2.211735] RBP: ffff8e8f81bf6d30 R08: 0000000000000000 R09: 000000000=
0000003
> [    2.211736] R10: ffffb95e40a53498 R11: ffff8e952f7fffe8 R12: ffff8e8f8=
13ec000
> [    2.211737] R13: ffff8e8f813ec618 R14: 000fffffffe00000 R15: ffff8e8f8=
13ec000
> [    2.211739] FS:  00007f4ce50158c0(0000) GS:ffff8e952e780000(0000) knlG=
S:0000000000000000
> [    2.211740] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [    2.211742] CR2: 000055b901674008 CR3: 0000000102c70004 CR4: 000000000=
0770ef0
> [    2.211743] PKRU: 55555554
> [    2.211744] Call Trace:
> [    2.211747]  <TASK>
> [    2.211749]  ? __warn+0x7c/0x120
> [    2.211753]  ? tgl_tc_phy_init+0x103/0x130 [i915]
> [    2.211839]  ? report_bug+0x160/0x190
> [    2.211842]  ? prb_read_valid+0x17/0x20
> [    2.211845]  ? handle_bug+0x41/0x70
> [    2.211848]  ? exc_invalid_op+0x13/0x60
> [    2.211850]  ? asm_exc_invalid_op+0x16/0x20
> [    2.211853]  ? tgl_tc_phy_init+0x103/0x130 [i915]
> [    2.211937]  ? tgl_tc_phy_init+0x103/0x130 [i915]
> [    2.212021]  intel_tc_port_init+0x17e/0x220 [i915]
> [    2.212109]  intel_ddi_init+0x9fa/0x11d0 [i915]
> [    2.212198]  ? __pfx_intel_ddi_init+0x10/0x10 [i915]
> [    2.212282]  intel_bios_for_each_encoder+0x31/0x50 [i915]
> [    2.212381]  intel_setup_outputs+0x4e0/0xc20 [i915]
> [    2.212479]  intel_display_driver_probe_nogem+0x139/0x220 [i915]
> [    2.212573]  i915_driver_probe+0x63b/0xba0 [i915]
> [    2.212647]  local_pci_probe+0x3e/0x90
> [    2.212651]  pci_device_probe+0xc3/0x240
> [    2.212653]  really_probe+0xd3/0x380
> [    2.212656]  ? __pfx___driver_attach+0x10/0x10
> [    2.212658]  __driver_probe_device+0x78/0x150
> [    2.212660]  driver_probe_device+0x1f/0x90
> [    2.212662]  __driver_attach+0xce/0x1c0
> [    2.212664]  bus_for_each_dev+0x81/0xd0
> [    2.212666]  bus_add_driver+0x10e/0x240
> [    2.212668]  driver_register+0x55/0x100
> [    2.212671]  i915_init+0x1e/0xc0 [i915]
> [    2.212742]  ? __pfx_i915_init+0x10/0x10 [i915]
> [    2.212811]  do_one_initcall+0x54/0x320
> [    2.212815]  do_init_module+0x60/0x240
> [    2.212817]  init_module_from_file+0x86/0xc0
> [    2.212819]  idempotent_init_module+0x120/0x310
> [    2.212821]  __x64_sys_finit_module+0x5a/0xb0
> [    2.212823]  do_syscall_64+0x7e/0x190
> [    2.212825]  ? vm_mmap_pgoff+0x12d/0x1c0
> [    2.212828]  ? ksys_mmap_pgoff+0x153/0x1f0
> [    2.212831]  ? syscall_exit_to_user_mode+0x73/0x200
> [    2.212833]  ? do_syscall_64+0x8a/0x190
> [    2.212834]  ? syscall_exit_to_user_mode+0x73/0x200
> [    2.212836]  ? do_syscall_64+0x8a/0x190
> [    2.212838]  ? vfs_read+0x292/0x370
> [    2.212842]  ? syscall_exit_to_user_mode+0x73/0x200
> [    2.212843]  ? do_syscall_64+0x8a/0x190
> [    2.212845]  ? syscall_exit_to_user_mode+0x73/0x200
> [    2.212847]  ? do_syscall_64+0x8a/0x190
> [    2.212848]  ? do_syscall_64+0x8a/0x190
> [    2.212850]  ? clear_bhb_loop+0x45/0xa0
> [    2.212851]  ? clear_bhb_loop+0x45/0xa0
> [    2.212852]  ? clear_bhb_loop+0x45/0xa0
> [    2.212854]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> [    2.212856] RIP: 0033:0x7f4ce5723719
> [    2.212858] Code: 08 89 e8 5b 5d c3 66 2e 0f 1f 84 00 00 00 00 00 90 4=
8 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <=
48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d b7 06 0d 00 f7 d8 64 89 01 48
> [    2.212861] RSP: 002b:00007ffe5dcb5ed8 EFLAGS: 00000246 ORIG_RAX: 0000=
000000000139
> [    2.212863] RAX: ffffffffffffffda RBX: 000055df22026c20 RCX: 00007f4ce=
5723719
> [    2.212865] RDX: 0000000000000000 RSI: 00007f4ce58b6efd RDI: 000000000=
0000013
> [    2.212866] RBP: 00007f4ce58b6efd R08: 0000000000000000 R09: 000000000=
000000a
> [    2.212867] R10: 0000000000000013 R11: 0000000000000246 R12: 000000000=
0020000
> [    2.212868] R13: 0000000000000000 R14: 000055df22023820 R15: 000000000=
000000a
> [    2.212870]  </TASK>
> [    2.212871] ---[ end trace 0000000000000000 ]---
> [    2.212888] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.212986] i915 0000:00:02.0: [drm:icl_tc_phy_is_ready [i915]] Port D=
/TC#1: PHY in TCCOLD, assuming not ready
> [    2.213076] i915 0000:00:02.0: [drm:icl_tc_phy_is_owned [i915]] Port D=
/TC#1: PHY in TCCOLD, assume not owned
> [    2.213161] i915 0000:00:02.0: [drm:tc_phy_get_current_mode [i915]] Po=
rt D/TC#1: PHY mode: tbt-alt (ready: no, owned: no, HPD: disconnected)
> [    2.213261] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.213344] i915 0000:00:02.0: [drm:intel_dp_init_connector [i915]] Ad=
ding DP connector on [ENCODER:339:DDI TC1/PHY TC1]
> [    2.213456] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.214183] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.214900] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.215621] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.216354] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.217079] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.217798] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.218524] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.219255] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.219972] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.220689] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.221404] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.222116] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.222774] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.223495] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.224207] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.224934] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.225645] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.226362] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.227195] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.228027] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.228860] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.229696] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.230527] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.231370] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.232207] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.233041] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.233875] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.234709] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.235564] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.236395] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.237229] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.237432] i915 0000:00:02.0: [drm:drm_dp_dpcd_access [drm_display_he=
lper]] AUX USBC1/DDI TC1/PHY TC1: Too many retries, giving up. First error:=
 -6
> [    2.237462] i915 0000:00:02.0: [drm:intel_dp_aux_ch [i915]] [ENCODER:3=
48:DDI TC2/PHY TC2] Using AUX CH USBC2 (VBT)
> [    2.237704] ------------[ cut here ]------------
> [    2.237706] i915 0000:00:02.0: drm_WARN_ON(val =3D=3D 0xffffffff)
> [    2.237721] WARNING: CPU: 7 PID: 217 at drivers/gpu/drm/i915/display/i=
ntel_tc.c:737 tgl_tc_phy_init+0x103/0x130 [i915]
> [    2.237969] Modules linked in: i915(+) joydev hid_generic usbhid hid n=
vme nvme_core t10_pi crc64_rocksoft crc64 crc_t10dif crct10dif_generic i2c_=
algo_bit cec rc_core drm_buddy ttm drm_display_helper xhci_pci xhci_hcd drm=
_kms_helper crct10dif_pclmul usbcore evdev crct10dif_common crc32c_intel se=
rio_raw drm usb_common vmd video wmi fan
> [    2.238002] CPU: 7 PID: 217 Comm: (udev-worker) Tainted: G        W   =
       6.10.5 #1
> [    2.238007] Hardware name: LENOVO 82MG/LNVNB161216, BIOS H4CN35WW(V2.0=
4) 04/12/2024
> [    2.238010] RIP: 0010:tgl_tc_phy_init+0x103/0x130 [i915]
> [    2.238241] Code: 48 8b 6f 50 48 85 ed 75 03 48 8b 2f e8 76 62 ac d8 4=
8 c7 c1 e8 94 c5 c0 48 89 ea 48 c7 c7 62 a7 c7 c0 48 89 c6 e8 bd a0 2e d8 <=
0f> 0b 48 8b 3b e8 e3 7d f9 ff 89 c1 89 c5 c1 e9 1f c1 ed 1f 8d 14
> [    2.238248] RSP: 0018:ffffb95e40a53608 EFLAGS: 00010286
> [    2.238252] RAX: 0000000000000000 RBX: ffff8e8f919e7000 RCX: c0000000f=
ffdffff
> [    2.238256] RDX: 0000000000000000 RSI: 00000000fffdffff RDI: 000000000=
0000001
> [    2.238259] RBP: ffff8e8f81bf6d30 R08: 0000000000000000 R09: 000000000=
0000003
> [    2.238262] R10: ffffb95e40a53498 R11: ffff8e952f7fffe8 R12: ffff8e8f8=
13ec000
> [    2.238266] R13: ffff8e8f813ec618 R14: 000fffffffe00000 R15: ffff8e8f8=
13ec000
> [    2.238269] FS:  00007f4ce50158c0(0000) GS:ffff8e952e780000(0000) knlG=
S:0000000000000000
> [    2.238274] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [    2.238278] CR2: 000055b901674008 CR3: 0000000102c70004 CR4: 000000000=
0770ef0
> [    2.238281] PKRU: 55555554
> [    2.238284] Call Trace:
> [    2.238286]  <TASK>
> [    2.238289]  ? __warn+0x7c/0x120
> [    2.238295]  ? tgl_tc_phy_init+0x103/0x130 [i915]
> [    2.238520]  ? report_bug+0x160/0x190
> [    2.238527]  ? prb_read_valid+0x17/0x20
> [    2.238532]  ? handle_bug+0x41/0x70
> [    2.238538]  ? exc_invalid_op+0x13/0x60
> [    2.238543]  ? asm_exc_invalid_op+0x16/0x20
> [    2.238551]  ? tgl_tc_phy_init+0x103/0x130 [i915]
> [    2.238777]  ? tgl_tc_phy_init+0x103/0x130 [i915]
> [    2.238991]  intel_tc_port_init+0x17e/0x220 [i915]
> [    2.239208]  intel_ddi_init+0x9fa/0x11d0 [i915]
> [    2.239435]  ? __pfx_intel_ddi_init+0x10/0x10 [i915]
> [    2.239657]  intel_bios_for_each_encoder+0x31/0x50 [i915]
> [    2.239929]  intel_setup_outputs+0x4e0/0xc20 [i915]
> [    2.240194]  intel_display_driver_probe_nogem+0x139/0x220 [i915]
> [    2.240453]  i915_driver_probe+0x63b/0xba0 [i915]
> [    2.240654]  local_pci_probe+0x3e/0x90
> [    2.240661]  pci_device_probe+0xc3/0x240
> [    2.240667]  really_probe+0xd3/0x380
> [    2.240673]  ? __pfx___driver_attach+0x10/0x10
> [    2.240678]  __driver_probe_device+0x78/0x150
> [    2.240684]  driver_probe_device+0x1f/0x90
> [    2.240689]  __driver_attach+0xce/0x1c0
> [    2.240694]  bus_for_each_dev+0x81/0xd0
> [    2.240699]  bus_add_driver+0x10e/0x240
> [    2.240704]  driver_register+0x55/0x100
> [    2.240710]  i915_init+0x1e/0xc0 [i915]
> [    2.240904]  ? __pfx_i915_init+0x10/0x10 [i915]
> [    2.241092]  do_one_initcall+0x54/0x320
> [    2.241099]  do_init_module+0x60/0x240
> [    2.241103]  init_module_from_file+0x86/0xc0
> [    2.241108]  idempotent_init_module+0x120/0x310
> [    2.241113]  __x64_sys_finit_module+0x5a/0xb0
> [    2.241117]  do_syscall_64+0x7e/0x190
> [    2.241121]  ? vm_mmap_pgoff+0x12d/0x1c0
> [    2.241128]  ? ksys_mmap_pgoff+0x153/0x1f0
> [    2.241135]  ? syscall_exit_to_user_mode+0x73/0x200
> [    2.241140]  ? do_syscall_64+0x8a/0x190
> [    2.241145]  ? syscall_exit_to_user_mode+0x73/0x200
> [    2.241150]  ? do_syscall_64+0x8a/0x190
> [    2.241156]  ? vfs_read+0x292/0x370
> [    2.241162]  ? syscall_exit_to_user_mode+0x73/0x200
> [    2.241167]  ? do_syscall_64+0x8a/0x190
> [    2.241172]  ? syscall_exit_to_user_mode+0x73/0x200
> [    2.241177]  ? do_syscall_64+0x8a/0x190
> [    2.241181]  ? do_syscall_64+0x8a/0x190
> [    2.241185]  ? clear_bhb_loop+0x45/0xa0
> [    2.241189]  ? clear_bhb_loop+0x45/0xa0
> [    2.241192]  ? clear_bhb_loop+0x45/0xa0
> [    2.241195]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> [    2.241202] RIP: 0033:0x7f4ce5723719
> [    2.241205] Code: 08 89 e8 5b 5d c3 66 2e 0f 1f 84 00 00 00 00 00 90 4=
8 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <=
48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d b7 06 0d 00 f7 d8 64 89 01 48
> [    2.241212] RSP: 002b:00007ffe5dcb5ed8 EFLAGS: 00000246 ORIG_RAX: 0000=
000000000139
> [    2.241217] RAX: ffffffffffffffda RBX: 000055df22026c20 RCX: 00007f4ce=
5723719
> [    2.241221] RDX: 0000000000000000 RSI: 00007f4ce58b6efd RDI: 000000000=
0000013
> [    2.241224] RBP: 00007f4ce58b6efd R08: 0000000000000000 R09: 000000000=
000000a
> [    2.241228] R10: 0000000000000013 R11: 0000000000000246 R12: 000000000=
0020000
> [    2.241231] R13: 0000000000000000 R14: 000055df22023820 R15: 000000000=
000000a
> [    2.241236]  </TASK>
> [    2.241238] ---[ end trace 0000000000000000 ]---
> [    2.241257] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.241523] i915 0000:00:02.0: [drm:icl_tc_phy_is_ready [i915]] Port E=
/TC#2: PHY in TCCOLD, assuming not ready
> [    2.241771] i915 0000:00:02.0: [drm:icl_tc_phy_is_owned [i915]] Port E=
/TC#2: PHY in TCCOLD, assume not owned
> [    2.242008] i915 0000:00:02.0: [drm:tc_phy_get_current_mode [i915]] Po=
rt E/TC#2: PHY mode: tbt-alt (ready: no, owned: no, HPD: disconnected)
> [    2.242257] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.242488] i915 0000:00:02.0: [drm:intel_dp_init_connector [i915]] Ad=
ding DP connector on [ENCODER:348:DDI TC2/PHY TC2]
> [    2.242774] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.243670] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.244530] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.245363] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.246193] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.247008] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.247861] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.248704] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.249546] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.250388] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.251230] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.252076] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.252915] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.253753] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.254593] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.255439] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.256278] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.257117] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.257961] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.258766] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.259606] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.260444] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.261280] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.262119] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.262945] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.263783] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.264621] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.265458] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.266293] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.267130] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.267969] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.268805] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.269008] i915 0000:00:02.0: [drm:drm_dp_dpcd_access [drm_display_he=
lper]] AUX USBC2/DDI TC2/PHY TC2: Too many retries, giving up. First error:=
 -6
> [    2.269079] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [CRTC:100:pipe A] hw state readout: enabled
> [    2.269330] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [CRTC:170:pipe B] hw state readout: disabled
> [    2.269577] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [CRTC:240:pipe C] hw state readout: disabled
> [    2.269814] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [CRTC:310:pipe D] hw state readout: disabled
> [    2.270033] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:32:plane 1A] hw state readout: enabled, pipe A
> [    2.270250] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:41:plane 2A] hw state readout: disabled, pipe A
> [    2.270462] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:50:plane 3A] hw state readout: disabled, pipe A
> [    2.270674] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:59:plane 4A] hw state readout: disabled, pipe A
> [    2.270891] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:68:plane 5A] hw state readout: disabled, pipe A
> [    2.271098] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:77:plane 6A] hw state readout: disabled, pipe A
> [    2.271303] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:86:plane 7A] hw state readout: disabled, pipe A
> [    2.271506] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:95:cursor A] hw state readout: disabled, pipe A
> [    2.271711] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:102:plane 1B] hw state readout: disabled, pipe B
> [    2.271914] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:111:plane 2B] hw state readout: disabled, pipe B
> [    2.272119] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:120:plane 3B] hw state readout: disabled, pipe B
> [    2.272327] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:129:plane 4B] hw state readout: disabled, pipe B
> [    2.272529] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:138:plane 5B] hw state readout: disabled, pipe B
> [    2.272733] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:147:plane 6B] hw state readout: disabled, pipe B
> [    2.272939] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:156:plane 7B] hw state readout: disabled, pipe B
> [    2.273167] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:165:cursor B] hw state readout: disabled, pipe B
> [    2.273392] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:172:plane 1C] hw state readout: disabled, pipe C
> [    2.273610] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:181:plane 2C] hw state readout: disabled, pipe C
> [    2.273824] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:190:plane 3C] hw state readout: disabled, pipe C
> [    2.274037] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:199:plane 4C] hw state readout: disabled, pipe C
> [    2.274244] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:208:plane 5C] hw state readout: disabled, pipe C
> [    2.274450] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:217:plane 6C] hw state readout: disabled, pipe C
> [    2.274657] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:226:plane 7C] hw state readout: disabled, pipe C
> [    2.274871] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:235:cursor C] hw state readout: disabled, pipe C
> [    2.275075] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:242:plane 1D] hw state readout: disabled, pipe D
> [    2.275279] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:251:plane 2D] hw state readout: disabled, pipe D
> [    2.275483] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:260:plane 3D] hw state readout: disabled, pipe D
> [    2.275687] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:269:plane 4D] hw state readout: disabled, pipe D
> [    2.275891] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:278:plane 5D] hw state readout: disabled, pipe D
> [    2.276094] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:287:plane 6D] hw state readout: disabled, pipe D
> [    2.276297] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:296:plane 7D] hw state readout: disabled, pipe D
> [    2.276503] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:305:cursor D] hw state readout: disabled, pipe D
> [    2.276728] i915 0000:00:02.0: [drm:intel_edp_fixup_vbt_bpp [i915]] pi=
pe has 24 bpp for eDP panel, overriding BIOS-provided max 18 bpp
> [    2.276953] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:312:DDI A/PHY A] hw state readout: enabled, pipe A
> [    2.277118] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:321:DDI B/PHY B] hw state readout: disabled, pipe A
> [    2.277278] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:323:DP-MST A] hw state readout: disabled, pipe A
> [    2.277437] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:324:DP-MST B] hw state readout: disabled, pipe B
> [    2.277593] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:325:DP-MST C] hw state readout: disabled, pipe C
> [    2.277748] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:326:DP-MST D] hw state readout: disabled, pipe D
> [    2.277904] i915 0000:00:02.0: [drm:intel_tc_port_sanitize_mode [i915]=
] Port D/TC#1: sanitize mode (disconnected)
> [    2.278076] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:339:DDI TC1/PHY TC1] hw state readout: disabled, pipe A
> [    2.278235] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:341:DP-MST A] hw state readout: disabled, pipe A
> [    2.278391] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:342:DP-MST B] hw state readout: disabled, pipe B
> [    2.278545] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:343:DP-MST C] hw state readout: disabled, pipe C
> [    2.278699] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:344:DP-MST D] hw state readout: disabled, pipe D
> [    2.278860] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling TC_cold_off
> [    2.279070] i915 0000:00:02.0: [drm:__intel_display_power_put_domain [=
i915]] TC cold unblock succeeded
> [    2.279265] i915 0000:00:02.0: [drm:intel_tc_port_sanitize_mode [i915]=
] Port E/TC#2: sanitize mode (disconnected)
> [    2.279458] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:348:DDI TC2/PHY TC2] hw state readout: disabled, pipe A
> [    2.279647] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:350:DP-MST A] hw state readout: disabled, pipe A
> [    2.279826] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:351:DP-MST B] hw state readout: disabled, pipe B
> [    2.280000] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:352:DP-MST C] hw state readout: disabled, pipe C
> [    2.280124] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:353:DP-MST D] hw state readout: disabled, pipe D
> [    2.280248] i915 0000:00:02.0: [drm:intel_reference_shared_dpll_crtc [=
i915]] [CRTC:100:pipe A] reserving DPLL 0
> [    2.280385] i915 0000:00:02.0: [drm:intel_dpll_readout_hw_state [i915]=
] DPLL 0 hw state readout: pipe_mask 0x1, on 1
> [    2.280521] i915 0000:00:02.0: [drm:intel_dpll_readout_hw_state [i915]=
] DPLL 1 hw state readout: pipe_mask 0x0, on 0
> [    2.280653] i915 0000:00:02.0: [drm:intel_dpll_readout_hw_state [i915]=
] TBT PLL hw state readout: pipe_mask 0x0, on 0
> [    2.280783] i915 0000:00:02.0: [drm:intel_dpll_readout_hw_state [i915]=
] TC PLL 1 hw state readout: pipe_mask 0x0, on 0
> [    2.280912] i915 0000:00:02.0: [drm:intel_dpll_readout_hw_state [i915]=
] TC PLL 2 hw state readout: pipe_mask 0x0, on 0
> [    2.281041] i915 0000:00:02.0: [drm:intel_dpll_readout_hw_state [i915]=
] TC PLL 3 hw state readout: pipe_mask 0x0, on 0
> [    2.281169] i915 0000:00:02.0: [drm:intel_dpll_readout_hw_state [i915]=
] TC PLL 4 hw state readout: pipe_mask 0x0, on 0
> [    2.281296] i915 0000:00:02.0: [drm:intel_dpll_readout_hw_state [i915]=
] TC PLL 5 hw state readout: pipe_mask 0x0, on 0
> [    2.281422] i915 0000:00:02.0: [drm:intel_dpll_readout_hw_state [i915]=
] TC PLL 6 hw state readout: pipe_mask 0x0, on 0
> [    2.281553] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [CONNECTOR:313:eDP-1] hw state readout: enabled
> [    2.281685] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [CONNECTOR:322:DP-1] hw state readout: disabled
> [    2.281815] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [CONNECTOR:334:HDMI-A-1] hw state readout: disabled
> [    2.281942] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [CONNECTOR:340:DP-2] hw state readout: disabled
> [    2.282067] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [CONNECTOR:349:DP-3] hw state readout: disabled
> [    2.282191] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:32:plane 1A] min_cdclk 83005 kHz
> [    2.282313] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:41:plane 2A] min_cdclk 0 kHz
> [    2.282434] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:50:plane 3A] min_cdclk 0 kHz
> [    2.282556] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:59:plane 4A] min_cdclk 0 kHz
> [    2.282687] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:68:plane 5A] min_cdclk 0 kHz
> [    2.282817] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:77:plane 6A] min_cdclk 0 kHz
> [    2.282924] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:86:plane 7A] min_cdclk 0 kHz
> [    2.283008] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:95:cursor A] min_cdclk 0 kHz
> [    2.283090] i915 0000:00:02.0: [drm:intel_bw_crtc_update [i915]] pipe =
A data rate 664040 num active planes 1
> [    2.283196] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:102:plane 1B] min_cdclk 0 kHz
> [    2.283283] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:111:plane 2B] min_cdclk 0 kHz
> [    2.283366] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:120:plane 3B] min_cdclk 0 kHz
> [    2.283448] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:129:plane 4B] min_cdclk 0 kHz
> [    2.283528] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:138:plane 5B] min_cdclk 0 kHz
> [    2.283610] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:147:plane 6B] min_cdclk 0 kHz
> [    2.283691] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:156:plane 7B] min_cdclk 0 kHz
> [    2.283772] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:165:cursor B] min_cdclk 0 kHz
> [    2.283852] i915 0000:00:02.0: [drm:intel_bw_crtc_update [i915]] pipe =
B data rate 0 num active planes 0
> [    2.283955] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:172:plane 1C] min_cdclk 0 kHz
> [    2.284040] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:181:plane 2C] min_cdclk 0 kHz
> [    2.284122] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:190:plane 3C] min_cdclk 0 kHz
> [    2.284203] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:199:plane 4C] min_cdclk 0 kHz
> [    2.284285] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:208:plane 5C] min_cdclk 0 kHz
> [    2.284368] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:217:plane 6C] min_cdclk 0 kHz
> [    2.284458] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:226:plane 7C] min_cdclk 0 kHz
> [    2.284546] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:235:cursor C] min_cdclk 0 kHz
> [    2.284632] i915 0000:00:02.0: [drm:intel_bw_crtc_update [i915]] pipe =
C data rate 0 num active planes 0
> [    2.284738] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:242:plane 1D] min_cdclk 0 kHz
> [    2.284826] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:251:plane 2D] min_cdclk 0 kHz
> [    2.284910] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:260:plane 3D] min_cdclk 0 kHz
> [    2.284993] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:269:plane 4D] min_cdclk 0 kHz
> [    2.285074] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:278:plane 5D] min_cdclk 0 kHz
> [    2.285155] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:287:plane 6D] min_cdclk 0 kHz
> [    2.285236] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:296:plane 7D] min_cdclk 0 kHz
> [    2.285317] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:305:cursor D] min_cdclk 0 kHz
> [    2.285398] i915 0000:00:02.0: [drm:intel_bw_crtc_update [i915]] pipe =
D data rate 0 num active planes 0
> [    2.285503] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling DDI_IO_A
> [    2.290732] usb 1-6: new high-speed USB device number 5 using xhci_hcd
> [    2.290862] i915 0000:00:02.0: [drm] [CRTC:100:pipe A] enable: yes [se=
tup_hw_state]
> [    2.290864] i915 0000:00:02.0: [drm] active: yes, output_types: EDP (0=
x100), output format: RGB, sink format: RGB
> [    2.290867] i915 0000:00:02.0: [drm] cpu_transcoder: A, pipe bpp: 24, =
dithering: 0
> [    2.290868] i915 0000:00:02.0: [drm] MST master transcoder: <invalid>
> [    2.290871] i915 0000:00:02.0: [drm] port sync: master transcoder: <in=
valid>, slave transcoder bitmask =3D 0x0
> [    2.290873] i915 0000:00:02.0: [drm] bigjoiner: no, pipes: 0x0
> [    2.290874] i915 0000:00:02.0: [drm] splitter: disabled, link count 0,=
 overlap 0
> [    2.290876] i915 0000:00:02.0: [drm] dp m_n: lanes: 2; data_m: 7736626=
, data_n: 8388608, link_m: 322359, link_n: 524288, tu: 64
> [    2.290879] i915 0000:00:02.0: [drm] dp m2_n2: lanes: 2; data_m: 0, da=
ta_n: 0, link_m: 0, link_n: 0, tu: 0
> [    2.290881] i915 0000:00:02.0: [drm] fec: disabled, enhanced framing: =
enabled
> [    2.290882] i915 0000:00:02.0: [drm] sdp split: disabled
> [    2.290883] i915 0000:00:02.0: [drm] psr: disabled, selective update: =
disabled, panel replay: disabled, selective fetch: disabled
> [    2.290885] i915 0000:00:02.0: [drm] framestart delay: 1, MSA timing d=
elay: 0
> [    2.290887] i915 0000:00:02.0: [drm] audio: 0, infoframes: 0, infofram=
es enabled: 0x0
> [    2.290889] i915 0000:00:02.0: [drm] vrr: no, vmin: 0, vmax: 0, pipeli=
ne full: 0, guardband: 0 flipline: 0, vmin vblank: -1, vmax vblank: -2
> [    2.290891] i915 0000:00:02.0: [drm] requested mode: "1920x1080": 60 1=
66010 1920 2028 2076 2120 1080 1090 1100 1304 0x40 0xa
> [    2.290894] i915 0000:00:02.0: [drm] adjusted mode: "1920x1080": 60 16=
6010 1920 2028 2076 2120 1080 1090 1100 1304 0x40 0xa
> [    2.290897] i915 0000:00:02.0: [drm] crtc timings: clock=3D166010, hd=
=3D1920 hb=3D1920-2120 hs=3D2028-2076 ht=3D2120, vd=3D1080 vb=3D1080-1304 v=
s=3D1090-1100 vt=3D1304, flags=3D0xa
> [    2.290900] i915 0000:00:02.0: [drm] pipe mode: "1920x1080": 60 166010=
 1920 2028 2076 2120 1080 1090 1100 1304 0x40 0xa
> [    2.290904] i915 0000:00:02.0: [drm] crtc timings: clock=3D166010, hd=
=3D1920 hb=3D1920-2120 hs=3D2028-2076 ht=3D2120, vd=3D1080 vb=3D1080-1304 v=
s=3D1090-1100 vt=3D1304, flags=3D0xa
> [    2.290907] i915 0000:00:02.0: [drm] port clock: 270000, pipe src: 192=
0x1080+0+0, pixel rate 166010
> [    2.290909] i915 0000:00:02.0: [drm] linetime: 103, ips linetime: 0
> [    2.290910] i915 0000:00:02.0: [drm] num_scalers: 2, scaler_users: 0x0=
, scaler_id: -1, scaling_filter: 0
> [    2.290912] i915 0000:00:02.0: [drm] pch pfit: 0x0+0+0, disabled, forc=
e thru: no
> [    2.290914] i915 0000:00:02.0: [drm] ips: 0, double wide: 0, drrs: 0
> [    2.290915] i915 0000:00:02.0: [drm] dpll_hw_state: cfgcr0: 0xe001a5, =
cfgcr1: 0x88, div0: 0x0, mg_refclkin_ctl: 0x0, hg_clktop2_coreclkctl1: 0x0,=
 mg_clktop2_hsclkctl: 0x0, mg_pll_div0: 0x0, mg_pll_div2: 0x0, mg_pll_lf: 0=
x0, mg_pll_frac_lock: 0x0, mg_pll_ssc: 0x0, mg_pll_bias: 0x0, mg_pll_tdc_co=
ldst_bias: 0x0
> [    2.290919] i915 0000:00:02.0: [drm] csc_mode: 0x20000000 gamma_mode: =
0x20000000 gamma_enable: 0 csc_enable: 0
> [    2.290921] i915 0000:00:02.0: [drm] pre csc lut: 0 entries, post csc =
lut: 0 entries
> [    2.290923] i915 0000:00:02.0: [drm] output csc: pre offsets: 0x0000 0=
x0000 0x0000
> [    2.290924] i915 0000:00:02.0: [drm] output csc: coefficients: 0x0000 =
0x0000 0x0000
> [    2.290926] i915 0000:00:02.0: [drm] output csc: coefficients: 0x0000 =
0x0000 0x0000
> [    2.290928] i915 0000:00:02.0: [drm] output csc: coefficients: 0x0000 =
0x0000 0x0000
> [    2.290929] i915 0000:00:02.0: [drm] output csc: post offsets: 0x0000 =
0x0000 0x0000
> [    2.290931] i915 0000:00:02.0: [drm] pipe csc: pre offsets: 0x0000 0x0=
000 0x0000
> [    2.290932] i915 0000:00:02.0: [drm] pipe csc: coefficients: 0x0000 0x=
0000 0x0000
> [    2.290933] i915 0000:00:02.0: [drm] pipe csc: coefficients: 0x0000 0x=
0000 0x0000
> [    2.290935] i915 0000:00:02.0: [drm] pipe csc: coefficients: 0x0000 0x=
0000 0x0000
> [    2.290936] i915 0000:00:02.0: [drm] pipe csc: post offsets: 0x0000 0x=
0000 0x0000
> [    2.290938] i915 0000:00:02.0: [drm] [CRTC:170:pipe B] enable: no [set=
up_hw_state]
> [    2.290939] i915 0000:00:02.0: [drm] [CRTC:240:pipe C] enable: no [set=
up_hw_state]
> [    2.290941] i915 0000:00:02.0: [drm] [CRTC:310:pipe D] enable: no [set=
up_hw_state]
> [    2.290961] i915 0000:00:02.0: [drm:skl_wm_get_hw_state_and_sanitize [=
i915]] [CRTC:100:pipe A] dbuf slices 0x1, ddb (0 - 682), active pipes 0x1, =
mbus joined: no
> [    2.291059] i915 0000:00:02.0: [drm:skl_wm_get_hw_state_and_sanitize [=
i915]] [CRTC:170:pipe B] dbuf slices 0x0, ddb (0 - 0), active pipes 0x1, mb=
us joined: no
> [    2.291153] i915 0000:00:02.0: [drm:skl_wm_get_hw_state_and_sanitize [=
i915]] [CRTC:240:pipe C] dbuf slices 0x0, ddb (0 - 0), active pipes 0x1, mb=
us joined: no
> [    2.291237] i915 0000:00:02.0: [drm:skl_wm_get_hw_state_and_sanitize [=
i915]] [CRTC:310:pipe D] dbuf slices 0x0, ddb (0 - 0), active pipes 0x1, mb=
us joined: no
> [    2.291336] i915 0000:00:02.0: [drm:skl_get_initial_plane_config [i915=
]] pipe A/plane 1A with fb: size=3D1920x1080@32, offset=3D0, pitch 7680, si=
ze 0x7e9000
> [    2.291422] i915 0000:00:02.0: [drm:_i915_gem_object_stolen_init [i915=
]] creating preallocated stolen object: stolen_offset=3D0x0000000000000000,=
 size=3D0x00000000007e9000
> [    2.291734] i915 0000:00:02.0: [drm:initial_plane_vma [i915]] Initial =
plane fb bound to 0x0 in the ggtt (original 0x0)
> [    2.291960] i915 0000:00:02.0: [drm:i915_init_ggtt [i915]] Reserved GG=
TT:[7e9000, 7eb000] for use by error capture
> [    2.292044] i915 0000:00:02.0: [drm:i915_init_ggtt [i915]] clearing un=
used GTT space: [7eb000, 100000000]
> [    2.292134] i915 0000:00:02.0: [drm:i915_gem_init [i915]] No clock gat=
ing settings or workarounds applied.
> [    2.292250] i915 0000:00:02.0: [drm] MCR Steering: Default steering: g=
roup=3D0x0, instance=3D0x0
> [    2.292254] i915 0000:00:02.0: [drm:wa_init_finish [i915]] GT0: Initia=
lized 5 GT workarounds on global
> [    2.292413] i915 0000:00:02.0: [drm:wa_init_finish [i915]] GT0: Initia=
lized 11 engine workarounds on rcs'0
> [    2.292515] i915 0000:00:02.0: [drm:wa_init_finish [i915]] GT0: Initia=
lized 4 whitelist workarounds on rcs'0
> [    2.292611] i915 0000:00:02.0: [drm:wa_init_finish [i915]] GT0: Initia=
lized 5 context workarounds on rcs'0
> [    2.292736] i915 0000:00:02.0: [drm:wa_init_finish [i915]] GT0: Initia=
lized 1 engine workarounds on bcs'0
> [    2.292832] i915 0000:00:02.0: [drm:wa_init_finish [i915]] GT0: Initia=
lized 1 whitelist workarounds on bcs'0
> [    2.292924] i915 0000:00:02.0: [drm:wa_init_finish [i915]] GT0: Initia=
lized 1 context workarounds on bcs'0
> [    2.293025] i915 0000:00:02.0: [drm:wa_init_finish [i915]] GT0: Initia=
lized 1 engine workarounds on vcs'0
> [    2.293115] i915 0000:00:02.0: [drm:wa_init_finish [i915]] GT0: Initia=
lized 1 whitelist workarounds on vcs'0
> [    2.293214] i915 0000:00:02.0: [drm:wa_init_finish [i915]] GT0: Initia=
lized 1 engine workarounds on vcs'2
> [    2.293302] i915 0000:00:02.0: [drm:wa_init_finish [i915]] GT0: Initia=
lized 1 whitelist workarounds on vcs'2
> [    2.293404] i915 0000:00:02.0: [drm:wa_init_finish [i915]] GT0: Initia=
lized 1 engine workarounds on vecs'0
> [    2.293498] i915 0000:00:02.0: [drm:wa_init_finish [i915]] GT0: Initia=
lized 1 whitelist workarounds on vecs'0
> [    2.295375] i915 0000:00:02.0: [drm:intel_engines_driver_register [i91=
5]] renamed rcs'0 to rcs0
> [    2.295481] i915 0000:00:02.0: [drm:intel_engines_driver_register [i91=
5]] renamed bcs'0 to bcs0
> [    2.295558] i915 0000:00:02.0: [drm:intel_engines_driver_register [i91=
5]] renamed vcs'0 to vcs0
> [    2.295631] i915 0000:00:02.0: [drm:intel_engines_driver_register [i91=
5]] renamed vcs'2 to vcs1
> [    2.295701] i915 0000:00:02.0: [drm:intel_engines_driver_register [i91=
5]] renamed vecs'0 to vecs0
> [    2.295792] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [CRTC:100:p=
ipe A] dbuf slices 0x1 -> 0x3, ddb (0 - 682) -> (0 - 2048), active pipes 0x=
1 -> 0x1
> [    2.295893] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:32:p=
lane 1A] ddb (   0 -  682) -> (   0 - 2012), size  682 -> 2012
> [    2.295984] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:95:c=
ursor A] ddb (   0 -    0) -> (2012 - 2048), size    0 ->   36
> [    2.296073] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:32:p=
lane 1A]   level *wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm,*swm, stwm ->=
 *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7, twm, swm, stwm
> [    2.296159] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:32:p=
lane 1A]   lines    2,   2,   1,   1,   1,   1,   1,   1,   1,   2,    1 ->=
    1,   5,   5,   5,   5,   6,   9,  10,   0,   0,    0
> [    2.296246] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:32:p=
lane 1A]  blocks   33,  33,   7,   7,   7,   7,   7,   7,   7,  33,    7 ->=
   16,  81,  81,  81,  81,  97, 145, 161,   0,   0,    0
> [    2.296331] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:32:p=
lane 1A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
   19,  91,  91,  91,  91, 108, 161, 179,   0,   0,    0
> [    2.296417] i915 0000:00:02.0: [drm:intel_bw_atomic_check [i915]] QGV =
point 0: max bw 14636 required 665
> [    2.296517] i915 0000:00:02.0: [drm:intel_bw_atomic_check [i915]] No S=
AGV, using single QGV point mask 0x1
> [    2.296614] i915 0000:00:02.0: [drm:intel_bw_calc_min_cdclk [i915]] ne=
w bandwidth min cdclk (12970 kHz) > old min cdclk (0 kHz)
> [    2.296709] i915 0000:00:02.0: [drm:intel_modeset_pipe [i915]] [CRTC:1=
00:pipe A] Full modeset due to CDCLK change
> [    2.296807] i915 0000:00:02.0: [drm:intel_modeset_calc_cdclk [i915]] M=
odeset required for cdclk change
> [    2.296901] i915 0000:00:02.0: [drm:intel_modeset_calc_cdclk [i915]] N=
ew cdclk calculated to be logical 172800 kHz, actual 172800 kHz
> [    2.296992] i915 0000:00:02.0: [drm:intel_modeset_calc_cdclk [i915]] N=
ew voltage level calculated to be logical 0, actual 0
> [    2.297087] i915 0000:00:02.0: [drm] [CRTC:100:pipe A] enable: yes [mo=
deset]
> [    2.297089] i915 0000:00:02.0: [drm] active: yes, output_types: EDP (0=
x100), output format: RGB, sink format: RGB
> [    2.297091] i915 0000:00:02.0: [drm] cpu_transcoder: A, pipe bpp: 24, =
dithering: 0
> [    2.297093] i915 0000:00:02.0: [drm] MST master transcoder: <invalid>
> [    2.297094] i915 0000:00:02.0: [drm] port sync: master transcoder: <in=
valid>, slave transcoder bitmask =3D 0x0
> [    2.297096] i915 0000:00:02.0: [drm] bigjoiner: no, pipes: 0x0
> [    2.297097] i915 0000:00:02.0: [drm] splitter: disabled, link count 0,=
 overlap 0
> [    2.297099] i915 0000:00:02.0: [drm] dp m_n: lanes: 2; data_m: 7736626=
, data_n: 8388608, link_m: 322359, link_n: 524288, tu: 64
> [    2.297101] i915 0000:00:02.0: [drm] dp m2_n2: lanes: 2; data_m: 0, da=
ta_n: 0, link_m: 0, link_n: 0, tu: 0
> [    2.297103] i915 0000:00:02.0: [drm] fec: disabled, enhanced framing: =
enabled
> [    2.297104] i915 0000:00:02.0: [drm] sdp split: disabled
> [    2.297105] i915 0000:00:02.0: [drm] psr: disabled, selective update: =
disabled, panel replay: disabled, selective fetch: disabled
> [    2.297107] i915 0000:00:02.0: [drm] framestart delay: 1, MSA timing d=
elay: 0
> [    2.297109] i915 0000:00:02.0: [drm] audio: 0, infoframes: 0, infofram=
es enabled: 0x0
> [    2.297110] i915 0000:00:02.0: [drm] vrr: no, vmin: 0, vmax: 0, pipeli=
ne full: 0, guardband: 0 flipline: 0, vmin vblank: -1, vmax vblank: -2
> [    2.297113] i915 0000:00:02.0: [drm] requested mode: "1920x1080": 60 1=
66010 1920 2028 2076 2120 1080 1090 1100 1304 0x40 0xa
> [    2.297115] i915 0000:00:02.0: [drm] adjusted mode: "1920x1080": 60 16=
6010 1920 2028 2076 2120 1080 1090 1100 1304 0x40 0xa
> [    2.297118] i915 0000:00:02.0: [drm] crtc timings: clock=3D166010, hd=
=3D1920 hb=3D1920-2120 hs=3D2028-2076 ht=3D2120, vd=3D1080 vb=3D1080-1304 v=
s=3D1090-1100 vt=3D1304, flags=3D0xa
> [    2.297121] i915 0000:00:02.0: [drm] pipe mode: "1920x1080": 60 166010=
 1920 2028 2076 2120 1080 1090 1100 1304 0x40 0xa
> [    2.297123] i915 0000:00:02.0: [drm] crtc timings: clock=3D166010, hd=
=3D1920 hb=3D1920-2120 hs=3D2028-2076 ht=3D2120, vd=3D1080 vb=3D1080-1304 v=
s=3D1090-1100 vt=3D1304, flags=3D0xa
> [    2.297126] i915 0000:00:02.0: [drm] port clock: 270000, pipe src: 192=
0x1080+0+0, pixel rate 166010
> [    2.297128] i915 0000:00:02.0: [drm] linetime: 103, ips linetime: 0
> [    2.297129] i915 0000:00:02.0: [drm] num_scalers: 2, scaler_users: 0x0=
, scaler_id: -1, scaling_filter: 0
> [    2.297131] i915 0000:00:02.0: [drm] pch pfit: 0x0+0+0, disabled, forc=
e thru: no
> [    2.297133] i915 0000:00:02.0: [drm] ips: 0, double wide: 0, drrs: 0
> [    2.297134] i915 0000:00:02.0: [drm] dpll_hw_state: cfgcr0: 0xe001a5, =
cfgcr1: 0x88, div0: 0x0, mg_refclkin_ctl: 0x0, hg_clktop2_coreclkctl1: 0x0,=
 mg_clktop2_hsclkctl: 0x0, mg_pll_div0: 0x0, mg_pll_div2: 0x0, mg_pll_lf: 0=
x0, mg_pll_frac_lock: 0x0, mg_pll_ssc: 0x0, mg_pll_bias: 0x0, mg_pll_tdc_co=
ldst_bias: 0x0
> [    2.297138] i915 0000:00:02.0: [drm] csc_mode: 0x0 gamma_mode: 0x0 gam=
ma_enable: 0 csc_enable: 0
> [    2.297140] i915 0000:00:02.0: [drm] pre csc lut: 0 entries, post csc =
lut: 0 entries
> [    2.297142] i915 0000:00:02.0: [drm] output csc: pre offsets: 0x0000 0=
x0000 0x0000
> [    2.297143] i915 0000:00:02.0: [drm] output csc: coefficients: 0x0000 =
0x0000 0x0000
> [    2.297145] i915 0000:00:02.0: [drm] output csc: coefficients: 0x0000 =
0x0000 0x0000
> [    2.297146] i915 0000:00:02.0: [drm] output csc: coefficients: 0x0000 =
0x0000 0x0000
> [    2.297148] i915 0000:00:02.0: [drm] output csc: post offsets: 0x0000 =
0x0000 0x0000
> [    2.297149] i915 0000:00:02.0: [drm] pipe csc: pre offsets: 0x0000 0x0=
000 0x0000
> [    2.297151] i915 0000:00:02.0: [drm] pipe csc: coefficients: 0x0000 0x=
0000 0x0000
> [    2.297152] i915 0000:00:02.0: [drm] pipe csc: coefficients: 0x0000 0x=
0000 0x0000
> [    2.297154] i915 0000:00:02.0: [drm] pipe csc: coefficients: 0x0000 0x=
0000 0x0000
> [    2.297155] i915 0000:00:02.0: [drm] pipe csc: post offsets: 0x0000 0x=
0000 0x0000
> [    2.297156] i915 0000:00:02.0: [drm] [PLANE:32:plane 1A] fb: [FB:358] =
1920x1080 format =3D XR24 little-endian (0x34325258) modifier =3D 0x0, visi=
ble: yes
> [    2.297160] i915 0000:00:02.0: [drm] 	rotation: 0x1, scaler: -1, scali=
ng_filter: 0
> [    2.297161] i915 0000:00:02.0: [drm] 	src: 1920.000000x1080.000000+0.0=
00000+0.000000 dst: 1920x1080+0+0
> [    2.297164] i915 0000:00:02.0: [drm] [PLANE:95:cursor A] fb: [NOFB], v=
isible: no
> [    2.297487] i915 0000:00:02.0: [drm:intel_edp_backlight_off [i915]]=20
> [    2.451174] usb 1-6: New USB device found, idVendor=3D13d3, idProduct=
=3D56ff, bcdDevice=3D19.19
> [    2.451190] usb 1-6: New USB device strings: Mfr=3D2, Product=3D1, Ser=
ialNumber=3D0
> [    2.451196] usb 1-6: Product: Integrated Camera
> [    2.451200] usb 1-6: Manufacturer: Azurewave
> [    2.502908] i915 0000:00:02.0: [drm:intel_backlight_set_pwm_level [i91=
5]] [CONNECTOR:313:eDP-1] set backlight PWM =3D 0
> [    2.503482] i915 0000:00:02.0: [drm:intel_disable_transcoder [i915]] d=
isabling pipe A
> [    2.506877] i915 0000:00:02.0: [drm:intel_pps_off_unlocked [i915]] [EN=
CODER:312:DDI A/PHY A] PPS 0 turn panel power off
> [    2.507279] i915 0000:00:02.0: [drm:intel_pps_off_unlocked [i915]] [EN=
CODER:312:DDI A/PHY A] PPS 0 wait for panel power off time
> [    2.507640] i915 0000:00:02.0: [drm:wait_panel_status [i915]] [ENCODER=
:312:DDI A/PHY A] PPS 0 mask: 0xb0000000 value: 0x00000000 PP_STATUS: 0xa00=
00002 PP_CONTROL: 0x00000060
> [    2.561628] i915 0000:00:02.0: [drm:intel_pps_off_unlocked [i915]] Wai=
t complete
> [    2.562001] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling DDI_IO_A
> [    2.562410] i915 0000:00:02.0: [drm:intel_disable_shared_dpll [i915]] =
disable DPLL 0 (active 0x1, on? 1) for [CRTC:100:pipe A]
> [    2.562783] i915 0000:00:02.0: [drm:intel_disable_shared_dpll [i915]] =
disabling DPLL 0
> [    2.563117] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling AUX_A
> [    2.563485] i915 0000:00:02.0: [drm:intel_set_cdclk [i915]] Pre changi=
ng CDCLK to 172800 kHz, VCO 345600 kHz, ref 38400 kHz, bypass 19200 kHz, vo=
ltage level 0
> [    2.563898] i915 0000:00:02.0: [drm:intel_modeset_verify_disabled [i91=
5]] [ENCODER:312:DDI A/PHY A]
> [    2.564240] i915 0000:00:02.0: [drm:intel_modeset_verify_disabled [i91=
5]] [ENCODER:321:DDI B/PHY B]
> [    2.564566] i915 0000:00:02.0: [drm:intel_modeset_verify_disabled [i91=
5]] [ENCODER:323:DP-MST A]
> [    2.564872] i915 0000:00:02.0: [drm:intel_modeset_verify_disabled [i91=
5]] [ENCODER:324:DP-MST B]
> [    2.565157] i915 0000:00:02.0: [drm:intel_modeset_verify_disabled [i91=
5]] [ENCODER:325:DP-MST C]
> [    2.565440] i915 0000:00:02.0: [drm:intel_modeset_verify_disabled [i91=
5]] [ENCODER:326:DP-MST D]
> [    2.565721] i915 0000:00:02.0: [drm:intel_modeset_verify_disabled [i91=
5]] [ENCODER:339:DDI TC1/PHY TC1]
> [    2.566002] i915 0000:00:02.0: [drm:intel_modeset_verify_disabled [i91=
5]] [ENCODER:341:DP-MST A]
> [    2.566280] i915 0000:00:02.0: [drm:intel_modeset_verify_disabled [i91=
5]] [ENCODER:342:DP-MST B]
> [    2.566555] i915 0000:00:02.0: [drm:intel_modeset_verify_disabled [i91=
5]] [ENCODER:343:DP-MST C]
> [    2.566836] i915 0000:00:02.0: [drm:intel_modeset_verify_disabled [i91=
5]] [ENCODER:344:DP-MST D]
> [    2.567107] i915 0000:00:02.0: [drm:intel_modeset_verify_disabled [i91=
5]] [ENCODER:348:DDI TC2/PHY TC2]
> [    2.567377] i915 0000:00:02.0: [drm:intel_modeset_verify_disabled [i91=
5]] [ENCODER:350:DP-MST A]
> [    2.567663] i915 0000:00:02.0: [drm:intel_modeset_verify_disabled [i91=
5]] [ENCODER:351:DP-MST B]
> [    2.567944] i915 0000:00:02.0: [drm:intel_modeset_verify_disabled [i91=
5]] [ENCODER:352:DP-MST C]
> [    2.568213] i915 0000:00:02.0: [drm:intel_modeset_verify_disabled [i91=
5]] [ENCODER:353:DP-MST D]
> [    2.568499] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling AUX_A
> [    2.568825] i915 0000:00:02.0: [drm:intel_enable_shared_dpll [i915]] e=
nable DPLL 0 (active 0x1, on? 0) for [CRTC:100:pipe A]
> [    2.569135] i915 0000:00:02.0: [drm:intel_enable_shared_dpll [i915]] e=
nabling DPLL 0
> [    2.569473] i915 0000:00:02.0: [drm:intel_pps_on_unlocked [i915]] [ENC=
ODER:312:DDI A/PHY A] PPS 0 turn panel power on
> [    2.569781] i915 0000:00:02.0: [drm:wait_panel_power_cycle [i915]] [EN=
CODER:312:DDI A/PHY A] PPS 0 wait for panel power cycle
> [    2.578970] usb 1-8: new full-speed USB device number 6 using xhci_hcd
> [    3.187044] i915 0000:00:02.0: [drm:wait_panel_status [i915]] [ENCODER=
:312:DDI A/PHY A] PPS 0 mask: 0xb800000f value: 0x00000000 PP_STATUS: 0x000=
00000 PP_CONTROL: 0x00000060
> [    3.187437] i915 0000:00:02.0: [drm:intel_pps_on_unlocked [i915]] Wait=
 complete
> [    3.187781] i915 0000:00:02.0: [drm:intel_pps_on_unlocked [i915]] [ENC=
ODER:312:DDI A/PHY A] PPS 0 wait for panel power on
> [    3.188126] i915 0000:00:02.0: [drm:wait_panel_status [i915]] [ENCODER=
:312:DDI A/PHY A] PPS 0 mask: 0xb000000f value: 0x80000008 PP_STATUS: 0x900=
0000a PP_CONTROL: 0x00000063
> [    3.398918] i915 0000:00:02.0: [drm:intel_pps_on_unlocked [i915]] Wait=
 complete
> [    3.399298] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling DDI_IO_A
> [    3.399765] i915 0000:00:02.0: [drm:intel_pps_vdd_on_unlocked [i915]] =
[ENCODER:312:DDI A/PHY A] PPS 0 turning VDD on
> [    3.400149] i915 0000:00:02.0: [drm:intel_pps_vdd_on_unlocked [i915]] =
[ENCODER:312:DDI A/PHY A] PPS 0 PP_STATUS: 0x80000008 PP_CONTROL: 0x0000006b
> [    3.401426] i915 0000:00:02.0: [drm:drm_dp_read_dpcd_caps [drm_display=
_helper]] AUX A/DDI A/PHY A: DPCD: 11 0a 82 41 00 00 01 c0 02 00 00 00 0f 0=
b 00
> [    3.401494] i915 0000:00:02.0: [drm:intel_dp_start_link_train [i915]] =
[CONNECTOR:313:eDP-1][ENCODER:312:DDI A/PHY A][DPRX] Using LINK_BW_SET valu=
e 0a
> [    3.402208] i915 0000:00:02.0: [drm:intel_dp_set_signal_levels [i915]]=
 [CONNECTOR:313:eDP-1][ENCODER:312:DDI A/PHY A][DPRX] 8b/10b, lanes: 2, vsw=
ing levels: 0/0/0/0, pre-emphasis levels: 0/0/0/0
> [    3.402580] i915 0000:00:02.0: [drm:intel_dp_program_link_training_pat=
tern [i915]] [CONNECTOR:313:eDP-1][ENCODER:312:DDI A/PHY A][DPRX] Using DP =
training pattern TPS1
> [    3.403859] i915 0000:00:02.0: [drm:intel_dp_link_train_phy [i915]] [C=
ONNECTOR:313:eDP-1][ENCODER:312:DDI A/PHY A][DPRX] Clock recovery OK
> [    3.404147] i915 0000:00:02.0: [drm:intel_dp_program_link_training_pat=
tern [i915]] [CONNECTOR:313:eDP-1][ENCODER:312:DDI A/PHY A][DPRX] Using DP =
training pattern TPS2
> [    3.406012] i915 0000:00:02.0: [drm:intel_dp_link_train_phy [i915]] [C=
ONNECTOR:313:eDP-1][ENCODER:312:DDI A/PHY A][DPRX] Channel EQ done. DP Trai=
ning successful
> [    3.406296] i915 0000:00:02.0: [drm:intel_dp_link_train_phy [i915]] [C=
ONNECTOR:313:eDP-1][ENCODER:312:DDI A/PHY A][DPRX] Link Training passed at =
link rate =3D 270000, lane count =3D 2
> [    3.406951] i915 0000:00:02.0: [drm:intel_enable_transcoder [i915]] en=
abling pipe A
> [    3.407335] i915 0000:00:02.0: [drm:intel_edp_backlight_on [i915]]=20
> [    3.407628] i915 0000:00:02.0: [drm:intel_backlight_enable [i915]] pip=
e A
> [    3.407970] i915 0000:00:02.0: [drm:intel_backlight_set_pwm_level [i91=
5]] [CONNECTOR:313:eDP-1] set backlight PWM =3D 96000
> [    3.409016] i915 0000:00:02.0: [drm:intel_fbc_update [i915]] reserved =
17694720 bytes of contiguous stolen space for FBC, limit: 1
> [    3.409372] i915 0000:00:02.0: [drm:intel_fbc_update [i915]] Enabling =
FBC on [PLANE:32:plane 1A]
> [    3.424333] i915 0000:00:02.0: [drm:verify_connector_state [i915]] [CO=
NNECTOR:313:eDP-1]
> [    3.424748] i915 0000:00:02.0: [drm:intel_modeset_verify_crtc [i915]] =
[CRTC:100:pipe A]
> [    3.427242] i915 0000:00:02.0: [drm:drm_sysfs_connector_add [drm]] [CO=
NNECTOR:313:eDP-1] adding connector to sysfs
> [    3.427979] i915 0000:00:02.0: [drm:intel_backlight_device_register [i=
915]] [CONNECTOR:313:eDP-1] backlight device intel_backlight registered
> [    3.428359] i915 0000:00:02.0: [drm:intel_dp_connector_register [i915]=
] registering AUX A/DDI A/PHY A bus for card0-eDP-1
> [    3.428736] i915 0000:00:02.0: [drm:drm_sysfs_connector_hotplug_event =
[drm]] [CONNECTOR:313:eDP-1] generating connector hotplug event
> [    3.428821] i915 0000:00:02.0: [drm:drm_sysfs_connector_add [drm]] [CO=
NNECTOR:322:DP-1] adding connector to sysfs
> [    3.428938] i915 0000:00:02.0: [drm:intel_dp_connector_register [i915]=
] registering AUX B/DDI B/PHY B bus for card0-DP-1
> [    3.429283] i915 0000:00:02.0: [drm:drm_sysfs_connector_hotplug_event =
[drm]] [CONNECTOR:322:DP-1] generating connector hotplug event
> [    3.429360] i915 0000:00:02.0: [drm:drm_sysfs_connector_add [drm]] [CO=
NNECTOR:334:HDMI-A-1] adding connector to sysfs
> [    3.429465] i915 0000:00:02.0: [drm:drm_sysfs_connector_hotplug_event =
[drm]] [CONNECTOR:334:HDMI-A-1] generating connector hotplug event
> [    3.429538] i915 0000:00:02.0: [drm:drm_sysfs_connector_add [drm]] [CO=
NNECTOR:340:DP-2] adding connector to sysfs
> [    3.429654] i915 0000:00:02.0: [drm:intel_dp_connector_register [i915]=
] registering AUX USBC1/DDI TC1/PHY TC1 bus for card0-DP-2
> [    3.429989] i915 0000:00:02.0: [drm:drm_sysfs_connector_hotplug_event =
[drm]] [CONNECTOR:340:DP-2] generating connector hotplug event
> [    3.430064] i915 0000:00:02.0: [drm:drm_sysfs_connector_add [drm]] [CO=
NNECTOR:349:DP-3] adding connector to sysfs
> [    3.430171] i915 0000:00:02.0: [drm:intel_dp_connector_register [i915]=
] registering AUX USBC2/DDI TC2/PHY TC2 bus for card0-DP-3
> [    3.430495] i915 0000:00:02.0: [drm:drm_sysfs_connector_hotplug_event =
[drm]] [CONNECTOR:349:DP-3] generating connector hotplug event
> [    3.430569] [drm] Initialized i915 1.6.0 20230929 for 0000:00:02.0 on =
minor 0
> [    3.430794] i915 0000:00:02.0: [drm:intel_opregion_resume [i915]] 5 ou=
tputs detected
> [    3.433530] ACPI: video: Video Device [GFX0] (multi-head: yes  rom: no=
  post: no)
> [    3.434037] input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A=
08:00/LNXVIDEO:00/input/input11
> [    3.434230] ACPI: video: [Firmware Bug]: ACPI(PXSX) defines _DOD but n=
ot _DOS
> [    3.434246] ACPI: video: Video Device [PXSX] (multi-head: yes  rom: no=
  post: no)
> [    3.434287] input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A=
08:00/device:46/LNXVIDEO:01/input/input12
> [    3.434383] i915 0000:00:02.0: [drm:intel_audio_init [i915]] use AUD_F=
REQ_CNTRL of 0x8010 (init value 0x8010)
> [    3.435012] i915 0000:00:02.0: [drm:intel_fbdev_setup [i915]] found po=
ssible fb from [PLANE:32:plane 1A]
> [    3.435444] i915 0000:00:02.0: [drm:intel_fbdev_setup [i915]] [CRTC:17=
0:pipe B] not active, skipping
> [    3.435853] i915 0000:00:02.0: [drm:intel_fbdev_setup [i915]] [CRTC:24=
0:pipe C] not active, skipping
> [    3.436162] i915 0000:00:02.0: [drm:intel_fbdev_setup [i915]] [CRTC:31=
0:pipe D] not active, skipping
> [    3.436520] i915 0000:00:02.0: [drm:intel_fbdev_setup [i915]] checking=
 [PLANE:32:plane 1A] for BIOS fb
> [    3.436895] i915 0000:00:02.0: [drm:intel_fbdev_setup [i915]] [CRTC:10=
0:pipe A] area: 1920x1080, bpp: 32, size: 8294400
> [    3.437201] i915 0000:00:02.0: [drm:intel_fbdev_setup [i915]] fb big e=
nough [PLANE:32:plane 1A] (8294400 >=3D 8294400)
> [    3.437574] i915 0000:00:02.0: [drm:intel_fbdev_setup [i915]] [CRTC:17=
0:pipe B] not active, skipping
> [    3.437836] i915 0000:00:02.0: [drm:intel_fbdev_setup [i915]] [CRTC:24=
0:pipe C] not active, skipping
> [    3.438094] i915 0000:00:02.0: [drm:intel_fbdev_setup [i915]] [CRTC:31=
0:pipe D] not active, skipping
> [    3.438379] i915 0000:00:02.0: [drm:intel_fbdev_setup [i915]] using BI=
OS fb for initial console
> [    3.438630] i915 0000:00:02.0: [drm:i915_gem_open [i915]]=20
> [    3.439015] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:313:eDP-1]
> [    3.439417] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sourc=
e rates: 162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000
> [    3.439783] i915 0000:00:02.0: [drm:drm_client_modeset_probe [drm]]=20
> [    3.439815] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sink =
rates: 162000, 270000
> [    3.440129] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] commo=
n rates: 162000, 270000
> [    3.440349] i915 0000:00:02.0: [drm:update_display_info.part.0 [drm]] =
[CONNECTOR:313:eDP-1] Supported Monitor Refresh rate range is 48 Hz - 60 Hz
> [    3.440416] i915 0000:00:02.0: [drm:update_display_info.part.0 [drm]] =
[CONNECTOR:313:eDP-1] Assigning EDID-1.4 digital sink color depth as 8 bpc.
> [    3.440475] i915 0000:00:02.0: [drm:update_display_info.part.0 [drm]] =
[CONNECTOR:313:eDP-1] ELD monitor=20
> [    3.440531] i915 0000:00:02.0: [drm:update_display_info.part.0 [drm]] =
[CONNECTOR:313:eDP-1] ELD size 20, SAD count 0
> [    3.440592] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:313:eDP-1] VRR capable: yes
> [    3.440807] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:313:eDP-1] DFP max bpc 0, max dotclock 0, TMDS clock 0-0, PCON Max FRL B=
W 0Gbps
> [    3.441689] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] PCON ENC=
ODER DSC DPCD: 00 00 00 00 00 00 00 00 00 00 00 00 00
> [    3.441883] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:313:eDP-1] RGB->YcbCr conversion? no, YCbCr 4:2:0 allowed? yes, YCbCr 4:=
4:4->4:2:0 conversion? no
> [    3.442449] i915 0000:00:02.0: [drm:intel_hotplug_detect_connector [i9=
15]] [CONNECTOR:313:eDP-1] status updated from unknown to connected (epoch =
counter 0->1)
> [    3.442687] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:322:DP-1]
> [    3.450728] i915 0000:00:02.0: [drm:intel_hotplug_detect_connector [i9=
15]] [CONNECTOR:322:DP-1] status updated from unknown to disconnected (epoc=
h counter 0->1)
> [    3.450849] i915 0000:00:02.0: [drm:intel_hdmi_detect [i915]] [CONNECT=
OR:334:HDMI-A-1]
> [    3.458751] i915 0000:00:02.0: [drm:intel_hotplug_detect_connector [i9=
15]] [CONNECTOR:334:HDMI-A-1] status updated from unknown to disconnected (=
epoch counter 0->1)
> [    3.458851] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:340:DP-2]
> [    3.458942] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling TC_cold_off
> [    3.459048] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] TC=
 cold block succeeded
> [    3.459154] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    3.459245] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling TC_cold_off
> [    3.459344] i915 0000:00:02.0: [drm:__intel_display_power_put_domain [=
i915]] TC cold unblock succeeded
> [    3.459437] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling TC_cold_off
> [    3.459536] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] TC=
 cold block succeeded
> [    3.459637] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    3.459726] i915 0000:00:02.0: [drm:intel_tc_port_update_mode [i915]] =
Port D/TC#1: TC port mode reset (disconnected -> tbt-alt)
> [    3.459828] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    3.459912] i915 0000:00:02.0: [drm:intel_hotplug_detect_connector [i9=
15]] [CONNECTOR:340:DP-2] status updated from unknown to disconnected (epoc=
h counter 0->1)
> [    3.460000] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:349:DP-3]
> [    3.460100] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    3.460198] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    3.460281] i915 0000:00:02.0: [drm:intel_tc_port_update_mode [i915]] =
Port E/TC#2: TC port mode reset (disconnected -> tbt-alt)
> [    3.460376] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    3.460456] i915 0000:00:02.0: [drm:intel_hotplug_detect_connector [i9=
15]] [CONNECTOR:349:DP-3] status updated from unknown to disconnected (epoc=
h counter 0->1)
> [    3.460546] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:313:eDP-1]
> [    3.460543] i915 0000:00:02.0: [drm:drm_sysfs_hotplug_event [drm]] gen=
erating hotplug event
> [    3.460569] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:313:eDP-1]
> [    3.460670] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sourc=
e rates: 162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000
> [    3.460765] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sink =
rates: 162000, 270000
> [    3.460853] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] commo=
n rates: 162000, 270000
> [    3.460940] i915 0000:00:02.0: [drm:update_display_info.part.0 [drm]] =
[CONNECTOR:313:eDP-1] Supported Monitor Refresh rate range is 48 Hz - 60 Hz
> [    3.460968] i915 0000:00:02.0: [drm:update_display_info.part.0 [drm]] =
[CONNECTOR:313:eDP-1] Assigning EDID-1.4 digital sink color depth as 8 bpc.
> [    3.460995] i915 0000:00:02.0: [drm:update_display_info.part.0 [drm]] =
[CONNECTOR:313:eDP-1] ELD monitor=20
> [    3.461019] i915 0000:00:02.0: [drm:update_display_info.part.0 [drm]] =
[CONNECTOR:313:eDP-1] ELD size 20, SAD count 0
> [    3.461044] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:313:eDP-1] VRR capable: yes
> [    3.461132] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:313:eDP-1] DFP max bpc 0, max dotclock 0, TMDS clock 0-0, PCON Max FRL B=
W 0Gbps
> [    3.461736] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] PCON ENC=
ODER DSC DPCD: 00 00 00 00 00 00 00 00 00 00 00 00 00
> [    3.461822] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:313:eDP-1] RGB->YcbCr conversion? no, YCbCr 4:2:0 allowed? yes, YCbCr 4:=
4:4->4:2:0 conversion? no
> [    3.462273] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:313:eDP-1] probed modes:
> [    3.462284] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] Probed mode: "1920x1080": 60 166010 1920 2028 2076 =
2120 1080 1090 1100 1304 0x48 0xa
> [    3.462294] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:322:DP-1]
> [    3.462304] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:322:DP-1]
> [    3.466817] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:322:DP-1] disconnected
> [    3.466827] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:334:HDMI-A-1]
> [    3.466836] i915 0000:00:02.0: [drm:intel_hdmi_detect [i915]] [CONNECT=
OR:334:HDMI-A-1]
> [    3.474849] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:334:HDMI-A-1] disconnected
> [    3.474859] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:340:DP-2]
> [    3.474868] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:340:DP-2]
> [    3.474970] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    3.475077] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    3.475165] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:340:DP-2] disconnected
> [    3.475173] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:349:DP-3]
> [    3.475182] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:349:DP-3]
> [    3.475277] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    3.475377] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    3.475459] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:349:DP-3] disconnected
> [    3.475468] i915 0000:00:02.0: [drm:drm_client_modeset_probe [drm]] [C=
ONNECTOR:313:eDP-1] enabled? yes
> [    3.475491] i915 0000:00:02.0: [drm:drm_client_modeset_probe [drm]] [C=
ONNECTOR:322:DP-1] enabled? no
> [    3.475509] i915 0000:00:02.0: [drm:drm_client_modeset_probe [drm]] [C=
ONNECTOR:334:HDMI-A-1] enabled? no
> [    3.475526] i915 0000:00:02.0: [drm:drm_client_modeset_probe [drm]] [C=
ONNECTOR:340:DP-2] enabled? no
> [    3.475543] i915 0000:00:02.0: [drm:drm_client_modeset_probe [drm]] [C=
ONNECTOR:349:DP-3] enabled? no
> [    3.475564] i915 0000:00:02.0: [drm:drm_client_modeset_probe [drm]] No=
t using firmware configuration
> [    3.475582] i915 0000:00:02.0: [drm:drm_client_modeset_probe [drm]] [C=
ONNECTOR:313:eDP-1] looking for cmdline mode
> [    3.475599] i915 0000:00:02.0: [drm:drm_client_modeset_probe [drm]] [C=
ONNECTOR:313:eDP-1] looking for preferred mode, tile 0
> [    3.475616] i915 0000:00:02.0: [drm:drm_client_modeset_probe [drm]] [C=
ONNECTOR:313:eDP-1] Found mode 1920x1080
> [    3.475633] i915 0000:00:02.0: [drm:drm_client_modeset_probe [drm]] pi=
cking CRTCs for 16384x16384 config
> [    3.475651] i915 0000:00:02.0: [drm:drm_client_modeset_probe [drm]] [C=
RTC:100:pipe A] desired mode 1920x1080 set (0,0)
> [    3.475669] i915 0000:00:02.0: [drm:__drm_fb_helper_initial_config_and=
_unlock [drm_kms_helper]] test CRTC 0 primary plane
> [    3.475679] i915 0000:00:02.0: [drm:intelfb_create [i915]] re-using BI=
OS fb
> [    3.475771] i915 0000:00:02.0: [drm:intelfb_create [i915]] allocated 1=
920x1080 fb: 0x00000000
> [    3.475979] fbcon: i915drmfb (fb0) is primary device
> [    3.476032] i915 0000:00:02.0: [drm:intel_atomic_check [i915]] [CONNEC=
TOR:313:eDP-1] Limiting display bpp to 24 (EDID bpp 24, max requested bpp 3=
6, max platform bpp 36)
> [    3.476147] i915 0000:00:02.0: [drm:intel_dp_compute_config_link_bpp_l=
imits [i915]] [ENCODER:312:DDI A/PHY A][CRTC:100:pipe A] DP link limits: pi=
xel clock 166010 kHz DSC off max lanes 2 max rate 270000 max pipe_bpp 24 ma=
x link_bpp 24.0000
> [    3.476240] i915 0000:00:02.0: [drm:intel_dp_compute_link_config [i915=
]] DP lane count 2 clock 270000 bpp input 24 compressed 0.0000 link rate re=
quired 498030 available 540000
> [    3.476330] i915 0000:00:02.0: [drm:intel_dp_compute_config [i915]] PS=
R disabled by flag
> [    3.476422] i915 0000:00:02.0: [drm:intel_atomic_check [i915]] [CRTC:1=
00:pipe A] hw max bpp: 24, pipe bpp: 24, dithering: 0
> [    3.476519] i915 0000:00:02.0: [drm:intel_ddi_compute_config_late [i91=
5]] [ENCODER:312:DDI A/PHY A] [CRTC:100:pipe A]
> [    3.476624] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:32:p=
lane 1A]   level *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7, twm, swm, stwm ->=
 *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7,*twm, swm, stwm
> [    3.476711] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:32:p=
lane 1A]   lines    1,   5,   5,   5,   5,   6,   9,  10,   0,   0,    0 ->=
    1,   5,   5,   5,   5,   6,   9,  10,   0,   0,    0
> [    3.476795] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:32:p=
lane 1A]  blocks   16,  81,  81,  81,  81,  97, 145, 161,   0,   0,    0 ->=
   16,  81,  81,  81,  81,  97, 145, 161,  30,   0,    0
> [    3.476879] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:32:p=
lane 1A] min_ddb   19,  91,  91,  91,  91, 108, 161, 179,   0,   0,    0 ->=
   19,  91,  91,  91,  91, 108, 161, 179,  31,   0,    0
> [    3.476961] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:41:p=
lane 2A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm ->=
  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
> [    3.477042] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:41:p=
lane 2A]   lines    1,   1,   1,   1,   1,   1,   1,   1,   1,   1,    1 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    3.477124] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:41:p=
lane 2A]  blocks    7,   7,   7,   7,   7,   7,   7,   7,   7,   7,    7 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    3.477204] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:41:p=
lane 2A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    3.477289] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:50:p=
lane 3A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm ->=
  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
> [    3.477371] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:50:p=
lane 3A]   lines    1,   1,   1,   1,   1,   1,   1,   1,   1,   1,    1 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    3.477450] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:50:p=
lane 3A]  blocks    7,   7,   7,   7,   7,   7,   7,   7,   7,   7,    7 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    3.477532] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:50:p=
lane 3A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    3.477614] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:59:p=
lane 4A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm ->=
  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
> [    3.477695] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:59:p=
lane 4A]   lines    1,   1,   1,   1,   1,   1,   1,   1,   1,   1,    1 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    3.477777] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:59:p=
lane 4A]  blocks    7,   7,   7,   7,   7,   7,   7,   7,   7,   7,    7 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    3.477857] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:59:p=
lane 4A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    3.477937] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:68:p=
lane 5A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm ->=
  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
> [    3.478016] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:68:p=
lane 5A]   lines    1,   1,   1,   1,   1,   1,   1,   1,   1,   1,    1 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    3.478095] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:68:p=
lane 5A]  blocks    7,   7,   7,   7,   7,   7,   7,   7,   7,   7,    7 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    3.478173] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:68:p=
lane 5A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    3.478252] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:77:p=
lane 6A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm ->=
  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
> [    3.478331] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:77:p=
lane 6A]   lines    1,   1,   1,   1,   1,   1,   1,   1,   1,   1,    1 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    3.478411] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:77:p=
lane 6A]  blocks    7,   7,   7,   7,   7,   7,   7,   7,   7,   7,    7 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    3.478491] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:77:p=
lane 6A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    3.478570] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:86:p=
lane 7A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm ->=
  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
> [    3.478649] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:86:p=
lane 7A]   lines    1,   1,   1,   1,   1,   1,   1,   1,   1,   1,    1 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    3.478736] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:86:p=
lane 7A]  blocks    7,   7,   7,   7,   7,   7,   7,   7,   7,   7,    7 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    3.478816] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:86:p=
lane 7A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    3.478889] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:95:c=
ursor A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm ->=
  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
> [    3.478961] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:95:c=
ursor A]   lines    1,   1,   1,   1,   1,   1,   1,   1,   1,   1,    1 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    3.479032] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:95:c=
ursor A]  blocks    7,   7,   7,   7,   7,   7,   7,   7,   7,   7,    7 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    3.479104] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:95:c=
ursor A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    3.479181] i915 0000:00:02.0: [drm] [CRTC:100:pipe A] enable: yes [fa=
stset]
> [    3.479183] i915 0000:00:02.0: [drm] active: yes, output_types: EDP (0=
x100), output format: RGB, sink format: RGB
> [    3.479184] i915 0000:00:02.0: [drm] cpu_transcoder: A, pipe bpp: 24, =
dithering: 0
> [    3.479185] i915 0000:00:02.0: [drm] MST master transcoder: <invalid>
> [    3.479185] i915 0000:00:02.0: [drm] port sync: master transcoder: <in=
valid>, slave transcoder bitmask =3D 0x0
> [    3.479186] i915 0000:00:02.0: [drm] bigjoiner: no, pipes: 0x0
> [    3.479187] i915 0000:00:02.0: [drm] splitter: disabled, link count 0,=
 overlap 0
> [    3.479188] i915 0000:00:02.0: [drm] dp m_n: lanes: 2; data_m: 7736626=
, data_n: 8388608, link_m: 322359, link_n: 524288, tu: 64
> [    3.479189] i915 0000:00:02.0: [drm] dp m2_n2: lanes: 2; data_m: 0, da=
ta_n: 0, link_m: 0, link_n: 0, tu: 0
> [    3.479190] i915 0000:00:02.0: [drm] fec: disabled, enhanced framing: =
enabled
> [    3.479190] i915 0000:00:02.0: [drm] sdp split: disabled
> [    3.479191] i915 0000:00:02.0: [drm] psr: disabled, selective update: =
disabled, panel replay: disabled, selective fetch: disabled
> [    3.479191] i915 0000:00:02.0: [drm] framestart delay: 1, MSA timing d=
elay: 0
> [    3.479192] i915 0000:00:02.0: [drm] audio: 0, infoframes: 0, infofram=
es enabled: 0x0
> [    3.479193] i915 0000:00:02.0: [drm] vrr: no, vmin: 1305, vmax: 1631, =
pipeline full: 223, guardband: 0 flipline: 1306, vmin vblank: 1081, vmax vb=
lank: 1406
> [    3.479194] i915 0000:00:02.0: [drm] requested mode: "1920x1080": 60 1=
66010 1920 2028 2076 2120 1080 1090 1100 1304 0x48 0xa
> [    3.479196] i915 0000:00:02.0: [drm] adjusted mode: "1920x1080": 60 16=
6010 1920 2028 2076 2120 1080 1090 1100 1304 0x48 0xa
> [    3.479197] i915 0000:00:02.0: [drm] crtc timings: clock=3D166010, hd=
=3D1920 hb=3D1920-2120 hs=3D2028-2076 ht=3D2120, vd=3D1080 vb=3D1080-1304 v=
s=3D1090-1100 vt=3D1304, flags=3D0xa
> [    3.479199] i915 0000:00:02.0: [drm] pipe mode: "1920x1080": 60 166010=
 1920 2028 2076 2120 1080 1090 1100 1304 0x40 0xa
> [    3.479200] i915 0000:00:02.0: [drm] crtc timings: clock=3D166010, hd=
=3D1920 hb=3D1920-2120 hs=3D2028-2076 ht=3D2120, vd=3D1080 vb=3D1080-1304 v=
s=3D1090-1100 vt=3D1304, flags=3D0xa
> [    3.479201] i915 0000:00:02.0: [drm] port clock: 270000, pipe src: 192=
0x1080+0+0, pixel rate 166010
> [    3.479202] i915 0000:00:02.0: [drm] linetime: 103, ips linetime: 0
> [    3.479203] i915 0000:00:02.0: [drm] num_scalers: 2, scaler_users: 0x0=
, scaler_id: -1, scaling_filter: 0
> [    3.479204] i915 0000:00:02.0: [drm] pch pfit: 0x0+0+0, disabled, forc=
e thru: no
> [    3.479205] i915 0000:00:02.0: [drm] ips: 0, double wide: 0, drrs: 0
> [    3.479205] i915 0000:00:02.0: [drm] dpll_hw_state: cfgcr0: 0xe001a5, =
cfgcr1: 0x88, div0: 0x0, mg_refclkin_ctl: 0x0, hg_clktop2_coreclkctl1: 0x0,=
 mg_clktop2_hsclkctl: 0x0, mg_pll_div0: 0x0, mg_pll_div2: 0x0, mg_pll_lf: 0=
x0, mg_pll_frac_lock: 0x0, mg_pll_ssc: 0x0, mg_pll_bias: 0x0, mg_pll_tdc_co=
ldst_bias: 0x0
> [    3.479207] i915 0000:00:02.0: [drm] csc_mode: 0x0 gamma_mode: 0x0 gam=
ma_enable: 0 csc_enable: 0
> [    3.479208] i915 0000:00:02.0: [drm] pre csc lut: 0 entries, post csc =
lut: 0 entries
> [    3.479209] i915 0000:00:02.0: [drm] output csc: pre offsets: 0x0000 0=
x0000 0x0000
> [    3.479210] i915 0000:00:02.0: [drm] output csc: coefficients: 0x0000 =
0x0000 0x0000
> [    3.479210] i915 0000:00:02.0: [drm] output csc: coefficients: 0x0000 =
0x0000 0x0000
> [    3.479211] i915 0000:00:02.0: [drm] output csc: coefficients: 0x0000 =
0x0000 0x0000
> [    3.479212] i915 0000:00:02.0: [drm] output csc: post offsets: 0x0000 =
0x0000 0x0000
> [    3.479212] i915 0000:00:02.0: [drm] pipe csc: pre offsets: 0x0000 0x0=
000 0x0000
> [    3.479213] i915 0000:00:02.0: [drm] pipe csc: coefficients: 0x0000 0x=
0000 0x0000
> [    3.479213] i915 0000:00:02.0: [drm] pipe csc: coefficients: 0x0000 0x=
0000 0x0000
> [    3.479214] i915 0000:00:02.0: [drm] pipe csc: coefficients: 0x0000 0x=
0000 0x0000
> [    3.479214] i915 0000:00:02.0: [drm] pipe csc: post offsets: 0x0000 0x=
0000 0x0000
> [    3.479215] i915 0000:00:02.0: [drm] [PLANE:32:plane 1A] fb: [FB:358] =
1920x1080 format =3D XR24 little-endian (0x34325258) modifier =3D 0x0, visi=
ble: yes
> [    3.479217] i915 0000:00:02.0: [drm] 	rotation: 0x1, scaler: -1, scali=
ng_filter: 0
> [    3.479218] i915 0000:00:02.0: [drm] 	src: 1920.000000x1080.000000+0.0=
00000+0.000000 dst: 1920x1080+0+0
> [    3.479219] i915 0000:00:02.0: [drm] [PLANE:41:plane 2A] fb: [NOFB], v=
isible: no
> [    3.479220] i915 0000:00:02.0: [drm] [PLANE:50:plane 3A] fb: [NOFB], v=
isible: no
> [    3.479220] i915 0000:00:02.0: [drm] [PLANE:59:plane 4A] fb: [NOFB], v=
isible: no
> [    3.479221] i915 0000:00:02.0: [drm] [PLANE:68:plane 5A] fb: [NOFB], v=
isible: no
> [    3.479221] i915 0000:00:02.0: [drm] [PLANE:77:plane 6A] fb: [NOFB], v=
isible: no
> [    3.479222] i915 0000:00:02.0: [drm] [PLANE:86:plane 7A] fb: [NOFB], v=
isible: no
> [    3.479222] i915 0000:00:02.0: [drm] [PLANE:95:cursor A] fb: [NOFB], v=
isible: no
> [    3.490938] i915 0000:00:02.0: [drm:verify_connector_state [i915]] [CO=
NNECTOR:313:eDP-1]
> [    3.491151] i915 0000:00:02.0: [drm:intel_modeset_verify_crtc [i915]] =
[CRTC:100:pipe A]
> [    3.491398] Console: switching to colour frame buffer device 240x67
> [    3.565688] i915 0000:00:02.0: [drm] fb0: i915drmfb frame buffer device
> [    3.590895] i915 0000:00:02.0: [drm] i915 display info: display versio=
n: 12
> [    3.590901] i915 0000:00:02.0: [drm:drm_fb_helper_hotplug_event [drm_k=
ms_helper]]=20
> [    3.592424] i915 0000:00:02.0: [drm] i915 display info: cursor_needs_p=
hysical: no
> [    3.593944] i915 0000:00:02.0: [drm:drm_client_modeset_probe [drm]]=20
> [    3.595511] i915 0000:00:02.0: [drm] i915 display info: has_cdclk_craw=
l: no
> [    3.596898] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:313:eDP-1]
> [    3.598146] i915 0000:00:02.0: [drm] i915 display info: has_cdclk_squa=
sh: no
> [    3.599580] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:313:eDP-1]
> [    3.600787] i915 0000:00:02.0: [drm] i915 display info: has_ddi: yes
> [    3.601937] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sourc=
e rates: 162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000
> [    3.603195] i915 0000:00:02.0: [drm] i915 display info: has_dp_mst: yes
> [    3.604355] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sink =
rates: 162000, 270000
> [    3.605525] i915 0000:00:02.0: [drm] i915 display info: has_dsb: yes
> [    3.606681] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] commo=
n rates: 162000, 270000
> [    3.608098] i915 0000:00:02.0: [drm] i915 display info: has_fpga_dbg: =
yes
> [    3.609252] i915 0000:00:02.0: [drm:update_display_info.part.0 [drm]] =
[CONNECTOR:313:eDP-1] Supported Monitor Refresh rate range is 48 Hz - 60 Hz
> [    3.610400] i915 0000:00:02.0: [drm] i915 display info: has_gmch: no
> [    3.611773] i915 0000:00:02.0: [drm:update_display_info.part.0 [drm]] =
[CONNECTOR:313:eDP-1] Assigning EDID-1.4 digital sink color depth as 8 bpc.
> [    3.612932] i915 0000:00:02.0: [drm] i915 display info: has_hotplug: y=
es
> [    3.614110] i915 0000:00:02.0: [drm:update_display_info.part.0 [drm]] =
[CONNECTOR:313:eDP-1] ELD monitor=20
> [    3.615420] i915 0000:00:02.0: [drm] i915 display info: has_hti: no
> [    3.616600] i915 0000:00:02.0: [drm:update_display_info.part.0 [drm]] =
[CONNECTOR:313:eDP-1] ELD size 20, SAD count 0
> [    3.617787] i915 0000:00:02.0: [drm] i915 display info: has_ipc: yes
> [    3.619031] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:313:eDP-1] VRR capable: yes
> [    3.620215] i915 0000:00:02.0: [drm] i915 display info: has_overlay: no
> [    3.621412] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:313:eDP-1] DFP max bpc 0, max dotclock 0, TMDS clock 0-0, PCON Max FRL B=
W 0Gbps
> [    3.622623] i915 0000:00:02.0: [drm] i915 display info: has_psr: yes
> [    3.624754] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] PCON ENC=
ODER DSC DPCD: 00 00 00 00 00 00 00 00 00 00 00 00 00
> [    3.625388] i915 0000:00:02.0: [drm] i915 display info: has_psr_hw_tra=
cking: yes
> [    3.626587] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:313:eDP-1] RGB->YcbCr conversion? no, YCbCr 4:2:0 allowed? yes, YCbCr 4:=
4:4->4:2:0 conversion? no
> [    3.628052] i915 0000:00:02.0: [drm] i915 display info: overlay_needs_=
physical: no
> [    3.628053] i915 0000:00:02.0: [drm] i915 display info: supports_tv: no
> [    3.629712] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:313:eDP-1] probed modes:
> [    3.630537] i915 0000:00:02.0: [drm] i915 display info: has_hdcp: yes
> [    3.631953] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] Probed mode: "1920x1080": 60 166010 1920 2028 2076 =
2120 1080 1090 1100 1304 0x48 0xa
> [    3.633137] i915 0000:00:02.0: [drm] i915 display info: has_dmc: yes
> [    3.634317] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:322:DP-1]
> [    3.635717] i915 0000:00:02.0: [drm] i915 display info: has_dsc: yes
> [    3.636917] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:322:DP-1]
> [    3.638220] [drm:intel_dsm_detect.isra.0 [i915]] no _DSM method for in=
tel device
> [    3.641855] i915 0000:00:02.0: [drm] device info: pciid=3D0x9a49 rev=
=3D0x01 platform=3DTIGERLAKE (subplatform=3D0x1) gen=3D12
> [    3.643007] i915 0000:00:02.0: [drm] device info: graphics version: 12
> [    3.644122] i915 0000:00:02.0: [drm] device info: media version: 12
> [    3.645253] i915 0000:00:02.0: [drm] device info: graphics stepping: B0
> [    3.646363] i915 0000:00:02.0: [drm] device info: media stepping: B0
> [    3.646809] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:322:DP-1] disconnected
> [    3.647719] i915 0000:00:02.0: [drm] device info: display stepping: C0
> [    3.648921] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:334:HDMI-A-1]
> [    3.650115] i915 0000:00:02.0: [drm] device info: base die stepping: **
> [    3.651499] i915 0000:00:02.0: [drm:intel_hdmi_detect [i915]] [CONNECT=
OR:334:HDMI-A-1]
> [    3.652741] i915 0000:00:02.0: [drm] device info: gt: 0
> [    3.655231] i915 0000:00:02.0: [drm] device info: memory-regions: 0x21
> [    3.656460] i915 0000:00:02.0: [drm] device info: page-sizes: 0x211000
> [    3.657669] i915 0000:00:02.0: [drm] device info: platform: TIGERLAKE
> [    3.658809] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:334:HDMI-A-1] disconnected
> [    3.658852] i915 0000:00:02.0: [drm] device info: ppgtt-size: 48
> [    3.660107] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:340:DP-2]
> [    3.661353] i915 0000:00:02.0: [drm] device info: ppgtt-type: 2
> [    3.662618] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:340:DP-2]
> [    3.664195] i915 0000:00:02.0: [drm] device info: dma_mask_size: 39
> [    3.665499] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    3.666830] i915 0000:00:02.0: [drm] device info: is_mobile: no
> [    3.668163] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    3.669507] i915 0000:00:02.0: [drm] device info: is_lp: no
> [    3.670862] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:340:DP-2] disconnected
> [    3.672208] i915 0000:00:02.0: [drm] device info: require_force_probe:=
 no
> [    3.673563] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:349:DP-3]
> [    3.674951] i915 0000:00:02.0: [drm] device info: is_dgfx: no
> [    3.676304] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:349:DP-3]
> [    3.677688] i915 0000:00:02.0: [drm] device info: has_64bit_reloc: yes
> [    3.679166] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    3.680543] i915 0000:00:02.0: [drm] device info: has_64k_pages: no
> [    3.681932] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    3.683441] i915 0000:00:02.0: [drm] device info: gpu_reset_clobbers_d=
isplay: no
> [    3.684827] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:349:DP-3] disconnected
> [    3.686201] i915 0000:00:02.0: [drm] device info: has_reset_engine: yes
> [    3.687797] i915 0000:00:02.0: [drm:drm_client_modeset_probe [drm]] [C=
ONNECTOR:313:eDP-1] enabled? yes
> [    3.689184] i915 0000:00:02.0: [drm] device info: has_3d_pipeline: yes
> [    3.690565] i915 0000:00:02.0: [drm:drm_client_modeset_probe [drm]] [C=
ONNECTOR:322:DP-1] enabled? no
> [    3.692235] i915 0000:00:02.0: [drm] device info: has_flat_ccs: no
> [    3.693620] i915 0000:00:02.0: [drm:drm_client_modeset_probe [drm]] [C=
ONNECTOR:334:HDMI-A-1] enabled? no
> [    3.695066] i915 0000:00:02.0: [drm] device info: has_global_mocs: yes
> [    3.696459] i915 0000:00:02.0: [drm:drm_client_modeset_probe [drm]] [C=
ONNECTOR:340:DP-2] enabled? no
> [    3.697848] i915 0000:00:02.0: [drm] device info: has_gmd_id: no
> [    3.699345] i915 0000:00:02.0: [drm:drm_client_modeset_probe [drm]] [C=
ONNECTOR:349:DP-3] enabled? no
> [    3.699461] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling PW_5
> [    3.699679] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling PW_4
> [    3.699930] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling PW_3
> [    3.700183] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling PW_2
> [    3.700723] i915 0000:00:02.0: [drm] device info: has_gt_uc: yes
> [    3.702091] i915 0000:00:02.0: [drm:drm_client_modeset_probe [drm]] No=
t using firmware configuration
> [    3.703607] i915 0000:00:02.0: [drm] device info: has_heci_pxp: no
> [    3.704971] i915 0000:00:02.0: [drm:drm_client_modeset_probe [drm]] [C=
ONNECTOR:313:eDP-1] looking for cmdline mode
> [    3.706314] i915 0000:00:02.0: [drm] device info: has_heci_gscfi: no
> [    3.707839] i915 0000:00:02.0: [drm:drm_client_modeset_probe [drm]] [C=
ONNECTOR:313:eDP-1] looking for preferred mode, tile 0
> [    3.709158] i915 0000:00:02.0: [drm] device info: has_guc_deprivilege:=
 no
> [    3.710472] i915 0000:00:02.0: [drm:drm_client_modeset_probe [drm]] [C=
ONNECTOR:313:eDP-1] Found mode 1920x1080
> [    3.712028] i915 0000:00:02.0: [drm] device info: has_guc_tlb_invalida=
tion: no
> [    3.713326] i915 0000:00:02.0: [drm:drm_client_modeset_probe [drm]] pi=
cking CRTCs for 1920x1080 config
> [    3.714637] i915 0000:00:02.0: [drm] device info: has_l3_ccs_read: no
> [    3.716227] i915 0000:00:02.0: [drm:drm_client_modeset_probe [drm]] [C=
RTC:100:pipe A] desired mode 1920x1080 set (0,0)
> [    3.717521] i915 0000:00:02.0: [drm] device info: has_l3_dpf: no
> [    3.723500] i915 0000:00:02.0: [drm] device info: has_llc: yes
> [    3.723881] i915 0000:00:02.0: [drm:drm_client_dev_hotplug [drm]] inte=
l-fbdev: ret=3D0
> [    3.724610] i915 0000:00:02.0: [drm] device info: has_logical_ring_con=
texts: yes
> [    3.726768] i915 0000:00:02.0: [drm] device info: has_logical_ring_els=
q: yes
> [    3.727671] i915 0000:00:02.0: [drm] device info: has_media_ratio_mode=
: no
> [    3.728558] i915 0000:00:02.0: [drm] device info: has_mslice_steering:=
 no
> [    3.729437] i915 0000:00:02.0: [drm] device info: has_oa_bpc_reporting=
: no
> [    3.730312] i915 0000:00:02.0: [drm] device info: has_oa_slice_contrib=
_limits: no
> [    3.731202] i915 0000:00:02.0: [drm] device info: has_oam: no
> [    3.732093] i915 0000:00:02.0: [drm] device info: has_one_eu_per_fuse_=
bit: no
> [    3.732977] i915 0000:00:02.0: [drm] device info: has_pxp: yes
> [    3.733843] i915 0000:00:02.0: [drm] device info: has_rc6: yes
> [    3.734699] i915 0000:00:02.0: [drm] device info: has_rc6p: no
> [    3.735576] i915 0000:00:02.0: [drm] device info: has_rps: yes
> [    3.736420] i915 0000:00:02.0: [drm] device info: has_runtime_pm: yes
> [    3.737268] i915 0000:00:02.0: [drm] device info: has_snoop: no
> [    3.738105] i915 0000:00:02.0: [drm] device info: has_coherent_ggtt: no
> [    3.738943] i915 0000:00:02.0: [drm] device info: tuning_thread_rr_aft=
er_dep: no
> [    3.739789] i915 0000:00:02.0: [drm] device info: unfenced_needs_align=
ment: no
> [    3.740629] i915 0000:00:02.0: [drm] device info: hws_needs_physical: =
no
> [    3.741457] i915 0000:00:02.0: [drm] device info: has_pooled_eu: no
> [    3.742275] i915 0000:00:02.0: [drm] device info: rawclk rate: 19200 k=
Hz
> [    3.743102] i915 0000:00:02.0: [drm] device info: iommu: disabled
> [    3.743920] i915 0000:00:02.0: [drm] device info: available engines: 4=
1403
> [    3.744738] i915 0000:00:02.0: [drm] device info: slice total: 1, mask=
=3D0001
> [    3.745545] i915 0000:00:02.0: [drm] device info: subslice total: 5
> [    3.746344] i915 0000:00:02.0: [drm] device info: slice0: 5 subslices,=
 mask=3D0000001f
> [    3.747151] i915 0000:00:02.0: [drm] device info: EU total: 80
> [    3.747937] i915 0000:00:02.0: [drm] device info: EU per subslice: 16
> [    3.748722] i915 0000:00:02.0: [drm] device info: has slice power gati=
ng: yes
> [    3.749495] i915 0000:00:02.0: [drm] device info: has subslice power g=
ating: no
> [    3.750260] i915 0000:00:02.0: [drm] device info: has EU power gating:=
 no
> [    3.875722] PM: Image not found (code -22)
> [    4.031861] EXT4-fs (nvme1n1p3): mounted filesystem 199a867c-5749-4ed5=
-8946-1a80cae9b76f ro with ordered data mode. Quota mode: none.
> [    4.059376] Not activating Mandatory Access Control as /sbin/tomoyo-in=
it does not exist.
> [    4.112770] systemd[1]: Inserted module 'autofs4'
> [    4.168484] systemd[1]: systemd 252.26-1~deb12u2 running in system mod=
e (+PAM +AUDIT +SELINUX +APPARMOR +IMA +SMACK +SECCOMP +GCRYPT -GNUTLS +OPE=
NSSL +ACL +BLKID +CURL +ELFUTILS +FIDO2 +IDN2 -IDN +IPTC +KMOD +LIBCRYPTSET=
UP +LIBFDISK +PCRE2 -PWQUALITY +P11KIT +QRENCODE +TPM2 +BZIP2 +LZ4 +XZ +ZLI=
B +ZSTD -BPF_FRAMEWORK -XKBCOMMON +UTMP +SYSVINIT default-hierarchy=3Dunifi=
ed)
> [    4.168558] systemd[1]: Detected architecture x86-64.
> [    4.169673] systemd[1]: Hostname set to <debian>.
> [    4.293385] systemd[1]: Queued start job for default target graphical.=
target.
> [    4.307710] systemd[1]: Created slice system-getty.slice - Slice /syst=
em/getty.
> [    4.308013] systemd[1]: Created slice system-modprobe.slice - Slice /s=
ystem/modprobe.
> [    4.308250] systemd[1]: Created slice system-systemd\x2dfsck.slice - S=
lice /system/systemd-fsck.
> [    4.308431] systemd[1]: Created slice user.slice - User and Session Sl=
ice.
> [    4.308505] systemd[1]: Started systemd-ask-password-wall.path - Forwa=
rd Password Requests to Wall Directory Watch.
> [    4.308666] systemd[1]: Set up automount proc-sys-fs-binfmt_misc.autom=
ount - Arbitrary Executable File Formats File System Automount Point.
> [    4.308712] systemd[1]: Expecting device dev-disk-by\x2duuid-133E\x2d5=
880.device - /dev/disk/by-uuid/133E-5880...
> [    4.308739] systemd[1]: Expecting device dev-disk-by\x2duuid-57298340\=
x2db81a\x2d4931\x2d8445\x2d3ccc712f0ce8.device - /dev/disk/by-uuid/57298340=
-b81a-4931-8445-3ccc712f0ce8...
> [    4.308773] systemd[1]: Expecting device dev-disk-by\x2duuid-9d9cdb89\=
x2d99bf\x2d48a9\x2d92f7\x2d2ce4f406ca23.device - /dev/disk/by-uuid/9d9cdb89=
-99bf-48a9-92f7-2ce4f406ca23...
> [    4.308811] systemd[1]: Expecting device dev-disk-by\x2duuid-a896d265\=
x2dea0e\x2d42aa\x2db4a9\x2d1db7765bd7f7.device - /dev/disk/by-uuid/a896d265=
-ea0e-42aa-b4a9-1db7765bd7f7...
> [    4.308861] systemd[1]: Reached target integritysetup.target - Local I=
ntegrity Protected Volumes.
> [    4.308905] systemd[1]: Reached target remote-fs.target - Remote File =
Systems.
> [    4.308934] systemd[1]: Reached target slices.target - Slice Units.
> [    4.308972] systemd[1]: Reached target veritysetup.target - Local Veri=
ty Protected Volumes.
> [    4.309112] systemd[1]: Listening on systemd-fsckd.socket - fsck to fs=
ckd communication Socket.
> [    4.309179] systemd[1]: Listening on systemd-initctl.socket - initctl =
Compatibility Named Pipe.
> [    4.309656] systemd[1]: Listening on systemd-journald-audit.socket - J=
ournal Audit Socket.
> [    4.309788] systemd[1]: Listening on systemd-journald-dev-log.socket -=
 Journal Socket (/dev/log).
> [    4.309900] systemd[1]: Listening on systemd-journald.socket - Journal=
 Socket.
> [    4.310187] systemd[1]: Listening on systemd-udevd-control.socket - ud=
ev Control Socket.
> [    4.310278] systemd[1]: Listening on systemd-udevd-kernel.socket - ude=
v Kernel Socket.
> [    4.311050] systemd[1]: Mounting dev-hugepages.mount - Huge Pages File=
 System...
> [    4.311638] systemd[1]: Mounting dev-mqueue.mount - POSIX Message Queu=
e File System...
> [    4.312269] systemd[1]: Mounting sys-kernel-debug.mount - Kernel Debug=
 File System...
> [    4.312849] systemd[1]: Mounting sys-kernel-tracing.mount - Kernel Tra=
ce File System...
> [    4.314014] systemd[1]: Starting keyboard-setup.service - Set the cons=
ole keyboard layout...
> [    4.314776] systemd[1]: Starting kmod-static-nodes.service - Create Li=
st of Static Device Nodes...
> [    4.315291] systemd[1]: Starting modprobe@configfs.service - Load Kern=
el Module configfs...
> [    4.315802] systemd[1]: Starting modprobe@dm_mod.service - Load Kernel=
 Module dm_mod...
> [    4.316437] systemd[1]: Starting modprobe@drm.service - Load Kernel Mo=
dule drm...
> [    4.317095] systemd[1]: Starting modprobe@efi_pstore.service - Load Ke=
rnel Module efi_pstore...
> [    4.317772] systemd[1]: Starting modprobe@fuse.service - Load Kernel M=
odule fuse...
> [    4.318458] systemd[1]: Starting modprobe@loop.service - Load Kernel M=
odule loop...
> [    4.318573] systemd[1]: systemd-fsck-root.service - File System Check =
on Root Device was skipped because of an unmet condition check (ConditionPa=
thExists=3D!/run/initramfs/fsck-root).
> [    4.319499] systemd[1]: Starting systemd-journald.service - Journal Se=
rvice...
> [    4.320617] systemd[1]: Starting systemd-modules-load.service - Load K=
ernel Modules...
> [    4.321274] systemd[1]: Starting systemd-remount-fs.service - Remount =
Root and Kernel File Systems...
> [    4.321712] pstore: Using crash dump compression: deflate
> [    4.321912] systemd[1]: Starting systemd-udev-trigger.service - Coldpl=
ug All udev Devices...
> [    4.322862] systemd[1]: Mounted dev-hugepages.mount - Huge Pages File =
System.
> [    4.323065] systemd[1]: Mounted dev-mqueue.mount - POSIX Message Queue=
 File System.
> [    4.323307] systemd[1]: Mounted sys-kernel-debug.mount - Kernel Debug =
File System.
> [    4.323483] systemd[1]: Mounted sys-kernel-tracing.mount - Kernel Trac=
e File System.
> [    4.323786] systemd[1]: Finished kmod-static-nodes.service - Create Li=
st of Static Device Nodes.
> [    4.324132] systemd[1]: modprobe@drm.service: Deactivated successfully.
> [    4.324246] systemd[1]: Finished modprobe@drm.service - Load Kernel Mo=
dule drm.
> [    4.325700] systemd[1]: Finished systemd-modules-load.service - Load K=
ernel Modules.
> [    4.326575] systemd[1]: Starting systemd-sysctl.service - Apply Kernel=
 Variables...
> [    4.328084] systemd[1]: modprobe@configfs.service: Deactivated success=
fully.
> [    4.328218] systemd[1]: Finished modprobe@configfs.service - Load Kern=
el Module configfs.
> [    4.328877] systemd[1]: Mounting sys-kernel-config.mount - Kernel Conf=
iguration File System...
> [    4.330586] systemd[1]: Mounted sys-kernel-config.mount - Kernel Confi=
guration File System.
> [    4.331405] loop: module loaded
> [    4.331801] systemd[1]: modprobe@loop.service: Deactivated successfull=
y.
> [    4.331940] systemd[1]: Finished modprobe@loop.service - Load Kernel M=
odule loop.
> [    4.333434] systemd[1]: Finished systemd-sysctl.service - Apply Kernel=
 Variables.
> [    4.336901] pstore: Registered efi_pstore as persistent store backend
> [    4.338129] systemd[1]: modprobe@efi_pstore.service: Deactivated succe=
ssfully.
> [    4.339172] systemd[1]: Finished modprobe@efi_pstore.service - Load Ke=
rnel Module efi_pstore.
> [    4.347951] systemd[1]: Finished keyboard-setup.service - Set the cons=
ole keyboard layout.
> [    4.355598] EXT4-fs (nvme1n1p3): re-mounted 199a867c-5749-4ed5-8946-1a=
80cae9b76f r/w. Quota mode: none.
> [    4.357202] systemd[1]: Finished systemd-remount-fs.service - Remount =
Root and Kernel File Systems.
> [    4.358345] systemd[1]: systemd-firstboot.service - First Boot Wizard =
was skipped because of an unmet condition check (ConditionFirstBoot=3Dyes).
> [    4.358520] fuse: init (API version 7.40)
> [    4.359343] systemd[1]: systemd-pstore.service - Platform Persistent S=
torage Archival was skipped because of an unmet condition check (ConditionD=
irectoryNotEmpty=3D/sys/fs/pstore).
> [    4.363694] device-mapper: core: CONFIG_IMA_DISABLE_HTABLE is disabled=
=2E Duplicate IMA measurements will not be recorded in the IMA log.
> [    4.365207] device-mapper: uevent: version 1.0.3
> [    4.366812] device-mapper: ioctl: 4.48.0-ioctl (2023-03-01) initialise=
d: dm-devel@lists.linux.dev
> [    4.387060] systemd[1]: Starting systemd-random-seed.service - Load/Sa=
ve Random Seed...
> [    4.388583] systemd[1]: Starting systemd-sysusers.service - Create Sys=
tem Users...
> [    4.390704] systemd[1]: modprobe@dm_mod.service: Deactivated successfu=
lly.
> [    4.392437] systemd[1]: Finished modprobe@dm_mod.service - Load Kernel=
 Module dm_mod.
> [    4.394128] systemd[1]: modprobe@fuse.service: Deactivated successfull=
y.
> [    4.395372] systemd[1]: Finished modprobe@fuse.service - Load Kernel M=
odule fuse.
> [    4.396586] systemd[1]: Finished systemd-random-seed.service - Load/Sa=
ve Random Seed.
> [    4.397890] systemd[1]: first-boot-complete.target - First Boot Comple=
te was skipped because of an unmet condition check (ConditionFirstBoot=3Dye=
s).
> [    4.399466] systemd[1]: Mounting sys-fs-fuse-connections.mount - FUSE =
Control File System...
> [    4.400431] systemd[1]: systemd-repart.service - Repartition Root Disk=
 was skipped because no trigger condition checks were met.
> [    4.401432] systemd[1]: Started systemd-journald.service - Journal Ser=
vice.
> [    4.407830] systemd-journald[3015]: Received client request to flush r=
untime journal.
> [    4.608510] Consider using thermal netlink events interface
> [    4.635213] Adding 5000188k swap on /dev/nvme1n1p2.  Priority:-2 exten=
ts:1 across:5000188k SS
> [    4.641523] input: Intel HID events as /devices/platform/INTC1051:00/i=
nput/input13
> [    4.646611] intel_pmc_core INT33A1:00:  initialized
> [    4.650984] intel-hid INTC1051:00: platform supports 5 button array
> [    4.655859] input: Intel HID 5 button array as /devices/platform/INTC1=
051:00/input/input14
> [    4.661194] ACPI: AC: AC Adapter [ACAD] (on-line)
> [    4.665203] input: Lid Switch as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0=
A08:00/device:1a/PNP0C0D:00/input/input15
> [    4.665538] ACPI: button: Lid Switch [LID0]
> [    4.669746] input: Sleep Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PN=
P0C0E:00/input/input16
> [    4.669838] ACPI: button: Sleep Button [SLPB]
> [    4.674942] input: Power Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PN=
P0C0C:00/input/input17
> [    4.690744] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling TC_cold_off
> [    4.690744] i915 0000:00:02.0: [drm:intel_tc_port_update_mode [i915]] =
Port E/TC#2: TC port mode reset (tbt-alt -> disconnected)
> [    4.692345] i915 0000:00:02.0: [drm:__intel_display_power_put_domain [=
i915]] TC cold unblock succeeded
> [    4.695378] i915 0000:00:02.0: [drm:intel_tc_port_update_mode [i915]] =
Port D/TC#1: TC port mode reset (tbt-alt -> disconnected)
> [    4.703730] ACPI: button: Power Button [PWRB]
> [    4.740515] EDAC igen6: v2.5.1
> [    4.787787] ACPI: battery: Slot [BAT1] (battery present)
> [    4.794571] input: PC Speaker as /devices/platform/pcspkr/input/input18
> [    4.805741] i801_smbus 0000:00:1f.4: SPD Write Disable is set
> [    4.807547] i801_smbus 0000:00:1f.4: SMBus using PCI interrupt
> [    4.819764] i915 0000:00:02.0: [drm:intel_backlight_device_update_stat=
us [i915]] updating intel_backlight, brightness=3D96000/96000
> [    4.820847] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] [CONNECTOR:313:eDP-1] set backlight level =3D 96000
> [    4.822740] intel-lpss 0000:00:15.0: enabling device (0004 -> 0006)
> [    4.827161] idma64 idma64.0: Found Intel integrated DMA 64-bit
> [    4.828166] ideapad_acpi VPC2004:00: Unknown keyboard type: 1
> [    4.829597] input: Ideapad extra buttons as /devices/pci0000:00/0000:0=
0:1f.0/PNP0C09:00/VPC2004:00/input/input19
> [    4.831128] ideapad_acpi VPC2004:00: Keyboard backlight control not av=
ailable
> [    4.833221] i2c i2c-13: Successfully instantiated SPD at 0x50
> [    4.834561] mei_me 0000:00:16.0: enabling device (0000 -> 0002)
> [    4.851508] SCSI subsystem initialized
> [    4.879485] resource: resource sanity check: requesting [mem 0x0000000=
0fedc0000-0x00000000fedcdfff], which spans more than pnp 00:04 [mem 0xfedc0=
000-0xfedc7fff]
> [    4.881023] caller __uncore_imc_init_box+0xc4/0x140 [intel_uncore] map=
ping multiple BARs
> [    4.949480] cfg80211: Loading compiled-in X.509 certificates for regul=
atory database
> [    4.952387] Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'
> [    4.954999] Loaded X.509 cert 'wens: 61c038651aabdcf94bd0ac7ff06c7248d=
b18c600'
> [    4.958496] cfg80211: loaded regulatory.db is malformed or signature i=
s missing/invalid
> [    4.959814] ideapad_acpi VPC2004:00: DYTC interface is not available
> [    4.965269] libata version 3.00 loaded.
> [    4.967432] r8169 0000:02:00.0 eth0: RTL8168h/8111h, 60:c7:27:09:b2:fc=
, XID 541, IRQ 172
> [    4.968936] r8169 0000:02:00.0 eth0: jumbo features [frames: 9194 byte=
s, tx checksumming: ko]
> [    4.977418] input: ELAN0001:00 04F3:31AD Mouse as /devices/pci0000:00/=
0000:00:15.0/i2c_designware.0/i2c-14/i2c-ELAN0001:00/0018:04F3:31AD.0006/in=
put/input20
> [    4.979884] input: ELAN0001:00 04F3:31AD Touchpad as /devices/pci0000:=
00/0000:00:15.0/i2c_designware.0/i2c-14/i2c-ELAN0001:00/0018:04F3:31AD.0006=
/input/input22
> [    4.980071] hid-generic 0018:04F3:31AD.0006: input,hidraw5: I2C HID v1=
=2E00 Mouse [ELAN0001:00 04F3:31AD] on i2c-ELAN0001:00
> [    4.997240] Error: Driver 'pcspkr' is already registered, aborting...
> [    5.000491] ahci 10000:e0:17.0: version 3.0
> [    5.000503] ahci 10000:e0:17.0: can't derive routing for PCI INT A
> [    5.000505] ahci 10000:e0:17.0: PCI INT A: no GSI
> [    5.000603] ahci 10000:e0:17.0: AHCI vers 0001.0301, 32 command slots,=
 6 Gbps, SATA mode
> [    5.000605] ahci 10000:e0:17.0: 1/1 ports implemented (port mask 0x1)
> [    5.000607] ahci 10000:e0:17.0: flags: 64bit ncq sntf pm clo only pio =
slum part deso sadm sds=20
> [    5.006189] scsi host0: ahci
> [    5.007758] ata1: SATA max UDMA/133 abar m2048@0x52202000 port 0x52202=
100 irq 173 lpm-pol 4
> [    5.031180] i915 0000:00:02.0: [drm:i915_hdcp_component_bind [i915]] I=
915 HDCP comp bind
> [    5.031336] mei_hdcp 0000:00:16.0-b638ab7e-94e2-4ea2-a552-d1c54b627f04=
: bound 0000:00:02.0 (ops i915_hdcp_ops [i915])
> [    5.032979] ee1004 13-0050: 512 byte EE1004-compliant SPD EEPROM, read=
-only
> [    5.047961] intel_rapl_msr: PL4 support detected.
> [    5.054567] r8169 0000:02:00.0 enp2s0: renamed from eth0
> [    5.085336] RAPL PMU: API unit is 2^-32 Joules, 4 fixed counters, 6553=
60 ms ovfl timer
> [    5.085372] intel_rapl_common: Found RAPL domain package
> [    5.086336] RAPL PMU: hw unit of domain pp0-core 2^-14 Joules
> [    5.086337] RAPL PMU: hw unit of domain package 2^-14 Joules
> [    5.086337] RAPL PMU: hw unit of domain pp1-gpu 2^-14 Joules
> [    5.086338] RAPL PMU: hw unit of domain psys 2^-14 Joules
> [    5.092174] intel_rapl_common: Found RAPL domain package
> [    5.093139] intel_rapl_common: Found RAPL domain core
> [    5.094083] intel_rapl_common: Found RAPL domain uncore
> [    5.095044] intel_rapl_common: Found RAPL domain psys
> [    5.147665] Intel(R) Wireless WiFi driver for Linux
> [    5.151261] iwlwifi 0000:00:14.3: Detected crf-id 0x3617, cnv-id 0x200=
00302 wfpm id 0x80000000
> [    5.152826] iwlwifi 0000:00:14.3: PCI dev a0f0/0074, rev=3D0x351, rfid=
=3D0x10a100
> [    5.154634] iwlwifi 0000:00:14.3: Direct firmware load for iwlwifi-QuZ=
-a0-hr-b0-77.ucode failed with error -2
> [    5.156396] iwlwifi 0000:00:14.3: Direct firmware load for iwlwifi-QuZ=
-a0-hr-b0-76.ucode failed with error -2
> [    5.158381] iwlwifi 0000:00:14.3: Direct firmware load for iwlwifi-QuZ=
-a0-hr-b0-75.ucode failed with error -2
> [    5.160031] iwlwifi 0000:00:14.3: Direct firmware load for iwlwifi-QuZ=
-a0-hr-b0-74.ucode failed with error -2
> [    5.161733] iwlwifi 0000:00:14.3: Direct firmware load for iwlwifi-QuZ=
-a0-hr-b0-73.ucode failed with error -2
> [    5.177683] iwlwifi 0000:00:14.3: TLV_FW_FSEQ_VERSION: FSEQ Version: 8=
9.3.35.37
> [    5.178988] iwlwifi 0000:00:14.3: loaded firmware version 72.daa05125.=
0 QuZ-a0-hr-b0-72.ucode op_mode iwlmvm
> [    5.181952] input: ELAN0001:00 04F3:31AD Mouse as /devices/pci0000:00/=
0000:00:15.0/i2c_designware.0/i2c-14/i2c-ELAN0001:00/0018:04F3:31AD.0006/in=
put/input23
> [    5.182946] input: ELAN0001:00 04F3:31AD Touchpad as /devices/pci0000:=
00/0000:00:15.0/i2c_designware.0/i2c-14/i2c-ELAN0001:00/0018:04F3:31AD.0006=
/input/input25
> [    5.183924] hid-multitouch 0018:04F3:31AD.0006: input,hidraw5: I2C HID=
 v1.00 Mouse [ELAN0001:00 04F3:31AD] on i2c-ELAN0001:00
> [    5.323409] ata1: SATA link down (SStatus 0 SControl 300)
> [    5.338574] iTCO_vendor_support: vendor-support=3D0
> [    5.366609] cryptd: max_cpu_qlen set to 1000
> [    5.375204] iTCO_wdt iTCO_wdt: Found a Intel PCH TCO device (Version=
=3D6, TCOBASE=3D0x0400)
> [    5.377116] EXT4-fs (nvme1n1p4): mounted filesystem 57298340-b81a-4931=
-8445-3ccc712f0ce8 r/w with ordered data mode. Quota mode: none.
> [    5.377251] iTCO_wdt iTCO_wdt: initialized. heartbeat=3D30 sec (nowayo=
ut=3D0)
> [    5.379479] EXT4-fs (nvme0n1p1): mounted filesystem a896d265-ea0e-42aa=
-b4a9-1db7765bd7f7 r/w with ordered data mode. Quota mode: none.
> [    5.400286] AVX2 version of gcm_enc/dec engaged.
> [    5.402039] AES CTR mode by8 optimization enabled
> [    5.422843] snd_hda_intel 0000:00:1f.3: Digital mics found on Skylake+=
 platform, using SOF driver
> [    5.482054] audit: type=3D1400 audit(1723698950.395:2): apparmor=3D"ST=
ATUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"libreoffice=
-xpdfimport" pid=3D6518 comm=3D"apparmor_parser"
> [    5.484134] audit: type=3D1400 audit(1723698950.395:3): apparmor=3D"ST=
ATUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"/usr/bin/ma=
n" pid=3D6511 comm=3D"apparmor_parser"
> [    5.484138] audit: type=3D1400 audit(1723698950.395:4): apparmor=3D"ST=
ATUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"man_filter"=
 pid=3D6511 comm=3D"apparmor_parser"
> [    5.484140] audit: type=3D1400 audit(1723698950.395:5): apparmor=3D"ST=
ATUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"man_groff" =
pid=3D6511 comm=3D"apparmor_parser"
> [    5.484142] audit: type=3D1400 audit(1723698950.395:6): apparmor=3D"ST=
ATUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"libreoffice=
-senddoc" pid=3D6514 comm=3D"apparmor_parser"
> [    5.484144] audit: type=3D1400 audit(1723698950.399:7): apparmor=3D"ST=
ATUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"lsb_release=
" pid=3D6508 comm=3D"apparmor_parser"
> [    5.485089] audit: type=3D1400 audit(1723698950.399:8): apparmor=3D"ST=
ATUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"nvidia_modp=
robe" pid=3D6509 comm=3D"apparmor_parser"
> [    5.485092] audit: type=3D1400 audit(1723698950.399:9): apparmor=3D"ST=
ATUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"nvidia_modp=
robe//kmod" pid=3D6509 comm=3D"apparmor_parser"
> [    5.485123] audit: type=3D1400 audit(1723698950.399:10): apparmor=3D"S=
TATUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"libreoffic=
e-oosplash" pid=3D6513 comm=3D"apparmor_parser"
> [    5.487291] audit: type=3D1400 audit(1723698950.403:11): apparmor=3D"S=
TATUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"/usr/lib/N=
etworkManager/nm-dhcp-client.action" pid=3D6510 comm=3D"apparmor_parser"
> [    5.572496] sof-audio-pci-intel-tgl 0000:00:1f.3: enabling device (000=
0 -> 0002)
> [    5.573555] sof-audio-pci-intel-tgl 0000:00:1f.3: DSP detected with PC=
I class/subclass/prog-if 0x040100
> [    5.574508] sof-audio-pci-intel-tgl 0000:00:1f.3: bound 0000:00:02.0 (=
ops i915_audio_component_bind_ops [i915])
> [    5.575582] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling PW_2
> [    5.576634] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling PW_3
> [    5.577637] i915 0000:00:02.0: [drm:i915_audio_component_get_power [i9=
15]] restored AUD_FREQ_CNTRL to 0x8010
> [    5.584964] sof-audio-pci-intel-tgl 0000:00:1f.3: use msi interrupt mo=
de
> [    5.631233] sof-audio-pci-intel-tgl 0000:00:1f.3: hda codecs found, ma=
sk 5
> [    5.632367] sof-audio-pci-intel-tgl 0000:00:1f.3: using HDA machine dr=
iver skl_hda_dsp_generic now
> [    5.633587] sof-audio-pci-intel-tgl 0000:00:1f.3: DMICs detected in NH=
LT tables: 2
> [    5.641521] sof-audio-pci-intel-tgl 0000:00:1f.3: Firmware paths/files=
 for ipc type 0:
> [    5.642436] sof-audio-pci-intel-tgl 0000:00:1f.3:  Firmware file:     =
intel/sof/sof-tgl.ri
> [    5.643367] sof-audio-pci-intel-tgl 0000:00:1f.3:  Topology file:     =
intel/sof-tplg/sof-hda-generic-2ch.tplg
> [    5.644737] sof-audio-pci-intel-tgl 0000:00:1f.3: Firmware info: versi=
on 2:2:0-57864
> [    5.645641] sof-audio-pci-intel-tgl 0000:00:1f.3: Firmware: ABI 3:22:1=
 Kernel ABI 3:23:0
> [    5.646531] sof-audio-pci-intel-tgl 0000:00:1f.3: unknown sof_ext_man =
header type 3 size 0x30
> [    5.673814] iwlwifi 0000:00:14.3: Detected Intel(R) Wi-Fi 6 AX201 160M=
Hz, REV=3D0x351
> [    5.743597] sof-audio-pci-intel-tgl 0000:00:1f.3: Firmware info: versi=
on 2:2:0-57864
> [    5.745026] sof-audio-pci-intel-tgl 0000:00:1f.3: Firmware: ABI 3:22:1=
 Kernel ABI 3:23:0
> [    5.764501] sof-audio-pci-intel-tgl 0000:00:1f.3: Topology: ABI 3:22:1=
 Kernel ABI 3:23:0
> [    5.766413] skl_hda_dsp_generic skl_hda_dsp_generic: ASoC: Parent card=
 not yet available, widget card binding deferred
> [    5.783780] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling PW_3
> [    5.784829] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling PW_2
> [    5.792143] snd_hda_codec_realtek ehdaudio0D0: autoconfig for ALC257: =
line_outs=3D1 (0x14/0x0/0x0/0x0/0x0) type:speaker
> [    5.793101] snd_hda_codec_realtek ehdaudio0D0:    speaker_outs=3D0 (0x=
0/0x0/0x0/0x0/0x0)
> [    5.794038] snd_hda_codec_realtek ehdaudio0D0:    hp_outs=3D1 (0x21/0x=
0/0x0/0x0/0x0)
> [    5.795007] snd_hda_codec_realtek ehdaudio0D0:    mono: mono_out=3D0x0
> [    5.795946] snd_hda_codec_realtek ehdaudio0D0:    inputs:
> [    5.796869] snd_hda_codec_realtek ehdaudio0D0:      Mic=3D0x19
> [    5.799311] iwlwifi 0000:00:14.3: Detected RF HR B3, rfid=3D0x10a100
> [    5.844847] skl_hda_dsp_generic skl_hda_dsp_generic: hda_dsp_hdmi_buil=
d_controls: no PCM in topology for HDMI converter 3
> [    5.845792] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling PW_2
> [    5.846844] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling PW_3
> [    5.847905] i915 0000:00:02.0: [drm:i915_audio_component_get_power [i9=
15]] restored AUD_FREQ_CNTRL to 0x8010
> [    5.860932] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port A
> [    5.861972] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port A
> [    5.862977] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port A
> [    5.863963] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port A
> [    5.864956] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port B
> [    5.865955] iwlwifi 0000:00:14.3: base HW address: e4:0d:36:80:ae:3f
> [    5.865940] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port B
> [    5.868230] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port B
> [    5.869239] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port B
> [    5.870201] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port C
> [    5.871153] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port C
> [    5.872112] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port C
> [    5.873007] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port C
> [    5.873888] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port D
> [    5.874752] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port D
> [    5.875621] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port D
> [    5.876475] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port D
> [    5.877330] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port E
> [    5.878187] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port E
> [    5.879018] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port E
> [    5.879826] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port E
> [    5.880616] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port F
> [    5.881394] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port F
> [    5.882167] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port F
> [    5.883017] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port F
> [    5.883936] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port G
> [    5.884822] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port G
> [    5.885608] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port G
> [    5.886369] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port G
> [    5.887221] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port H
> [    5.887959] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port H
> [    5.888664] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port H
> [    5.889374] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port H
> [    5.890069] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port I
> [    5.890770] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port I
> [    5.891455] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port I
> [    5.892131] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port I
> [    5.892299] iwlwifi 0000:00:14.3 wlp0s20f3: renamed from wlan0
> [    5.892804] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling PW_3
> [    5.893985] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling PW_2
> [    5.894886] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling PW_2
> [    5.895643] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling PW_3
> [    5.896338] i915 0000:00:02.0: [drm:i915_audio_component_get_power [i9=
15]] restored AUD_FREQ_CNTRL to 0x8010
> [    5.901894] input: sof-hda-dsp Mic as /devices/pci0000:00/0000:00:1f.3=
/skl_hda_dsp_generic/sound/card0/input26
> [    5.902543] input: sof-hda-dsp Headphone as /devices/pci0000:00/0000:0=
0:1f.3/skl_hda_dsp_generic/sound/card0/input27
> [    5.903218] input: sof-hda-dsp HDMI/DP,pcm=3D3 as /devices/pci0000:00/=
0000:00:1f.3/skl_hda_dsp_generic/sound/card0/input28
> [    5.903878] input: sof-hda-dsp HDMI/DP,pcm=3D4 as /devices/pci0000:00/=
0000:00:1f.3/skl_hda_dsp_generic/sound/card0/input29
> [    5.904610] input: sof-hda-dsp HDMI/DP,pcm=3D5 as /devices/pci0000:00/=
0000:00:1f.3/skl_hda_dsp_generic/sound/card0/input30
> [    5.904940] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling PW_3
> [    5.906052] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling PW_2
> [    6.562138] NET: Registered PF_QIPCRTR protocol family
> [    6.625649] i915 0000:00:02.0: [drm:i915_gem_open [i915]]=20
> [    6.637967] i915 0000:00:02.0: [drm:drm_client_dev_restore [drm]] inte=
l-fbdev: ret=3D0
> [    6.656869] i915 0000:00:02.0: [drm:i915_gem_open [i915]]=20
> [    6.671572] i915 0000:00:02.0: [drm:drm_client_dev_restore [drm]] inte=
l-fbdev: ret=3D0
> [    6.672827] i915 0000:00:02.0: [drm:i915_gem_open [i915]]=20
> [    6.673224] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:314]
> [    6.674787] Generic FE-GE Realtek PHY r8169-0-200:00: attached PHY dri=
ver (mii_bus:phy_addr=3Dr8169-0-200:00, irq=3DMAC)
> [    6.674906] i915 0000:00:02.0: [drm:intel_pps_vdd_off_sync_unlocked [i=
915]] [ENCODER:312:DDI A/PHY A] PPS 0 turning VDD off
> [    6.675194] i915 0000:00:02.0: [drm:intel_pps_vdd_off_sync_unlocked [i=
915]] [ENCODER:312:DDI A/PHY A] PPS 0 PP_STATUS: 0x80000008 PP_CONTROL: 0x0=
0000067
> [    6.871958] r8169 0000:02:00.0 enp2s0: Link is Down
> [    6.898973] i915 0000:00:02.0: [drm:i915_perf_remove_config_ioctl [i91=
5]] Failed to remove unknown OA config
> [    6.899077] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 7e1c6469-9de7-491a-a7c5-1bd8f9966826 id=3D2
> [    6.899150] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 684ed715-a0ca-499b-89e0-25d1cdf0c737 id=3D3
> [    6.899216] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 4066ad45-4a68-4acf-86b2-fa5a6a914db7 id=3D4
> [    6.899279] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 30cd8433-f679-401e-b578-19e22975e84f id=3D5
> [    6.899343] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 0fc397c0-4833-492c-9ccd-4929d574d5b8 id=3D6
> [    6.899407] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config fb65c819-7ac2-4c69-aa9d-b72a18440705 id=3D7
> [    6.899471] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config f3723f39-ecf4-4ff2-a4c4-80e87876b86f id=3D8
> [    6.899536] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config d5890d02-b2be-4742-a16e-17190a92a301 id=3D9
> [    6.899598] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config a43f80cd-5cc1-4a2c-a750-40594af2b661 id=3D10
> [    6.899658] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config e0efab61-c904-4354-9fc5-35e8b8bc7d20 id=3D11
> [    6.899721] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config ee6f5fa3-13a8-4842-8b34-f7541a0f76a3 id=3D12
> [    6.899784] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 0c3c3235-2e91-4ef0-8562-4ea1501e8612 id=3D13
> [    6.899845] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 414ff049-80d3-48c0-b79a-bd8eed097a06 id=3D14
> [    6.899907] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 17e2be13-39fe-45f0-867c-0f83fcc51654 id=3D15
> [    6.899966] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 397a46d9-03dd-4696-8196-270362e1c575 id=3D16
> [    6.900027] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 6607f034-d053-40d1-8215-67c07f3041bb id=3D17
> [    6.900089] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 6f02479c-e9ca-4c2b-b1e6-216a9e1c5ef7 id=3D18
> [    6.900157] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config c0d2cd0a-e2be-4b12-916d-2f3aba0ebf9e id=3D19
> [    6.900221] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 8ecaeff2-78f4-4e29-b331-d757e6a74ed0 id=3D20
> [    6.900285] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config f1577929-9215-488b-9899-d12b6e799743 id=3D21
> [    6.900346] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 7e809cb4-6e90-44cc-9c57-6eff58ad360a id=3D22
> [    6.900405] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 0dde1bb6-340f-4350-b398-2b0228573967 id=3D23
> [    6.900464] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 19fe64eb-ac4f-45c6-b2b9-af728b21753b id=3D24
> [    6.900523] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 1fbbd218-693c-4035-b4c0-ce4dd139d828 id=3D25
> [    6.900584] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 3a4c7510-7725-4bf8-9eae-59115a2431c6 id=3D26
> [    6.900643] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 7e6e555c-aa5b-4c8d-992a-454a5a335c6e id=3D27
> [    6.903082] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:313:eDP-1]
> [    6.903098] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:313:eDP-1]
> [    6.903191] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sourc=
e rates: 162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000
> [    6.903265] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sink =
rates: 162000, 270000
> [    6.903337] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] commo=
n rates: 162000, 270000
> [    6.903411] i915 0000:00:02.0: [drm:update_display_info.part.0 [drm]] =
[CONNECTOR:313:eDP-1] Supported Monitor Refresh rate range is 48 Hz - 60 Hz
> [    6.903443] i915 0000:00:02.0: [drm:update_display_info.part.0 [drm]] =
[CONNECTOR:313:eDP-1] Assigning EDID-1.4 digital sink color depth as 8 bpc.
> [    6.903467] i915 0000:00:02.0: [drm:update_display_info.part.0 [drm]] =
[CONNECTOR:313:eDP-1] ELD monitor=20
> [    6.903490] i915 0000:00:02.0: [drm:update_display_info.part.0 [drm]] =
[CONNECTOR:313:eDP-1] ELD size 20, SAD count 0
> [    6.903514] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:313:eDP-1] VRR capable: yes
> [    6.903589] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:313:eDP-1] DFP max bpc 0, max dotclock 0, TMDS clock 0-0, PCON Max FRL B=
W 0Gbps
> [    6.903679] i915 0000:00:02.0: [drm:intel_pps_vdd_on_unlocked [i915]] =
[ENCODER:312:DDI A/PHY A] PPS 0 turning VDD on
> [    6.903790] i915 0000:00:02.0: [drm:intel_pps_vdd_on_unlocked [i915]] =
[ENCODER:312:DDI A/PHY A] PPS 0 PP_STATUS: 0x80000008 PP_CONTROL: 0x0000006f
> [    6.904387] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] PCON ENC=
ODER DSC DPCD: 00 00 00 00 00 00 00 00 00 00 00 00 00
> [    6.904466] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:313:eDP-1] RGB->YcbCr conversion? no, YCbCr 4:2:0 allowed? yes, YCbCr 4:=
4:4->4:2:0 conversion? no
> [    6.904900] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:313:eDP-1] probed modes:
> [    6.904911] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] Probed mode: "1920x1080": 60 166010 1920 2028 2076 =
2120 1080 1090 1100 1304 0x48 0xa
> [    6.905016] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:322:DP-1]
> [    6.905026] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:322:DP-1]
> [    6.910755] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:322:DP-1] disconnected
> [    6.910817] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:334:HDMI-A-1]
> [    6.910825] i915 0000:00:02.0: [drm:intel_hdmi_detect [i915]] [CONNECT=
OR:334:HDMI-A-1]
> [    6.918748] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:334:HDMI-A-1] disconnected
> [    6.918811] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:340:DP-2]
> [    6.918818] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:340:DP-2]
> [    6.918883] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling TC_cold_off
> [    6.930764] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] TC=
 cold block succeeded
> [    6.930867] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    6.930942] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling TC_cold_off
> [    6.931030] i915 0000:00:02.0: [drm:__intel_display_power_put_domain [=
i915]] TC cold unblock succeeded
> [    6.931113] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling TC_cold_off
> [    6.931199] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] TC=
 cold block succeeded
> [    6.931292] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    6.931363] i915 0000:00:02.0: [drm:intel_tc_port_update_mode [i915]] =
Port D/TC#1: TC port mode reset (disconnected -> tbt-alt)
> [    6.931464] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    6.931536] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:340:DP-2] disconnected
> [    6.931599] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:349:DP-3]
> [    6.931607] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:349:DP-3]
> [    6.931684] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    6.931775] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    6.931844] i915 0000:00:02.0: [drm:intel_tc_port_update_mode [i915]] =
Port E/TC#2: TC port mode reset (disconnected -> tbt-alt)
> [    6.931928] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    6.931999] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:349:DP-3] disconnected
> [    6.932480] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:313:eDP-1]
> [    6.932491] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:313:eDP-1]
> [    6.932560] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sourc=
e rates: 162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000
> [    6.932625] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sink =
rates: 162000, 270000
> [    6.932689] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] commo=
n rates: 162000, 270000
> [    6.932755] i915 0000:00:02.0: [drm:update_display_info.part.0 [drm]] =
[CONNECTOR:313:eDP-1] Supported Monitor Refresh rate range is 48 Hz - 60 Hz
> [    6.932790] i915 0000:00:02.0: [drm:update_display_info.part.0 [drm]] =
[CONNECTOR:313:eDP-1] Assigning EDID-1.4 digital sink color depth as 8 bpc.
> [    6.932811] i915 0000:00:02.0: [drm:update_display_info.part.0 [drm]] =
[CONNECTOR:313:eDP-1] ELD monitor=20
> [    6.932832] i915 0000:00:02.0: [drm:update_display_info.part.0 [drm]] =
[CONNECTOR:313:eDP-1] ELD size 20, SAD count 0
> [    6.932854] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:313:eDP-1] VRR capable: yes
> [    6.932920] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:313:eDP-1] DFP max bpc 0, max dotclock 0, TMDS clock 0-0, PCON Max FRL B=
W 0Gbps
> [    6.933516] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] PCON ENC=
ODER DSC DPCD: 00 00 00 00 00 00 00 00 00 00 00 00 00
> [    6.933589] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:313:eDP-1] RGB->YcbCr conversion? no, YCbCr 4:2:0 allowed? yes, YCbCr 4:=
4:4->4:2:0 conversion? no
> [    6.934029] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:313:eDP-1] probed modes:
> [    6.934048] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] Probed mode: "1920x1080": 60 166010 1920 2028 2076 =
2120 1080 1090 1100 1304 0x48 0xa
> [    6.934407] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:322:DP-1]
> [    6.934417] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:322:DP-1]
> [    6.938766] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:322:DP-1] disconnected
> [    6.938794] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:334:HDMI-A-1]
> [    6.938802] i915 0000:00:02.0: [drm:intel_hdmi_detect [i915]] [CONNECT=
OR:334:HDMI-A-1]
> [    6.946730] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:334:HDMI-A-1] disconnected
> [    6.946753] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:340:DP-2]
> [    6.946761] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:340:DP-2]
> [    6.946850] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    6.946942] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port D/TC#1: PHY in TCCOLD, nothing connected
> [    6.947017] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:340:DP-2] disconnected
> [    6.947031] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:349:DP-3]
> [    6.947039] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:349:DP-3]
> [    6.947118] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    6.947205] i915 0000:00:02.0: [drm:icl_tc_phy_hpd_live_status [i915]]=
 Port E/TC#2: PHY in TCCOLD, nothing connected
> [    6.947279] i915 0000:00:02.0: [drm:drm_helper_probe_single_connector_=
modes [drm_kms_helper]] [CONNECTOR:349:DP-3] disconnected
> [    7.060868] iwlwifi 0000:00:14.3: Registered PHC clock: iwlwifi-PTP, w=
ith index: 0
> [    7.570895] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:360]
> [    7.571033] i915 0000:00:02.0: [drm:drm_mode_setcrtc [drm]] [CRTC:100:=
pipe A]
> [    7.571111] i915 0000:00:02.0: [drm:drm_mode_setcrtc [drm]] [CONNECTOR=
:313:eDP-1]
> [    7.637431] i915 0000:00:02.0: [drm:drm_mode_setcrtc [drm]] [CRTC:170:=
pipe B]
> [    7.637609] i915 0000:00:02.0: [drm:drm_mode_setcrtc [drm]] [CRTC:240:=
pipe C]
> [    7.637722] i915 0000:00:02.0: [drm:drm_mode_setcrtc [drm]] [CRTC:310:=
pipe D]
> [    7.648776] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:95:c=
ursor A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm ->=
 *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7,*twm, swm, stwm
> [    7.649053] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:95:c=
ursor A]   lines    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    2,   5,   5,   5,   5,   6,   9,  10,   0,   0,    0
> [    7.649305] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:95:c=
ursor A]  blocks    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    6,  16,  16,  16,  16,  19,  28,  31,  20,   0,    0
> [    7.649543] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:95:c=
ursor A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    8,  19,  19,  19,  19,  22,  32,  36,  21,   0,    0
> [    7.932759] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling PW_2
> [    7.932903] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling PW_3
> [    7.933022] i915 0000:00:02.0: [drm:i915_audio_component_get_power [i9=
15]] restored AUD_FREQ_CNTRL to 0x8010
> [    7.935592] i915 0000:00:02.0: [drm:i915_gem_open [i915]]=20
> [    7.949908] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port A
> [    7.950096] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port A
> [    7.950183] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port A
> [    7.950268] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port A
> [    7.950351] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port B
> [    7.950434] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port B
> [    7.950517] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port B
> [    7.950598] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port B
> [    7.950679] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port C
> [    7.950783] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port C
> [    7.950882] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port C
> [    7.950964] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port C
> [    7.951045] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port D
> [    7.951126] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port D
> [    7.951206] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port D
> [    7.951286] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port D
> [    7.951367] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port E
> [    7.951448] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port E
> [    7.951528] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port E
> [    7.951608] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port E
> [    7.951689] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port F
> [    7.951769] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port F
> [    7.951849] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port F
> [    7.951930] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port F
> [    7.952010] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port G
> [    7.952090] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port G
> [    7.952171] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port G
> [    7.952251] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port G
> [    7.952331] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port H
> [    7.952412] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port H
> [    7.952493] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port H
> [    7.952572] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port H
> [    7.952652] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port I
> [    7.952732] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port I
> [    7.952812] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port I
> [    7.952892] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port I
> [    7.954861] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling TC_cold_off
> [    7.954861] i915 0000:00:02.0: [drm:intel_tc_port_update_mode [i915]] =
Port E/TC#2: TC port mode reset (tbt-alt -> disconnected)
> [    7.954961] i915 0000:00:02.0: [drm:__intel_display_power_put_domain [=
i915]] TC cold unblock succeeded
> [    7.955050] i915 0000:00:02.0: [drm:intel_tc_port_update_mode [i915]] =
Port D/TC#1: TC port mode reset (tbt-alt -> disconnected)
> [    7.967094] usb 1-8: New USB device found, idVendor=3D048d, idProduct=
=3Dc966, bcdDevice=3D14.00
> [    7.967098] usb 1-8: New USB device strings: Mfr=3D1, Product=3D2, Ser=
ialNumber=3D0
> [    7.967099] usb 1-8: Product: ITE Device(8176)
> [    7.967100] usb 1-8: Manufacturer: ITE Tech. Inc.
> [    7.981427] input: ITE Tech. Inc. ITE Device(8176) Keyboard as /device=
s/pci0000:00/0000:00:14.0/usb1/1-8/1-8:1.0/0003:048D:C966.0007/input/input31
> [    8.042942] input: ITE Tech. Inc. ITE Device(8176) Wireless Radio Cont=
rol as /devices/pci0000:00/0000:00:14.0/usb1/1-8/1-8:1.0/0003:048D:C966.000=
7/input/input32
> [    8.043085] hid-generic 0003:048D:C966.0007: input,hiddev3,hidraw6: US=
B HID v1.10 Keyboard [ITE Tech. Inc. ITE Device(8176)] on usb-0000:00:14.0-=
8/input0
> [    8.170752] usb 1-10: new full-speed USB device number 7 using xhci_hcd
> [    8.307769] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:362]
> [    8.320178] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:359]
> [    8.328832] usb 1-10: New USB device found, idVendor=3D8087, idProduct=
=3D0026, bcdDevice=3D 0.02
> [    8.328841] usb 1-10: New USB device strings: Mfr=3D0, Product=3D0, Se=
rialNumber=3D0
> [    8.344024] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:360]
> [    8.353360] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:359]
> [    8.355989] mc: Linux media interface: v0.10
> [    8.360207] usb-storage 1-1:1.0: USB Mass Storage device detected
> [    8.361716] scsi host1: usb-storage 1-1:1.0
> [    8.366342] usbcore: registered new interface driver usb-storage
> [    8.370767] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:360]
> [    8.382858] usbcore: registered new interface driver uas
> [    8.386784] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:359]
> [    8.393498] videodev: Linux video capture interface: v2.00
> [    8.410526] Bluetooth: Core ver 2.22
> [    8.410552] NET: Registered PF_BLUETOOTH protocol family
> [    8.410553] Bluetooth: HCI device and connection manager initialized
> [    8.410557] Bluetooth: HCI socket layer initialized
> [    8.410560] Bluetooth: L2CAP socket layer initialized
> [    8.410563] Bluetooth: SCO socket layer initialized
> [    8.418643] usb 1-2: Warning! Unlikely big volume range (=3D496), cval=
->res is probably wrong.
> [    8.418648] usb 1-2: [51] FU [Mic Playback Volume] ch =3D 1, val =3D 0=
/7936/16
> [    8.420433] usb 1-2: Warning! Unlikely big volume range (=3D1008), cva=
l->res is probably wrong.
> [    8.420438] usb 1-2: [49] FU [Speaker Playback Volume] ch =3D 2, val =
=3D -16129/-1/16
> [    8.422124] usb 1-2: Warning! Unlikely big volume range (=3D496), cval=
->res is probably wrong.
> [    8.422129] usb 1-2: [50] FU [Mic Capture Volume] ch =3D 1, val =3D 0/=
7936/16
> [    8.422320] usbcore: registered new interface driver snd-usb-audio
> [    8.428388] usbcore: registered new interface driver btusb
> [    8.429061] Bluetooth: hci0: Bootloader revision 0.4 build 0 week 30 2=
018
> [    8.429684] usb 1-6: Found UVC 1.00 device Integrated Camera (13d3:56f=
f)
> [    8.429980] Bluetooth: hci0: Device revision is 2
> [    8.429984] Bluetooth: hci0: Secure boot is enabled
> [    8.429985] Bluetooth: hci0: OTP lock is enabled
> [    8.429985] Bluetooth: hci0: API lock is enabled
> [    8.429986] Bluetooth: hci0: Debug lock is disabled
> [    8.429987] Bluetooth: hci0: Minimum firmware build 1 week 10 2014
> [    8.431882] Bluetooth: hci0: Found device firmware: intel/ibt-19-0-4.s=
fi
> [    8.431899] Bluetooth: hci0: Boot Address: 0x24800
> [    8.431900] Bluetooth: hci0: Firmware Version: 15-45.22
> [    8.433668] usbcore: registered new interface driver uvcvideo
> [    8.468193] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:360]
> [    8.492723] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
> [    8.492727] Bluetooth: BNEP filters: protocol multicast
> [    8.492731] Bluetooth: BNEP socket layer initialized
> [    8.515960] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:362]
> [    8.615673] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:359]
> [    8.855472] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:360]
> [    9.090862] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:359]
> [    9.126988] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:360]
> [    9.135874] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:362]
> [    9.152474] i915 0000:00:02.0: [drm:drm_mode_rmfb_work_fn [drm]] Remov=
ing [FB:360] from all active usage due to RMFB ioctl
> [    9.152523] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:359]
> [    9.169128] i915 0000:00:02.0: [drm:drm_mode_rmfb_work_fn [drm]] Remov=
ing [FB:362] from all active usage due to RMFB ioctl
> [    9.169179] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:360]
> [    9.185780] i915 0000:00:02.0: [drm:drm_mode_rmfb_work_fn [drm]] Remov=
ing [FB:359] from all active usage due to RMFB ioctl
> [    9.185829] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:362]
> [    9.202434] i915 0000:00:02.0: [drm:drm_mode_rmfb_work_fn [drm]] Remov=
ing [FB:360] from all active usage due to RMFB ioctl
> [    9.202487] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:359]
> [    9.219140] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:360]
> [    9.235741] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:359]
> [    9.252395] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:360]
> [    9.269061] i915 0000:00:02.0: [drm:drm_mode_rmfb_work_fn [drm]] Remov=
ing [FB:359] from all active usage due to RMFB ioctl
> [    9.269106] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:359]
> [    9.285701] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:360]
> [    9.322987] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:359]
> [    9.335650] i915 0000:00:02.0: [drm:drm_mode_rmfb_work_fn [drm]] Remov=
ing [FB:360] from all active usage due to RMFB ioctl
> [    9.396238] scsi 1:0:0:0: CD-ROM            PING IT( SZ)              =
     PQ: 0 ANSI: 2
> [    9.408821] scsi 1:0:0:0: Attached scsi generic sg0 type 5
> [    9.416561] sr 1:0:0:0: [sr0] scsi-1 drive
> [    9.416565] cdrom: Uniform CD-ROM driver Revision: 3.20
> [    9.418195] sr 1:0:0:0: [sr0] Hmm, seems the drive doesn't support mul=
tisession CD's
> [    9.425211] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:360]
> [    9.426966] sr 1:0:0:0: Attached scsi CD-ROM sr0
> [    9.490940] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:359]
> [    9.558993] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:360]
> [    9.568805] i915 0000:00:02.0: [drm:drm_mode_rmfb_work_fn [drm]] Remov=
ing [FB:359] from all active usage due to RMFB ioctl
> [    9.723008] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:359]
> [    9.735316] i915 0000:00:02.0: [drm:drm_mode_rmfb_work_fn [drm]] Remov=
ing [FB:360] from all active usage due to RMFB ioctl
> [    9.874977] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:360]
> [    9.934993] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:359]
> [    9.951790] i915 0000:00:02.0: [drm:drm_mode_rmfb_work_fn [drm]] Remov=
ing [FB:360] from all active usage due to RMFB ioctl
> [   10.002744] i915 0000:00:02.0: [drm:intel_pps_vdd_off_sync_unlocked [i=
915]] [ENCODER:312:DDI A/PHY A] PPS 0 turning VDD off
> [   10.002882] i915 0000:00:02.0: [drm:intel_pps_vdd_off_sync_unlocked [i=
915]] [ENCODER:312:DDI A/PHY A] PPS 0 PP_STATUS: 0x80000008 PP_CONTROL: 0x0=
0000067
> [   10.067734] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:360]
> [   10.085048] i915 0000:00:02.0: [drm:drm_mode_rmfb_work_fn [drm]] Remov=
ing [FB:359] from all active usage due to RMFB ioctl
> [   10.154808] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:359]
> [   10.236003] Bluetooth: hci0: Waiting for firmware download to complete
> [   10.237071] Bluetooth: hci0: Firmware loaded in 1762875 usecs
> [   10.237159] Bluetooth: hci0: Waiting for device to boot
> [   10.252180] Bluetooth: hci0: Device booted in 14738 usecs
> [   10.259981] Bluetooth: hci0: Found Intel DDC parameters: intel/ibt-19-=
0-4.ddc
> [   10.262102] Bluetooth: hci0: Applying Intel DDC parameters completed
> [   10.263147] Bluetooth: hci0: Firmware revision 0.4 build 15 week 45 20=
22
> [   10.265191] Bluetooth: hci0: HCI LE Coded PHY feature bit is set, but =
its usage is not supported.
> [   10.330369] Bluetooth: MGMT ver 1.22
> [   10.332000] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:360]
> [   10.334874] i915 0000:00:02.0: [drm:drm_mode_rmfb_work_fn [drm]] Remov=
ing [FB:359] from all active usage due to RMFB ioctl
> [   10.339325] NET: Registered PF_ALG protocol family
> [   10.375832] Bluetooth: RFCOMM TTY layer initialized
> [   10.375842] Bluetooth: RFCOMM socket layer initialized
> [   10.375849] Bluetooth: RFCOMM ver 1.11
> [   10.459836] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:359]
> [   10.472517] wlp0s20f3: authenticate with 8c:de:f9:c1:1b:10 (local addr=
ess=3De4:0d:36:80:ae:3f)
> [   10.473355] wlp0s20f3: send auth to 8c:de:f9:c1:1b:10 (try 1/3)
> [   10.531432] wlp0s20f3: authenticated
> [   10.534789] wlp0s20f3: associate with 8c:de:f9:c1:1b:10 (try 1/3)
> [   10.569479] wlp0s20f3: RX AssocResp from 8c:de:f9:c1:1b:10 (capab=3D0x=
31 status=3D0 aid=3D2)
> [   10.574122] wlp0s20f3: associated
> [   10.660310] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:360]
> [   10.668088] i915 0000:00:02.0: [drm:drm_mode_rmfb_work_fn [drm]] Remov=
ing [FB:359] from all active usage due to RMFB ioctl
> [   10.996279] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:359]
> [   11.001034] i915 0000:00:02.0: [drm:drm_mode_rmfb_work_fn [drm]] Remov=
ing [FB:360] from all active usage due to RMFB ioctl
> [   11.040436] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:360]
> [   11.363115] i915 0000:00:02.0: [drm:i915_gem_open [i915]]=20
> [   11.404763] i915 0000:00:02.0: [drm:i915_gem_open [i915]]=20
> [   11.512266] i915 0000:00:02.0: [drm:i915_gem_open [i915]]=20
> [   12.145887] i915 0000:00:02.0: [drm:i915_gem_open [i915]]=20
> [   12.147622] i915 0000:00:02.0: [drm:i915_gem_open [i915]]=20
> [   12.201059] i915 0000:00:02.0: [drm:i915_gem_open [i915]]=20
> [   12.250447] i915 0000:00:02.0: [drm:i915_gem_open [i915]]=20
> [   13.278026] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:95:c=
ursor A]   level *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7,*twm, swm, stwm ->=
  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
> [   13.278162] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:95:c=
ursor A]   lines    2,   5,   5,   5,   5,   6,   9,  10,   0,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [   13.278274] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:95:c=
ursor A]  blocks    6,  16,  16,  16,  16,  19,  28,  31,  20,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [   13.278382] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:95:c=
ursor A] min_ddb    8,  19,  19,  19,  19,  22,  32,  36,  21,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [   15.679542] warning: `awk' uses wireless extensions which will stop wo=
rking for Wi-Fi 7 hardware; use nl80211
> [   17.832559] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling PW_3
> [   17.832875] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling PW_2
> [   27.746356] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:95:c=
ursor A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm ->=
 *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7,*twm, swm, stwm
> [   27.746638] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:95:c=
ursor A]   lines    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    2,   5,   5,   5,   5,   6,   9,  10,   0,   0,    0
> [   27.746906] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:95:c=
ursor A]  blocks    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    6,  16,  16,  16,  16,  19,  28,  31,  20,   0,    0
> [   27.747147] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:95:c=
ursor A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    8,  19,  19,  19,  19,  22,  32,  36,  21,   0,    0
> [   30.462080] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:95:c=
ursor A]   level *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7,*twm, swm, stwm ->=
  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
> [   30.462362] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:95:c=
ursor A]   lines    2,   5,   5,   5,   5,   6,   9,  10,   0,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [   30.462614] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:95:c=
ursor A]  blocks    6,  16,  16,  16,  16,  19,  28,  31,  20,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [   30.462876] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:95:c=
ursor A] min_ddb    8,  19,  19,  19,  19,  22,  32,  36,  21,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [   64.322863] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:95:c=
ursor A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm ->=
 *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7,*twm, swm, stwm
> [   64.323164] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:95:c=
ursor A]   lines    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    2,   5,   5,   5,   5,   6,   9,  10,   0,   0,    0
> [   64.323434] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:95:c=
ursor A]  blocks    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    6,  16,  16,  16,  16,  19,  28,  31,  20,   0,    0
> [   64.323780] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:95:c=
ursor A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    8,  19,  19,  19,  19,  22,  32,  36,  21,   0,    0
> [   67.537863] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:95:c=
ursor A]   level *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7,*twm, swm, stwm ->=
  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
> [   67.538204] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:95:c=
ursor A]   lines    2,   5,   5,   5,   5,   6,   9,  10,   0,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [   67.538552] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:95:c=
ursor A]  blocks    6,  16,  16,  16,  16,  19,  28,  31,  20,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [   67.538896] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:95:c=
ursor A] min_ddb    8,  19,  19,  19,  19,  22,  32,  36,  21,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0

> [    0.000000] microcode: microcode updated early to revision 0xb6, date =
=3D 2023-09-13
> [    0.000000] Linux version 6.1.105 (renan@debian) (gcc (Debian 12.2.0-1=
4) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40) #1 SMP PREEMPT_DYNAMIC We=
d Aug 14 22:43:29 -03 2024
> [    0.000000] Command line: BOOT_IMAGE=3D/boot/vmlinuz-6.1.105 root=3DUU=
ID=3D199a867c-5749-4ed5-8946-1a80cae9b76f ro quiet drm.debug=3D0xe log_buf_=
len=3D4M ignore_loglevel
> [    0.000000] x86/split lock detection: #AC: crashing the kernel on kern=
el split_locks and warning on user-space split_locks
> [    0.000000] BIOS-provided physical RAM map:
> [    0.000000] BIOS-e820: [mem 0x0000000000000000-0x000000000009efff] usa=
ble
> [    0.000000] BIOS-e820: [mem 0x000000000009f000-0x00000000000fffff] res=
erved
> [    0.000000] BIOS-e820: [mem 0x0000000000100000-0x0000000040d98fff] usa=
ble
> [    0.000000] BIOS-e820: [mem 0x0000000040d99000-0x0000000041698fff] res=
erved
> [    0.000000] BIOS-e820: [mem 0x0000000041699000-0x00000000434aefff] usa=
ble
> [    0.000000] BIOS-e820: [mem 0x00000000434af000-0x000000004387efff] typ=
e 20
> [    0.000000] BIOS-e820: [mem 0x000000004387f000-0x00000000452fefff] res=
erved
> [    0.000000] BIOS-e820: [mem 0x00000000452ff000-0x0000000045b2efff] ACP=
I NVS
> [    0.000000] BIOS-e820: [mem 0x0000000045b2f000-0x0000000045bfefff] ACP=
I data
> [    0.000000] BIOS-e820: [mem 0x0000000045bff000-0x0000000045bfffff] usa=
ble
> [    0.000000] BIOS-e820: [mem 0x0000000045c00000-0x0000000049ffffff] res=
erved
> [    0.000000] BIOS-e820: [mem 0x000000004a200000-0x000000004a3fffff] res=
erved
> [    0.000000] BIOS-e820: [mem 0x000000004b000000-0x00000000503fffff] res=
erved
> [    0.000000] BIOS-e820: [mem 0x00000000c0000000-0x00000000cfffffff] res=
erved
> [    0.000000] BIOS-e820: [mem 0x00000000fe010000-0x00000000fe010fff] res=
erved
> [    0.000000] BIOS-e820: [mem 0x00000000fed20000-0x00000000fed7ffff] res=
erved
> [    0.000000] BIOS-e820: [mem 0x00000000ff200000-0x00000000ffffffff] res=
erved
> [    0.000000] BIOS-e820: [mem 0x0000000100000000-0x00000006afbfffff] usa=
ble
> [    0.000000] printk: debug: ignoring loglevel setting.
> [    0.000000] NX (Execute Disable) protection: active
> [    0.000000] efi: EFI v2.70 by INSYDE Corp.
> [    0.000000] efi: ACPI=3D0x45bfe000 ACPI 2.0=3D0x45bfe014 TPMFinalLog=
=3D0x45ac5000 SMBIOS=3D0x43a00000 SMBIOS 3.0=3D0x439fe000 MEMATTR=3D0x3cbc4=
018 ESRT=3D0x3cbd0098 MOKvar=3D0x439d4000=20
> [    0.000000] SMBIOS 3.3.0 present.
> [    0.000000] DMI: LENOVO 82MG/LNVNB161216, BIOS H4CN35WW(V2.04) 04/12/2=
024
> [    0.000000] tsc: Detected 3100.000 MHz processor
> [    0.000000] tsc: Detected 3110.400 MHz TSC
> [    0.000006] e820: update [mem 0x00000000-0x00000fff] usable =3D=3D> re=
served
> [    0.000008] e820: remove [mem 0x000a0000-0x000fffff] usable
> [    0.000013] last_pfn =3D 0x6afc00 max_arch_pfn =3D 0x400000000
> [    0.000143] x86/PAT: Configuration [0-7]: WB  WC  UC- UC  WB  WP  UC- =
WT =20
> [    0.000832] last_pfn =3D 0x45c00 max_arch_pfn =3D 0x400000000
> [    0.008673] esrt: Reserving ESRT space from 0x000000003cbd0098 to 0x00=
0000003cbd0198.
> [    0.008677] e820: update [mem 0x3cbd0000-0x3cbd0fff] usable =3D=3D> re=
served
> [    0.008692] Using GB pages for direct mapping
> [    0.010525] printk: log_buf_len: 4194304 bytes
> [    0.010526] printk: early log buf free: 128184(97%)
> [    0.010527] Secure boot disabled
> [    0.010527] RAMDISK: [mem 0x356e5000-0x36b69fff]
> [    0.010531] ACPI: Early table checksum verification disabled
> [    0.010534] ACPI: RSDP 0x0000000045BFE014 000024 (v02 LENOVO)
> [    0.010537] ACPI: XSDT 0x0000000045BD9188 000134 (v01 LENOVO CB-01    =
00000001      01000013)
> [    0.010542] ACPI: FACP 0x0000000045BFD000 000114 (v06 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.010545] ACPI: DSDT 0x0000000045B80000 056C5F (v02 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.010547] ACPI: FACS 0x0000000045AA4000 000040
> [    0.010549] ACPI: UEFI 0x0000000045B2E000 000236 (v01 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.010551] ACPI: SSDT 0x0000000045BFA000 00255C (v02 LENOVO CB-01    =
00000001 INTL 20160422)
> [    0.010553] ACPI: SSDT 0x0000000045BF6000 003916 (v02 LENOVO CB-01    =
00000001 INTL 20160422)
> [    0.010554] ACPI: SSDT 0x0000000045BF5000 000106 (v02 LENOVO CB-01    =
00000001 INTL 20160422)
> [    0.010556] ACPI: SSDT 0x0000000045BEF000 005A4E (v02 LENOVO CB-01    =
00000001 INTL 20160422)
> [    0.010558] ACPI: SSDT 0x0000000045BEB000 003DC4 (v02 LENOVO CB-01    =
00000001 INTL 20160422)
> [    0.010560] ACPI: SSDT 0x0000000045BE7000 003300 (v02 LENOVO CB-01    =
00000001 INTL 20160422)
> [    0.010562] ACPI: SSDT 0x0000000045BE6000 00081F (v02 LENOVO CB-01    =
00000001 INTL 20160422)
> [    0.010564] ACPI: SSDT 0x0000000045BE5000 000033 (v02 LENOVO CB-01    =
00000001 INTL 20160422)
> [    0.010566] ACPI: SSDT 0x0000000045BE4000 00077B (v02 LENOVO CB-01    =
00000001 INTL 20160422)
> [    0.010568] ACPI: TPM2 0x0000000045BE3000 00004C (v04 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.010569] ACPI: MSDM 0x0000000045BE2000 000055 (v03 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.010571] ACPI: NHLT 0x0000000045BE0000 00189E (v00 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.010573] ACPI: LPIT 0x0000000045BDF000 0000CC (v01 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.010575] ACPI: WSMT 0x0000000045BDE000 000028 (v01 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.010577] ACPI: SSDT 0x0000000045BDD000 000B70 (v02 LENOVO CB-01    =
00000001 INTL 20160422)
> [    0.010579] ACPI: SSDT 0x0000000045BDC000 00012A (v02 LENOVO CB-01    =
00000001 INTL 20160422)
> [    0.010581] ACPI: DBGP 0x0000000045BDB000 000034 (v01 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.010582] ACPI: DBG2 0x0000000045BDA000 000054 (v00 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.010584] ACPI: HPET 0x0000000045BD8000 000038 (v01 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.010586] ACPI: APIC 0x0000000045BD7000 00012C (v04 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.010588] ACPI: SSDT 0x0000000045B7B000 0042BB (v02 LENOVO CB-01    =
00000001      01000013)
> [    0.010590] ACPI: SSDT 0x0000000045B7A000 000CF6 (v02 LENOVO CB-01    =
00000001      01000013)
> [    0.010592] ACPI: DMAR 0x0000000045B79000 000088 (v02 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.010594] ACPI: SSDT 0x0000000045B76000 00217F (v01 LENOVO CB-01    =
00000001 INTL 20160422)
> [    0.010596] ACPI: UEFI 0x0000000045A5D000 00063A (v01 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.010597] ACPI: UEFI 0x0000000045A5C000 00005C (v01 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.010599] ACPI: MCFG 0x0000000045B75000 00003C (v01 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.010601] ACPI: SSDT 0x0000000045B74000 000DB8 (v02 LENOVO CB-01    =
00000001 INTL 20160422)
> [    0.010603] ACPI: SSDT 0x0000000045B73000 0000F8 (v01 LENOVO CB-01    =
00000001 INTL 20160422)
> [    0.010605] ACPI: FPDT 0x0000000045B72000 000044 (v01 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.010607] ACPI: BGRT 0x0000000045B71000 000038 (v01 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.010609] ACPI: PTDT 0x0000000045B70000 000CFE (v00 LENOVO CB-01    =
00000001 ACPI 00040000)
> [    0.010610] ACPI: Reserving FACP table memory at [mem 0x45bfd000-0x45b=
fd113]
> [    0.010611] ACPI: Reserving DSDT table memory at [mem 0x45b80000-0x45b=
d6c5e]
> [    0.010612] ACPI: Reserving FACS table memory at [mem 0x45aa4000-0x45a=
a403f]
> [    0.010612] ACPI: Reserving UEFI table memory at [mem 0x45b2e000-0x45b=
2e235]
> [    0.010613] ACPI: Reserving SSDT table memory at [mem 0x45bfa000-0x45b=
fc55b]
> [    0.010613] ACPI: Reserving SSDT table memory at [mem 0x45bf6000-0x45b=
f9915]
> [    0.010614] ACPI: Reserving SSDT table memory at [mem 0x45bf5000-0x45b=
f5105]
> [    0.010614] ACPI: Reserving SSDT table memory at [mem 0x45bef000-0x45b=
f4a4d]
> [    0.010614] ACPI: Reserving SSDT table memory at [mem 0x45beb000-0x45b=
eedc3]
> [    0.010615] ACPI: Reserving SSDT table memory at [mem 0x45be7000-0x45b=
ea2ff]
> [    0.010615] ACPI: Reserving SSDT table memory at [mem 0x45be6000-0x45b=
e681e]
> [    0.010616] ACPI: Reserving SSDT table memory at [mem 0x45be5000-0x45b=
e5032]
> [    0.010616] ACPI: Reserving SSDT table memory at [mem 0x45be4000-0x45b=
e477a]
> [    0.010617] ACPI: Reserving TPM2 table memory at [mem 0x45be3000-0x45b=
e304b]
> [    0.010617] ACPI: Reserving MSDM table memory at [mem 0x45be2000-0x45b=
e2054]
> [    0.010618] ACPI: Reserving NHLT table memory at [mem 0x45be0000-0x45b=
e189d]
> [    0.010618] ACPI: Reserving LPIT table memory at [mem 0x45bdf000-0x45b=
df0cb]
> [    0.010619] ACPI: Reserving WSMT table memory at [mem 0x45bde000-0x45b=
de027]
> [    0.010619] ACPI: Reserving SSDT table memory at [mem 0x45bdd000-0x45b=
ddb6f]
> [    0.010619] ACPI: Reserving SSDT table memory at [mem 0x45bdc000-0x45b=
dc129]
> [    0.010620] ACPI: Reserving DBGP table memory at [mem 0x45bdb000-0x45b=
db033]
> [    0.010620] ACPI: Reserving DBG2 table memory at [mem 0x45bda000-0x45b=
da053]
> [    0.010621] ACPI: Reserving HPET table memory at [mem 0x45bd8000-0x45b=
d8037]
> [    0.010621] ACPI: Reserving APIC table memory at [mem 0x45bd7000-0x45b=
d712b]
> [    0.010622] ACPI: Reserving SSDT table memory at [mem 0x45b7b000-0x45b=
7f2ba]
> [    0.010622] ACPI: Reserving SSDT table memory at [mem 0x45b7a000-0x45b=
7acf5]
> [    0.010623] ACPI: Reserving DMAR table memory at [mem 0x45b79000-0x45b=
79087]
> [    0.010623] ACPI: Reserving SSDT table memory at [mem 0x45b76000-0x45b=
7817e]
> [    0.010624] ACPI: Reserving UEFI table memory at [mem 0x45a5d000-0x45a=
5d639]
> [    0.010624] ACPI: Reserving UEFI table memory at [mem 0x45a5c000-0x45a=
5c05b]
> [    0.010625] ACPI: Reserving MCFG table memory at [mem 0x45b75000-0x45b=
7503b]
> [    0.010625] ACPI: Reserving SSDT table memory at [mem 0x45b74000-0x45b=
74db7]
> [    0.010626] ACPI: Reserving SSDT table memory at [mem 0x45b73000-0x45b=
730f7]
> [    0.010626] ACPI: Reserving FPDT table memory at [mem 0x45b72000-0x45b=
72043]
> [    0.010627] ACPI: Reserving BGRT table memory at [mem 0x45b71000-0x45b=
71037]
> [    0.010627] ACPI: Reserving PTDT table memory at [mem 0x45b70000-0x45b=
70cfd]
> [    0.010795] No NUMA configuration found
> [    0.010795] Faking a node at [mem 0x0000000000000000-0x00000006afbffff=
f]
> [    0.010801] NODE_DATA(0) allocated [mem 0x6ae9d5000-0x6ae9fffff]
> [    0.010930] Zone ranges:
> [    0.010931]   DMA      [mem 0x0000000000001000-0x0000000000ffffff]
> [    0.010932]   DMA32    [mem 0x0000000001000000-0x00000000ffffffff]
> [    0.010933]   Normal   [mem 0x0000000100000000-0x00000006afbfffff]
> [    0.010934]   Device   empty
> [    0.010934] Movable zone start for each node
> [    0.010935] Early memory node ranges
> [    0.010936]   node   0: [mem 0x0000000000001000-0x000000000009efff]
> [    0.010937]   node   0: [mem 0x0000000000100000-0x0000000040d98fff]
> [    0.010937]   node   0: [mem 0x0000000041699000-0x00000000434aefff]
> [    0.010938]   node   0: [mem 0x0000000045bff000-0x0000000045bfffff]
> [    0.010938]   node   0: [mem 0x0000000100000000-0x00000006afbfffff]
> [    0.010940] Initmem setup node 0 [mem 0x0000000000001000-0x00000006afb=
fffff]
> [    0.010944] On node 0, zone DMA: 1 pages in unavailable ranges
> [    0.010966] On node 0, zone DMA: 97 pages in unavailable ranges
> [    0.012514] On node 0, zone DMA32: 2304 pages in unavailable ranges
> [    0.012586] On node 0, zone DMA32: 10064 pages in unavailable ranges
> [    0.012843] On node 0, zone Normal: 9216 pages in unavailable ranges
> [    0.012851] On node 0, zone Normal: 1024 pages in unavailable ranges
> [    0.012872] Reserving Intel graphics memory at [mem 0x4c800000-0x503ff=
fff]
> [    0.013141] ACPI: PM-Timer IO Port: 0x1808
> [    0.013146] ACPI: LAPIC_NMI (acpi_id[0x01] high edge lint[0x1])
> [    0.013147] ACPI: LAPIC_NMI (acpi_id[0x02] high edge lint[0x1])
> [    0.013148] ACPI: LAPIC_NMI (acpi_id[0x03] high edge lint[0x1])
> [    0.013148] ACPI: LAPIC_NMI (acpi_id[0x04] high edge lint[0x1])
> [    0.013149] ACPI: LAPIC_NMI (acpi_id[0x05] high edge lint[0x1])
> [    0.013149] ACPI: LAPIC_NMI (acpi_id[0x06] high edge lint[0x1])
> [    0.013149] ACPI: LAPIC_NMI (acpi_id[0x07] high edge lint[0x1])
> [    0.013150] ACPI: LAPIC_NMI (acpi_id[0x08] high edge lint[0x1])
> [    0.013150] ACPI: LAPIC_NMI (acpi_id[0x09] high edge lint[0x1])
> [    0.013151] ACPI: LAPIC_NMI (acpi_id[0x0a] high edge lint[0x1])
> [    0.013151] ACPI: LAPIC_NMI (acpi_id[0x0b] high edge lint[0x1])
> [    0.013151] ACPI: LAPIC_NMI (acpi_id[0x0c] high edge lint[0x1])
> [    0.013152] ACPI: LAPIC_NMI (acpi_id[0x0d] high edge lint[0x1])
> [    0.013152] ACPI: LAPIC_NMI (acpi_id[0x0e] high edge lint[0x1])
> [    0.013152] ACPI: LAPIC_NMI (acpi_id[0x0f] high edge lint[0x1])
> [    0.013153] ACPI: LAPIC_NMI (acpi_id[0x10] high edge lint[0x1])
> [    0.013188] IOAPIC[0]: apic_id 2, version 32, address 0xfec00000, GSI =
0-119
> [    0.013190] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
> [    0.013192] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
> [    0.013195] ACPI: Using ACPI (MADT) for SMP configuration information
> [    0.013195] ACPI: HPET id: 0x8086a201 base: 0xfed00000
> [    0.013201] e820: update [mem 0x3c740000-0x3c84efff] usable =3D=3D> re=
served
> [    0.013208] TSC deadline timer available
> [    0.013209] smpboot: Allowing 8 CPUs, 0 hotplug CPUs
> [    0.013220] PM: hibernation: Registered nosave memory: [mem 0x00000000=
-0x00000fff]
> [    0.013221] PM: hibernation: Registered nosave memory: [mem 0x0009f000=
-0x000fffff]
> [    0.013222] PM: hibernation: Registered nosave memory: [mem 0x3c740000=
-0x3c84efff]
> [    0.013223] PM: hibernation: Registered nosave memory: [mem 0x3cbd0000=
-0x3cbd0fff]
> [    0.013224] PM: hibernation: Registered nosave memory: [mem 0x40d99000=
-0x41698fff]
> [    0.013225] PM: hibernation: Registered nosave memory: [mem 0x434af000=
-0x4387efff]
> [    0.013226] PM: hibernation: Registered nosave memory: [mem 0x4387f000=
-0x452fefff]
> [    0.013226] PM: hibernation: Registered nosave memory: [mem 0x452ff000=
-0x45b2efff]
> [    0.013226] PM: hibernation: Registered nosave memory: [mem 0x45b2f000=
-0x45bfefff]
> [    0.013227] PM: hibernation: Registered nosave memory: [mem 0x45c00000=
-0x49ffffff]
> [    0.013228] PM: hibernation: Registered nosave memory: [mem 0x4a000000=
-0x4a1fffff]
> [    0.013228] PM: hibernation: Registered nosave memory: [mem 0x4a200000=
-0x4a3fffff]
> [    0.013228] PM: hibernation: Registered nosave memory: [mem 0x4a400000=
-0x4affffff]
> [    0.013229] PM: hibernation: Registered nosave memory: [mem 0x4b000000=
-0x503fffff]
> [    0.013229] PM: hibernation: Registered nosave memory: [mem 0x50400000=
-0xbfffffff]
> [    0.013229] PM: hibernation: Registered nosave memory: [mem 0xc0000000=
-0xcfffffff]
> [    0.013230] PM: hibernation: Registered nosave memory: [mem 0xd0000000=
-0xfe00ffff]
> [    0.013230] PM: hibernation: Registered nosave memory: [mem 0xfe010000=
-0xfe010fff]
> [    0.013231] PM: hibernation: Registered nosave memory: [mem 0xfe011000=
-0xfed1ffff]
> [    0.013231] PM: hibernation: Registered nosave memory: [mem 0xfed20000=
-0xfed7ffff]
> [    0.013231] PM: hibernation: Registered nosave memory: [mem 0xfed80000=
-0xff1fffff]
> [    0.013232] PM: hibernation: Registered nosave memory: [mem 0xff200000=
-0xffffffff]
> [    0.013232] [mem 0x50400000-0xbfffffff] available for PCI devices
> [    0.013233] Booting paravirtualized kernel on bare hardware
> [    0.013235] clocksource: refined-jiffies: mask: 0xffffffff max_cycles:=
 0xffffffff, max_idle_ns: 7645519600211568 ns
> [    0.016353] setup_percpu: NR_CPUS:8192 nr_cpumask_bits:8 nr_cpu_ids:8 =
nr_node_ids:1
> [    0.016485] percpu: Embedded 61 pages/cpu s212992 r8192 d28672 u262144
> [    0.016490] pcpu-alloc: s212992 r8192 d28672 u262144 alloc=3D1*2097152
> [    0.016492] pcpu-alloc: [0] 0 1 2 3 4 5 6 7=20
> [    0.016509] Fallback order for Node 0: 0=20
> [    0.016511] Built 1 zonelists, mobility grouping on.  Total pages: 613=
8385
> [    0.016512] Policy zone: Normal
> [    0.016514] Kernel command line: BOOT_IMAGE=3D/boot/vmlinuz-6.1.105 ro=
ot=3DUUID=3D199a867c-5749-4ed5-8946-1a80cae9b76f ro quiet drm.debug=3D0xe l=
og_buf_len=3D4M ignore_loglevel
> [    0.016559] Unknown kernel command line parameters "BOOT_IMAGE=3D/boot=
/vmlinuz-6.1.105", will be passed to user space.
> [    0.016600] random: crng init done
> [    0.017460] Dentry cache hash table entries: 4194304 (order: 13, 33554=
432 bytes, linear)
> [    0.017901] Inode-cache hash table entries: 2097152 (order: 12, 167772=
16 bytes, linear)
> [    0.017967] mem auto-init: stack:all(zero), heap alloc:on, heap free:o=
ff
> [    0.017975] software IO TLB: area num 8.
> [    0.031616] Memory: 1041900K/24943928K available (14342K kernel code, =
2335K rwdata, 9072K rodata, 2796K init, 17396K bss, 696880K reserved, 0K cm=
a-reserved)
> [    0.031682] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D8,=
 Nodes=3D1
> [    0.031703] ftrace: allocating 40242 entries in 158 pages
> [    0.036354] ftrace: allocated 158 pages with 5 groups
> [    0.036882] Dynamic Preempt: voluntary
> [    0.036902] rcu: Preemptible hierarchical RCU implementation.
> [    0.036903] rcu: 	RCU restricting CPUs from NR_CPUS=3D8192 to nr_cpu_i=
ds=3D8.
> [    0.036904] 	Trampoline variant of Tasks RCU enabled.
> [    0.036904] 	Rude variant of Tasks RCU enabled.
> [    0.036905] 	Tracing variant of Tasks RCU enabled.
> [    0.036905] rcu: RCU calculated value of scheduler-enlistment delay is=
 25 jiffies.
> [    0.036906] rcu: Adjusting geometry for rcu_fanout_leaf=3D16, nr_cpu_i=
ds=3D8
> [    0.039268] NR_IRQS: 524544, nr_irqs: 2048, preallocated irqs: 16
> [    0.039535] rcu: srcu_init: Setting srcu_struct sizes based on content=
ion.
> [    0.039753] Console: colour dummy device 80x25
> [    0.039932] printk: console [tty0] enabled
> [    0.039943] ACPI: Core revision 20220331
> [    0.040178] hpet: HPET dysfunctional in PC10. Force disabled.
> [    0.040180] APIC: Switch to symmetric I/O mode setup
> [    0.040182] DMAR: Host address width 39
> [    0.040183] DMAR: DRHD base: 0x000000fed90000 flags: 0x0
> [    0.040188] DMAR: dmar0: reg_base_addr fed90000 ver 4:0 cap 1c0000c406=
60462 ecap 29a00f0505e
> [    0.040191] DMAR: DRHD base: 0x000000fed91000 flags: 0x1
> [    0.040196] DMAR: dmar1: reg_base_addr fed91000 ver 1:0 cap d2008c4066=
0462 ecap f050da
> [    0.040199] DMAR: RMRR base: 0x0000004c000000 end: 0x000000503fffff
> [    0.040202] DMAR-IR: IOAPIC id 2 under DRHD base  0xfed91000 IOMMU 1
> [    0.040203] DMAR-IR: HPET id 0 under DRHD base 0xfed91000
> [    0.040204] DMAR-IR: Queued invalidation will be enabled to support x2=
apic and Intr-remapping.
> [    0.041803] DMAR-IR: Enabled IRQ remapping in x2apic mode
> [    0.041807] x2apic enabled
> [    0.041845] Switched APIC routing to cluster x2apic.
> [    0.046367] clocksource: tsc-early: mask: 0xffffffffffffffff max_cycle=
s: 0x2cd5a8bb032, max_idle_ns: 440795365915 ns
> [    0.046374] Calibrating delay loop (skipped), value calculated using t=
imer frequency.. 6220.80 BogoMIPS (lpj=3D12441600)
> [    0.046402] CPU0: Thermal monitoring enabled (TM1)
> [    0.046404] x86/cpu: User Mode Instruction Prevention (UMIP) activated
> [    0.046510] process: using mwait in idle threads
> [    0.046512] Last level iTLB entries: 4KB 0, 2MB 0, 4MB 0
> [    0.046513] Last level dTLB entries: 4KB 0, 2MB 0, 4MB 0, 1GB 0
> [    0.046516] Spectre V1 : Mitigation: usercopy/swapgs barriers and __us=
er pointer sanitization
> [    0.046519] Spectre V2 : Spectre BHI mitigation: SW BHB clearing on vm=
 exit
> [    0.046520] Spectre V2 : Spectre BHI mitigation: SW BHB clearing on sy=
scall
> [    0.046521] Spectre V2 : Mitigation: Enhanced / Automatic IBRS
> [    0.046522] Spectre V2 : Spectre v2 / SpectreRSB mitigation: Filling R=
SB on context switch
> [    0.046524] Spectre V2 : Spectre v2 / PBRSB-eIBRS: Retire a single CAL=
L on VMEXIT
> [    0.046526] Spectre V2 : mitigation: Enabling conditional Indirect Bra=
nch Prediction Barrier
> [    0.046528] Speculative Store Bypass: Mitigation: Speculative Store By=
pass disabled via prctl
> [    0.046530] GDS: Mitigation: Microcode
> [    0.046537] x86/fpu: Supporting XSAVE feature 0x001: 'x87 floating poi=
nt registers'
> [    0.046539] x86/fpu: Supporting XSAVE feature 0x002: 'SSE registers'
> [    0.046540] x86/fpu: Supporting XSAVE feature 0x004: 'AVX registers'
> [    0.046541] x86/fpu: Supporting XSAVE feature 0x020: 'AVX-512 opmask'
> [    0.046542] x86/fpu: Supporting XSAVE feature 0x040: 'AVX-512 Hi256'
> [    0.046543] x86/fpu: Supporting XSAVE feature 0x080: 'AVX-512 ZMM_Hi25=
6'
> [    0.046545] x86/fpu: Supporting XSAVE feature 0x200: 'Protection Keys =
User registers'
> [    0.046546] x86/fpu: xstate_offset[2]:  576, xstate_sizes[2]:  256
> [    0.046548] x86/fpu: xstate_offset[5]:  832, xstate_sizes[5]:   64
> [    0.046549] x86/fpu: xstate_offset[6]:  896, xstate_sizes[6]:  512
> [    0.046550] x86/fpu: xstate_offset[7]: 1408, xstate_sizes[7]: 1024
> [    0.046552] x86/fpu: xstate_offset[9]: 2432, xstate_sizes[9]:    8
> [    0.046553] x86/fpu: Enabled xstate features 0x2e7, context size is 24=
40 bytes, using 'compacted' format.
> [    0.050372] Freeing SMP alternatives memory: 36K
> [    0.050372] pid_max: default: 32768 minimum: 301
> [    0.050372] LSM: Security Framework initializing
> [    0.050372] landlock: Up and running.
> [    0.050372] Yama: becoming mindful.
> [    0.050372] AppArmor: AppArmor initialized
> [    0.050372] TOMOYO Linux initialized
> [    0.050372] LSM support for eBPF active
> [    0.050372] Mount-cache hash table entries: 65536 (order: 7, 524288 by=
tes, linear)
> [    0.050372] Mountpoint-cache hash table entries: 65536 (order: 7, 5242=
88 bytes, linear)
> [    0.050372] smpboot: CPU0: 11th Gen Intel(R) Core(TM) i5-11300H @ 3.10=
GHz (family: 0x6, model: 0x8c, stepping: 0x1)
> [    0.050372] cblist_init_generic: Setting adjustable number of callback=
 queues.
> [    0.050372] cblist_init_generic: Setting shift to 3 and lim to 1.
> [    0.050372] cblist_init_generic: Setting adjustable number of callback=
 queues.
> [    0.050372] cblist_init_generic: Setting shift to 3 and lim to 1.
> [    0.050372] cblist_init_generic: Setting adjustable number of callback=
 queues.
> [    0.050372] cblist_init_generic: Setting shift to 3 and lim to 1.
> [    0.050372] Performance Events: PEBS fmt4+-baseline,  AnyThread deprec=
ated, Icelake events, 32-deep LBR, full-width counters, Intel PMU driver.
> [    0.050372] ... version:                5
> [    0.050372] ... bit width:              48
> [    0.050372] ... generic registers:      8
> [    0.050372] ... value mask:             0000ffffffffffff
> [    0.050372] ... max period:             00007fffffffffff
> [    0.050372] ... fixed-purpose events:   4
> [    0.050372] ... event mask:             0001000f000000ff
> [    0.050372] signal: max sigframe size: 3632
> [    0.050372] Estimated ratio of average max frequency by base frequency=
 (times 1024): 1321
> [    0.050372] rcu: Hierarchical SRCU implementation.
> [    0.050372] rcu: 	Max phase no-delay instances is 1000.
> [    0.050372] NMI watchdog: Enabled. Permanently consumes one hw-PMU cou=
nter.
> [    0.050372] smp: Bringing up secondary CPUs ...
> [    0.050372] x86: Booting SMP configuration:
> [    0.050372] .... node  #0, CPUs:      #1 #2 #3 #4 #5 #6 #7
> [    0.055167] smp: Brought up 1 node, 8 CPUs
> [    0.055167] smpboot: Max logical packages: 1
> [    0.055167] smpboot: Total of 8 processors activated (49766.40 BogoMIP=
S)
> [    0.082403] node 0 deferred pages initialised in 24ms
> [    0.084364] devtmpfs: initialized
> [    0.084364] x86/mm: Memory block size: 128MB
> [    0.086422] ACPI: PM: Registering ACPI NVS region [mem 0x452ff000-0x45=
b2efff] (8585216 bytes)
> [    0.086476] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xfffff=
fff, max_idle_ns: 7645041785100000 ns
> [    0.086487] futex hash table entries: 2048 (order: 5, 131072 bytes, li=
near)
> [    0.086518] pinctrl core: initialized pinctrl subsystem
> [    0.086908] NET: Registered PF_NETLINK/PF_ROUTE protocol family
> [    0.087217] DMA: preallocated 4096 KiB GFP_KERNEL pool for atomic allo=
cations
> [    0.087477] DMA: preallocated 4096 KiB GFP_KERNEL|GFP_DMA pool for ato=
mic allocations
> [    0.087727] DMA: preallocated 4096 KiB GFP_KERNEL|GFP_DMA32 pool for a=
tomic allocations
> [    0.087736] audit: initializing netlink subsys (disabled)
> [    0.087742] audit: type=3D2000 audit(1723698738.040:1): state=3Dinitia=
lized audit_enabled=3D0 res=3D1
> [    0.087742] thermal_sys: Registered thermal governor 'fair_share'
> [    0.087742] thermal_sys: Registered thermal governor 'bang_bang'
> [    0.087742] thermal_sys: Registered thermal governor 'step_wise'
> [    0.087742] thermal_sys: Registered thermal governor 'user_space'
> [    0.087742] thermal_sys: Registered thermal governor 'power_allocator'
> [    0.087742] cpuidle: using governor ladder
> [    0.087742] cpuidle: using governor menu
> [    0.087742] acpiphp: ACPI Hot Plug PCI Controller Driver version: 0.5
> [    0.087742] PCI: MMCONFIG for domain 0000 [bus 00-02] at [mem 0xc00000=
00-0xc02fffff] (base 0xc0000000)
> [    0.087742] PCI: MMCONFIG at [mem 0xc0000000-0xc02fffff] reserved in E=
820
> [    0.087742] PCI: Using configuration type 1 for base access
> [    0.087742] ENERGY_PERF_BIAS: Set to 'normal', was 'performance'
> [    0.087742] kprobes: kprobe jump-optimization is enabled. All kprobes =
are optimized if possible.
> [    0.087742] HugeTLB: registered 1.00 GiB page size, pre-allocated 0 pa=
ges
> [    0.087742] HugeTLB: 16380 KiB vmemmap can be freed for a 1.00 GiB page
> [    0.087742] HugeTLB: registered 2.00 MiB page size, pre-allocated 0 pa=
ges
> [    0.087742] HugeTLB: 28 KiB vmemmap can be freed for a 2.00 MiB page
> [    0.087742] ACPI: Added _OSI(Module Device)
> [    0.087742] ACPI: Added _OSI(Processor Device)
> [    0.087742] ACPI: Added _OSI(3.0 _SCP Extensions)
> [    0.087742] ACPI: Added _OSI(Processor Aggregator Device)
> [    0.135021] ACPI BIOS Error (bug): Could not resolve symbol [\_SB.PC00=
=2EI2C0.TPD0], AE_NOT_FOUND (20220331/dswload2-162)
> [    0.135026] ACPI Error: AE_NOT_FOUND, During name lookup/catalog (2022=
0331/psobject-220)
> [    0.135029] ACPI: Skipping parse of AML opcode: OpcodeName unavailable=
 (0x0010)
> [    0.135047] ACPI BIOS Error (bug): Could not resolve symbol [\_SB.PC00=
=2EI2C0.TPL1], AE_NOT_FOUND (20220331/dswload2-162)
> [    0.135050] ACPI Error: AE_NOT_FOUND, During name lookup/catalog (2022=
0331/psobject-220)
> [    0.135052] ACPI: Skipping parse of AML opcode: OpcodeName unavailable=
 (0x0010)
> [    0.135686] ACPI: 17 ACPI AML tables successfully acquired and loaded
> [    0.141814] ACPI: Dynamic OEM Table Load:
> [    0.141824] ACPI: SSDT 0xFFFF9C96811D9000 0001C6 (v02 PmRef  Cpu0Psd  =
00003000 INTL 20160422)
> [    0.142381] ACPI: \_SB_.PR00: _OSC native thermal LVT Acked
> [    0.143810] ACPI: Dynamic OEM Table Load:
> [    0.143816] ACPI: SSDT 0xFFFF9C96810E0C00 000386 (v02 PmRef  Cpu0Cst  =
00003001 INTL 20160422)
> [    0.144442] ACPI: Dynamic OEM Table Load:
> [    0.144447] ACPI: SSDT 0xFFFF9C9681106800 0006AA (v02 PmRef  Cpu0Ist  =
00003000 INTL 20160422)
> [    0.145103] ACPI: Dynamic OEM Table Load:
> [    0.145108] ACPI: SSDT 0xFFFF9C96810E4C00 00028B (v02 PmRef  Cpu0Hwp  =
00003000 INTL 20160422)
> [    0.145812] ACPI: Dynamic OEM Table Load:
> [    0.145818] ACPI: SSDT 0xFFFF9C9681879000 0008E7 (v02 PmRef  ApIst    =
00003000 INTL 20160422)
> [    0.146493] ACPI: Dynamic OEM Table Load:
> [    0.146498] ACPI: SSDT 0xFFFF9C9681103800 00048A (v02 PmRef  ApHwp    =
00003000 INTL 20160422)
> [    0.147136] ACPI: Dynamic OEM Table Load:
> [    0.147141] ACPI: SSDT 0xFFFF9C9681104000 0004D4 (v02 PmRef  ApPsd    =
00003000 INTL 20160422)
> [    0.147775] ACPI: Dynamic OEM Table Load:
> [    0.147779] ACPI: SSDT 0xFFFF9C9681107000 00048A (v02 PmRef  ApCst    =
00003000 INTL 20160422)
> [    0.150967] ACPI: EC: EC started
> [    0.150969] ACPI: EC: interrupt blocked
> [    0.151449] ACPI: EC: EC_CMD/EC_SC=3D0x66, EC_DATA=3D0x62
> [    0.151451] ACPI: \_SB_.PC00.LPCB.EC0_: Boot DSDT EC used to handle tr=
ansactions
> [    0.151453] ACPI: Interpreter enabled
> [    0.151494] ACPI: PM: (supports S0 S3 S4 S5)
> [    0.151495] ACPI: Using IOAPIC for interrupt routing
> [    0.151527] PCI: Using host bridge windows from ACPI; if necessary, us=
e "pci=3Dnocrs" and report a bug
> [    0.151528] PCI: Ignoring E820 reservations for host bridge windows
> [    0.152731] ACPI: Enabled 7 GPEs in block 00 to 7F
> [    0.155819] ACPI: PM: Power Resource [BTRT]
> [    0.156076] ACPI: PM: Power Resource [PAUD]
> [    0.158333] ACPI: PM: Power Resource [PCRP]
> [    0.162745] ACPI: PM: Power Resource [V0PR]
> [    0.162807] ACPI: PM: Power Resource [V1PR]
> [    0.162865] ACPI: PM: Power Resource [V2PR]
> [    0.164602] ACPI: PM: Power Resource [PXTC]
> [    0.164784] ACPI: PM: Power Resource [PTPL]
> [    0.166091] ACPI: PM: Power Resource [WRST]
> [    0.167878] ACPI: PM: Power Resource [NVPR]
> [    0.168090] ACPI: PM: Power Resource [NVPR]
> [    0.168167] ACPI: PM: Power Resource [NVPR]
> [    0.168211] ACPI: PM: Power Resource [NVPR]
> [    0.168253] ACPI: PM: Power Resource [NVPR]
> [    0.168295] ACPI: PM: Power Resource [NVPR]
> [    0.168339] ACPI: PM: Power Resource [NVPR]
> [    0.168382] ACPI: PM: Power Resource [NVPR]
> [    0.168424] ACPI: PM: Power Resource [NVPR]
> [    0.168467] ACPI: PM: Power Resource [NVPR]
> [    0.168512] ACPI: PM: Power Resource [V0PR]
> [    0.168542] ACPI: PM: Power Resource [V1PR]
> [    0.168571] ACPI: PM: Power Resource [V2PR]
> [    0.168599] ACPI: PM: Power Resource [V3PR]
> [    0.170452] ACPI: PM: Power Resource [FN00]
> [    0.170486] ACPI: PM: Power Resource [FN01]
> [    0.170518] ACPI: PM: Power Resource [FN02]
> [    0.170549] ACPI: PM: Power Resource [FN03]
> [    0.170580] ACPI: PM: Power Resource [FN04]
> [    0.170919] ACPI: PM: Power Resource [PIN]
> [    0.171110] ACPI: PCI Root Bridge [PC00] (domain 0000 [bus 00-fe])
> [    0.171115] acpi PNP0A08:00: _OSC: OS supports [ExtendedConfig ASPM Cl=
ockPM Segments MSI HPX-Type3]
> [    0.173154] acpi PNP0A08:00: _OSC: OS now controls [PCIeHotplug SHPCHo=
tplug PME AER PCIeCapability LTR]
> [    0.173177] acpi PNP0A08:00: [Firmware Info]: MMCONFIG for domain 0000=
 [bus 00-02] only partially covers this bridge
> [    0.175652] PCI host bridge to bus 0000:00
> [    0.175654] pci_bus 0000:00: root bus resource [io  0x0000-0x0cf7 wind=
ow]
> [    0.175656] pci_bus 0000:00: root bus resource [io  0x0d00-0xffff wind=
ow]
> [    0.175658] pci_bus 0000:00: root bus resource [mem 0x000a0000-0x000bf=
fff window]
> [    0.175659] pci_bus 0000:00: root bus resource [mem 0x50400000-0xbffff=
fff window]
> [    0.175661] pci_bus 0000:00: root bus resource [mem 0x4000000000-0x7ff=
fffffff window]
> [    0.175663] pci_bus 0000:00: root bus resource [bus 00-fe]
> [    0.175750] pci 0000:00:00.0: [8086:9a14] type 00 class 0x060000
> [    0.175860] pci 0000:00:02.0: [8086:9a49] type 00 class 0x030000
> [    0.175868] pci 0000:00:02.0: reg 0x10: [mem 0x6014000000-0x6014ffffff=
 64bit]
> [    0.175874] pci 0000:00:02.0: reg 0x18: [mem 0x4000000000-0x400fffffff=
 64bit pref]
> [    0.175878] pci 0000:00:02.0: reg 0x20: [io  0x5000-0x503f]
> [    0.175892] pci 0000:00:02.0: BAR 2: assigned to efifb
> [    0.175893] pci 0000:00:02.0: DMAR: Skip IOMMU disabling for graphics
> [    0.175896] pci 0000:00:02.0: Video device with shadowed ROM at [mem 0=
x000c0000-0x000dffff]
> [    0.175922] pci 0000:00:02.0: reg 0x344: [mem 0x00000000-0x00ffffff 64=
bit]
> [    0.175924] pci 0000:00:02.0: VF(n) BAR0 space: [mem 0x00000000-0x06ff=
ffff 64bit] (contains BAR0 for 7 VFs)
> [    0.175929] pci 0000:00:02.0: reg 0x34c: [mem 0x00000000-0x1fffffff 64=
bit pref]
> [    0.175930] pci 0000:00:02.0: VF(n) BAR2 space: [mem 0x00000000-0xdfff=
ffff 64bit pref] (contains BAR2 for 7 VFs)
> [    0.176039] pci 0000:00:04.0: [8086:9a03] type 00 class 0x118000
> [    0.176057] pci 0000:00:04.0: reg 0x10: [mem 0x6015200000-0x601521ffff=
 64bit]
> [    0.176265] pci 0000:00:06.0: [8086:09ab] type 00 class 0x088000
> [    0.176549] pci 0000:00:08.0: [8086:9a11] type 00 class 0x088000
> [    0.176558] pci 0000:00:08.0: reg 0x10: [mem 0x6015238000-0x6015238fff=
 64bit]
> [    0.176632] pci 0000:00:0a.0: [8086:9a0d] type 00 class 0x118000
> [    0.176640] pci 0000:00:0a.0: reg 0x10: [mem 0x6015220000-0x6015227fff=
 64bit]
> [    0.176659] pci 0000:00:0a.0: enabling Extended Tags
> [    0.176748] pci 0000:00:0e.0: [8086:9a0b] type 00 class 0x010400
> [    0.176761] pci 0000:00:0e.0: reg 0x10: [mem 0x6012000000-0x6013ffffff=
 64bit]
> [    0.176768] pci 0000:00:0e.0: reg 0x18: [mem 0x52000000-0x53ffffff]
> [    0.176782] pci 0000:00:0e.0: reg 0x20: [mem 0x6015100000-0x60151fffff=
 64bit]
> [    0.177008] pci 0000:00:14.0: [8086:a0ed] type 00 class 0x0c0330
> [    0.177029] pci 0000:00:14.0: reg 0x10: [mem 0x55180000-0x5518ffff 64b=
it]
> [    0.177115] pci 0000:00:14.0: PME# supported from D3hot D3cold
> [    0.177376] pci 0000:00:14.2: [8086:a0ef] type 00 class 0x050000
> [    0.177399] pci 0000:00:14.2: reg 0x10: [mem 0x6015230000-0x6015233fff=
 64bit]
> [    0.177415] pci 0000:00:14.2: reg 0x18: [mem 0x6015237000-0x6015237fff=
 64bit]
> [    0.177558] pci 0000:00:14.3: [8086:a0f0] type 00 class 0x028000
> [    0.177598] pci 0000:00:14.3: reg 0x10: [mem 0x601522c000-0x601522ffff=
 64bit]
> [    0.177755] pci 0000:00:14.3: PME# supported from D0 D3hot D3cold
> [    0.177991] pci 0000:00:15.0: [8086:a0e8] type 00 class 0x0c8000
> [    0.178065] pci 0000:00:15.0: reg 0x10: [mem 0x00000000-0x00000fff 64b=
it]
> [    0.178424] pci 0000:00:16.0: [8086:a0e0] type 00 class 0x078000
> [    0.178448] pci 0000:00:16.0: reg 0x10: [mem 0x6015235000-0x6015235fff=
 64bit]
> [    0.178536] pci 0000:00:16.0: PME# supported from D3hot
> [    0.178786] pci 0000:00:17.0: [8086:09ab] type 00 class 0x088000
> [    0.179006] pci 0000:00:1c.0: [8086:a0bc] type 01 class 0x060400
> [    0.179105] pci 0000:00:1c.0: PME# supported from D0 D3hot D3cold
> [    0.179140] pci 0000:00:1c.0: PTM enabled (root), 4ns granularity
> [    0.179511] pci 0000:00:1d.0: [8086:09ab] type 00 class 0x088000
> [    0.179846] pci 0000:00:1d.3: [8086:a0b3] type 01 class 0x060400
> [    0.179946] pci 0000:00:1d.3: PME# supported from D0 D3hot D3cold
> [    0.179982] pci 0000:00:1d.3: PTM enabled (root), 4ns granularity
> [    0.180356] pci 0000:00:1f.0: [8086:a082] type 00 class 0x060100
> [    0.180614] pci 0000:00:1f.3: [8086:a0c8] type 00 class 0x040100
> [    0.180656] pci 0000:00:1f.3: reg 0x10: [mem 0x6015228000-0x601522bfff=
 64bit]
> [    0.180710] pci 0000:00:1f.3: reg 0x20: [mem 0x6015000000-0x60150fffff=
 64bit]
> [    0.180816] pci 0000:00:1f.3: PME# supported from D3hot D3cold
> [    0.181088] pci 0000:00:1f.4: [8086:a0a3] type 00 class 0x0c0500
> [    0.181112] pci 0000:00:1f.4: reg 0x10: [mem 0x6015234000-0x60152340ff=
 64bit]
> [    0.181142] pci 0000:00:1f.4: reg 0x20: [io  0xefa0-0xefbf]
> [    0.181298] pci 0000:00:1f.5: [8086:a0a4] type 00 class 0x0c8000
> [    0.181318] pci 0000:00:1f.5: reg 0x10: [mem 0xfe010000-0xfe010fff]
> [    0.181483] pci 0000:01:00.0: [10de:1f9d] type 00 class 0x030200
> [    0.181503] pci 0000:01:00.0: reg 0x10: [mem 0x54000000-0x54ffffff]
> [    0.181519] pci 0000:01:00.0: reg 0x14: [mem 0x6000000000-0x600fffffff=
 64bit pref]
> [    0.181536] pci 0000:01:00.0: reg 0x1c: [mem 0x6010000000-0x6011ffffff=
 64bit pref]
> [    0.181547] pci 0000:01:00.0: reg 0x24: [io  0x4000-0x407f]
> [    0.181558] pci 0000:01:00.0: reg 0x30: [mem 0xfff80000-0xffffffff pre=
f]
> [    0.181652] pci 0000:01:00.0: PME# supported from D0 D3hot D3cold
> [    0.181787] pci 0000:01:00.0: 31.504 Gb/s available PCIe bandwidth, li=
mited by 8.0 GT/s PCIe x4 link at 0000:00:1c.0 (capable of 252.048 Gb/s wit=
h 16.0 GT/s PCIe x16 link)
> [    0.181963] pci 0000:00:1c.0: PCI bridge to [bus 01]
> [    0.181967] pci 0000:00:1c.0:   bridge window [io  0x4000-0x4fff]
> [    0.181970] pci 0000:00:1c.0:   bridge window [mem 0x54000000-0x54ffff=
ff]
> [    0.181975] pci 0000:00:1c.0:   bridge window [mem 0x6000000000-0x6011=
ffffff 64bit pref]
> [    0.182032] pci 0000:02:00.0: [10ec:8168] type 00 class 0x020000
> [    0.182055] pci 0000:02:00.0: reg 0x10: [io  0x3000-0x30ff]
> [    0.182085] pci 0000:02:00.0: reg 0x18: [mem 0x55004000-0x55004fff 64b=
it]
> [    0.182105] pci 0000:02:00.0: reg 0x20: [mem 0x55000000-0x55003fff 64b=
it]
> [    0.182224] pci 0000:02:00.0: supports D1 D2
> [    0.182225] pci 0000:02:00.0: PME# supported from D0 D1 D2 D3hot D3cold
> [    0.182437] pci 0000:00:1d.3: PCI bridge to [bus 02]
> [    0.182440] pci 0000:00:1d.3:   bridge window [io  0x3000-0x3fff]
> [    0.182443] pci 0000:00:1d.3:   bridge window [mem 0x55000000-0x550fff=
ff]
> [    0.190921] Low-power S0 idle used by default for system suspend
> [    0.197821] ACPI: EC: interrupt unblocked
> [    0.197823] ACPI: EC: event unblocked
> [    0.197853] ACPI: EC: EC_CMD/EC_SC=3D0x66, EC_DATA=3D0x62
> [    0.197854] ACPI: EC: GPE=3D0x6e
> [    0.197855] ACPI: \_SB_.PC00.LPCB.EC0_: Boot DSDT EC initialization co=
mplete
> [    0.197857] ACPI: \_SB_.PC00.LPCB.EC0_: EC: Used to handle transaction=
s and events
> [    0.197905] iommu: Default domain type: Translated=20
> [    0.197905] iommu: DMA domain TLB invalidation policy: lazy mode=20
> [    0.197905] pps_core: LinuxPPS API ver. 1 registered
> [    0.197905] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolf=
o Giometti <giometti@linux.it>
> [    0.197905] PTP clock support registered
> [    0.197905] EDAC MC: Ver: 3.0.0
> [    0.197905] Registered efivars operations
> [    0.198427] NetLabel: Initializing
> [    0.198428] NetLabel:  domain hash size =3D 128
> [    0.198429] NetLabel:  protocols =3D UNLABELED CIPSOv4 CALIPSO
> [    0.198440] NetLabel:  unlabeled traffic allowed by default
> [    0.198441] PCI: Using ACPI for IRQ routing
> [    0.198442] PCI: pci_cache_line_size set to 64 bytes
> [    0.198536] pci 0000:00:1f.5: can't claim BAR 0 [mem 0xfe010000-0xfe01=
0fff]: no compatible bridge window
> [    0.198623] e820: reserve RAM buffer [mem 0x0009f000-0x0009ffff]
> [    0.198625] e820: reserve RAM buffer [mem 0x3c740000-0x3fffffff]
> [    0.198626] e820: reserve RAM buffer [mem 0x3cbd0000-0x3fffffff]
> [    0.198628] e820: reserve RAM buffer [mem 0x40d99000-0x43ffffff]
> [    0.198629] e820: reserve RAM buffer [mem 0x434af000-0x43ffffff]
> [    0.198630] e820: reserve RAM buffer [mem 0x45c00000-0x47ffffff]
> [    0.198631] e820: reserve RAM buffer [mem 0x6afc00000-0x6afffffff]
> [    0.198639] pci 0000:00:02.0: vgaarb: setting as boot VGA device
> [    0.198639] pci 0000:00:02.0: vgaarb: bridge control possible
> [    0.198639] pci 0000:00:02.0: vgaarb: VGA device added: decodes=3Dio+m=
em,owns=3Dio+mem,locks=3Dnone
> [    0.198639] vgaarb: loaded
> [    0.198639] clocksource: Switched to clocksource tsc-early
> [    0.198639] VFS: Disk quotas dquot_6.6.0
> [    0.198639] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 by=
tes)
> [    0.198639] AppArmor: AppArmor Filesystem Enabled
> [    0.198639] pnp: PnP ACPI init
> [    0.198748] system 00:00: [io  0x0680-0x069f] has been reserved
> [    0.198750] system 00:00: [io  0x164e-0x164f] has been reserved
> [    0.198752] system 00:00: [io  0xfd60-0xfd63] has been reserved
> [    0.198839] system 00:02: [io  0x1854-0x1857] has been reserved
> [    0.199294] pnp 00:04: disabling [mem 0xc0000000-0xcfffffff] because i=
t overlaps 0000:00:02.0 BAR 9 [mem 0x00000000-0xdfffffff 64bit pref]
> [    0.199309] system 00:04: [mem 0xfedc0000-0xfedc7fff] has been reserved
> [    0.199311] system 00:04: [mem 0xfeda0000-0xfeda0fff] has been reserved
> [    0.199312] system 00:04: [mem 0xfeda1000-0xfeda1fff] has been reserved
> [    0.199314] system 00:04: [mem 0xfed20000-0xfed7ffff] could not be res=
erved
> [    0.199315] system 00:04: [mem 0xfed90000-0xfed93fff] could not be res=
erved
> [    0.199317] system 00:04: [mem 0xfed45000-0xfed8ffff] could not be res=
erved
> [    0.199318] system 00:04: [mem 0xfee00000-0xfeefffff] has been reserved
> [    0.199788] system 00:05: [io  0x1800-0x18fe] could not be reserved
> [    0.199790] system 00:05: [mem 0xfe000000-0xfe01ffff] could not be res=
erved
> [    0.199792] system 00:05: [mem 0xfe04c000-0xfe04ffff] has been reserved
> [    0.199793] system 00:05: [mem 0xfe050000-0xfe0affff] has been reserved
> [    0.199795] system 00:05: [mem 0xfe0d0000-0xfe0fffff] has been reserved
> [    0.199797] system 00:05: [mem 0xfe200000-0xfe7fffff] has been reserved
> [    0.199798] system 00:05: [mem 0xff000000-0xffffffff] could not be res=
erved
> [    0.199800] system 00:05: [mem 0xfd000000-0xfd68ffff] has been reserved
> [    0.199801] system 00:05: [mem 0xfd6b0000-0xfd6cffff] has been reserved
> [    0.199803] system 00:05: [mem 0xfd6f0000-0xfdffffff] has been reserved
> [    0.200013] system 00:06: [io  0x2000-0x20fe] has been reserved
> [    0.200300] pnp: PnP ACPI: found 8 devices
> [    0.205366] clocksource: acpi_pm: mask: 0xffffff max_cycles: 0xffffff,=
 max_idle_ns: 2085701024 ns
> [    0.205406] NET: Registered PF_INET protocol family
> [    0.205551] IP idents hash table entries: 262144 (order: 9, 2097152 by=
tes, linear)
> [    0.207407] tcp_listen_portaddr_hash hash table entries: 16384 (order:=
 6, 262144 bytes, linear)
> [    0.207438] Table-perturb hash table entries: 65536 (order: 6, 262144 =
bytes, linear)
> [    0.207578] TCP established hash table entries: 262144 (order: 9, 2097=
152 bytes, linear)
> [    0.207845] TCP bind hash table entries: 65536 (order: 9, 2097152 byte=
s, linear)
> [    0.207996] TCP: Hash tables configured (established 262144 bind 65536)
> [    0.208093] MPTCP token hash table entries: 32768 (order: 7, 786432 by=
tes, linear)
> [    0.208180] UDP hash table entries: 16384 (order: 7, 524288 bytes, lin=
ear)
> [    0.208241] UDP-Lite hash table entries: 16384 (order: 7, 524288 bytes=
, linear)
> [    0.208292] NET: Registered PF_UNIX/PF_LOCAL protocol family
> [    0.208297] NET: Registered PF_XDP protocol family
> [    0.208301] pci 0000:01:00.0: can't claim BAR 6 [mem 0xfff80000-0xffff=
ffff pref]: no compatible bridge window
> [    0.208306] pci_bus 0000:00: max bus depth: 1 pci_try_num: 2
> [    0.208314] pci 0000:00:02.0: BAR 9: assigned [mem 0x4020000000-0x40ff=
ffffff 64bit pref]
> [    0.208318] pci 0000:00:02.0: BAR 7: assigned [mem 0x4010000000-0x4016=
ffffff 64bit]
> [    0.208320] pci 0000:00:15.0: BAR 0: assigned [mem 0x4017000000-0x4017=
000fff 64bit]
> [    0.208380] pci 0000:00:1f.5: BAR 0: assigned [mem 0x50400000-0x50400f=
ff]
> [    0.208392] pci 0000:01:00.0: BAR 6: no space for [mem size 0x00080000=
 pref]
> [    0.208394] pci 0000:01:00.0: BAR 6: failed to assign [mem size 0x0008=
0000 pref]
> [    0.208396] pci 0000:00:1c.0: PCI bridge to [bus 01]
> [    0.208398] pci 0000:00:1c.0:   bridge window [io  0x4000-0x4fff]
> [    0.208403] pci 0000:00:1c.0:   bridge window [mem 0x54000000-0x54ffff=
ff]
> [    0.208406] pci 0000:00:1c.0:   bridge window [mem 0x6000000000-0x6011=
ffffff 64bit pref]
> [    0.208412] pci 0000:00:1d.3: PCI bridge to [bus 02]
> [    0.208414] pci 0000:00:1d.3:   bridge window [io  0x3000-0x3fff]
> [    0.208418] pci 0000:00:1d.3:   bridge window [mem 0x55000000-0x550fff=
ff]
> [    0.208425] pci_bus 0000:00: resource 4 [io  0x0000-0x0cf7 window]
> [    0.208427] pci_bus 0000:00: resource 5 [io  0x0d00-0xffff window]
> [    0.208428] pci_bus 0000:00: resource 6 [mem 0x000a0000-0x000bffff win=
dow]
> [    0.208429] pci_bus 0000:00: resource 7 [mem 0x50400000-0xbfffffff win=
dow]
> [    0.208431] pci_bus 0000:00: resource 8 [mem 0x4000000000-0x7fffffffff=
 window]
> [    0.208432] pci_bus 0000:01: resource 0 [io  0x4000-0x4fff]
> [    0.208433] pci_bus 0000:01: resource 1 [mem 0x54000000-0x54ffffff]
> [    0.208435] pci_bus 0000:01: resource 2 [mem 0x6000000000-0x6011ffffff=
 64bit pref]
> [    0.208436] pci_bus 0000:02: resource 0 [io  0x3000-0x3fff]
> [    0.208438] pci_bus 0000:02: resource 1 [mem 0x55000000-0x550fffff]
> [    0.210579] PCI: CLS 64 bytes, default 64
> [    0.210614] PCI-DMA: Using software bounce buffering for IO (SWIOTLB)
> [    0.210615] software IO TLB: mapped [mem 0x0000000037ebd000-0x00000000=
3bebd000] (64MB)
> [    0.210639] clocksource: tsc: mask: 0xffffffffffffffff max_cycles: 0x2=
cd5a8bb032, max_idle_ns: 440795365915 ns
> [    0.210640] Trying to unpack rootfs image as initramfs...
> [    0.210655] clocksource: Switched to clocksource tsc
> [    0.210910] Initialise system trusted keyrings
> [    0.210918] Key type blacklist registered
> [    0.210946] workingset: timestamp_bits=3D36 max_order=3D23 bucket_orde=
r=3D0
> [    0.211556] zbud: loaded
> [    0.211688] integrity: Platform Keyring initialized
> [    0.211691] integrity: Machine keyring initialized
> [    0.211693] Key type asymmetric registered
> [    0.211694] Asymmetric key parser 'x509' registered
> [    0.275333] Freeing initrd memory: 21012K
> [    0.277980] alg: self-tests for CTR-KDF (hmac(sha256)) passed
> [    0.277999] Block layer SCSI generic (bsg) driver version 0.4 loaded (=
major 248)
> [    0.278016] io scheduler mq-deadline registered
> [    0.280354] pcieport 0000:00:1c.0: PME: Signaling with IRQ 122
> [    0.280452] pcieport 0000:00:1c.0: AER: enabled with IRQ 122
> [    0.280474] pcieport 0000:00:1c.0: DPC: enabled with IRQ 122
> [    0.280475] pcieport 0000:00:1c.0: DPC: error containment capabilities=
: Int Msg #0, RPExt+ PoisonedTLP+ SwTrigger+ RP PIO Log 4, DL_ActiveErr+
> [    0.280658] pcieport 0000:00:1d.3: PME: Signaling with IRQ 123
> [    0.280695] pcieport 0000:00:1d.3: AER: enabled with IRQ 123
> [    0.280716] pcieport 0000:00:1d.3: DPC: enabled with IRQ 123
> [    0.280717] pcieport 0000:00:1d.3: DPC: error containment capabilities=
: Int Msg #0, RPExt+ PoisonedTLP+ SwTrigger+ RP PIO Log 4, DL_ActiveErr+
> [    0.280801] shpchp: Standard Hot Plug PCI Controller Driver version: 0=
=2E4
> [    0.280915] Monitor-Mwait will be used to enter C-1 state
> [    0.280920] Monitor-Mwait will be used to enter C-2 state
> [    0.280924] Monitor-Mwait will be used to enter C-3 state
> [    0.280927] ACPI: \_SB_.PR00: Found 3 idle states
> [    0.282170] thermal LNXTHERM:00: registered as thermal_zone0
> [    0.282172] ACPI: thermal: Thermal Zone [TZ00] (52 C)
> [    0.282275] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
> [    0.282813] hpet_acpi_add: no address or irqs in _CRS
> [    0.282832] Linux agpgart interface v0.103
> [    0.288196] tpm tpm0: tpm_read_log_acpi: Failed to map ACPI memory
> [    0.290122] AMD-Vi: AMD IOMMUv2 functionality not available on this sy=
stem - This is not a bug.
> [    0.290500] i8042: PNP: PS/2 Controller [PNP0303:PS2K] at 0x60,0x64 ir=
q 1
> [    0.290503] i8042: PNP: PS/2 appears to have AUX port disabled, if thi=
s is incorrect please boot with i8042.nopnp
> [    0.291027] serio: i8042 KBD port at 0x60,0x64 irq 1
> [    0.291267] mousedev: PS/2 mouse device common for all mice
> [    0.291282] rtc_cmos 00:01: RTC can wake from S4
> [    0.292258] rtc_cmos 00:01: registered as rtc0
> [    0.292429] rtc_cmos 00:01: setting system clock to 2024-08-15T05:12:1=
9 UTC (1723698739)
> [    0.292457] rtc_cmos 00:01: alarms up to one month, y3k, 242 bytes nvr=
am
> [    0.292833] intel_pstate: Intel P-state driver initializing
> [    0.293541] intel_pstate: HWP enabled
> [    0.293572] ledtrig-cpu: registered to indicate activity on CPUs
> [    0.293688] efifb: probing for efifb
> [    0.293696] efifb: framebuffer at 0x4000000000, using 8128k, total 812=
8k
> [    0.293698] efifb: mode is 1920x1080x32, linelength=3D7680, pages=3D1
> [    0.293699] efifb: scrolling: redraw
> [    0.293700] efifb: Truecolor: size=3D8:8:8:8, shift=3D24:16:8:0
> [    0.293745] Console: switching to colour frame buffer device 240x67
> [    0.295923] fb0: EFI VGA frame buffer device
> [    0.303420] NET: Registered PF_INET6 protocol family
> [    0.306309] Segment Routing with IPv6
> [    0.306320] In-situ OAM (IOAM) with IPv6
> [    0.306339] mip6: Mobile IPv6
> [    0.306346] NET: Registered PF_PACKET protocol family
> [    0.306414] mpls_gso: MPLS GSO support
> [    0.307011] microcode: sig=3D0x806c1, pf=3D0x80, revision=3D0xb6
> [    0.307224] microcode: Microcode Update Driver: v2.2.
> [    0.307490] resctrl: L2 allocation detected
> [    0.307512] IPI shorthand broadcast: enabled
> [    0.307538] sched_clock: Marking stable (300823958, 6658995)->(3289377=
55, -21454802)
> [    0.307748] registered taskstats version 1
> [    0.307760] Loading compiled-in X.509 certificates
> [    0.323153] Loaded X.509 cert 'Build time autogenerated kernel key: be=
7a574a815b1c6988a339a58fc91d6da3ed57d7'
> [    0.323794] zswap: loaded using pool lzo/zbud
> [    0.324172] Key type .fscrypt registered
> [    0.324180] Key type fscrypt-provisioning registered
> [    0.326281] Key type encrypted registered
> [    0.326289] AppArmor: AppArmor sha1 policy hashing enabled
> [    0.326946] ima: Allocated hash algorithm: sha256
> [    0.344420] ima: No architecture policies found
> [    0.344463] evm: Initialising EVM extended attributes:
> [    0.344476] evm: security.selinux
> [    0.344486] evm: security.SMACK64 (disabled)
> [    0.344497] evm: security.SMACK64EXEC (disabled)
> [    0.344509] evm: security.SMACK64TRANSMUTE (disabled)
> [    0.344521] evm: security.SMACK64MMAP (disabled)
> [    0.344533] evm: security.apparmor
> [    0.344542] evm: security.ima
> [    0.344551] evm: security.capability
> [    0.344560] evm: HMAC attrs: 0x1
> [    0.397544] input: AT Translated Set 2 keyboard as /devices/platform/i=
8042/serio0/input/input0
> [    0.410969] clk: Disabling unused clocks
> [    0.413572] Freeing unused decrypted memory: 2036K
> [    0.413925] Freeing unused kernel image (initmem) memory: 2796K
> [    0.413935] Write protecting the kernel read-only data: 26624k
> [    0.414403] Freeing unused kernel image (text/rodata gap) memory: 2040K
> [    0.414641] Freeing unused kernel image (rodata/data gap) memory: 1168K
> [    0.420360] x86/mm: Checked W+X mappings: passed, no W+X pages found.
> [    0.420374] Run /init as init process
> [    0.420381]   with arguments:
> [    0.421083]     /init
> [    0.421788]   with environment:
> [    0.422482]     HOME=3D/
> [    0.423183]     TERM=3Dlinux
> [    0.423865]     BOOT_IMAGE=3D/boot/vmlinuz-6.1.105
> [    0.511877] wmi_bus wmi_bus-PNP0C14:02: [Firmware Info]: B7F3CA0A-ACDC=
-42D2-9217-77C6C628FBD2 has zero instances
> [    0.512867] wmi_bus wmi_bus-PNP0C14:02: WQAE data block query control =
method not found
> [    0.532266] ACPI: bus type drm_connector registered
> [    0.577929] vmd 0000:00:0e.0: PCI host bridge to bus 10000:e0
> [    0.579036] pci_bus 10000:e0: root bus resource [bus e0-ff]
> [    0.580102] pci_bus 10000:e0: root bus resource [mem 0x52000000-0x53ff=
ffff]
> [    0.584381] pci_bus 10000:e0: root bus resource [mem 0x6015102000-0x60=
151fffff 64bit]
> [    0.585561] pci 10000:e0:06.0: [8086:9a09] type 01 class 0x060400
> [    0.586963] ACPI: bus type USB registered
> [    0.587058] pci 10000:e0:06.0: PME# supported from D0 D3hot D3cold
> [    0.587941] usbcore: registered new interface driver usbfs
> [    0.589076] pci 10000:e0:06.0: PTM enabled (root), 4ns granularity
> [    0.589975] usbcore: registered new interface driver hub
> [    0.592119] pci 10000:e0:17.0: [8086:a0d3] type 00 class 0x010601
> [    0.592540] usbcore: registered new device driver usb
> [    0.593274] pci 10000:e0:17.0: reg 0x10: [mem 0x00000000-0x00001fff]
> [    0.595410] pci 10000:e0:17.0: reg 0x14: [mem 0x00000000-0x000000ff]
> [    0.596550] pci 10000:e0:17.0: reg 0x18: [io  0x0000-0x0007]
> [    0.597682] pci 10000:e0:17.0: reg 0x1c: [io  0x0000-0x0003]
> [    0.598745] pci 10000:e0:17.0: reg 0x20: [io  0x0000-0x001f]
> [    0.599996] pci 10000:e0:17.0: reg 0x24: [mem 0x52000000-0x520007ff]
> [    0.601022] pci 10000:e0:17.0: PME# supported from D3hot
> [    0.605946] pci 10000:e0:1d.0: [8086:a0b0] type 01 class 0x060400
> [    0.607357] xhci_hcd 0000:00:14.0: xHCI Host Controller
> [    0.607632] pci 10000:e0:1d.0: PME# supported from D0 D3hot D3cold
> [    0.608301] xhci_hcd 0000:00:14.0: new USB bus registered, assigned bu=
s number 1
> [    0.610147] pci 10000:e0:1d.0: PTM enabled (root), 4ns granularity
> [    0.611490] xhci_hcd 0000:00:14.0: hcc params 0x20007fc1 hci version 0=
x120 quirks 0x0000000200009810
> [    0.612802] xhci_hcd 0000:00:14.0: xHCI Host Controller
> [    0.612931] pci 10000:e0:06.0: Primary bus is hard wired to 0
> [    0.614063] xhci_hcd 0000:00:14.0: new USB bus registered, assigned bu=
s number 2
> [    0.615957] pci 10000:e1:00.0: [1e95:1007] type 00 class 0x010802
> [    0.616432] xhci_hcd 0000:00:14.0: Host supports USB 3.1 Enhanced Supe=
rSpeed
> [    0.617132] pci 10000:e1:00.0: reg 0x10: [mem 0x52100000-0x52103fff 64=
bit]
> [    0.618146] usb usb1: New USB device found, idVendor=3D1d6b, idProduct=
=3D0002, bcdDevice=3D 6.01
> [    0.620203] usb usb1: New USB device strings: Mfr=3D3, Product=3D2, Se=
rialNumber=3D1
> [    0.621243] usb usb1: Product: xHCI Host Controller
> [    0.622379] usb usb1: Manufacturer: Linux 6.1.105 xhci-hcd
> [    0.623451] usb usb1: SerialNumber: 0000:00:14.0
> [    0.626897] hub 1-0:1.0: USB hub found
> [    0.627634] pci 10000:e0:06.0: PCI bridge to [bus e1]
> [    0.628118] hub 1-0:1.0: 12 ports detected
> [    0.628898] pci 10000:e0:06.0:   bridge window [io  0x0000-0x0fff]
> [    0.630900] pci 10000:e0:06.0:   bridge window [mem 0x52100000-0x521ff=
fff]
> [    0.632070] pci 10000:e0:1d.0: Primary bus is hard wired to 0
> [    0.632630] usb usb2: New USB device found, idVendor=3D1d6b, idProduct=
=3D0003, bcdDevice=3D 6.01
> [    0.633997] pci 10000:e2:00.0: [15b7:5003] type 00 class 0x010802
> [    0.634044] usb usb2: New USB device strings: Mfr=3D3, Product=3D2, Se=
rialNumber=3D1
> [    0.635142] pci 10000:e2:00.0: reg 0x10: [mem 0x52200000-0x52203fff 64=
bit]
> [    0.636067] usb usb2: Product: xHCI Host Controller
> [    0.637908] pci 10000:e0:1d.0: PCI bridge to [bus e2]
> [    0.638078] usb usb2: Manufacturer: Linux 6.1.105 xhci-hcd
> [    0.639224] pci 10000:e0:1d.0:   bridge window [io  0x0000-0x0fff]
> [    0.640173] usb usb2: SerialNumber: 0000:00:14.0
> [    0.641154] pci 10000:e0:1d.0:   bridge window [mem 0x52200000-0x522ff=
fff]
> [    0.643202] pci 10000:e0:06.0: Primary bus is hard wired to 0
> [    0.643218] hub 2-0:1.0: USB hub found
> [    0.644208] pci 10000:e0:1d.0: Primary bus is hard wired to 0
> [    0.646148] hub 2-0:1.0: 4 ports detected
> [    0.751557] i915 0000:00:02.0: [drm:i915_driver_probe [i915]] WOPCM: 2=
048K
> [    0.752806] i915 0000:00:02.0: [drm:intel_uc_init_early [i915]] enable=
_guc=3D0 (guc:no submission:no huc:no slpc:no)
> [    0.754137] i915 0000:00:02.0: [drm:intel_pch_type [i915]] Found Tiger=
 Lake LP PCH
> [    0.755485] i915 0000:00:02.0: [drm:intel_power_domains_init [i915]] A=
llowed DC state mask 4000000a
> [    0.756673] i915 0000:00:02.0: [drm:intel_gt_probe_all [i915]] Setting=
 up Primary GT
> [    0.757877] i915 0000:00:02.0: [drm:intel_uncore_init_mmio [i915]] unc=
laimed mmio detected on uncore init, clearing
> [    0.758834] i915 0000:00:02.0: [drm:intel_device_info_runtime_init [i9=
15]] rawclk rate: 19200 kHz
> [    0.759918] i915 0000:00:02.0: [drm:intel_engines_init_mmio [i915]] vd=
box enable: 0005, instances: 0005
> [    0.760787] i915 0000:00:02.0: [drm:intel_engines_init_mmio [i915]] ve=
box enable: 0001, instances: 0001
> [    0.761838] i915 0000:00:02.0: [drm:i915_ggtt_probe_hw [i915]] GGTT si=
ze =3D 4096M
> [    0.762882] i915 0000:00:02.0: [drm:i915_ggtt_probe_hw [i915]] GMADR s=
ize =3D 256M
> [    0.763966] i915 0000:00:02.0: [drm:i915_ggtt_probe_hw [i915]] DSM siz=
e =3D 60M
> [    0.765084] Console: switching to colour dummy device 80x25
> [    0.765113] i915 0000:00:02.0: vgaarb: deactivate vga console
> [    0.765167] i915 0000:00:02.0: [drm] Using Transparent Hugepages
> [    0.765172] i915 0000:00:02.0: [drm:i915_gem_init_stolen [i915]] GEN6_=
STOLEN_RESERVED =3D 0x00000000502000c7
> [    0.765268] i915 0000:00:02.0: [drm:i915_gem_init_stolen [i915]] Memor=
y reserved for graphics device: 61440K, usable: 59392K
> [    0.765379] i915 0000:00:02.0: [drm:intel_opregion_setup [i915]] graph=
ic opregion physical addr: 0x45abe018
> [    0.765456] i915 0000:00:02.0: [drm:intel_opregion_setup [i915]] ACPI =
OpRegion version 2.1.0
> [    0.765517] i915 0000:00:02.0: [drm:intel_opregion_setup [i915]] Publi=
c ACPI methods supported
> [    0.765577] i915 0000:00:02.0: [drm:intel_opregion_setup [i915]] SWSCI=
 Mailbox #2 present for opregion v2.x
> [    0.765632] i915 0000:00:02.0: [drm:intel_opregion_setup [i915]] SWSCI=
 supported
> [    0.766299] i915 0000:00:02.0: [drm:intel_opregion_setup [i915]] SWSCI=
 GBDA callbacks 00000cb3, SBCB callbacks 00300583
> [    0.766378] i915 0000:00:02.0: [drm:intel_opregion_setup [i915]] ASLE =
supported
> [    0.766437] i915 0000:00:02.0: [drm:intel_opregion_setup [i915]] ASLE =
extension supported
> [    0.766498] i915 0000:00:02.0: [drm:intel_opregion_setup [i915]] Found=
 valid VBT in ACPI OpRegion (RVDA)
> [    0.766555] i915 0000:00:02.0: [drm:intel_dram_detect [i915]] DRAM cha=
nnels: 2
> [    0.766607] i915 0000:00:02.0: [drm:i915_driver_probe [i915]] Watermar=
k level 0 adjustment needed: no
> [    0.766745] i915 0000:00:02.0: [drm:icl_get_qgv_points.constprop.0 [i9=
15]] QGV 0: DCLK=3D2668 tRP=3D19 tRDPRE=3D10 tRAS=3D43 tRCD=3D19 tRC=3D62
> [    0.766821] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW0=
 / QGV 0: num_planes=3D0 deratedbw=3D11821
> [    0.766881] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW1=
 / QGV 0: num_planes=3D2 deratedbw=3D14636
> [    0.766935] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW2=
 / QGV 0: num_planes=3D0 deratedbw=3D16614
> [    0.766987] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW3=
 / QGV 0: num_planes=3D0 deratedbw=3D17818
> [    0.767037] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW4=
 / QGV 0: num_planes=3D0 deratedbw=3D18487
> [    0.767085] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW5=
 / QGV 0: num_planes=3D0 deratedbw=3D18842
> [    0.767203] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Set defaul=
t to SSC at 120000 kHz
> [    0.767275] i915 0000:00:02.0: [drm:intel_bios_init [i915]] VBT signat=
ure "$VBT TIGERLAKE      ", BDB version 237
> [    0.767336] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found BDB =
block 1 (size 5, min size 7)
> [    0.767394] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found BDB =
block 2 (size 356, min size 5)
> [    0.767451] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found BDB =
block 9 (size 100, min size 100)
> [    0.767506] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found BDB =
block 12 (size 19, min size 19)
> [    0.767560] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found BDB =
block 27 (size 780, min size 812)
> [    0.767613] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found BDB =
block 40 (size 30, min size 34)
> [    0.767666] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Generating=
 LFP data table pointers
> [    0.767719] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found BDB =
block 41 (size 148, min size 148)
> [    0.767772] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found BDB =
block 42 (size 1364, min size 1366)
> [    0.767823] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found BDB =
block 43 (size 273, min size 305)
> [    0.767874] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found BDB =
block 44 (size 58, min size 78)
> [    0.767925] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found BDB =
block 52 (size 822, min size 822)
> [    0.767974] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found BDB =
block 56 (size 210, min size 210)
> [    0.768027] i915 0000:00:02.0: [drm:intel_bios_init [i915]] BDB_GENERA=
L_FEATURES int_tv_support 0 int_crt_support 0 lvds_use_ssc 0 lvds_ssc_freq =
120000 display_clock_mode 0 fdi_rx_polarity_inverted 0
> [    0.768084] i915 0000:00:02.0: [drm:intel_bios_init [i915]] crt_ddc_bu=
s_pin: 2
> [    0.768137] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found VBT =
child device with type 0x1806
> [    0.768188] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found VBT =
child device with type 0x60d6
> [    0.768236] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found VBT =
child device with type 0x60d2
> [    0.768283] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found VBT =
child device with type 0x68c6
> [    0.768329] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Found VBT =
child device with type 0x68c6
> [    0.768376] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Skipping S=
DVO device mapping
> [    0.768422] i915 0000:00:02.0: [drm:intel_bios_init [i915]] More than =
one child device for port B in VBT, using the first.
> [    0.768470] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port A VBT=
 info: CRT:0 DVI:0 HDMI:0 DP:1 eDP:1 DSI:0 LSPCON:0 USB-Type-C:0 TBT:0 DSC:0
> [    0.768525] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port A VBT=
 HDMI level shift: 0
> [    0.768577] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port B VBT=
 info: CRT:0 DVI:1 HDMI:1 DP:1 eDP:0 DSI:0 LSPCON:0 USB-Type-C:0 TBT:0 DSC:0
> [    0.768627] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port B VBT=
 HDMI level shift: 0
> [    0.768674] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port D VBT=
 info: CRT:0 DVI:0 HDMI:0 DP:1 eDP:0 DSI:0 LSPCON:0 USB-Type-C:1 TBT:1 DSC:0
> [    0.768721] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port D VBT=
 HDMI level shift: 0
> [    0.768767] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port E VBT=
 info: CRT:0 DVI:0 HDMI:0 DP:1 eDP:0 DSI:0 LSPCON:0 USB-Type-C:1 TBT:0 DSC:0
> [    0.768822] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port E VBT=
 HDMI level shift: 0
> [    0.768875] i915 0000:00:02.0: [drm:gen9_set_dc_state.part.0 [i915]] S=
etting DC state from 00 to 00
> [    0.768959] i915 0000:00:02.0: [drm:check_phy_reg [i915]] Combo PHY A =
reg 001628a0 state mismatch: current 300335dc mask e0000000 expected a00000=
00
> [    0.769020] i915 0000:00:02.0: [drm:icl_verify_procmon_ref_values [i91=
5]] Combo PHY A Voltage/Process Info : 0.85V dot0 (low-voltage)
> [    0.769114] i915 0000:00:02.0: [drm:check_phy_reg [i915]] Combo PHY B =
reg 0006c8a0 state mismatch: current 3003501c mask e0000000 expected a00000=
00
> [    0.769172] i915 0000:00:02.0: [drm:icl_verify_procmon_ref_values [i91=
5]] Combo PHY B Voltage/Process Info : 0.85V dot0 (low-voltage)
> [    0.769255] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling PW_1
> [    0.769316] i915 0000:00:02.0: [drm:intel_cdclk_init_hw [i915]] Curren=
t CDCLK 652800 kHz, VCO 1305600 kHz, ref 38400 kHz, bypass 19200 kHz, volta=
ge level 3
> [    0.769372] i915 0000:00:02.0: [drm:gen9_dbuf_slices_update [i915]] Up=
dating dbuf slices to 0x3
> [    0.769454] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling always-on
> [    0.769510] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling DC_off
> [    0.769565] i915 0000:00:02.0: [drm:gen9_set_dc_state.part.0 [i915]] S=
etting DC state from 00 to 00
> [    0.769630] i915 0000:00:02.0: [drm:icl_verify_procmon_ref_values [i91=
5]] Combo PHY A Voltage/Process Info : 0.85V dot0 (low-voltage)
> [    0.769695] i915 0000:00:02.0: [drm:icl_combo_phys_init [i915]] Combo =
PHY A already enabled, won't reprogram it.
> [    0.769759] i915 0000:00:02.0: [drm:icl_verify_procmon_ref_values [i91=
5]] Combo PHY B Voltage/Process Info : 0.85V dot0 (low-voltage)
> [    0.769822] i915 0000:00:02.0: [drm:icl_combo_phys_init [i915]] Combo =
PHY B already enabled, won't reprogram it.
> [    0.769873] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling PW_2
> [    0.769930] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling PW_3
> [    0.769988] i915 0000:00:02.0: vgaarb: changed VGA decodes: olddecodes=
=3Dio+mem,decodes=3Dio+mem:owns=3Dio+mem
> [    0.769991] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling PW_4
> [    0.770048] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling PW_5
> [    0.770119] i915 0000:00:02.0: [drm:intel_power_well_sync_hw [i915]] T=
C cold unblock succeeded
> [    0.770175] i915 0000:00:02.0: [drm:intel_dmc_ucode_init [i915]] Loadi=
ng i915/tgl_dmc_ver2_12.bin
> [    0.770830] i915 0000:00:02.0: [drm:intel_fbc_init [i915]] Sanitized e=
nable_fbc value: 1
> [    0.771046] i915 0000:00:02.0: [drm:skl_wm_init [i915]] SAGV supported=
: no, original SAGV block time: 11 us
> [    0.771122] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen=
9 Plane WM0 latency 3 (3.0 usec)
> [    0.771180] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen=
9 Plane WM1 latency 54 (54.0 usec)
> [    0.771232] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen=
9 Plane WM2 latency 54 (54.0 usec)
> [    0.771282] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen=
9 Plane WM3 latency 54 (54.0 usec)
> [    0.771331] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen=
9 Plane WM4 latency 54 (54.0 usec)
> [    0.771392] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen=
9 Plane WM5 latency 73 (73.0 usec)
> [    0.771438] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen=
9 Plane WM6 latency 110 (110.0 usec)
> [    0.771464] i915 0000:00:02.0: [drm] Finished loading DMC firmware i91=
5/tgl_dmc_ver2_12.bin (v2.12)
> [    0.771484] i915 0000:00:02.0: [drm:intel_print_wm_latency [i915]] Gen=
9 Plane WM7 latency 115 (115.0 usec)
> [    0.771661] i915 0000:00:02.0: [drm:intel_modeset_init_nogem [i915]] 4=
 display pipes available.
> [    0.771887] i915 0000:00:02.0: [drm:intel_cdclk_dump_config [i915]] Cu=
rrent CDCLK 652800 kHz, VCO 1305600 kHz, ref 38400 kHz, bypass 19200 kHz, v=
oltage level 3
> [    0.771955] i915 0000:00:02.0: [drm:intel_update_max_cdclk [i915]] Max=
 CD clock rate: 652800 kHz
> [    0.772015] i915 0000:00:02.0: [drm:intel_modeset_init_nogem [i915]] M=
ax dotclock rate: 1305600 kHz
> [    0.772076] i915 0000:00:02.0: [drm:intel_bios_port_aux_ch [i915]] usi=
ng AUX A for port A (VBT)
> [    0.772134] i915 0000:00:02.0: [drm:intel_dp_init_connector [i915]] Ad=
ding eDP connector on [ENCODER:307:DDI A/PHY A]
> [    0.772537] i915 0000:00:02.0: [drm:intel_opregion_get_panel_type [i91=
5]] Ignoring OpRegion panel type (0)
> [    0.772601] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] Pane=
l type (VBT): 2
> [    0.772664] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] Sele=
cted panel type (VBT): 2
> [    0.772722] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] DRRS=
 supported mode is seamless
> [    0.772779] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] Foun=
d panel mode in BIOS VBT legacy lfp table: "1024x768": 60 65000 1024 1048 1=
184 1344 768 771 777 806 0x8 0xa
> [    0.772836] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] VBT =
initial LVDS value 300
> [    0.772888] i915 0000:00:02.0: [drm:dump_pnp_id [i915]] Panel PNPID mf=
g: MS_ (0x7f36), prod: 3, serial: 3, week: 0, year: 2002
> [    0.772941] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] Pane=
l name: LFP_PanelName
> [    0.772991] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] Seam=
less DRRS min refresh rate: 0 Hz
> [    0.773041] i915 0000:00:02.0: [drm:intel_bios_init_panel [i915]] VBT =
backlight PWM modulation frequency 200 Hz, active high, min brightness 0, l=
evel 255, controller 0
> [    0.773120] i915 0000:00:02.0: [drm:pps_init_delays [i915]] bios t1_t3=
 1 t8 1 t9 1 t10 500 t11_t12 6000
> [    0.773182] i915 0000:00:02.0: [drm:pps_init_delays [i915]] vbt t1_t3 =
2000 t8 10 t9 2000 t10 500 t11_t12 6000
> [    0.773240] i915 0000:00:02.0: [drm:pps_init_delays [i915]] spec t1_t3=
 2100 t8 500 t9 500 t10 5000 t11_t12 6100
> [    0.773292] i915 0000:00:02.0: [drm:pps_init_delays [i915]] panel powe=
r up delay 200, power down delay 50, power cycle delay 600
> [    0.773342] i915 0000:00:02.0: [drm:pps_init_delays [i915]] backlight =
on delay 1, off delay 200
> [    0.773446] i915 0000:00:02.0: [drm:pps_init_registers [i915]] panel p=
ower sequencer register settings: PP_ON 0x7d00001, PP_OFF 0x1f40001, PP_DIV=
 0x60
> [    0.773508] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling AUX_A
> [    0.773588] i915 0000:00:02.0: [drm:intel_pps_vdd_on_unlocked [i915]] =
Turning [ENCODER:307:DDI A/PHY A] VDD on
> [    0.773692] i915 0000:00:02.0: [drm:intel_pps_vdd_on_unlocked [i915]] =
PP_STATUS: 0x80000008 PP_CONTROL: 0x0000006f
> [    0.774182] i915 0000:00:02.0: [drm:drm_dp_read_dpcd_caps [drm_display=
_helper]] AUX A/DDI A/PHY A: DPCD: 11 0a 82 41 00 00 01 c0 02 00 00 00 0f 0=
b 00
> [    0.774585] i915 0000:00:02.0: [drm:drm_dp_read_desc [drm_display_help=
er]] AUX A/DDI A/PHY A: DP sink: OUI 00-1c-f8 dev-ID  HW-rev 0.0 SW-rev 1.1=
6 quirks 0x0000
> [    0.774914] i915 0000:00:02.0: [drm:intel_dp_init_connector [i915]] eD=
P DPCD: 01 fb fd
> [    0.779075] [drm:update_display_info [drm]] Supported Monitor Refresh =
rate range is 48 Hz - 60 Hz
> [    0.779107] [drm:update_display_info [drm]] Supported Monitor Refresh =
rate range is 48 Hz - 60 Hz
> [    0.779126] [drm:_drm_edid_connector_update [drm]] ELD monitor=20
> [    0.779145] [drm:_drm_edid_connector_update [drm]] ELD size 20, SAD co=
unt 0
> [    0.779171] [drm:update_display_info [drm]] Supported Monitor Refresh =
rate range is 48 Hz - 60 Hz
> [    0.779190] i915 0000:00:02.0: [drm:intel_panel_add_edid_fixed_modes [=
i915]] [CONNECTOR:308:eDP-1] using preferred EDID fixed mode: "1920x1080": =
60 166010 1920 2028 2076 2120 1080 1090 1100 1304 0x48 0xa
> [    0.779266] i915 0000:00:02.0: [drm:intel_dp_wait_source_oui [i915]] P=
erforming OUI wait
> [    0.779660] i915 0000:00:02.0: [drm:intel_panel_init [i915]] [CONNECTO=
R:308:eDP-1] DRRS type: none
> [    0.779751] i915 0000:00:02.0: [drm:intel_backlight_setup [i915]] Conn=
ector eDP-1 backlight initialized, enabled, brightness 96000/96000
> [    0.779815] i915 0000:00:02.0: [drm:pps_init_delays [i915]] bios t1_t3=
 1 t8 1 t9 1 t10 500 t11_t12 6000
> [    0.779874] i915 0000:00:02.0: [drm:pps_init_delays [i915]] vbt t1_t3 =
2000 t8 10 t9 2000 t10 500 t11_t12 6000
> [    0.779929] i915 0000:00:02.0: [drm:pps_init_delays [i915]] spec t1_t3=
 2100 t8 500 t9 500 t10 5000 t11_t12 6100
> [    0.779982] i915 0000:00:02.0: [drm:pps_init_delays [i915]] panel powe=
r up delay 200, power down delay 50, power cycle delay 600
> [    0.780033] i915 0000:00:02.0: [drm:pps_init_delays [i915]] backlight =
on delay 1, off delay 200
> [    0.780138] i915 0000:00:02.0: [drm:pps_init_registers [i915]] panel p=
ower sequencer register settings: PP_ON 0x7d00001, PP_OFF 0x1f40001, PP_DIV=
 0x60
> [    0.780214] i915 0000:00:02.0: [drm:intel_bios_port_aux_ch [i915]] usi=
ng AUX B for port B (VBT)
> [    0.780282] i915 0000:00:02.0: [drm:intel_dp_init_connector [i915]] Ad=
ding DP connector on [ENCODER:316:DDI B/PHY B]
> [    0.780357] i915 0000:00:02.0: [drm:intel_hdmi_init_connector [i915]] =
Adding HDMI connector on [ENCODER:316:DDI B/PHY B]
> [    0.780420] i915 0000:00:02.0: [drm:intel_hdmi_init_connector [i915]] =
Using DDC pin 0x2 for port B (VBT)
> [    0.780484] i915 0000:00:02.0: [drm:intel_bios_port_aux_ch [i915]] usi=
ng AUX D for port D (VBT)
> [    0.780549] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling TC_cold_off
> [    0.780621] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] TC=
 cold block succeeded
> [    0.780682] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling TC_cold_off
> [    0.780752] i915 0000:00:02.0: [drm:__intel_display_power_put_domain [=
i915]] TC cold unblock succeeded
> [    0.780810] ------------[ cut here ]------------
> [    0.780811] i915 0000:00:02.0: drm_WARN_ON(val =3D=3D 0xffffffff)
> [    0.780821] WARNING: CPU: 1 PID: 238 at drivers/gpu/drm/i915/display/i=
ntel_tc.c:963 intel_tc_port_init+0x257/0x270 [i915]
> [    0.780887] Modules linked in: evdev crct10dif_pclmul crct10dif_common=
 serio_raw crc32c_intel xhci_pci xhci_hcd i915(+) usbcore vmd(+) usb_common=
 i2c_algo_bit drm_buddy drm_display_helper drm_kms_helper cec rc_core ttm v=
ideo drm wmi fan
> [    0.780898] CPU: 1 PID: 238 Comm: (udev-worker) Not tainted 6.1.105 #1
> [    0.780901] Hardware name: LENOVO 82MG/LNVNB161216, BIOS H4CN35WW(V2.0=
4) 04/12/2024
> [    0.780903] RIP: 0010:intel_tc_port_init+0x257/0x270 [i915]
> [    0.780963] Code: 4c 8b 67 50 4d 85 e4 75 03 4c 8b 27 e8 f2 9f 9c f5 4=
8 c7 c1 90 86 7e c0 4c 89 e2 48 c7 c7 e6 49 80 c0 48 89 c6 e8 f9 4c 38 f5 <=
0f> 0b e9 5c ff ff ff e8 ad 6e d1 f5 66 2e 0f 1f 84 00 00 00 00 00
> [    0.780966] RSP: 0018:ffffb39380e03830 EFLAGS: 00010286
> [    0.780968] RAX: 0000000000000000 RBX: ffff9c9690a66000 RCX: c0000000f=
ffdffff
> [    0.780969] RDX: 0000000000000000 RSI: 00000000fffdffff RDI: 000000000=
0000001
> [    0.780970] RBP: 0000000000000000 R08: 0000000000000000 R09: ffffb3938=
0e036a8
> [    0.780972] R10: 0000000000000003 R11: ffff9c9c2f7fffe8 R12: ffff9c968=
1a0d570
> [    0.780973] R13: ffff9c9690a66f50 R14: 00000000ffffffff R15: 00000000f=
fffffff
> [    0.780974] FS:  00007fb018c0a8c0(0000) GS:ffff9c9c16840000(0000) knlG=
S:0000000000000000
> [    0.780976] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [    0.780977] CR2: 000055568347222c CR3: 000000010851e006 CR4: 000000000=
0770ee0
> [    0.780979] PKRU: 55555554
> [    0.780980] Call Trace:
> [    0.780982]  <TASK>
> [    0.780984]  ? __warn+0x7d/0xc0
> [    0.780988]  ? intel_tc_port_init+0x257/0x270 [i915]
> [    0.781043]  ? report_bug+0xe2/0x150
> [    0.781046]  ? handle_bug+0x41/0x70
> [    0.781049]  ? exc_invalid_op+0x13/0x60
> [    0.781051]  ? asm_exc_invalid_op+0x16/0x20
> [    0.781053]  ? intel_tc_port_init+0x257/0x270 [i915]
> [    0.781106]  intel_ddi_init+0x73b/0xcf0 [i915]
> [    0.781164]  intel_modeset_init_nogem+0x829/0x1150 [i915]
> [    0.781226]  ? fwtable_read32+0x96/0x220 [i915]
> [    0.781279]  i915_driver_probe+0x5c5/0xe20 [i915]
> [    0.781330]  local_pci_probe+0x3e/0x80
> [    0.781332]  pci_device_probe+0xc3/0x240
> [    0.781334]  really_probe+0xdb/0x380
> [    0.781338]  ? pm_runtime_barrier+0x50/0x90
> [    0.781341]  __driver_probe_device+0x78/0x120
> [    0.781343]  driver_probe_device+0x1f/0x90
> [    0.781345]  __driver_attach+0xce/0x1c0
> [    0.781348]  ? __device_attach_driver+0x110/0x110
> [    0.781350]  bus_for_each_dev+0x84/0xd0
> [    0.781353]  bus_add_driver+0x1ae/0x200
> [    0.781355]  driver_register+0x89/0xe0
> [    0.781358]  i915_init+0x1f/0x7f [i915]
> [    0.781412]  ? 0xffffffffc08f9000
> [    0.781414]  do_one_initcall+0x56/0x220
> [    0.781417]  do_init_module+0x4a/0x1f0
> [    0.781421]  __do_sys_finit_module+0xac/0x120
> [    0.781424]  do_syscall_64+0x55/0xb0
> [    0.781426]  ? vma_set_page_prot+0x5e/0xc0
> [    0.781428]  ? mmap_region+0x548/0x7e0
> [    0.781431]  ? vm_mmap_pgoff+0x103/0x180
> [    0.781434]  ? ksys_mmap_pgoff+0xe8/0x1f0
> [    0.781435]  ? syscall_exit_to_user_mode+0x1e/0x40
> [    0.781437]  ? exit_to_user_mode_prepare+0x40/0x1e0
> [    0.781439]  ? syscall_exit_to_user_mode+0x1e/0x40
> [    0.781441]  ? clear_bhb_loop+0x15/0x70
> [    0.781443]  ? clear_bhb_loop+0x15/0x70
> [    0.781445]  ? clear_bhb_loop+0x15/0x70
> [    0.781447]  ? clear_bhb_loop+0x15/0x70
> [    0.781448]  ? clear_bhb_loop+0x15/0x70
> [    0.781450]  entry_SYSCALL_64_after_hwframe+0x6e/0xd8
> [    0.781452] RIP: 0033:0x7fb019318719
> [    0.781454] Code: 08 89 e8 5b 5d c3 66 2e 0f 1f 84 00 00 00 00 00 90 4=
8 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <=
48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d b7 06 0d 00 f7 d8 64 89 01 48
> [    0.781457] RSP: 002b:00007ffd0ce2a028 EFLAGS: 00000246 ORIG_RAX: 0000=
000000000139
> [    0.781459] RAX: ffffffffffffffda RBX: 0000555683457fa0 RCX: 00007fb01=
9318719
> [    0.781460] RDX: 0000000000000000 RSI: 00007fb0194abefd RDI: 000000000=
0000012
> [    0.781461] RBP: 00007fb0194abefd R08: 0000000000000000 R09: 000000000=
000000a
> [    0.781462] R10: 0000000000000012 R11: 0000000000000246 R12: 000000000=
0020000
> [    0.781464] R13: 0000000000000000 R14: 0000555683431fe0 R15: 000000000=
000000a
> [    0.781466]  </TASK>
> [    0.781466] ---[ end trace 0000000000000000 ]---
> [    0.781468] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling TC_cold_off
> [    0.781542] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] TC=
 cold block succeeded
> [    0.781603] i915 0000:00:02.0: [drm:icl_tc_port_live_status_mask [i915=
]] Port D/TC#1: PHY in TCCOLD, nothing connected
> [    0.781664] i915 0000:00:02.0: [drm:tc_phy_is_owned [i915]] Port D/TC#=
1: PHY in TCCOLD, assume not owned
> [    0.781722] i915 0000:00:02.0: [drm:icl_tc_port_live_status_mask [i915=
]] Port D/TC#1: PHY in TCCOLD, nothing connected
> [    0.781774] i915 0000:00:02.0: [drm:intel_tc_port_init_mode [i915]] Po=
rt D/TC#1: init mode (tbt-alt)
> [    0.781827] i915 0000:00:02.0: [drm:intel_dp_init_connector [i915]] Ad=
ding DP connector on [ENCODER:334:DDI TC1/PHY TC1]
> [    0.781892] i915 0000:00:02.0: [drm:intel_bios_port_aux_ch [i915]] usi=
ng AUX E for port E (VBT)
> [    0.781959] ------------[ cut here ]------------
> [    0.781959] i915 0000:00:02.0: drm_WARN_ON(val =3D=3D 0xffffffff)
> [    0.781964] WARNING: CPU: 1 PID: 238 at drivers/gpu/drm/i915/display/i=
ntel_tc.c:963 intel_tc_port_init+0x257/0x270 [i915]
> [    0.782024] Modules linked in: evdev crct10dif_pclmul crct10dif_common=
 serio_raw crc32c_intel xhci_pci xhci_hcd i915(+) usbcore vmd(+) usb_common=
 i2c_algo_bit drm_buddy drm_display_helper drm_kms_helper cec rc_core ttm v=
ideo drm wmi fan
> [    0.782033] CPU: 1 PID: 238 Comm: (udev-worker) Tainted: G        W   =
       6.1.105 #1
> [    0.782035] Hardware name: LENOVO 82MG/LNVNB161216, BIOS H4CN35WW(V2.0=
4) 04/12/2024
> [    0.782036] RIP: 0010:intel_tc_port_init+0x257/0x270 [i915]
> [    0.782089] Code: 4c 8b 67 50 4d 85 e4 75 03 4c 8b 27 e8 f2 9f 9c f5 4=
8 c7 c1 90 86 7e c0 4c 89 e2 48 c7 c7 e6 49 80 c0 48 89 c6 e8 f9 4c 38 f5 <=
0f> 0b e9 5c ff ff ff e8 ad 6e d1 f5 66 2e 0f 1f 84 00 00 00 00 00
> [    0.782091] RSP: 0018:ffffb39380e03830 EFLAGS: 00010286
> [    0.782093] RAX: 0000000000000000 RBX: ffff9c9690a62000 RCX: c0000000f=
ffdffff
> [    0.782094] RDX: 0000000000000000 RSI: 00000000fffdffff RDI: 000000000=
0000001
> [    0.782095] RBP: 0000000000000001 R08: 0000000000000000 R09: ffffb3938=
0e036a8
> [    0.782096] R10: 0000000000000003 R11: ffff9c9c2f7fffe8 R12: ffff9c968=
1a0d570
> [    0.782098] R13: ffff9c9690a62f50 R14: 00000000ffffffff R15: 00000000f=
fffffff
> [    0.782099] FS:  00007fb018c0a8c0(0000) GS:ffff9c9c16840000(0000) knlG=
S:0000000000000000
> [    0.782101] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [    0.782102] CR2: 000055568347222c CR3: 000000010851e006 CR4: 000000000=
0770ee0
> [    0.782103] PKRU: 55555554
> [    0.782104] Call Trace:
> [    0.782105]  <TASK>
> [    0.782106]  ? __warn+0x7d/0xc0
> [    0.782107]  ? intel_tc_port_init+0x257/0x270 [i915]
> [    0.782158]  ? report_bug+0xe2/0x150
> [    0.782160]  ? handle_bug+0x41/0x70
> [    0.782161]  ? exc_invalid_op+0x13/0x60
> [    0.782163]  ? asm_exc_invalid_op+0x16/0x20
> [    0.782165]  ? intel_tc_port_init+0x257/0x270 [i915]
> [    0.782212]  intel_ddi_init+0x73b/0xcf0 [i915]
> [    0.782266]  intel_modeset_init_nogem+0x836/0x1150 [i915]
> [    0.782328]  ? fwtable_read32+0x96/0x220 [i915]
> [    0.782381]  i915_driver_probe+0x5c5/0xe20 [i915]
> [    0.782429]  local_pci_probe+0x3e/0x80
> [    0.782430]  pci_device_probe+0xc3/0x240
> [    0.782432]  really_probe+0xdb/0x380
> [    0.782434]  ? pm_runtime_barrier+0x50/0x90
> [    0.782436]  __driver_probe_device+0x78/0x120
> [    0.782439]  driver_probe_device+0x1f/0x90
> [    0.782441]  __driver_attach+0xce/0x1c0
> [    0.782443]  ? __device_attach_driver+0x110/0x110
> [    0.782446]  bus_for_each_dev+0x84/0xd0
> [    0.782448]  bus_add_driver+0x1ae/0x200
> [    0.782450]  driver_register+0x89/0xe0
> [    0.782452]  i915_init+0x1f/0x7f [i915]
> [    0.782504]  ? 0xffffffffc08f9000
> [    0.782505]  do_one_initcall+0x56/0x220
> [    0.782508]  do_init_module+0x4a/0x1f0
> [    0.782510]  __do_sys_finit_module+0xac/0x120
> [    0.782513]  do_syscall_64+0x55/0xb0
> [    0.782514]  ? vma_set_page_prot+0x5e/0xc0
> [    0.782516]  ? mmap_region+0x548/0x7e0
> [    0.782518]  ? vm_mmap_pgoff+0x103/0x180
> [    0.782521]  ? ksys_mmap_pgoff+0xe8/0x1f0
> [    0.782522]  ? syscall_exit_to_user_mode+0x1e/0x40
> [    0.782524]  ? exit_to_user_mode_prepare+0x40/0x1e0
> [    0.782526]  ? syscall_exit_to_user_mode+0x1e/0x40
> [    0.782528]  ? clear_bhb_loop+0x15/0x70
> [    0.782530]  ? clear_bhb_loop+0x15/0x70
> [    0.782532]  ? clear_bhb_loop+0x15/0x70
> [    0.782533]  ? clear_bhb_loop+0x15/0x70
> [    0.782535]  ? clear_bhb_loop+0x15/0x70
> [    0.782536]  entry_SYSCALL_64_after_hwframe+0x6e/0xd8
> [    0.782538] RIP: 0033:0x7fb019318719
> [    0.782539] Code: 08 89 e8 5b 5d c3 66 2e 0f 1f 84 00 00 00 00 00 90 4=
8 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <=
48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d b7 06 0d 00 f7 d8 64 89 01 48
> [    0.782542] RSP: 002b:00007ffd0ce2a028 EFLAGS: 00000246 ORIG_RAX: 0000=
000000000139
> [    0.782544] RAX: ffffffffffffffda RBX: 0000555683457fa0 RCX: 00007fb01=
9318719
> [    0.782545] RDX: 0000000000000000 RSI: 00007fb0194abefd RDI: 000000000=
0000012
> [    0.782546] RBP: 00007fb0194abefd R08: 0000000000000000 R09: 000000000=
000000a
> [    0.782547] R10: 0000000000000012 R11: 0000000000000246 R12: 000000000=
0020000
> [    0.782549] R13: 0000000000000000 R14: 0000555683431fe0 R15: 000000000=
000000a
> [    0.782550]  </TASK>
> [    0.782551] ---[ end trace 0000000000000000 ]---
> [    0.782553] i915 0000:00:02.0: [drm:icl_tc_port_live_status_mask [i915=
]] Port E/TC#2: PHY in TCCOLD, nothing connected
> [    0.782615] i915 0000:00:02.0: [drm:tc_phy_is_owned [i915]] Port E/TC#=
2: PHY in TCCOLD, assume not owned
> [    0.782753] i915 0000:00:02.0: [drm:icl_tc_port_live_status_mask [i915=
]] Port E/TC#2: PHY in TCCOLD, nothing connected
> [    0.782826] i915 0000:00:02.0: [drm:intel_tc_port_init_mode [i915]] Po=
rt E/TC#2: init mode (tbt-alt)
> [    0.782886] i915 0000:00:02.0: [drm:intel_dp_init_connector [i915]] Ad=
ding DP connector on [ENCODER:343:DDI TC2/PHY TC2]
> [    0.782946] i915 0000:00:02.0: [drm:intel_modeset_init_nogem [i915]] V=
BT says port F is not present
> [    0.783004] i915 0000:00:02.0: [drm:intel_modeset_init_nogem [i915]] V=
BT says port G is not present
> [    0.783057] i915 0000:00:02.0: [drm:intel_modeset_init_nogem [i915]] V=
BT says port H is not present
> [    0.783109] i915 0000:00:02.0: [drm:intel_modeset_init_nogem [i915]] V=
BT says port I is not present
> [    0.783181] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [CRTC:98:pipe A] hw state readout: enabled
> [    0.783242] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [CRTC:167:pipe B] hw state readout: disabled
> [    0.783296] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [CRTC:236:pipe C] hw state readout: disabled
> [    0.783350] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [CRTC:305:pipe D] hw state readout: disabled
> [    0.783397] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:31:plane 1A] hw state readout: enabled, pipe A
> [    0.783445] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:40:plane 2A] hw state readout: disabled, pipe A
> [    0.783491] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:49:plane 3A] hw state readout: disabled, pipe A
> [    0.783536] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:58:plane 4A] hw state readout: disabled, pipe A
> [    0.783582] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:67:plane 5A] hw state readout: disabled, pipe A
> [    0.783629] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:76:plane 6A] hw state readout: disabled, pipe A
> [    0.783674] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:85:plane 7A] hw state readout: disabled, pipe A
> [    0.783716] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:94:cursor A] hw state readout: disabled, pipe A
> [    0.783756] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:100:plane 1B] hw state readout: disabled, pipe B
> [    0.783800] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:109:plane 2B] hw state readout: disabled, pipe B
> [    0.783846] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:118:plane 3B] hw state readout: disabled, pipe B
> [    0.783889] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:127:plane 4B] hw state readout: disabled, pipe B
> [    0.783929] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:136:plane 5B] hw state readout: disabled, pipe B
> [    0.783968] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:145:plane 6B] hw state readout: disabled, pipe B
> [    0.784014] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:154:plane 7B] hw state readout: disabled, pipe B
> [    0.784059] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:163:cursor B] hw state readout: disabled, pipe B
> [    0.784100] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:169:plane 1C] hw state readout: disabled, pipe C
> [    0.784139] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:178:plane 2C] hw state readout: disabled, pipe C
> [    0.784178] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:187:plane 3C] hw state readout: disabled, pipe C
> [    0.784217] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:196:plane 4C] hw state readout: disabled, pipe C
> [    0.784254] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:205:plane 5C] hw state readout: disabled, pipe C
> [    0.784299] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:214:plane 6C] hw state readout: disabled, pipe C
> [    0.784342] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:223:plane 7C] hw state readout: disabled, pipe C
> [    0.784383] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:232:cursor C] hw state readout: disabled, pipe C
> [    0.784422] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:238:plane 1D] hw state readout: disabled, pipe D
> [    0.784461] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:247:plane 2D] hw state readout: disabled, pipe D
> [    0.784497] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:256:plane 3D] hw state readout: disabled, pipe D
> [    0.784534] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:265:plane 4D] hw state readout: disabled, pipe D
> [    0.784570] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:274:plane 5D] hw state readout: disabled, pipe D
> [    0.784609] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:283:plane 6D] hw state readout: disabled, pipe D
> [    0.784654] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:292:plane 7D] hw state readout: disabled, pipe D
> [    0.784697] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:301:cursor D] hw state readout: disabled, pipe D
> [    0.784746] i915 0000:00:02.0: [drm:intel_ddi_get_config [i915]] [ENCO=
DER:307:DDI A/PHY A] Fec status: 0
> [    0.784799] i915 0000:00:02.0: [drm:intel_edp_fixup_vbt_bpp [i915]] pi=
pe has 24 bpp for eDP panel, overriding BIOS-provided max 18 bpp
> [    0.784853] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:307:DDI A/PHY A] hw state readout: enabled, pipe A
> [    0.784901] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:316:DDI B/PHY B] hw state readout: disabled, pipe A
> [    0.784947] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:318:DP-MST A] hw state readout: disabled, pipe A
> [    0.784990] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:319:DP-MST B] hw state readout: disabled, pipe B
> [    0.785030] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:320:DP-MST C] hw state readout: disabled, pipe C
> [    0.785069] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:321:DP-MST D] hw state readout: disabled, pipe D
> [    0.785107] i915 0000:00:02.0: [drm:intel_tc_port_sanitize_mode [i915]=
] Port D/TC#1: sanitize mode (disconnected)
> [    0.785152] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:334:DDI TC1/PHY TC1] hw state readout: disabled, pipe A
> [    0.785192] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:336:DP-MST A] hw state readout: disabled, pipe A
> [    0.785232] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:337:DP-MST B] hw state readout: disabled, pipe B
> [    0.785276] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:338:DP-MST C] hw state readout: disabled, pipe C
> [    0.785319] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:339:DP-MST D] hw state readout: disabled, pipe D
> [    0.785360] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling TC_cold_off
> [    0.785424] i915 0000:00:02.0: [drm:__intel_display_power_put_domain [=
i915]] TC cold unblock succeeded
> [    0.785476] i915 0000:00:02.0: [drm:intel_tc_port_sanitize_mode [i915]=
] Port E/TC#2: sanitize mode (disconnected)
> [    0.785523] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:343:DDI TC2/PHY TC2] hw state readout: disabled, pipe A
> [    0.785566] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:345:DP-MST A] hw state readout: disabled, pipe A
> [    0.785606] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:346:DP-MST B] hw state readout: disabled, pipe B
> [    0.785646] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:347:DP-MST C] hw state readout: disabled, pipe C
> [    0.785685] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [ENCODER:348:DP-MST D] hw state readout: disabled, pipe D
> [    0.785725] i915 0000:00:02.0: [drm:intel_dpll_readout_hw_state [i915]=
] DPLL 0 hw state readout: pipe_mask 0x1, on 1
> [    0.785780] i915 0000:00:02.0: [drm:intel_dpll_readout_hw_state [i915]=
] DPLL 1 hw state readout: pipe_mask 0x0, on 0
> [    0.785831] i915 0000:00:02.0: [drm:intel_dpll_readout_hw_state [i915]=
] TBT PLL hw state readout: pipe_mask 0x0, on 0
> [    0.785879] i915 0000:00:02.0: [drm:intel_dpll_readout_hw_state [i915]=
] TC PLL 1 hw state readout: pipe_mask 0x0, on 0
> [    0.785924] i915 0000:00:02.0: [drm:intel_dpll_readout_hw_state [i915]=
] TC PLL 2 hw state readout: pipe_mask 0x0, on 0
> [    0.785967] i915 0000:00:02.0: [drm:intel_dpll_readout_hw_state [i915]=
] TC PLL 3 hw state readout: pipe_mask 0x0, on 0
> [    0.786010] i915 0000:00:02.0: [drm:intel_dpll_readout_hw_state [i915]=
] TC PLL 4 hw state readout: pipe_mask 0x0, on 0
> [    0.786052] i915 0000:00:02.0: [drm:intel_dpll_readout_hw_state [i915]=
] TC PLL 5 hw state readout: pipe_mask 0x0, on 0
> [    0.786093] i915 0000:00:02.0: [drm:intel_dpll_readout_hw_state [i915]=
] TC PLL 6 hw state readout: pipe_mask 0x0, on 0
> [    0.786145] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [CONNECTOR:308:eDP-1] hw state readout: enabled
> [    0.786198] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [CONNECTOR:317:DP-1] hw state readout: disabled
> [    0.786248] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [CONNECTOR:329:HDMI-A-1] hw state readout: disabled
> [    0.786294] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [CONNECTOR:335:DP-2] hw state readout: disabled
> [    0.786338] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [CONNECTOR:344:DP-3] hw state readout: disabled
> [    0.786382] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:31:plane 1A] min_cdclk 83005 kHz
> [    0.786424] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:40:plane 2A] min_cdclk 0 kHz
> [    0.786468] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:49:plane 3A] min_cdclk 0 kHz
> [    0.786513] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:58:plane 4A] min_cdclk 0 kHz
> [    0.786556] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:67:plane 5A] min_cdclk 0 kHz
> [    0.786597] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:76:plane 6A] min_cdclk 0 kHz
> [    0.786637] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:85:plane 7A] min_cdclk 0 kHz
> [    0.786680] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:94:cursor A] min_cdclk 0 kHz
> [    0.786723] i915 0000:00:02.0: [drm:intel_bw_crtc_update [i915]] pipe =
A data rate 664040 num active planes 1
> [    0.786799] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:100:plane 1B] min_cdclk 0 kHz
> [    0.786860] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:109:plane 2B] min_cdclk 0 kHz
> [    0.786915] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:118:plane 3B] min_cdclk 0 kHz
> [    0.786964] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:127:plane 4B] min_cdclk 0 kHz
> [    0.787012] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:136:plane 5B] min_cdclk 0 kHz
> [    0.787057] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:145:plane 6B] min_cdclk 0 kHz
> [    0.787101] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:154:plane 7B] min_cdclk 0 kHz
> [    0.787150] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:163:cursor B] min_cdclk 0 kHz
> [    0.787197] i915 0000:00:02.0: [drm:intel_bw_crtc_update [i915]] pipe =
B data rate 0 num active planes 0
> [    0.787254] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:169:plane 1C] min_cdclk 0 kHz
> [    0.787301] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:178:plane 2C] min_cdclk 0 kHz
> [    0.787343] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:187:plane 3C] min_cdclk 0 kHz
> [    0.787384] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:196:plane 4C] min_cdclk 0 kHz
> [    0.787425] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:205:plane 5C] min_cdclk 0 kHz
> [    0.787464] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:214:plane 6C] min_cdclk 0 kHz
> [    0.787509] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:223:plane 7C] min_cdclk 0 kHz
> [    0.787557] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:232:cursor C] min_cdclk 0 kHz
> [    0.787601] i915 0000:00:02.0: [drm:intel_bw_crtc_update [i915]] pipe =
C data rate 0 num active planes 0
> [    0.787658] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:238:plane 1D] min_cdclk 0 kHz
> [    0.787704] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:247:plane 2D] min_cdclk 0 kHz
> [    0.787747] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:256:plane 3D] min_cdclk 0 kHz
> [    0.787788] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:265:plane 4D] min_cdclk 0 kHz
> [    0.787828] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:274:plane 5D] min_cdclk 0 kHz
> [    0.787869] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:283:plane 6D] min_cdclk 0 kHz
> [    0.787909] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:292:plane 7D] min_cdclk 0 kHz
> [    0.787950] i915 0000:00:02.0: [drm:intel_modeset_setup_hw_state [i915=
]] [PLANE:301:cursor D] min_cdclk 0 kHz
> [    0.787997] i915 0000:00:02.0: [drm:intel_bw_crtc_update [i915]] pipe =
D data rate 0 num active planes 0
> [    0.788054] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling DDI_IO_A
> [    0.791006] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] [CRT=
C:98:pipe A] enable: yes [setup_hw_state]
> [    0.791065] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] acti=
ve: yes, output_types: EDP (0x100), output format: RGB
> [    0.791118] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] cpu_=
transcoder: A, pipe bpp: 24, dithering: 0
> [    0.791168] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] MST =
master transcoder: <invalid>
> [    0.791216] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] port=
 sync: master transcoder: <invalid>, slave transcoder bitmask =3D 0x0
> [    0.791265] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] bigj=
oiner: no, pipes: 0x0
> [    0.791312] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] spli=
tter: disabled, link count 0, overlap 0
> [    0.791360] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] dp m=
_n: lanes: 2; data_m: 7736626, data_n: 8388608, link_m: 322359, link_n: 524=
288, tu: 64
> [    0.791407] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] dp m=
2_n2: lanes: 2; data_m: 0, data_n: 0, link_m: 0, link_n: 0, tu: 0
> [    0.791453] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] fram=
estart delay: 1, MSA timing delay: 0
> [    0.791499] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] audi=
o: 0, infoframes: 0, infoframes enabled: 0x0
> [    0.791545] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] vrr:=
 no, vmin: 0, vmax: 0, pipeline full: 0, guardband: 0 flipline: 0, vmin vbl=
ank: -1, vmax vblank: -2
> [    0.791591] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] requ=
ested mode: "1920x1080": 60 166010 1920 2028 2076 2120 1080 1090 1100 1304 =
0x40 0xa
> [    0.791638] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] adju=
sted mode: "1920x1080": 60 166010 1920 2028 2076 2120 1080 1090 1100 1304 0=
x40 0xa
> [    0.791686] i915 0000:00:02.0: [drm:intel_dump_crtc_timings [i915]] cr=
tc timings: 166010 1920 2028 2076 2120 1080 1090 1100 1304, type: 0x40 flag=
s: 0xa
> [    0.791738] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] pipe=
 mode: "1920x1080": 60 166010 1920 2028 2076 2120 1080 1090 1100 1304 0x40 =
0xa
> [    0.791786] i915 0000:00:02.0: [drm:intel_dump_crtc_timings [i915]] cr=
tc timings: 166010 1920 2028 2076 2120 1080 1090 1100 1304, type: 0x40 flag=
s: 0xa
> [    0.791832] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] port=
 clock: 270000, pipe src: 1920x1080+0+0, pixel rate 166010
> [    0.791876] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] line=
time: 103, ips linetime: 0
> [    0.791918] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] num_=
scalers: 2, scaler_users: 0x0, scaler_id: -1, scaling_filter: 0
> [    0.791959] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] pch =
pfit: 0x0+0+0, disabled, force thru: no
> [    0.792007] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] ips:=
 0, double wide: 0, drrs: 0
> [    0.792055] i915 0000:00:02.0: [drm:icl_dump_hw_state [i915]] dpll_hw_=
state: cfgcr0: 0xe001a5, cfgcr1: 0x88, div0: 0x0, mg_refclkin_ctl: 0x0, hg_=
clktop2_coreclkctl1: 0x0, mg_clktop2_hsclkctl: 0x0, mg_pll_div0: 0x0, mg_pl=
l_div2: 0x0, mg_pll_lf: 0x0, mg_pll_frac_lock: 0x0, mg_pll_ssc: 0x0, mg_pll=
_bias: 0x0, mg_pll_tdc_coldst_bias: 0x0
> [    0.792113] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] csc_=
mode: 0x20000000 gamma_mode: 0x20000000 gamma_enable: 0 csc_enable: 0
> [    0.792161] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] dega=
mma lut: 0 entries, gamma lut: 0 entries
> [    0.792206] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] [CRT=
C:167:pipe B] enable: no [setup_hw_state]
> [    0.792250] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] [CRT=
C:236:pipe C] enable: no [setup_hw_state]
> [    0.792300] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] [CRT=
C:305:pipe D] enable: no [setup_hw_state]
> [    0.792368] i915 0000:00:02.0: [drm:skl_wm_get_hw_state [i915]] [CRTC:=
98:pipe A] dbuf slices 0x1, ddb (0 - 682), active pipes 0x1, mbus joined: no
> [    0.792426] i915 0000:00:02.0: [drm:skl_wm_get_hw_state [i915]] [CRTC:=
167:pipe B] dbuf slices 0x0, ddb (0 - 0), active pipes 0x1, mbus joined: no
> [    0.792480] i915 0000:00:02.0: [drm:skl_wm_get_hw_state [i915]] [CRTC:=
236:pipe C] dbuf slices 0x0, ddb (0 - 0), active pipes 0x1, mbus joined: no
> [    0.792530] i915 0000:00:02.0: [drm:skl_wm_get_hw_state [i915]] [CRTC:=
305:pipe D] dbuf slices 0x0, ddb (0 - 0), active pipes 0x1, mbus joined: no
> [    0.792596] i915 0000:00:02.0: [drm:skl_get_initial_plane_config [i915=
]] pipe A/plane 1A with fb: size=3D1920x1080@32, offset=3D0, pitch 7680, si=
ze 0x7e9000
> [    0.792650] i915 0000:00:02.0: [drm:_i915_gem_object_stolen_init [i915=
]] creating preallocated stolen object: stolen_offset=3D0x0000000000000000,=
 size=3D0x00000000007e9000
> [    0.792928] i915 0000:00:02.0: [drm:i915_init_ggtt [i915]] Reserved GG=
TT:[7e9000, 7ea000] for use by error capture
> [    0.792981] i915 0000:00:02.0: [drm:i915_init_ggtt [i915]] clearing un=
used GTT space: [7ea000, 100000000]
> [    0.793026] MCR Steering: Default steering: group=3D0x0, instance=3D0x0
> [    0.793028] [drm:intel_gt_init [i915]] Initialized 4 GT workarounds on=
 global
> [    0.793247] [drm:intel_engines_init [i915]] Initialized 9 engine worka=
rounds on rcs'0
> [    0.793292] [drm:intel_engines_init [i915]] Initialized 3 whitelist wo=
rkarounds on rcs'0
> [    0.793332] [drm:intel_engines_init [i915]] Initialized 4 context work=
arounds on rcs'0
> [    0.793403] [drm:intel_engines_init [i915]] Initialized 1 engine worka=
rounds on bcs'0
> [    0.793442] [drm:intel_engines_init [i915]] Initialized 1 whitelist wo=
rkarounds on bcs'0
> [    0.793478] [drm:intel_engines_init [i915]] Initialized 1 context work=
arounds on bcs'0
> [    0.793522] [drm:intel_engines_init [i915]] Initialized 1 engine worka=
rounds on vcs'0
> [    0.793558] [drm:intel_engines_init [i915]] Initialized 1 whitelist wo=
rkarounds on vcs'0
> [    0.793601] [drm:intel_engines_init [i915]] Initialized 1 engine worka=
rounds on vcs'2
> [    0.793637] [drm:intel_engines_init [i915]] Initialized 1 whitelist wo=
rkarounds on vcs'2
> [    0.793678] [drm:intel_engines_init [i915]] Initialized 1 engine worka=
rounds on vecs'0
> [    0.793714] [drm:intel_engines_init [i915]] Initialized 1 whitelist wo=
rkarounds on vecs'0
> [    0.795336] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [CRTC:98:pi=
pe A] dbuf slices 0x1 -> 0x3, ddb (0 - 682) -> (0 - 2048), active pipes 0x1=
 -> 0x1
> [    0.795418] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:31:p=
lane 1A] ddb (   0 -  682) -> (   0 - 2012), size  682 -> 2012
> [    0.795470] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A] ddb (   0 -    0) -> (2012 - 2048), size    0 ->   36
> [    0.795518] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:31:p=
lane 1A]   level *wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm,*swm, stwm ->=
 *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7, twm, swm, stwm
> [    0.795563] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:31:p=
lane 1A]   lines    2,   2,   1,   1,   1,   1,   1,   1,   1,   2,    1 ->=
    1,   5,   5,   5,   5,   6,   9,  10,   0,   0,    0
> [    0.795606] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:31:p=
lane 1A]  blocks   33,  33,   7,   7,   7,   7,   7,   7,   7,  33,    7 ->=
   16,  81,  81,  81,  81,  97, 145, 161,   0,   0,    0
> [    0.795648] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:31:p=
lane 1A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
   19,  91,  91,  91,  91, 108, 161, 179,   0,   0,    0
> [    0.795690] i915 0000:00:02.0: [drm:intel_bw_atomic_check [i915]] QGV =
point 0: max bw 14636 required 665
> [    0.795747] i915 0000:00:02.0: [drm:intel_bw_atomic_check [i915]] No S=
AGV, using single QGV point 0
> [    0.795801] i915 0000:00:02.0: [drm:intel_bw_calc_min_cdclk [i915]] ne=
w bandwidth min cdclk (12970 kHz) > old min cdclk (0 kHz)
> [    0.795852] i915 0000:00:02.0: [drm:intel_modeset_calc_cdclk [i915]] M=
odeset required for cdclk change
> [    0.795899] i915 0000:00:02.0: [drm:intel_modeset_calc_cdclk [i915]] N=
ew cdclk calculated to be logical 172800 kHz, actual 172800 kHz
> [    0.795944] i915 0000:00:02.0: [drm:intel_modeset_calc_cdclk [i915]] N=
ew voltage level calculated to be logical 0, actual 0
> [    0.795990] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] [CRT=
C:98:pipe A] enable: yes [modeset]
> [    0.796038] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] acti=
ve: yes, output_types: EDP (0x100), output format: RGB
> [    0.796085] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] cpu_=
transcoder: A, pipe bpp: 24, dithering: 0
> [    0.796133] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] MST =
master transcoder: <invalid>
> [    0.796179] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] port=
 sync: master transcoder: <invalid>, slave transcoder bitmask =3D 0x0
> [    0.796228] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] bigj=
oiner: no, pipes: 0x0
> [    0.796278] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] spli=
tter: disabled, link count 0, overlap 0
> [    0.796325] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] dp m=
_n: lanes: 2; data_m: 7736626, data_n: 8388608, link_m: 322359, link_n: 524=
288, tu: 64
> [    0.796371] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] dp m=
2_n2: lanes: 2; data_m: 0, data_n: 0, link_m: 0, link_n: 0, tu: 0
> [    0.796416] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] fram=
estart delay: 1, MSA timing delay: 0
> [    0.796459] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] audi=
o: 0, infoframes: 0, infoframes enabled: 0x0
> [    0.796502] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] vrr:=
 no, vmin: 0, vmax: 0, pipeline full: 0, guardband: 0 flipline: 0, vmin vbl=
ank: -1, vmax vblank: -2
> [    0.796546] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] requ=
ested mode: "1920x1080": 60 166010 1920 2028 2076 2120 1080 1090 1100 1304 =
0x40 0xa
> [    0.796598] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] adju=
sted mode: "1920x1080": 60 166010 1920 2028 2076 2120 1080 1090 1100 1304 0=
x40 0xa
> [    0.796647] i915 0000:00:02.0: [drm:intel_dump_crtc_timings [i915]] cr=
tc timings: 166010 1920 2028 2076 2120 1080 1090 1100 1304, type: 0x40 flag=
s: 0xa
> [    0.796694] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] pipe=
 mode: "1920x1080": 60 166010 1920 2028 2076 2120 1080 1090 1100 1304 0x40 =
0xa
> [    0.796739] i915 0000:00:02.0: [drm:intel_dump_crtc_timings [i915]] cr=
tc timings: 166010 1920 2028 2076 2120 1080 1090 1100 1304, type: 0x40 flag=
s: 0xa
> [    0.796783] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] port=
 clock: 270000, pipe src: 1920x1080+0+0, pixel rate 166010
> [    0.796826] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] line=
time: 103, ips linetime: 0
> [    0.796875] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] num_=
scalers: 2, scaler_users: 0x0, scaler_id: -1, scaling_filter: 0
> [    0.796921] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] pch =
pfit: 0x0+0+0, disabled, force thru: no
> [    0.796965] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] ips:=
 0, double wide: 0, drrs: 0
> [    0.797007] i915 0000:00:02.0: [drm:icl_dump_hw_state [i915]] dpll_hw_=
state: cfgcr0: 0xe001a5, cfgcr1: 0x88, div0: 0x0, mg_refclkin_ctl: 0x0, hg_=
clktop2_coreclkctl1: 0x0, mg_clktop2_hsclkctl: 0x0, mg_pll_div0: 0x0, mg_pl=
l_div2: 0x0, mg_pll_lf: 0x0, mg_pll_frac_lock: 0x0, mg_pll_ssc: 0x0, mg_pll=
_bias: 0x0, mg_pll_tdc_coldst_bias: 0x0
> [    0.797064] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] csc_=
mode: 0x0 gamma_mode: 0x0 gamma_enable: 0 csc_enable: 0
> [    0.797117] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] dega=
mma lut: 0 entries, gamma lut: 0 entries
> [    0.797168] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] [PLA=
NE:31:plane 1A] fb: [FB:353] 1920x1080 format =3D XR24 little-endian (0x343=
25258) modifier =3D 0x0, visible: yes
> [    0.797216] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] 	rot=
ation: 0x1, scaler: -1, scaling_filter: 0
> [    0.797261] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] 	src=
: 1920.000000x1080.000000+0.000000+0.000000 dst: 1920x1080+0+0
> [    0.797306] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] [PLA=
NE:94:cursor A] fb: [NOFB], visible: no
> [    0.797537] i915 0000:00:02.0: [drm:intel_edp_backlight_off [i915]]=20
> [    0.830911] pci 10000:e0:06.0: BAR 14: assigned [mem 0x52000000-0x520f=
ffff]
> [    0.830929] pci 10000:e0:1d.0: BAR 14: assigned [mem 0x52100000-0x521f=
ffff]
> [    0.830935] pci 10000:e0:17.0: BAR 0: assigned [mem 0x52200000-0x52201=
fff]
> [    0.830946] pci 10000:e0:06.0: BAR 13: no space for [io  size 0x1000]
> [    0.830951] pci 10000:e0:06.0: BAR 13: failed to assign [io  size 0x10=
00]
> [    0.830956] pci 10000:e0:1d.0: BAR 13: no space for [io  size 0x1000]
> [    0.830960] pci 10000:e0:1d.0: BAR 13: failed to assign [io  size 0x10=
00]
> [    0.830965] pci 10000:e0:17.0: BAR 5: assigned [mem 0x52202000-0x52202=
7ff]
> [    0.830975] pci 10000:e0:17.0: BAR 1: assigned [mem 0x52202800-0x52202=
8ff]
> [    0.830983] pci 10000:e0:17.0: BAR 4: no space for [io  size 0x0020]
> [    0.830988] pci 10000:e0:17.0: BAR 4: failed to assign [io  size 0x002=
0]
> [    0.830992] pci 10000:e0:17.0: BAR 2: no space for [io  size 0x0008]
> [    0.830996] pci 10000:e0:17.0: BAR 2: failed to assign [io  size 0x000=
8]
> [    0.831000] pci 10000:e0:17.0: BAR 3: no space for [io  size 0x0004]
> [    0.831004] pci 10000:e0:17.0: BAR 3: failed to assign [io  size 0x000=
4]
> [    0.831012] pci 10000:e1:00.0: BAR 0: assigned [mem 0x52000000-0x52003=
fff 64bit]
> [    0.831026] pci 10000:e0:06.0: PCI bridge to [bus e1]
> [    0.831033] pci 10000:e0:06.0:   bridge window [mem 0x52000000-0x520ff=
fff]
> [    0.831044] pci 10000:e2:00.0: BAR 0: assigned [mem 0x52100000-0x52103=
fff 64bit]
> [    0.831066] pci 10000:e0:1d.0: PCI bridge to [bus e2]
> [    0.831074] pci 10000:e0:1d.0:   bridge window [mem 0x52100000-0x521ff=
fff]
> [    0.831127] pcieport 10000:e0:06.0: can't derive routing for PCI INT D
> [    0.831132] pcieport 10000:e0:06.0: PCI INT D: no GSI
> [    0.831253] pcieport 10000:e0:06.0: PME: Signaling with IRQ 145
> [    0.831728] pcieport 10000:e0:06.0: AER: enabled with IRQ 145
> [    0.832194] pcieport 10000:e0:06.0: DPC: enabled with IRQ 145
> [    0.832206] pcieport 10000:e0:06.0: DPC: error containment capabilitie=
s: Int Msg #0, RPExt+ PoisonedTLP+ SwTrigger+ RP PIO Log 4, DL_ActiveErr+
> [    0.832373] pcieport 10000:e0:1d.0: can't derive routing for PCI INT A
> [    0.832379] pcieport 10000:e0:1d.0: PCI INT A: no GSI
> [    0.832492] pcieport 10000:e0:1d.0: PME: Signaling with IRQ 146
> [    0.832847] pcieport 10000:e0:1d.0: AER: enabled with IRQ 146
> [    0.833054] pcieport 10000:e0:1d.0: DPC: enabled with IRQ 146
> [    0.833061] pcieport 10000:e0:1d.0: DPC: error containment capabilitie=
s: Int Msg #0, RPExt+ PoisonedTLP+ SwTrigger+ RP PIO Log 4, DL_ActiveErr+
> [    0.833211] vmd 0000:00:0e.0: Bound to PCI domain 10000
> [    0.879682] nvme nvme0: pci function 10000:e1:00.0
> [    0.879724] pcieport 10000:e0:06.0: can't derive routing for PCI INT A
> [    0.879740] nvme 10000:e1:00.0: PCI INT A: not connected
> [    0.879809] nvme nvme1: pci function 10000:e2:00.0
> [    0.879848] pcieport 10000:e0:1d.0: can't derive routing for PCI INT A
> [    0.879862] nvme 10000:e2:00.0: PCI INT A: no GSI
> [    0.888984] nvme nvme1: 8/0/0 default/read/poll queues
> [    0.892288]  nvme1n1: p1 p2 p3 p4
> [    0.894700] usb 1-1: new full-speed USB device number 2 using xhci_hcd
> [    0.894732] nvme nvme0: allocated 64 MiB host memory buffer.
> [    0.907703] nvme nvme0: 8/0/0 default/read/poll queues
> [    0.923506]  nvme0n1: p1
> [    1.002839] i915 0000:00:02.0: [drm:intel_backlight_set_pwm_level [i91=
5]] set backlight PWM =3D 0
> [    1.003245] i915 0000:00:02.0: [drm:intel_disable_transcoder [i915]] d=
isabling pipe A
> [    1.016448] i915 0000:00:02.0: [drm:intel_pps_off_unlocked [i915]] Tur=
n [ENCODER:307:DDI A/PHY A] panel power off
> [    1.016708] i915 0000:00:02.0: [drm:intel_pps_off_unlocked [i915]] Wai=
t for panel power off time
> [    1.016934] i915 0000:00:02.0: [drm:wait_panel_status [i915]] mask b00=
00000 value 00000000 status a0000002 control 00000060
> [    1.059041] usb 1-1: New USB device found, idVendor=3D08f2, idProduct=
=3D6811, bcdDevice=3D20.23
> [    1.059057] usb 1-1: New USB device strings: Mfr=3D1, Product=3D2, Ser=
ialNumber=3D3
> [    1.059062] usb 1-1: Product: T505 Graphic Tablet
> [    1.059066] usb 1-1: Manufacturer: SZ PING-IT INC.=20
> [    1.059070] usb 1-1: SerialNumber: Internal CDROM!
> [    1.069450] i915 0000:00:02.0: [drm:intel_pps_off_unlocked [i915]] Wai=
t complete
> [    1.069678] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling DDI_IO_A
> [    1.069910] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling AUX_A
> [    1.070127] i915 0000:00:02.0: [drm:intel_disable_shared_dpll [i915]] =
disable DPLL 0 (active 0x1, on? 1) for [CRTC:98:pipe A]
> [    1.070320] i915 0000:00:02.0: [drm:intel_disable_shared_dpll [i915]] =
disabling DPLL 0
> [    1.070502] i915 0000:00:02.0: [drm:intel_set_cdclk [i915]] Changing C=
DCLK to 172800 kHz, VCO 345600 kHz, ref 38400 kHz, bypass 19200 kHz, voltag=
e level 0
> [    1.070762] i915 0000:00:02.0: [drm:intel_modeset_verify_disabled [i91=
5]] [ENCODER:307:DDI A/PHY A]
> [    1.070946] i915 0000:00:02.0: [drm:intel_modeset_verify_disabled [i91=
5]] [ENCODER:316:DDI B/PHY B]
> [    1.071118] i915 0000:00:02.0: [drm:intel_modeset_verify_disabled [i91=
5]] [ENCODER:318:DP-MST A]
> [    1.071284] i915 0000:00:02.0: [drm:intel_modeset_verify_disabled [i91=
5]] [ENCODER:319:DP-MST B]
> [    1.071446] i915 0000:00:02.0: [drm:intel_modeset_verify_disabled [i91=
5]] [ENCODER:320:DP-MST C]
> [    1.071606] i915 0000:00:02.0: [drm:intel_modeset_verify_disabled [i91=
5]] [ENCODER:321:DP-MST D]
> [    1.071762] i915 0000:00:02.0: [drm:intel_modeset_verify_disabled [i91=
5]] [ENCODER:334:DDI TC1/PHY TC1]
> [    1.071917] i915 0000:00:02.0: [drm:intel_modeset_verify_disabled [i91=
5]] [ENCODER:336:DP-MST A]
> [    1.072083] i915 0000:00:02.0: [drm:intel_modeset_verify_disabled [i91=
5]] [ENCODER:337:DP-MST B]
> [    1.072253] i915 0000:00:02.0: [drm:intel_modeset_verify_disabled [i91=
5]] [ENCODER:338:DP-MST C]
> [    1.072406] i915 0000:00:02.0: [drm:intel_modeset_verify_disabled [i91=
5]] [ENCODER:339:DP-MST D]
> [    1.072550] i915 0000:00:02.0: [drm:intel_modeset_verify_disabled [i91=
5]] [ENCODER:343:DDI TC2/PHY TC2]
> [    1.072686] i915 0000:00:02.0: [drm:intel_modeset_verify_disabled [i91=
5]] [ENCODER:345:DP-MST A]
> [    1.072819] i915 0000:00:02.0: [drm:intel_modeset_verify_disabled [i91=
5]] [ENCODER:346:DP-MST B]
> [    1.072957] i915 0000:00:02.0: [drm:intel_modeset_verify_disabled [i91=
5]] [ENCODER:347:DP-MST C]
> [    1.073116] i915 0000:00:02.0: [drm:intel_modeset_verify_disabled [i91=
5]] [ENCODER:348:DP-MST D]
> [    1.073265] i915 0000:00:02.0: [drm:verify_single_dpll_state [i915]] D=
PLL 0
> [    1.073445] i915 0000:00:02.0: [drm:verify_single_dpll_state [i915]] D=
PLL 1
> [    1.073610] i915 0000:00:02.0: [drm:verify_single_dpll_state [i915]] T=
BT PLL
> [    1.073769] i915 0000:00:02.0: [drm:verify_single_dpll_state [i915]] T=
C PLL 1
> [    1.073932] i915 0000:00:02.0: [drm:verify_single_dpll_state [i915]] T=
C PLL 2
> [    1.074096] i915 0000:00:02.0: [drm:verify_single_dpll_state [i915]] T=
C PLL 3
> [    1.074268] i915 0000:00:02.0: [drm:verify_single_dpll_state [i915]] T=
C PLL 4
> [    1.074437] i915 0000:00:02.0: [drm:verify_single_dpll_state [i915]] T=
C PLL 5
> [    1.074589] i915 0000:00:02.0: [drm:verify_single_dpll_state [i915]] T=
C PLL 6
> [    1.074758] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling AUX_A
> [    1.074941] i915 0000:00:02.0: [drm:intel_enable_shared_dpll [i915]] e=
nable DPLL 0 (active 0x1, on? 0) for [CRTC:98:pipe A]
> [    1.075123] i915 0000:00:02.0: [drm:intel_enable_shared_dpll [i915]] e=
nabling DPLL 0
> [    1.075303] hid: raw HID events driver (C) Jiri Kosina
> [    1.075325] i915 0000:00:02.0: [drm:intel_pps_on_unlocked [i915]] Turn=
 [ENCODER:307:DDI A/PHY A] panel power on
> [    1.075541] i915 0000:00:02.0: [drm:wait_panel_power_cycle [i915]] Wai=
t for panel power cycle
> [    1.105559] usbcore: registered new interface driver usbhid
> [    1.105570] usbhid: USB HID core driver
> [    1.115870] input: SZ PING-IT INC.  T505 Graphic Tablet as /devices/pc=
i0000:00/0000:00:14.0/usb1/1-1/1-1:1.1/0003:08F2:6811.0001/input/input1
> [    1.116090] input: SZ PING-IT INC.  T505 Graphic Tablet Mouse as /devi=
ces/pci0000:00/0000:00:14.0/usb1/1-1/1-1:1.1/0003:08F2:6811.0001/input/inpu=
t2
> [    1.116329] input: SZ PING-IT INC.  T505 Graphic Tablet as /devices/pc=
i0000:00/0000:00:14.0/usb1/1-1/1-1:1.1/0003:08F2:6811.0001/input/input3
> [    1.116497] hid-generic 0003:08F2:6811.0001: input,hiddev0,hidraw0: US=
B HID v1.10 Mouse [SZ PING-IT INC.  T505 Graphic Tablet] on usb-0000:00:14.=
0-1/input1
> [    1.116811] input: SZ PING-IT INC.  T505 Graphic Tablet as /devices/pc=
i0000:00/0000:00:14.0/usb1/1-1/1-1:1.2/0003:08F2:6811.0002/input/input4
> [    1.194862] usb 1-2: new full-speed USB device number 3 using xhci_hcd
> [    1.251148] input: SZ PING-IT INC.  T505 Graphic Tablet Keyboard as /d=
evices/pci0000:00/0000:00:14.0/usb1/1-1/1-1:1.2/0003:08F2:6811.0002/input/i=
nput5
> [    1.323073] input: SZ PING-IT INC.  T505 Graphic Tablet as /devices/pc=
i0000:00/0000:00:14.0/usb1/1-1/1-1:1.2/0003:08F2:6811.0002/input/input6
> [    1.323309] hid-generic 0003:08F2:6811.0002: input,hiddev1,hidraw1: US=
B HID v1.10 Keyboard [SZ PING-IT INC.  T505 Graphic Tablet] on usb-0000:00:=
14.0-1/input2
> [    1.343435] usb 1-2: New USB device found, idVendor=3D0c76, idProduct=
=3D1733, bcdDevice=3D 1.00
> [    1.343456] usb 1-2: New USB device strings: Mfr=3D0, Product=3D1, Ser=
ialNumber=3D0
> [    1.343466] usb 1-2: Product: H710 Audio Device
> [    1.345695] input: H710 Audio Device as /devices/pci0000:00/0000:00:14=
=2E0/usb1/1-2/1-2:1.3/0003:0C76:1733.0003/input/input7
> [    1.403015] hid-generic 0003:0C76:1733.0003: input,hidraw2: USB HID v1=
=2E00 Device [H710 Audio Device] on usb-0000:00:14.0-2/input3
> [    1.530835] usb 1-3: new low-speed USB device number 4 using xhci_hcd
> [    1.678896] i915 0000:00:02.0: [drm:wait_panel_status [i915]] mask b80=
0000f value 00000000 status 00000000 control 00000060
> [    1.679157] i915 0000:00:02.0: [drm:intel_pps_on_unlocked [i915]] Wait=
 complete
> [    1.679392] i915 0000:00:02.0: [drm:intel_pps_on_unlocked [i915]] Wait=
 for panel power on
> [    1.679623] i915 0000:00:02.0: [drm:wait_panel_status [i915]] mask b00=
0000f value 80000008 status 9000000a control 00000063
> [    1.682419] usb 1-3: New USB device found, idVendor=3D4e53, idProduct=
=3D5407, bcdDevice=3D 1.00
> [    1.682433] usb 1-3: New USB device strings: Mfr=3D0, Product=3D1, Ser=
ialNumber=3D0
> [    1.682439] usb 1-3: Product: USB OPTICAL MOUSE=20
> [    1.686206] input: USB OPTICAL MOUSE  as /devices/pci0000:00/0000:00:1=
4.0/usb1/1-3/1-3:1.0/0003:4E53:5407.0004/input/input8
> [    1.686324] hid-generic 0003:4E53:5407.0004: input,hidraw3: USB HID v1=
=2E11 Mouse [USB OPTICAL MOUSE ] on usb-0000:00:14.0-3/input0
> [    1.689955] input: USB OPTICAL MOUSE  Keyboard as /devices/pci0000:00/=
0000:00:14.0/usb1/1-3/1-3:1.1/0003:4E53:5407.0005/input/input9
> [    1.747012] hid-generic 0003:4E53:5407.0005: input,hiddev2,hidraw4: US=
B HID v1.10 Keyboard [USB OPTICAL MOUSE ] on usb-0000:00:14.0-3/input1
> [    1.874837] usb 1-6: new high-speed USB device number 5 using xhci_hcd
> [    1.892271] i915 0000:00:02.0: [drm:intel_pps_on_unlocked [i915]] Wait=
 complete
> [    1.892526] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling DDI_IO_A
> [    1.892837] i915 0000:00:02.0: [drm:intel_pps_vdd_on_unlocked [i915]] =
Turning [ENCODER:307:DDI A/PHY A] VDD on
> [    1.893107] i915 0000:00:02.0: [drm:intel_pps_vdd_on_unlocked [i915]] =
PP_STATUS: 0x80000008 PP_CONTROL: 0x0000006b
> [    1.894128] i915 0000:00:02.0: [drm:drm_dp_read_dpcd_caps [drm_display=
_helper]] AUX A/DDI A/PHY A: DPCD: 11 0a 82 41 00 00 01 c0 02 00 00 00 0f 0=
b 00
> [    1.894189] i915 0000:00:02.0: [drm:intel_dp_start_link_train [i915]] =
[ENCODER:307:DDI A/PHY A] Using LINK_BW_SET value 0a
> [    1.894747] i915 0000:00:02.0: [drm:intel_dp_set_signal_levels [i915]]=
 [ENCODER:307:DDI A/PHY A][DPRX] 8b/10b, lanes: 2, vswing levels: 0/0/0/0, =
pre-emphasis levels: 0/0/0/0
> [    1.894994] i915 0000:00:02.0: [drm:intel_dp_program_link_training_pat=
tern [i915]] [ENCODER:307:DDI A/PHY A][DPRX] Using DP training pattern TPS1
> [    1.895953] i915 0000:00:02.0: [drm:intel_dp_link_train_phy [i915]] [E=
NCODER:307:DDI A/PHY A][DPRX] Clock recovery OK
> [    1.896123] i915 0000:00:02.0: [drm:intel_dp_program_link_training_pat=
tern [i915]] [ENCODER:307:DDI A/PHY A][DPRX] Using DP training pattern TPS2
> [    1.897677] i915 0000:00:02.0: [drm:intel_dp_link_train_phy [i915]] [E=
NCODER:307:DDI A/PHY A][DPRX] Channel EQ done. DP Training successful
> [    1.897844] i915 0000:00:02.0: [drm:intel_dp_link_train_phy [i915]] [C=
ONNECTOR:308:eDP-1][ENCODER:307:DDI A/PHY A][DPRX] Link Training passed at =
link rate =3D 270000, lane count =3D 2
> [    1.898372] i915 0000:00:02.0: [drm:intel_enable_transcoder [i915]] en=
abling pipe A
> [    1.898607] i915 0000:00:02.0: [drm:intel_edp_backlight_on [i915]]=20
> [    1.898801] i915 0000:00:02.0: [drm:intel_backlight_enable [i915]] pip=
e A
> [    1.899008] i915 0000:00:02.0: [drm:intel_backlight_set_pwm_level [i91=
5]] set backlight PWM =3D 96000
> [    1.900024] i915 0000:00:02.0: [drm:intel_fbc_update [i915]] reserved =
17694720 bytes of contiguous stolen space for FBC, limit: 1
> [    1.900264] i915 0000:00:02.0: [drm:intel_fbc_update [i915]] Enabling =
FBC on [PLANE:31:plane 1A]
> [    1.915578] i915 0000:00:02.0: [drm:verify_connector_state [i915]] [CO=
NNECTOR:308:eDP-1]
> [    1.915844] i915 0000:00:02.0: [drm:intel_modeset_verify_crtc [i915]] =
[CRTC:98:pipe A]
> [    1.916105] i915 0000:00:02.0: [drm:intel_ddi_get_config [i915]] [ENCO=
DER:307:DDI A/PHY A] Fec status: 0
> [    1.916334] i915 0000:00:02.0: [drm:verify_single_dpll_state [i915]] D=
PLL 0
> [    1.916587] i915 0000:00:02.0: [drm:intel_fbdev_init [i915]] found pos=
sible fb from [PLANE:31:plane 1A]
> [    1.916786] i915 0000:00:02.0: [drm:intel_fbdev_init [i915]] [CRTC:167=
:pipe B] not active, skipping
> [    1.916973] i915 0000:00:02.0: [drm:intel_fbdev_init [i915]] [CRTC:236=
:pipe C] not active, skipping
> [    1.917146] i915 0000:00:02.0: [drm:intel_fbdev_init [i915]] [CRTC:305=
:pipe D] not active, skipping
> [    1.917315] i915 0000:00:02.0: [drm:intel_fbdev_init [i915]] checking =
[PLANE:31:plane 1A] for BIOS fb
> [    1.917476] i915 0000:00:02.0: [drm:intel_fbdev_init [i915]] [CRTC:98:=
pipe A] area: 1920x1080, bpp: 32, size: 8294400
> [    1.917653] i915 0000:00:02.0: [drm:intel_fbdev_init [i915]] fb big en=
ough [PLANE:31:plane 1A] (8294400 >=3D 8294400)
> [    1.917820] i915 0000:00:02.0: [drm:intel_fbdev_init [i915]] [CRTC:167=
:pipe B] not active, skipping
> [    1.917973] i915 0000:00:02.0: [drm:intel_fbdev_init [i915]] [CRTC:236=
:pipe C] not active, skipping
> [    1.918118] i915 0000:00:02.0: [drm:intel_fbdev_init [i915]] [CRTC:305=
:pipe D] not active, skipping
> [    1.918261] i915 0000:00:02.0: [drm:intel_fbdev_init [i915]] using BIO=
S fb for initial console
> [    1.918577] [drm:intel_engines_driver_register [i915]] renamed rcs'0 t=
o rcs0
> [    1.918783] [drm:intel_engines_driver_register [i915]] renamed bcs'0 t=
o bcs0
> [    1.918941] [drm:intel_engines_driver_register [i915]] renamed vcs'0 t=
o vcs0
> [    1.919082] [drm:intel_engines_driver_register [i915]] renamed vcs'2 t=
o vcs1
> [    1.919217] [drm:intel_engines_driver_register [i915]] renamed vecs'0 =
to vecs0
> [    1.921341] i915 0000:00:02.0: [drm:intel_backlight_device_register [i=
915]] [CONNECTOR:308:eDP-1] backlight device intel_backlight registered
> [    1.921602] i915 0000:00:02.0: [drm:intel_dp_connector_register [i915]=
] registering AUX A/DDI A/PHY A bus for card0-eDP-1
> [    1.922120] i915 0000:00:02.0: [drm:drm_sysfs_connector_hotplug_event =
[drm]] [CONNECTOR:308:eDP-1] generating connector hotplug event
> [    1.922288] i915 0000:00:02.0: [drm:intel_dp_connector_register [i915]=
] registering AUX B/DDI B/PHY B bus for card0-DP-1
> [    1.922674] i915 0000:00:02.0: [drm:drm_sysfs_connector_hotplug_event =
[drm]] [CONNECTOR:317:DP-1] generating connector hotplug event
> [    1.922826] i915 0000:00:02.0: [drm:drm_sysfs_connector_hotplug_event =
[drm]] [CONNECTOR:329:HDMI-A-1] generating connector hotplug event
> [    1.922955] i915 0000:00:02.0: [drm:intel_dp_connector_register [i915]=
] registering AUX USBC1/DDI TC1/PHY TC1 bus for card0-DP-2
> [    1.923445] i915 0000:00:02.0: [drm:drm_sysfs_connector_hotplug_event =
[drm]] [CONNECTOR:335:DP-2] generating connector hotplug event
> [    1.923659] i915 0000:00:02.0: [drm:intel_dp_connector_register [i915]=
] registering AUX USBC2/DDI TC2/PHY TC2 bus for card0-DP-3
> [    1.924005] i915 0000:00:02.0: [drm:drm_sysfs_connector_hotplug_event =
[drm]] [CONNECTOR:344:DP-3] generating connector hotplug event
> [    1.924083] [drm] Initialized i915 1.6.0 20201103 for 0000:00:02.0 on =
minor 0
> [    1.924365] i915 0000:00:02.0: [drm:intel_opregion_resume [i915]] 5 ou=
tputs detected
> [    1.927124] ACPI: video: Video Device [GFX0] (multi-head: yes  rom: no=
  post: no)
> [    1.927693] input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A=
08:00/LNXVIDEO:00/input/input11
> [    1.927954] ACPI: video: [Firmware Bug]: ACPI(PXSX) defines _DOD but n=
ot _DOS
> [    1.927985] ACPI: video: Video Device [PXSX] (multi-head: yes  rom: no=
  post: no)
> [    1.928037] input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A=
08:00/device:46/LNXVIDEO:01/input/input12
> [    1.928186] i915 0000:00:02.0: [drm:intel_audio_init [i915]] use AUD_F=
REQ_CNTRL of 0x8010 (init value 0x8010)
> [    1.928537] [drm:drm_client_modeset_probe [drm]]=20
> [    1.928470] [drm:intel_dsm_detect.isra.0 [i915]] no _DSM method for in=
tel device
> [    1.928608] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:308:eDP-1]
> [    1.928683] i915 device info: pciid=3D0x9a49 rev=3D0x01 platform=3DTIG=
ERLAKE (subplatform=3D0x1) gen=3D12
> [    1.928690] i915 device info: graphics version: 12
> [    1.928694] i915 device info: media version: 12
> [    1.928697] i915 device info: display version: 12
> [    1.928700] i915 device info: gt: 0
> [    1.928703] i915 device info: memory-regions: 21
> [    1.928706] i915 device info: page-sizes: 211000
> [    1.928710] i915 device info: platform: TIGERLAKE
> [    1.928713] i915 device info: ppgtt-size: 48
> [    1.928716] i915 device info: ppgtt-type: 2
> [    1.928719] i915 device info: dma_mask_size: 39
> [    1.928722] i915 device info: is_mobile: no
> [    1.928725] i915 device info: is_lp: no
> [    1.928728] i915 device info: require_force_probe: no
> [    1.928731] i915 device info: is_dgfx: no
> [    1.928734] i915 device info: has_64bit_reloc: yes
> [    1.928737] i915 device info: has_64k_pages: no
> [    1.928740] i915 device info: needs_compact_pt: no
> [    1.928743] i915 device info: gpu_reset_clobbers_display: no
> [    1.928746] i915 device info: has_reset_engine: yes
> [    1.928749] i915 device info: has_3d_pipeline: yes
> [    1.928752] i915 device info: has_4tile: no
> [    1.928755] i915 device info: has_flat_ccs: no
> [    1.928758] i915 device info: has_global_mocs: yes
> [    1.928761] i915 device info: has_gt_uc: yes
> [    1.928763] i915 device info: has_heci_pxp: no
> [    1.928640] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:308:eDP-1]
> [    1.928767] i915 device info: has_heci_gscfi: no
> [    1.928769] i915 device info: has_guc_deprivilege: no
> [    1.928770] i915 device info: has_l3_ccs_read: no
> [    1.928771] i915 device info: has_l3_dpf: no
> [    1.928772] i915 device info: has_llc: yes
> [    1.928774] i915 device info: has_logical_ring_contexts: yes
> [    1.928775] i915 device info: has_logical_ring_elsq: yes
> [    1.928776] i915 device info: has_media_ratio_mode: no
> [    1.928778] i915 device info: has_mslice_steering: no
> [    1.928779] i915 device info: has_one_eu_per_fuse_bit: no
> [    1.928780] i915 device info: has_pxp: yes
> [    1.928782] i915 device info: has_rc6: yes
> [    1.928783] i915 device info: has_rc6p: no
> [    1.928784] i915 device info: has_rps: yes
> [    1.928785] i915 device info: has_runtime_pm: yes
> [    1.928787] i915 device info: has_snoop: no
> [    1.928788] i915 device info: has_coherent_ggtt: no
> [    1.928789] i915 device info: tuning_thread_rr_after_dep: no
> [    1.928791] i915 device info: unfenced_needs_alignment: no
> [    1.928792] i915 device info: hws_needs_physical: no
> [    1.928793] i915 device info: has_pooled_eu: no
> [    1.928795] i915 device info: cursor_needs_physical: no
> [    1.928796] i915 device info: has_cdclk_crawl: no
> [    1.928797] i915 device info: has_ddi: yes
> [    1.928798] i915 device info: has_dp_mst: yes
> [    1.928799] i915 device info: has_dsb: no
> [    1.928801] i915 device info: has_fpga_dbg: yes
> [    1.928802] i915 device info: has_gmch: no
> [    1.928803] i915 device info: has_hotplug: yes
> [    1.928804] i915 device info: has_hti: no
> [    1.928806] i915 device info: has_ipc: yes
> [    1.928807] i915 device info: has_modular_fia: yes
> [    1.928808] i915 device info: has_overlay: no
> [    1.928809] i915 device info: has_psr: yes
> [    1.928810] i915 device info: has_psr_hw_tracking: yes
> [    1.928812] i915 device info: overlay_needs_physical: no
> [    1.928813] i915 device info: supports_tv: no
> [    1.928814] i915 device info: has_hdcp: yes
> [    1.928815] i915 device info: has_dmc: yes
> [    1.928817] i915 device info: has_dsc: yes
> [    1.928818] i915 device info: rawclk rate: 19200 kHz
> [    1.928820] i915 device info: iommu: disabled
> [    1.928822] i915 device info: available engines: 41403
> [    1.928824] i915 device info: slice total: 1, mask=3D0001
> [    1.928826] i915 device info: subslice total: 5
> [    1.928827] i915 device info: slice0: 5 subslices, mask=3D0000001f
> [    1.928830] i915 device info: EU total: 80
> [    1.928831] i915 device info: EU per subslice: 16
> [    1.928833] i915 device info: has slice power gating: yes
> [    1.928834] i915 device info: has subslice power gating: no
> [    1.928835] i915 device info: has EU power gating: no
> [    1.929042] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [ENCODER:3=
07:DDI A/PHY A] MST support: port: no, sink: no, modparam: yes
> [    1.929299] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sourc=
e rates: 162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000
> [    1.929546] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sink =
rates: 162000, 270000
> [    1.929787] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] commo=
n rates: 162000, 270000
> [    1.930049] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:308:eDP-1] VRR capable: yes
> [    1.930341] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:308:eDP-1] DFP max bpc 0, max dotclock 0, TMDS clock 0-0, PCON Max FRL B=
W 0Gbps
> [    1.931108] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] PCON ENC=
ODER DSC DPCD: 00 00 00 00 00 00 00 00 00 00 00 00 00
> [    1.931401] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:308:eDP-1] RGB->YcbCr conversion? no, YCbCr 4:2:0 allowed? yes, YCbCr 4:=
4:4->4:2:0 conversion? no
> [    1.932325] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling PW_5
> [    1.932605] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling PW_4
> [    1.932833] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling PW_3
> [    1.933035] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling PW_2
> [    1.933205] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:308:eDP-1] status updated from unknown to connected
> [    1.933246] [drm:update_display_info [drm]] Supported Monitor Refresh =
rate range is 48 Hz - 60 Hz
> [    1.933316] [drm:update_display_info [drm]] Supported Monitor Refresh =
rate range is 48 Hz - 60 Hz
> [    1.933362] [drm:_drm_edid_connector_update [drm]] ELD monitor=20
> [    1.933406] [drm:_drm_edid_connector_update [drm]] ELD size 20, SAD co=
unt 0
> [    1.933495] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:308:eDP-1] probed modes :
> [    1.933520] [drm:drm_mode_debug_printmodeline [drm]] Modeline "1920x10=
80": 60 166010 1920 2028 2076 2120 1080 1090 1100 1304 0x48 0xa
> [    1.933568] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:317:DP-1]
> [    1.933591] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:317:DP-1]
> [    1.933797] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:317:DP-1] status updated from unknown to disconnected
> [    1.933822] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:317:DP-1] disconnected
> [    1.933845] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:329:HDMI-A-1]
> [    1.933867] i915 0000:00:02.0: [drm:intel_hdmi_detect [i915]] [CONNECT=
OR:329:HDMI-A-1]
> [    1.934062] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:329:HDMI-A-1] status updated from unknown to disconnected
> [    1.934086] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:329:HDMI-A-1] disconnected
> [    1.934109] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:335:DP-2]
> [    1.934131] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:335:DP-2]
> [    1.934298] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling TC_cold_off
> [    1.934450] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] TC=
 cold block succeeded
> [    1.934581] i915 0000:00:02.0: [drm:icl_tc_port_live_status_mask [i915=
]] Port D/TC#1: PHY in TCCOLD, nothing connected
> [    1.934744] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling TC_cold_off
> [    1.934884] i915 0000:00:02.0: [drm:__intel_display_power_put_domain [=
i915]] TC cold unblock succeeded
> [    1.935011] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling TC_cold_off
> [    1.935139] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] TC=
 cold block succeeded
> [    1.935258] i915 0000:00:02.0: [drm:tc_phy_status_complete [i915]] Por=
t D/TC#1: PHY in TCCOLD, assuming not complete
> [    1.935393] i915 0000:00:02.0: [drm:intel_tc_port_update_mode [i915]] =
Port D/TC#1: PHY not ready
> [    1.935534] i915 0000:00:02.0: [drm:intel_tc_port_update_mode [i915]] =
Port D/TC#1: TC port mode reset (disconnected -> tbt-alt)
> [    1.935662] i915 0000:00:02.0: [drm:icl_tc_port_live_status_mask [i915=
]] Port D/TC#1: PHY in TCCOLD, nothing connected
> [    1.935786] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:335:DP-2] status updated from unknown to disconnected
> [    1.935807] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:335:DP-2] disconnected
> [    1.935826] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:344:DP-3]
> [    1.935844] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:344:DP-3]
> [    1.935984] i915 0000:00:02.0: [drm:icl_tc_port_live_status_mask [i915=
]] Port E/TC#2: PHY in TCCOLD, nothing connected
> [    1.936110] i915 0000:00:02.0: [drm:tc_phy_status_complete [i915]] Por=
t E/TC#2: PHY in TCCOLD, assuming not complete
> [    1.936235] i915 0000:00:02.0: [drm:intel_tc_port_update_mode [i915]] =
Port E/TC#2: PHY not ready
> [    1.936364] i915 0000:00:02.0: [drm:intel_tc_port_update_mode [i915]] =
Port E/TC#2: TC port mode reset (disconnected -> tbt-alt)
> [    1.936486] i915 0000:00:02.0: [drm:icl_tc_port_live_status_mask [i915=
]] Port E/TC#2: PHY in TCCOLD, nothing connected
> [    1.936602] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:344:DP-3] status updated from unknown to disconnected
> [    1.936622] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:344:DP-3] disconnected
> [    1.936640] [drm:drm_client_modeset_probe [drm]] connector 308 enabled=
? yes
> [    1.936678] [drm:drm_client_modeset_probe [drm]] connector 317 enabled=
? no
> [    1.936714] [drm:drm_client_modeset_probe [drm]] connector 329 enabled=
? no
> [    1.936747] [drm:drm_client_modeset_probe [drm]] connector 335 enabled=
? no
> [    1.936779] [drm:drm_client_modeset_probe [drm]] connector 344 enabled=
? no
> [    1.936816] [drm:drm_client_modeset_probe [drm]] Not using firmware co=
nfiguration
> [    1.936850] [drm:drm_client_modeset_probe [drm]] looking for cmdline m=
ode on connector 308
> [    1.936882] [drm:drm_client_modeset_probe [drm]] looking for preferred=
 mode on connector 308 0
> [    1.936914] [drm:drm_client_modeset_probe [drm]] found mode 1920x1080
> [    1.936947] [drm:drm_client_modeset_probe [drm]] picking CRTCs for 163=
84x16384 config
> [    1.936980] [drm:drm_client_modeset_probe [drm]] desired mode 1920x108=
0 set on crtc 98 (0,0)
> [    1.937015] i915 0000:00:02.0: [drm:__drm_fb_helper_initial_config_and=
_unlock [drm_kms_helper]] test CRTC 0 primary plane
> [    1.937036] i915 0000:00:02.0: [drm:__drm_fb_helper_initial_config_and=
_unlock [drm_kms_helper]] test CRTC 1 primary plane
> [    1.937056] i915 0000:00:02.0: [drm:__drm_fb_helper_initial_config_and=
_unlock [drm_kms_helper]] test CRTC 2 primary plane
> [    1.937075] i915 0000:00:02.0: [drm:__drm_fb_helper_initial_config_and=
_unlock [drm_kms_helper]] test CRTC 3 primary plane
> [    1.937095] i915 0000:00:02.0: [drm:intelfb_create [i915]] re-using BI=
OS fb
> [    1.937232] i915 0000:00:02.0: [drm:intelfb_create [i915]] allocated 1=
920x1080 fb: 0x00000000
> [    1.937410] fbcon: i915drmfb (fb0) is primary device
> [    1.937506] i915 0000:00:02.0: [drm:intel_atomic_check [i915]] [CONNEC=
TOR:308:eDP-1] Limiting display bpp to 24 (EDID bpp 24, max requested bpp 3=
6, max platform bpp 36)
> [    1.937696] i915 0000:00:02.0: [drm:intel_dp_compute_link_config [i915=
]] DP link computation with max lane count 2 max rate 270000 max bpp 24 pix=
el clock 166010KHz
> [    1.937855] i915 0000:00:02.0: [drm:intel_dp_compute_link_config [i915=
]] DP lane count 2 clock 270000 bpp 24
> [    1.937977] i915 0000:00:02.0: [drm:intel_dp_compute_link_config [i915=
]] DP link rate required 498030 available 540000
> [    1.938105] i915 0000:00:02.0: [drm:intel_atomic_check [i915]] [CRTC:9=
8:pipe A] hw max bpp: 24, pipe bpp: 24, dithering: 0
> [    1.938227] i915 0000:00:02.0: [drm:intel_ddi_compute_config_late [i91=
5]] [ENCODER:307:DDI A/PHY A] [CRTC:98:pipe A]
> [    1.938370] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:31:p=
lane 1A]   level *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7, twm, swm, stwm ->=
 *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7,*twm, swm, stwm
> [    1.938486] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:31:p=
lane 1A]   lines    1,   5,   5,   5,   5,   6,   9,  10,   0,   0,    0 ->=
    1,   5,   5,   5,   5,   6,   9,  10,   0,   0,    0
> [    1.938599] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:31:p=
lane 1A]  blocks   16,  81,  81,  81,  81,  97, 145, 161,   0,   0,    0 ->=
   16,  81,  81,  81,  81,  97, 145, 161,  30,   0,    0
> [    1.938727] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:31:p=
lane 1A] min_ddb   19,  91,  91,  91,  91, 108, 161, 179,   0,   0,    0 ->=
   19,  91,  91,  91,  91, 108, 161, 179,  31,   0,    0
> [    1.938881] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:40:p=
lane 2A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm ->=
  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
> [    1.939007] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:40:p=
lane 2A]   lines    1,   1,   1,   1,   1,   1,   1,   1,   1,   1,    1 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    1.939117] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:40:p=
lane 2A]  blocks    7,   7,   7,   7,   7,   7,   7,   7,   7,   7,    7 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    1.939217] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:40:p=
lane 2A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    1.939309] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:49:p=
lane 3A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm ->=
  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
> [    1.939395] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:49:p=
lane 3A]   lines    1,   1,   1,   1,   1,   1,   1,   1,   1,   1,    1 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    1.939479] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:49:p=
lane 3A]  blocks    7,   7,   7,   7,   7,   7,   7,   7,   7,   7,    7 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    1.939562] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:49:p=
lane 3A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    1.939643] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:58:p=
lane 4A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm ->=
  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
> [    1.939725] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:58:p=
lane 4A]   lines    1,   1,   1,   1,   1,   1,   1,   1,   1,   1,    1 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    1.939832] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:58:p=
lane 4A]  blocks    7,   7,   7,   7,   7,   7,   7,   7,   7,   7,    7 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    1.939927] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:58:p=
lane 4A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    1.940017] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:67:p=
lane 5A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm ->=
  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
> [    1.940102] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:67:p=
lane 5A]   lines    1,   1,   1,   1,   1,   1,   1,   1,   1,   1,    1 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    1.940186] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:67:p=
lane 5A]  blocks    7,   7,   7,   7,   7,   7,   7,   7,   7,   7,    7 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    1.940266] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:67:p=
lane 5A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    1.940361] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:76:p=
lane 6A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm ->=
  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
> [    1.940452] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:76:p=
lane 6A]   lines    1,   1,   1,   1,   1,   1,   1,   1,   1,   1,    1 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    1.940543] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:76:p=
lane 6A]  blocks    7,   7,   7,   7,   7,   7,   7,   7,   7,   7,    7 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    1.940635] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:76:p=
lane 6A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    1.940756] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:85:p=
lane 7A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm ->=
  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
> [    1.940876] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:85:p=
lane 7A]   lines    1,   1,   1,   1,   1,   1,   1,   1,   1,   1,    1 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    1.940991] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:85:p=
lane 7A]  blocks    7,   7,   7,   7,   7,   7,   7,   7,   7,   7,    7 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    1.941096] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:85:p=
lane 7A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    1.941194] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm ->=
  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
> [    1.941288] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]   lines    1,   1,   1,   1,   1,   1,   1,   1,   1,   1,    1 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    1.941383] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]  blocks    7,   7,   7,   7,   7,   7,   7,   7,   7,   7,    7 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    1.941476] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [    1.941583] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] [CRT=
C:98:pipe A] enable: yes [fastset]
> [    1.941727] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] acti=
ve: yes, output_types: EDP (0x100), output format: RGB
> [    1.941865] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] cpu_=
transcoder: A, pipe bpp: 24, dithering: 0
> [    1.941991] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] MST =
master transcoder: <invalid>
> [    1.942110] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] port=
 sync: master transcoder: <invalid>, slave transcoder bitmask =3D 0x0
> [    1.942224] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] bigj=
oiner: no, pipes: 0x0
> [    1.942334] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] spli=
tter: disabled, link count 0, overlap 0
> [    1.942442] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] dp m=
_n: lanes: 2; data_m: 7736626, data_n: 8388608, link_m: 322359, link_n: 524=
288, tu: 64
> [    1.942548] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] dp m=
2_n2: lanes: 2; data_m: 0, data_n: 0, link_m: 0, link_n: 0, tu: 0
> [    1.942653] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] fram=
estart delay: 1, MSA timing delay: 0
> [    1.942780] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] audi=
o: 0, infoframes: 0, infoframes enabled: 0x0
> [    1.942889] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] vrr:=
 no, vmin: 0, vmax: 0, pipeline full: 0, guardband: 0 flipline: 0, vmin vbl=
ank: -1, vmax vblank: -2
> [    1.943009] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] requ=
ested mode: "1920x1080": 60 166010 1920 2028 2076 2120 1080 1090 1100 1304 =
0x48 0xa
> [    1.943133] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] adju=
sted mode: "1920x1080": 60 166010 1920 2028 2076 2120 1080 1090 1100 1304 0=
x48 0xa
> [    1.943250] i915 0000:00:02.0: [drm:intel_dump_crtc_timings [i915]] cr=
tc timings: 166010 1920 2028 2076 2120 1080 1090 1100 1304, type: 0x48 flag=
s: 0xa
> [    1.943362] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] pipe=
 mode: "1920x1080": 60 166010 1920 2028 2076 2120 1080 1090 1100 1304 0x40 =
0xa
> [    1.943472] i915 0000:00:02.0: [drm:intel_dump_crtc_timings [i915]] cr=
tc timings: 166010 1920 2028 2076 2120 1080 1090 1100 1304, type: 0x40 flag=
s: 0xa
> [    1.943577] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] port=
 clock: 270000, pipe src: 1920x1080+0+0, pixel rate 166010
> [    1.943681] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] line=
time: 103, ips linetime: 0
> [    1.943784] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] num_=
scalers: 2, scaler_users: 0x0, scaler_id: -1, scaling_filter: 0
> [    1.943885] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] pch =
pfit: 0x0+0+0, disabled, force thru: no
> [    1.943987] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] ips:=
 0, double wide: 0, drrs: 0
> [    1.944087] i915 0000:00:02.0: [drm:icl_dump_hw_state [i915]] dpll_hw_=
state: cfgcr0: 0xe001a5, cfgcr1: 0x88, div0: 0x0, mg_refclkin_ctl: 0x0, hg_=
clktop2_coreclkctl1: 0x0, mg_clktop2_hsclkctl: 0x0, mg_pll_div0: 0x0, mg_pl=
l_div2: 0x0, mg_pll_lf: 0x0, mg_pll_frac_lock: 0x0, mg_pll_ssc: 0x0, mg_pll=
_bias: 0x0, mg_pll_tdc_coldst_bias: 0x0
> [    1.944228] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] csc_=
mode: 0x0 gamma_mode: 0x0 gamma_enable: 0 csc_enable: 0
> [    1.944365] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] dega=
mma lut: 0 entries, gamma lut: 0 entries
> [    1.944491] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] [PLA=
NE:31:plane 1A] fb: [FB:353] 1920x1080 format =3D XR24 little-endian (0x343=
25258) modifier =3D 0x0, visible: yes
> [    1.944614] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] 	rot=
ation: 0x1, scaler: -1, scaling_filter: 0
> [    1.944730] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] 	src=
: 1920.000000x1080.000000+0.000000+0.000000 dst: 1920x1080+0+0
> [    1.944844] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] [PLA=
NE:40:plane 2A] fb: [NOFB], visible: no
> [    1.944953] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] [PLA=
NE:49:plane 3A] fb: [NOFB], visible: no
> [    1.945060] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] [PLA=
NE:58:plane 4A] fb: [NOFB], visible: no
> [    1.945168] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] [PLA=
NE:67:plane 5A] fb: [NOFB], visible: no
> [    1.945274] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] [PLA=
NE:76:plane 6A] fb: [NOFB], visible: no
> [    1.945393] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] [PLA=
NE:85:plane 7A] fb: [NOFB], visible: no
> [    1.945514] i915 0000:00:02.0: [drm:intel_crtc_state_dump [i915]] [PLA=
NE:94:cursor A] fb: [NOFB], visible: no
> [    1.948719] i915 0000:00:02.0: [drm:verify_connector_state [i915]] [CO=
NNECTOR:308:eDP-1]
> [    1.948853] i915 0000:00:02.0: [drm:intel_modeset_verify_crtc [i915]] =
[CRTC:98:pipe A]
> [    1.948997] i915 0000:00:02.0: [drm:intel_ddi_get_config [i915]] [ENCO=
DER:307:DDI A/PHY A] Fec status: 0
> [    1.949128] i915 0000:00:02.0: [drm:verify_single_dpll_state [i915]] D=
PLL 0
> [    1.949271] Console: switching to colour frame buffer device 240x67
> [    2.013291] i915 0000:00:02.0: [drm] fb0: i915drmfb frame buffer device
> [    2.030834] i915 0000:00:02.0: [drm:drm_fb_helper_hotplug_event [drm_k=
ms_helper]]=20
> [    2.032662] [drm:drm_client_modeset_probe [drm]]=20
> [    2.034529] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:308:eDP-1]
> [    2.036367] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:308:eDP-1]
> [    2.038144] usb 1-6: New USB device found, idVendor=3D13d3, idProduct=
=3D56ff, bcdDevice=3D19.19
> [    2.038196] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [ENCODER:3=
07:DDI A/PHY A] MST support: port: no, sink: no, modparam: yes
> [    2.040715] usb 1-6: New USB device strings: Mfr=3D2, Product=3D1, Ser=
ialNumber=3D0
> [    2.043234] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sourc=
e rates: 162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000
> [    2.045500] usb 1-6: Product: Integrated Camera
> [    2.047210] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sink =
rates: 162000, 270000
> [    2.048542] usb 1-6: Manufacturer: Azurewave
> [    2.049796] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] commo=
n rates: 162000, 270000
> [    2.052503] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:308:eDP-1] VRR capable: yes
> [    2.053608] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:308:eDP-1] DFP max bpc 0, max dotclock 0, TMDS clock 0-0, PCON Max FRL B=
W 0Gbps
> [    2.055401] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] PCON ENC=
ODER DSC DPCD: 00 00 00 00 00 00 00 00 00 00 00 00 00
> [    2.056475] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:308:eDP-1] RGB->YcbCr conversion? no, YCbCr 4:2:0 allowed? yes, YCbCr 4:=
4:4->4:2:0 conversion? no
> [    2.058130] [drm:update_display_info [drm]] Supported Monitor Refresh =
rate range is 48 Hz - 60 Hz
> [    2.059181] [drm:update_display_info [drm]] Supported Monitor Refresh =
rate range is 48 Hz - 60 Hz
> [    2.060188] [drm:_drm_edid_connector_update [drm]] ELD monitor=20
> [    2.061192] [drm:_drm_edid_connector_update [drm]] ELD size 20, SAD co=
unt 0
> [    2.062210] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:308:eDP-1] probed modes :
> [    2.063254] [drm:drm_mode_debug_printmodeline [drm]] Modeline "1920x10=
80": 60 166010 1920 2028 2076 2120 1080 1090 1100 1304 0x48 0xa
> [    2.064250] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:317:DP-1]
> [    2.065254] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:317:DP-1]
> [    2.066308] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:317:DP-1] disconnected
> [    2.067358] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:329:HDMI-A-1]
> [    2.068350] i915 0000:00:02.0: [drm:intel_hdmi_detect [i915]] [CONNECT=
OR:329:HDMI-A-1]
> [    2.069377] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:329:HDMI-A-1] disconnected
> [    2.070376] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:335:DP-2]
> [    2.071417] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:335:DP-2]
> [    2.072511] i915 0000:00:02.0: [drm:icl_tc_port_live_status_mask [i915=
]] Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.073592] i915 0000:00:02.0: [drm:icl_tc_port_live_status_mask [i915=
]] Port D/TC#1: PHY in TCCOLD, nothing connected
> [    2.074607] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:335:DP-2] disconnected
> [    2.075636] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:344:DP-3]
> [    2.075644] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:344:DP-3]
> [    2.075683] i915 0000:00:02.0: [drm:icl_tc_port_live_status_mask [i915=
]] Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.078737] i915 0000:00:02.0: [drm:icl_tc_port_live_status_mask [i915=
]] Port E/TC#2: PHY in TCCOLD, nothing connected
> [    2.078777] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:344:DP-3] disconnected
> [    2.078784] [drm:drm_client_modeset_probe [drm]] connector 308 enabled=
? yes
> [    2.081724] [drm:drm_client_modeset_probe [drm]] connector 317 enabled=
? no
> [    2.081738] [drm:drm_client_modeset_probe [drm]] connector 329 enabled=
? no
> [    2.081752] [drm:drm_client_modeset_probe [drm]] connector 335 enabled=
? no
> [    2.081765] [drm:drm_client_modeset_probe [drm]] connector 344 enabled=
? no
> [    2.081783] [drm:drm_client_modeset_probe [drm]] Not using firmware co=
nfiguration
> [    2.081798] [drm:drm_client_modeset_probe [drm]] looking for cmdline m=
ode on connector 308
> [    2.081812] [drm:drm_client_modeset_probe [drm]] looking for preferred=
 mode on connector 308 0
> [    2.088231] [drm:drm_client_modeset_probe [drm]] found mode 1920x1080
> [    2.088244] [drm:drm_client_modeset_probe [drm]] picking CRTCs for 192=
0x1080 config
> [    2.088257] [drm:drm_client_modeset_probe [drm]] desired mode 1920x108=
0 set on crtc 98 (0,0)
> [    2.138724] PM: Image not found (code -22)
> [    2.182687] usb 1-8: new full-speed USB device number 6 using xhci_hcd
> [    2.225673] EXT4-fs (nvme1n1p3): mounted filesystem with ordered data =
mode. Quota mode: none.
> [    2.243359] Not activating Mandatory Access Control as /sbin/tomoyo-in=
it does not exist.
> [    2.297309] systemd[1]: Inserted module 'autofs4'
> [    2.349931] systemd[1]: systemd 252.26-1~deb12u2 running in system mod=
e (+PAM +AUDIT +SELINUX +APPARMOR +IMA +SMACK +SECCOMP +GCRYPT -GNUTLS +OPE=
NSSL +ACL +BLKID +CURL +ELFUTILS +FIDO2 +IDN2 -IDN +IPTC +KMOD +LIBCRYPTSET=
UP +LIBFDISK +PCRE2 -PWQUALITY +P11KIT +QRENCODE +TPM2 +BZIP2 +LZ4 +XZ +ZLI=
B +ZSTD -BPF_FRAMEWORK -XKBCOMMON +UTMP +SYSVINIT default-hierarchy=3Dunifi=
ed)
> [    2.349987] systemd[1]: Detected architecture x86-64.
> [    2.351044] systemd[1]: Hostname set to <debian>.
> [    2.353600] usb 1-8: New USB device found, idVendor=3D048d, idProduct=
=3Dc966, bcdDevice=3D14.00
> [    2.353617] usb 1-8: New USB device strings: Mfr=3D1, Product=3D2, Ser=
ialNumber=3D0
> [    2.353629] usb 1-8: Product: ITE Device(8176)
> [    2.353639] usb 1-8: Manufacturer: ITE Tech. Inc.
> [    2.368072] input: ITE Tech. Inc. ITE Device(8176) Keyboard as /device=
s/pci0000:00/0000:00:14.0/usb1/1-8/1-8:1.0/0003:048D:C966.0006/input/input13
> [    2.463412] systemd[1]: Queued start job for default target graphical.=
target.
> [    2.504169] systemd[1]: Created slice system-getty.slice - Slice /syst=
em/getty.
> [    2.504724] systemd[1]: Created slice system-modprobe.slice - Slice /s=
ystem/modprobe.
> [    2.505176] systemd[1]: Created slice system-systemd\x2dfsck.slice - S=
lice /system/systemd-fsck.
> [    2.505517] systemd[1]: Created slice user.slice - User and Session Sl=
ice.
> [    2.505654] systemd[1]: Started systemd-ask-password-wall.path - Forwa=
rd Password Requests to Wall Directory Watch.
> [    2.505945] systemd[1]: Set up automount proc-sys-fs-binfmt_misc.autom=
ount - Arbitrary Executable File Formats File System Automount Point.
> [    2.506035] systemd[1]: Expecting device dev-disk-by\x2duuid-133E\x2d5=
880.device - /dev/disk/by-uuid/133E-5880...
> [    2.506094] systemd[1]: Expecting device dev-disk-by\x2duuid-57298340\=
x2db81a\x2d4931\x2d8445\x2d3ccc712f0ce8.device - /dev/disk/by-uuid/57298340=
-b81a-4931-8445-3ccc712f0ce8...
> [    2.506161] systemd[1]: Expecting device dev-disk-by\x2duuid-9d9cdb89\=
x2d99bf\x2d48a9\x2d92f7\x2d2ce4f406ca23.device - /dev/disk/by-uuid/9d9cdb89=
-99bf-48a9-92f7-2ce4f406ca23...
> [    2.506230] systemd[1]: Expecting device dev-disk-by\x2duuid-a896d265\=
x2dea0e\x2d42aa\x2db4a9\x2d1db7765bd7f7.device - /dev/disk/by-uuid/a896d265=
-ea0e-42aa-b4a9-1db7765bd7f7...
> [    2.506327] systemd[1]: Reached target integritysetup.target - Local I=
ntegrity Protected Volumes.
> [    2.506410] systemd[1]: Reached target remote-fs.target - Remote File =
Systems.
> [    2.506463] systemd[1]: Reached target slices.target - Slice Units.
> [    2.506543] systemd[1]: Reached target veritysetup.target - Local Veri=
ty Protected Volumes.
> [    2.506808] systemd[1]: Listening on systemd-fsckd.socket - fsck to fs=
ckd communication Socket.
> [    2.506938] systemd[1]: Listening on systemd-initctl.socket - initctl =
Compatibility Named Pipe.
> [    2.507605] systemd[1]: Listening on systemd-journald-audit.socket - J=
ournal Audit Socket.
> [    2.507827] systemd[1]: Listening on systemd-journald-dev-log.socket -=
 Journal Socket (/dev/log).
> [    2.508012] systemd[1]: Listening on systemd-journald.socket - Journal=
 Socket.
> [    2.508390] systemd[1]: Listening on systemd-udevd-control.socket - ud=
ev Control Socket.
> [    2.508554] systemd[1]: Listening on systemd-udevd-kernel.socket - ude=
v Kernel Socket.
> [    2.509864] systemd[1]: Mounting dev-hugepages.mount - Huge Pages File=
 System...
> [    2.510992] systemd[1]: Mounting dev-mqueue.mount - POSIX Message Queu=
e File System...
> [    2.512174] systemd[1]: Mounting sys-kernel-debug.mount - Kernel Debug=
 File System...
> [    2.513323] systemd[1]: Mounting sys-kernel-tracing.mount - Kernel Tra=
ce File System...
> [    2.514970] systemd[1]: Starting keyboard-setup.service - Set the cons=
ole keyboard layout...
> [    2.516074] systemd[1]: Starting kmod-static-nodes.service - Create Li=
st of Static Device Nodes...
> [    2.517134] systemd[1]: Starting modprobe@configfs.service - Load Kern=
el Module configfs...
> [    2.518160] systemd[1]: Starting modprobe@dm_mod.service - Load Kernel=
 Module dm_mod...
> [    2.519177] systemd[1]: Starting modprobe@drm.service - Load Kernel Mo=
dule drm...
> [    2.520298] systemd[1]: Starting modprobe@efi_pstore.service - Load Ke=
rnel Module efi_pstore...
> [    2.521490] systemd[1]: Starting modprobe@fuse.service - Load Kernel M=
odule fuse...
> [    2.522251] systemd[1]: Starting modprobe@loop.service - Load Kernel M=
odule loop...
> [    2.522382] systemd[1]: systemd-fsck-root.service - File System Check =
on Root Device was skipped because of an unmet condition check (ConditionPa=
thExists=3D!/run/initramfs/fsck-root).
> [    2.523673] systemd[1]: Starting systemd-journald.service - Journal Se=
rvice...
> [    2.524465] pstore: Using crash dump compression: deflate
> [    2.524723] systemd[1]: Starting systemd-modules-load.service - Load K=
ernel Modules...
> [    2.525291] systemd[1]: Starting systemd-remount-fs.service - Remount =
Root and Kernel File Systems...
> [    2.525934] systemd[1]: Starting systemd-udev-trigger.service - Coldpl=
ug All udev Devices...
> [    2.526986] systemd[1]: Mounted dev-hugepages.mount - Huge Pages File =
System.
> [    2.527080] loop: module loaded
> [    2.527251] systemd[1]: Mounted dev-mqueue.mount - POSIX Message Queue=
 File System.
> [    2.527461] systemd[1]: Mounted sys-kernel-debug.mount - Kernel Debug =
File System.
> [    2.527713] systemd[1]: Mounted sys-kernel-tracing.mount - Kernel Trac=
e File System.
> [    2.527737] device-mapper: core: CONFIG_IMA_DISABLE_HTABLE is disabled=
=2E Duplicate IMA measurements will not be recorded in the IMA log.
> [    2.527802] device-mapper: uevent: version 1.0.3
> [    2.527995] device-mapper: ioctl: 4.47.0-ioctl (2022-07-28) initialise=
d: dm-devel@redhat.com
> [    2.528018] systemd[1]: Finished kmod-static-nodes.service - Create Li=
st of Static Device Nodes.
> [    2.528404] systemd[1]: modprobe@configfs.service: Deactivated success=
fully.
> [    2.528528] systemd[1]: Finished modprobe@configfs.service - Load Kern=
el Module configfs.
> [    2.528735] systemd[1]: modprobe@dm_mod.service: Deactivated successfu=
lly.
> [    2.530305] systemd[1]: Finished modprobe@dm_mod.service - Load Kernel=
 Module dm_mod.
> [    2.531530] EXT4-fs (nvme1n1p3): re-mounted. Quota mode: none.
> [    2.531659] systemd[1]: modprobe@drm.service: Deactivated successfully.
> [    2.533983] systemd[1]: Finished modprobe@drm.service - Load Kernel Mo=
dule drm.
> [    2.535628] systemd[1]: modprobe@loop.service: Deactivated successfull=
y.
> [    2.536691] systemd[1]: Finished modprobe@loop.service - Load Kernel M=
odule loop.
> [    2.537789] systemd[1]: Finished systemd-modules-load.service - Load K=
ernel Modules.
> [    2.538923] systemd[1]: Finished systemd-remount-fs.service - Remount =
Root and Kernel File Systems.
> [    2.540450] systemd[1]: Mounting sys-kernel-config.mount - Kernel Conf=
iguration File System...
> [    2.541909] systemd[1]: systemd-firstboot.service - First Boot Wizard =
was skipped because of an unmet condition check (ConditionFirstBoot=3Dyes).
> [    2.543192] fuse: init (API version 7.37)
> [    2.543450] systemd[1]: Starting systemd-random-seed.service - Load/Sa=
ve Random Seed...
> [    2.544055] pstore: Registered efi as persistent store backend
> [    2.546237] systemd[1]: systemd-repart.service - Repartition Root Disk=
 was skipped because no trigger condition checks were met.
> [    2.547716] systemd[1]: Starting systemd-sysctl.service - Apply Kernel=
 Variables...
> [    2.549114] systemd[1]: Starting systemd-sysusers.service - Create Sys=
tem Users...
> [    2.550825] input: ITE Tech. Inc. ITE Device(8176) Wireless Radio Cont=
rol as /devices/pci0000:00/0000:00:14.0/usb1/1-8/1-8:1.0/0003:048D:C966.000=
6/input/input14
> [    2.551284] systemd[1]: modprobe@efi_pstore.service: Deactivated succe=
ssfully.
> [    2.552482] hid-generic 0003:048D:C966.0006: input,hiddev3,hidraw5: US=
B HID v1.10 Keyboard [ITE Tech. Inc. ITE Device(8176)] on usb-0000:00:14.0-=
8/input0
> [    2.553917] systemd[1]: Finished modprobe@efi_pstore.service - Load Ke=
rnel Module efi_pstore.
> [    2.556783] systemd[1]: Finished keyboard-setup.service - Set the cons=
ole keyboard layout.
> [    2.557932] systemd[1]: modprobe@fuse.service: Deactivated successfull=
y.
> [    2.559113] systemd[1]: Finished modprobe@fuse.service - Load Kernel M=
odule fuse.
> [    2.560301] systemd[1]: Mounted sys-kernel-config.mount - Kernel Confi=
guration File System.
> [    2.561405] systemd[1]: Finished systemd-random-seed.service - Load/Sa=
ve Random Seed.
> [    2.562510] systemd[1]: Finished systemd-sysctl.service - Apply Kernel=
 Variables.
> [    2.563692] systemd[1]: first-boot-complete.target - First Boot Comple=
te was skipped because of an unmet condition check (ConditionFirstBoot=3Dye=
s).
> [    2.565185] systemd[1]: Mounting sys-fs-fuse-connections.mount - FUSE =
Control File System...
> [    2.566151] systemd[1]: systemd-pstore.service - Platform Persistent S=
torage Archival was skipped because of an unmet condition check (ConditionD=
irectoryNotEmpty=3D/sys/fs/pstore).
> [    2.567502] systemd[1]: Mounted sys-fs-fuse-connections.mount - FUSE C=
ontrol File System.
> [    2.569423] systemd[1]: Finished systemd-sysusers.service - Create Sys=
tem Users.
> [    2.570952] systemd[1]: Starting systemd-tmpfiles-setup-dev.service - =
Create Static Device Nodes in /dev...
> [    2.579201] systemd[1]: Finished systemd-tmpfiles-setup-dev.service - =
Create Static Device Nodes in /dev.
> [    2.580326] systemd[1]: Reached target local-fs-pre.target - Preparati=
on for Local File Systems.
> [    2.581844] systemd[1]: Starting systemd-udevd.service - Rule-based Ma=
nager for Device Events and Files...
> [    2.597000] systemd[1]: Started systemd-journald.service - Journal Ser=
vice.
> [    2.602188] systemd-journald[2897]: Received client request to flush r=
untime journal.
> [    2.686677] usb 1-10: new full-speed USB device number 7 using xhci_hcd
> [    2.776376] intel_pmc_core INT33A1:00:  initialized
> [    2.779603] Consider using thermal netlink events interface
> [    2.779636] input: Intel HID events as /devices/platform/INTC1051:00/i=
nput/input15
> [    2.782683] intel-hid INTC1051:00: platform supports 5 button array
> [    2.784793] input: Intel HID 5 button array as /devices/platform/INTC1=
051:00/input/input16
> [    2.809745] Adding 5000188k swap on /dev/nvme1n1p2.  Priority:-2 exten=
ts:1 across:5000188k SSFS
> [    2.813485] ACPI: AC: AC Adapter [ACAD] (on-line)
> [    2.825679] input: Lid Switch as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0=
A08:00/device:1a/PNP0C0D:00/input/input17
> [    2.829897] ACPI: button: Lid Switch [LID0]
> [    2.837154] input: Sleep Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PN=
P0C0E:00/input/input18
> [    2.838856] ACPI: button: Sleep Button [SLPB]
> [    2.841705] usb 1-10: New USB device found, idVendor=3D8087, idProduct=
=3D0026, bcdDevice=3D 0.02
> [    2.843172] usb 1-10: New USB device strings: Mfr=3D0, Product=3D0, Se=
rialNumber=3D0
> [    2.848149] input: Power Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PN=
P0C0C:00/input/input19
> [    2.851168] ACPI: button: Power Button [PWRB]
> [    2.917282] EXT4-fs (nvme0n1p1): mounted filesystem with ordered data =
mode. Quota mode: none.
> [    2.931926] ACPI: battery: Slot [BAT1] (battery present)
> [    2.970176] EXT4-fs (nvme1n1p4): mounted filesystem with ordered data =
mode. Quota mode: none.
> [    2.972031] EDAC igen6: v2.5.1
> [    2.975760] mc: Linux media interface: v0.10
> [    2.977813] [drm:intel_backlight_device_update_status [i915]] updating=
 intel_backlight, brightness=3D96000/96000
> [    2.979486] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
 [i915]] set backlight level =3D 96000
> [    2.999545] videodev: Linux video capture interface: v2.00
> [    3.002723] intel-lpss 0000:00:15.0: enabling device (0004 -> 0006)
> [    3.003646] SCSI subsystem initialized
> [    3.004729] idma64 idma64.0: Found Intel integrated DMA 64-bit
> [    3.018808] input: Ideapad extra buttons as /devices/pci0000:00/0000:0=
0:1f.0/PNP0C09:00/VPC2004:00/input/input20
> [    3.026855] ideapad_acpi VPC2004:00: Keyboard backlight control not av=
ailable
> [    3.027150] usb-storage 1-1:1.0: USB Mass Storage device detected
> [    3.027186] cfg80211: Loading compiled-in X.509 certificates for regul=
atory database
> [    3.027327] cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'
> [    3.027450] cfg80211: Loaded X.509 cert 'wens: 61c038651aabdcf94bd0ac7=
ff06c7248db18c600'
> [    3.037207] scsi host0: usb-storage 1-1:1.0
> [    3.039027] usbcore: registered new interface driver usb-storage
> [    3.048453] i801_smbus 0000:00:1f.4: SPD Write Disable is set
> [    3.049109] mei_me 0000:00:16.0: enabling device (0000 -> 0002)
> [    3.049761] libata version 3.00 loaded.
> [    3.050018] i801_smbus 0000:00:1f.4: SMBus using PCI interrupt
> [    3.052769] cfg80211: loaded regulatory.db is malformed or signature i=
s missing/invalid
> [    3.071959] input: PC Speaker as /devices/platform/pcspkr/input/input21
> [    3.075193] resource sanity check: requesting [mem 0xfedc0000-0xfedcdf=
ff], which spans more than pnp 00:04 [mem 0xfedc0000-0xfedc7fff]
> [    3.076742] caller __uncore_imc_init_box+0xc4/0x120 [intel_uncore] map=
ping multiple BARs
> [    3.086690] i915 0000:00:02.0: [drm:intel_tc_port_update_mode [i915]] =
Port E/TC#2: TC port mode reset (tbt-alt -> disconnected)
> [    3.086878] i915 0000:00:02.0: [drm:intel_tc_port_update_mode [i915]] =
Port D/TC#1: TC port mode reset (tbt-alt -> disconnected)
> [    3.089867] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling TC_cold_off
> [    3.091481] i915 0000:00:02.0: [drm:__intel_display_power_put_domain [=
i915]] TC cold unblock succeeded
> [    3.099647] i2c i2c-14: 2/2 memory slots populated (from DMI)
> [    3.101585] i2c i2c-14: Successfully instantiated SPD at 0x50
> [    3.136262] input: ELAN0001:00 04F3:31AD Mouse as /devices/pci0000:00/=
0000:00:15.0/i2c_designware.0/i2c-13/i2c-ELAN0001:00/0018:04F3:31AD.0007/in=
put/input22
> [    3.137890] input: ELAN0001:00 04F3:31AD Touchpad as /devices/pci0000:=
00/0000:00:15.0/i2c_designware.0/i2c-13/i2c-ELAN0001:00/0018:04F3:31AD.0007=
/input/input24
> [    3.139515] hid-generic 0018:04F3:31AD.0007: input,hidraw6: I2C HID v1=
=2E00 Mouse [ELAN0001:00 04F3:31AD] on i2c-ELAN0001:00
> [    3.145065] Error: Driver 'pcspkr' is already registered, aborting...
> [    3.149368] usbcore: registered new interface driver uas
> [    3.152301] ideapad_acpi VPC2004:00: DYTC interface is not available
> [    3.157179] intel_rapl_common: Found RAPL domain package
> [    3.163632] RAPL PMU: API unit is 2^-32 Joules, 4 fixed counters, 6553=
60 ms ovfl timer
> [    3.164329] ahci 10000:e0:17.0: version 3.0
> [    3.165298] RAPL PMU: hw unit of domain pp0-core 2^-14 Joules
> [    3.166788] ahci 10000:e0:17.0: can't derive routing for PCI INT A
> [    3.168458] RAPL PMU: hw unit of domain package 2^-14 Joules
> [    3.170110] ahci 10000:e0:17.0: PCI INT A: no GSI
> [    3.171821] RAPL PMU: hw unit of domain pp1-gpu 2^-14 Joules
> [    3.171823] RAPL PMU: hw unit of domain psys 2^-14 Joules
> [    3.173448] ahci 10000:e0:17.0: AHCI 0001.0301 32 slots 1 ports 6 Gbps=
 0x1 impl SATA mode
> [    3.178230] ahci 10000:e0:17.0: flags: 64bit ncq sntf pm clo only pio =
slum part deso sadm sds=20
> [    3.180215] Intel(R) Wireless WiFi driver for Linux
> [    3.181942] scsi host1: ahci
> [    3.183594] ata1: SATA max UDMA/133 abar m2048@0x52202000 port 0x52202=
100 irq 167
> [    3.184109] cryptd: max_cpu_qlen set to 1000
> [    3.199571] usb 1-6: Found UVC 1.00 device Integrated Camera (13d3:56f=
f)
> [    3.203788] r8169 0000:02:00.0 eth0: RTL8168h/8111h, 60:c7:27:09:b2:fc=
, XID 541, IRQ 178
> [    3.203998] iwlwifi 0000:00:14.3: api flags index 2 larger than suppor=
ted by driver
> [    3.205290] r8169 0000:02:00.0 eth0: jumbo features [frames: 9194 byte=
s, tx checksumming: ko]
> [    3.205728] input: Integrated Camera: Integrated C as /devices/pci0000=
:00/0000:00:14.0/usb1/1-6/1-6:1.0/input/input25
> [    3.205781] usbcore: registered new interface driver uvcvideo
> [    3.206704] iwlwifi 0000:00:14.3: TLV_FW_FSEQ_VERSION: FSEQ Version: 8=
9.3.35.37
> [    3.206726] usb 1-2: Warning! Unlikely big volume range (=3D496), cval=
->res is probably wrong.
> [    3.206728] usb 1-2: [51] FU [Mic Playback Volume] ch =3D 1, val =3D 0=
/7936/16
> [    3.211683] usb 1-2: Warning! Unlikely big volume range (=3D1008), cva=
l->res is probably wrong.
> [    3.212624] iwlwifi 0000:00:14.3: loaded firmware version 72.daa05125.=
0 QuZ-a0-hr-b0-72.ucode op_mode iwlmvm
> [    3.213540] usb 1-2: [49] FU [Speaker Playback Volume] ch =3D 2, val =
=3D -16129/-1/16
> [    3.221850] usb 1-2: Warning! Unlikely big volume range (=3D496), cval=
->res is probably wrong.
> [    3.221852] usb 1-2: [50] FU [Mic Capture Volume] ch =3D 1, val =3D 0/=
7936/16
> [    3.221952] usbcore: registered new interface driver snd-usb-audio
> [    3.251762] intel_rapl_common: Found RAPL domain package
> [    3.251765] intel_rapl_common: Found RAPL domain core
> [    3.251766] intel_rapl_common: Found RAPL domain uncore
> [    3.251768] intel_rapl_common: Found RAPL domain psys
> [    3.253163] i915 0000:00:02.0: [drm:i915_hdcp_component_bind [i915]] I=
915 HDCP comp bind
> [    3.253249] mei_hdcp 0000:00:16.0-b638ab7e-94e2-4ea2-a552-d1c54b627f04=
: bound 0000:00:02.0 (ops i915_hdcp_component_ops [i915])
> [    3.258016] AVX2 version of gcm_enc/dec engaged.
> [    3.258041] AES CTR mode by8 optimization enabled
> [    3.267652] ee1004 14-0050: 512 byte EE1004-compliant SPD EEPROM, read=
-only
> [    3.325598] audit: type=3D1400 audit(1723698742.527:2): apparmor=3D"ST=
ATUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"libreoffice=
-senddoc" pid=3D6228 comm=3D"apparmor_parser"
> [    3.326747] audit: type=3D1400 audit(1723698742.527:3): apparmor=3D"ST=
ATUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"libreoffice=
-xpdfimport" pid=3D6280 comm=3D"apparmor_parser"
> [    3.327882] audit: type=3D1400 audit(1723698742.527:4): apparmor=3D"ST=
ATUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"lsb_release=
" pid=3D6220 comm=3D"apparmor_parser"
> [    3.328945] audit: type=3D1400 audit(1723698742.527:5): apparmor=3D"ST=
ATUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"libreoffice=
-oosplash" pid=3D6227 comm=3D"apparmor_parser"
> [    3.330050] audit: type=3D1400 audit(1723698742.531:6): apparmor=3D"ST=
ATUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"nvidia_modp=
robe" pid=3D6221 comm=3D"apparmor_parser"
> [    3.331189] audit: type=3D1400 audit(1723698742.531:7): apparmor=3D"ST=
ATUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"nvidia_modp=
robe//kmod" pid=3D6221 comm=3D"apparmor_parser"
> [    3.332272] audit: type=3D1400 audit(1723698742.531:8): apparmor=3D"ST=
ATUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"/usr/bin/ma=
n" pid=3D6225 comm=3D"apparmor_parser"
> [    3.333358] audit: type=3D1400 audit(1723698742.531:9): apparmor=3D"ST=
ATUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"man_filter"=
 pid=3D6225 comm=3D"apparmor_parser"
> [    3.334504] audit: type=3D1400 audit(1723698742.531:10): apparmor=3D"S=
TATUS" operation=3D"profile_load" profile=3D"unconfined" name=3D"man_groff"=
 pid=3D6225 comm=3D"apparmor_parser"
> [    3.369230] input: ELAN0001:00 04F3:31AD Mouse as /devices/pci0000:00/=
0000:00:15.0/i2c_designware.0/i2c-13/i2c-ELAN0001:00/0018:04F3:31AD.0007/in=
put/input26
> [    3.370308] input: ELAN0001:00 04F3:31AD Touchpad as /devices/pci0000:=
00/0000:00:15.0/i2c_designware.0/i2c-13/i2c-ELAN0001:00/0018:04F3:31AD.0007=
/input/input28
> [    3.371493] hid-multitouch 0018:04F3:31AD.0007: input,hidraw6: I2C HID=
 v1.00 Mouse [ELAN0001:00 04F3:31AD] on i2c-ELAN0001:00
> [    3.498697] ata1: SATA link down (SStatus 0 SControl 300)
> [    3.522911] iTCO_vendor_support: vendor-support=3D0
> [    3.549141] alg: No test for fips(ansi_cprng) (fips_ansi_cprng)
> [    3.553116] iTCO_wdt iTCO_wdt: Found a Intel PCH TCO device (Version=
=3D6, TCOBASE=3D0x0400)
> [    3.558830] r8169 0000:02:00.0 enp2s0: renamed from eth0
> [    3.559648] iTCO_wdt iTCO_wdt: initialized. heartbeat=3D30 sec (nowayo=
ut=3D0)
> [    3.578232] snd_hda_intel 0000:00:1f.3: DSP detected with PCI class/su=
bclass/prog-if info 0x040100
> [    3.580129] snd_hda_intel 0000:00:1f.3: Digital mics found on Skylake+=
 platform, using SOF driver
> [    3.641900] Bluetooth: Core ver 2.22
> [    3.643188] NET: Registered PF_BLUETOOTH protocol family
> [    3.644443] Bluetooth: HCI device and connection manager initialized
> [    3.646174] Bluetooth: HCI socket layer initialized
> [    3.647564] Bluetooth: L2CAP socket layer initialized
> [    3.648550] Bluetooth: SCO socket layer initialized
> [    3.656088] iwlwifi 0000:00:14.3: Detected Intel(R) Wi-Fi 6 AX201 160M=
Hz, REV=3D0x351
> [    3.657407] thermal thermal_zone8: failed to read out thermal zone (-6=
1)
> [    3.661153] usbcore: registered new interface driver btusb
> [    3.661810] Bluetooth: hci0: Bootloader revision 0.4 build 0 week 30 2=
018
> [    3.665031] Bluetooth: hci0: Device revision is 2
> [    3.666617] Bluetooth: hci0: Secure boot is enabled
> [    3.668149] Bluetooth: hci0: OTP lock is enabled
> [    3.669553] Bluetooth: hci0: API lock is enabled
> [    3.670955] Bluetooth: hci0: Debug lock is disabled
> [    3.672478] Bluetooth: hci0: Minimum firmware build 1 week 10 2014
> [    3.675783] Bluetooth: hci0: Found device firmware: intel/ibt-19-0-4.s=
fi
> [    3.677340] Bluetooth: hci0: Boot Address: 0x24800
> [    3.678825] Bluetooth: hci0: Firmware Version: 15-45.22
> [    3.684980] sof-audio-pci-intel-tgl 0000:00:1f.3: DSP detected with PC=
I class/subclass/prog-if info 0x040100
> [    3.686121] sof-audio-pci-intel-tgl 0000:00:1f.3: Digital mics found o=
n Skylake+ platform, using SOF driver
> [    3.687327] sof-audio-pci-intel-tgl 0000:00:1f.3: enabling device (000=
0 -> 0002)
> [    3.688899] sof-audio-pci-intel-tgl 0000:00:1f.3: DSP detected with PC=
I class/subclass/prog-if 0x040100
> [    3.690272] sof-audio-pci-intel-tgl 0000:00:1f.3: bound 0000:00:02.0 (=
ops i915_audio_component_bind_ops [i915])
> [    3.691750] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling PW_2
> [    3.693055] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling PW_3
> [    3.694101] i915 0000:00:02.0: [drm:i915_audio_component_get_power [i9=
15]] restored AUD_FREQ_CNTRL to 0x8010
> [    3.702405] sof-audio-pci-intel-tgl 0000:00:1f.3: use msi interrupt mo=
de
> [    3.723974] sof-audio-pci-intel-tgl 0000:00:1f.3: hda codecs found, ma=
sk 5
> [    3.724888] sof-audio-pci-intel-tgl 0000:00:1f.3: using HDA machine dr=
iver skl_hda_dsp_generic now
> [    3.725780] sof-audio-pci-intel-tgl 0000:00:1f.3: DMICs detected in NH=
LT tables: 2
> [    3.728014] sof-audio-pci-intel-tgl 0000:00:1f.3: Firmware info: versi=
on 2:2:0-57864
> [    3.728908] sof-audio-pci-intel-tgl 0000:00:1f.3: Firmware: ABI 3:22:1=
 Kernel ABI 3:23:0
> [    3.729778] sof-audio-pci-intel-tgl 0000:00:1f.3: unknown sof_ext_man =
header type 3 size 0x30
> [    3.783934] iwlwifi 0000:00:14.3: Detected RF HR B3, rfid=3D0x10a100
> [    3.826560] sof-audio-pci-intel-tgl 0000:00:1f.3: Firmware info: versi=
on 2:2:0-57864
> [    3.827467] sof-audio-pci-intel-tgl 0000:00:1f.3: Firmware: ABI 3:22:1=
 Kernel ABI 3:23:0
> [    3.833675] sof-audio-pci-intel-tgl 0000:00:1f.3: Topology: ABI 3:22:1=
 Kernel ABI 3:23:0
> [    3.834742] skl_hda_dsp_generic skl_hda_dsp_generic: ASoC: Parent card=
 not yet available, widget card binding deferred
> [    3.847314] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling PW_3
> [    3.848234] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling PW_2
> [    3.849990] iwlwifi 0000:00:14.3: base HW address: e4:0d:36:80:ae:3f
> [    3.855262] snd_hda_codec_realtek ehdaudio0D0: autoconfig for ALC257: =
line_outs=3D1 (0x14/0x0/0x0/0x0/0x0) type:speaker
> [    3.856100] snd_hda_codec_realtek ehdaudio0D0:    speaker_outs=3D0 (0x=
0/0x0/0x0/0x0/0x0)
> [    3.856925] snd_hda_codec_realtek ehdaudio0D0:    hp_outs=3D1 (0x21/0x=
0/0x0/0x0/0x0)
> [    3.857737] snd_hda_codec_realtek ehdaudio0D0:    mono: mono_out=3D0x0
> [    3.858559] snd_hda_codec_realtek ehdaudio0D0:    inputs:
> [    3.859427] snd_hda_codec_realtek ehdaudio0D0:      Mic=3D0x19
> [    3.911974] skl_hda_dsp_generic skl_hda_dsp_generic: hda_dsp_hdmi_buil=
d_controls: no PCM in topology for HDMI converter 3
> [    3.912808] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling PW_2
> [    3.913701] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling PW_3
> [    3.914575] i915 0000:00:02.0: [drm:i915_audio_component_get_power [i9=
15]] restored AUD_FREQ_CNTRL to 0x8010
> [    3.927401] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port A
> [    3.927485] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port A
> [    3.927528] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port A
> [    3.927569] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port A
> [    3.927607] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port B
> [    3.927645] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port B
> [    3.927682] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port B
> [    3.927718] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port B
> [    3.927753] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port C
> [    3.927787] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port C
> [    3.927822] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port C
> [    3.927856] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port C
> [    3.927890] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port D
> [    3.927924] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port D
> [    3.927957] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port D
> [    3.927990] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port D
> [    3.928024] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port E
> [    3.928059] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port E
> [    3.928097] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port E
> [    3.928134] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port E
> [    3.928171] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port F
> [    3.928206] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port F
> [    3.928242] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port F
> [    3.928276] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port F
> [    3.928310] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port G
> [    3.928344] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port G
> [    3.928377] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port G
> [    3.928410] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port G
> [    3.938825] iwlwifi 0000:00:14.3 wlp0s20f3: renamed from wlan0
> [    3.938974] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port H
> [    3.951272] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port H
> [    3.951968] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port H
> [    3.952012] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port H
> [    3.952066] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port I
> [    3.952110] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port I
> [    3.952149] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
> [    3.952151] Bluetooth: BNEP filters: protocol multicast
> [    3.952155] Bluetooth: BNEP socket layer initialized
> [    3.952151] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port I
> [    3.952202] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port I
> [    3.952261] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling PW_3
> [    3.952321] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling PW_2
> [    3.952548] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling PW_2
> [    3.952600] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling PW_3
> [    3.952668] i915 0000:00:02.0: [drm:i915_audio_component_get_power [i9=
15]] restored AUD_FREQ_CNTRL to 0x8010
> [    3.957693] input: sof-hda-dsp Mic as /devices/pci0000:00/0000:00:1f.3=
/skl_hda_dsp_generic/sound/card1/input29
> [    3.963977] input: sof-hda-dsp Headphone as /devices/pci0000:00/0000:0=
0:1f.3/skl_hda_dsp_generic/sound/card1/input30
> [    3.964025] input: sof-hda-dsp HDMI/DP,pcm=3D3 as /devices/pci0000:00/=
0000:00:1f.3/skl_hda_dsp_generic/sound/card1/input31
> [    3.964049] input: sof-hda-dsp HDMI/DP,pcm=3D4 as /devices/pci0000:00/=
0000:00:1f.3/skl_hda_dsp_generic/sound/card1/input32
> [    3.964080] input: sof-hda-dsp HDMI/DP,pcm=3D5 as /devices/pci0000:00/=
0000:00:1f.3/skl_hda_dsp_generic/sound/card1/input33
> [    3.965832] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling PW_3
> [    3.968416] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling PW_2
> [    4.044938] NET: Registered PF_QIPCRTR protocol family
> [    4.048071] scsi 0:0:0:0: CD-ROM            PING IT( SZ)              =
     PQ: 0 ANSI: 2
> [    4.052492] scsi 0:0:0:0: Attached scsi generic sg0 type 5
> [    4.058398] sr 0:0:0:0: [sr0] scsi-1 drive
> [    4.059190] cdrom: Uniform CD-ROM driver Revision: 3.20
> [    4.061444] sr 0:0:0:0: [sr0] Hmm, seems the drive doesn't support mul=
tisession CD's
> [    4.068290] sr 0:0:0:0: Attached scsi CD-ROM sr0
> [    4.102687] Generic FE-GE Realtek PHY r8169-0-200:00: attached PHY dri=
ver (mii_bus:phy_addr=3Dr8169-0-200:00, irq=3DMAC)
> [    4.180714] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:354]
> [    4.303131] r8169 0000:02:00.0 enp2s0: Link is Down
> [    4.377565] i915 0000:00:02.0: [drm:i915_gem_context_create_ioctl [i91=
5]] HW context 1 created
> [    4.381280] i915 0000:00:02.0: [drm:i915_perf_remove_config_ioctl [i91=
5]] Failed to remove unknown OA config
> [    4.381350] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 7e1c6469-9de7-491a-a7c5-1bd8f9966826 id=3D2
> [    4.381399] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 684ed715-a0ca-499b-89e0-25d1cdf0c737 id=3D3
> [    4.381447] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 4066ad45-4a68-4acf-86b2-fa5a6a914db7 id=3D4
> [    4.381488] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 30cd8433-f679-401e-b578-19e22975e84f id=3D5
> [    4.381530] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 0fc397c0-4833-492c-9ccd-4929d574d5b8 id=3D6
> [    4.381570] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config fb65c819-7ac2-4c69-aa9d-b72a18440705 id=3D7
> [    4.381623] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config f3723f39-ecf4-4ff2-a4c4-80e87876b86f id=3D8
> [    4.381667] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config d5890d02-b2be-4742-a16e-17190a92a301 id=3D9
> [    4.381706] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config a43f80cd-5cc1-4a2c-a750-40594af2b661 id=3D10
> [    4.381746] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config e0efab61-c904-4354-9fc5-35e8b8bc7d20 id=3D11
> [    4.381787] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config ee6f5fa3-13a8-4842-8b34-f7541a0f76a3 id=3D12
> [    4.381829] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 0c3c3235-2e91-4ef0-8562-4ea1501e8612 id=3D13
> [    4.381870] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 414ff049-80d3-48c0-b79a-bd8eed097a06 id=3D14
> [    4.381912] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 17e2be13-39fe-45f0-867c-0f83fcc51654 id=3D15
> [    4.381958] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 397a46d9-03dd-4696-8196-270362e1c575 id=3D16
> [    4.381996] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 6607f034-d053-40d1-8215-67c07f3041bb id=3D17
> [    4.382035] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 6f02479c-e9ca-4c2b-b1e6-216a9e1c5ef7 id=3D18
> [    4.382071] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config c0d2cd0a-e2be-4b12-916d-2f3aba0ebf9e id=3D19
> [    4.382117] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 8ecaeff2-78f4-4e29-b331-d757e6a74ed0 id=3D20
> [    4.382160] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config f1577929-9215-488b-9899-d12b6e799743 id=3D21
> [    4.382199] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 7e809cb4-6e90-44cc-9c57-6eff58ad360a id=3D22
> [    4.382235] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 0dde1bb6-340f-4350-b398-2b0228573967 id=3D23
> [    4.382272] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 19fe64eb-ac4f-45c6-b2b9-af728b21753b id=3D24
> [    4.382307] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 1fbbd218-693c-4035-b4c0-ce4dd139d828 id=3D25
> [    4.382344] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 3a4c7510-7725-4bf8-9eae-59115a2431c6 id=3D26
> [    4.382380] i915 0000:00:02.0: [drm:i915_perf_add_config_ioctl [i915]]=
 Added config 7e6e555c-aa5b-4c8d-992a-454a5a335c6e id=3D27
> [    4.384924] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:308:eDP-1]
> [    4.384939] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:308:eDP-1]
> [    4.384992] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [ENCODER:3=
07:DDI A/PHY A] MST support: port: no, sink: no, modparam: yes
> [    4.385034] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sourc=
e rates: 162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000
> [    4.385073] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sink =
rates: 162000, 270000
> [    4.385110] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] commo=
n rates: 162000, 270000
> [    4.385148] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:308:eDP-1] VRR capable: yes
> [    4.385186] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:308:eDP-1] DFP max bpc 0, max dotclock 0, TMDS clock 0-0, PCON Max FRL B=
W 0Gbps
> [    4.385648] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] PCON ENC=
ODER DSC DPCD: 00 00 00 00 00 00 00 00 00 00 00 00 00
> [    4.385685] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:308:eDP-1] RGB->YcbCr conversion? no, YCbCr 4:2:0 allowed? yes, YCbCr 4:=
4:4->4:2:0 conversion? no
> [    4.386335] [drm:update_display_info [drm]] Supported Monitor Refresh =
rate range is 48 Hz - 60 Hz
> [    4.386360] [drm:update_display_info [drm]] Supported Monitor Refresh =
rate range is 48 Hz - 60 Hz
> [    4.386376] [drm:_drm_edid_connector_update [drm]] ELD monitor=20
> [    4.386391] [drm:_drm_edid_connector_update [drm]] ELD size 20, SAD co=
unt 0
> [    4.386423] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:308:eDP-1] probed modes :
> [    4.386432] [drm:drm_mode_debug_printmodeline [drm]] Modeline "1920x10=
80": 60 166010 1920 2028 2076 2120 1080 1090 1100 1304 0x48 0xa
> [    4.386536] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:317:DP-1]
> [    4.386545] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:317:DP-1]
> [    4.386609] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:317:DP-1] disconnected
> [    4.386669] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:329:HDMI-A-1]
> [    4.386678] i915 0000:00:02.0: [drm:intel_hdmi_detect [i915]] [CONNECT=
OR:329:HDMI-A-1]
> [    4.386734] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:329:HDMI-A-1] disconnected
> [    4.386786] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:335:DP-2]
> [    4.386794] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:335:DP-2]
> [    4.386835] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling TC_cold_off
> [    4.386889] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] TC=
 cold block succeeded
> [    4.386932] i915 0000:00:02.0: [drm:icl_tc_port_live_status_mask [i915=
]] Port D/TC#1: PHY in TCCOLD, nothing connected
> [    4.386971] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling TC_cold_off
> [    4.387019] i915 0000:00:02.0: [drm:__intel_display_power_put_domain [=
i915]] TC cold unblock succeeded
> [    4.387060] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling TC_cold_off
> [    4.387113] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] TC=
 cold block succeeded
> [    4.387152] i915 0000:00:02.0: [drm:tc_phy_status_complete [i915]] Por=
t D/TC#1: PHY in TCCOLD, assuming not complete
> [    4.387190] i915 0000:00:02.0: [drm:intel_tc_port_update_mode [i915]] =
Port D/TC#1: PHY not ready
> [    4.387228] i915 0000:00:02.0: [drm:intel_tc_port_update_mode [i915]] =
Port D/TC#1: TC port mode reset (disconnected -> tbt-alt)
> [    4.387270] i915 0000:00:02.0: [drm:icl_tc_port_live_status_mask [i915=
]] Port D/TC#1: PHY in TCCOLD, nothing connected
> [    4.387307] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:335:DP-2] disconnected
> [    4.387355] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:344:DP-3]
> [    4.387363] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:344:DP-3]
> [    4.387400] i915 0000:00:02.0: [drm:icl_tc_port_live_status_mask [i915=
]] Port E/TC#2: PHY in TCCOLD, nothing connected
> [    4.387437] i915 0000:00:02.0: [drm:tc_phy_status_complete [i915]] Por=
t E/TC#2: PHY in TCCOLD, assuming not complete
> [    4.387475] i915 0000:00:02.0: [drm:intel_tc_port_update_mode [i915]] =
Port E/TC#2: PHY not ready
> [    4.387513] i915 0000:00:02.0: [drm:intel_tc_port_update_mode [i915]] =
Port E/TC#2: TC port mode reset (disconnected -> tbt-alt)
> [    4.387552] i915 0000:00:02.0: [drm:icl_tc_port_live_status_mask [i915=
]] Port E/TC#2: PHY in TCCOLD, nothing connected
> [    4.387588] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:344:DP-3] disconnected
> [    4.388087] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:308:eDP-1]
> [    4.388096] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:308:eDP-1]
> [    4.388140] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [ENCODER:3=
07:DDI A/PHY A] MST support: port: no, sink: no, modparam: yes
> [    4.388179] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sourc=
e rates: 162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000
> [    4.388216] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] sink =
rates: 162000, 270000
> [    4.388253] i915 0000:00:02.0: [drm:intel_dp_print_rates [i915]] commo=
n rates: 162000, 270000
> [    4.388290] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:308:eDP-1] VRR capable: yes
> [    4.388329] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:308:eDP-1] DFP max bpc 0, max dotclock 0, TMDS clock 0-0, PCON Max FRL B=
W 0Gbps
> [    4.388765] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] PCON ENC=
ODER DSC DPCD: 00 00 00 00 00 00 00 00 00 00 00 00 00
> [    4.388803] i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECT=
OR:308:eDP-1] RGB->YcbCr conversion? no, YCbCr 4:2:0 allowed? yes, YCbCr 4:=
4:4->4:2:0 conversion? no
> [    4.389449] [drm:update_display_info [drm]] Supported Monitor Refresh =
rate range is 48 Hz - 60 Hz
> [    4.389472] [drm:update_display_info [drm]] Supported Monitor Refresh =
rate range is 48 Hz - 60 Hz
> [    4.389488] [drm:_drm_edid_connector_update [drm]] ELD monitor=20
> [    4.389503] [drm:_drm_edid_connector_update [drm]] ELD size 20, SAD co=
unt 0
> [    4.389534] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:308:eDP-1] probed modes :
> [    4.389541] [drm:drm_mode_debug_printmodeline [drm]] Modeline "1920x10=
80": 60 166010 1920 2028 2076 2120 1080 1090 1100 1304 0x48 0xa
> [    4.390017] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:317:DP-1]
> [    4.390027] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:317:DP-1]
> [    4.390088] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:317:DP-1] disconnected
> [    4.390103] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:329:HDMI-A-1]
> [    4.390111] i915 0000:00:02.0: [drm:intel_hdmi_detect [i915]] [CONNECT=
OR:329:HDMI-A-1]
> [    4.390173] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:329:HDMI-A-1] disconnected
> [    4.390186] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:335:DP-2]
> [    4.390194] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:335:DP-2]
> [    4.390235] i915 0000:00:02.0: [drm:icl_tc_port_live_status_mask [i915=
]] Port D/TC#1: PHY in TCCOLD, nothing connected
> [    4.390278] i915 0000:00:02.0: [drm:icl_tc_port_live_status_mask [i915=
]] Port D/TC#1: PHY in TCCOLD, nothing connected
> [    4.390321] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:335:DP-2] disconnected
> [    4.390334] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:344:DP-3]
> [    4.390342] i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR=
:344:DP-3]
> [    4.390382] i915 0000:00:02.0: [drm:icl_tc_port_live_status_mask [i915=
]] Port E/TC#2: PHY in TCCOLD, nothing connected
> [    4.390423] i915 0000:00:02.0: [drm:icl_tc_port_live_status_mask [i915=
]] Port E/TC#2: PHY in TCCOLD, nothing connected
> [    4.390463] [drm:drm_helper_probe_single_connector_modes [drm_kms_help=
er]] [CONNECTOR:344:DP-3] disconnected
> [    5.394668] i915 0000:00:02.0: [drm:intel_tc_port_update_mode [i915]] =
Port E/TC#2: TC port mode reset (tbt-alt -> disconnected)
> [    5.394700] i915 0000:00:02.0: [drm:intel_tc_port_update_mode [i915]] =
Port D/TC#1: TC port mode reset (tbt-alt -> disconnected)
> [    5.394752] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling TC_cold_off
> [    5.394811] i915 0000:00:02.0: [drm:__intel_display_power_put_domain [=
i915]] TC cold unblock succeeded
> [    5.421223] Bluetooth: hci0: Waiting for firmware download to complete
> [    5.422833] Bluetooth: hci0: Firmware loaded in 1704709 usecs
> [    5.422864] Bluetooth: hci0: Waiting for device to boot
> [    5.438006] Bluetooth: hci0: Device booted in 14795 usecs
> [    5.438269] Bluetooth: hci0: Found Intel DDC parameters: intel/ibt-19-=
0-4.ddc
> [    5.440095] Bluetooth: hci0: Applying Intel DDC parameters completed
> [    5.441064] Bluetooth: hci0: Firmware revision 0.4 build 15 week 45 20=
22
> [    5.462476] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:355]
> [    5.462582] [drm:drm_mode_setcrtc [drm]] [CRTC:98:pipe A]
> [    5.462633] [drm:drm_mode_setcrtc [drm]] [CONNECTOR:308:eDP-1]
> [    5.507247] Bluetooth: MGMT ver 1.22
> [    5.513318] NET: Registered PF_ALG protocol family
> [    5.529030] [drm:drm_mode_setcrtc [drm]] [CRTC:167:pipe B]
> [    5.529163] [drm:drm_mode_setcrtc [drm]] [CRTC:236:pipe C]
> [    5.529237] [drm:drm_mode_setcrtc [drm]] [CRTC:305:pipe D]
> [    5.536545] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm ->=
 *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7,*twm, swm, stwm
> [    5.536606] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]   lines    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    2,   5,   5,   5,   5,   6,   9,  10,   0,   0,    0
> [    5.536652] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]  blocks    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    6,  16,  16,  16,  16,  19,  28,  31,  20,   0,    0
> [    5.536695] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    8,  19,  19,  19,  19,  22,  32,  36,  21,   0,    0
> [    5.950722] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling PW_2
> [    5.950811] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling PW_3
> [    5.950884] i915 0000:00:02.0: [drm:i915_audio_component_get_power [i9=
15]] restored AUD_FREQ_CNTRL to 0x8010
> [    5.963429] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling PW_3
> [    5.963489] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling PW_2
> [    5.980645] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling PW_2
> [    5.980795] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] en=
abling PW_3
> [    5.980975] i915 0000:00:02.0: [drm:i915_audio_component_get_power [i9=
15]] restored AUD_FREQ_CNTRL to 0x8010
> [    5.994629] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port A
> [    5.994715] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port A
> [    5.994780] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port A
> [    5.994839] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port A
> [    5.994899] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port B
> [    5.994958] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port B
> [    5.995016] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port B
> [    5.995072] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port B
> [    5.995130] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port C
> [    5.995191] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port C
> [    5.995247] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port C
> [    5.995305] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port C
> [    5.995362] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port D
> [    5.995422] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port D
> [    5.995479] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port D
> [    5.995526] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port D
> [    5.995562] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port E
> [    5.995598] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port E
> [    5.995636] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port E
> [    5.995687] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port E
> [    5.995722] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port F
> [    5.995755] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port F
> [    5.995792] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port F
> [    5.995841] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port F
> [    5.995874] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port G
> [    5.995906] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port G
> [    5.995941] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port G
> [    5.995991] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port G
> [    5.996027] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port H
> [    5.996063] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port H
> [    5.996100] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port H
> [    5.996140] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port H
> [    5.996177] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port I
> [    5.996211] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port I
> [    5.996247] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port I
> [    5.996288] i915 0000:00:02.0: [drm:i915_audio_component_get_eld [i915=
]] Not valid for port I
> [    6.125685] i915 0000:00:02.0: [drm:i915_gem_context_create_ioctl [i91=
5]] HW context 1 created
> [    6.158642] i915 0000:00:02.0: [drm:i915_gem_context_create_ioctl [i91=
5]] HW context 1 created
> [    6.192220] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:357]
> [    6.195235] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:358]
> [    6.211874] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:310]
> [    6.228568] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:357]
> [    6.245294] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:310]
> [    6.261929] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:357]
> [    6.278525] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:310]
> [    6.295039] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:357]
> [    6.307739] Bluetooth: RFCOMM TTY layer initialized
> [    6.307750] Bluetooth: RFCOMM socket layer initialized
> [    6.307758] Bluetooth: RFCOMM ver 1.11
> [    6.311675] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:310]
> [    6.328462] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:357]
> [    6.345124] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:310]
> [    6.361834] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:357]
> [    6.378425] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:310]
> [    6.394982] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:357]
> [    6.411724] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:310]
> [    6.428311] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:357]
> [    6.445090] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:310]
> [    6.461636] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:357]
> [    6.678563] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:310]
> [    7.153827] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:357]
> [    7.379193] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:310]
> [    7.437174] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:357]
> [    7.438725] i915 0000:00:02.0: [drm:intel_pps_vdd_off_sync_unlocked [i=
915]] Turning [ENCODER:307:DDI A/PHY A] VDD off
> [    7.438965] i915 0000:00:02.0: [drm:intel_pps_vdd_off_sync_unlocked [i=
915]] PP_STATUS: 0x80000008 PP_CONTROL: 0x00000067
> [    7.577187] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:310]
> [    7.641100] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:357]
> [    7.712911] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:310]
> [    7.924757] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:357]
> [    7.961168] wlp0s20f3: authenticate with 8c:de:f9:c1:1b:10
> [    7.968787] wlp0s20f3: send auth to 8c:de:f9:c1:1b:10 (try 1/3)
> [    8.056809] wlp0s20f3: authenticated
> [    8.058704] wlp0s20f3: associate with 8c:de:f9:c1:1b:10 (try 1/3)
> [    8.083009] wlp0s20f3: RX AssocResp from 8c:de:f9:c1:1b:10 (capab=3D0x=
31 status=3D0 aid=3D2)
> [    8.087525] wlp0s20f3: associated
> [    8.094642] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:310]
> [    8.161883] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:357]
> [    8.305125] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:310]
> [    8.389273] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:357]
> [    8.519238] IPv6: ADDRCONF(NETDEV_CHANGE): wlp0s20f3: link becomes rea=
dy
> [    8.559901] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:310]
> [    8.576458] i915 0000:00:02.0: [drm:drm_mode_rmfb_work_fn [drm]] Remov=
ing [FB:357] from all active usage due to RMFB ioctl
> [    8.677238] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:357]
> [    8.889363] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:310]
> [    9.165396] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:357]
> [    9.201481] i915 0000:00:02.0: [drm:drm_mode_addfb2 [drm]] [FB:310]
> [    9.624990] i915 0000:00:02.0: [drm:i915_gem_context_create_ioctl [i91=
5]] HW context 1 created
> [   10.324612] i915 0000:00:02.0: [drm:i915_gem_context_create_ioctl [i91=
5]] HW context 1 created
> [   10.347057] i915 0000:00:02.0: [drm:i915_gem_context_create_ioctl [i91=
5]] HW context 2 created
> [   10.726318] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]   level *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7,*twm, swm, stwm ->=
  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
> [   10.726378] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]   lines    2,   5,   5,   5,   5,   6,   9,  10,   0,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [   10.726421] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]  blocks    6,  16,  16,  16,  16,  19,  28,  31,  20,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [   10.726461] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A] min_ddb    8,  19,  19,  19,  19,  22,  32,  36,  21,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [   15.195160] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm ->=
 *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7,*twm, swm, stwm
> [   15.195337] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]   lines    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    2,   5,   5,   5,   5,   6,   9,  10,   0,   0,    0
> [   15.195486] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]  blocks    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    6,  16,  16,  16,  16,  19,  28,  31,  20,   0,    0
> [   15.195619] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    8,  19,  19,  19,  19,  22,  32,  36,  21,   0,    0
> [   15.984885] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling PW_3
> [   15.985061] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling PW_2
> [   15.985199] i915 0000:00:02.0: [drm:intel_power_well_disable [i915]] d=
isabling DC_off
> [   15.985326] i915 0000:00:02.0: [drm:skl_enable_dc6 [i915]] Enabling DC6
> [   15.985448] i915 0000:00:02.0: [drm:gen9_set_dc_state.part.0 [i915]] S=
etting DC state from 00 to 02
> [   18.582745] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]   level *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7,*twm, swm, stwm ->=
  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
> [   18.582919] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]   lines    2,   5,   5,   5,   5,   6,   9,  10,   0,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [   18.583064] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]  blocks    6,  16,  16,  16,  16,  19,  28,  31,  20,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [   18.583199] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A] min_ddb    8,  19,  19,  19,  19,  22,  32,  36,  21,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [   32.194918] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm ->=
 *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7,*twm, swm, stwm
> [   32.195082] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]   lines    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    2,   5,   5,   5,   5,   6,   9,  10,   0,   0,    0
> [   32.195220] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]  blocks    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    6,  16,  16,  16,  16,  19,  28,  31,  20,   0,    0
> [   32.195343] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    8,  19,  19,  19,  19,  22,  32,  36,  21,   0,    0
> [   35.014626] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]   level *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7,*twm, swm, stwm ->=
  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
> [   35.014820] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]   lines    2,   5,   5,   5,   5,   6,   9,  10,   0,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [   35.014970] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]  blocks    6,  16,  16,  16,  16,  19,  28,  31,  20,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [   35.015083] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A] min_ddb    8,  19,  19,  19,  19,  22,  32,  36,  21,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [   37.072124] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm ->=
 *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7,*twm, swm, stwm
> [   37.072286] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]   lines    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    2,   5,   5,   5,   5,   6,   9,  10,   0,   0,    0
> [   37.072419] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]  blocks    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    6,  16,  16,  16,  16,  19,  28,  31,  20,   0,    0
> [   37.072542] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    8,  19,  19,  19,  19,  22,  32,  36,  21,   0,    0
> [   37.894899] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]   level *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7,*twm, swm, stwm ->=
  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
> [   37.895064] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]   lines    2,   5,   5,   5,   5,   6,   9,  10,   0,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [   37.895201] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]  blocks    6,  16,  16,  16,  16,  19,  28,  31,  20,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [   37.895329] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A] min_ddb    8,  19,  19,  19,  19,  22,  32,  36,  21,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [   43.787592] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm ->=
 *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7,*twm, swm, stwm
> [   43.787737] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]   lines    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    2,   5,   5,   5,   5,   6,   9,  10,   0,   0,    0
> [   43.787853] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]  blocks    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    6,  16,  16,  16,  16,  19,  28,  31,  20,   0,    0
> [   43.787962] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    8,  19,  19,  19,  19,  22,  32,  36,  21,   0,    0
> [   45.802922] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]   level *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7,*twm, swm, stwm ->=
  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
> [   45.803096] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]   lines    2,   5,   5,   5,   5,   6,   9,  10,   0,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [   45.803241] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]  blocks    6,  16,  16,  16,  16,  19,  28,  31,  20,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [   45.803374] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A] min_ddb    8,  19,  19,  19,  19,  22,  32,  36,  21,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [   62.402969] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm ->=
 *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7,*twm, swm, stwm
> [   62.403145] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]   lines    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    2,   5,   5,   5,   5,   6,   9,  10,   0,   0,    0
> [   62.403295] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]  blocks    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    6,  16,  16,  16,  16,  19,  28,  31,  20,   0,    0
> [   62.403427] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0 ->=
    8,  19,  19,  19,  19,  22,  32,  36,  21,   0,    0
> [   64.734656] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]   level *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7,*twm, swm, stwm ->=
  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm, swm, stwm
> [   64.734856] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]   lines    2,   5,   5,   5,   5,   6,   9,  10,   0,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [   64.735016] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A]  blocks    6,  16,  16,  16,  16,  19,  28,  31,  20,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0
> [   64.735193] i915 0000:00:02.0: [drm:skl_compute_wm [i915]] [PLANE:94:c=
ursor A] min_ddb    8,  19,  19,  19,  19,  22,  32,  36,  21,   0,    0 ->=
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,    0

> #
> # Automatically generated file; DO NOT EDIT.
> # Linux/x86 6.1.105 Kernel Configuration
> #
> CONFIG_CC_VERSION_TEXT=3D"gcc (Debian 12.2.0-14) 12.2.0"
> CONFIG_CC_IS_GCC=3Dy
> CONFIG_GCC_VERSION=3D120200
> CONFIG_CLANG_VERSION=3D0
> CONFIG_AS_IS_GNU=3Dy
> CONFIG_AS_VERSION=3D24000
> CONFIG_LD_IS_BFD=3Dy
> CONFIG_LD_VERSION=3D24000
> CONFIG_LLD_VERSION=3D0
> CONFIG_CC_CAN_LINK=3Dy
> CONFIG_CC_CAN_LINK_STATIC=3Dy
> CONFIG_CC_HAS_ASM_GOTO_OUTPUT=3Dy
> CONFIG_CC_HAS_ASM_GOTO_TIED_OUTPUT=3Dy
> CONFIG_GCC_ASM_GOTO_OUTPUT_WORKAROUND=3Dy
> CONFIG_CC_HAS_ASM_INLINE=3Dy
> CONFIG_CC_HAS_NO_PROFILE_FN_ATTR=3Dy
> CONFIG_PAHOLE_VERSION=3D124
> CONFIG_IRQ_WORK=3Dy
> CONFIG_BUILDTIME_TABLE_SORT=3Dy
> CONFIG_THREAD_INFO_IN_TASK=3Dy
>=20
> #
> # General setup
> #
> CONFIG_INIT_ENV_ARG_LIMIT=3D32
> # CONFIG_COMPILE_TEST is not set
> # CONFIG_WERROR is not set
> CONFIG_LOCALVERSION=3D""
> # CONFIG_LOCALVERSION_AUTO is not set
> CONFIG_BUILD_SALT=3D""
> CONFIG_HAVE_KERNEL_GZIP=3Dy
> CONFIG_HAVE_KERNEL_BZIP2=3Dy
> CONFIG_HAVE_KERNEL_LZMA=3Dy
> CONFIG_HAVE_KERNEL_XZ=3Dy
> CONFIG_HAVE_KERNEL_LZO=3Dy
> CONFIG_HAVE_KERNEL_LZ4=3Dy
> CONFIG_HAVE_KERNEL_ZSTD=3Dy
> # CONFIG_KERNEL_GZIP is not set
> # CONFIG_KERNEL_BZIP2 is not set
> # CONFIG_KERNEL_LZMA is not set
> CONFIG_KERNEL_XZ=3Dy
> # CONFIG_KERNEL_LZO is not set
> # CONFIG_KERNEL_LZ4 is not set
> # CONFIG_KERNEL_ZSTD is not set
> CONFIG_DEFAULT_INIT=3D""
> CONFIG_DEFAULT_HOSTNAME=3D"(none)"
> CONFIG_SYSVIPC=3Dy
> CONFIG_SYSVIPC_SYSCTL=3Dy
> CONFIG_SYSVIPC_COMPAT=3Dy
> CONFIG_POSIX_MQUEUE=3Dy
> CONFIG_POSIX_MQUEUE_SYSCTL=3Dy
> # CONFIG_WATCH_QUEUE is not set
> CONFIG_CROSS_MEMORY_ATTACH=3Dy
> CONFIG_USELIB=3Dy
> CONFIG_AUDIT=3Dy
> CONFIG_HAVE_ARCH_AUDITSYSCALL=3Dy
> CONFIG_AUDITSYSCALL=3Dy
>=20
> #
> # IRQ subsystem
> #
> CONFIG_GENERIC_IRQ_PROBE=3Dy
> CONFIG_GENERIC_IRQ_SHOW=3Dy
> CONFIG_GENERIC_IRQ_EFFECTIVE_AFF_MASK=3Dy
> CONFIG_GENERIC_PENDING_IRQ=3Dy
> CONFIG_GENERIC_IRQ_MIGRATION=3Dy
> CONFIG_GENERIC_IRQ_INJECTION=3Dy
> CONFIG_HARDIRQS_SW_RESEND=3Dy
> CONFIG_GENERIC_IRQ_CHIP=3Dy
> CONFIG_IRQ_DOMAIN=3Dy
> CONFIG_IRQ_DOMAIN_HIERARCHY=3Dy
> CONFIG_GENERIC_MSI_IRQ=3Dy
> CONFIG_GENERIC_MSI_IRQ_DOMAIN=3Dy
> CONFIG_IRQ_MSI_IOMMU=3Dy
> CONFIG_GENERIC_IRQ_MATRIX_ALLOCATOR=3Dy
> CONFIG_GENERIC_IRQ_RESERVATION_MODE=3Dy
> CONFIG_IRQ_FORCED_THREADING=3Dy
> CONFIG_SPARSE_IRQ=3Dy
> # CONFIG_GENERIC_IRQ_DEBUGFS is not set
> # end of IRQ subsystem
>=20
> CONFIG_CLOCKSOURCE_WATCHDOG=3Dy
> CONFIG_ARCH_CLOCKSOURCE_INIT=3Dy
> CONFIG_CLOCKSOURCE_VALIDATE_LAST_CYCLE=3Dy
> CONFIG_GENERIC_TIME_VSYSCALL=3Dy
> CONFIG_GENERIC_CLOCKEVENTS=3Dy
> CONFIG_GENERIC_CLOCKEVENTS_BROADCAST=3Dy
> CONFIG_GENERIC_CLOCKEVENTS_MIN_ADJUST=3Dy
> CONFIG_GENERIC_CMOS_UPDATE=3Dy
> CONFIG_HAVE_POSIX_CPU_TIMERS_TASK_WORK=3Dy
> CONFIG_POSIX_CPU_TIMERS_TASK_WORK=3Dy
> CONFIG_CONTEXT_TRACKING=3Dy
> CONFIG_CONTEXT_TRACKING_IDLE=3Dy
>=20
> #
> # Timers subsystem
> #
> CONFIG_TICK_ONESHOT=3Dy
> CONFIG_NO_HZ_COMMON=3Dy
> # CONFIG_HZ_PERIODIC is not set
> # CONFIG_NO_HZ_IDLE is not set
> CONFIG_NO_HZ_FULL=3Dy
> CONFIG_CONTEXT_TRACKING_USER=3Dy
> # CONFIG_CONTEXT_TRACKING_USER_FORCE is not set
> # CONFIG_NO_HZ is not set
> CONFIG_HIGH_RES_TIMERS=3Dy
> CONFIG_CLOCKSOURCE_WATCHDOG_MAX_SKEW_US=3D100
> # end of Timers subsystem
>=20
> CONFIG_BPF=3Dy
> CONFIG_HAVE_EBPF_JIT=3Dy
> CONFIG_ARCH_WANT_DEFAULT_BPF_JIT=3Dy
>=20
> #
> # BPF subsystem
> #
> CONFIG_BPF_SYSCALL=3Dy
> CONFIG_BPF_JIT=3Dy
> # CONFIG_BPF_JIT_ALWAYS_ON is not set
> CONFIG_BPF_JIT_DEFAULT_ON=3Dy
> CONFIG_BPF_UNPRIV_DEFAULT_OFF=3Dy
> # CONFIG_BPF_PRELOAD is not set
> CONFIG_BPF_LSM=3Dy
> # end of BPF subsystem
>=20
> CONFIG_PREEMPT_BUILD=3Dy
> # CONFIG_PREEMPT_NONE is not set
> CONFIG_PREEMPT_VOLUNTARY=3Dy
> # CONFIG_PREEMPT is not set
> CONFIG_PREEMPT_COUNT=3Dy
> CONFIG_PREEMPTION=3Dy
> CONFIG_PREEMPT_DYNAMIC=3Dy
> # CONFIG_SCHED_CORE is not set
>=20
> #
> # CPU/Task time and stats accounting
> #
> CONFIG_VIRT_CPU_ACCOUNTING=3Dy
> CONFIG_VIRT_CPU_ACCOUNTING_GEN=3Dy
> # CONFIG_IRQ_TIME_ACCOUNTING is not set
> CONFIG_BSD_PROCESS_ACCT=3Dy
> CONFIG_BSD_PROCESS_ACCT_V3=3Dy
> CONFIG_TASKSTATS=3Dy
> CONFIG_TASK_DELAY_ACCT=3Dy
> CONFIG_TASK_XACCT=3Dy
> CONFIG_TASK_IO_ACCOUNTING=3Dy
> CONFIG_PSI=3Dy
> # CONFIG_PSI_DEFAULT_DISABLED is not set
> # end of CPU/Task time and stats accounting
>=20
> CONFIG_CPU_ISOLATION=3Dy
>=20
> #
> # RCU Subsystem
> #
> CONFIG_TREE_RCU=3Dy
> CONFIG_PREEMPT_RCU=3Dy
> # CONFIG_RCU_EXPERT is not set
> CONFIG_SRCU=3Dy
> CONFIG_TREE_SRCU=3Dy
> CONFIG_TASKS_RCU_GENERIC=3Dy
> CONFIG_TASKS_RCU=3Dy
> CONFIG_TASKS_RUDE_RCU=3Dy
> CONFIG_TASKS_TRACE_RCU=3Dy
> CONFIG_RCU_STALL_COMMON=3Dy
> CONFIG_RCU_NEED_SEGCBLIST=3Dy
> CONFIG_RCU_NOCB_CPU=3Dy
> # CONFIG_RCU_NOCB_CPU_DEFAULT_ALL is not set
> # end of RCU Subsystem
>=20
> CONFIG_BUILD_BIN2C=3Dy
> # CONFIG_IKCONFIG is not set
> # CONFIG_IKHEADERS is not set
> CONFIG_LOG_BUF_SHIFT=3D17
> CONFIG_LOG_CPU_MAX_BUF_SHIFT=3D12
> CONFIG_PRINTK_SAFE_LOG_BUF_SHIFT=3D13
> # CONFIG_PRINTK_INDEX is not set
> CONFIG_HAVE_UNSTABLE_SCHED_CLOCK=3Dy
>=20
> #
> # Scheduler features
> #
> # CONFIG_UCLAMP_TASK is not set
> # end of Scheduler features
>=20
> CONFIG_ARCH_SUPPORTS_NUMA_BALANCING=3Dy
> CONFIG_ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH=3Dy
> CONFIG_CC_HAS_INT128=3Dy
> CONFIG_CC_IMPLICIT_FALLTHROUGH=3D"-Wimplicit-fallthrough=3D5"
> CONFIG_GCC10_NO_ARRAY_BOUNDS=3Dy
> CONFIG_CC_NO_ARRAY_BOUNDS=3Dy
> CONFIG_ARCH_SUPPORTS_INT128=3Dy
> CONFIG_NUMA_BALANCING=3Dy
> CONFIG_NUMA_BALANCING_DEFAULT_ENABLED=3Dy
> CONFIG_CGROUPS=3Dy
> CONFIG_PAGE_COUNTER=3Dy
> # CONFIG_CGROUP_FAVOR_DYNMODS is not set
> CONFIG_MEMCG=3Dy
> CONFIG_MEMCG_KMEM=3Dy
> CONFIG_BLK_CGROUP=3Dy
> CONFIG_CGROUP_WRITEBACK=3Dy
> CONFIG_CGROUP_SCHED=3Dy
> CONFIG_FAIR_GROUP_SCHED=3Dy
> CONFIG_CFS_BANDWIDTH=3Dy
> # CONFIG_RT_GROUP_SCHED is not set
> CONFIG_CGROUP_PIDS=3Dy
> CONFIG_CGROUP_RDMA=3Dy
> CONFIG_CGROUP_FREEZER=3Dy
> CONFIG_CGROUP_HUGETLB=3Dy
> CONFIG_CPUSETS=3Dy
> CONFIG_PROC_PID_CPUSET=3Dy
> CONFIG_CGROUP_DEVICE=3Dy
> CONFIG_CGROUP_CPUACCT=3Dy
> CONFIG_CGROUP_PERF=3Dy
> CONFIG_CGROUP_BPF=3Dy
> CONFIG_CGROUP_MISC=3Dy
> # CONFIG_CGROUP_DEBUG is not set
> CONFIG_SOCK_CGROUP_DATA=3Dy
> CONFIG_NAMESPACES=3Dy
> CONFIG_UTS_NS=3Dy
> CONFIG_TIME_NS=3Dy
> CONFIG_IPC_NS=3Dy
> CONFIG_USER_NS=3Dy
> CONFIG_PID_NS=3Dy
> CONFIG_NET_NS=3Dy
> CONFIG_CHECKPOINT_RESTORE=3Dy
> CONFIG_SCHED_AUTOGROUP=3Dy
> # CONFIG_SYSFS_DEPRECATED is not set
> CONFIG_RELAY=3Dy
> CONFIG_BLK_DEV_INITRD=3Dy
> CONFIG_INITRAMFS_SOURCE=3D""
> CONFIG_RD_GZIP=3Dy
> CONFIG_RD_BZIP2=3Dy
> CONFIG_RD_LZMA=3Dy
> CONFIG_RD_XZ=3Dy
> CONFIG_RD_LZO=3Dy
> CONFIG_RD_LZ4=3Dy
> CONFIG_RD_ZSTD=3Dy
> # CONFIG_BOOT_CONFIG is not set
> CONFIG_INITRAMFS_PRESERVE_MTIME=3Dy
> CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE=3Dy
> # CONFIG_CC_OPTIMIZE_FOR_SIZE is not set
> CONFIG_LD_ORPHAN_WARN=3Dy
> CONFIG_SYSCTL=3Dy
> CONFIG_HAVE_UID16=3Dy
> CONFIG_SYSCTL_EXCEPTION_TRACE=3Dy
> CONFIG_HAVE_PCSPKR_PLATFORM=3Dy
> CONFIG_EXPERT=3Dy
> CONFIG_UID16=3Dy
> CONFIG_MULTIUSER=3Dy
> CONFIG_SGETMASK_SYSCALL=3Dy
> CONFIG_SYSFS_SYSCALL=3Dy
> CONFIG_FHANDLE=3Dy
> CONFIG_POSIX_TIMERS=3Dy
> CONFIG_PRINTK=3Dy
> CONFIG_BUG=3Dy
> CONFIG_ELF_CORE=3Dy
> CONFIG_PCSPKR_PLATFORM=3Dy
> CONFIG_BASE_FULL=3Dy
> CONFIG_FUTEX=3Dy
> CONFIG_FUTEX_PI=3Dy
> CONFIG_EPOLL=3Dy
> CONFIG_SIGNALFD=3Dy
> CONFIG_TIMERFD=3Dy
> CONFIG_EVENTFD=3Dy
> CONFIG_SHMEM=3Dy
> CONFIG_AIO=3Dy
> CONFIG_IO_URING=3Dy
> CONFIG_ADVISE_SYSCALLS=3Dy
> CONFIG_MEMBARRIER=3Dy
> CONFIG_KALLSYMS=3Dy
> CONFIG_KALLSYMS_ALL=3Dy
> CONFIG_KALLSYMS_ABSOLUTE_PERCPU=3Dy
> CONFIG_KALLSYMS_BASE_RELATIVE=3Dy
> CONFIG_ARCH_HAS_MEMBARRIER_SYNC_CORE=3Dy
> CONFIG_KCMP=3Dy
> CONFIG_RSEQ=3Dy
> # CONFIG_DEBUG_RSEQ is not set
> # CONFIG_EMBEDDED is not set
> CONFIG_HAVE_PERF_EVENTS=3Dy
> CONFIG_GUEST_PERF_EVENTS=3Dy
> # CONFIG_PC104 is not set
>=20
> #
> # Kernel Performance Events And Counters
> #
> CONFIG_PERF_EVENTS=3Dy
> # CONFIG_DEBUG_PERF_USE_VMALLOC is not set
> # end of Kernel Performance Events And Counters
>=20
> CONFIG_SYSTEM_DATA_VERIFICATION=3Dy
> CONFIG_PROFILING=3Dy
> CONFIG_TRACEPOINTS=3Dy
> # end of General setup
>=20
> CONFIG_64BIT=3Dy
> CONFIG_X86_64=3Dy
> CONFIG_X86=3Dy
> CONFIG_INSTRUCTION_DECODER=3Dy
> CONFIG_OUTPUT_FORMAT=3D"elf64-x86-64"
> CONFIG_LOCKDEP_SUPPORT=3Dy
> CONFIG_STACKTRACE_SUPPORT=3Dy
> CONFIG_MMU=3Dy
> CONFIG_ARCH_MMAP_RND_BITS_MIN=3D28
> CONFIG_ARCH_MMAP_RND_BITS_MAX=3D32
> CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MIN=3D8
> CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MAX=3D16
> CONFIG_GENERIC_ISA_DMA=3Dy
> CONFIG_GENERIC_BUG=3Dy
> CONFIG_GENERIC_BUG_RELATIVE_POINTERS=3Dy
> CONFIG_ARCH_MAY_HAVE_PC_FDC=3Dy
> CONFIG_GENERIC_CALIBRATE_DELAY=3Dy
> CONFIG_ARCH_HAS_CPU_RELAX=3Dy
> CONFIG_ARCH_HIBERNATION_POSSIBLE=3Dy
> CONFIG_ARCH_NR_GPIO=3D1024
> CONFIG_ARCH_SUSPEND_POSSIBLE=3Dy
> CONFIG_AUDIT_ARCH=3Dy
> CONFIG_HAVE_INTEL_TXT=3Dy
> CONFIG_X86_64_SMP=3Dy
> CONFIG_ARCH_SUPPORTS_UPROBES=3Dy
> CONFIG_FIX_EARLYCON_MEM=3Dy
> CONFIG_DYNAMIC_PHYSICAL_MASK=3Dy
> CONFIG_PGTABLE_LEVELS=3D5
> CONFIG_CC_HAS_SANE_STACKPROTECTOR=3Dy
>=20
> #
> # Processor type and features
> #
> CONFIG_SMP=3Dy
> CONFIG_X86_FEATURE_NAMES=3Dy
> CONFIG_X86_X2APIC=3Dy
> CONFIG_X86_MPPARSE=3Dy
> # CONFIG_GOLDFISH is not set
> CONFIG_X86_CPU_RESCTRL=3Dy
> # CONFIG_X86_EXTENDED_PLATFORM is not set
> CONFIG_X86_INTEL_LPSS=3Dy
> CONFIG_X86_AMD_PLATFORM_DEVICE=3Dy
> CONFIG_IOSF_MBI=3Dy
> # CONFIG_IOSF_MBI_DEBUG is not set
> CONFIG_X86_SUPPORTS_MEMORY_FAILURE=3Dy
> CONFIG_SCHED_OMIT_FRAME_POINTER=3Dy
> CONFIG_HYPERVISOR_GUEST=3Dy
> CONFIG_PARAVIRT=3Dy
> CONFIG_PARAVIRT_XXL=3Dy
> # CONFIG_PARAVIRT_DEBUG is not set
> CONFIG_PARAVIRT_SPINLOCKS=3Dy
> CONFIG_X86_HV_CALLBACK_VECTOR=3Dy
> CONFIG_XEN=3Dy
> CONFIG_XEN_PV=3Dy
> CONFIG_XEN_512GB=3Dy
> CONFIG_XEN_PV_SMP=3Dy
> CONFIG_XEN_PV_DOM0=3Dy
> CONFIG_XEN_PVHVM=3Dy
> CONFIG_XEN_PVHVM_SMP=3Dy
> CONFIG_XEN_PVHVM_GUEST=3Dy
> CONFIG_XEN_SAVE_RESTORE=3Dy
> # CONFIG_XEN_DEBUG_FS is not set
> CONFIG_XEN_PVH=3Dy
> CONFIG_XEN_DOM0=3Dy
> CONFIG_XEN_PV_MSR_SAFE=3Dy
> CONFIG_KVM_GUEST=3Dy
> CONFIG_ARCH_CPUIDLE_HALTPOLL=3Dy
> CONFIG_PVH=3Dy
> # CONFIG_PARAVIRT_TIME_ACCOUNTING is not set
> CONFIG_PARAVIRT_CLOCK=3Dy
> # CONFIG_JAILHOUSE_GUEST is not set
> # CONFIG_ACRN_GUEST is not set
> # CONFIG_INTEL_TDX_GUEST is not set
> # CONFIG_MK8 is not set
> # CONFIG_MPSC is not set
> # CONFIG_MCORE2 is not set
> # CONFIG_MATOM is not set
> CONFIG_GENERIC_CPU=3Dy
> CONFIG_X86_INTERNODE_CACHE_SHIFT=3D6
> CONFIG_X86_L1_CACHE_SHIFT=3D6
> CONFIG_X86_TSC=3Dy
> CONFIG_X86_CMPXCHG64=3Dy
> CONFIG_X86_CMOV=3Dy
> CONFIG_X86_MINIMUM_CPU_FAMILY=3D64
> CONFIG_X86_DEBUGCTLMSR=3Dy
> CONFIG_IA32_FEAT_CTL=3Dy
> CONFIG_X86_VMX_FEATURE_NAMES=3Dy
> # CONFIG_PROCESSOR_SELECT is not set
> CONFIG_CPU_SUP_INTEL=3Dy
> CONFIG_CPU_SUP_AMD=3Dy
> CONFIG_CPU_SUP_HYGON=3Dy
> CONFIG_CPU_SUP_CENTAUR=3Dy
> CONFIG_CPU_SUP_ZHAOXIN=3Dy
> CONFIG_HPET_TIMER=3Dy
> CONFIG_HPET_EMULATE_RTC=3Dy
> CONFIG_DMI=3Dy
> CONFIG_GART_IOMMU=3Dy
> CONFIG_BOOT_VESA_SUPPORT=3Dy
> CONFIG_MAXSMP=3Dy
> CONFIG_NR_CPUS_RANGE_BEGIN=3D8192
> CONFIG_NR_CPUS_RANGE_END=3D8192
> CONFIG_NR_CPUS_DEFAULT=3D8192
> CONFIG_NR_CPUS=3D8192
> CONFIG_SCHED_CLUSTER=3Dy
> CONFIG_SCHED_SMT=3Dy
> CONFIG_SCHED_MC=3Dy
> CONFIG_SCHED_MC_PRIO=3Dy
> CONFIG_X86_LOCAL_APIC=3Dy
> CONFIG_X86_IO_APIC=3Dy
> CONFIG_X86_REROUTE_FOR_BROKEN_BOOT_IRQS=3Dy
> CONFIG_X86_MCE=3Dy
> # CONFIG_X86_MCELOG_LEGACY is not set
> CONFIG_X86_MCE_INTEL=3Dy
> CONFIG_X86_MCE_AMD=3Dy
> CONFIG_X86_MCE_THRESHOLD=3Dy
> CONFIG_X86_MCE_INJECT=3Dm
>=20
> #
> # Performance monitoring
> #
> CONFIG_PERF_EVENTS_INTEL_UNCORE=3Dm
> CONFIG_PERF_EVENTS_INTEL_RAPL=3Dm
> CONFIG_PERF_EVENTS_INTEL_CSTATE=3Dm
> CONFIG_PERF_EVENTS_AMD_POWER=3Dm
> CONFIG_PERF_EVENTS_AMD_UNCORE=3Dy
> # CONFIG_PERF_EVENTS_AMD_BRS is not set
> # end of Performance monitoring
>=20
> CONFIG_X86_16BIT=3Dy
> CONFIG_X86_ESPFIX64=3Dy
> CONFIG_X86_VSYSCALL_EMULATION=3Dy
> CONFIG_X86_IOPL_IOPERM=3Dy
> CONFIG_MICROCODE=3Dy
> CONFIG_MICROCODE_INTEL=3Dy
> CONFIG_MICROCODE_AMD=3Dy
> # CONFIG_MICROCODE_LATE_LOADING is not set
> CONFIG_X86_MSR=3Dm
> CONFIG_X86_CPUID=3Dm
> CONFIG_X86_5LEVEL=3Dy
> CONFIG_X86_DIRECT_GBPAGES=3Dy
> # CONFIG_X86_CPA_STATISTICS is not set
> CONFIG_X86_MEM_ENCRYPT=3Dy
> CONFIG_AMD_MEM_ENCRYPT=3Dy
> CONFIG_NUMA=3Dy
> CONFIG_AMD_NUMA=3Dy
> CONFIG_X86_64_ACPI_NUMA=3Dy
> CONFIG_NUMA_EMU=3Dy
> CONFIG_NODES_SHIFT=3D10
> CONFIG_ARCH_SPARSEMEM_ENABLE=3Dy
> CONFIG_ARCH_SPARSEMEM_DEFAULT=3Dy
> # CONFIG_ARCH_MEMORY_PROBE is not set
> CONFIG_ARCH_PROC_KCORE_TEXT=3Dy
> CONFIG_ILLEGAL_POINTER_VALUE=3D0xdead000000000000
> CONFIG_X86_PMEM_LEGACY_DEVICE=3Dy
> CONFIG_X86_PMEM_LEGACY=3Dm
> # CONFIG_X86_CHECK_BIOS_CORRUPTION is not set
> CONFIG_MTRR=3Dy
> CONFIG_MTRR_SANITIZER=3Dy
> CONFIG_MTRR_SANITIZER_ENABLE_DEFAULT=3D0
> CONFIG_MTRR_SANITIZER_SPARE_REG_NR_DEFAULT=3D1
> CONFIG_X86_PAT=3Dy
> CONFIG_ARCH_USES_PG_UNCACHED=3Dy
> CONFIG_X86_UMIP=3Dy
> CONFIG_CC_HAS_IBT=3Dy
> # CONFIG_X86_KERNEL_IBT is not set
> CONFIG_X86_INTEL_MEMORY_PROTECTION_KEYS=3Dy
> CONFIG_X86_INTEL_TSX_MODE_OFF=3Dy
> # CONFIG_X86_INTEL_TSX_MODE_ON is not set
> # CONFIG_X86_INTEL_TSX_MODE_AUTO is not set
> CONFIG_X86_SGX=3Dy
> CONFIG_EFI=3Dy
> CONFIG_EFI_STUB=3Dy
> CONFIG_EFI_HANDOVER_PROTOCOL=3Dy
> CONFIG_EFI_MIXED=3Dy
> # CONFIG_HZ_100 is not set
> CONFIG_HZ_250=3Dy
> # CONFIG_HZ_300 is not set
> # CONFIG_HZ_1000 is not set
> CONFIG_HZ=3D250
> CONFIG_SCHED_HRTICK=3Dy
> CONFIG_KEXEC=3Dy
> CONFIG_KEXEC_FILE=3Dy
> CONFIG_ARCH_HAS_KEXEC_PURGATORY=3Dy
> CONFIG_KEXEC_SIG=3Dy
> # CONFIG_KEXEC_SIG_FORCE is not set
> CONFIG_KEXEC_BZIMAGE_VERIFY_SIG=3Dy
> CONFIG_CRASH_DUMP=3Dy
> # CONFIG_KEXEC_JUMP is not set
> CONFIG_PHYSICAL_START=3D0x1000000
> CONFIG_RELOCATABLE=3Dy
> CONFIG_RANDOMIZE_BASE=3Dy
> CONFIG_X86_NEED_RELOCS=3Dy
> CONFIG_PHYSICAL_ALIGN=3D0x200000
> CONFIG_DYNAMIC_MEMORY_LAYOUT=3Dy
> CONFIG_RANDOMIZE_MEMORY=3Dy
> CONFIG_RANDOMIZE_MEMORY_PHYSICAL_PADDING=3D0xa
> CONFIG_HOTPLUG_CPU=3Dy
> # CONFIG_BOOTPARAM_HOTPLUG_CPU0 is not set
> # CONFIG_DEBUG_HOTPLUG_CPU0 is not set
> # CONFIG_COMPAT_VDSO is not set
> # CONFIG_LEGACY_VSYSCALL_XONLY is not set
> CONFIG_LEGACY_VSYSCALL_NONE=3Dy
> # CONFIG_CMDLINE_BOOL is not set
> CONFIG_MODIFY_LDT_SYSCALL=3Dy
> # CONFIG_STRICT_SIGALTSTACK_SIZE is not set
> CONFIG_HAVE_LIVEPATCH=3Dy
> CONFIG_LIVEPATCH=3Dy
> # end of Processor type and features
>=20
> CONFIG_CC_HAS_SLS=3Dy
> CONFIG_CC_HAS_RETURN_THUNK=3Dy
> CONFIG_CPU_MITIGATIONS=3Dy
> CONFIG_PAGE_TABLE_ISOLATION=3Dy
> CONFIG_RETPOLINE=3Dy
> CONFIG_RETHUNK=3Dy
> CONFIG_CPU_UNRET_ENTRY=3Dy
> CONFIG_CPU_IBPB_ENTRY=3Dy
> CONFIG_CPU_IBRS_ENTRY=3Dy
> CONFIG_CPU_SRSO=3Dy
> CONFIG_SLS=3Dy
> # CONFIG_GDS_FORCE_MITIGATION is not set
> CONFIG_MITIGATION_RFDS=3Dy
> CONFIG_MITIGATION_SPECTRE_BHI=3Dy
> CONFIG_ARCH_HAS_ADD_PAGES=3Dy
> CONFIG_ARCH_MHP_MEMMAP_ON_MEMORY_ENABLE=3Dy
>=20
> #
> # Power management and ACPI options
> #
> CONFIG_ARCH_HIBERNATION_HEADER=3Dy
> CONFIG_SUSPEND=3Dy
> CONFIG_SUSPEND_FREEZER=3Dy
> # CONFIG_SUSPEND_SKIP_SYNC is not set
> CONFIG_HIBERNATE_CALLBACKS=3Dy
> CONFIG_HIBERNATION=3Dy
> CONFIG_HIBERNATION_SNAPSHOT_DEV=3Dy
> CONFIG_PM_STD_PARTITION=3D""
> CONFIG_PM_SLEEP=3Dy
> CONFIG_PM_SLEEP_SMP=3Dy
> # CONFIG_PM_AUTOSLEEP is not set
> # CONFIG_PM_USERSPACE_AUTOSLEEP is not set
> # CONFIG_PM_WAKELOCKS is not set
> CONFIG_PM=3Dy
> CONFIG_PM_DEBUG=3Dy
> CONFIG_PM_ADVANCED_DEBUG=3Dy
> # CONFIG_PM_TEST_SUSPEND is not set
> CONFIG_PM_SLEEP_DEBUG=3Dy
> # CONFIG_DPM_WATCHDOG is not set
> # CONFIG_PM_TRACE_RTC is not set
> CONFIG_PM_CLK=3Dy
> CONFIG_PM_GENERIC_DOMAINS=3Dy
> # CONFIG_WQ_POWER_EFFICIENT_DEFAULT is not set
> CONFIG_PM_GENERIC_DOMAINS_SLEEP=3Dy
> CONFIG_ENERGY_MODEL=3Dy
> CONFIG_ARCH_SUPPORTS_ACPI=3Dy
> CONFIG_ACPI=3Dy
> CONFIG_ACPI_LEGACY_TABLES_LOOKUP=3Dy
> CONFIG_ARCH_MIGHT_HAVE_ACPI_PDC=3Dy
> CONFIG_ACPI_SYSTEM_POWER_STATES_SUPPORT=3Dy
> CONFIG_ACPI_TABLE_LIB=3Dy
> # CONFIG_ACPI_DEBUGGER is not set
> CONFIG_ACPI_SPCR_TABLE=3Dy
> # CONFIG_ACPI_FPDT is not set
> CONFIG_ACPI_LPIT=3Dy
> CONFIG_ACPI_SLEEP=3Dy
> CONFIG_ACPI_REV_OVERRIDE_POSSIBLE=3Dy
> # CONFIG_ACPI_EC_DEBUGFS is not set
> CONFIG_ACPI_AC=3Dm
> CONFIG_ACPI_BATTERY=3Dm
> CONFIG_ACPI_BUTTON=3Dm
> # CONFIG_ACPI_TINY_POWER_BUTTON is not set
> CONFIG_ACPI_VIDEO=3Dm
> CONFIG_ACPI_FAN=3Dm
> CONFIG_ACPI_TAD=3Dm
> CONFIG_ACPI_DOCK=3Dy
> CONFIG_ACPI_CPU_FREQ_PSS=3Dy
> CONFIG_ACPI_PROCESSOR_CSTATE=3Dy
> CONFIG_ACPI_PROCESSOR_IDLE=3Dy
> CONFIG_ACPI_CPPC_LIB=3Dy
> CONFIG_ACPI_PROCESSOR=3Dy
> CONFIG_ACPI_IPMI=3Dm
> CONFIG_ACPI_HOTPLUG_CPU=3Dy
> CONFIG_ACPI_PROCESSOR_AGGREGATOR=3Dm
> CONFIG_ACPI_THERMAL=3Dy
> CONFIG_ACPI_PLATFORM_PROFILE=3Dm
> CONFIG_ARCH_HAS_ACPI_TABLE_UPGRADE=3Dy
> CONFIG_ACPI_TABLE_UPGRADE=3Dy
> # CONFIG_ACPI_DEBUG is not set
> CONFIG_ACPI_PCI_SLOT=3Dy
> CONFIG_ACPI_CONTAINER=3Dy
> CONFIG_ACPI_HOTPLUG_MEMORY=3Dy
> CONFIG_ACPI_HOTPLUG_IOAPIC=3Dy
> CONFIG_ACPI_SBS=3Dm
> CONFIG_ACPI_HED=3Dy
> # CONFIG_ACPI_CUSTOM_METHOD is not set
> CONFIG_ACPI_BGRT=3Dy
> # CONFIG_ACPI_REDUCED_HARDWARE_ONLY is not set
> CONFIG_ACPI_NFIT=3Dm
> # CONFIG_NFIT_SECURITY_DEBUG is not set
> CONFIG_ACPI_NUMA=3Dy
> CONFIG_ACPI_HMAT=3Dy
> CONFIG_HAVE_ACPI_APEI=3Dy
> CONFIG_HAVE_ACPI_APEI_NMI=3Dy
> CONFIG_ACPI_APEI=3Dy
> CONFIG_ACPI_APEI_GHES=3Dy
> CONFIG_ACPI_APEI_PCIEAER=3Dy
> CONFIG_ACPI_APEI_MEMORY_FAILURE=3Dy
> CONFIG_ACPI_APEI_EINJ=3Dm
> # CONFIG_ACPI_APEI_ERST_DEBUG is not set
> # CONFIG_ACPI_DPTF is not set
> CONFIG_ACPI_WATCHDOG=3Dy
> CONFIG_ACPI_EXTLOG=3Dy
> CONFIG_ACPI_ADXL=3Dy
> # CONFIG_ACPI_CONFIGFS is not set
> # CONFIG_ACPI_PFRUT is not set
> CONFIG_ACPI_PCC=3Dy
> CONFIG_PMIC_OPREGION=3Dy
> CONFIG_BYTCRC_PMIC_OPREGION=3Dy
> CONFIG_CHTCRC_PMIC_OPREGION=3Dy
> CONFIG_XPOWER_PMIC_OPREGION=3Dy
> CONFIG_BXT_WC_PMIC_OPREGION=3Dy
> CONFIG_CHT_WC_PMIC_OPREGION=3Dy
> CONFIG_CHT_DC_TI_PMIC_OPREGION=3Dy
> CONFIG_ACPI_PRMT=3Dy
> CONFIG_X86_PM_TIMER=3Dy
>=20
> #
> # CPU Frequency scaling
> #
> CONFIG_CPU_FREQ=3Dy
> CONFIG_CPU_FREQ_GOV_ATTR_SET=3Dy
> CONFIG_CPU_FREQ_GOV_COMMON=3Dy
> CONFIG_CPU_FREQ_STAT=3Dy
> # CONFIG_CPU_FREQ_DEFAULT_GOV_PERFORMANCE is not set
> # CONFIG_CPU_FREQ_DEFAULT_GOV_POWERSAVE is not set
> # CONFIG_CPU_FREQ_DEFAULT_GOV_USERSPACE is not set
> CONFIG_CPU_FREQ_DEFAULT_GOV_SCHEDUTIL=3Dy
> CONFIG_CPU_FREQ_GOV_PERFORMANCE=3Dy
> CONFIG_CPU_FREQ_GOV_POWERSAVE=3Dm
> CONFIG_CPU_FREQ_GOV_USERSPACE=3Dm
> CONFIG_CPU_FREQ_GOV_ONDEMAND=3Dm
> CONFIG_CPU_FREQ_GOV_CONSERVATIVE=3Dm
> CONFIG_CPU_FREQ_GOV_SCHEDUTIL=3Dy
>=20
> #
> # CPU frequency scaling drivers
> #
> CONFIG_X86_INTEL_PSTATE=3Dy
> CONFIG_X86_PCC_CPUFREQ=3Dm
> CONFIG_X86_AMD_PSTATE=3Dy
> # CONFIG_X86_AMD_PSTATE_UT is not set
> CONFIG_X86_ACPI_CPUFREQ=3Dm
> CONFIG_X86_ACPI_CPUFREQ_CPB=3Dy
> CONFIG_X86_POWERNOW_K8=3Dm
> CONFIG_X86_AMD_FREQ_SENSITIVITY=3Dm
> CONFIG_X86_SPEEDSTEP_CENTRINO=3Dm
> CONFIG_X86_P4_CLOCKMOD=3Dm
>=20
> #
> # shared options
> #
> CONFIG_X86_SPEEDSTEP_LIB=3Dm
> # end of CPU Frequency scaling
>=20
> #
> # CPU Idle
> #
> CONFIG_CPU_IDLE=3Dy
> CONFIG_CPU_IDLE_GOV_LADDER=3Dy
> CONFIG_CPU_IDLE_GOV_MENU=3Dy
> # CONFIG_CPU_IDLE_GOV_TEO is not set
> # CONFIG_CPU_IDLE_GOV_HALTPOLL is not set
> CONFIG_HALTPOLL_CPUIDLE=3Dy
> # end of CPU Idle
>=20
> CONFIG_INTEL_IDLE=3Dy
> # end of Power management and ACPI options
>=20
> #
> # Bus options (PCI etc.)
> #
> CONFIG_PCI_DIRECT=3Dy
> CONFIG_PCI_MMCONFIG=3Dy
> CONFIG_PCI_XEN=3Dy
> CONFIG_MMCONF_FAM10H=3Dy
> # CONFIG_PCI_CNB20LE_QUIRK is not set
> # CONFIG_ISA_BUS is not set
> CONFIG_ISA_DMA_API=3Dy
> CONFIG_AMD_NB=3Dy
> # end of Bus options (PCI etc.)
>=20
> #
> # Binary Emulations
> #
> CONFIG_IA32_EMULATION=3Dy
> CONFIG_X86_X32_ABI=3Dy
> CONFIG_COMPAT_32=3Dy
> CONFIG_COMPAT=3Dy
> CONFIG_COMPAT_FOR_U64_ALIGNMENT=3Dy
> # end of Binary Emulations
>=20
> CONFIG_HAVE_KVM=3Dy
> CONFIG_HAVE_KVM_PFNCACHE=3Dy
> CONFIG_HAVE_KVM_IRQCHIP=3Dy
> CONFIG_HAVE_KVM_IRQFD=3Dy
> CONFIG_HAVE_KVM_IRQ_ROUTING=3Dy
> CONFIG_HAVE_KVM_DIRTY_RING=3Dy
> CONFIG_HAVE_KVM_DIRTY_RING_TSO=3Dy
> CONFIG_HAVE_KVM_DIRTY_RING_ACQ_REL=3Dy
> CONFIG_HAVE_KVM_EVENTFD=3Dy
> CONFIG_KVM_MMIO=3Dy
> CONFIG_KVM_ASYNC_PF=3Dy
> CONFIG_HAVE_KVM_MSI=3Dy
> CONFIG_HAVE_KVM_CPU_RELAX_INTERCEPT=3Dy
> CONFIG_KVM_VFIO=3Dy
> CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT=3Dy
> CONFIG_KVM_COMPAT=3Dy
> CONFIG_HAVE_KVM_IRQ_BYPASS=3Dy
> CONFIG_HAVE_KVM_NO_POLL=3Dy
> CONFIG_KVM_XFER_TO_GUEST_WORK=3Dy
> CONFIG_HAVE_KVM_PM_NOTIFIER=3Dy
> CONFIG_VIRTUALIZATION=3Dy
> CONFIG_KVM=3Dm
> CONFIG_KVM_WERROR=3Dy
> CONFIG_KVM_INTEL=3Dm
> CONFIG_X86_SGX_KVM=3Dy
> CONFIG_KVM_AMD=3Dm
> CONFIG_KVM_AMD_SEV=3Dy
> # CONFIG_KVM_XEN is not set
> CONFIG_KVM_EXTERNAL_WRITE_TRACKING=3Dy
> CONFIG_AS_AVX512=3Dy
> CONFIG_AS_SHA1_NI=3Dy
> CONFIG_AS_SHA256_NI=3Dy
> CONFIG_AS_TPAUSE=3Dy
> CONFIG_ARCH_CONFIGURES_CPU_MITIGATIONS=3Dy
>=20
> #
> # General architecture-dependent options
> #
> CONFIG_CRASH_CORE=3Dy
> CONFIG_KEXEC_CORE=3Dy
> CONFIG_HAVE_IMA_KEXEC=3Dy
> CONFIG_HOTPLUG_SMT=3Dy
> CONFIG_GENERIC_ENTRY=3Dy
> CONFIG_KPROBES=3Dy
> CONFIG_JUMP_LABEL=3Dy
> # CONFIG_STATIC_KEYS_SELFTEST is not set
> # CONFIG_STATIC_CALL_SELFTEST is not set
> CONFIG_OPTPROBES=3Dy
> CONFIG_KPROBES_ON_FTRACE=3Dy
> CONFIG_UPROBES=3Dy
> CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS=3Dy
> CONFIG_ARCH_USE_BUILTIN_BSWAP=3Dy
> CONFIG_KRETPROBES=3Dy
> CONFIG_KRETPROBE_ON_RETHOOK=3Dy
> CONFIG_USER_RETURN_NOTIFIER=3Dy
> CONFIG_HAVE_IOREMAP_PROT=3Dy
> CONFIG_HAVE_KPROBES=3Dy
> CONFIG_HAVE_KRETPROBES=3Dy
> CONFIG_HAVE_OPTPROBES=3Dy
> CONFIG_HAVE_KPROBES_ON_FTRACE=3Dy
> CONFIG_ARCH_CORRECT_STACKTRACE_ON_KRETPROBE=3Dy
> CONFIG_HAVE_FUNCTION_ERROR_INJECTION=3Dy
> CONFIG_HAVE_NMI=3Dy
> CONFIG_TRACE_IRQFLAGS_SUPPORT=3Dy
> CONFIG_TRACE_IRQFLAGS_NMI_SUPPORT=3Dy
> CONFIG_HAVE_ARCH_TRACEHOOK=3Dy
> CONFIG_HAVE_DMA_CONTIGUOUS=3Dy
> CONFIG_GENERIC_SMP_IDLE_THREAD=3Dy
> CONFIG_ARCH_HAS_FORTIFY_SOURCE=3Dy
> CONFIG_ARCH_HAS_SET_MEMORY=3Dy
> CONFIG_ARCH_HAS_SET_DIRECT_MAP=3Dy
> CONFIG_ARCH_HAS_CPU_FINALIZE_INIT=3Dy
> CONFIG_HAVE_ARCH_THREAD_STRUCT_WHITELIST=3Dy
> CONFIG_ARCH_WANTS_DYNAMIC_TASK_STRUCT=3Dy
> CONFIG_ARCH_WANTS_NO_INSTR=3Dy
> CONFIG_HAVE_ASM_MODVERSIONS=3Dy
> CONFIG_HAVE_REGS_AND_STACK_ACCESS_API=3Dy
> CONFIG_HAVE_RSEQ=3Dy
> CONFIG_HAVE_RUST=3Dy
> CONFIG_HAVE_FUNCTION_ARG_ACCESS_API=3Dy
> CONFIG_HAVE_HW_BREAKPOINT=3Dy
> CONFIG_HAVE_MIXED_BREAKPOINTS_REGS=3Dy
> CONFIG_HAVE_USER_RETURN_NOTIFIER=3Dy
> CONFIG_HAVE_PERF_EVENTS_NMI=3Dy
> CONFIG_HAVE_HARDLOCKUP_DETECTOR_PERF=3Dy
> CONFIG_HAVE_PERF_REGS=3Dy
> CONFIG_HAVE_PERF_USER_STACK_DUMP=3Dy
> CONFIG_HAVE_ARCH_JUMP_LABEL=3Dy
> CONFIG_HAVE_ARCH_JUMP_LABEL_RELATIVE=3Dy
> CONFIG_MMU_GATHER_TABLE_FREE=3Dy
> CONFIG_MMU_GATHER_RCU_TABLE_FREE=3Dy
> CONFIG_MMU_GATHER_MERGE_VMAS=3Dy
> CONFIG_ARCH_HAVE_NMI_SAFE_CMPXCHG=3Dy
> CONFIG_HAVE_ALIGNED_STRUCT_PAGE=3Dy
> CONFIG_HAVE_CMPXCHG_LOCAL=3Dy
> CONFIG_HAVE_CMPXCHG_DOUBLE=3Dy
> CONFIG_ARCH_WANT_COMPAT_IPC_PARSE_VERSION=3Dy
> CONFIG_ARCH_WANT_OLD_COMPAT_IPC=3Dy
> CONFIG_HAVE_ARCH_SECCOMP=3Dy
> CONFIG_HAVE_ARCH_SECCOMP_FILTER=3Dy
> CONFIG_SECCOMP=3Dy
> CONFIG_SECCOMP_FILTER=3Dy
> # CONFIG_SECCOMP_CACHE_DEBUG is not set
> CONFIG_HAVE_ARCH_STACKLEAK=3Dy
> CONFIG_HAVE_STACKPROTECTOR=3Dy
> CONFIG_STACKPROTECTOR=3Dy
> CONFIG_STACKPROTECTOR_STRONG=3Dy
> CONFIG_ARCH_SUPPORTS_LTO_CLANG=3Dy
> CONFIG_ARCH_SUPPORTS_LTO_CLANG_THIN=3Dy
> CONFIG_LTO_NONE=3Dy
> CONFIG_ARCH_SUPPORTS_CFI_CLANG=3Dy
> CONFIG_HAVE_ARCH_WITHIN_STACK_FRAMES=3Dy
> CONFIG_HAVE_CONTEXT_TRACKING_USER=3Dy
> CONFIG_HAVE_CONTEXT_TRACKING_USER_OFFSTACK=3Dy
> CONFIG_HAVE_VIRT_CPU_ACCOUNTING_GEN=3Dy
> CONFIG_HAVE_IRQ_TIME_ACCOUNTING=3Dy
> CONFIG_HAVE_MOVE_PUD=3Dy
> CONFIG_HAVE_MOVE_PMD=3Dy
> CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE=3Dy
> CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD=3Dy
> CONFIG_HAVE_ARCH_HUGE_VMAP=3Dy
> CONFIG_HAVE_ARCH_HUGE_VMALLOC=3Dy
> CONFIG_ARCH_WANT_HUGE_PMD_SHARE=3Dy
> CONFIG_HAVE_ARCH_SOFT_DIRTY=3Dy
> CONFIG_HAVE_MOD_ARCH_SPECIFIC=3Dy
> CONFIG_MODULES_USE_ELF_RELA=3Dy
> CONFIG_HAVE_IRQ_EXIT_ON_IRQ_STACK=3Dy
> CONFIG_HAVE_SOFTIRQ_ON_OWN_STACK=3Dy
> CONFIG_SOFTIRQ_ON_OWN_STACK=3Dy
> CONFIG_ARCH_HAS_ELF_RANDOMIZE=3Dy
> CONFIG_HAVE_ARCH_MMAP_RND_BITS=3Dy
> CONFIG_HAVE_EXIT_THREAD=3Dy
> CONFIG_ARCH_MMAP_RND_BITS=3D28
> CONFIG_HAVE_ARCH_MMAP_RND_COMPAT_BITS=3Dy
> CONFIG_ARCH_MMAP_RND_COMPAT_BITS=3D8
> CONFIG_HAVE_ARCH_COMPAT_MMAP_BASES=3Dy
> CONFIG_PAGE_SIZE_LESS_THAN_64KB=3Dy
> CONFIG_PAGE_SIZE_LESS_THAN_256KB=3Dy
> CONFIG_HAVE_OBJTOOL=3Dy
> CONFIG_HAVE_JUMP_LABEL_HACK=3Dy
> CONFIG_HAVE_NOINSTR_HACK=3Dy
> CONFIG_HAVE_NOINSTR_VALIDATION=3Dy
> CONFIG_HAVE_UACCESS_VALIDATION=3Dy
> CONFIG_HAVE_STACK_VALIDATION=3Dy
> CONFIG_HAVE_RELIABLE_STACKTRACE=3Dy
> CONFIG_OLD_SIGSUSPEND3=3Dy
> CONFIG_COMPAT_OLD_SIGACTION=3Dy
> CONFIG_COMPAT_32BIT_TIME=3Dy
> CONFIG_HAVE_ARCH_VMAP_STACK=3Dy
> CONFIG_VMAP_STACK=3Dy
> CONFIG_HAVE_ARCH_RANDOMIZE_KSTACK_OFFSET=3Dy
> CONFIG_RANDOMIZE_KSTACK_OFFSET=3Dy
> CONFIG_RANDOMIZE_KSTACK_OFFSET_DEFAULT=3Dy
> CONFIG_ARCH_HAS_STRICT_KERNEL_RWX=3Dy
> CONFIG_STRICT_KERNEL_RWX=3Dy
> CONFIG_ARCH_HAS_STRICT_MODULE_RWX=3Dy
> CONFIG_STRICT_MODULE_RWX=3Dy
> CONFIG_HAVE_ARCH_PREL32_RELOCATIONS=3Dy
> CONFIG_ARCH_USE_MEMREMAP_PROT=3Dy
> # CONFIG_LOCK_EVENT_COUNTS is not set
> CONFIG_ARCH_HAS_MEM_ENCRYPT=3Dy
> CONFIG_ARCH_HAS_CC_PLATFORM=3Dy
> CONFIG_HAVE_STATIC_CALL=3Dy
> CONFIG_HAVE_STATIC_CALL_INLINE=3Dy
> CONFIG_HAVE_PREEMPT_DYNAMIC=3Dy
> CONFIG_HAVE_PREEMPT_DYNAMIC_CALL=3Dy
> CONFIG_ARCH_WANT_LD_ORPHAN_WARN=3Dy
> CONFIG_ARCH_SUPPORTS_DEBUG_PAGEALLOC=3Dy
> CONFIG_ARCH_SUPPORTS_PAGE_TABLE_CHECK=3Dy
> CONFIG_ARCH_HAS_ELFCORE_COMPAT=3Dy
> CONFIG_ARCH_HAS_PARANOID_L1D_FLUSH=3Dy
> CONFIG_DYNAMIC_SIGFRAME=3Dy
> CONFIG_HAVE_ARCH_NODE_DEV_GROUP=3Dy
> CONFIG_ARCH_HAS_NONLEAF_PMD_YOUNG=3Dy
>=20
> #
> # GCOV-based kernel profiling
> #
> # CONFIG_GCOV_KERNEL is not set
> CONFIG_ARCH_HAS_GCOV_PROFILE_ALL=3Dy
> # end of GCOV-based kernel profiling
>=20
> CONFIG_HAVE_GCC_PLUGINS=3Dy
> # end of General architecture-dependent options
>=20
> CONFIG_RT_MUTEXES=3Dy
> CONFIG_BASE_SMALL=3D0
> CONFIG_MODULE_SIG_FORMAT=3Dy
> CONFIG_MODULES=3Dy
> CONFIG_MODULE_FORCE_LOAD=3Dy
> CONFIG_MODULE_UNLOAD=3Dy
> CONFIG_MODULE_FORCE_UNLOAD=3Dy
> # CONFIG_MODULE_UNLOAD_TAINT_TRACKING is not set
> CONFIG_MODVERSIONS=3Dy
> CONFIG_ASM_MODVERSIONS=3Dy
> # CONFIG_MODULE_SRCVERSION_ALL is not set
> CONFIG_MODULE_SIG=3Dy
> # CONFIG_MODULE_SIG_FORCE is not set
> CONFIG_MODULE_SIG_ALL=3Dy
> # CONFIG_MODULE_SIG_SHA1 is not set
> # CONFIG_MODULE_SIG_SHA224 is not set
> CONFIG_MODULE_SIG_SHA256=3Dy
> # CONFIG_MODULE_SIG_SHA384 is not set
> # CONFIG_MODULE_SIG_SHA512 is not set
> CONFIG_MODULE_SIG_HASH=3D"sha256"
> CONFIG_MODULE_COMPRESS_NONE=3Dy
> # CONFIG_MODULE_COMPRESS_GZIP is not set
> # CONFIG_MODULE_COMPRESS_XZ is not set
> # CONFIG_MODULE_COMPRESS_ZSTD is not set
> # CONFIG_MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS is not set
> CONFIG_MODPROBE_PATH=3D"/sbin/modprobe"
> # CONFIG_TRIM_UNUSED_KSYMS is not set
> CONFIG_MODULES_TREE_LOOKUP=3Dy
> CONFIG_BLOCK=3Dy
> CONFIG_BLOCK_LEGACY_AUTOLOAD=3Dy
> CONFIG_BLK_RQ_ALLOC_TIME=3Dy
> CONFIG_BLK_CGROUP_RWSTAT=3Dy
> CONFIG_BLK_DEV_BSG_COMMON=3Dy
> CONFIG_BLK_ICQ=3Dy
> CONFIG_BLK_DEV_BSGLIB=3Dy
> CONFIG_BLK_DEV_INTEGRITY=3Dy
> CONFIG_BLK_DEV_INTEGRITY_T10=3Dm
> CONFIG_BLK_DEV_ZONED=3Dy
> CONFIG_BLK_DEV_THROTTLING=3Dy
> # CONFIG_BLK_DEV_THROTTLING_LOW is not set
> CONFIG_BLK_WBT=3Dy
> CONFIG_BLK_WBT_MQ=3Dy
> # CONFIG_BLK_CGROUP_IOLATENCY is not set
> # CONFIG_BLK_CGROUP_FC_APPID is not set
> CONFIG_BLK_CGROUP_IOCOST=3Dy
> # CONFIG_BLK_CGROUP_IOPRIO is not set
> CONFIG_BLK_DEBUG_FS=3Dy
> CONFIG_BLK_DEBUG_FS_ZONED=3Dy
> CONFIG_BLK_SED_OPAL=3Dy
> # CONFIG_BLK_INLINE_ENCRYPTION is not set
>=20
> #
> # Partition Types
> #
> CONFIG_PARTITION_ADVANCED=3Dy
> CONFIG_ACORN_PARTITION=3Dy
> # CONFIG_ACORN_PARTITION_CUMANA is not set
> # CONFIG_ACORN_PARTITION_EESOX is not set
> CONFIG_ACORN_PARTITION_ICS=3Dy
> # CONFIG_ACORN_PARTITION_ADFS is not set
> # CONFIG_ACORN_PARTITION_POWERTEC is not set
> CONFIG_ACORN_PARTITION_RISCIX=3Dy
> # CONFIG_AIX_PARTITION is not set
> CONFIG_OSF_PARTITION=3Dy
> CONFIG_AMIGA_PARTITION=3Dy
> CONFIG_ATARI_PARTITION=3Dy
> CONFIG_MAC_PARTITION=3Dy
> CONFIG_MSDOS_PARTITION=3Dy
> CONFIG_BSD_DISKLABEL=3Dy
> CONFIG_MINIX_SUBPARTITION=3Dy
> CONFIG_SOLARIS_X86_PARTITION=3Dy
> CONFIG_UNIXWARE_DISKLABEL=3Dy
> CONFIG_LDM_PARTITION=3Dy
> # CONFIG_LDM_DEBUG is not set
> CONFIG_SGI_PARTITION=3Dy
> CONFIG_ULTRIX_PARTITION=3Dy
> CONFIG_SUN_PARTITION=3Dy
> CONFIG_KARMA_PARTITION=3Dy
> CONFIG_EFI_PARTITION=3Dy
> # CONFIG_SYSV68_PARTITION is not set
> # CONFIG_CMDLINE_PARTITION is not set
> # end of Partition Types
>=20
> CONFIG_BLOCK_COMPAT=3Dy
> CONFIG_BLK_MQ_PCI=3Dy
> CONFIG_BLK_MQ_VIRTIO=3Dy
> CONFIG_BLK_MQ_RDMA=3Dy
> CONFIG_BLK_PM=3Dy
> CONFIG_BLOCK_HOLDER_DEPRECATED=3Dy
> CONFIG_BLK_MQ_STACKING=3Dy
>=20
> #
> # IO Schedulers
> #
> CONFIG_MQ_IOSCHED_DEADLINE=3Dy
> CONFIG_MQ_IOSCHED_KYBER=3Dm
> CONFIG_IOSCHED_BFQ=3Dm
> CONFIG_BFQ_GROUP_IOSCHED=3Dy
> # CONFIG_BFQ_CGROUP_DEBUG is not set
> # end of IO Schedulers
>=20
> CONFIG_PREEMPT_NOTIFIERS=3Dy
> CONFIG_PADATA=3Dy
> CONFIG_ASN1=3Dy
> CONFIG_UNINLINE_SPIN_UNLOCK=3Dy
> CONFIG_ARCH_SUPPORTS_ATOMIC_RMW=3Dy
> CONFIG_MUTEX_SPIN_ON_OWNER=3Dy
> CONFIG_RWSEM_SPIN_ON_OWNER=3Dy
> CONFIG_LOCK_SPIN_ON_OWNER=3Dy
> CONFIG_ARCH_USE_QUEUED_SPINLOCKS=3Dy
> CONFIG_QUEUED_SPINLOCKS=3Dy
> CONFIG_ARCH_USE_QUEUED_RWLOCKS=3Dy
> CONFIG_QUEUED_RWLOCKS=3Dy
> CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE=3Dy
> CONFIG_ARCH_HAS_SYNC_CORE_BEFORE_USERMODE=3Dy
> CONFIG_ARCH_HAS_SYSCALL_WRAPPER=3Dy
> CONFIG_FREEZER=3Dy
>=20
> #
> # Executable file formats
> #
> CONFIG_BINFMT_ELF=3Dy
> CONFIG_COMPAT_BINFMT_ELF=3Dy
> CONFIG_ELFCORE=3Dy
> CONFIG_CORE_DUMP_DEFAULT_ELF_HEADERS=3Dy
> CONFIG_BINFMT_SCRIPT=3Dy
> CONFIG_BINFMT_MISC=3Dm
> CONFIG_COREDUMP=3Dy
> # end of Executable file formats
>=20
> #
> # Memory Management options
> #
> CONFIG_ZPOOL=3Dy
> CONFIG_SWAP=3Dy
> CONFIG_ZSWAP=3Dy
> # CONFIG_ZSWAP_DEFAULT_ON is not set
> # CONFIG_ZSWAP_COMPRESSOR_DEFAULT_DEFLATE is not set
> CONFIG_ZSWAP_COMPRESSOR_DEFAULT_LZO=3Dy
> # CONFIG_ZSWAP_COMPRESSOR_DEFAULT_842 is not set
> # CONFIG_ZSWAP_COMPRESSOR_DEFAULT_LZ4 is not set
> # CONFIG_ZSWAP_COMPRESSOR_DEFAULT_LZ4HC is not set
> # CONFIG_ZSWAP_COMPRESSOR_DEFAULT_ZSTD is not set
> CONFIG_ZSWAP_COMPRESSOR_DEFAULT=3D"lzo"
> CONFIG_ZSWAP_ZPOOL_DEFAULT_ZBUD=3Dy
> # CONFIG_ZSWAP_ZPOOL_DEFAULT_Z3FOLD is not set
> # CONFIG_ZSWAP_ZPOOL_DEFAULT_ZSMALLOC is not set
> CONFIG_ZSWAP_ZPOOL_DEFAULT=3D"zbud"
> CONFIG_ZBUD=3Dy
> CONFIG_Z3FOLD=3Dm
> CONFIG_ZSMALLOC=3Dm
> # CONFIG_ZSMALLOC_STAT is not set
>=20
> #
> # SLAB allocator options
> #
> # CONFIG_SLAB is not set
> CONFIG_SLUB=3Dy
> # CONFIG_SLOB is not set
> CONFIG_SLAB_MERGE_DEFAULT=3Dy
> CONFIG_SLAB_FREELIST_RANDOM=3Dy
> CONFIG_SLAB_FREELIST_HARDENED=3Dy
> # CONFIG_SLUB_STATS is not set
> CONFIG_SLUB_CPU_PARTIAL=3Dy
> # end of SLAB allocator options
>=20
> CONFIG_SHUFFLE_PAGE_ALLOCATOR=3Dy
> # CONFIG_COMPAT_BRK is not set
> CONFIG_SPARSEMEM=3Dy
> CONFIG_SPARSEMEM_EXTREME=3Dy
> CONFIG_SPARSEMEM_VMEMMAP_ENABLE=3Dy
> CONFIG_SPARSEMEM_VMEMMAP=3Dy
> CONFIG_HAVE_FAST_GUP=3Dy
> CONFIG_NUMA_KEEP_MEMINFO=3Dy
> CONFIG_MEMORY_ISOLATION=3Dy
> CONFIG_EXCLUSIVE_SYSTEM_RAM=3Dy
> CONFIG_HAVE_BOOTMEM_INFO_NODE=3Dy
> CONFIG_ARCH_ENABLE_MEMORY_HOTPLUG=3Dy
> CONFIG_ARCH_ENABLE_MEMORY_HOTREMOVE=3Dy
> CONFIG_MEMORY_HOTPLUG=3Dy
> # CONFIG_MEMORY_HOTPLUG_DEFAULT_ONLINE is not set
> CONFIG_MEMORY_HOTREMOVE=3Dy
> CONFIG_MHP_MEMMAP_ON_MEMORY=3Dy
> CONFIG_SPLIT_PTLOCK_CPUS=3D4
> CONFIG_ARCH_ENABLE_SPLIT_PMD_PTLOCK=3Dy
> CONFIG_MEMORY_BALLOON=3Dy
> CONFIG_BALLOON_COMPACTION=3Dy
> CONFIG_COMPACTION=3Dy
> CONFIG_COMPACT_UNEVICTABLE_DEFAULT=3D1
> CONFIG_PAGE_REPORTING=3Dy
> CONFIG_MIGRATION=3Dy
> CONFIG_DEVICE_MIGRATION=3Dy
> CONFIG_ARCH_ENABLE_HUGEPAGE_MIGRATION=3Dy
> CONFIG_ARCH_ENABLE_THP_MIGRATION=3Dy
> CONFIG_CONTIG_ALLOC=3Dy
> CONFIG_PCP_BATCH_SCALE_MAX=3D5
> CONFIG_PHYS_ADDR_T_64BIT=3Dy
> CONFIG_MMU_NOTIFIER=3Dy
> CONFIG_KSM=3Dy
> CONFIG_DEFAULT_MMAP_MIN_ADDR=3D65536
> CONFIG_ARCH_SUPPORTS_MEMORY_FAILURE=3Dy
> CONFIG_MEMORY_FAILURE=3Dy
> CONFIG_HWPOISON_INJECT=3Dm
> CONFIG_ARCH_WANT_GENERAL_HUGETLB=3Dy
> CONFIG_ARCH_WANTS_THP_SWAP=3Dy
> CONFIG_TRANSPARENT_HUGEPAGE=3Dy
> CONFIG_TRANSPARENT_HUGEPAGE_ALWAYS=3Dy
> # CONFIG_TRANSPARENT_HUGEPAGE_MADVISE is not set
> CONFIG_THP_SWAP=3Dy
> # CONFIG_READ_ONLY_THP_FOR_FS is not set
> CONFIG_NEED_PER_CPU_EMBED_FIRST_CHUNK=3Dy
> CONFIG_NEED_PER_CPU_PAGE_FIRST_CHUNK=3Dy
> CONFIG_USE_PERCPU_NUMA_NODE_ID=3Dy
> CONFIG_HAVE_SETUP_PER_CPU_AREA=3Dy
> CONFIG_FRONTSWAP=3Dy
> # CONFIG_CMA is not set
> CONFIG_MEM_SOFT_DIRTY=3Dy
> CONFIG_GENERIC_EARLY_IOREMAP=3Dy
> CONFIG_DEFERRED_STRUCT_PAGE_INIT=3Dy
> # CONFIG_IDLE_PAGE_TRACKING is not set
> CONFIG_ARCH_HAS_CACHE_LINE_SIZE=3Dy
> CONFIG_ARCH_HAS_CURRENT_STACK_POINTER=3Dy
> CONFIG_ARCH_HAS_PTE_DEVMAP=3Dy
> CONFIG_ARCH_HAS_ZONE_DMA_SET=3Dy
> CONFIG_ZONE_DMA=3Dy
> CONFIG_ZONE_DMA32=3Dy
> CONFIG_ZONE_DEVICE=3Dy
> CONFIG_HMM_MIRROR=3Dy
> CONFIG_GET_FREE_REGION=3Dy
> # CONFIG_DEVICE_PRIVATE is not set
> CONFIG_VMAP_PFN=3Dy
> CONFIG_ARCH_USES_HIGH_VMA_FLAGS=3Dy
> CONFIG_ARCH_HAS_PKEYS=3Dy
> CONFIG_VM_EVENT_COUNTERS=3Dy
> # CONFIG_PERCPU_STATS is not set
> # CONFIG_GUP_TEST is not set
> CONFIG_ARCH_HAS_PTE_SPECIAL=3Dy
> CONFIG_MAPPING_DIRTY_HELPERS=3Dy
> CONFIG_SECRETMEM=3Dy
> # CONFIG_ANON_VMA_NAME is not set
> CONFIG_USERFAULTFD=3Dy
> CONFIG_HAVE_ARCH_USERFAULTFD_WP=3Dy
> CONFIG_HAVE_ARCH_USERFAULTFD_MINOR=3Dy
> CONFIG_PTE_MARKER=3Dy
> CONFIG_PTE_MARKER_UFFD_WP=3Dy
> CONFIG_LRU_GEN=3Dy
> # CONFIG_LRU_GEN_ENABLED is not set
> # CONFIG_LRU_GEN_STATS is not set
> CONFIG_LOCK_MM_AND_FIND_VMA=3Dy
>=20
> #
> # Data Access Monitoring
> #
> # CONFIG_DAMON is not set
> # end of Data Access Monitoring
> # end of Memory Management options
>=20
> CONFIG_NET=3Dy
> CONFIG_COMPAT_NETLINK_MESSAGES=3Dy
> CONFIG_NET_INGRESS=3Dy
> CONFIG_NET_EGRESS=3Dy
> CONFIG_NET_REDIRECT=3Dy
> CONFIG_SKB_EXTENSIONS=3Dy
>=20
> #
> # Networking options
> #
> CONFIG_PACKET=3Dy
> CONFIG_PACKET_DIAG=3Dm
> CONFIG_UNIX=3Dy
> CONFIG_UNIX_SCM=3Dy
> CONFIG_AF_UNIX_OOB=3Dy
> CONFIG_UNIX_DIAG=3Dm
> CONFIG_TLS=3Dm
> CONFIG_TLS_DEVICE=3Dy
> # CONFIG_TLS_TOE is not set
> CONFIG_XFRM=3Dy
> CONFIG_XFRM_OFFLOAD=3Dy
> CONFIG_XFRM_ALGO=3Dm
> CONFIG_XFRM_USER=3Dm
> # CONFIG_XFRM_USER_COMPAT is not set
> CONFIG_XFRM_INTERFACE=3Dm
> CONFIG_XFRM_SUB_POLICY=3Dy
> CONFIG_XFRM_MIGRATE=3Dy
> CONFIG_XFRM_STATISTICS=3Dy
> CONFIG_XFRM_AH=3Dm
> CONFIG_XFRM_ESP=3Dm
> CONFIG_XFRM_IPCOMP=3Dm
> CONFIG_NET_KEY=3Dm
> CONFIG_NET_KEY_MIGRATE=3Dy
> CONFIG_SMC=3Dm
> CONFIG_SMC_DIAG=3Dm
> CONFIG_XDP_SOCKETS=3Dy
> # CONFIG_XDP_SOCKETS_DIAG is not set
> CONFIG_INET=3Dy
> CONFIG_IP_MULTICAST=3Dy
> CONFIG_IP_ADVANCED_ROUTER=3Dy
> CONFIG_IP_FIB_TRIE_STATS=3Dy
> CONFIG_IP_MULTIPLE_TABLES=3Dy
> CONFIG_IP_ROUTE_MULTIPATH=3Dy
> CONFIG_IP_ROUTE_VERBOSE=3Dy
> CONFIG_IP_ROUTE_CLASSID=3Dy
> # CONFIG_IP_PNP is not set
> CONFIG_NET_IPIP=3Dm
> CONFIG_NET_IPGRE_DEMUX=3Dm
> CONFIG_NET_IP_TUNNEL=3Dm
> CONFIG_NET_IPGRE=3Dm
> CONFIG_NET_IPGRE_BROADCAST=3Dy
> CONFIG_IP_MROUTE_COMMON=3Dy
> CONFIG_IP_MROUTE=3Dy
> CONFIG_IP_MROUTE_MULTIPLE_TABLES=3Dy
> CONFIG_IP_PIMSM_V1=3Dy
> CONFIG_IP_PIMSM_V2=3Dy
> CONFIG_SYN_COOKIES=3Dy
> CONFIG_NET_IPVTI=3Dm
> CONFIG_NET_UDP_TUNNEL=3Dm
> CONFIG_NET_FOU=3Dm
> CONFIG_NET_FOU_IP_TUNNELS=3Dy
> CONFIG_INET_AH=3Dm
> CONFIG_INET_ESP=3Dm
> CONFIG_INET_ESP_OFFLOAD=3Dm
> # CONFIG_INET_ESPINTCP is not set
> CONFIG_INET_IPCOMP=3Dm
> CONFIG_INET_TABLE_PERTURB_ORDER=3D16
> CONFIG_INET_XFRM_TUNNEL=3Dm
> CONFIG_INET_TUNNEL=3Dm
> CONFIG_INET_DIAG=3Dm
> CONFIG_INET_TCP_DIAG=3Dm
> CONFIG_INET_UDP_DIAG=3Dm
> CONFIG_INET_RAW_DIAG=3Dm
> CONFIG_INET_DIAG_DESTROY=3Dy
> CONFIG_TCP_CONG_ADVANCED=3Dy
> CONFIG_TCP_CONG_BIC=3Dm
> CONFIG_TCP_CONG_CUBIC=3Dy
> CONFIG_TCP_CONG_WESTWOOD=3Dm
> CONFIG_TCP_CONG_HTCP=3Dm
> CONFIG_TCP_CONG_HSTCP=3Dm
> CONFIG_TCP_CONG_HYBLA=3Dm
> CONFIG_TCP_CONG_VEGAS=3Dm
> CONFIG_TCP_CONG_NV=3Dm
> CONFIG_TCP_CONG_SCALABLE=3Dm
> CONFIG_TCP_CONG_LP=3Dm
> CONFIG_TCP_CONG_VENO=3Dm
> CONFIG_TCP_CONG_YEAH=3Dm
> CONFIG_TCP_CONG_ILLINOIS=3Dm
> CONFIG_TCP_CONG_DCTCP=3Dm
> CONFIG_TCP_CONG_CDG=3Dm
> CONFIG_TCP_CONG_BBR=3Dm
> CONFIG_DEFAULT_CUBIC=3Dy
> # CONFIG_DEFAULT_RENO is not set
> CONFIG_DEFAULT_TCP_CONG=3D"cubic"
> CONFIG_TCP_MD5SIG=3Dy
> CONFIG_IPV6=3Dy
> CONFIG_IPV6_ROUTER_PREF=3Dy
> CONFIG_IPV6_ROUTE_INFO=3Dy
> CONFIG_IPV6_OPTIMISTIC_DAD=3Dy
> CONFIG_INET6_AH=3Dm
> CONFIG_INET6_ESP=3Dm
> CONFIG_INET6_ESP_OFFLOAD=3Dm
> # CONFIG_INET6_ESPINTCP is not set
> CONFIG_INET6_IPCOMP=3Dm
> CONFIG_IPV6_MIP6=3Dy
> CONFIG_IPV6_ILA=3Dm
> CONFIG_INET6_XFRM_TUNNEL=3Dm
> CONFIG_INET6_TUNNEL=3Dm
> CONFIG_IPV6_VTI=3Dm
> CONFIG_IPV6_SIT=3Dm
> CONFIG_IPV6_SIT_6RD=3Dy
> CONFIG_IPV6_NDISC_NODETYPE=3Dy
> CONFIG_IPV6_TUNNEL=3Dm
> CONFIG_IPV6_GRE=3Dm
> CONFIG_IPV6_FOU=3Dm
> CONFIG_IPV6_FOU_TUNNEL=3Dm
> CONFIG_IPV6_MULTIPLE_TABLES=3Dy
> CONFIG_IPV6_SUBTREES=3Dy
> CONFIG_IPV6_MROUTE=3Dy
> CONFIG_IPV6_MROUTE_MULTIPLE_TABLES=3Dy
> CONFIG_IPV6_PIMSM_V2=3Dy
> CONFIG_IPV6_SEG6_LWTUNNEL=3Dy
> CONFIG_IPV6_SEG6_HMAC=3Dy
> CONFIG_IPV6_SEG6_BPF=3Dy
> # CONFIG_IPV6_RPL_LWTUNNEL is not set
> # CONFIG_IPV6_IOAM6_LWTUNNEL is not set
> CONFIG_NETLABEL=3Dy
> CONFIG_MPTCP=3Dy
> CONFIG_INET_MPTCP_DIAG=3Dm
> CONFIG_MPTCP_IPV6=3Dy
> CONFIG_NETWORK_SECMARK=3Dy
> CONFIG_NET_PTP_CLASSIFY=3Dy
> CONFIG_NETWORK_PHY_TIMESTAMPING=3Dy
> CONFIG_NETFILTER=3Dy
> CONFIG_NETFILTER_ADVANCED=3Dy
> CONFIG_BRIDGE_NETFILTER=3Dm
>=20
> #
> # Core Netfilter Configuration
> #
> CONFIG_NETFILTER_INGRESS=3Dy
> CONFIG_NETFILTER_EGRESS=3Dy
> CONFIG_NETFILTER_SKIP_EGRESS=3Dy
> CONFIG_NETFILTER_NETLINK=3Dm
> CONFIG_NETFILTER_FAMILY_BRIDGE=3Dy
> CONFIG_NETFILTER_FAMILY_ARP=3Dy
> # CONFIG_NETFILTER_NETLINK_HOOK is not set
> CONFIG_NETFILTER_NETLINK_ACCT=3Dm
> CONFIG_NETFILTER_NETLINK_QUEUE=3Dm
> CONFIG_NETFILTER_NETLINK_LOG=3Dm
> CONFIG_NETFILTER_NETLINK_OSF=3Dm
> CONFIG_NF_CONNTRACK=3Dm
> CONFIG_NF_LOG_SYSLOG=3Dm
> CONFIG_NETFILTER_CONNCOUNT=3Dm
> CONFIG_NF_CONNTRACK_MARK=3Dy
> CONFIG_NF_CONNTRACK_SECMARK=3Dy
> CONFIG_NF_CONNTRACK_ZONES=3Dy
> CONFIG_NF_CONNTRACK_PROCFS=3Dy
> CONFIG_NF_CONNTRACK_EVENTS=3Dy
> CONFIG_NF_CONNTRACK_TIMEOUT=3Dy
> CONFIG_NF_CONNTRACK_TIMESTAMP=3Dy
> CONFIG_NF_CONNTRACK_LABELS=3Dy
> CONFIG_NF_CT_PROTO_DCCP=3Dy
> CONFIG_NF_CT_PROTO_GRE=3Dy
> CONFIG_NF_CT_PROTO_SCTP=3Dy
> CONFIG_NF_CT_PROTO_UDPLITE=3Dy
> CONFIG_NF_CONNTRACK_AMANDA=3Dm
> CONFIG_NF_CONNTRACK_FTP=3Dm
> CONFIG_NF_CONNTRACK_H323=3Dm
> CONFIG_NF_CONNTRACK_IRC=3Dm
> CONFIG_NF_CONNTRACK_BROADCAST=3Dm
> CONFIG_NF_CONNTRACK_NETBIOS_NS=3Dm
> CONFIG_NF_CONNTRACK_SNMP=3Dm
> CONFIG_NF_CONNTRACK_PPTP=3Dm
> CONFIG_NF_CONNTRACK_SANE=3Dm
> CONFIG_NF_CONNTRACK_SIP=3Dm
> CONFIG_NF_CONNTRACK_TFTP=3Dm
> CONFIG_NF_CT_NETLINK=3Dm
> CONFIG_NF_CT_NETLINK_TIMEOUT=3Dm
> CONFIG_NF_CT_NETLINK_HELPER=3Dm
> CONFIG_NETFILTER_NETLINK_GLUE_CT=3Dy
> CONFIG_NF_NAT=3Dm
> CONFIG_NF_NAT_AMANDA=3Dm
> CONFIG_NF_NAT_FTP=3Dm
> CONFIG_NF_NAT_IRC=3Dm
> CONFIG_NF_NAT_SIP=3Dm
> CONFIG_NF_NAT_TFTP=3Dm
> CONFIG_NF_NAT_REDIRECT=3Dy
> CONFIG_NF_NAT_MASQUERADE=3Dy
> CONFIG_NETFILTER_SYNPROXY=3Dm
> CONFIG_NF_TABLES=3Dm
> CONFIG_NF_TABLES_INET=3Dy
> CONFIG_NF_TABLES_NETDEV=3Dy
> CONFIG_NFT_NUMGEN=3Dm
> CONFIG_NFT_CT=3Dm
> CONFIG_NFT_FLOW_OFFLOAD=3Dm
> CONFIG_NFT_CONNLIMIT=3Dm
> CONFIG_NFT_LOG=3Dm
> CONFIG_NFT_LIMIT=3Dm
> CONFIG_NFT_MASQ=3Dm
> CONFIG_NFT_REDIR=3Dm
> CONFIG_NFT_NAT=3Dm
> CONFIG_NFT_TUNNEL=3Dm
> CONFIG_NFT_OBJREF=3Dm
> CONFIG_NFT_QUEUE=3Dm
> CONFIG_NFT_QUOTA=3Dm
> CONFIG_NFT_REJECT=3Dm
> CONFIG_NFT_REJECT_INET=3Dm
> CONFIG_NFT_COMPAT=3Dm
> CONFIG_NFT_HASH=3Dm
> CONFIG_NFT_FIB=3Dm
> CONFIG_NFT_FIB_INET=3Dm
> CONFIG_NFT_XFRM=3Dm
> CONFIG_NFT_SOCKET=3Dm
> CONFIG_NFT_OSF=3Dm
> CONFIG_NFT_TPROXY=3Dm
> CONFIG_NFT_SYNPROXY=3Dm
> CONFIG_NF_DUP_NETDEV=3Dm
> CONFIG_NFT_DUP_NETDEV=3Dm
> CONFIG_NFT_FWD_NETDEV=3Dm
> CONFIG_NFT_FIB_NETDEV=3Dm
> # CONFIG_NFT_REJECT_NETDEV is not set
> CONFIG_NF_FLOW_TABLE_INET=3Dm
> CONFIG_NF_FLOW_TABLE=3Dm
> # CONFIG_NF_FLOW_TABLE_PROCFS is not set
> CONFIG_NETFILTER_XTABLES=3Dm
> CONFIG_NETFILTER_XTABLES_COMPAT=3Dy
>=20
> #
> # Xtables combined modules
> #
> CONFIG_NETFILTER_XT_MARK=3Dm
> CONFIG_NETFILTER_XT_CONNMARK=3Dm
> CONFIG_NETFILTER_XT_SET=3Dm
>=20
> #
> # Xtables targets
> #
> CONFIG_NETFILTER_XT_TARGET_AUDIT=3Dm
> CONFIG_NETFILTER_XT_TARGET_CHECKSUM=3Dm
> CONFIG_NETFILTER_XT_TARGET_CLASSIFY=3Dm
> CONFIG_NETFILTER_XT_TARGET_CONNMARK=3Dm
> CONFIG_NETFILTER_XT_TARGET_CONNSECMARK=3Dm
> CONFIG_NETFILTER_XT_TARGET_CT=3Dm
> CONFIG_NETFILTER_XT_TARGET_DSCP=3Dm
> CONFIG_NETFILTER_XT_TARGET_HL=3Dm
> CONFIG_NETFILTER_XT_TARGET_HMARK=3Dm
> CONFIG_NETFILTER_XT_TARGET_IDLETIMER=3Dm
> CONFIG_NETFILTER_XT_TARGET_LED=3Dm
> CONFIG_NETFILTER_XT_TARGET_LOG=3Dm
> CONFIG_NETFILTER_XT_TARGET_MARK=3Dm
> CONFIG_NETFILTER_XT_NAT=3Dm
> CONFIG_NETFILTER_XT_TARGET_NETMAP=3Dm
> CONFIG_NETFILTER_XT_TARGET_NFLOG=3Dm
> CONFIG_NETFILTER_XT_TARGET_NFQUEUE=3Dm
> # CONFIG_NETFILTER_XT_TARGET_NOTRACK is not set
> CONFIG_NETFILTER_XT_TARGET_RATEEST=3Dm
> CONFIG_NETFILTER_XT_TARGET_REDIRECT=3Dm
> CONFIG_NETFILTER_XT_TARGET_MASQUERADE=3Dm
> CONFIG_NETFILTER_XT_TARGET_TEE=3Dm
> CONFIG_NETFILTER_XT_TARGET_TPROXY=3Dm
> CONFIG_NETFILTER_XT_TARGET_TRACE=3Dm
> CONFIG_NETFILTER_XT_TARGET_SECMARK=3Dm
> CONFIG_NETFILTER_XT_TARGET_TCPMSS=3Dm
> CONFIG_NETFILTER_XT_TARGET_TCPOPTSTRIP=3Dm
>=20
> #
> # Xtables matches
> #
> CONFIG_NETFILTER_XT_MATCH_ADDRTYPE=3Dm
> CONFIG_NETFILTER_XT_MATCH_BPF=3Dm
> CONFIG_NETFILTER_XT_MATCH_CGROUP=3Dm
> CONFIG_NETFILTER_XT_MATCH_CLUSTER=3Dm
> CONFIG_NETFILTER_XT_MATCH_COMMENT=3Dm
> CONFIG_NETFILTER_XT_MATCH_CONNBYTES=3Dm
> CONFIG_NETFILTER_XT_MATCH_CONNLABEL=3Dm
> CONFIG_NETFILTER_XT_MATCH_CONNLIMIT=3Dm
> CONFIG_NETFILTER_XT_MATCH_CONNMARK=3Dm
> CONFIG_NETFILTER_XT_MATCH_CONNTRACK=3Dm
> CONFIG_NETFILTER_XT_MATCH_CPU=3Dm
> CONFIG_NETFILTER_XT_MATCH_DCCP=3Dm
> CONFIG_NETFILTER_XT_MATCH_DEVGROUP=3Dm
> CONFIG_NETFILTER_XT_MATCH_DSCP=3Dm
> CONFIG_NETFILTER_XT_MATCH_ECN=3Dm
> CONFIG_NETFILTER_XT_MATCH_ESP=3Dm
> CONFIG_NETFILTER_XT_MATCH_HASHLIMIT=3Dm
> CONFIG_NETFILTER_XT_MATCH_HELPER=3Dm
> CONFIG_NETFILTER_XT_MATCH_HL=3Dm
> CONFIG_NETFILTER_XT_MATCH_IPCOMP=3Dm
> CONFIG_NETFILTER_XT_MATCH_IPRANGE=3Dm
> CONFIG_NETFILTER_XT_MATCH_IPVS=3Dm
> CONFIG_NETFILTER_XT_MATCH_L2TP=3Dm
> CONFIG_NETFILTER_XT_MATCH_LENGTH=3Dm
> CONFIG_NETFILTER_XT_MATCH_LIMIT=3Dm
> CONFIG_NETFILTER_XT_MATCH_MAC=3Dm
> CONFIG_NETFILTER_XT_MATCH_MARK=3Dm
> CONFIG_NETFILTER_XT_MATCH_MULTIPORT=3Dm
> CONFIG_NETFILTER_XT_MATCH_NFACCT=3Dm
> CONFIG_NETFILTER_XT_MATCH_OSF=3Dm
> CONFIG_NETFILTER_XT_MATCH_OWNER=3Dm
> CONFIG_NETFILTER_XT_MATCH_POLICY=3Dm
> CONFIG_NETFILTER_XT_MATCH_PHYSDEV=3Dm
> CONFIG_NETFILTER_XT_MATCH_PKTTYPE=3Dm
> CONFIG_NETFILTER_XT_MATCH_QUOTA=3Dm
> CONFIG_NETFILTER_XT_MATCH_RATEEST=3Dm
> CONFIG_NETFILTER_XT_MATCH_REALM=3Dm
> CONFIG_NETFILTER_XT_MATCH_RECENT=3Dm
> CONFIG_NETFILTER_XT_MATCH_SCTP=3Dm
> CONFIG_NETFILTER_XT_MATCH_SOCKET=3Dm
> CONFIG_NETFILTER_XT_MATCH_STATE=3Dm
> CONFIG_NETFILTER_XT_MATCH_STATISTIC=3Dm
> CONFIG_NETFILTER_XT_MATCH_STRING=3Dm
> CONFIG_NETFILTER_XT_MATCH_TCPMSS=3Dm
> CONFIG_NETFILTER_XT_MATCH_TIME=3Dm
> CONFIG_NETFILTER_XT_MATCH_U32=3Dm
> # end of Core Netfilter Configuration
>=20
> CONFIG_IP_SET=3Dm
> CONFIG_IP_SET_MAX=3D256
> CONFIG_IP_SET_BITMAP_IP=3Dm
> CONFIG_IP_SET_BITMAP_IPMAC=3Dm
> CONFIG_IP_SET_BITMAP_PORT=3Dm
> CONFIG_IP_SET_HASH_IP=3Dm
> CONFIG_IP_SET_HASH_IPMARK=3Dm
> CONFIG_IP_SET_HASH_IPPORT=3Dm
> CONFIG_IP_SET_HASH_IPPORTIP=3Dm
> CONFIG_IP_SET_HASH_IPPORTNET=3Dm
> CONFIG_IP_SET_HASH_IPMAC=3Dm
> CONFIG_IP_SET_HASH_MAC=3Dm
> CONFIG_IP_SET_HASH_NETPORTNET=3Dm
> CONFIG_IP_SET_HASH_NET=3Dm
> CONFIG_IP_SET_HASH_NETNET=3Dm
> CONFIG_IP_SET_HASH_NETPORT=3Dm
> CONFIG_IP_SET_HASH_NETIFACE=3Dm
> CONFIG_IP_SET_LIST_SET=3Dm
> CONFIG_IP_VS=3Dm
> CONFIG_IP_VS_IPV6=3Dy
> # CONFIG_IP_VS_DEBUG is not set
> CONFIG_IP_VS_TAB_BITS=3D12
>=20
> #
> # IPVS transport protocol load balancing support
> #
> CONFIG_IP_VS_PROTO_TCP=3Dy
> CONFIG_IP_VS_PROTO_UDP=3Dy
> CONFIG_IP_VS_PROTO_AH_ESP=3Dy
> CONFIG_IP_VS_PROTO_ESP=3Dy
> CONFIG_IP_VS_PROTO_AH=3Dy
> CONFIG_IP_VS_PROTO_SCTP=3Dy
>=20
> #
> # IPVS scheduler
> #
> CONFIG_IP_VS_RR=3Dm
> CONFIG_IP_VS_WRR=3Dm
> CONFIG_IP_VS_LC=3Dm
> CONFIG_IP_VS_WLC=3Dm
> CONFIG_IP_VS_FO=3Dm
> CONFIG_IP_VS_OVF=3Dm
> CONFIG_IP_VS_LBLC=3Dm
> CONFIG_IP_VS_LBLCR=3Dm
> CONFIG_IP_VS_DH=3Dm
> CONFIG_IP_VS_SH=3Dm
> CONFIG_IP_VS_MH=3Dm
> CONFIG_IP_VS_SED=3Dm
> CONFIG_IP_VS_NQ=3Dm
> # CONFIG_IP_VS_TWOS is not set
>=20
> #
> # IPVS SH scheduler
> #
> CONFIG_IP_VS_SH_TAB_BITS=3D8
>=20
> #
> # IPVS MH scheduler
> #
> CONFIG_IP_VS_MH_TAB_INDEX=3D12
>=20
> #
> # IPVS application helper
> #
> CONFIG_IP_VS_FTP=3Dm
> CONFIG_IP_VS_NFCT=3Dy
> CONFIG_IP_VS_PE_SIP=3Dm
>=20
> #
> # IP: Netfilter Configuration
> #
> CONFIG_NF_DEFRAG_IPV4=3Dm
> CONFIG_NF_SOCKET_IPV4=3Dm
> CONFIG_NF_TPROXY_IPV4=3Dm
> CONFIG_NF_TABLES_IPV4=3Dy
> CONFIG_NFT_REJECT_IPV4=3Dm
> CONFIG_NFT_DUP_IPV4=3Dm
> CONFIG_NFT_FIB_IPV4=3Dm
> CONFIG_NF_TABLES_ARP=3Dy
> CONFIG_NF_DUP_IPV4=3Dm
> CONFIG_NF_LOG_ARP=3Dm
> CONFIG_NF_LOG_IPV4=3Dm
> CONFIG_NF_REJECT_IPV4=3Dm
> CONFIG_NF_NAT_SNMP_BASIC=3Dm
> CONFIG_NF_NAT_PPTP=3Dm
> CONFIG_NF_NAT_H323=3Dm
> CONFIG_IP_NF_IPTABLES=3Dm
> CONFIG_IP_NF_MATCH_AH=3Dm
> CONFIG_IP_NF_MATCH_ECN=3Dm
> CONFIG_IP_NF_MATCH_RPFILTER=3Dm
> CONFIG_IP_NF_MATCH_TTL=3Dm
> CONFIG_IP_NF_FILTER=3Dm
> CONFIG_IP_NF_TARGET_REJECT=3Dm
> CONFIG_IP_NF_TARGET_SYNPROXY=3Dm
> CONFIG_IP_NF_NAT=3Dm
> CONFIG_IP_NF_TARGET_MASQUERADE=3Dm
> CONFIG_IP_NF_TARGET_NETMAP=3Dm
> CONFIG_IP_NF_TARGET_REDIRECT=3Dm
> CONFIG_IP_NF_MANGLE=3Dm
> CONFIG_IP_NF_TARGET_CLUSTERIP=3Dm
> CONFIG_IP_NF_TARGET_ECN=3Dm
> CONFIG_IP_NF_TARGET_TTL=3Dm
> CONFIG_IP_NF_RAW=3Dm
> CONFIG_IP_NF_SECURITY=3Dm
> CONFIG_IP_NF_ARPTABLES=3Dm
> CONFIG_IP_NF_ARPFILTER=3Dm
> CONFIG_IP_NF_ARP_MANGLE=3Dm
> # end of IP: Netfilter Configuration
>=20
> #
> # IPv6: Netfilter Configuration
> #
> CONFIG_NF_SOCKET_IPV6=3Dm
> CONFIG_NF_TPROXY_IPV6=3Dm
> CONFIG_NF_TABLES_IPV6=3Dy
> CONFIG_NFT_REJECT_IPV6=3Dm
> CONFIG_NFT_DUP_IPV6=3Dm
> CONFIG_NFT_FIB_IPV6=3Dm
> CONFIG_NF_DUP_IPV6=3Dm
> CONFIG_NF_REJECT_IPV6=3Dm
> CONFIG_NF_LOG_IPV6=3Dm
> CONFIG_IP6_NF_IPTABLES=3Dm
> CONFIG_IP6_NF_MATCH_AH=3Dm
> CONFIG_IP6_NF_MATCH_EUI64=3Dm
> CONFIG_IP6_NF_MATCH_FRAG=3Dm
> CONFIG_IP6_NF_MATCH_OPTS=3Dm
> CONFIG_IP6_NF_MATCH_HL=3Dm
> CONFIG_IP6_NF_MATCH_IPV6HEADER=3Dm
> CONFIG_IP6_NF_MATCH_MH=3Dm
> CONFIG_IP6_NF_MATCH_RPFILTER=3Dm
> CONFIG_IP6_NF_MATCH_RT=3Dm
> CONFIG_IP6_NF_MATCH_SRH=3Dm
> CONFIG_IP6_NF_TARGET_HL=3Dm
> CONFIG_IP6_NF_FILTER=3Dm
> CONFIG_IP6_NF_TARGET_REJECT=3Dm
> CONFIG_IP6_NF_TARGET_SYNPROXY=3Dm
> CONFIG_IP6_NF_MANGLE=3Dm
> CONFIG_IP6_NF_RAW=3Dm
> CONFIG_IP6_NF_SECURITY=3Dm
> CONFIG_IP6_NF_NAT=3Dm
> CONFIG_IP6_NF_TARGET_MASQUERADE=3Dm
> CONFIG_IP6_NF_TARGET_NPT=3Dm
> # end of IPv6: Netfilter Configuration
>=20
> CONFIG_NF_DEFRAG_IPV6=3Dm
> CONFIG_NF_TABLES_BRIDGE=3Dm
> CONFIG_NFT_BRIDGE_META=3Dm
> CONFIG_NFT_BRIDGE_REJECT=3Dm
> CONFIG_NF_CONNTRACK_BRIDGE=3Dm
> CONFIG_BRIDGE_NF_EBTABLES=3Dm
> CONFIG_BRIDGE_EBT_BROUTE=3Dm
> CONFIG_BRIDGE_EBT_T_FILTER=3Dm
> CONFIG_BRIDGE_EBT_T_NAT=3Dm
> CONFIG_BRIDGE_EBT_802_3=3Dm
> CONFIG_BRIDGE_EBT_AMONG=3Dm
> CONFIG_BRIDGE_EBT_ARP=3Dm
> CONFIG_BRIDGE_EBT_IP=3Dm
> CONFIG_BRIDGE_EBT_IP6=3Dm
> CONFIG_BRIDGE_EBT_LIMIT=3Dm
> CONFIG_BRIDGE_EBT_MARK=3Dm
> CONFIG_BRIDGE_EBT_PKTTYPE=3Dm
> CONFIG_BRIDGE_EBT_STP=3Dm
> CONFIG_BRIDGE_EBT_VLAN=3Dm
> CONFIG_BRIDGE_EBT_ARPREPLY=3Dm
> CONFIG_BRIDGE_EBT_DNAT=3Dm
> CONFIG_BRIDGE_EBT_MARK_T=3Dm
> CONFIG_BRIDGE_EBT_REDIRECT=3Dm
> CONFIG_BRIDGE_EBT_SNAT=3Dm
> CONFIG_BRIDGE_EBT_LOG=3Dm
> CONFIG_BRIDGE_EBT_NFLOG=3Dm
> # CONFIG_BPFILTER is not set
> CONFIG_IP_DCCP=3Dm
> CONFIG_INET_DCCP_DIAG=3Dm
>=20
> #
> # DCCP CCIDs Configuration
> #
> # CONFIG_IP_DCCP_CCID2_DEBUG is not set
> CONFIG_IP_DCCP_CCID3=3Dy
> # CONFIG_IP_DCCP_CCID3_DEBUG is not set
> CONFIG_IP_DCCP_TFRC_LIB=3Dy
> # end of DCCP CCIDs Configuration
>=20
> #
> # DCCP Kernel Hacking
> #
> # CONFIG_IP_DCCP_DEBUG is not set
> # end of DCCP Kernel Hacking
>=20
> CONFIG_IP_SCTP=3Dm
> # CONFIG_SCTP_DBG_OBJCNT is not set
> # CONFIG_SCTP_DEFAULT_COOKIE_HMAC_MD5 is not set
> CONFIG_SCTP_DEFAULT_COOKIE_HMAC_SHA1=3Dy
> # CONFIG_SCTP_DEFAULT_COOKIE_HMAC_NONE is not set
> CONFIG_SCTP_COOKIE_HMAC_MD5=3Dy
> CONFIG_SCTP_COOKIE_HMAC_SHA1=3Dy
> CONFIG_INET_SCTP_DIAG=3Dm
> CONFIG_RDS=3Dm
> CONFIG_RDS_RDMA=3Dm
> CONFIG_RDS_TCP=3Dm
> # CONFIG_RDS_DEBUG is not set
> CONFIG_TIPC=3Dm
> CONFIG_TIPC_MEDIA_IB=3Dy
> CONFIG_TIPC_MEDIA_UDP=3Dy
> CONFIG_TIPC_CRYPTO=3Dy
> CONFIG_TIPC_DIAG=3Dm
> CONFIG_ATM=3Dm
> CONFIG_ATM_CLIP=3Dm
> # CONFIG_ATM_CLIP_NO_ICMP is not set
> CONFIG_ATM_LANE=3Dm
> CONFIG_ATM_MPOA=3Dm
> CONFIG_ATM_BR2684=3Dm
> # CONFIG_ATM_BR2684_IPFILTER is not set
> CONFIG_L2TP=3Dm
> CONFIG_L2TP_DEBUGFS=3Dm
> CONFIG_L2TP_V3=3Dy
> CONFIG_L2TP_IP=3Dm
> CONFIG_L2TP_ETH=3Dm
> CONFIG_STP=3Dm
> CONFIG_GARP=3Dm
> CONFIG_MRP=3Dm
> CONFIG_BRIDGE=3Dm
> CONFIG_BRIDGE_IGMP_SNOOPING=3Dy
> CONFIG_BRIDGE_VLAN_FILTERING=3Dy
> # CONFIG_BRIDGE_MRP is not set
> # CONFIG_BRIDGE_CFM is not set
> # CONFIG_NET_DSA is not set
> CONFIG_VLAN_8021Q=3Dm
> CONFIG_VLAN_8021Q_GVRP=3Dy
> CONFIG_VLAN_8021Q_MVRP=3Dy
> CONFIG_LLC=3Dm
> CONFIG_LLC2=3Dm
> CONFIG_ATALK=3Dm
> CONFIG_DEV_APPLETALK=3Dm
> CONFIG_IPDDP=3Dm
> CONFIG_IPDDP_ENCAP=3Dy
> # CONFIG_X25 is not set
> CONFIG_LAPB=3Dm
> CONFIG_PHONET=3Dm
> CONFIG_6LOWPAN=3Dm
> # CONFIG_6LOWPAN_DEBUGFS is not set
> CONFIG_6LOWPAN_NHC=3Dm
> CONFIG_6LOWPAN_NHC_DEST=3Dm
> CONFIG_6LOWPAN_NHC_FRAGMENT=3Dm
> CONFIG_6LOWPAN_NHC_HOP=3Dm
> CONFIG_6LOWPAN_NHC_IPV6=3Dm
> CONFIG_6LOWPAN_NHC_MOBILITY=3Dm
> CONFIG_6LOWPAN_NHC_ROUTING=3Dm
> CONFIG_6LOWPAN_NHC_UDP=3Dm
> CONFIG_6LOWPAN_GHC_EXT_HDR_HOP=3Dm
> CONFIG_6LOWPAN_GHC_UDP=3Dm
> CONFIG_6LOWPAN_GHC_ICMPV6=3Dm
> CONFIG_6LOWPAN_GHC_EXT_HDR_DEST=3Dm
> CONFIG_6LOWPAN_GHC_EXT_HDR_FRAG=3Dm
> CONFIG_6LOWPAN_GHC_EXT_HDR_ROUTE=3Dm
> CONFIG_IEEE802154=3Dm
> # CONFIG_IEEE802154_NL802154_EXPERIMENTAL is not set
> CONFIG_IEEE802154_SOCKET=3Dm
> CONFIG_IEEE802154_6LOWPAN=3Dm
> CONFIG_MAC802154=3Dm
> CONFIG_NET_SCHED=3Dy
>=20
> #
> # Queueing/Scheduling
> #
> CONFIG_NET_SCH_HTB=3Dm
> CONFIG_NET_SCH_HFSC=3Dm
> CONFIG_NET_SCH_PRIO=3Dm
> CONFIG_NET_SCH_MULTIQ=3Dm
> CONFIG_NET_SCH_RED=3Dm
> CONFIG_NET_SCH_SFB=3Dm
> CONFIG_NET_SCH_SFQ=3Dm
> CONFIG_NET_SCH_TEQL=3Dm
> CONFIG_NET_SCH_TBF=3Dm
> CONFIG_NET_SCH_CBS=3Dm
> CONFIG_NET_SCH_ETF=3Dm
> CONFIG_NET_SCH_TAPRIO=3Dm
> CONFIG_NET_SCH_GRED=3Dm
> CONFIG_NET_SCH_NETEM=3Dm
> CONFIG_NET_SCH_DRR=3Dm
> CONFIG_NET_SCH_MQPRIO=3Dm
> CONFIG_NET_SCH_SKBPRIO=3Dm
> CONFIG_NET_SCH_CHOKE=3Dm
> CONFIG_NET_SCH_QFQ=3Dm
> CONFIG_NET_SCH_CODEL=3Dm
> CONFIG_NET_SCH_FQ_CODEL=3Dy
> CONFIG_NET_SCH_CAKE=3Dm
> CONFIG_NET_SCH_FQ=3Dm
> CONFIG_NET_SCH_HHF=3Dm
> CONFIG_NET_SCH_PIE=3Dm
> CONFIG_NET_SCH_FQ_PIE=3Dm
> CONFIG_NET_SCH_INGRESS=3Dm
> CONFIG_NET_SCH_PLUG=3Dm
> CONFIG_NET_SCH_ETS=3Dm
> CONFIG_NET_SCH_DEFAULT=3Dy
> # CONFIG_DEFAULT_FQ is not set
> # CONFIG_DEFAULT_CODEL is not set
> CONFIG_DEFAULT_FQ_CODEL=3Dy
> # CONFIG_DEFAULT_FQ_PIE is not set
> # CONFIG_DEFAULT_SFQ is not set
> # CONFIG_DEFAULT_PFIFO_FAST is not set
> CONFIG_DEFAULT_NET_SCH=3D"fq_codel"
>=20
> #
> # Classification
> #
> CONFIG_NET_CLS=3Dy
> CONFIG_NET_CLS_BASIC=3Dm
> CONFIG_NET_CLS_ROUTE4=3Dm
> CONFIG_NET_CLS_FW=3Dm
> CONFIG_NET_CLS_U32=3Dm
> CONFIG_CLS_U32_PERF=3Dy
> CONFIG_CLS_U32_MARK=3Dy
> CONFIG_NET_CLS_FLOW=3Dm
> CONFIG_NET_CLS_CGROUP=3Dm
> CONFIG_NET_CLS_BPF=3Dm
> CONFIG_NET_CLS_FLOWER=3Dm
> CONFIG_NET_CLS_MATCHALL=3Dm
> CONFIG_NET_EMATCH=3Dy
> CONFIG_NET_EMATCH_STACK=3D32
> CONFIG_NET_EMATCH_CMP=3Dm
> CONFIG_NET_EMATCH_NBYTE=3Dm
> CONFIG_NET_EMATCH_U32=3Dm
> CONFIG_NET_EMATCH_META=3Dm
> CONFIG_NET_EMATCH_TEXT=3Dm
> CONFIG_NET_EMATCH_CANID=3Dm
> CONFIG_NET_EMATCH_IPSET=3Dm
> CONFIG_NET_EMATCH_IPT=3Dm
> CONFIG_NET_CLS_ACT=3Dy
> CONFIG_NET_ACT_POLICE=3Dm
> CONFIG_NET_ACT_GACT=3Dm
> CONFIG_GACT_PROB=3Dy
> CONFIG_NET_ACT_MIRRED=3Dm
> CONFIG_NET_ACT_SAMPLE=3Dm
> CONFIG_NET_ACT_IPT=3Dm
> CONFIG_NET_ACT_NAT=3Dm
> CONFIG_NET_ACT_PEDIT=3Dm
> CONFIG_NET_ACT_SIMP=3Dm
> CONFIG_NET_ACT_SKBEDIT=3Dm
> CONFIG_NET_ACT_CSUM=3Dm
> CONFIG_NET_ACT_MPLS=3Dm
> CONFIG_NET_ACT_VLAN=3Dm
> CONFIG_NET_ACT_BPF=3Dm
> CONFIG_NET_ACT_CONNMARK=3Dm
> CONFIG_NET_ACT_CTINFO=3Dm
> CONFIG_NET_ACT_SKBMOD=3Dm
> CONFIG_NET_ACT_IFE=3Dm
> CONFIG_NET_ACT_TUNNEL_KEY=3Dm
> CONFIG_NET_ACT_CT=3Dm
> CONFIG_NET_ACT_GATE=3Dm
> CONFIG_NET_IFE_SKBMARK=3Dm
> CONFIG_NET_IFE_SKBPRIO=3Dm
> CONFIG_NET_IFE_SKBTCINDEX=3Dm
> # CONFIG_NET_TC_SKB_EXT is not set
> CONFIG_NET_SCH_FIFO=3Dy
> CONFIG_DCB=3Dy
> CONFIG_DNS_RESOLVER=3Dm
> CONFIG_BATMAN_ADV=3Dm
> CONFIG_BATMAN_ADV_BATMAN_V=3Dy
> CONFIG_BATMAN_ADV_BLA=3Dy
> CONFIG_BATMAN_ADV_DAT=3Dy
> CONFIG_BATMAN_ADV_NC=3Dy
> CONFIG_BATMAN_ADV_MCAST=3Dy
> # CONFIG_BATMAN_ADV_DEBUG is not set
> # CONFIG_BATMAN_ADV_TRACING is not set
> CONFIG_OPENVSWITCH=3Dm
> CONFIG_OPENVSWITCH_GRE=3Dm
> CONFIG_OPENVSWITCH_VXLAN=3Dm
> CONFIG_OPENVSWITCH_GENEVE=3Dm
> CONFIG_VSOCKETS=3Dm
> CONFIG_VSOCKETS_DIAG=3Dm
> CONFIG_VSOCKETS_LOOPBACK=3Dm
> CONFIG_VMWARE_VMCI_VSOCKETS=3Dm
> CONFIG_VIRTIO_VSOCKETS=3Dm
> CONFIG_VIRTIO_VSOCKETS_COMMON=3Dm
> CONFIG_HYPERV_VSOCKETS=3Dm
> CONFIG_NETLINK_DIAG=3Dm
> CONFIG_MPLS=3Dy
> CONFIG_NET_MPLS_GSO=3Dy
> CONFIG_MPLS_ROUTING=3Dm
> CONFIG_MPLS_IPTUNNEL=3Dm
> CONFIG_NET_NSH=3Dm
> # CONFIG_HSR is not set
> CONFIG_NET_SWITCHDEV=3Dy
> CONFIG_NET_L3_MASTER_DEV=3Dy
> CONFIG_QRTR=3Dm
> # CONFIG_QRTR_TUN is not set
> CONFIG_QRTR_MHI=3Dm
> # CONFIG_NET_NCSI is not set
> CONFIG_PCPU_DEV_REFCNT=3Dy
> CONFIG_RPS=3Dy
> CONFIG_RFS_ACCEL=3Dy
> CONFIG_SOCK_RX_QUEUE_MAPPING=3Dy
> CONFIG_XPS=3Dy
> CONFIG_CGROUP_NET_PRIO=3Dy
> CONFIG_CGROUP_NET_CLASSID=3Dy
> CONFIG_NET_RX_BUSY_POLL=3Dy
> CONFIG_BQL=3Dy
> CONFIG_BPF_STREAM_PARSER=3Dy
> CONFIG_NET_FLOW_LIMIT=3Dy
>=20
> #
> # Network testing
> #
> CONFIG_NET_PKTGEN=3Dm
> CONFIG_NET_DROP_MONITOR=3Dm
> # end of Network testing
> # end of Networking options
>=20
> CONFIG_HAMRADIO=3Dy
>=20
> #
> # Packet Radio protocols
> #
> CONFIG_AX25=3Dm
> CONFIG_AX25_DAMA_SLAVE=3Dy
> CONFIG_NETROM=3Dm
> CONFIG_ROSE=3Dm
>=20
> #
> # AX.25 network device drivers
> #
> CONFIG_MKISS=3Dm
> CONFIG_6PACK=3Dm
> CONFIG_BPQETHER=3Dm
> CONFIG_BAYCOM_SER_FDX=3Dm
> CONFIG_BAYCOM_SER_HDX=3Dm
> CONFIG_BAYCOM_PAR=3Dm
> CONFIG_YAM=3Dm
> # end of AX.25 network device drivers
>=20
> CONFIG_CAN=3Dm
> CONFIG_CAN_RAW=3Dm
> CONFIG_CAN_BCM=3Dm
> CONFIG_CAN_GW=3Dm
> CONFIG_CAN_J1939=3Dm
> CONFIG_CAN_ISOTP=3Dm
> CONFIG_BT=3Dm
> CONFIG_BT_BREDR=3Dy
> CONFIG_BT_RFCOMM=3Dm
> CONFIG_BT_RFCOMM_TTY=3Dy
> CONFIG_BT_BNEP=3Dm
> CONFIG_BT_BNEP_MC_FILTER=3Dy
> CONFIG_BT_BNEP_PROTO_FILTER=3Dy
> CONFIG_BT_CMTP=3Dm
> CONFIG_BT_HIDP=3Dm
> CONFIG_BT_HS=3Dy
> CONFIG_BT_LE=3Dy
> CONFIG_BT_6LOWPAN=3Dm
> CONFIG_BT_LEDS=3Dy
> # CONFIG_BT_MSFTEXT is not set
> # CONFIG_BT_AOSPEXT is not set
> CONFIG_BT_DEBUGFS=3Dy
> # CONFIG_BT_SELFTEST is not set
>=20
> #
> # Bluetooth device drivers
> #
> CONFIG_BT_INTEL=3Dm
> CONFIG_BT_BCM=3Dm
> CONFIG_BT_RTL=3Dm
> CONFIG_BT_QCA=3Dm
> CONFIG_BT_MTK=3Dm
> CONFIG_BT_HCIBTUSB=3Dm
> CONFIG_BT_HCIBTUSB_AUTOSUSPEND=3Dy
> CONFIG_BT_HCIBTUSB_BCM=3Dy
> CONFIG_BT_HCIBTUSB_MTK=3Dy
> CONFIG_BT_HCIBTUSB_RTL=3Dy
> CONFIG_BT_HCIBTSDIO=3Dm
> CONFIG_BT_HCIUART=3Dm
> CONFIG_BT_HCIUART_SERDEV=3Dy
> CONFIG_BT_HCIUART_H4=3Dy
> CONFIG_BT_HCIUART_NOKIA=3Dm
> CONFIG_BT_HCIUART_BCSP=3Dy
> CONFIG_BT_HCIUART_ATH3K=3Dy
> CONFIG_BT_HCIUART_LL=3Dy
> CONFIG_BT_HCIUART_3WIRE=3Dy
> CONFIG_BT_HCIUART_INTEL=3Dy
> CONFIG_BT_HCIUART_BCM=3Dy
> CONFIG_BT_HCIUART_RTL=3Dy
> CONFIG_BT_HCIUART_QCA=3Dy
> CONFIG_BT_HCIUART_AG6XX=3Dy
> CONFIG_BT_HCIUART_MRVL=3Dy
> CONFIG_BT_HCIBCM203X=3Dm
> CONFIG_BT_HCIBPA10X=3Dm
> CONFIG_BT_HCIBFUSB=3Dm
> CONFIG_BT_HCIDTL1=3Dm
> CONFIG_BT_HCIBT3C=3Dm
> CONFIG_BT_HCIBLUECARD=3Dm
> CONFIG_BT_HCIVHCI=3Dm
> CONFIG_BT_MRVL=3Dm
> CONFIG_BT_MRVL_SDIO=3Dm
> CONFIG_BT_ATH3K=3Dm
> # CONFIG_BT_MTKSDIO is not set
> CONFIG_BT_MTKUART=3Dm
> CONFIG_BT_HCIRSI=3Dm
> # CONFIG_BT_VIRTIO is not set
> # end of Bluetooth device drivers
>=20
> CONFIG_AF_RXRPC=3Dm
> CONFIG_AF_RXRPC_IPV6=3Dy
> # CONFIG_AF_RXRPC_INJECT_LOSS is not set
> # CONFIG_AF_RXRPC_DEBUG is not set
> CONFIG_RXKAD=3Dy
> CONFIG_AF_KCM=3Dm
> CONFIG_STREAM_PARSER=3Dy
> # CONFIG_MCTP is not set
> CONFIG_FIB_RULES=3Dy
> CONFIG_WIRELESS=3Dy
> CONFIG_WIRELESS_EXT=3Dy
> CONFIG_WEXT_CORE=3Dy
> CONFIG_WEXT_PROC=3Dy
> CONFIG_WEXT_SPY=3Dy
> CONFIG_WEXT_PRIV=3Dy
> CONFIG_CFG80211=3Dm
> # CONFIG_NL80211_TESTMODE is not set
> # CONFIG_CFG80211_DEVELOPER_WARNINGS is not set
> # CONFIG_CFG80211_CERTIFICATION_ONUS is not set
> CONFIG_CFG80211_REQUIRE_SIGNED_REGDB=3Dy
> CONFIG_CFG80211_USE_KERNEL_REGDB_KEYS=3Dy
> CONFIG_CFG80211_DEFAULT_PS=3Dy
> # CONFIG_CFG80211_DEBUGFS is not set
> CONFIG_CFG80211_CRDA_SUPPORT=3Dy
> CONFIG_CFG80211_WEXT=3Dy
> CONFIG_CFG80211_WEXT_EXPORT=3Dy
> CONFIG_LIB80211=3Dm
> CONFIG_LIB80211_CRYPT_WEP=3Dm
> CONFIG_LIB80211_CRYPT_CCMP=3Dm
> CONFIG_LIB80211_CRYPT_TKIP=3Dm
> # CONFIG_LIB80211_DEBUG is not set
> CONFIG_MAC80211=3Dm
> CONFIG_MAC80211_HAS_RC=3Dy
> CONFIG_MAC80211_RC_MINSTREL=3Dy
> CONFIG_MAC80211_RC_DEFAULT_MINSTREL=3Dy
> CONFIG_MAC80211_RC_DEFAULT=3D"minstrel_ht"
> CONFIG_MAC80211_MESH=3Dy
> CONFIG_MAC80211_LEDS=3Dy
> # CONFIG_MAC80211_DEBUGFS is not set
> # CONFIG_MAC80211_MESSAGE_TRACING is not set
> # CONFIG_MAC80211_DEBUG_MENU is not set
> CONFIG_MAC80211_STA_HASH_MAX_SIZE=3D0
> CONFIG_RFKILL=3Dm
> CONFIG_RFKILL_LEDS=3Dy
> CONFIG_RFKILL_INPUT=3Dy
> # CONFIG_RFKILL_GPIO is not set
> CONFIG_NET_9P=3Dm
> CONFIG_NET_9P_FD=3Dm
> CONFIG_NET_9P_VIRTIO=3Dm
> CONFIG_NET_9P_XEN=3Dm
> CONFIG_NET_9P_RDMA=3Dm
> # CONFIG_NET_9P_DEBUG is not set
> # CONFIG_CAIF is not set
> CONFIG_CEPH_LIB=3Dm
> # CONFIG_CEPH_LIB_PRETTYDEBUG is not set
> # CONFIG_CEPH_LIB_USE_DNS_RESOLVER is not set
> CONFIG_NFC=3Dm
> CONFIG_NFC_DIGITAL=3Dm
> CONFIG_NFC_NCI=3Dm
> # CONFIG_NFC_NCI_SPI is not set
> # CONFIG_NFC_NCI_UART is not set
> CONFIG_NFC_HCI=3Dm
> # CONFIG_NFC_SHDLC is not set
>=20
> #
> # Near Field Communication (NFC) devices
> #
> # CONFIG_NFC_TRF7970A is not set
> CONFIG_NFC_MEI_PHY=3Dm
> CONFIG_NFC_SIM=3Dm
> CONFIG_NFC_PORT100=3Dm
> # CONFIG_NFC_VIRTUAL_NCI is not set
> # CONFIG_NFC_FDP is not set
> CONFIG_NFC_PN544=3Dm
> CONFIG_NFC_PN544_MEI=3Dm
> CONFIG_NFC_PN533=3Dm
> CONFIG_NFC_PN533_USB=3Dm
> # CONFIG_NFC_PN533_I2C is not set
> # CONFIG_NFC_PN532_UART is not set
> # CONFIG_NFC_MICROREAD_MEI is not set
> # CONFIG_NFC_MRVL_USB is not set
> # CONFIG_NFC_ST_NCI_I2C is not set
> # CONFIG_NFC_ST_NCI_SPI is not set
> CONFIG_NFC_NXP_NCI=3Dm
> CONFIG_NFC_NXP_NCI_I2C=3Dm
> # CONFIG_NFC_S3FWRN5_I2C is not set
> # CONFIG_NFC_S3FWRN82_UART is not set
> # CONFIG_NFC_ST95HF is not set
> # end of Near Field Communication (NFC) devices
>=20
> CONFIG_PSAMPLE=3Dm
> CONFIG_NET_IFE=3Dm
> CONFIG_LWTUNNEL=3Dy
> CONFIG_LWTUNNEL_BPF=3Dy
> CONFIG_DST_CACHE=3Dy
> CONFIG_GRO_CELLS=3Dy
> CONFIG_SOCK_VALIDATE_XMIT=3Dy
> CONFIG_NET_SELFTESTS=3Dm
> CONFIG_NET_SOCK_MSG=3Dy
> CONFIG_NET_DEVLINK=3Dy
> CONFIG_PAGE_POOL=3Dy
> # CONFIG_PAGE_POOL_STATS is not set
> CONFIG_FAILOVER=3Dm
> CONFIG_ETHTOOL_NETLINK=3Dy
>=20
> #
> # Device Drivers
> #
> CONFIG_HAVE_EISA=3Dy
> # CONFIG_EISA is not set
> CONFIG_HAVE_PCI=3Dy
> CONFIG_PCI=3Dy
> CONFIG_PCI_DOMAINS=3Dy
> CONFIG_PCIEPORTBUS=3Dy
> CONFIG_HOTPLUG_PCI_PCIE=3Dy
> CONFIG_PCIEAER=3Dy
> CONFIG_PCIEAER_INJECT=3Dm
> # CONFIG_PCIE_ECRC is not set
> CONFIG_PCIEASPM=3Dy
> CONFIG_PCIEASPM_DEFAULT=3Dy
> # CONFIG_PCIEASPM_POWERSAVE is not set
> # CONFIG_PCIEASPM_POWER_SUPERSAVE is not set
> # CONFIG_PCIEASPM_PERFORMANCE is not set
> CONFIG_PCIE_PME=3Dy
> CONFIG_PCIE_DPC=3Dy
> CONFIG_PCIE_PTM=3Dy
> # CONFIG_PCIE_EDR is not set
> CONFIG_PCI_MSI=3Dy
> CONFIG_PCI_MSI_IRQ_DOMAIN=3Dy
> CONFIG_PCI_QUIRKS=3Dy
> # CONFIG_PCI_DEBUG is not set
> CONFIG_PCI_REALLOC_ENABLE_AUTO=3Dy
> CONFIG_PCI_STUB=3Dm
> CONFIG_PCI_PF_STUB=3Dm
> CONFIG_XEN_PCIDEV_FRONTEND=3Dm
> CONFIG_PCI_ATS=3Dy
> CONFIG_PCI_DOE=3Dy
> CONFIG_PCI_LOCKLESS_CONFIG=3Dy
> CONFIG_PCI_IOV=3Dy
> CONFIG_PCI_PRI=3Dy
> CONFIG_PCI_PASID=3Dy
> # CONFIG_PCI_P2PDMA is not set
> CONFIG_PCI_LABEL=3Dy
> CONFIG_PCI_HYPERV=3Dm
> # CONFIG_PCIE_BUS_TUNE_OFF is not set
> CONFIG_PCIE_BUS_DEFAULT=3Dy
> # CONFIG_PCIE_BUS_SAFE is not set
> # CONFIG_PCIE_BUS_PERFORMANCE is not set
> # CONFIG_PCIE_BUS_PEER2PEER is not set
> CONFIG_VGA_ARB=3Dy
> CONFIG_VGA_ARB_MAX_GPUS=3D16
> CONFIG_HOTPLUG_PCI=3Dy
> CONFIG_HOTPLUG_PCI_ACPI=3Dy
> CONFIG_HOTPLUG_PCI_ACPI_IBM=3Dm
> CONFIG_HOTPLUG_PCI_CPCI=3Dy
> CONFIG_HOTPLUG_PCI_CPCI_ZT5550=3Dm
> CONFIG_HOTPLUG_PCI_CPCI_GENERIC=3Dm
> CONFIG_HOTPLUG_PCI_SHPC=3Dy
>=20
> #
> # PCI controller drivers
> #
> CONFIG_VMD=3Dm
> CONFIG_PCI_HYPERV_INTERFACE=3Dm
>=20
> #
> # DesignWare PCI Core Support
> #
> # CONFIG_PCIE_DW_PLAT_HOST is not set
> # CONFIG_PCI_MESON is not set
> # end of DesignWare PCI Core Support
>=20
> #
> # Mobiveil PCIe Core Support
> #
> # end of Mobiveil PCIe Core Support
>=20
> #
> # Cadence PCIe controllers support
> #
> # end of Cadence PCIe controllers support
> # end of PCI controller drivers
>=20
> #
> # PCI Endpoint
> #
> # CONFIG_PCI_ENDPOINT is not set
> # end of PCI Endpoint
>=20
> #
> # PCI switch controller drivers
> #
> # CONFIG_PCI_SW_SWITCHTEC is not set
> # end of PCI switch controller drivers
>=20
> CONFIG_CXL_BUS=3Dy
> CONFIG_CXL_PCI=3Dm
> # CONFIG_CXL_MEM_RAW_COMMANDS is not set
> CONFIG_CXL_ACPI=3Dm
> CONFIG_CXL_PMEM=3Dm
> CONFIG_CXL_MEM=3Dm
> CONFIG_CXL_PORT=3Dy
> CONFIG_CXL_SUSPEND=3Dy
> CONFIG_CXL_REGION=3Dy
> CONFIG_PCCARD=3Dm
> CONFIG_PCMCIA=3Dm
> CONFIG_PCMCIA_LOAD_CIS=3Dy
> CONFIG_CARDBUS=3Dy
>=20
> #
> # PC-card bridges
> #
> CONFIG_YENTA=3Dm
> CONFIG_YENTA_O2=3Dy
> CONFIG_YENTA_RICOH=3Dy
> CONFIG_YENTA_TI=3Dy
> CONFIG_YENTA_ENE_TUNE=3Dy
> CONFIG_YENTA_TOSHIBA=3Dy
> CONFIG_PD6729=3Dm
> CONFIG_I82092=3Dm
> CONFIG_PCCARD_NONSTATIC=3Dy
> # CONFIG_RAPIDIO is not set
>=20
> #
> # Generic Driver Options
> #
> CONFIG_AUXILIARY_BUS=3Dy
> # CONFIG_UEVENT_HELPER is not set
> CONFIG_DEVTMPFS=3Dy
> # CONFIG_DEVTMPFS_MOUNT is not set
> # CONFIG_DEVTMPFS_SAFE is not set
> CONFIG_STANDALONE=3Dy
> CONFIG_PREVENT_FIRMWARE_BUILD=3Dy
>=20
> #
> # Firmware loader
> #
> CONFIG_FW_LOADER=3Dy
> CONFIG_FW_LOADER_PAGED_BUF=3Dy
> CONFIG_FW_LOADER_SYSFS=3Dy
> CONFIG_EXTRA_FIRMWARE=3D""
> CONFIG_FW_LOADER_USER_HELPER=3Dy
> # CONFIG_FW_LOADER_USER_HELPER_FALLBACK is not set
> CONFIG_FW_LOADER_COMPRESS=3Dy
> CONFIG_FW_LOADER_COMPRESS_XZ=3Dy
> # CONFIG_FW_LOADER_COMPRESS_ZSTD is not set
> CONFIG_FW_CACHE=3Dy
> # CONFIG_FW_UPLOAD is not set
> # end of Firmware loader
>=20
> CONFIG_WANT_DEV_COREDUMP=3Dy
> CONFIG_ALLOW_DEV_COREDUMP=3Dy
> CONFIG_DEV_COREDUMP=3Dy
> # CONFIG_DEBUG_DRIVER is not set
> # CONFIG_DEBUG_DEVRES is not set
> # CONFIG_DEBUG_TEST_DRIVER_REMOVE is not set
> CONFIG_HMEM_REPORTING=3Dy
> # CONFIG_TEST_ASYNC_DRIVER_PROBE is not set
> CONFIG_SYS_HYPERVISOR=3Dy
> CONFIG_GENERIC_CPU_AUTOPROBE=3Dy
> CONFIG_GENERIC_CPU_VULNERABILITIES=3Dy
> CONFIG_REGMAP=3Dy
> CONFIG_REGMAP_I2C=3Dy
> CONFIG_REGMAP_SPI=3Dm
> CONFIG_REGMAP_MMIO=3Dy
> CONFIG_REGMAP_IRQ=3Dy
> CONFIG_REGMAP_SOUNDWIRE=3Dm
> CONFIG_REGMAP_SOUNDWIRE_MBQ=3Dm
> CONFIG_DMA_SHARED_BUFFER=3Dy
> # CONFIG_DMA_FENCE_TRACE is not set
> # end of Generic Driver Options
>=20
> #
> # Bus devices
> #
> CONFIG_MHI_BUS=3Dm
> # CONFIG_MHI_BUS_DEBUG is not set
> CONFIG_MHI_BUS_PCI_GENERIC=3Dm
> # CONFIG_MHI_BUS_EP is not set
> # end of Bus devices
>=20
> CONFIG_CONNECTOR=3Dy
> CONFIG_PROC_EVENTS=3Dy
>=20
> #
> # Firmware Drivers
> #
>=20
> #
> # ARM System Control and Management Interface Protocol
> #
> # end of ARM System Control and Management Interface Protocol
>=20
> CONFIG_EDD=3Dm
> # CONFIG_EDD_OFF is not set
> CONFIG_FIRMWARE_MEMMAP=3Dy
> CONFIG_DMIID=3Dy
> CONFIG_DMI_SYSFS=3Dy
> CONFIG_DMI_SCAN_MACHINE_NON_EFI_FALLBACK=3Dy
> CONFIG_ISCSI_IBFT_FIND=3Dy
> CONFIG_ISCSI_IBFT=3Dm
> CONFIG_FW_CFG_SYSFS=3Dm
> # CONFIG_FW_CFG_SYSFS_CMDLINE is not set
> CONFIG_SYSFB=3Dy
> # CONFIG_SYSFB_SIMPLEFB is not set
> CONFIG_CS_DSP=3Dm
> CONFIG_GOOGLE_FIRMWARE=3Dy
> CONFIG_GOOGLE_SMI=3Dm
> CONFIG_GOOGLE_COREBOOT_TABLE=3Dy
> CONFIG_GOOGLE_MEMCONSOLE=3Dm
> # CONFIG_GOOGLE_MEMCONSOLE_X86_LEGACY is not set
> CONFIG_GOOGLE_FRAMEBUFFER_COREBOOT=3Dy
> CONFIG_GOOGLE_MEMCONSOLE_COREBOOT=3Dm
> CONFIG_GOOGLE_VPD=3Dm
>=20
> #
> # EFI (Extensible Firmware Interface) Support
> #
> CONFIG_EFI_ESRT=3Dy
> CONFIG_EFI_VARS_PSTORE=3Dm
> # CONFIG_EFI_VARS_PSTORE_DEFAULT_DISABLE is not set
> CONFIG_EFI_RUNTIME_MAP=3Dy
> # CONFIG_EFI_FAKE_MEMMAP is not set
> CONFIG_EFI_SOFT_RESERVE=3Dy
> CONFIG_EFI_DXE_MEM_ATTRIBUTES=3Dy
> CONFIG_EFI_RUNTIME_WRAPPERS=3Dy
> CONFIG_EFI_GENERIC_STUB_INITRD_CMDLINE_LOADER=3Dy
> CONFIG_EFI_BOOTLOADER_CONTROL=3Dm
> CONFIG_EFI_CAPSULE_LOADER=3Dm
> # CONFIG_EFI_TEST is not set
> CONFIG_EFI_DEV_PATH_PARSER=3Dy
> CONFIG_APPLE_PROPERTIES=3Dy
> CONFIG_RESET_ATTACK_MITIGATION=3Dy
> # CONFIG_EFI_RCI2_TABLE is not set
> # CONFIG_EFI_DISABLE_PCI_DMA is not set
> CONFIG_EFI_EARLYCON=3Dy
> CONFIG_EFI_CUSTOM_SSDT_OVERLAYS=3Dy
> # CONFIG_EFI_DISABLE_RUNTIME is not set
> # CONFIG_EFI_COCO_SECRET is not set
> CONFIG_EFI_EMBEDDED_FIRMWARE=3Dy
> # end of EFI (Extensible Firmware Interface) Support
>=20
> CONFIG_UEFI_CPER=3Dy
> CONFIG_UEFI_CPER_X86=3Dy
>=20
> #
> # Tegra firmware driver
> #
> # end of Tegra firmware driver
> # end of Firmware Drivers
>=20
> CONFIG_GNSS=3Dm
> CONFIG_GNSS_SERIAL=3Dm
> # CONFIG_GNSS_MTK_SERIAL is not set
> CONFIG_GNSS_SIRF_SERIAL=3Dm
> CONFIG_GNSS_UBX_SERIAL=3Dm
> # CONFIG_GNSS_USB is not set
> CONFIG_MTD=3Dm
> # CONFIG_MTD_TESTS is not set
>=20
> #
> # Partition parsers
> #
> CONFIG_MTD_AR7_PARTS=3Dm
> # CONFIG_MTD_CMDLINE_PARTS is not set
> CONFIG_MTD_REDBOOT_PARTS=3Dm
> CONFIG_MTD_REDBOOT_DIRECTORY_BLOCK=3D-1
> # CONFIG_MTD_REDBOOT_PARTS_UNALLOCATED is not set
> # CONFIG_MTD_REDBOOT_PARTS_READONLY is not set
> # end of Partition parsers
>=20
> #
> # User Modules And Translation Layers
> #
> CONFIG_MTD_BLKDEVS=3Dm
> CONFIG_MTD_BLOCK=3Dm
> CONFIG_MTD_BLOCK_RO=3Dm
>=20
> #
> # Note that in some cases UBI block is preferred. See MTD_UBI_BLOCK.
> #
> CONFIG_FTL=3Dm
> CONFIG_NFTL=3Dm
> CONFIG_NFTL_RW=3Dy
> CONFIG_INFTL=3Dm
> CONFIG_RFD_FTL=3Dm
> CONFIG_SSFDC=3Dm
> # CONFIG_SM_FTL is not set
> CONFIG_MTD_OOPS=3Dm
> # CONFIG_MTD_PSTORE is not set
> CONFIG_MTD_SWAP=3Dm
> # CONFIG_MTD_PARTITIONED_MASTER is not set
>=20
> #
> # RAM/ROM/Flash chip drivers
> #
> CONFIG_MTD_CFI=3Dm
> CONFIG_MTD_JEDECPROBE=3Dm
> CONFIG_MTD_GEN_PROBE=3Dm
> # CONFIG_MTD_CFI_ADV_OPTIONS is not set
> CONFIG_MTD_MAP_BANK_WIDTH_1=3Dy
> CONFIG_MTD_MAP_BANK_WIDTH_2=3Dy
> CONFIG_MTD_MAP_BANK_WIDTH_4=3Dy
> CONFIG_MTD_CFI_I1=3Dy
> CONFIG_MTD_CFI_I2=3Dy
> CONFIG_MTD_CFI_INTELEXT=3Dm
> CONFIG_MTD_CFI_AMDSTD=3Dm
> CONFIG_MTD_CFI_STAA=3Dm
> CONFIG_MTD_CFI_UTIL=3Dm
> CONFIG_MTD_RAM=3Dm
> CONFIG_MTD_ROM=3Dm
> CONFIG_MTD_ABSENT=3Dm
> # end of RAM/ROM/Flash chip drivers
>=20
> #
> # Mapping drivers for chip access
> #
> CONFIG_MTD_COMPLEX_MAPPINGS=3Dy
> CONFIG_MTD_PHYSMAP=3Dm
> # CONFIG_MTD_PHYSMAP_COMPAT is not set
> # CONFIG_MTD_PHYSMAP_GPIO_ADDR is not set
> CONFIG_MTD_SBC_GXX=3Dm
> # CONFIG_MTD_AMD76XROM is not set
> # CONFIG_MTD_ICHXROM is not set
> # CONFIG_MTD_ESB2ROM is not set
> # CONFIG_MTD_CK804XROM is not set
> # CONFIG_MTD_SCB2_FLASH is not set
> CONFIG_MTD_NETtel=3Dm
> # CONFIG_MTD_L440GX is not set
> CONFIG_MTD_PCI=3Dm
> CONFIG_MTD_PCMCIA=3Dm
> # CONFIG_MTD_PCMCIA_ANONYMOUS is not set
> CONFIG_MTD_INTEL_VR_NOR=3Dm
> CONFIG_MTD_PLATRAM=3Dm
> # end of Mapping drivers for chip access
>=20
> #
> # Self-contained MTD device drivers
> #
> # CONFIG_MTD_PMC551 is not set
> CONFIG_MTD_DATAFLASH=3Dm
> # CONFIG_MTD_DATAFLASH_WRITE_VERIFY is not set
> # CONFIG_MTD_DATAFLASH_OTP is not set
> # CONFIG_MTD_MCHP23K256 is not set
> # CONFIG_MTD_MCHP48L640 is not set
> CONFIG_MTD_SST25L=3Dm
> CONFIG_MTD_SLRAM=3Dm
> CONFIG_MTD_PHRAM=3Dm
> CONFIG_MTD_MTDRAM=3Dm
> CONFIG_MTDRAM_TOTAL_SIZE=3D4096
> CONFIG_MTDRAM_ERASE_SIZE=3D128
> CONFIG_MTD_BLOCK2MTD=3Dm
>=20
> #
> # Disk-On-Chip Device Drivers
> #
> # CONFIG_MTD_DOCG3 is not set
> # end of Self-contained MTD device drivers
>=20
> #
> # NAND
> #
> CONFIG_MTD_NAND_CORE=3Dm
> CONFIG_MTD_ONENAND=3Dm
> CONFIG_MTD_ONENAND_VERIFY_WRITE=3Dy
> # CONFIG_MTD_ONENAND_GENERIC is not set
> # CONFIG_MTD_ONENAND_OTP is not set
> CONFIG_MTD_ONENAND_2X_PROGRAM=3Dy
> CONFIG_MTD_RAW_NAND=3Dm
>=20
> #
> # Raw/parallel NAND flash controllers
> #
> # CONFIG_MTD_NAND_DENALI_PCI is not set
> CONFIG_MTD_NAND_CAFE=3Dm
> # CONFIG_MTD_NAND_MXIC is not set
> # CONFIG_MTD_NAND_GPIO is not set
> # CONFIG_MTD_NAND_PLATFORM is not set
> # CONFIG_MTD_NAND_ARASAN is not set
>=20
> #
> # Misc
> #
> CONFIG_MTD_SM_COMMON=3Dm
> CONFIG_MTD_NAND_NANDSIM=3Dm
> CONFIG_MTD_NAND_RICOH=3Dm
> CONFIG_MTD_NAND_DISKONCHIP=3Dm
> # CONFIG_MTD_NAND_DISKONCHIP_PROBE_ADVANCED is not set
> CONFIG_MTD_NAND_DISKONCHIP_PROBE_ADDRESS=3D0
> # CONFIG_MTD_NAND_DISKONCHIP_BBTWRITE is not set
> # CONFIG_MTD_SPI_NAND is not set
>=20
> #
> # ECC engine support
> #
> CONFIG_MTD_NAND_ECC=3Dy
> CONFIG_MTD_NAND_ECC_SW_HAMMING=3Dy
> # CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC is not set
> CONFIG_MTD_NAND_ECC_SW_BCH=3Dy
> # CONFIG_MTD_NAND_ECC_MXIC is not set
> # end of ECC engine support
> # end of NAND
>=20
> #
> # LPDDR & LPDDR2 PCM memory drivers
> #
> CONFIG_MTD_LPDDR=3Dm
> CONFIG_MTD_QINFO_PROBE=3Dm
> # end of LPDDR & LPDDR2 PCM memory drivers
>=20
> CONFIG_MTD_SPI_NOR=3Dm
> CONFIG_MTD_SPI_NOR_USE_4K_SECTORS=3Dy
> # CONFIG_MTD_SPI_NOR_SWP_DISABLE is not set
> CONFIG_MTD_SPI_NOR_SWP_DISABLE_ON_VOLATILE=3Dy
> # CONFIG_MTD_SPI_NOR_SWP_KEEP is not set
> CONFIG_MTD_UBI=3Dm
> CONFIG_MTD_UBI_WL_THRESHOLD=3D4096
> CONFIG_MTD_UBI_BEB_LIMIT=3D20
> # CONFIG_MTD_UBI_FASTMAP is not set
> # CONFIG_MTD_UBI_GLUEBI is not set
> CONFIG_MTD_UBI_BLOCK=3Dy
> # CONFIG_MTD_HYPERBUS is not set
> # CONFIG_OF is not set
> CONFIG_ARCH_MIGHT_HAVE_PC_PARPORT=3Dy
> CONFIG_PARPORT=3Dm
> CONFIG_PARPORT_PC=3Dm
> CONFIG_PARPORT_SERIAL=3Dm
> # CONFIG_PARPORT_PC_FIFO is not set
> # CONFIG_PARPORT_PC_SUPERIO is not set
> CONFIG_PARPORT_PC_PCMCIA=3Dm
> # CONFIG_PARPORT_AX88796 is not set
> CONFIG_PARPORT_1284=3Dy
> CONFIG_PARPORT_NOT_PC=3Dy
> CONFIG_PNP=3Dy
> # CONFIG_PNP_DEBUG_MESSAGES is not set
>=20
> #
> # Protocols
> #
> CONFIG_PNPACPI=3Dy
> CONFIG_BLK_DEV=3Dy
> CONFIG_BLK_DEV_NULL_BLK=3Dm
> CONFIG_BLK_DEV_FD=3Dm
> # CONFIG_BLK_DEV_FD_RAWCMD is not set
> CONFIG_CDROM=3Dm
> # CONFIG_PARIDE is not set
> CONFIG_BLK_DEV_PCIESSD_MTIP32XX=3Dm
> CONFIG_ZRAM=3Dm
> CONFIG_ZRAM_DEF_COMP_LZORLE=3Dy
> # CONFIG_ZRAM_DEF_COMP_ZSTD is not set
> # CONFIG_ZRAM_DEF_COMP_LZ4 is not set
> # CONFIG_ZRAM_DEF_COMP_LZO is not set
> # CONFIG_ZRAM_DEF_COMP_LZ4HC is not set
> CONFIG_ZRAM_DEF_COMP=3D"lzo-rle"
> CONFIG_ZRAM_WRITEBACK=3Dy
> CONFIG_ZRAM_MEMORY_TRACKING=3Dy
> CONFIG_BLK_DEV_LOOP=3Dm
> CONFIG_BLK_DEV_LOOP_MIN_COUNT=3D8
> CONFIG_BLK_DEV_DRBD=3Dm
> # CONFIG_DRBD_FAULT_INJECTION is not set
> CONFIG_BLK_DEV_NBD=3Dm
> CONFIG_BLK_DEV_RAM=3Dm
> CONFIG_BLK_DEV_RAM_COUNT=3D16
> CONFIG_BLK_DEV_RAM_SIZE=3D16384
> CONFIG_CDROM_PKTCDVD=3Dm
> CONFIG_CDROM_PKTCDVD_BUFFERS=3D8
> # CONFIG_CDROM_PKTCDVD_WCACHE is not set
> CONFIG_ATA_OVER_ETH=3Dm
> CONFIG_XEN_BLKDEV_FRONTEND=3Dm
> CONFIG_XEN_BLKDEV_BACKEND=3Dm
> CONFIG_VIRTIO_BLK=3Dm
> CONFIG_BLK_DEV_RBD=3Dm
> # CONFIG_BLK_DEV_UBLK is not set
>=20
> #
> # NVME Support
> #
> CONFIG_NVME_CORE=3Dm
> CONFIG_BLK_DEV_NVME=3Dm
> CONFIG_NVME_MULTIPATH=3Dy
> # CONFIG_NVME_VERBOSE_ERRORS is not set
> CONFIG_NVME_HWMON=3Dy
> CONFIG_NVME_FABRICS=3Dm
> CONFIG_NVME_RDMA=3Dm
> CONFIG_NVME_FC=3Dm
> CONFIG_NVME_TCP=3Dm
> # CONFIG_NVME_AUTH is not set
> CONFIG_NVME_TARGET=3Dm
> # CONFIG_NVME_TARGET_PASSTHRU is not set
> # CONFIG_NVME_TARGET_LOOP is not set
> CONFIG_NVME_TARGET_RDMA=3Dm
> CONFIG_NVME_TARGET_FC=3Dm
> # CONFIG_NVME_TARGET_FCLOOP is not set
> CONFIG_NVME_TARGET_TCP=3Dm
> # CONFIG_NVME_TARGET_AUTH is not set
> # end of NVME Support
>=20
> #
> # Misc devices
> #
> CONFIG_SENSORS_LIS3LV02D=3Dm
> CONFIG_AD525X_DPOT=3Dm
> CONFIG_AD525X_DPOT_I2C=3Dm
> CONFIG_AD525X_DPOT_SPI=3Dm
> # CONFIG_DUMMY_IRQ is not set
> CONFIG_IBM_ASM=3Dm
> CONFIG_PHANTOM=3Dm
> CONFIG_TIFM_CORE=3Dm
> CONFIG_TIFM_7XX1=3Dm
> CONFIG_ICS932S401=3Dm
> CONFIG_ENCLOSURE_SERVICES=3Dm
> CONFIG_HP_ILO=3Dm
> CONFIG_APDS9802ALS=3Dm
> CONFIG_ISL29003=3Dm
> CONFIG_ISL29020=3Dm
> CONFIG_SENSORS_TSL2550=3Dm
> CONFIG_SENSORS_BH1770=3Dm
> CONFIG_SENSORS_APDS990X=3Dm
> CONFIG_HMC6352=3Dm
> CONFIG_DS1682=3Dm
> CONFIG_VMWARE_BALLOON=3Dm
> # CONFIG_LATTICE_ECP3_CONFIG is not set
> # CONFIG_SRAM is not set
> # CONFIG_DW_XDATA_PCIE is not set
> # CONFIG_PCI_ENDPOINT_TEST is not set
> # CONFIG_XILINX_SDFEC is not set
> CONFIG_MISC_RTSX=3Dm
> CONFIG_C2PORT=3Dm
> CONFIG_C2PORT_DURAMAR_2150=3Dm
>=20
> #
> # EEPROM support
> #
> CONFIG_EEPROM_AT24=3Dm
> CONFIG_EEPROM_AT25=3Dm
> CONFIG_EEPROM_LEGACY=3Dm
> CONFIG_EEPROM_MAX6875=3Dm
> CONFIG_EEPROM_93CX6=3Dm
> # CONFIG_EEPROM_93XX46 is not set
> # CONFIG_EEPROM_IDT_89HPESX is not set
> CONFIG_EEPROM_EE1004=3Dm
> # end of EEPROM support
>=20
> CONFIG_CB710_CORE=3Dm
> # CONFIG_CB710_DEBUG is not set
> CONFIG_CB710_DEBUG_ASSUMPTIONS=3Dy
>=20
> #
> # Texas Instruments shared transport line discipline
> #
> # CONFIG_TI_ST is not set
> # end of Texas Instruments shared transport line discipline
>=20
> CONFIG_SENSORS_LIS3_I2C=3Dm
> CONFIG_ALTERA_STAPL=3Dm
> CONFIG_INTEL_MEI=3Dm
> CONFIG_INTEL_MEI_ME=3Dm
> CONFIG_INTEL_MEI_TXE=3Dm
> # CONFIG_INTEL_MEI_GSC is not set
> CONFIG_INTEL_MEI_HDCP=3Dm
> # CONFIG_INTEL_MEI_PXP is not set
> CONFIG_VMWARE_VMCI=3Dm
> # CONFIG_GENWQE is not set
> # CONFIG_ECHO is not set
> # CONFIG_BCM_VK is not set
> # CONFIG_MISC_ALCOR_PCI is not set
> CONFIG_MISC_RTSX_PCI=3Dm
> CONFIG_MISC_RTSX_USB=3Dm
> # CONFIG_HABANA_AI is not set
> # CONFIG_UACCE is not set
> CONFIG_PVPANIC=3Dy
> CONFIG_PVPANIC_MMIO=3Dm
> CONFIG_PVPANIC_PCI=3Dm
> # CONFIG_GP_PCI1XXXX is not set
> # end of Misc devices
>=20
> #
> # SCSI device support
> #
> CONFIG_SCSI_MOD=3Dm
> CONFIG_RAID_ATTRS=3Dm
> CONFIG_SCSI_COMMON=3Dm
> CONFIG_SCSI=3Dm
> CONFIG_SCSI_DMA=3Dy
> CONFIG_SCSI_NETLINK=3Dy
> # CONFIG_SCSI_PROC_FS is not set
>=20
> #
> # SCSI support type (disk, tape, CD-ROM)
> #
> CONFIG_BLK_DEV_SD=3Dm
> CONFIG_CHR_DEV_ST=3Dm
> CONFIG_BLK_DEV_SR=3Dm
> CONFIG_CHR_DEV_SG=3Dm
> CONFIG_BLK_DEV_BSG=3Dy
> CONFIG_CHR_DEV_SCH=3Dm
> CONFIG_SCSI_ENCLOSURE=3Dm
> CONFIG_SCSI_CONSTANTS=3Dy
> CONFIG_SCSI_LOGGING=3Dy
> CONFIG_SCSI_SCAN_ASYNC=3Dy
>=20
> #
> # SCSI Transports
> #
> CONFIG_SCSI_SPI_ATTRS=3Dm
> CONFIG_SCSI_FC_ATTRS=3Dm
> CONFIG_SCSI_ISCSI_ATTRS=3Dm
> CONFIG_SCSI_SAS_ATTRS=3Dm
> CONFIG_SCSI_SAS_LIBSAS=3Dm
> CONFIG_SCSI_SAS_ATA=3Dy
> CONFIG_SCSI_SAS_HOST_SMP=3Dy
> CONFIG_SCSI_SRP_ATTRS=3Dm
> # end of SCSI Transports
>=20
> CONFIG_SCSI_LOWLEVEL=3Dy
> CONFIG_ISCSI_TCP=3Dm
> CONFIG_ISCSI_BOOT_SYSFS=3Dm
> CONFIG_SCSI_CXGB3_ISCSI=3Dm
> CONFIG_SCSI_CXGB4_ISCSI=3Dm
> CONFIG_SCSI_BNX2_ISCSI=3Dm
> CONFIG_SCSI_BNX2X_FCOE=3Dm
> CONFIG_BE2ISCSI=3Dm
> CONFIG_BLK_DEV_3W_XXXX_RAID=3Dm
> CONFIG_SCSI_HPSA=3Dm
> CONFIG_SCSI_3W_9XXX=3Dm
> CONFIG_SCSI_3W_SAS=3Dm
> CONFIG_SCSI_ACARD=3Dm
> CONFIG_SCSI_AACRAID=3Dm
> CONFIG_SCSI_AIC7XXX=3Dm
> CONFIG_AIC7XXX_CMDS_PER_DEVICE=3D8
> CONFIG_AIC7XXX_RESET_DELAY_MS=3D15000
> CONFIG_AIC7XXX_DEBUG_ENABLE=3Dy
> CONFIG_AIC7XXX_DEBUG_MASK=3D0
> CONFIG_AIC7XXX_REG_PRETTY_PRINT=3Dy
> CONFIG_SCSI_AIC79XX=3Dm
> CONFIG_AIC79XX_CMDS_PER_DEVICE=3D32
> CONFIG_AIC79XX_RESET_DELAY_MS=3D15000
> CONFIG_AIC79XX_DEBUG_ENABLE=3Dy
> CONFIG_AIC79XX_DEBUG_MASK=3D0
> CONFIG_AIC79XX_REG_PRETTY_PRINT=3Dy
> CONFIG_SCSI_AIC94XX=3Dm
> # CONFIG_AIC94XX_DEBUG is not set
> CONFIG_SCSI_MVSAS=3Dm
> # CONFIG_SCSI_MVSAS_DEBUG is not set
> # CONFIG_SCSI_MVSAS_TASKLET is not set
> CONFIG_SCSI_MVUMI=3Dm
> CONFIG_SCSI_ADVANSYS=3Dm
> CONFIG_SCSI_ARCMSR=3Dm
> CONFIG_SCSI_ESAS2R=3Dm
> CONFIG_MEGARAID_NEWGEN=3Dy
> CONFIG_MEGARAID_MM=3Dm
> CONFIG_MEGARAID_MAILBOX=3Dm
> CONFIG_MEGARAID_LEGACY=3Dm
> CONFIG_MEGARAID_SAS=3Dm
> CONFIG_SCSI_MPT3SAS=3Dm
> CONFIG_SCSI_MPT2SAS_MAX_SGE=3D128
> CONFIG_SCSI_MPT3SAS_MAX_SGE=3D128
> CONFIG_SCSI_MPT2SAS=3Dm
> CONFIG_SCSI_MPI3MR=3Dm
> CONFIG_SCSI_SMARTPQI=3Dm
> CONFIG_SCSI_HPTIOP=3Dm
> CONFIG_SCSI_BUSLOGIC=3Dm
> # CONFIG_SCSI_FLASHPOINT is not set
> CONFIG_SCSI_MYRB=3Dm
> CONFIG_SCSI_MYRS=3Dm
> CONFIG_VMWARE_PVSCSI=3Dm
> CONFIG_XEN_SCSI_FRONTEND=3Dm
> CONFIG_HYPERV_STORAGE=3Dm
> CONFIG_LIBFC=3Dm
> CONFIG_LIBFCOE=3Dm
> CONFIG_FCOE=3Dm
> CONFIG_FCOE_FNIC=3Dm
> CONFIG_SCSI_SNIC=3Dm
> # CONFIG_SCSI_SNIC_DEBUG_FS is not set
> CONFIG_SCSI_DMX3191D=3Dm
> # CONFIG_SCSI_FDOMAIN_PCI is not set
> CONFIG_SCSI_ISCI=3Dm
> CONFIG_SCSI_IPS=3Dm
> CONFIG_SCSI_INITIO=3Dm
> CONFIG_SCSI_INIA100=3Dm
> # CONFIG_SCSI_PPA is not set
> # CONFIG_SCSI_IMM is not set
> CONFIG_SCSI_STEX=3Dm
> CONFIG_SCSI_SYM53C8XX_2=3Dm
> CONFIG_SCSI_SYM53C8XX_DMA_ADDRESSING_MODE=3D1
> CONFIG_SCSI_SYM53C8XX_DEFAULT_TAGS=3D16
> CONFIG_SCSI_SYM53C8XX_MAX_TAGS=3D64
> CONFIG_SCSI_SYM53C8XX_MMIO=3Dy
> CONFIG_SCSI_IPR=3Dm
> # CONFIG_SCSI_IPR_TRACE is not set
> # CONFIG_SCSI_IPR_DUMP is not set
> CONFIG_SCSI_QLOGIC_1280=3Dm
> CONFIG_SCSI_QLA_FC=3Dm
> CONFIG_TCM_QLA2XXX=3Dm
> # CONFIG_TCM_QLA2XXX_DEBUG is not set
> CONFIG_SCSI_QLA_ISCSI=3Dm
> CONFIG_QEDI=3Dm
> CONFIG_QEDF=3Dm
> CONFIG_SCSI_LPFC=3Dm
> # CONFIG_SCSI_LPFC_DEBUG_FS is not set
> # CONFIG_SCSI_EFCT is not set
> CONFIG_SCSI_DC395x=3Dm
> CONFIG_SCSI_AM53C974=3Dm
> CONFIG_SCSI_WD719X=3Dm
> CONFIG_SCSI_DEBUG=3Dm
> CONFIG_SCSI_PMCRAID=3Dm
> CONFIG_SCSI_PM8001=3Dm
> CONFIG_SCSI_BFA_FC=3Dm
> CONFIG_SCSI_VIRTIO=3Dm
> CONFIG_SCSI_CHELSIO_FCOE=3Dm
> CONFIG_SCSI_LOWLEVEL_PCMCIA=3Dy
> CONFIG_PCMCIA_AHA152X=3Dm
> # CONFIG_PCMCIA_FDOMAIN is not set
> CONFIG_PCMCIA_QLOGIC=3Dm
> CONFIG_PCMCIA_SYM53C500=3Dm
> CONFIG_SCSI_DH=3Dy
> CONFIG_SCSI_DH_RDAC=3Dm
> CONFIG_SCSI_DH_HP_SW=3Dm
> CONFIG_SCSI_DH_EMC=3Dm
> CONFIG_SCSI_DH_ALUA=3Dm
> # end of SCSI device support
>=20
> CONFIG_ATA=3Dm
> CONFIG_SATA_HOST=3Dy
> CONFIG_PATA_TIMINGS=3Dy
> CONFIG_ATA_VERBOSE_ERROR=3Dy
> CONFIG_ATA_FORCE=3Dy
> CONFIG_ATA_ACPI=3Dy
> CONFIG_SATA_ZPODD=3Dy
> CONFIG_SATA_PMP=3Dy
>=20
> #
> # Controllers with non-SFF native interface
> #
> CONFIG_SATA_AHCI=3Dm
> CONFIG_SATA_MOBILE_LPM_POLICY=3D3
> # CONFIG_SATA_AHCI_PLATFORM is not set
> # CONFIG_AHCI_DWC is not set
> # CONFIG_SATA_INIC162X is not set
> CONFIG_SATA_ACARD_AHCI=3Dm
> CONFIG_SATA_SIL24=3Dm
> CONFIG_ATA_SFF=3Dy
>=20
> #
> # SFF controllers with custom DMA interface
> #
> CONFIG_PDC_ADMA=3Dm
> CONFIG_SATA_QSTOR=3Dm
> CONFIG_SATA_SX4=3Dm
> CONFIG_ATA_BMDMA=3Dy
>=20
> #
> # SATA SFF controllers with BMDMA
> #
> CONFIG_ATA_PIIX=3Dm
> # CONFIG_SATA_DWC is not set
> CONFIG_SATA_MV=3Dm
> CONFIG_SATA_NV=3Dm
> CONFIG_SATA_PROMISE=3Dm
> CONFIG_SATA_SIL=3Dm
> CONFIG_SATA_SIS=3Dm
> CONFIG_SATA_SVW=3Dm
> CONFIG_SATA_ULI=3Dm
> CONFIG_SATA_VIA=3Dm
> CONFIG_SATA_VITESSE=3Dm
>=20
> #
> # PATA SFF controllers with BMDMA
> #
> CONFIG_PATA_ALI=3Dm
> CONFIG_PATA_AMD=3Dm
> CONFIG_PATA_ARTOP=3Dm
> CONFIG_PATA_ATIIXP=3Dm
> CONFIG_PATA_ATP867X=3Dm
> CONFIG_PATA_CMD64X=3Dm
> # CONFIG_PATA_CYPRESS is not set
> CONFIG_PATA_EFAR=3Dm
> CONFIG_PATA_HPT366=3Dm
> CONFIG_PATA_HPT37X=3Dm
> # CONFIG_PATA_HPT3X2N is not set
> # CONFIG_PATA_HPT3X3 is not set
> CONFIG_PATA_IT8213=3Dm
> CONFIG_PATA_IT821X=3Dm
> CONFIG_PATA_JMICRON=3Dm
> CONFIG_PATA_MARVELL=3Dm
> CONFIG_PATA_NETCELL=3Dm
> CONFIG_PATA_NINJA32=3Dm
> CONFIG_PATA_NS87415=3Dm
> CONFIG_PATA_OLDPIIX=3Dm
> # CONFIG_PATA_OPTIDMA is not set
> CONFIG_PATA_PDC2027X=3Dm
> CONFIG_PATA_PDC_OLD=3Dm
> # CONFIG_PATA_RADISYS is not set
> CONFIG_PATA_RDC=3Dm
> CONFIG_PATA_SCH=3Dm
> CONFIG_PATA_SERVERWORKS=3Dm
> CONFIG_PATA_SIL680=3Dm
> CONFIG_PATA_SIS=3Dm
> CONFIG_PATA_TOSHIBA=3Dm
> CONFIG_PATA_TRIFLEX=3Dm
> CONFIG_PATA_VIA=3Dm
> # CONFIG_PATA_WINBOND is not set
>=20
> #
> # PIO-only SFF controllers
> #
> # CONFIG_PATA_CMD640_PCI is not set
> CONFIG_PATA_MPIIX=3Dm
> CONFIG_PATA_NS87410=3Dm
> # CONFIG_PATA_OPTI is not set
> CONFIG_PATA_PCMCIA=3Dm
> CONFIG_PATA_RZ1000=3Dm
>=20
> #
> # Generic fallback / legacy drivers
> #
> # CONFIG_PATA_ACPI is not set
> CONFIG_ATA_GENERIC=3Dm
> CONFIG_PATA_LEGACY=3Dm
> CONFIG_MD=3Dy
> CONFIG_BLK_DEV_MD=3Dm
> CONFIG_MD_LINEAR=3Dm
> CONFIG_MD_RAID0=3Dm
> CONFIG_MD_RAID1=3Dm
> CONFIG_MD_RAID10=3Dm
> CONFIG_MD_RAID456=3Dm
> CONFIG_MD_MULTIPATH=3Dm
> CONFIG_MD_FAULTY=3Dm
> CONFIG_MD_CLUSTER=3Dm
> CONFIG_BCACHE=3Dm
> # CONFIG_BCACHE_DEBUG is not set
> # CONFIG_BCACHE_CLOSURES_DEBUG is not set
> # CONFIG_BCACHE_ASYNC_REGISTRATION is not set
> CONFIG_BLK_DEV_DM_BUILTIN=3Dy
> CONFIG_BLK_DEV_DM=3Dm
> # CONFIG_DM_DEBUG is not set
> CONFIG_DM_BUFIO=3Dm
> # CONFIG_DM_DEBUG_BLOCK_MANAGER_LOCKING is not set
> CONFIG_DM_BIO_PRISON=3Dm
> CONFIG_DM_PERSISTENT_DATA=3Dm
> CONFIG_DM_UNSTRIPED=3Dm
> CONFIG_DM_CRYPT=3Dm
> CONFIG_DM_SNAPSHOT=3Dm
> CONFIG_DM_THIN_PROVISIONING=3Dm
> CONFIG_DM_CACHE=3Dm
> CONFIG_DM_CACHE_SMQ=3Dm
> CONFIG_DM_WRITECACHE=3Dm
> # CONFIG_DM_EBS is not set
> CONFIG_DM_ERA=3Dm
> # CONFIG_DM_CLONE is not set
> CONFIG_DM_MIRROR=3Dm
> CONFIG_DM_LOG_USERSPACE=3Dm
> CONFIG_DM_RAID=3Dm
> CONFIG_DM_ZERO=3Dm
> CONFIG_DM_MULTIPATH=3Dm
> CONFIG_DM_MULTIPATH_QL=3Dm
> CONFIG_DM_MULTIPATH_ST=3Dm
> # CONFIG_DM_MULTIPATH_HST is not set
> # CONFIG_DM_MULTIPATH_IOA is not set
> CONFIG_DM_DELAY=3Dm
> # CONFIG_DM_DUST is not set
> CONFIG_DM_UEVENT=3Dy
> CONFIG_DM_FLAKEY=3Dm
> CONFIG_DM_VERITY=3Dm
> CONFIG_DM_VERITY_VERIFY_ROOTHASH_SIG=3Dy
> CONFIG_DM_VERITY_VERIFY_ROOTHASH_SIG_SECONDARY_KEYRING=3Dy
> CONFIG_DM_VERITY_FEC=3Dy
> CONFIG_DM_SWITCH=3Dm
> CONFIG_DM_LOG_WRITES=3Dm
> CONFIG_DM_INTEGRITY=3Dm
> CONFIG_DM_ZONED=3Dm
> CONFIG_DM_AUDIT=3Dy
> CONFIG_TARGET_CORE=3Dm
> CONFIG_TCM_IBLOCK=3Dm
> CONFIG_TCM_FILEIO=3Dm
> CONFIG_TCM_PSCSI=3Dm
> CONFIG_TCM_USER2=3Dm
> CONFIG_LOOPBACK_TARGET=3Dm
> CONFIG_TCM_FC=3Dm
> CONFIG_ISCSI_TARGET=3Dm
> CONFIG_ISCSI_TARGET_CXGB4=3Dm
> CONFIG_SBP_TARGET=3Dm
> CONFIG_FUSION=3Dy
> CONFIG_FUSION_SPI=3Dm
> CONFIG_FUSION_FC=3Dm
> CONFIG_FUSION_SAS=3Dm
> CONFIG_FUSION_MAX_SGE=3D128
> CONFIG_FUSION_CTL=3Dm
> CONFIG_FUSION_LAN=3Dm
> # CONFIG_FUSION_LOGGING is not set
>=20
> #
> # IEEE 1394 (FireWire) support
> #
> CONFIG_FIREWIRE=3Dm
> CONFIG_FIREWIRE_OHCI=3Dm
> CONFIG_FIREWIRE_SBP2=3Dm
> CONFIG_FIREWIRE_NET=3Dm
> CONFIG_FIREWIRE_NOSY=3Dm
> # end of IEEE 1394 (FireWire) support
>=20
> CONFIG_MACINTOSH_DRIVERS=3Dy
> CONFIG_MAC_EMUMOUSEBTN=3Dy
> CONFIG_NETDEVICES=3Dy
> CONFIG_MII=3Dm
> CONFIG_NET_CORE=3Dy
> CONFIG_BONDING=3Dm
> CONFIG_DUMMY=3Dm
> CONFIG_WIREGUARD=3Dm
> # CONFIG_WIREGUARD_DEBUG is not set
> CONFIG_EQUALIZER=3Dm
> CONFIG_NET_FC=3Dy
> CONFIG_IFB=3Dm
> CONFIG_NET_TEAM=3Dm
> CONFIG_NET_TEAM_MODE_BROADCAST=3Dm
> CONFIG_NET_TEAM_MODE_ROUNDROBIN=3Dm
> CONFIG_NET_TEAM_MODE_RANDOM=3Dm
> CONFIG_NET_TEAM_MODE_ACTIVEBACKUP=3Dm
> CONFIG_NET_TEAM_MODE_LOADBALANCE=3Dm
> CONFIG_MACVLAN=3Dm
> CONFIG_MACVTAP=3Dm
> CONFIG_IPVLAN_L3S=3Dy
> CONFIG_IPVLAN=3Dm
> CONFIG_IPVTAP=3Dm
> CONFIG_VXLAN=3Dm
> CONFIG_GENEVE=3Dm
> # CONFIG_BAREUDP is not set
> CONFIG_GTP=3Dm
> # CONFIG_AMT is not set
> CONFIG_MACSEC=3Dm
> CONFIG_NETCONSOLE=3Dm
> CONFIG_NETCONSOLE_DYNAMIC=3Dy
> CONFIG_NETPOLL=3Dy
> CONFIG_NET_POLL_CONTROLLER=3Dy
> CONFIG_TUN=3Dm
> CONFIG_TAP=3Dm
> # CONFIG_TUN_VNET_CROSS_LE is not set
> CONFIG_VETH=3Dm
> CONFIG_VIRTIO_NET=3Dm
> CONFIG_NLMON=3Dm
> CONFIG_NET_VRF=3Dm
> CONFIG_VSOCKMON=3Dm
> CONFIG_MHI_NET=3Dm
> CONFIG_SUNGEM_PHY=3Dm
> CONFIG_ARCNET=3Dm
> CONFIG_ARCNET_1201=3Dm
> CONFIG_ARCNET_1051=3Dm
> CONFIG_ARCNET_RAW=3Dm
> CONFIG_ARCNET_CAP=3Dm
> CONFIG_ARCNET_COM90xx=3Dm
> CONFIG_ARCNET_COM90xxIO=3Dm
> CONFIG_ARCNET_RIM_I=3Dm
> CONFIG_ARCNET_COM20020=3Dm
> CONFIG_ARCNET_COM20020_PCI=3Dm
> CONFIG_ARCNET_COM20020_CS=3Dm
> CONFIG_ATM_DRIVERS=3Dy
> CONFIG_ATM_DUMMY=3Dm
> CONFIG_ATM_TCP=3Dm
> CONFIG_ATM_LANAI=3Dm
> CONFIG_ATM_ENI=3Dm
> # CONFIG_ATM_ENI_DEBUG is not set
> # CONFIG_ATM_ENI_TUNE_BURST is not set
> CONFIG_ATM_NICSTAR=3Dm
> CONFIG_ATM_NICSTAR_USE_SUNI=3Dy
> CONFIG_ATM_NICSTAR_USE_IDT77105=3Dy
> CONFIG_ATM_IDT77252=3Dm
> # CONFIG_ATM_IDT77252_DEBUG is not set
> # CONFIG_ATM_IDT77252_RCV_ALL is not set
> CONFIG_ATM_IDT77252_USE_SUNI=3Dy
> CONFIG_ATM_IA=3Dm
> # CONFIG_ATM_IA_DEBUG is not set
> CONFIG_ATM_FORE200E=3Dm
> # CONFIG_ATM_FORE200E_USE_TASKLET is not set
> CONFIG_ATM_FORE200E_TX_RETRY=3D16
> CONFIG_ATM_FORE200E_DEBUG=3D0
> CONFIG_ATM_HE=3Dm
> CONFIG_ATM_HE_USE_SUNI=3Dy
> CONFIG_ATM_SOLOS=3Dm
> CONFIG_ETHERNET=3Dy
> CONFIG_MDIO=3Dm
> CONFIG_NET_VENDOR_3COM=3Dy
> CONFIG_PCMCIA_3C574=3Dm
> CONFIG_PCMCIA_3C589=3Dm
> CONFIG_VORTEX=3Dm
> CONFIG_TYPHOON=3Dm
> CONFIG_NET_VENDOR_ADAPTEC=3Dy
> CONFIG_ADAPTEC_STARFIRE=3Dm
> CONFIG_NET_VENDOR_AGERE=3Dy
> CONFIG_ET131X=3Dm
> CONFIG_NET_VENDOR_ALACRITECH=3Dy
> # CONFIG_SLICOSS is not set
> CONFIG_NET_VENDOR_ALTEON=3Dy
> CONFIG_ACENIC=3Dm
> # CONFIG_ACENIC_OMIT_TIGON_I is not set
> # CONFIG_ALTERA_TSE is not set
> CONFIG_NET_VENDOR_AMAZON=3Dy
> CONFIG_ENA_ETHERNET=3Dm
> CONFIG_NET_VENDOR_AMD=3Dy
> CONFIG_AMD8111_ETH=3Dm
> CONFIG_PCNET32=3Dm
> CONFIG_PCMCIA_NMCLAN=3Dm
> CONFIG_AMD_XGBE=3Dm
> CONFIG_AMD_XGBE_DCB=3Dy
> CONFIG_AMD_XGBE_HAVE_ECC=3Dy
> CONFIG_NET_VENDOR_AQUANTIA=3Dy
> CONFIG_AQTION=3Dm
> # CONFIG_NET_VENDOR_ARC is not set
> CONFIG_NET_VENDOR_ASIX=3Dy
> # CONFIG_SPI_AX88796C is not set
> CONFIG_NET_VENDOR_ATHEROS=3Dy
> CONFIG_ATL2=3Dm
> CONFIG_ATL1=3Dm
> CONFIG_ATL1E=3Dm
> CONFIG_ATL1C=3Dm
> CONFIG_ALX=3Dm
> # CONFIG_CX_ECAT is not set
> CONFIG_NET_VENDOR_BROADCOM=3Dy
> CONFIG_B44=3Dm
> CONFIG_B44_PCI_AUTOSELECT=3Dy
> CONFIG_B44_PCICORE_AUTOSELECT=3Dy
> CONFIG_B44_PCI=3Dy
> # CONFIG_BCMGENET is not set
> CONFIG_BNX2=3Dm
> CONFIG_CNIC=3Dm
> CONFIG_TIGON3=3Dm
> CONFIG_TIGON3_HWMON=3Dy
> CONFIG_BNX2X=3Dm
> CONFIG_BNX2X_SRIOV=3Dy
> # CONFIG_SYSTEMPORT is not set
> CONFIG_BNXT=3Dm
> CONFIG_BNXT_SRIOV=3Dy
> CONFIG_BNXT_FLOWER_OFFLOAD=3Dy
> CONFIG_BNXT_DCB=3Dy
> CONFIG_BNXT_HWMON=3Dy
> CONFIG_NET_VENDOR_CADENCE=3Dy
> # CONFIG_MACB is not set
> CONFIG_NET_VENDOR_CAVIUM=3Dy
> # CONFIG_THUNDER_NIC_PF is not set
> # CONFIG_THUNDER_NIC_VF is not set
> # CONFIG_THUNDER_NIC_BGX is not set
> # CONFIG_THUNDER_NIC_RGX is not set
> CONFIG_CAVIUM_PTP=3Dm
> CONFIG_LIQUIDIO=3Dm
> CONFIG_LIQUIDIO_VF=3Dm
> CONFIG_NET_VENDOR_CHELSIO=3Dy
> CONFIG_CHELSIO_T1=3Dm
> CONFIG_CHELSIO_T1_1G=3Dy
> CONFIG_CHELSIO_T3=3Dm
> CONFIG_CHELSIO_T4=3Dm
> CONFIG_CHELSIO_T4_DCB=3Dy
> CONFIG_CHELSIO_T4_FCOE=3Dy
> CONFIG_CHELSIO_T4VF=3Dm
> CONFIG_CHELSIO_LIB=3Dm
> CONFIG_CHELSIO_INLINE_CRYPTO=3Dy
> # CONFIG_CHELSIO_IPSEC_INLINE is not set
> # CONFIG_CHELSIO_TLS_DEVICE is not set
> CONFIG_NET_VENDOR_CISCO=3Dy
> CONFIG_ENIC=3Dm
> CONFIG_NET_VENDOR_CORTINA=3Dy
> CONFIG_NET_VENDOR_DAVICOM=3Dy
> # CONFIG_DM9051 is not set
> # CONFIG_DNET is not set
> CONFIG_NET_VENDOR_DEC=3Dy
> CONFIG_NET_TULIP=3Dy
> CONFIG_DE2104X=3Dm
> CONFIG_DE2104X_DSL=3D0
> CONFIG_TULIP=3Dm
> # CONFIG_TULIP_MWI is not set
> # CONFIG_TULIP_MMIO is not set
> CONFIG_TULIP_NAPI=3Dy
> CONFIG_TULIP_NAPI_HW_MITIGATION=3Dy
> CONFIG_WINBOND_840=3Dm
> CONFIG_DM9102=3Dm
> CONFIG_ULI526X=3Dm
> CONFIG_PCMCIA_XIRCOM=3Dm
> CONFIG_NET_VENDOR_DLINK=3Dy
> CONFIG_DL2K=3Dm
> CONFIG_SUNDANCE=3Dm
> # CONFIG_SUNDANCE_MMIO is not set
> CONFIG_NET_VENDOR_EMULEX=3Dy
> CONFIG_BE2NET=3Dm
> CONFIG_BE2NET_HWMON=3Dy
> CONFIG_BE2NET_BE2=3Dy
> CONFIG_BE2NET_BE3=3Dy
> CONFIG_BE2NET_LANCER=3Dy
> CONFIG_BE2NET_SKYHAWK=3Dy
> CONFIG_NET_VENDOR_ENGLEDER=3Dy
> # CONFIG_TSNEP is not set
> CONFIG_NET_VENDOR_EZCHIP=3Dy
> CONFIG_NET_VENDOR_FUJITSU=3Dy
> CONFIG_PCMCIA_FMVJ18X=3Dm
> CONFIG_NET_VENDOR_FUNGIBLE=3Dy
> # CONFIG_FUN_ETH is not set
> CONFIG_NET_VENDOR_GOOGLE=3Dy
> CONFIG_GVE=3Dm
> CONFIG_NET_VENDOR_HUAWEI=3Dy
> CONFIG_HINIC=3Dm
> CONFIG_NET_VENDOR_I825XX=3Dy
> CONFIG_NET_VENDOR_INTEL=3Dy
> CONFIG_E100=3Dm
> CONFIG_E1000=3Dm
> CONFIG_E1000E=3Dm
> CONFIG_E1000E_HWTS=3Dy
> CONFIG_IGB=3Dm
> CONFIG_IGB_HWMON=3Dy
> CONFIG_IGB_DCA=3Dy
> CONFIG_IGBVF=3Dm
> CONFIG_IXGB=3Dm
> CONFIG_IXGBE=3Dm
> CONFIG_IXGBE_HWMON=3Dy
> CONFIG_IXGBE_DCA=3Dy
> CONFIG_IXGBE_DCB=3Dy
> CONFIG_IXGBE_IPSEC=3Dy
> CONFIG_IXGBEVF=3Dm
> CONFIG_IXGBEVF_IPSEC=3Dy
> CONFIG_I40E=3Dm
> CONFIG_I40E_DCB=3Dy
> CONFIG_IAVF=3Dm
> CONFIG_I40EVF=3Dm
> CONFIG_ICE=3Dm
> CONFIG_ICE_SWITCHDEV=3Dy
> CONFIG_ICE_HWTS=3Dy
> # CONFIG_FM10K is not set
> CONFIG_IGC=3Dm
> CONFIG_JME=3Dm
> CONFIG_NET_VENDOR_ADI=3Dy
> # CONFIG_ADIN1110 is not set
> CONFIG_NET_VENDOR_LITEX=3Dy
> CONFIG_NET_VENDOR_MARVELL=3Dy
> # CONFIG_MVMDIO is not set
> CONFIG_SKGE=3Dm
> # CONFIG_SKGE_DEBUG is not set
> CONFIG_SKGE_GENESIS=3Dy
> CONFIG_SKY2=3Dm
> # CONFIG_SKY2_DEBUG is not set
> # CONFIG_OCTEON_EP is not set
> # CONFIG_PRESTERA is not set
> CONFIG_NET_VENDOR_MELLANOX=3Dy
> CONFIG_MLX4_EN=3Dm
> CONFIG_MLX4_EN_DCB=3Dy
> CONFIG_MLX4_CORE=3Dm
> CONFIG_MLX4_DEBUG=3Dy
> CONFIG_MLX4_CORE_GEN2=3Dy
> CONFIG_MLX5_CORE=3Dm
> CONFIG_MLX5_FPGA=3Dy
> CONFIG_MLX5_CORE_EN=3Dy
> CONFIG_MLX5_EN_ARFS=3Dy
> CONFIG_MLX5_EN_RXNFC=3Dy
> CONFIG_MLX5_MPFS=3Dy
> CONFIG_MLX5_ESWITCH=3Dy
> CONFIG_MLX5_BRIDGE=3Dy
> CONFIG_MLX5_CLS_ACT=3Dy
> CONFIG_MLX5_TC_SAMPLE=3Dy
> CONFIG_MLX5_CORE_EN_DCB=3Dy
> CONFIG_MLX5_CORE_IPOIB=3Dy
> # CONFIG_MLX5_EN_MACSEC is not set
> # CONFIG_MLX5_EN_IPSEC is not set
> # CONFIG_MLX5_EN_TLS is not set
> CONFIG_MLX5_SW_STEERING=3Dy
> # CONFIG_MLX5_SF is not set
> # CONFIG_MLXSW_CORE is not set
> CONFIG_MLXFW=3Dm
> CONFIG_NET_VENDOR_MICREL=3Dy
> # CONFIG_KS8842 is not set
> # CONFIG_KS8851 is not set
> # CONFIG_KS8851_MLL is not set
> CONFIG_KSZ884X_PCI=3Dm
> CONFIG_NET_VENDOR_MICROCHIP=3Dy
> # CONFIG_ENC28J60 is not set
> # CONFIG_ENCX24J600 is not set
> CONFIG_LAN743X=3Dm
> CONFIG_NET_VENDOR_MICROSEMI=3Dy
> CONFIG_NET_VENDOR_MICROSOFT=3Dy
> CONFIG_MICROSOFT_MANA=3Dm
> CONFIG_NET_VENDOR_MYRI=3Dy
> CONFIG_MYRI10GE=3Dm
> CONFIG_MYRI10GE_DCA=3Dy
> CONFIG_FEALNX=3Dm
> CONFIG_NET_VENDOR_NI=3Dy
> # CONFIG_NI_XGE_MANAGEMENT_ENET is not set
> CONFIG_NET_VENDOR_NATSEMI=3Dy
> CONFIG_NATSEMI=3Dm
> CONFIG_NS83820=3Dm
> CONFIG_NET_VENDOR_NETERION=3Dy
> CONFIG_S2IO=3Dm
> CONFIG_NET_VENDOR_NETRONOME=3Dy
> CONFIG_NFP=3Dm
> CONFIG_NFP_APP_FLOWER=3Dy
> CONFIG_NFP_APP_ABM_NIC=3Dy
> # CONFIG_NFP_DEBUG is not set
> CONFIG_NET_VENDOR_8390=3Dy
> CONFIG_PCMCIA_AXNET=3Dm
> CONFIG_NE2K_PCI=3Dm
> CONFIG_PCMCIA_PCNET=3Dm
> CONFIG_NET_VENDOR_NVIDIA=3Dy
> CONFIG_FORCEDETH=3Dm
> CONFIG_NET_VENDOR_OKI=3Dy
> # CONFIG_ETHOC is not set
> CONFIG_NET_VENDOR_PACKET_ENGINES=3Dy
> CONFIG_HAMACHI=3Dm
> CONFIG_YELLOWFIN=3Dm
> CONFIG_NET_VENDOR_PENSANDO=3Dy
> # CONFIG_IONIC is not set
> CONFIG_NET_VENDOR_QLOGIC=3Dy
> CONFIG_QLA3XXX=3Dm
> CONFIG_QLCNIC=3Dm
> CONFIG_QLCNIC_SRIOV=3Dy
> CONFIG_QLCNIC_DCB=3Dy
> CONFIG_QLCNIC_HWMON=3Dy
> CONFIG_NETXEN_NIC=3Dm
> CONFIG_QED=3Dm
> CONFIG_QED_LL2=3Dy
> CONFIG_QED_SRIOV=3Dy
> CONFIG_QEDE=3Dm
> CONFIG_QED_RDMA=3Dy
> CONFIG_QED_ISCSI=3Dy
> CONFIG_QED_FCOE=3Dy
> CONFIG_QED_OOO=3Dy
> CONFIG_NET_VENDOR_BROCADE=3Dy
> CONFIG_BNA=3Dm
> CONFIG_NET_VENDOR_QUALCOMM=3Dy
> # CONFIG_QCOM_EMAC is not set
> # CONFIG_RMNET is not set
> CONFIG_NET_VENDOR_RDC=3Dy
> CONFIG_R6040=3Dm
> CONFIG_NET_VENDOR_REALTEK=3Dy
> # CONFIG_ATP is not set
> CONFIG_8139CP=3Dm
> CONFIG_8139TOO=3Dm
> # CONFIG_8139TOO_PIO is not set
> CONFIG_8139TOO_TUNE_TWISTER=3Dy
> CONFIG_8139TOO_8129=3Dy
> # CONFIG_8139_OLD_RX_RESET is not set
> CONFIG_R8169=3Dm
> CONFIG_NET_VENDOR_RENESAS=3Dy
> CONFIG_NET_VENDOR_ROCKER=3Dy
> # CONFIG_ROCKER is not set
> CONFIG_NET_VENDOR_SAMSUNG=3Dy
> # CONFIG_SXGBE_ETH is not set
> # CONFIG_NET_VENDOR_SEEQ is not set
> CONFIG_NET_VENDOR_SILAN=3Dy
> CONFIG_SC92031=3Dm
> CONFIG_NET_VENDOR_SIS=3Dy
> CONFIG_SIS900=3Dm
> CONFIG_SIS190=3Dm
> CONFIG_NET_VENDOR_SOLARFLARE=3Dy
> CONFIG_SFC=3Dm
> CONFIG_SFC_MTD=3Dy
> CONFIG_SFC_MCDI_MON=3Dy
> CONFIG_SFC_SRIOV=3Dy
> CONFIG_SFC_MCDI_LOGGING=3Dy
> CONFIG_SFC_FALCON=3Dm
> CONFIG_SFC_FALCON_MTD=3Dy
> CONFIG_SFC_SIENA=3Dm
> CONFIG_SFC_SIENA_MTD=3Dy
> CONFIG_SFC_SIENA_MCDI_MON=3Dy
> CONFIG_SFC_SIENA_SRIOV=3Dy
> CONFIG_SFC_SIENA_MCDI_LOGGING=3Dy
> CONFIG_NET_VENDOR_SMSC=3Dy
> CONFIG_PCMCIA_SMC91C92=3Dm
> CONFIG_EPIC100=3Dm
> # CONFIG_SMSC911X is not set
> CONFIG_SMSC9420=3Dm
> CONFIG_NET_VENDOR_SOCIONEXT=3Dy
> CONFIG_NET_VENDOR_STMICRO=3Dy
> CONFIG_STMMAC_ETH=3Dm
> # CONFIG_STMMAC_SELFTESTS is not set
> CONFIG_STMMAC_PLATFORM=3Dm
> CONFIG_DWMAC_GENERIC=3Dm
> CONFIG_DWMAC_INTEL=3Dm
> # CONFIG_STMMAC_PCI is not set
> CONFIG_NET_VENDOR_SUN=3Dy
> CONFIG_HAPPYMEAL=3Dm
> CONFIG_SUNGEM=3Dm
> CONFIG_CASSINI=3Dm
> CONFIG_NIU=3Dm
> CONFIG_NET_VENDOR_SYNOPSYS=3Dy
> # CONFIG_DWC_XLGMAC is not set
> CONFIG_NET_VENDOR_TEHUTI=3Dy
> CONFIG_TEHUTI=3Dm
> CONFIG_NET_VENDOR_TI=3Dy
> # CONFIG_TI_CPSW_PHY_SEL is not set
> CONFIG_TLAN=3Dm
> CONFIG_NET_VENDOR_VERTEXCOM=3Dy
> # CONFIG_MSE102X is not set
> CONFIG_NET_VENDOR_VIA=3Dy
> CONFIG_VIA_RHINE=3Dm
> # CONFIG_VIA_RHINE_MMIO is not set
> CONFIG_VIA_VELOCITY=3Dm
> CONFIG_NET_VENDOR_WANGXUN=3Dy
> # CONFIG_NGBE is not set
> # CONFIG_TXGBE is not set
> CONFIG_NET_VENDOR_WIZNET=3Dy
> # CONFIG_WIZNET_W5100 is not set
> # CONFIG_WIZNET_W5300 is not set
> CONFIG_NET_VENDOR_XILINX=3Dy
> # CONFIG_XILINX_EMACLITE is not set
> # CONFIG_XILINX_AXI_EMAC is not set
> # CONFIG_XILINX_LL_TEMAC is not set
> CONFIG_NET_VENDOR_XIRCOM=3Dy
> CONFIG_PCMCIA_XIRC2PS=3Dm
> CONFIG_FDDI=3Dy
> CONFIG_DEFXX=3Dm
> CONFIG_SKFP=3Dm
> CONFIG_HIPPI=3Dy
> CONFIG_ROADRUNNER=3Dm
> # CONFIG_ROADRUNNER_LARGE_RINGS is not set
> CONFIG_NET_SB1000=3Dm
> CONFIG_PHYLINK=3Dm
> CONFIG_PHYLIB=3Dm
> CONFIG_SWPHY=3Dy
> CONFIG_LED_TRIGGER_PHY=3Dy
> CONFIG_FIXED_PHY=3Dm
> CONFIG_SFP=3Dm
>=20
> #
> # MII PHY device drivers
> #
> CONFIG_AMD_PHY=3Dm
> # CONFIG_ADIN_PHY is not set
> # CONFIG_ADIN1100_PHY is not set
> CONFIG_AQUANTIA_PHY=3Dm
> CONFIG_AX88796B_PHY=3Dm
> CONFIG_BROADCOM_PHY=3Dm
> # CONFIG_BCM54140_PHY is not set
> # CONFIG_BCM7XXX_PHY is not set
> # CONFIG_BCM84881_PHY is not set
> CONFIG_BCM87XX_PHY=3Dm
> CONFIG_BCM_NET_PHYLIB=3Dm
> CONFIG_BCM_NET_PHYPTP=3Dm
> CONFIG_CICADA_PHY=3Dm
> CONFIG_CORTINA_PHY=3Dm
> CONFIG_DAVICOM_PHY=3Dm
> CONFIG_ICPLUS_PHY=3Dm
> CONFIG_LXT_PHY=3Dm
> # CONFIG_INTEL_XWAY_PHY is not set
> CONFIG_LSI_ET1011C_PHY=3Dm
> CONFIG_MARVELL_PHY=3Dm
> CONFIG_MARVELL_10G_PHY=3Dm
> # CONFIG_MARVELL_88X2222_PHY is not set
> # CONFIG_MAXLINEAR_GPHY is not set
> # CONFIG_MEDIATEK_GE_PHY is not set
> CONFIG_MICREL_PHY=3Dm
> CONFIG_MICROCHIP_PHY=3Dm
> CONFIG_MICROCHIP_T1_PHY=3Dm
> CONFIG_MICROSEMI_PHY=3Dm
> # CONFIG_MOTORCOMM_PHY is not set
> CONFIG_NATIONAL_PHY=3Dm
> # CONFIG_NXP_C45_TJA11XX_PHY is not set
> # CONFIG_NXP_TJA11XX_PHY is not set
> CONFIG_AT803X_PHY=3Dm
> CONFIG_QSEMI_PHY=3Dm
> CONFIG_REALTEK_PHY=3Dm
> CONFIG_RENESAS_PHY=3Dm
> CONFIG_ROCKCHIP_PHY=3Dm
> CONFIG_SMSC_PHY=3Dm
> CONFIG_STE10XP=3Dm
> CONFIG_TERANETICS_PHY=3Dm
> CONFIG_DP83822_PHY=3Dm
> CONFIG_DP83TC811_PHY=3Dm
> CONFIG_DP83848_PHY=3Dm
> CONFIG_DP83867_PHY=3Dm
> # CONFIG_DP83869_PHY is not set
> # CONFIG_DP83TD510_PHY is not set
> CONFIG_VITESSE_PHY=3Dm
> # CONFIG_XILINX_GMII2RGMII is not set
> # CONFIG_MICREL_KS8995MA is not set
> # CONFIG_PSE_CONTROLLER is not set
> CONFIG_CAN_DEV=3Dm
> CONFIG_CAN_VCAN=3Dm
> CONFIG_CAN_VXCAN=3Dm
> CONFIG_CAN_NETLINK=3Dy
> CONFIG_CAN_CALC_BITTIMING=3Dy
> CONFIG_CAN_RX_OFFLOAD=3Dy
> # CONFIG_CAN_CAN327 is not set
> # CONFIG_CAN_KVASER_PCIEFD is not set
> CONFIG_CAN_SLCAN=3Dm
> # CONFIG_CAN_C_CAN is not set
> # CONFIG_CAN_CC770 is not set
> # CONFIG_CAN_CTUCANFD_PCI is not set
> # CONFIG_CAN_IFI_CANFD is not set
> # CONFIG_CAN_M_CAN is not set
> CONFIG_CAN_PEAK_PCIEFD=3Dm
> CONFIG_CAN_SJA1000=3Dm
> CONFIG_CAN_EMS_PCI=3Dm
> CONFIG_CAN_EMS_PCMCIA=3Dm
> # CONFIG_CAN_F81601 is not set
> CONFIG_CAN_KVASER_PCI=3Dm
> CONFIG_CAN_PEAK_PCI=3Dm
> CONFIG_CAN_PEAK_PCIEC=3Dy
> CONFIG_CAN_PEAK_PCMCIA=3Dm
> CONFIG_CAN_PLX_PCI=3Dm
> CONFIG_CAN_SJA1000_ISA=3Dm
> # CONFIG_CAN_SJA1000_PLATFORM is not set
> CONFIG_CAN_SOFTING=3Dm
> CONFIG_CAN_SOFTING_CS=3Dm
>=20
> #
> # CAN SPI interfaces
> #
> CONFIG_CAN_HI311X=3Dm
> CONFIG_CAN_MCP251X=3Dm
> CONFIG_CAN_MCP251XFD=3Dm
> # CONFIG_CAN_MCP251XFD_SANITY is not set
> # end of CAN SPI interfaces
>=20
> #
> # CAN USB interfaces
> #
> CONFIG_CAN_8DEV_USB=3Dm
> CONFIG_CAN_EMS_USB=3Dm
> CONFIG_CAN_ESD_USB=3Dm
> # CONFIG_CAN_ETAS_ES58X is not set
> CONFIG_CAN_GS_USB=3Dm
> CONFIG_CAN_KVASER_USB=3Dm
> CONFIG_CAN_MCBA_USB=3Dm
> CONFIG_CAN_PEAK_USB=3Dm
> CONFIG_CAN_UCAN=3Dm
> # end of CAN USB interfaces
>=20
> # CONFIG_CAN_DEBUG_DEVICES is not set
> CONFIG_MDIO_DEVICE=3Dm
> CONFIG_MDIO_BUS=3Dm
> CONFIG_FWNODE_MDIO=3Dm
> CONFIG_ACPI_MDIO=3Dm
> CONFIG_MDIO_DEVRES=3Dm
> # CONFIG_MDIO_BITBANG is not set
> # CONFIG_MDIO_BCM_UNIMAC is not set
> CONFIG_MDIO_I2C=3Dm
> # CONFIG_MDIO_MVUSB is not set
> # CONFIG_MDIO_MSCC_MIIM is not set
> # CONFIG_MDIO_THUNDER is not set
>=20
> #
> # MDIO Multiplexers
> #
>=20
> #
> # PCS device drivers
> #
> CONFIG_PCS_XPCS=3Dm
> # end of PCS device drivers
>=20
> CONFIG_PLIP=3Dm
> CONFIG_PPP=3Dm
> CONFIG_PPP_BSDCOMP=3Dm
> CONFIG_PPP_DEFLATE=3Dm
> CONFIG_PPP_FILTER=3Dy
> CONFIG_PPP_MPPE=3Dm
> CONFIG_PPP_MULTILINK=3Dy
> CONFIG_PPPOATM=3Dm
> CONFIG_PPPOE=3Dm
> CONFIG_PPTP=3Dm
> CONFIG_PPPOL2TP=3Dm
> CONFIG_PPP_ASYNC=3Dm
> CONFIG_PPP_SYNC_TTY=3Dm
> CONFIG_SLIP=3Dm
> CONFIG_SLHC=3Dm
> CONFIG_SLIP_COMPRESSED=3Dy
> CONFIG_SLIP_SMART=3Dy
> CONFIG_SLIP_MODE_SLIP6=3Dy
>=20
> #
> # Host-side USB support is needed for USB Network Adapter support
> #
> CONFIG_USB_NET_DRIVERS=3Dm
> CONFIG_USB_CATC=3Dm
> CONFIG_USB_KAWETH=3Dm
> CONFIG_USB_PEGASUS=3Dm
> CONFIG_USB_RTL8150=3Dm
> CONFIG_USB_RTL8152=3Dm
> CONFIG_USB_LAN78XX=3Dm
> CONFIG_USB_USBNET=3Dm
> CONFIG_USB_NET_AX8817X=3Dm
> CONFIG_USB_NET_AX88179_178A=3Dm
> CONFIG_USB_NET_CDCETHER=3Dm
> CONFIG_USB_NET_CDC_EEM=3Dm
> CONFIG_USB_NET_CDC_NCM=3Dm
> CONFIG_USB_NET_HUAWEI_CDC_NCM=3Dm
> CONFIG_USB_NET_CDC_MBIM=3Dm
> CONFIG_USB_NET_DM9601=3Dm
> CONFIG_USB_NET_SR9700=3Dm
> CONFIG_USB_NET_SR9800=3Dm
> CONFIG_USB_NET_SMSC75XX=3Dm
> CONFIG_USB_NET_SMSC95XX=3Dm
> CONFIG_USB_NET_GL620A=3Dm
> CONFIG_USB_NET_NET1080=3Dm
> CONFIG_USB_NET_PLUSB=3Dm
> CONFIG_USB_NET_MCS7830=3Dm
> CONFIG_USB_NET_RNDIS_HOST=3Dm
> CONFIG_USB_NET_CDC_SUBSET_ENABLE=3Dm
> CONFIG_USB_NET_CDC_SUBSET=3Dm
> CONFIG_USB_ALI_M5632=3Dy
> CONFIG_USB_AN2720=3Dy
> CONFIG_USB_BELKIN=3Dy
> CONFIG_USB_ARMLINUX=3Dy
> CONFIG_USB_EPSON2888=3Dy
> CONFIG_USB_KC2190=3Dy
> CONFIG_USB_NET_ZAURUS=3Dm
> CONFIG_USB_NET_CX82310_ETH=3Dm
> CONFIG_USB_NET_KALMIA=3Dm
> CONFIG_USB_NET_QMI_WWAN=3Dm
> CONFIG_USB_HSO=3Dm
> CONFIG_USB_NET_INT51X1=3Dm
> CONFIG_USB_CDC_PHONET=3Dm
> CONFIG_USB_IPHETH=3Dm
> CONFIG_USB_SIERRA_NET=3Dm
> CONFIG_USB_VL600=3Dm
> CONFIG_USB_NET_CH9200=3Dm
> CONFIG_USB_NET_AQC111=3Dm
> CONFIG_USB_RTL8153_ECM=3Dm
> CONFIG_WLAN=3Dy
> CONFIG_WLAN_VENDOR_ADMTEK=3Dy
> CONFIG_ADM8211=3Dm
> CONFIG_ATH_COMMON=3Dm
> CONFIG_WLAN_VENDOR_ATH=3Dy
> # CONFIG_ATH_DEBUG is not set
> CONFIG_ATH5K=3Dm
> # CONFIG_ATH5K_DEBUG is not set
> # CONFIG_ATH5K_TRACER is not set
> CONFIG_ATH5K_PCI=3Dy
> CONFIG_ATH9K_HW=3Dm
> CONFIG_ATH9K_COMMON=3Dm
> CONFIG_ATH9K_BTCOEX_SUPPORT=3Dy
> CONFIG_ATH9K=3Dm
> CONFIG_ATH9K_PCI=3Dy
> # CONFIG_ATH9K_AHB is not set
> # CONFIG_ATH9K_DEBUGFS is not set
> # CONFIG_ATH9K_DYNACK is not set
> # CONFIG_ATH9K_WOW is not set
> CONFIG_ATH9K_RFKILL=3Dy
> CONFIG_ATH9K_CHANNEL_CONTEXT=3Dy
> CONFIG_ATH9K_PCOEM=3Dy
> # CONFIG_ATH9K_PCI_NO_EEPROM is not set
> CONFIG_ATH9K_HTC=3Dm
> # CONFIG_ATH9K_HTC_DEBUGFS is not set
> # CONFIG_ATH9K_HWRNG is not set
> CONFIG_CARL9170=3Dm
> CONFIG_CARL9170_LEDS=3Dy
> CONFIG_CARL9170_WPC=3Dy
> # CONFIG_CARL9170_HWRNG is not set
> CONFIG_ATH6KL=3Dm
> CONFIG_ATH6KL_SDIO=3Dm
> CONFIG_ATH6KL_USB=3Dm
> # CONFIG_ATH6KL_DEBUG is not set
> # CONFIG_ATH6KL_TRACING is not set
> CONFIG_AR5523=3Dm
> CONFIG_WIL6210=3Dm
> CONFIG_WIL6210_ISR_COR=3Dy
> CONFIG_WIL6210_TRACING=3Dy
> CONFIG_WIL6210_DEBUGFS=3Dy
> CONFIG_ATH10K=3Dm
> CONFIG_ATH10K_CE=3Dy
> CONFIG_ATH10K_PCI=3Dm
> # CONFIG_ATH10K_SDIO is not set
> CONFIG_ATH10K_USB=3Dm
> # CONFIG_ATH10K_DEBUG is not set
> # CONFIG_ATH10K_DEBUGFS is not set
> # CONFIG_ATH10K_TRACING is not set
> # CONFIG_WCN36XX is not set
> CONFIG_ATH11K=3Dm
> CONFIG_ATH11K_PCI=3Dm
> # CONFIG_ATH11K_DEBUG is not set
> # CONFIG_ATH11K_TRACING is not set
> CONFIG_WLAN_VENDOR_ATMEL=3Dy
> CONFIG_ATMEL=3Dm
> CONFIG_PCI_ATMEL=3Dm
> CONFIG_PCMCIA_ATMEL=3Dm
> CONFIG_AT76C50X_USB=3Dm
> CONFIG_WLAN_VENDOR_BROADCOM=3Dy
> CONFIG_B43=3Dm
> CONFIG_B43_BCMA=3Dy
> CONFIG_B43_SSB=3Dy
> CONFIG_B43_BUSES_BCMA_AND_SSB=3Dy
> # CONFIG_B43_BUSES_BCMA is not set
> # CONFIG_B43_BUSES_SSB is not set
> CONFIG_B43_PCI_AUTOSELECT=3Dy
> CONFIG_B43_PCICORE_AUTOSELECT=3Dy
> CONFIG_B43_SDIO=3Dy
> CONFIG_B43_BCMA_PIO=3Dy
> CONFIG_B43_PIO=3Dy
> CONFIG_B43_PHY_G=3Dy
> CONFIG_B43_PHY_N=3Dy
> CONFIG_B43_PHY_LP=3Dy
> CONFIG_B43_PHY_HT=3Dy
> CONFIG_B43_LEDS=3Dy
> CONFIG_B43_HWRNG=3Dy
> # CONFIG_B43_DEBUG is not set
> CONFIG_B43LEGACY=3Dm
> CONFIG_B43LEGACY_PCI_AUTOSELECT=3Dy
> CONFIG_B43LEGACY_PCICORE_AUTOSELECT=3Dy
> CONFIG_B43LEGACY_LEDS=3Dy
> CONFIG_B43LEGACY_HWRNG=3Dy
> CONFIG_B43LEGACY_DEBUG=3Dy
> CONFIG_B43LEGACY_DMA=3Dy
> CONFIG_B43LEGACY_PIO=3Dy
> CONFIG_B43LEGACY_DMA_AND_PIO_MODE=3Dy
> # CONFIG_B43LEGACY_DMA_MODE is not set
> # CONFIG_B43LEGACY_PIO_MODE is not set
> CONFIG_BRCMUTIL=3Dm
> CONFIG_BRCMSMAC=3Dm
> CONFIG_BRCMFMAC=3Dm
> CONFIG_BRCMFMAC_PROTO_BCDC=3Dy
> CONFIG_BRCMFMAC_PROTO_MSGBUF=3Dy
> CONFIG_BRCMFMAC_SDIO=3Dy
> CONFIG_BRCMFMAC_USB=3Dy
> CONFIG_BRCMFMAC_PCIE=3Dy
> # CONFIG_BRCM_TRACING is not set
> # CONFIG_BRCMDBG is not set
> CONFIG_WLAN_VENDOR_CISCO=3Dy
> CONFIG_AIRO=3Dm
> CONFIG_AIRO_CS=3Dm
> CONFIG_WLAN_VENDOR_INTEL=3Dy
> # CONFIG_IPW2100 is not set
> CONFIG_IPW2200=3Dm
> CONFIG_IPW2200_MONITOR=3Dy
> CONFIG_IPW2200_RADIOTAP=3Dy
> CONFIG_IPW2200_PROMISCUOUS=3Dy
> CONFIG_IPW2200_QOS=3Dy
> # CONFIG_IPW2200_DEBUG is not set
> CONFIG_LIBIPW=3Dm
> # CONFIG_LIBIPW_DEBUG is not set
> CONFIG_IWLEGACY=3Dm
> CONFIG_IWL4965=3Dm
> CONFIG_IWL3945=3Dm
>=20
> #
> # iwl3945 / iwl4965 Debugging Options
> #
> # CONFIG_IWLEGACY_DEBUG is not set
> # end of iwl3945 / iwl4965 Debugging Options
>=20
> CONFIG_IWLWIFI=3Dm
> CONFIG_IWLWIFI_LEDS=3Dy
> CONFIG_IWLDVM=3Dm
> CONFIG_IWLMVM=3Dm
> CONFIG_IWLWIFI_OPMODE_MODULAR=3Dy
>=20
> #
> # Debugging Options
> #
> # CONFIG_IWLWIFI_DEBUG is not set
> # CONFIG_IWLWIFI_DEVICE_TRACING is not set
> # end of Debugging Options
>=20
> CONFIG_WLAN_VENDOR_INTERSIL=3Dy
> CONFIG_HOSTAP=3Dm
> CONFIG_HOSTAP_FIRMWARE=3Dy
> # CONFIG_HOSTAP_FIRMWARE_NVRAM is not set
> CONFIG_HOSTAP_PLX=3Dm
> CONFIG_HOSTAP_PCI=3Dm
> CONFIG_HOSTAP_CS=3Dm
> CONFIG_HERMES=3Dm
> # CONFIG_HERMES_PRISM is not set
> CONFIG_HERMES_CACHE_FW_ON_INIT=3Dy
> CONFIG_PLX_HERMES=3Dm
> CONFIG_TMD_HERMES=3Dm
> CONFIG_NORTEL_HERMES=3Dm
> CONFIG_PCMCIA_HERMES=3Dm
> CONFIG_PCMCIA_SPECTRUM=3Dm
> CONFIG_ORINOCO_USB=3Dm
> CONFIG_P54_COMMON=3Dm
> CONFIG_P54_USB=3Dm
> CONFIG_P54_PCI=3Dm
> # CONFIG_P54_SPI is not set
> CONFIG_P54_LEDS=3Dy
> CONFIG_WLAN_VENDOR_MARVELL=3Dy
> CONFIG_LIBERTAS=3Dm
> CONFIG_LIBERTAS_USB=3Dm
> CONFIG_LIBERTAS_CS=3Dm
> CONFIG_LIBERTAS_SDIO=3Dm
> # CONFIG_LIBERTAS_SPI is not set
> # CONFIG_LIBERTAS_DEBUG is not set
> CONFIG_LIBERTAS_MESH=3Dy
> CONFIG_LIBERTAS_THINFIRM=3Dm
> # CONFIG_LIBERTAS_THINFIRM_DEBUG is not set
> CONFIG_LIBERTAS_THINFIRM_USB=3Dm
> CONFIG_MWIFIEX=3Dm
> CONFIG_MWIFIEX_SDIO=3Dm
> CONFIG_MWIFIEX_PCIE=3Dm
> CONFIG_MWIFIEX_USB=3Dm
> CONFIG_MWL8K=3Dm
> CONFIG_WLAN_VENDOR_MEDIATEK=3Dy
> CONFIG_MT7601U=3Dm
> CONFIG_MT76_CORE=3Dm
> CONFIG_MT76_LEDS=3Dy
> CONFIG_MT76_USB=3Dm
> CONFIG_MT76x02_LIB=3Dm
> CONFIG_MT76x02_USB=3Dm
> CONFIG_MT76_CONNAC_LIB=3Dm
> CONFIG_MT76x0_COMMON=3Dm
> CONFIG_MT76x0U=3Dm
> CONFIG_MT76x0E=3Dm
> CONFIG_MT76x2_COMMON=3Dm
> CONFIG_MT76x2E=3Dm
> CONFIG_MT76x2U=3Dm
> # CONFIG_MT7603E is not set
> CONFIG_MT7615_COMMON=3Dm
> CONFIG_MT7615E=3Dm
> CONFIG_MT7663_USB_SDIO_COMMON=3Dm
> CONFIG_MT7663U=3Dm
> # CONFIG_MT7663S is not set
> CONFIG_MT7915E=3Dm
> CONFIG_MT7921_COMMON=3Dm
> CONFIG_MT7921E=3Dm
> # CONFIG_MT7921S is not set
> CONFIG_MT7921U=3Dm
> CONFIG_WLAN_VENDOR_MICROCHIP=3Dy
> # CONFIG_WILC1000_SDIO is not set
> # CONFIG_WILC1000_SPI is not set
> CONFIG_WLAN_VENDOR_PURELIFI=3Dy
> # CONFIG_PLFXLC is not set
> CONFIG_WLAN_VENDOR_RALINK=3Dy
> CONFIG_RT2X00=3Dm
> CONFIG_RT2400PCI=3Dm
> CONFIG_RT2500PCI=3Dm
> CONFIG_RT61PCI=3Dm
> CONFIG_RT2800PCI=3Dm
> CONFIG_RT2800PCI_RT33XX=3Dy
> CONFIG_RT2800PCI_RT35XX=3Dy
> CONFIG_RT2800PCI_RT53XX=3Dy
> CONFIG_RT2800PCI_RT3290=3Dy
> CONFIG_RT2500USB=3Dm
> CONFIG_RT73USB=3Dm
> CONFIG_RT2800USB=3Dm
> CONFIG_RT2800USB_RT33XX=3Dy
> CONFIG_RT2800USB_RT35XX=3Dy
> CONFIG_RT2800USB_RT3573=3Dy
> CONFIG_RT2800USB_RT53XX=3Dy
> CONFIG_RT2800USB_RT55XX=3Dy
> # CONFIG_RT2800USB_UNKNOWN is not set
> CONFIG_RT2800_LIB=3Dm
> CONFIG_RT2800_LIB_MMIO=3Dm
> CONFIG_RT2X00_LIB_MMIO=3Dm
> CONFIG_RT2X00_LIB_PCI=3Dm
> CONFIG_RT2X00_LIB_USB=3Dm
> CONFIG_RT2X00_LIB=3Dm
> CONFIG_RT2X00_LIB_FIRMWARE=3Dy
> CONFIG_RT2X00_LIB_CRYPTO=3Dy
> CONFIG_RT2X00_LIB_LEDS=3Dy
> # CONFIG_RT2X00_DEBUG is not set
> CONFIG_WLAN_VENDOR_REALTEK=3Dy
> CONFIG_RTL8180=3Dm
> CONFIG_RTL8187=3Dm
> CONFIG_RTL8187_LEDS=3Dy
> CONFIG_RTL_CARDS=3Dm
> CONFIG_RTL8192CE=3Dm
> CONFIG_RTL8192SE=3Dm
> CONFIG_RTL8192DE=3Dm
> CONFIG_RTL8723AE=3Dm
> CONFIG_RTL8723BE=3Dm
> CONFIG_RTL8188EE=3Dm
> CONFIG_RTL8192EE=3Dm
> CONFIG_RTL8821AE=3Dm
> CONFIG_RTL8192CU=3Dm
> CONFIG_RTLWIFI=3Dm
> CONFIG_RTLWIFI_PCI=3Dm
> CONFIG_RTLWIFI_USB=3Dm
> # CONFIG_RTLWIFI_DEBUG is not set
> CONFIG_RTL8192C_COMMON=3Dm
> CONFIG_RTL8723_COMMON=3Dm
> CONFIG_RTLBTCOEXIST=3Dm
> CONFIG_RTL8XXXU=3Dm
> # CONFIG_RTL8XXXU_UNTESTED is not set
> CONFIG_RTW88=3Dm
> CONFIG_RTW88_CORE=3Dm
> CONFIG_RTW88_PCI=3Dm
> CONFIG_RTW88_8822B=3Dm
> CONFIG_RTW88_8822C=3Dm
> CONFIG_RTW88_8723D=3Dm
> CONFIG_RTW88_8821C=3Dm
> CONFIG_RTW88_8822BE=3Dm
> CONFIG_RTW88_8822CE=3Dm
> CONFIG_RTW88_8723DE=3Dm
> CONFIG_RTW88_8821CE=3Dm
> # CONFIG_RTW88_DEBUG is not set
> # CONFIG_RTW88_DEBUGFS is not set
> CONFIG_RTW89=3Dm
> CONFIG_RTW89_CORE=3Dm
> CONFIG_RTW89_PCI=3Dm
> CONFIG_RTW89_8852A=3Dm
> CONFIG_RTW89_8852AE=3Dm
> # CONFIG_RTW89_8852CE is not set
> # CONFIG_RTW89_DEBUGMSG is not set
> # CONFIG_RTW89_DEBUGFS is not set
> CONFIG_WLAN_VENDOR_RSI=3Dy
> CONFIG_RSI_91X=3Dm
> CONFIG_RSI_DEBUGFS=3Dy
> # CONFIG_RSI_SDIO is not set
> CONFIG_RSI_USB=3Dm
> CONFIG_RSI_COEX=3Dy
> CONFIG_WLAN_VENDOR_SILABS=3Dy
> # CONFIG_WFX is not set
> CONFIG_WLAN_VENDOR_ST=3Dy
> # CONFIG_CW1200 is not set
> # CONFIG_WLAN_VENDOR_TI is not set
> CONFIG_WLAN_VENDOR_ZYDAS=3Dy
> CONFIG_USB_ZD1201=3Dm
> CONFIG_ZD1211RW=3Dm
> # CONFIG_ZD1211RW_DEBUG is not set
> CONFIG_WLAN_VENDOR_QUANTENNA=3Dy
> # CONFIG_QTNFMAC_PCIE is not set
> CONFIG_PCMCIA_RAYCS=3Dm
> CONFIG_PCMCIA_WL3501=3Dm
> CONFIG_MAC80211_HWSIM=3Dm
> CONFIG_USB_NET_RNDIS_WLAN=3Dm
> # CONFIG_VIRT_WIFI is not set
> CONFIG_WAN=3Dy
> CONFIG_HDLC=3Dm
> CONFIG_HDLC_RAW=3Dm
> CONFIG_HDLC_RAW_ETH=3Dm
> CONFIG_HDLC_CISCO=3Dm
> CONFIG_HDLC_FR=3Dm
> CONFIG_HDLC_PPP=3Dm
> # CONFIG_HDLC_X25 is not set
> CONFIG_PCI200SYN=3Dm
> CONFIG_WANXL=3Dm
> # CONFIG_PC300TOO is not set
> CONFIG_FARSYNC=3Dm
> CONFIG_IEEE802154_DRIVERS=3Dm
> CONFIG_IEEE802154_FAKELB=3Dm
> CONFIG_IEEE802154_AT86RF230=3Dm
> CONFIG_IEEE802154_MRF24J40=3Dm
> CONFIG_IEEE802154_CC2520=3Dm
> CONFIG_IEEE802154_ATUSB=3Dm
> CONFIG_IEEE802154_ADF7242=3Dm
> # CONFIG_IEEE802154_CA8210 is not set
> # CONFIG_IEEE802154_MCR20A is not set
> CONFIG_IEEE802154_HWSIM=3Dm
>=20
> #
> # Wireless WAN
> #
> CONFIG_WWAN=3Dm
> CONFIG_WWAN_DEBUGFS=3Dy
> # CONFIG_WWAN_HWSIM is not set
> CONFIG_MHI_WWAN_CTRL=3Dm
> CONFIG_MHI_WWAN_MBIM=3Dm
> CONFIG_IOSM=3Dm
> # CONFIG_MTK_T7XX is not set
> # end of Wireless WAN
>=20
> CONFIG_XEN_NETDEV_FRONTEND=3Dm
> CONFIG_XEN_NETDEV_BACKEND=3Dm
> CONFIG_VMXNET3=3Dm
> CONFIG_FUJITSU_ES=3Dm
> CONFIG_USB4_NET=3Dm
> CONFIG_HYPERV_NET=3Dm
> # CONFIG_NETDEVSIM is not set
> CONFIG_NET_FAILOVER=3Dm
> CONFIG_ISDN=3Dy
> CONFIG_ISDN_CAPI=3Dy
> CONFIG_CAPI_TRACE=3Dy
> CONFIG_ISDN_CAPI_MIDDLEWARE=3Dy
> CONFIG_MISDN=3Dm
> CONFIG_MISDN_DSP=3Dm
> CONFIG_MISDN_L1OIP=3Dm
>=20
> #
> # mISDN hardware drivers
> #
> CONFIG_MISDN_HFCPCI=3Dm
> CONFIG_MISDN_HFCMULTI=3Dm
> CONFIG_MISDN_HFCUSB=3Dm
> CONFIG_MISDN_AVMFRITZ=3Dm
> CONFIG_MISDN_SPEEDFAX=3Dm
> CONFIG_MISDN_INFINEON=3Dm
> CONFIG_MISDN_W6692=3Dm
> # CONFIG_MISDN_NETJET is not set
> CONFIG_MISDN_IPAC=3Dm
> CONFIG_MISDN_ISAR=3Dm
>=20
> #
> # Input device support
> #
> CONFIG_INPUT=3Dy
> CONFIG_INPUT_LEDS=3Dy
> CONFIG_INPUT_FF_MEMLESS=3Dm
> CONFIG_INPUT_SPARSEKMAP=3Dm
> CONFIG_INPUT_MATRIXKMAP=3Dm
> CONFIG_INPUT_VIVALDIFMAP=3Dy
>=20
> #
> # Userland interfaces
> #
> CONFIG_INPUT_MOUSEDEV=3Dy
> CONFIG_INPUT_MOUSEDEV_PSAUX=3Dy
> CONFIG_INPUT_MOUSEDEV_SCREEN_X=3D1024
> CONFIG_INPUT_MOUSEDEV_SCREEN_Y=3D768
> CONFIG_INPUT_JOYDEV=3Dm
> CONFIG_INPUT_EVDEV=3Dm
> # CONFIG_INPUT_EVBUG is not set
>=20
> #
> # Input Device Drivers
> #
> CONFIG_INPUT_KEYBOARD=3Dy
> # CONFIG_KEYBOARD_ADC is not set
> CONFIG_KEYBOARD_ADP5588=3Dm
> # CONFIG_KEYBOARD_ADP5589 is not set
> CONFIG_KEYBOARD_APPLESPI=3Dm
> CONFIG_KEYBOARD_ATKBD=3Dy
> # CONFIG_KEYBOARD_QT1050 is not set
> # CONFIG_KEYBOARD_QT1070 is not set
> CONFIG_KEYBOARD_QT2160=3Dm
> # CONFIG_KEYBOARD_DLINK_DIR685 is not set
> CONFIG_KEYBOARD_LKKBD=3Dm
> CONFIG_KEYBOARD_GPIO=3Dm
> CONFIG_KEYBOARD_GPIO_POLLED=3Dm
> # CONFIG_KEYBOARD_TCA6416 is not set
> # CONFIG_KEYBOARD_TCA8418 is not set
> # CONFIG_KEYBOARD_MATRIX is not set
> CONFIG_KEYBOARD_LM8323=3Dm
> # CONFIG_KEYBOARD_LM8333 is not set
> CONFIG_KEYBOARD_MAX7359=3Dm
> # CONFIG_KEYBOARD_MCS is not set
> # CONFIG_KEYBOARD_MPR121 is not set
> CONFIG_KEYBOARD_NEWTON=3Dm
> CONFIG_KEYBOARD_OPENCORES=3Dm
> # CONFIG_KEYBOARD_PINEPHONE is not set
> # CONFIG_KEYBOARD_SAMSUNG is not set
> CONFIG_KEYBOARD_STOWAWAY=3Dm
> CONFIG_KEYBOARD_SUNKBD=3Dm
> # CONFIG_KEYBOARD_TM2_TOUCHKEY is not set
> CONFIG_KEYBOARD_XTKBD=3Dm
> # CONFIG_KEYBOARD_CROS_EC is not set
> # CONFIG_KEYBOARD_CYPRESS_SF is not set
> CONFIG_INPUT_MOUSE=3Dy
> CONFIG_MOUSE_PS2=3Dm
> CONFIG_MOUSE_PS2_ALPS=3Dy
> CONFIG_MOUSE_PS2_BYD=3Dy
> CONFIG_MOUSE_PS2_LOGIPS2PP=3Dy
> CONFIG_MOUSE_PS2_SYNAPTICS=3Dy
> CONFIG_MOUSE_PS2_SYNAPTICS_SMBUS=3Dy
> CONFIG_MOUSE_PS2_CYPRESS=3Dy
> CONFIG_MOUSE_PS2_LIFEBOOK=3Dy
> CONFIG_MOUSE_PS2_TRACKPOINT=3Dy
> CONFIG_MOUSE_PS2_ELANTECH=3Dy
> CONFIG_MOUSE_PS2_ELANTECH_SMBUS=3Dy
> CONFIG_MOUSE_PS2_SENTELIC=3Dy
> # CONFIG_MOUSE_PS2_TOUCHKIT is not set
> CONFIG_MOUSE_PS2_FOCALTECH=3Dy
> CONFIG_MOUSE_PS2_VMMOUSE=3Dy
> CONFIG_MOUSE_PS2_SMBUS=3Dy
> CONFIG_MOUSE_SERIAL=3Dm
> CONFIG_MOUSE_APPLETOUCH=3Dm
> CONFIG_MOUSE_BCM5974=3Dm
> CONFIG_MOUSE_CYAPA=3Dm
> CONFIG_MOUSE_ELAN_I2C=3Dm
> CONFIG_MOUSE_ELAN_I2C_I2C=3Dy
> CONFIG_MOUSE_ELAN_I2C_SMBUS=3Dy
> CONFIG_MOUSE_VSXXXAA=3Dm
> # CONFIG_MOUSE_GPIO is not set
> CONFIG_MOUSE_SYNAPTICS_I2C=3Dm
> CONFIG_MOUSE_SYNAPTICS_USB=3Dm
> CONFIG_INPUT_JOYSTICK=3Dy
> CONFIG_JOYSTICK_ANALOG=3Dm
> CONFIG_JOYSTICK_A3D=3Dm
> # CONFIG_JOYSTICK_ADC is not set
> CONFIG_JOYSTICK_ADI=3Dm
> CONFIG_JOYSTICK_COBRA=3Dm
> CONFIG_JOYSTICK_GF2K=3Dm
> CONFIG_JOYSTICK_GRIP=3Dm
> CONFIG_JOYSTICK_GRIP_MP=3Dm
> CONFIG_JOYSTICK_GUILLEMOT=3Dm
> CONFIG_JOYSTICK_INTERACT=3Dm
> CONFIG_JOYSTICK_SIDEWINDER=3Dm
> CONFIG_JOYSTICK_TMDC=3Dm
> CONFIG_JOYSTICK_IFORCE=3Dm
> CONFIG_JOYSTICK_IFORCE_USB=3Dm
> CONFIG_JOYSTICK_IFORCE_232=3Dm
> CONFIG_JOYSTICK_WARRIOR=3Dm
> CONFIG_JOYSTICK_MAGELLAN=3Dm
> CONFIG_JOYSTICK_SPACEORB=3Dm
> CONFIG_JOYSTICK_SPACEBALL=3Dm
> CONFIG_JOYSTICK_STINGER=3Dm
> CONFIG_JOYSTICK_TWIDJOY=3Dm
> CONFIG_JOYSTICK_ZHENHUA=3Dm
> CONFIG_JOYSTICK_DB9=3Dm
> CONFIG_JOYSTICK_GAMECON=3Dm
> CONFIG_JOYSTICK_TURBOGRAFX=3Dm
> # CONFIG_JOYSTICK_AS5011 is not set
> CONFIG_JOYSTICK_JOYDUMP=3Dm
> CONFIG_JOYSTICK_XPAD=3Dm
> CONFIG_JOYSTICK_XPAD_FF=3Dy
> CONFIG_JOYSTICK_XPAD_LEDS=3Dy
> CONFIG_JOYSTICK_WALKERA0701=3Dm
> # CONFIG_JOYSTICK_PSXPAD_SPI is not set
> CONFIG_JOYSTICK_PXRC=3Dm
> # CONFIG_JOYSTICK_QWIIC is not set
> # CONFIG_JOYSTICK_FSIA6B is not set
> # CONFIG_JOYSTICK_SENSEHAT is not set
> CONFIG_INPUT_TABLET=3Dy
> CONFIG_TABLET_USB_ACECAD=3Dm
> CONFIG_TABLET_USB_AIPTEK=3Dm
> CONFIG_TABLET_USB_HANWANG=3Dm
> CONFIG_TABLET_USB_KBTAB=3Dm
> CONFIG_TABLET_USB_PEGASUS=3Dm
> CONFIG_TABLET_SERIAL_WACOM4=3Dm
> CONFIG_INPUT_TOUCHSCREEN=3Dy
> CONFIG_TOUCHSCREEN_ADS7846=3Dm
> CONFIG_TOUCHSCREEN_AD7877=3Dm
> CONFIG_TOUCHSCREEN_AD7879=3Dm
> CONFIG_TOUCHSCREEN_AD7879_I2C=3Dm
> # CONFIG_TOUCHSCREEN_AD7879_SPI is not set
> # CONFIG_TOUCHSCREEN_ADC is not set
> CONFIG_TOUCHSCREEN_ATMEL_MXT=3Dm
> # CONFIG_TOUCHSCREEN_ATMEL_MXT_T37 is not set
> # CONFIG_TOUCHSCREEN_AUO_PIXCIR is not set
> # CONFIG_TOUCHSCREEN_BU21013 is not set
> # CONFIG_TOUCHSCREEN_BU21029 is not set
> # CONFIG_TOUCHSCREEN_CHIPONE_ICN8505 is not set
> # CONFIG_TOUCHSCREEN_CY8CTMA140 is not set
> # CONFIG_TOUCHSCREEN_CY8CTMG110 is not set
> # CONFIG_TOUCHSCREEN_CYTTSP_CORE is not set
> # CONFIG_TOUCHSCREEN_CYTTSP4_CORE is not set
> CONFIG_TOUCHSCREEN_DYNAPRO=3Dm
> CONFIG_TOUCHSCREEN_HAMPSHIRE=3Dm
> CONFIG_TOUCHSCREEN_EETI=3Dm
> # CONFIG_TOUCHSCREEN_EGALAX_SERIAL is not set
> # CONFIG_TOUCHSCREEN_EXC3000 is not set
> CONFIG_TOUCHSCREEN_FUJITSU=3Dm
> CONFIG_TOUCHSCREEN_GOODIX=3Dm
> # CONFIG_TOUCHSCREEN_HIDEEP is not set
> # CONFIG_TOUCHSCREEN_HYCON_HY46XX is not set
> # CONFIG_TOUCHSCREEN_ILI210X is not set
> # CONFIG_TOUCHSCREEN_ILITEK is not set
> # CONFIG_TOUCHSCREEN_S6SY761 is not set
> CONFIG_TOUCHSCREEN_GUNZE=3Dm
> # CONFIG_TOUCHSCREEN_EKTF2127 is not set
> # CONFIG_TOUCHSCREEN_ELAN is not set
> CONFIG_TOUCHSCREEN_ELO=3Dm
> CONFIG_TOUCHSCREEN_WACOM_W8001=3Dm
> # CONFIG_TOUCHSCREEN_WACOM_I2C is not set
> # CONFIG_TOUCHSCREEN_MAX11801 is not set
> CONFIG_TOUCHSCREEN_MCS5000=3Dm
> # CONFIG_TOUCHSCREEN_MMS114 is not set
> # CONFIG_TOUCHSCREEN_MELFAS_MIP4 is not set
> # CONFIG_TOUCHSCREEN_MSG2638 is not set
> CONFIG_TOUCHSCREEN_MTOUCH=3Dm
> # CONFIG_TOUCHSCREEN_IMAGIS is not set
> CONFIG_TOUCHSCREEN_INEXIO=3Dm
> CONFIG_TOUCHSCREEN_MK712=3Dm
> CONFIG_TOUCHSCREEN_PENMOUNT=3Dm
> # CONFIG_TOUCHSCREEN_EDT_FT5X06 is not set
> CONFIG_TOUCHSCREEN_TOUCHRIGHT=3Dm
> CONFIG_TOUCHSCREEN_TOUCHWIN=3Dm
> # CONFIG_TOUCHSCREEN_PIXCIR is not set
> # CONFIG_TOUCHSCREEN_WDT87XX_I2C is not set
> CONFIG_TOUCHSCREEN_WM97XX=3Dm
> CONFIG_TOUCHSCREEN_WM9705=3Dy
> CONFIG_TOUCHSCREEN_WM9712=3Dy
> CONFIG_TOUCHSCREEN_WM9713=3Dy
> CONFIG_TOUCHSCREEN_USB_COMPOSITE=3Dm
> CONFIG_TOUCHSCREEN_USB_EGALAX=3Dy
> CONFIG_TOUCHSCREEN_USB_PANJIT=3Dy
> CONFIG_TOUCHSCREEN_USB_3M=3Dy
> CONFIG_TOUCHSCREEN_USB_ITM=3Dy
> CONFIG_TOUCHSCREEN_USB_ETURBO=3Dy
> CONFIG_TOUCHSCREEN_USB_GUNZE=3Dy
> CONFIG_TOUCHSCREEN_USB_DMC_TSC10=3Dy
> CONFIG_TOUCHSCREEN_USB_IRTOUCH=3Dy
> CONFIG_TOUCHSCREEN_USB_IDEALTEK=3Dy
> CONFIG_TOUCHSCREEN_USB_GENERAL_TOUCH=3Dy
> CONFIG_TOUCHSCREEN_USB_GOTOP=3Dy
> CONFIG_TOUCHSCREEN_USB_JASTEC=3Dy
> CONFIG_TOUCHSCREEN_USB_ELO=3Dy
> CONFIG_TOUCHSCREEN_USB_E2I=3Dy
> CONFIG_TOUCHSCREEN_USB_ZYTRONIC=3Dy
> CONFIG_TOUCHSCREEN_USB_ETT_TC45USB=3Dy
> CONFIG_TOUCHSCREEN_USB_NEXIO=3Dy
> CONFIG_TOUCHSCREEN_USB_EASYTOUCH=3Dy
> CONFIG_TOUCHSCREEN_TOUCHIT213=3Dm
> CONFIG_TOUCHSCREEN_TSC_SERIO=3Dm
> # CONFIG_TOUCHSCREEN_TSC2004 is not set
> # CONFIG_TOUCHSCREEN_TSC2005 is not set
> CONFIG_TOUCHSCREEN_TSC2007=3Dm
> # CONFIG_TOUCHSCREEN_TSC2007_IIO is not set
> # CONFIG_TOUCHSCREEN_RM_TS is not set
> CONFIG_TOUCHSCREEN_SILEAD=3Dm
> # CONFIG_TOUCHSCREEN_SIS_I2C is not set
> # CONFIG_TOUCHSCREEN_ST1232 is not set
> # CONFIG_TOUCHSCREEN_STMFTS is not set
> CONFIG_TOUCHSCREEN_SUR40=3Dm
> CONFIG_TOUCHSCREEN_SURFACE3_SPI=3Dm
> # CONFIG_TOUCHSCREEN_SX8654 is not set
> CONFIG_TOUCHSCREEN_TPS6507X=3Dm
> # CONFIG_TOUCHSCREEN_ZET6223 is not set
> # CONFIG_TOUCHSCREEN_ZFORCE is not set
> # CONFIG_TOUCHSCREEN_COLIBRI_VF50 is not set
> # CONFIG_TOUCHSCREEN_ROHM_BU21023 is not set
> # CONFIG_TOUCHSCREEN_IQS5XX is not set
> # CONFIG_TOUCHSCREEN_ZINITIX is not set
> CONFIG_INPUT_MISC=3Dy
> # CONFIG_INPUT_AD714X is not set
> # CONFIG_INPUT_BMA150 is not set
> # CONFIG_INPUT_E3X0_BUTTON is not set
> CONFIG_INPUT_PCSPKR=3Dm
> # CONFIG_INPUT_MMA8450 is not set
> CONFIG_INPUT_APANEL=3Dm
> # CONFIG_INPUT_GPIO_BEEPER is not set
> # CONFIG_INPUT_GPIO_DECODER is not set
> # CONFIG_INPUT_GPIO_VIBRA is not set
> CONFIG_INPUT_ATLAS_BTNS=3Dm
> CONFIG_INPUT_ATI_REMOTE2=3Dm
> CONFIG_INPUT_KEYSPAN_REMOTE=3Dm
> # CONFIG_INPUT_KXTJ9 is not set
> CONFIG_INPUT_POWERMATE=3Dm
> CONFIG_INPUT_YEALINK=3Dm
> CONFIG_INPUT_CM109=3Dm
> # CONFIG_INPUT_REGULATOR_HAPTIC is not set
> CONFIG_INPUT_AXP20X_PEK=3Dm
> CONFIG_INPUT_UINPUT=3Dm
> # CONFIG_INPUT_PCF8574 is not set
> # CONFIG_INPUT_PWM_BEEPER is not set
> # CONFIG_INPUT_PWM_VIBRA is not set
> # CONFIG_INPUT_GPIO_ROTARY_ENCODER is not set
> # CONFIG_INPUT_DA7280_HAPTICS is not set
> # CONFIG_INPUT_ADXL34X is not set
> # CONFIG_INPUT_IMS_PCU is not set
> # CONFIG_INPUT_IQS269A is not set
> # CONFIG_INPUT_IQS626A is not set
> # CONFIG_INPUT_IQS7222 is not set
> # CONFIG_INPUT_CMA3000 is not set
> CONFIG_INPUT_XEN_KBDDEV_FRONTEND=3Dy
> CONFIG_INPUT_IDEAPAD_SLIDEBAR=3Dm
> CONFIG_INPUT_SOC_BUTTON_ARRAY=3Dm
> # CONFIG_INPUT_DRV260X_HAPTICS is not set
> # CONFIG_INPUT_DRV2665_HAPTICS is not set
> # CONFIG_INPUT_DRV2667_HAPTICS is not set
> CONFIG_RMI4_CORE=3Dm
> # CONFIG_RMI4_I2C is not set
> # CONFIG_RMI4_SPI is not set
> CONFIG_RMI4_SMB=3Dm
> CONFIG_RMI4_F03=3Dy
> CONFIG_RMI4_F03_SERIO=3Dm
> CONFIG_RMI4_2D_SENSOR=3Dy
> CONFIG_RMI4_F11=3Dy
> CONFIG_RMI4_F12=3Dy
> CONFIG_RMI4_F30=3Dy
> CONFIG_RMI4_F34=3Dy
> CONFIG_RMI4_F3A=3Dy
> # CONFIG_RMI4_F54 is not set
> CONFIG_RMI4_F55=3Dy
>=20
> #
> # Hardware I/O ports
> #
> CONFIG_SERIO=3Dy
> CONFIG_ARCH_MIGHT_HAVE_PC_SERIO=3Dy
> CONFIG_SERIO_I8042=3Dy
> CONFIG_SERIO_SERPORT=3Dm
> CONFIG_SERIO_CT82C710=3Dm
> CONFIG_SERIO_PARKBD=3Dm
> CONFIG_SERIO_PCIPS2=3Dm
> CONFIG_SERIO_LIBPS2=3Dy
> CONFIG_SERIO_RAW=3Dm
> CONFIG_SERIO_ALTERA_PS2=3Dm
> # CONFIG_SERIO_PS2MULT is not set
> # CONFIG_SERIO_ARC_PS2 is not set
> CONFIG_HYPERV_KEYBOARD=3Dm
> # CONFIG_SERIO_GPIO_PS2 is not set
> # CONFIG_USERIO is not set
> CONFIG_GAMEPORT=3Dm
> CONFIG_GAMEPORT_NS558=3Dm
> CONFIG_GAMEPORT_L4=3Dm
> CONFIG_GAMEPORT_EMU10K1=3Dm
> CONFIG_GAMEPORT_FM801=3Dm
> # end of Hardware I/O ports
> # end of Input device support
>=20
> #
> # Character devices
> #
> CONFIG_TTY=3Dy
> CONFIG_VT=3Dy
> CONFIG_CONSOLE_TRANSLATIONS=3Dy
> CONFIG_VT_CONSOLE=3Dy
> CONFIG_VT_CONSOLE_SLEEP=3Dy
> CONFIG_HW_CONSOLE=3Dy
> CONFIG_VT_HW_CONSOLE_BINDING=3Dy
> CONFIG_UNIX98_PTYS=3Dy
> # CONFIG_LEGACY_PTYS is not set
> CONFIG_LDISC_AUTOLOAD=3Dy
>=20
> #
> # Serial drivers
> #
> CONFIG_SERIAL_EARLYCON=3Dy
> CONFIG_SERIAL_8250=3Dy
> # CONFIG_SERIAL_8250_DEPRECATED_OPTIONS is not set
> CONFIG_SERIAL_8250_PNP=3Dy
> # CONFIG_SERIAL_8250_16550A_VARIANTS is not set
> CONFIG_SERIAL_8250_FINTEK=3Dy
> CONFIG_SERIAL_8250_CONSOLE=3Dy
> CONFIG_SERIAL_8250_DMA=3Dy
> CONFIG_SERIAL_8250_PCI=3Dy
> CONFIG_SERIAL_8250_EXAR=3Dm
> CONFIG_SERIAL_8250_CS=3Dm
> CONFIG_SERIAL_8250_NR_UARTS=3D32
> CONFIG_SERIAL_8250_RUNTIME_UARTS=3D4
> CONFIG_SERIAL_8250_EXTENDED=3Dy
> CONFIG_SERIAL_8250_MANY_PORTS=3Dy
> CONFIG_SERIAL_8250_SHARE_IRQ=3Dy
> # CONFIG_SERIAL_8250_DETECT_IRQ is not set
> CONFIG_SERIAL_8250_RSA=3Dy
> CONFIG_SERIAL_8250_DWLIB=3Dy
> CONFIG_SERIAL_8250_DW=3Dy
> # CONFIG_SERIAL_8250_RT288X is not set
> CONFIG_SERIAL_8250_LPSS=3Dm
> CONFIG_SERIAL_8250_MID=3Dy
> CONFIG_SERIAL_8250_PERICOM=3Dy
>=20
> #
> # Non-8250 serial port support
> #
> # CONFIG_SERIAL_MAX3100 is not set
> # CONFIG_SERIAL_MAX310X is not set
> # CONFIG_SERIAL_UARTLITE is not set
> CONFIG_SERIAL_CORE=3Dy
> CONFIG_SERIAL_CORE_CONSOLE=3Dy
> CONFIG_SERIAL_JSM=3Dm
> # CONFIG_SERIAL_LANTIQ is not set
> # CONFIG_SERIAL_SCCNXP is not set
> # CONFIG_SERIAL_SC16IS7XX is not set
> # CONFIG_SERIAL_ALTERA_JTAGUART is not set
> # CONFIG_SERIAL_ALTERA_UART is not set
> # CONFIG_SERIAL_ARC is not set
> CONFIG_SERIAL_RP2=3Dm
> CONFIG_SERIAL_RP2_NR_UARTS=3D32
> # CONFIG_SERIAL_FSL_LPUART is not set
> # CONFIG_SERIAL_FSL_LINFLEXUART is not set
> # CONFIG_SERIAL_SPRD is not set
> # end of Serial drivers
>=20
> CONFIG_SERIAL_MCTRL_GPIO=3Dy
> CONFIG_SERIAL_NONSTANDARD=3Dy
> CONFIG_MOXA_INTELLIO=3Dm
> CONFIG_MOXA_SMARTIO=3Dm
> CONFIG_SYNCLINK_GT=3Dm
> CONFIG_N_HDLC=3Dm
> # CONFIG_N_GSM is not set
> CONFIG_NOZOMI=3Dm
> # CONFIG_NULL_TTY is not set
> CONFIG_HVC_DRIVER=3Dy
> CONFIG_HVC_IRQ=3Dy
> CONFIG_HVC_XEN=3Dy
> CONFIG_HVC_XEN_FRONTEND=3Dy
> CONFIG_SERIAL_DEV_BUS=3Dy
> CONFIG_SERIAL_DEV_CTRL_TTYPORT=3Dy
> CONFIG_TTY_PRINTK=3Dm
> CONFIG_TTY_PRINTK_LEVEL=3D6
> CONFIG_PRINTER=3Dm
> # CONFIG_LP_CONSOLE is not set
> CONFIG_PPDEV=3Dm
> CONFIG_VIRTIO_CONSOLE=3Dm
> CONFIG_IPMI_HANDLER=3Dm
> CONFIG_IPMI_DMI_DECODE=3Dy
> CONFIG_IPMI_PLAT_DATA=3Dy
> # CONFIG_IPMI_PANIC_EVENT is not set
> CONFIG_IPMI_DEVICE_INTERFACE=3Dm
> CONFIG_IPMI_SI=3Dm
> CONFIG_IPMI_SSIF=3Dm
> CONFIG_IPMI_WATCHDOG=3Dm
> CONFIG_IPMI_POWEROFF=3Dm
> CONFIG_HW_RANDOM=3Dy
> # CONFIG_HW_RANDOM_TIMERIOMEM is not set
> CONFIG_HW_RANDOM_INTEL=3Dm
> CONFIG_HW_RANDOM_AMD=3Dm
> # CONFIG_HW_RANDOM_BA431 is not set
> CONFIG_HW_RANDOM_VIA=3Dm
> CONFIG_HW_RANDOM_VIRTIO=3Dm
> # CONFIG_HW_RANDOM_XIPHERA is not set
> CONFIG_APPLICOM=3Dm
>=20
> #
> # PCMCIA character devices
> #
> CONFIG_SYNCLINK_CS=3Dm
> CONFIG_CARDMAN_4000=3Dm
> CONFIG_CARDMAN_4040=3Dm
> CONFIG_SCR24X=3Dm
> CONFIG_IPWIRELESS=3Dm
> # end of PCMCIA character devices
>=20
> CONFIG_MWAVE=3Dm
> CONFIG_DEVMEM=3Dy
> CONFIG_NVRAM=3Dm
> CONFIG_DEVPORT=3Dy
> CONFIG_HPET=3Dy
> CONFIG_HPET_MMAP=3Dy
> CONFIG_HPET_MMAP_DEFAULT=3Dy
> CONFIG_HANGCHECK_TIMER=3Dm
> CONFIG_TCG_TPM=3Dy
> CONFIG_HW_RANDOM_TPM=3Dy
> CONFIG_TCG_TIS_CORE=3Dy
> CONFIG_TCG_TIS=3Dy
> CONFIG_TCG_TIS_SPI=3Dm
> CONFIG_TCG_TIS_SPI_CR50=3Dy
> # CONFIG_TCG_TIS_I2C is not set
> CONFIG_TCG_TIS_I2C_CR50=3Dm
> CONFIG_TCG_TIS_I2C_ATMEL=3Dm
> CONFIG_TCG_TIS_I2C_INFINEON=3Dm
> CONFIG_TCG_TIS_I2C_NUVOTON=3Dm
> CONFIG_TCG_NSC=3Dm
> CONFIG_TCG_ATMEL=3Dm
> CONFIG_TCG_INFINEON=3Dm
> CONFIG_TCG_XEN=3Dm
> CONFIG_TCG_CRB=3Dy
> CONFIG_TCG_VTPM_PROXY=3Dm
> CONFIG_TCG_TIS_ST33ZP24=3Dm
> CONFIG_TCG_TIS_ST33ZP24_I2C=3Dm
> # CONFIG_TCG_TIS_ST33ZP24_SPI is not set
> CONFIG_TELCLOCK=3Dm
> # CONFIG_XILLYBUS is not set
> # CONFIG_XILLYUSB is not set
> CONFIG_RANDOM_TRUST_CPU=3Dy
> CONFIG_RANDOM_TRUST_BOOTLOADER=3Dy
> # end of Character devices
>=20
> #
> # I2C support
> #
> CONFIG_I2C=3Dy
> CONFIG_ACPI_I2C_OPREGION=3Dy
> CONFIG_I2C_BOARDINFO=3Dy
> CONFIG_I2C_COMPAT=3Dy
> CONFIG_I2C_CHARDEV=3Dm
> CONFIG_I2C_MUX=3Dm
>=20
> #
> # Multiplexer I2C Chip support
> #
> # CONFIG_I2C_MUX_GPIO is not set
> # CONFIG_I2C_MUX_LTC4306 is not set
> # CONFIG_I2C_MUX_PCA9541 is not set
> # CONFIG_I2C_MUX_PCA954x is not set
> # CONFIG_I2C_MUX_REG is not set
> # CONFIG_I2C_MUX_MLXCPLD is not set
> # end of Multiplexer I2C Chip support
>=20
> CONFIG_I2C_HELPER_AUTO=3Dy
> CONFIG_I2C_SMBUS=3Dm
> CONFIG_I2C_ALGOBIT=3Dm
> CONFIG_I2C_ALGOPCA=3Dm
>=20
> #
> # I2C Hardware Bus support
> #
>=20
> #
> # PC SMBus host controller drivers
> #
> CONFIG_I2C_CCGX_UCSI=3Dm
> CONFIG_I2C_ALI1535=3Dm
> CONFIG_I2C_ALI1563=3Dm
> CONFIG_I2C_ALI15X3=3Dm
> CONFIG_I2C_AMD756=3Dm
> CONFIG_I2C_AMD756_S4882=3Dm
> CONFIG_I2C_AMD8111=3Dm
> CONFIG_I2C_AMD_MP2=3Dm
> CONFIG_I2C_I801=3Dm
> CONFIG_I2C_ISCH=3Dm
> CONFIG_I2C_ISMT=3Dm
> CONFIG_I2C_PIIX4=3Dm
> CONFIG_I2C_CHT_WC=3Dm
> CONFIG_I2C_NFORCE2=3Dm
> CONFIG_I2C_NFORCE2_S4985=3Dm
> # CONFIG_I2C_NVIDIA_GPU is not set
> CONFIG_I2C_SIS5595=3Dm
> CONFIG_I2C_SIS630=3Dm
> CONFIG_I2C_SIS96X=3Dm
> CONFIG_I2C_VIA=3Dm
> CONFIG_I2C_VIAPRO=3Dm
>=20
> #
> # ACPI drivers
> #
> CONFIG_I2C_SCMI=3Dm
>=20
> #
> # I2C system bus drivers (mostly embedded / system-on-chip)
> #
> # CONFIG_I2C_CBUS_GPIO is not set
> CONFIG_I2C_DESIGNWARE_CORE=3Dy
> # CONFIG_I2C_DESIGNWARE_SLAVE is not set
> CONFIG_I2C_DESIGNWARE_PLATFORM=3Dy
> # CONFIG_I2C_DESIGNWARE_AMDPSP is not set
> CONFIG_I2C_DESIGNWARE_BAYTRAIL=3Dy
> CONFIG_I2C_DESIGNWARE_PCI=3Dm
> # CONFIG_I2C_EMEV2 is not set
> # CONFIG_I2C_GPIO is not set
> CONFIG_I2C_KEMPLD=3Dm
> CONFIG_I2C_OCORES=3Dm
> CONFIG_I2C_PCA_PLATFORM=3Dm
> CONFIG_I2C_SIMTEC=3Dm
> # CONFIG_I2C_XILINX is not set
>=20
> #
> # External I2C/SMBus adapter drivers
> #
> CONFIG_I2C_DIOLAN_U2C=3Dm
> # CONFIG_I2C_CP2615 is not set
> CONFIG_I2C_PARPORT=3Dm
> # CONFIG_I2C_PCI1XXXX is not set
> CONFIG_I2C_ROBOTFUZZ_OSIF=3Dm
> CONFIG_I2C_TAOS_EVM=3Dm
> CONFIG_I2C_TINY_USB=3Dm
> CONFIG_I2C_VIPERBOARD=3Dm
>=20
> #
> # Other I2C/SMBus bus drivers
> #
> # CONFIG_I2C_MLXCPLD is not set
> # CONFIG_I2C_CROS_EC_TUNNEL is not set
> # CONFIG_I2C_VIRTIO is not set
> # end of I2C Hardware Bus support
>=20
> CONFIG_I2C_STUB=3Dm
> # CONFIG_I2C_SLAVE is not set
> # CONFIG_I2C_DEBUG_CORE is not set
> # CONFIG_I2C_DEBUG_ALGO is not set
> # CONFIG_I2C_DEBUG_BUS is not set
> # end of I2C support
>=20
> # CONFIG_I3C is not set
> CONFIG_SPI=3Dy
> # CONFIG_SPI_DEBUG is not set
> CONFIG_SPI_MASTER=3Dy
> CONFIG_SPI_MEM=3Dy
>=20
> #
> # SPI Master Controller Drivers
> #
> # CONFIG_SPI_ALTERA is not set
> # CONFIG_SPI_AXI_SPI_ENGINE is not set
> CONFIG_SPI_BITBANG=3Dm
> CONFIG_SPI_BUTTERFLY=3Dm
> # CONFIG_SPI_CADENCE is not set
> # CONFIG_SPI_DESIGNWARE is not set
> # CONFIG_SPI_NXP_FLEXSPI is not set
> # CONFIG_SPI_GPIO is not set
> # CONFIG_SPI_INTEL_PCI is not set
> # CONFIG_SPI_INTEL_PLATFORM is not set
> CONFIG_SPI_LM70_LLP=3Dm
> # CONFIG_SPI_MICROCHIP_CORE is not set
> # CONFIG_SPI_MICROCHIP_CORE_QSPI is not set
> # CONFIG_SPI_LANTIQ_SSC is not set
> # CONFIG_SPI_OC_TINY is not set
> CONFIG_SPI_PXA2XX=3Dm
> CONFIG_SPI_PXA2XX_PCI=3Dm
> # CONFIG_SPI_ROCKCHIP is not set
> # CONFIG_SPI_SC18IS602 is not set
> # CONFIG_SPI_SIFIVE is not set
> # CONFIG_SPI_MXIC is not set
> # CONFIG_SPI_XCOMM is not set
> # CONFIG_SPI_XILINX is not set
> # CONFIG_SPI_ZYNQMP_GQSPI is not set
> # CONFIG_SPI_AMD is not set
>=20
> #
> # SPI Multiplexer support
> #
> # CONFIG_SPI_MUX is not set
>=20
> #
> # SPI Protocol Masters
> #
> CONFIG_SPI_SPIDEV=3Dy
> # CONFIG_SPI_LOOPBACK_TEST is not set
> # CONFIG_SPI_TLE62X0 is not set
> # CONFIG_SPI_SLAVE is not set
> CONFIG_SPI_DYNAMIC=3Dy
> # CONFIG_SPMI is not set
> # CONFIG_HSI is not set
> CONFIG_PPS=3Dy
> # CONFIG_PPS_DEBUG is not set
>=20
> #
> # PPS clients support
> #
> # CONFIG_PPS_CLIENT_KTIMER is not set
> CONFIG_PPS_CLIENT_LDISC=3Dm
> CONFIG_PPS_CLIENT_PARPORT=3Dm
> # CONFIG_PPS_CLIENT_GPIO is not set
>=20
> #
> # PPS generators support
> #
>=20
> #
> # PTP clock support
> #
> CONFIG_PTP_1588_CLOCK=3Dy
> CONFIG_PTP_1588_CLOCK_OPTIONAL=3Dy
> CONFIG_DP83640_PHY=3Dm
> CONFIG_PTP_1588_CLOCK_INES=3Dm
> CONFIG_PTP_1588_CLOCK_KVM=3Dm
> CONFIG_PTP_1588_CLOCK_IDT82P33=3Dm
> CONFIG_PTP_1588_CLOCK_IDTCM=3Dm
> CONFIG_PTP_1588_CLOCK_VMW=3Dm
> CONFIG_PTP_1588_CLOCK_OCP=3Dm
> # end of PTP clock support
>=20
> CONFIG_PINCTRL=3Dy
> CONFIG_PINMUX=3Dy
> CONFIG_PINCONF=3Dy
> CONFIG_GENERIC_PINCONF=3Dy
> # CONFIG_DEBUG_PINCTRL is not set
> CONFIG_PINCTRL_AMD=3Dy
> # CONFIG_PINCTRL_CY8C95X0 is not set
> # CONFIG_PINCTRL_MCP23S08 is not set
> # CONFIG_PINCTRL_SX150X is not set
>=20
> #
> # Intel pinctrl drivers
> #
> CONFIG_PINCTRL_BAYTRAIL=3Dy
> CONFIG_PINCTRL_CHERRYVIEW=3Dy
> # CONFIG_PINCTRL_LYNXPOINT is not set
> CONFIG_PINCTRL_INTEL=3Dy
> CONFIG_PINCTRL_ALDERLAKE=3Dm
> CONFIG_PINCTRL_BROXTON=3Dy
> CONFIG_PINCTRL_CANNONLAKE=3Dy
> CONFIG_PINCTRL_CEDARFORK=3Dy
> CONFIG_PINCTRL_DENVERTON=3Dy
> CONFIG_PINCTRL_ELKHARTLAKE=3Dm
> CONFIG_PINCTRL_EMMITSBURG=3Dm
> CONFIG_PINCTRL_GEMINILAKE=3Dy
> CONFIG_PINCTRL_ICELAKE=3Dy
> CONFIG_PINCTRL_JASPERLAKE=3Dm
> CONFIG_PINCTRL_LAKEFIELD=3Dm
> CONFIG_PINCTRL_LEWISBURG=3Dy
> # CONFIG_PINCTRL_METEORLAKE is not set
> CONFIG_PINCTRL_SUNRISEPOINT=3Dy
> CONFIG_PINCTRL_TIGERLAKE=3Dy
> # end of Intel pinctrl drivers
>=20
> #
> # Renesas pinctrl drivers
> #
> # end of Renesas pinctrl drivers
>=20
> CONFIG_GPIOLIB=3Dy
> CONFIG_GPIOLIB_FASTPATH_LIMIT=3D512
> CONFIG_GPIO_ACPI=3Dy
> CONFIG_GPIOLIB_IRQCHIP=3Dy
> # CONFIG_DEBUG_GPIO is not set
> CONFIG_GPIO_SYSFS=3Dy
> CONFIG_GPIO_CDEV=3Dy
> CONFIG_GPIO_CDEV_V1=3Dy
> CONFIG_GPIO_GENERIC=3Dm
>=20
> #
> # Memory mapped GPIO drivers
> #
> CONFIG_GPIO_AMDPT=3Dm
> # CONFIG_GPIO_DWAPB is not set
> CONFIG_GPIO_EXAR=3Dm
> # CONFIG_GPIO_GENERIC_PLATFORM is not set
> # CONFIG_GPIO_ICH is not set
> # CONFIG_GPIO_MB86S7X is not set
> # CONFIG_GPIO_VX855 is not set
> CONFIG_GPIO_AMD_FCH=3Dm
> # end of Memory mapped GPIO drivers
>=20
> #
> # Port-mapped I/O GPIO drivers
> #
> CONFIG_GPIO_F7188X=3Dm
> # CONFIG_GPIO_IT87 is not set
> # CONFIG_GPIO_SCH is not set
> # CONFIG_GPIO_SCH311X is not set
> # CONFIG_GPIO_WINBOND is not set
> # CONFIG_GPIO_WS16C48 is not set
> # end of Port-mapped I/O GPIO drivers
>=20
> #
> # I2C GPIO expanders
> #
> # CONFIG_GPIO_MAX7300 is not set
> # CONFIG_GPIO_MAX732X is not set
> # CONFIG_GPIO_PCA953X is not set
> # CONFIG_GPIO_PCA9570 is not set
> # CONFIG_GPIO_PCF857X is not set
> # CONFIG_GPIO_TPIC2810 is not set
> # end of I2C GPIO expanders
>=20
> #
> # MFD GPIO expanders
> #
> # CONFIG_GPIO_CRYSTAL_COVE is not set
> CONFIG_GPIO_KEMPLD=3Dm
> # CONFIG_GPIO_WHISKEY_COVE is not set
> # end of MFD GPIO expanders
>=20
> #
> # PCI GPIO expanders
> #
> # CONFIG_GPIO_AMD8111 is not set
> CONFIG_GPIO_ML_IOH=3Dm
> CONFIG_GPIO_PCI_IDIO_16=3Dm
> CONFIG_GPIO_PCIE_IDIO_24=3Dm
> # CONFIG_GPIO_RDC321X is not set
> # end of PCI GPIO expanders
>=20
> #
> # SPI GPIO expanders
> #
> # CONFIG_GPIO_MAX3191X is not set
> # CONFIG_GPIO_MAX7301 is not set
> # CONFIG_GPIO_MC33880 is not set
> # CONFIG_GPIO_PISOSR is not set
> # CONFIG_GPIO_XRA1403 is not set
> # end of SPI GPIO expanders
>=20
> #
> # USB GPIO expanders
> #
> CONFIG_GPIO_VIPERBOARD=3Dm
> # end of USB GPIO expanders
>=20
> #
> # Virtual GPIO drivers
> #
> # CONFIG_GPIO_AGGREGATOR is not set
> # CONFIG_GPIO_MOCKUP is not set
> # CONFIG_GPIO_VIRTIO is not set
> # CONFIG_GPIO_SIM is not set
> # end of Virtual GPIO drivers
>=20
> CONFIG_W1=3Dm
> CONFIG_W1_CON=3Dy
>=20
> #
> # 1-wire Bus Masters
> #
> # CONFIG_W1_MASTER_MATROX is not set
> CONFIG_W1_MASTER_DS2490=3Dm
> CONFIG_W1_MASTER_DS2482=3Dm
> # CONFIG_W1_MASTER_DS1WM is not set
> CONFIG_W1_MASTER_GPIO=3Dm
> # CONFIG_W1_MASTER_SGI is not set
> # end of 1-wire Bus Masters
>=20
> #
> # 1-wire Slaves
> #
> CONFIG_W1_SLAVE_THERM=3Dm
> CONFIG_W1_SLAVE_SMEM=3Dm
> CONFIG_W1_SLAVE_DS2405=3Dm
> CONFIG_W1_SLAVE_DS2408=3Dm
> CONFIG_W1_SLAVE_DS2408_READBACK=3Dy
> CONFIG_W1_SLAVE_DS2413=3Dm
> CONFIG_W1_SLAVE_DS2406=3Dm
> CONFIG_W1_SLAVE_DS2423=3Dm
> CONFIG_W1_SLAVE_DS2805=3Dm
> # CONFIG_W1_SLAVE_DS2430 is not set
> CONFIG_W1_SLAVE_DS2431=3Dm
> CONFIG_W1_SLAVE_DS2433=3Dm
> # CONFIG_W1_SLAVE_DS2433_CRC is not set
> CONFIG_W1_SLAVE_DS2438=3Dm
> # CONFIG_W1_SLAVE_DS250X is not set
> CONFIG_W1_SLAVE_DS2780=3Dm
> CONFIG_W1_SLAVE_DS2781=3Dm
> CONFIG_W1_SLAVE_DS28E04=3Dm
> CONFIG_W1_SLAVE_DS28E17=3Dm
> # end of 1-wire Slaves
>=20
> # CONFIG_POWER_RESET is not set
> CONFIG_POWER_SUPPLY=3Dy
> # CONFIG_POWER_SUPPLY_DEBUG is not set
> CONFIG_POWER_SUPPLY_HWMON=3Dy
> # CONFIG_PDA_POWER is not set
> # CONFIG_GENERIC_ADC_BATTERY is not set
> # CONFIG_IP5XXX_POWER is not set
> # CONFIG_TEST_POWER is not set
> # CONFIG_CHARGER_ADP5061 is not set
> # CONFIG_BATTERY_CW2015 is not set
> CONFIG_BATTERY_DS2760=3Dm
> # CONFIG_BATTERY_DS2780 is not set
> # CONFIG_BATTERY_DS2781 is not set
> # CONFIG_BATTERY_DS2782 is not set
> # CONFIG_BATTERY_SAMSUNG_SDI is not set
> CONFIG_BATTERY_SBS=3Dm
> # CONFIG_CHARGER_SBS is not set
> # CONFIG_MANAGER_SBS is not set
> CONFIG_BATTERY_BQ27XXX=3Dm
> # CONFIG_BATTERY_BQ27XXX_I2C is not set
> CONFIG_BATTERY_BQ27XXX_HDQ=3Dm
> # CONFIG_CHARGER_AXP20X is not set
> # CONFIG_BATTERY_AXP20X is not set
> # CONFIG_AXP20X_POWER is not set
> CONFIG_AXP288_CHARGER=3Dm
> CONFIG_AXP288_FUEL_GAUGE=3Dm
> # CONFIG_BATTERY_MAX17040 is not set
> CONFIG_BATTERY_MAX17042=3Dm
> # CONFIG_BATTERY_MAX1721X is not set
> # CONFIG_CHARGER_MAX8903 is not set
> # CONFIG_CHARGER_LP8727 is not set
> # CONFIG_CHARGER_GPIO is not set
> # CONFIG_CHARGER_MANAGER is not set
> # CONFIG_CHARGER_LT3651 is not set
> # CONFIG_CHARGER_LTC4162L is not set
> # CONFIG_CHARGER_MAX77976 is not set
> # CONFIG_CHARGER_BQ2415X is not set
> CONFIG_CHARGER_BQ24190=3Dm
> # CONFIG_CHARGER_BQ24257 is not set
> # CONFIG_CHARGER_BQ24735 is not set
> # CONFIG_CHARGER_BQ2515X is not set
> # CONFIG_CHARGER_BQ25890 is not set
> # CONFIG_CHARGER_BQ25980 is not set
> # CONFIG_CHARGER_BQ256XX is not set
> # CONFIG_CHARGER_SMB347 is not set
> # CONFIG_BATTERY_GAUGE_LTC2941 is not set
> # CONFIG_BATTERY_GOLDFISH is not set
> # CONFIG_BATTERY_RT5033 is not set
> # CONFIG_CHARGER_RT9455 is not set
> # CONFIG_CHARGER_CROS_USBPD is not set
> CONFIG_CHARGER_CROS_PCHG=3Dm
> # CONFIG_CHARGER_BD99954 is not set
> CONFIG_BATTERY_SURFACE=3Dm
> CONFIG_CHARGER_SURFACE=3Dm
> # CONFIG_BATTERY_UG3105 is not set
> CONFIG_HWMON=3Dy
> CONFIG_HWMON_VID=3Dm
> # CONFIG_HWMON_DEBUG_CHIP is not set
>=20
> #
> # Native drivers
> #
> CONFIG_SENSORS_ABITUGURU=3Dm
> CONFIG_SENSORS_ABITUGURU3=3Dm
> # CONFIG_SENSORS_AD7314 is not set
> CONFIG_SENSORS_AD7414=3Dm
> CONFIG_SENSORS_AD7418=3Dm
> CONFIG_SENSORS_ADM1025=3Dm
> CONFIG_SENSORS_ADM1026=3Dm
> CONFIG_SENSORS_ADM1029=3Dm
> CONFIG_SENSORS_ADM1031=3Dm
> # CONFIG_SENSORS_ADM1177 is not set
> CONFIG_SENSORS_ADM9240=3Dm
> # CONFIG_SENSORS_ADT7310 is not set
> # CONFIG_SENSORS_ADT7410 is not set
> CONFIG_SENSORS_ADT7411=3Dm
> CONFIG_SENSORS_ADT7462=3Dm
> CONFIG_SENSORS_ADT7470=3Dm
> CONFIG_SENSORS_ADT7475=3Dm
> # CONFIG_SENSORS_AHT10 is not set
> CONFIG_SENSORS_AQUACOMPUTER_D5NEXT=3Dm
> # CONFIG_SENSORS_AS370 is not set
> CONFIG_SENSORS_ASC7621=3Dm
> # CONFIG_SENSORS_AXI_FAN_CONTROL is not set
> CONFIG_SENSORS_K8TEMP=3Dm
> CONFIG_SENSORS_K10TEMP=3Dm
> CONFIG_SENSORS_FAM15H_POWER=3Dm
> CONFIG_SENSORS_APPLESMC=3Dm
> CONFIG_SENSORS_ASB100=3Dm
> CONFIG_SENSORS_ATXP1=3Dm
> CONFIG_SENSORS_CORSAIR_CPRO=3Dm
> CONFIG_SENSORS_CORSAIR_PSU=3Dm
> CONFIG_SENSORS_DRIVETEMP=3Dm
> CONFIG_SENSORS_DS620=3Dm
> CONFIG_SENSORS_DS1621=3Dm
> CONFIG_SENSORS_DELL_SMM=3Dm
> CONFIG_I8K=3Dy
> CONFIG_SENSORS_I5K_AMB=3Dm
> CONFIG_SENSORS_F71805F=3Dm
> CONFIG_SENSORS_F71882FG=3Dm
> CONFIG_SENSORS_F75375S=3Dm
> CONFIG_SENSORS_FSCHMD=3Dm
> CONFIG_SENSORS_FTSTEUTATES=3Dm
> CONFIG_SENSORS_GL518SM=3Dm
> CONFIG_SENSORS_GL520SM=3Dm
> CONFIG_SENSORS_G760A=3Dm
> # CONFIG_SENSORS_G762 is not set
> # CONFIG_SENSORS_HIH6130 is not set
> CONFIG_SENSORS_IBMAEM=3Dm
> CONFIG_SENSORS_IBMPEX=3Dm
> # CONFIG_SENSORS_IIO_HWMON is not set
> CONFIG_SENSORS_I5500=3Dm
> CONFIG_SENSORS_CORETEMP=3Dm
> CONFIG_SENSORS_IT87=3Dm
> CONFIG_SENSORS_JC42=3Dm
> # CONFIG_SENSORS_POWR1220 is not set
> CONFIG_SENSORS_LINEAGE=3Dm
> # CONFIG_SENSORS_LTC2945 is not set
> # CONFIG_SENSORS_LTC2947_I2C is not set
> # CONFIG_SENSORS_LTC2947_SPI is not set
> # CONFIG_SENSORS_LTC2990 is not set
> # CONFIG_SENSORS_LTC2992 is not set
> CONFIG_SENSORS_LTC4151=3Dm
> CONFIG_SENSORS_LTC4215=3Dm
> # CONFIG_SENSORS_LTC4222 is not set
> CONFIG_SENSORS_LTC4245=3Dm
> # CONFIG_SENSORS_LTC4260 is not set
> CONFIG_SENSORS_LTC4261=3Dm
> CONFIG_SENSORS_MAX1111=3Dm
> # CONFIG_SENSORS_MAX127 is not set
> CONFIG_SENSORS_MAX16065=3Dm
> CONFIG_SENSORS_MAX1619=3Dm
> CONFIG_SENSORS_MAX1668=3Dm
> # CONFIG_SENSORS_MAX197 is not set
> # CONFIG_SENSORS_MAX31722 is not set
> # CONFIG_SENSORS_MAX31730 is not set
> # CONFIG_SENSORS_MAX31760 is not set
> # CONFIG_SENSORS_MAX6620 is not set
> # CONFIG_SENSORS_MAX6621 is not set
> CONFIG_SENSORS_MAX6639=3Dm
> CONFIG_SENSORS_MAX6650=3Dm
> # CONFIG_SENSORS_MAX6697 is not set
> # CONFIG_SENSORS_MAX31790 is not set
> # CONFIG_SENSORS_MCP3021 is not set
> # CONFIG_SENSORS_TC654 is not set
> # CONFIG_SENSORS_TPS23861 is not set
> CONFIG_SENSORS_MENF21BMC_HWMON=3Dm
> # CONFIG_SENSORS_MR75203 is not set
> CONFIG_SENSORS_ADCXX=3Dm
> CONFIG_SENSORS_LM63=3Dm
> CONFIG_SENSORS_LM70=3Dm
> CONFIG_SENSORS_LM73=3Dm
> CONFIG_SENSORS_LM75=3Dm
> CONFIG_SENSORS_LM77=3Dm
> CONFIG_SENSORS_LM78=3Dm
> CONFIG_SENSORS_LM80=3Dm
> CONFIG_SENSORS_LM83=3Dm
> CONFIG_SENSORS_LM85=3Dm
> CONFIG_SENSORS_LM87=3Dm
> CONFIG_SENSORS_LM90=3Dm
> CONFIG_SENSORS_LM92=3Dm
> CONFIG_SENSORS_LM93=3Dm
> # CONFIG_SENSORS_LM95234 is not set
> CONFIG_SENSORS_LM95241=3Dm
> CONFIG_SENSORS_LM95245=3Dm
> CONFIG_SENSORS_PC87360=3Dm
> CONFIG_SENSORS_PC87427=3Dm
> CONFIG_SENSORS_NTC_THERMISTOR=3Dm
> CONFIG_SENSORS_NCT6683=3Dm
> CONFIG_SENSORS_NCT6775_CORE=3Dm
> CONFIG_SENSORS_NCT6775=3Dm
> # CONFIG_SENSORS_NCT6775_I2C is not set
> CONFIG_SENSORS_NCT7802=3Dm
> CONFIG_SENSORS_NCT7904=3Dm
> CONFIG_SENSORS_NPCM7XX=3Dm
> # CONFIG_SENSORS_NZXT_KRAKEN2 is not set
> # CONFIG_SENSORS_NZXT_SMART2 is not set
> CONFIG_SENSORS_PCF8591=3Dm
> # CONFIG_PMBUS is not set
> # CONFIG_SENSORS_SBTSI is not set
> # CONFIG_SENSORS_SBRMI is not set
> # CONFIG_SENSORS_SHT15 is not set
> CONFIG_SENSORS_SHT21=3Dm
> CONFIG_SENSORS_SHT3x=3Dm
> CONFIG_SENSORS_SHT4x=3Dm
> # CONFIG_SENSORS_SHTC1 is not set
> CONFIG_SENSORS_SIS5595=3Dm
> CONFIG_SENSORS_DME1737=3Dm
> CONFIG_SENSORS_EMC1403=3Dm
> CONFIG_SENSORS_EMC2103=3Dm
> # CONFIG_SENSORS_EMC2305 is not set
> CONFIG_SENSORS_EMC6W201=3Dm
> CONFIG_SENSORS_SMSC47M1=3Dm
> CONFIG_SENSORS_SMSC47M192=3Dm
> CONFIG_SENSORS_SMSC47B397=3Dm
> CONFIG_SENSORS_SCH56XX_COMMON=3Dm
> CONFIG_SENSORS_SCH5627=3Dm
> CONFIG_SENSORS_SCH5636=3Dm
> # CONFIG_SENSORS_STTS751 is not set
> CONFIG_SENSORS_SMM665=3Dm
> # CONFIG_SENSORS_ADC128D818 is not set
> CONFIG_SENSORS_ADS7828=3Dm
> CONFIG_SENSORS_ADS7871=3Dm
> CONFIG_SENSORS_AMC6821=3Dm
> # CONFIG_SENSORS_INA209 is not set
> # CONFIG_SENSORS_INA2XX is not set
> # CONFIG_SENSORS_INA238 is not set
> # CONFIG_SENSORS_INA3221 is not set
> # CONFIG_SENSORS_TC74 is not set
> CONFIG_SENSORS_THMC50=3Dm
> CONFIG_SENSORS_TMP102=3Dm
> # CONFIG_SENSORS_TMP103 is not set
> # CONFIG_SENSORS_TMP108 is not set
> CONFIG_SENSORS_TMP401=3Dm
> CONFIG_SENSORS_TMP421=3Dm
> # CONFIG_SENSORS_TMP464 is not set
> # CONFIG_SENSORS_TMP513 is not set
> CONFIG_SENSORS_VIA_CPUTEMP=3Dm
> CONFIG_SENSORS_VIA686A=3Dm
> CONFIG_SENSORS_VT1211=3Dm
> CONFIG_SENSORS_VT8231=3Dm
> CONFIG_SENSORS_W83773G=3Dm
> CONFIG_SENSORS_W83781D=3Dm
> CONFIG_SENSORS_W83791D=3Dm
> CONFIG_SENSORS_W83792D=3Dm
> CONFIG_SENSORS_W83793=3Dm
> CONFIG_SENSORS_W83795=3Dm
> # CONFIG_SENSORS_W83795_FANCTRL is not set
> CONFIG_SENSORS_W83L785TS=3Dm
> CONFIG_SENSORS_W83L786NG=3Dm
> CONFIG_SENSORS_W83627HF=3Dm
> CONFIG_SENSORS_W83627EHF=3Dm
> # CONFIG_SENSORS_XGENE is not set
>=20
> #
> # ACPI drivers
> #
> CONFIG_SENSORS_ACPI_POWER=3Dm
> CONFIG_SENSORS_ATK0110=3Dm
> CONFIG_SENSORS_ASUS_WMI=3Dm
> CONFIG_SENSORS_ASUS_EC=3Dm
> CONFIG_THERMAL=3Dy
> CONFIG_THERMAL_NETLINK=3Dy
> CONFIG_THERMAL_STATISTICS=3Dy
> CONFIG_THERMAL_EMERGENCY_POWEROFF_DELAY_MS=3D0
> CONFIG_THERMAL_HWMON=3Dy
> CONFIG_THERMAL_WRITABLE_TRIPS=3Dy
> CONFIG_THERMAL_DEFAULT_GOV_STEP_WISE=3Dy
> # CONFIG_THERMAL_DEFAULT_GOV_FAIR_SHARE is not set
> # CONFIG_THERMAL_DEFAULT_GOV_USER_SPACE is not set
> # CONFIG_THERMAL_DEFAULT_GOV_POWER_ALLOCATOR is not set
> CONFIG_THERMAL_GOV_FAIR_SHARE=3Dy
> CONFIG_THERMAL_GOV_STEP_WISE=3Dy
> CONFIG_THERMAL_GOV_BANG_BANG=3Dy
> CONFIG_THERMAL_GOV_USER_SPACE=3Dy
> CONFIG_THERMAL_GOV_POWER_ALLOCATOR=3Dy
> CONFIG_DEVFREQ_THERMAL=3Dy
> # CONFIG_THERMAL_EMULATION is not set
>=20
> #
> # Intel thermal drivers
> #
> CONFIG_INTEL_POWERCLAMP=3Dm
> CONFIG_X86_THERMAL_VECTOR=3Dy
> CONFIG_X86_PKG_TEMP_THERMAL=3Dm
> CONFIG_INTEL_SOC_DTS_IOSF_CORE=3Dm
> CONFIG_INTEL_SOC_DTS_THERMAL=3Dm
>=20
> #
> # ACPI INT340X thermal drivers
> #
> CONFIG_INT340X_THERMAL=3Dm
> CONFIG_ACPI_THERMAL_REL=3Dm
> CONFIG_INT3406_THERMAL=3Dm
> CONFIG_PROC_THERMAL_MMIO_RAPL=3Dm
> # end of ACPI INT340X thermal drivers
>=20
> # CONFIG_INTEL_BXT_PMIC_THERMAL is not set
> CONFIG_INTEL_PCH_THERMAL=3Dm
> # CONFIG_INTEL_TCC_COOLING is not set
> # CONFIG_INTEL_MENLOW is not set
> CONFIG_INTEL_HFI_THERMAL=3Dy
> # end of Intel thermal drivers
>=20
> # CONFIG_GENERIC_ADC_THERMAL is not set
> CONFIG_WATCHDOG=3Dy
> CONFIG_WATCHDOG_CORE=3Dm
> # CONFIG_WATCHDOG_NOWAYOUT is not set
> CONFIG_WATCHDOG_HANDLE_BOOT_ENABLED=3Dy
> CONFIG_WATCHDOG_OPEN_TIMEOUT=3D0
> CONFIG_WATCHDOG_SYSFS=3Dy
> CONFIG_WATCHDOG_HRTIMER_PRETIMEOUT=3Dy
>=20
> #
> # Watchdog Pretimeout Governors
> #
> CONFIG_WATCHDOG_PRETIMEOUT_GOV=3Dy
> CONFIG_WATCHDOG_PRETIMEOUT_GOV_SEL=3Dm
> CONFIG_WATCHDOG_PRETIMEOUT_GOV_NOOP=3Dm
> CONFIG_WATCHDOG_PRETIMEOUT_GOV_PANIC=3Dm
> CONFIG_WATCHDOG_PRETIMEOUT_DEFAULT_GOV_NOOP=3Dy
> # CONFIG_WATCHDOG_PRETIMEOUT_DEFAULT_GOV_PANIC is not set
>=20
> #
> # Watchdog Device Drivers
> #
> CONFIG_SOFT_WATCHDOG=3Dm
> # CONFIG_SOFT_WATCHDOG_PRETIMEOUT is not set
> CONFIG_MENF21BMC_WATCHDOG=3Dm
> CONFIG_WDAT_WDT=3Dm
> # CONFIG_XILINX_WATCHDOG is not set
> # CONFIG_ZIIRAVE_WATCHDOG is not set
> # CONFIG_CADENCE_WATCHDOG is not set
> # CONFIG_DW_WATCHDOG is not set
> # CONFIG_MAX63XX_WATCHDOG is not set
> CONFIG_ACQUIRE_WDT=3Dm
> CONFIG_ADVANTECH_WDT=3Dm
> CONFIG_ALIM1535_WDT=3Dm
> CONFIG_ALIM7101_WDT=3Dm
> # CONFIG_EBC_C384_WDT is not set
> # CONFIG_EXAR_WDT is not set
> CONFIG_F71808E_WDT=3Dm
> CONFIG_SP5100_TCO=3Dm
> CONFIG_SBC_FITPC2_WATCHDOG=3Dm
> CONFIG_EUROTECH_WDT=3Dm
> CONFIG_IB700_WDT=3Dm
> CONFIG_IBMASR=3Dm
> CONFIG_WAFER_WDT=3Dm
> CONFIG_I6300ESB_WDT=3Dm
> CONFIG_IE6XX_WDT=3Dm
> CONFIG_ITCO_WDT=3Dm
> CONFIG_ITCO_VENDOR_SUPPORT=3Dy
> CONFIG_IT8712F_WDT=3Dm
> CONFIG_IT87_WDT=3Dm
> CONFIG_HP_WATCHDOG=3Dm
> CONFIG_HPWDT_NMI_DECODING=3Dy
> CONFIG_KEMPLD_WDT=3Dm
> CONFIG_SC1200_WDT=3Dm
> CONFIG_PC87413_WDT=3Dm
> CONFIG_NV_TCO=3Dm
> CONFIG_60XX_WDT=3Dm
> CONFIG_CPU5_WDT=3Dm
> CONFIG_SMSC_SCH311X_WDT=3Dm
> CONFIG_SMSC37B787_WDT=3Dm
> # CONFIG_TQMX86_WDT is not set
> CONFIG_VIA_WDT=3Dm
> CONFIG_W83627HF_WDT=3Dm
> CONFIG_W83877F_WDT=3Dm
> CONFIG_W83977F_WDT=3Dm
> CONFIG_MACHZ_WDT=3Dm
> CONFIG_SBC_EPX_C3_WATCHDOG=3Dm
> CONFIG_INTEL_MEI_WDT=3Dm
> CONFIG_NI903X_WDT=3Dm
> CONFIG_NIC7018_WDT=3Dm
> CONFIG_SIEMENS_SIMATIC_IPC_WDT=3Dm
> # CONFIG_MEN_A21_WDT is not set
> CONFIG_XEN_WDT=3Dm
>=20
> #
> # PCI-based Watchdog Cards
> #
> CONFIG_PCIPCWATCHDOG=3Dm
> CONFIG_WDTPCI=3Dm
>=20
> #
> # USB-based Watchdog Cards
> #
> CONFIG_USBPCWATCHDOG=3Dm
> CONFIG_SSB_POSSIBLE=3Dy
> CONFIG_SSB=3Dm
> CONFIG_SSB_SPROM=3Dy
> CONFIG_SSB_BLOCKIO=3Dy
> CONFIG_SSB_PCIHOST_POSSIBLE=3Dy
> CONFIG_SSB_PCIHOST=3Dy
> CONFIG_SSB_B43_PCI_BRIDGE=3Dy
> CONFIG_SSB_PCMCIAHOST_POSSIBLE=3Dy
> CONFIG_SSB_PCMCIAHOST=3Dy
> CONFIG_SSB_SDIOHOST_POSSIBLE=3Dy
> CONFIG_SSB_SDIOHOST=3Dy
> CONFIG_SSB_DRIVER_PCICORE_POSSIBLE=3Dy
> CONFIG_SSB_DRIVER_PCICORE=3Dy
> # CONFIG_SSB_DRIVER_GPIO is not set
> CONFIG_BCMA_POSSIBLE=3Dy
> CONFIG_BCMA=3Dm
> CONFIG_BCMA_BLOCKIO=3Dy
> CONFIG_BCMA_HOST_PCI_POSSIBLE=3Dy
> CONFIG_BCMA_HOST_PCI=3Dy
> # CONFIG_BCMA_HOST_SOC is not set
> CONFIG_BCMA_DRIVER_PCI=3Dy
> # CONFIG_BCMA_DRIVER_GMAC_CMN is not set
> # CONFIG_BCMA_DRIVER_GPIO is not set
> # CONFIG_BCMA_DEBUG is not set
>=20
> #
> # Multifunction device drivers
> #
> CONFIG_MFD_CORE=3Dy
> # CONFIG_MFD_AS3711 is not set
> # CONFIG_PMIC_ADP5520 is not set
> # CONFIG_MFD_AAT2870_CORE is not set
> # CONFIG_MFD_BCM590XX is not set
> # CONFIG_MFD_BD9571MWV is not set
> CONFIG_MFD_AXP20X=3Dm
> CONFIG_MFD_AXP20X_I2C=3Dm
> CONFIG_MFD_CROS_EC_DEV=3Dm
> # CONFIG_MFD_MADERA is not set
> # CONFIG_PMIC_DA903X is not set
> # CONFIG_MFD_DA9052_SPI is not set
> # CONFIG_MFD_DA9052_I2C is not set
> # CONFIG_MFD_DA9055 is not set
> # CONFIG_MFD_DA9062 is not set
> # CONFIG_MFD_DA9063 is not set
> # CONFIG_MFD_DA9150 is not set
> # CONFIG_MFD_DLN2 is not set
> # CONFIG_MFD_MC13XXX_SPI is not set
> # CONFIG_MFD_MC13XXX_I2C is not set
> # CONFIG_MFD_MP2629 is not set
> # CONFIG_HTC_PASIC3 is not set
> # CONFIG_HTC_I2CPLD is not set
> # CONFIG_MFD_INTEL_QUARK_I2C_GPIO is not set
> CONFIG_LPC_ICH=3Dm
> CONFIG_LPC_SCH=3Dm
> CONFIG_INTEL_SOC_PMIC=3Dy
> CONFIG_INTEL_SOC_PMIC_BXTWC=3Dm
> CONFIG_INTEL_SOC_PMIC_CHTWC=3Dy
> CONFIG_INTEL_SOC_PMIC_CHTDC_TI=3Dm
> CONFIG_MFD_INTEL_LPSS=3Dm
> CONFIG_MFD_INTEL_LPSS_ACPI=3Dm
> CONFIG_MFD_INTEL_LPSS_PCI=3Dm
> CONFIG_MFD_INTEL_PMC_BXT=3Dm
> # CONFIG_MFD_IQS62X is not set
> # CONFIG_MFD_JANZ_CMODIO is not set
> CONFIG_MFD_KEMPLD=3Dm
> # CONFIG_MFD_88PM800 is not set
> # CONFIG_MFD_88PM805 is not set
> # CONFIG_MFD_88PM860X is not set
> # CONFIG_MFD_MAX14577 is not set
> # CONFIG_MFD_MAX77693 is not set
> # CONFIG_MFD_MAX77843 is not set
> # CONFIG_MFD_MAX8907 is not set
> # CONFIG_MFD_MAX8925 is not set
> # CONFIG_MFD_MAX8997 is not set
> # CONFIG_MFD_MAX8998 is not set
> # CONFIG_MFD_MT6360 is not set
> # CONFIG_MFD_MT6370 is not set
> # CONFIG_MFD_MT6397 is not set
> CONFIG_MFD_MENF21BMC=3Dm
> # CONFIG_MFD_OCELOT is not set
> # CONFIG_EZX_PCAP is not set
> CONFIG_MFD_VIPERBOARD=3Dm
> # CONFIG_MFD_RETU is not set
> # CONFIG_MFD_PCF50633 is not set
> # CONFIG_UCB1400_CORE is not set
> # CONFIG_MFD_SY7636A is not set
> # CONFIG_MFD_RDC321X is not set
> # CONFIG_MFD_RT4831 is not set
> # CONFIG_MFD_RT5033 is not set
> # CONFIG_MFD_RT5120 is not set
> # CONFIG_MFD_RC5T583 is not set
> # CONFIG_MFD_SI476X_CORE is not set
> # CONFIG_MFD_SM501 is not set
> # CONFIG_MFD_SKY81452 is not set
> CONFIG_MFD_SYSCON=3Dy
> # CONFIG_MFD_LP3943 is not set
> # CONFIG_MFD_LP8788 is not set
> # CONFIG_MFD_TI_LMU is not set
> # CONFIG_MFD_PALMAS is not set
> # CONFIG_TPS6105X is not set
> # CONFIG_TPS65010 is not set
> # CONFIG_TPS6507X is not set
> # CONFIG_MFD_TPS65086 is not set
> # CONFIG_MFD_TPS65090 is not set
> # CONFIG_MFD_TI_LP873X is not set
> # CONFIG_MFD_TPS6586X is not set
> # CONFIG_MFD_TPS65910 is not set
> # CONFIG_MFD_TPS65912_I2C is not set
> # CONFIG_MFD_TPS65912_SPI is not set
> # CONFIG_TWL4030_CORE is not set
> # CONFIG_TWL6040_CORE is not set
> # CONFIG_MFD_WL1273_CORE is not set
> # CONFIG_MFD_LM3533 is not set
> # CONFIG_MFD_TQMX86 is not set
> # CONFIG_MFD_VX855 is not set
> # CONFIG_MFD_ARIZONA_I2C is not set
> # CONFIG_MFD_ARIZONA_SPI is not set
> # CONFIG_MFD_WM8400 is not set
> # CONFIG_MFD_WM831X_I2C is not set
> # CONFIG_MFD_WM831X_SPI is not set
> # CONFIG_MFD_WM8350_I2C is not set
> # CONFIG_MFD_WM8994 is not set
> # CONFIG_MFD_WCD934X is not set
> # CONFIG_MFD_ATC260X_I2C is not set
> # CONFIG_RAVE_SP_CORE is not set
> # CONFIG_MFD_INTEL_M10_BMC is not set
> # end of Multifunction device drivers
>=20
> CONFIG_REGULATOR=3Dy
> # CONFIG_REGULATOR_DEBUG is not set
> # CONFIG_REGULATOR_FIXED_VOLTAGE is not set
> # CONFIG_REGULATOR_VIRTUAL_CONSUMER is not set
> # CONFIG_REGULATOR_USERSPACE_CONSUMER is not set
> # CONFIG_REGULATOR_88PG86X is not set
> # CONFIG_REGULATOR_ACT8865 is not set
> # CONFIG_REGULATOR_AD5398 is not set
> # CONFIG_REGULATOR_AXP20X is not set
> # CONFIG_REGULATOR_DA9210 is not set
> # CONFIG_REGULATOR_DA9211 is not set
> # CONFIG_REGULATOR_FAN53555 is not set
> # CONFIG_REGULATOR_GPIO is not set
> # CONFIG_REGULATOR_ISL9305 is not set
> # CONFIG_REGULATOR_ISL6271A is not set
> # CONFIG_REGULATOR_LP3971 is not set
> # CONFIG_REGULATOR_LP3972 is not set
> # CONFIG_REGULATOR_LP872X is not set
> # CONFIG_REGULATOR_LP8755 is not set
> # CONFIG_REGULATOR_LTC3589 is not set
> # CONFIG_REGULATOR_LTC3676 is not set
> # CONFIG_REGULATOR_MAX1586 is not set
> # CONFIG_REGULATOR_MAX8649 is not set
> # CONFIG_REGULATOR_MAX8660 is not set
> # CONFIG_REGULATOR_MAX8893 is not set
> # CONFIG_REGULATOR_MAX8952 is not set
> # CONFIG_REGULATOR_MAX20086 is not set
> # CONFIG_REGULATOR_MAX77826 is not set
> # CONFIG_REGULATOR_MP8859 is not set
> # CONFIG_REGULATOR_MT6311 is not set
> # CONFIG_REGULATOR_PCA9450 is not set
> # CONFIG_REGULATOR_PV88060 is not set
> # CONFIG_REGULATOR_PV88080 is not set
> # CONFIG_REGULATOR_PV88090 is not set
> # CONFIG_REGULATOR_PWM is not set
> # CONFIG_REGULATOR_RT4801 is not set
> # CONFIG_REGULATOR_RT5190A is not set
> # CONFIG_REGULATOR_RT5759 is not set
> # CONFIG_REGULATOR_RT6160 is not set
> # CONFIG_REGULATOR_RT6245 is not set
> # CONFIG_REGULATOR_RTQ2134 is not set
> # CONFIG_REGULATOR_RTMV20 is not set
> # CONFIG_REGULATOR_RTQ6752 is not set
> # CONFIG_REGULATOR_SLG51000 is not set
> # CONFIG_REGULATOR_TPS51632 is not set
> # CONFIG_REGULATOR_TPS62360 is not set
> # CONFIG_REGULATOR_TPS65023 is not set
> # CONFIG_REGULATOR_TPS6507X is not set
> # CONFIG_REGULATOR_TPS65132 is not set
> # CONFIG_REGULATOR_TPS6524X is not set
> CONFIG_RC_CORE=3Dm
> CONFIG_LIRC=3Dy
> CONFIG_RC_MAP=3Dm
> CONFIG_RC_DECODERS=3Dy
> CONFIG_IR_IMON_DECODER=3Dm
> CONFIG_IR_JVC_DECODER=3Dm
> CONFIG_IR_MCE_KBD_DECODER=3Dm
> CONFIG_IR_NEC_DECODER=3Dm
> CONFIG_IR_RC5_DECODER=3Dm
> CONFIG_IR_RC6_DECODER=3Dm
> # CONFIG_IR_RCMM_DECODER is not set
> CONFIG_IR_SANYO_DECODER=3Dm
> CONFIG_IR_SHARP_DECODER=3Dm
> CONFIG_IR_SONY_DECODER=3Dm
> CONFIG_IR_XMP_DECODER=3Dm
> CONFIG_RC_DEVICES=3Dy
> CONFIG_IR_ENE=3Dm
> CONFIG_IR_FINTEK=3Dm
> CONFIG_IR_IGORPLUGUSB=3Dm
> CONFIG_IR_IGUANA=3Dm
> CONFIG_IR_IMON=3Dm
> CONFIG_IR_IMON_RAW=3Dm
> CONFIG_IR_ITE_CIR=3Dm
> CONFIG_IR_MCEUSB=3Dm
> CONFIG_IR_NUVOTON=3Dm
> CONFIG_IR_REDRAT3=3Dm
> CONFIG_IR_SERIAL=3Dm
> CONFIG_IR_SERIAL_TRANSMITTER=3Dy
> CONFIG_IR_STREAMZAP=3Dm
> # CONFIG_IR_TOY is not set
> CONFIG_IR_TTUSBIR=3Dm
> CONFIG_IR_WINBOND_CIR=3Dm
> CONFIG_RC_ATI_REMOTE=3Dm
> CONFIG_RC_LOOPBACK=3Dm
> # CONFIG_RC_XBOX_DVD is not set
> CONFIG_CEC_CORE=3Dm
> CONFIG_CEC_NOTIFIER=3Dy
>=20
> #
> # CEC support
> #
> CONFIG_MEDIA_CEC_RC=3Dy
> CONFIG_MEDIA_CEC_SUPPORT=3Dy
> # CONFIG_CEC_CH7322 is not set
> # CONFIG_CEC_CROS_EC is not set
> # CONFIG_CEC_GPIO is not set
> CONFIG_CEC_SECO=3Dm
> # CONFIG_CEC_SECO_RC is not set
> CONFIG_USB_PULSE8_CEC=3Dm
> CONFIG_USB_RAINSHADOW_CEC=3Dm
> # end of CEC support
>=20
> CONFIG_MEDIA_SUPPORT=3Dm
> # CONFIG_MEDIA_SUPPORT_FILTER is not set
> CONFIG_MEDIA_SUBDRV_AUTOSELECT=3Dy
>=20
> #
> # Media device types
> #
> CONFIG_MEDIA_CAMERA_SUPPORT=3Dy
> CONFIG_MEDIA_ANALOG_TV_SUPPORT=3Dy
> CONFIG_MEDIA_DIGITAL_TV_SUPPORT=3Dy
> CONFIG_MEDIA_RADIO_SUPPORT=3Dy
> CONFIG_MEDIA_SDR_SUPPORT=3Dy
> CONFIG_MEDIA_PLATFORM_SUPPORT=3Dy
> CONFIG_MEDIA_TEST_SUPPORT=3Dy
> # end of Media device types
>=20
> #
> # Media core support
> #
> CONFIG_VIDEO_DEV=3Dm
> CONFIG_MEDIA_CONTROLLER=3Dy
> CONFIG_DVB_CORE=3Dm
> # end of Media core support
>=20
> #
> # Video4Linux options
> #
> CONFIG_VIDEO_V4L2_I2C=3Dy
> CONFIG_VIDEO_V4L2_SUBDEV_API=3Dy
> # CONFIG_VIDEO_ADV_DEBUG is not set
> # CONFIG_VIDEO_FIXED_MINOR_RANGES is not set
> CONFIG_VIDEO_TUNER=3Dm
> CONFIG_V4L2_FWNODE=3Dm
> CONFIG_V4L2_ASYNC=3Dm
> CONFIG_VIDEOBUF_GEN=3Dm
> CONFIG_VIDEOBUF_DMA_SG=3Dm
> CONFIG_VIDEOBUF_VMALLOC=3Dm
> # end of Video4Linux options
>=20
> #
> # Media controller options
> #
> CONFIG_MEDIA_CONTROLLER_DVB=3Dy
> CONFIG_MEDIA_CONTROLLER_REQUEST_API=3Dy
> # end of Media controller options
>=20
> #
> # Digital TV options
> #
> # CONFIG_DVB_MMAP is not set
> CONFIG_DVB_NET=3Dy
> CONFIG_DVB_MAX_ADAPTERS=3D16
> CONFIG_DVB_DYNAMIC_MINORS=3Dy
> # CONFIG_DVB_DEMUX_SECTION_LOSS_LOG is not set
> # CONFIG_DVB_ULE_DEBUG is not set
> # end of Digital TV options
>=20
> #
> # Media drivers
> #
>=20
> #
> # Media drivers
> #
> CONFIG_MEDIA_USB_SUPPORT=3Dy
>=20
> #
> # Webcam devices
> #
> CONFIG_USB_GSPCA=3Dm
> CONFIG_USB_GSPCA_BENQ=3Dm
> CONFIG_USB_GSPCA_CONEX=3Dm
> CONFIG_USB_GSPCA_CPIA1=3Dm
> CONFIG_USB_GSPCA_DTCS033=3Dm
> CONFIG_USB_GSPCA_ETOMS=3Dm
> CONFIG_USB_GSPCA_FINEPIX=3Dm
> CONFIG_USB_GSPCA_JEILINJ=3Dm
> CONFIG_USB_GSPCA_JL2005BCD=3Dm
> CONFIG_USB_GSPCA_KINECT=3Dm
> CONFIG_USB_GSPCA_KONICA=3Dm
> CONFIG_USB_GSPCA_MARS=3Dm
> CONFIG_USB_GSPCA_MR97310A=3Dm
> CONFIG_USB_GSPCA_NW80X=3Dm
> CONFIG_USB_GSPCA_OV519=3Dm
> CONFIG_USB_GSPCA_OV534=3Dm
> CONFIG_USB_GSPCA_OV534_9=3Dm
> CONFIG_USB_GSPCA_PAC207=3Dm
> CONFIG_USB_GSPCA_PAC7302=3Dm
> CONFIG_USB_GSPCA_PAC7311=3Dm
> CONFIG_USB_GSPCA_SE401=3Dm
> CONFIG_USB_GSPCA_SN9C2028=3Dm
> CONFIG_USB_GSPCA_SN9C20X=3Dm
> CONFIG_USB_GSPCA_SONIXB=3Dm
> CONFIG_USB_GSPCA_SONIXJ=3Dm
> CONFIG_USB_GSPCA_SPCA1528=3Dm
> CONFIG_USB_GSPCA_SPCA500=3Dm
> CONFIG_USB_GSPCA_SPCA501=3Dm
> CONFIG_USB_GSPCA_SPCA505=3Dm
> CONFIG_USB_GSPCA_SPCA506=3Dm
> CONFIG_USB_GSPCA_SPCA508=3Dm
> CONFIG_USB_GSPCA_SPCA561=3Dm
> CONFIG_USB_GSPCA_SQ905=3Dm
> CONFIG_USB_GSPCA_SQ905C=3Dm
> CONFIG_USB_GSPCA_SQ930X=3Dm
> CONFIG_USB_GSPCA_STK014=3Dm
> CONFIG_USB_GSPCA_STK1135=3Dm
> CONFIG_USB_GSPCA_STV0680=3Dm
> CONFIG_USB_GSPCA_SUNPLUS=3Dm
> CONFIG_USB_GSPCA_T613=3Dm
> CONFIG_USB_GSPCA_TOPRO=3Dm
> CONFIG_USB_GSPCA_TOUPTEK=3Dm
> CONFIG_USB_GSPCA_TV8532=3Dm
> CONFIG_USB_GSPCA_VC032X=3Dm
> CONFIG_USB_GSPCA_VICAM=3Dm
> CONFIG_USB_GSPCA_XIRLINK_CIT=3Dm
> CONFIG_USB_GSPCA_ZC3XX=3Dm
> CONFIG_USB_GL860=3Dm
> CONFIG_USB_M5602=3Dm
> CONFIG_USB_STV06XX=3Dm
> CONFIG_USB_PWC=3Dm
> # CONFIG_USB_PWC_DEBUG is not set
> CONFIG_USB_PWC_INPUT_EVDEV=3Dy
> CONFIG_USB_S2255=3Dm
> CONFIG_VIDEO_USBTV=3Dm
> CONFIG_USB_VIDEO_CLASS=3Dm
> CONFIG_USB_VIDEO_CLASS_INPUT_EVDEV=3Dy
>=20
> #
> # Analog TV USB devices
> #
> # CONFIG_VIDEO_GO7007 is not set
> CONFIG_VIDEO_HDPVR=3Dm
> CONFIG_VIDEO_PVRUSB2=3Dm
> CONFIG_VIDEO_PVRUSB2_SYSFS=3Dy
> CONFIG_VIDEO_PVRUSB2_DVB=3Dy
> # CONFIG_VIDEO_PVRUSB2_DEBUGIFC is not set
> CONFIG_VIDEO_STK1160_COMMON=3Dm
> CONFIG_VIDEO_STK1160=3Dm
>=20
> #
> # Analog/digital TV USB devices
> #
> CONFIG_VIDEO_AU0828=3Dm
> CONFIG_VIDEO_AU0828_V4L2=3Dy
> CONFIG_VIDEO_AU0828_RC=3Dy
> CONFIG_VIDEO_CX231XX=3Dm
> CONFIG_VIDEO_CX231XX_RC=3Dy
> CONFIG_VIDEO_CX231XX_ALSA=3Dm
> CONFIG_VIDEO_CX231XX_DVB=3Dm
>=20
> #
> # Digital TV USB devices
> #
> CONFIG_DVB_AS102=3Dm
> CONFIG_DVB_B2C2_FLEXCOP_USB=3Dm
> # CONFIG_DVB_B2C2_FLEXCOP_USB_DEBUG is not set
> CONFIG_DVB_USB_V2=3Dm
> CONFIG_DVB_USB_AF9015=3Dm
> CONFIG_DVB_USB_AF9035=3Dm
> CONFIG_DVB_USB_ANYSEE=3Dm
> CONFIG_DVB_USB_AU6610=3Dm
> CONFIG_DVB_USB_AZ6007=3Dm
> CONFIG_DVB_USB_CE6230=3Dm
> CONFIG_DVB_USB_DVBSKY=3Dm
> CONFIG_DVB_USB_EC168=3Dm
> CONFIG_DVB_USB_GL861=3Dm
> CONFIG_DVB_USB_LME2510=3Dm
> CONFIG_DVB_USB_MXL111SF=3Dm
> CONFIG_DVB_USB_RTL28XXU=3Dm
> CONFIG_DVB_USB_ZD1301=3Dm
> CONFIG_DVB_USB=3Dm
> # CONFIG_DVB_USB_DEBUG is not set
> CONFIG_DVB_USB_A800=3Dm
> CONFIG_DVB_USB_AF9005=3Dm
> CONFIG_DVB_USB_AF9005_REMOTE=3Dm
> CONFIG_DVB_USB_AZ6027=3Dm
> CONFIG_DVB_USB_CINERGY_T2=3Dm
> CONFIG_DVB_USB_CXUSB=3Dm
> # CONFIG_DVB_USB_CXUSB_ANALOG is not set
> CONFIG_DVB_USB_DIB0700=3Dm
> CONFIG_DVB_USB_DIB3000MC=3Dm
> CONFIG_DVB_USB_DIBUSB_MB=3Dm
> CONFIG_DVB_USB_DIBUSB_MB_FAULTY=3Dy
> CONFIG_DVB_USB_DIBUSB_MC=3Dm
> CONFIG_DVB_USB_DIGITV=3Dm
> CONFIG_DVB_USB_DTT200U=3Dm
> CONFIG_DVB_USB_DTV5100=3Dm
> CONFIG_DVB_USB_DW2102=3Dm
> CONFIG_DVB_USB_GP8PSK=3Dm
> CONFIG_DVB_USB_M920X=3Dm
> CONFIG_DVB_USB_NOVA_T_USB2=3Dm
> CONFIG_DVB_USB_OPERA1=3Dm
> CONFIG_DVB_USB_PCTV452E=3Dm
> CONFIG_DVB_USB_TECHNISAT_USB2=3Dm
> CONFIG_DVB_USB_TTUSB2=3Dm
> CONFIG_DVB_USB_UMT_010=3Dm
> CONFIG_DVB_USB_VP702X=3Dm
> CONFIG_DVB_USB_VP7045=3Dm
> CONFIG_SMS_USB_DRV=3Dm
> CONFIG_DVB_TTUSB_BUDGET=3Dm
> CONFIG_DVB_TTUSB_DEC=3Dm
>=20
> #
> # Webcam, TV (analog/digital) USB devices
> #
> CONFIG_VIDEO_EM28XX=3Dm
> CONFIG_VIDEO_EM28XX_V4L2=3Dm
> CONFIG_VIDEO_EM28XX_ALSA=3Dm
> CONFIG_VIDEO_EM28XX_DVB=3Dm
> CONFIG_VIDEO_EM28XX_RC=3Dm
>=20
> #
> # Software defined radio USB devices
> #
> CONFIG_USB_AIRSPY=3Dm
> CONFIG_USB_HACKRF=3Dm
> CONFIG_USB_MSI2500=3Dm
> CONFIG_MEDIA_PCI_SUPPORT=3Dy
>=20
> #
> # Media capture support
> #
> CONFIG_VIDEO_SOLO6X10=3Dm
> CONFIG_VIDEO_TW5864=3Dm
> CONFIG_VIDEO_TW68=3Dm
> CONFIG_VIDEO_TW686X=3Dm
> # CONFIG_VIDEO_ZORAN is not set
>=20
> #
> # Media capture/analog TV support
> #
> CONFIG_VIDEO_DT3155=3Dm
> CONFIG_VIDEO_IVTV=3Dm
> CONFIG_VIDEO_IVTV_ALSA=3Dm
> CONFIG_VIDEO_FB_IVTV=3Dm
> # CONFIG_VIDEO_FB_IVTV_FORCE_PAT is not set
>=20
> #
> # Media capture/analog/hybrid TV support
> #
> CONFIG_VIDEO_BT848=3Dm
> CONFIG_DVB_BT8XX=3Dm
> # CONFIG_VIDEO_COBALT is not set
> CONFIG_VIDEO_CX18=3Dm
> CONFIG_VIDEO_CX18_ALSA=3Dm
> CONFIG_VIDEO_CX23885=3Dm
> CONFIG_MEDIA_ALTERA_CI=3Dm
> # CONFIG_VIDEO_CX25821 is not set
> CONFIG_VIDEO_CX88=3Dm
> CONFIG_VIDEO_CX88_ALSA=3Dm
> CONFIG_VIDEO_CX88_BLACKBIRD=3Dm
> CONFIG_VIDEO_CX88_DVB=3Dm
> CONFIG_VIDEO_CX88_ENABLE_VP3054=3Dy
> CONFIG_VIDEO_CX88_VP3054=3Dm
> CONFIG_VIDEO_CX88_MPEG=3Dm
> CONFIG_VIDEO_SAA7134=3Dm
> CONFIG_VIDEO_SAA7134_ALSA=3Dm
> CONFIG_VIDEO_SAA7134_RC=3Dy
> CONFIG_VIDEO_SAA7134_DVB=3Dm
> CONFIG_VIDEO_SAA7164=3Dm
>=20
> #
> # Media digital TV PCI Adapters
> #
> CONFIG_DVB_B2C2_FLEXCOP_PCI=3Dm
> # CONFIG_DVB_B2C2_FLEXCOP_PCI_DEBUG is not set
> CONFIG_DVB_DDBRIDGE=3Dm
> # CONFIG_DVB_DDBRIDGE_MSIENABLE is not set
> CONFIG_DVB_DM1105=3Dm
> CONFIG_MANTIS_CORE=3Dm
> CONFIG_DVB_MANTIS=3Dm
> CONFIG_DVB_HOPPER=3Dm
> CONFIG_DVB_NETUP_UNIDVB=3Dm
> CONFIG_DVB_NGENE=3Dm
> CONFIG_DVB_PLUTO2=3Dm
> CONFIG_DVB_PT1=3Dm
> CONFIG_DVB_PT3=3Dm
> CONFIG_DVB_SMIPCIE=3Dm
> # CONFIG_VIDEO_IPU3_CIO2 is not set
> CONFIG_RADIO_ADAPTERS=3Dm
> CONFIG_RADIO_MAXIRADIO=3Dm
> # CONFIG_RADIO_SAA7706H is not set
> CONFIG_RADIO_SHARK=3Dm
> CONFIG_RADIO_SHARK2=3Dm
> # CONFIG_RADIO_SI4713 is not set
> CONFIG_RADIO_TEA575X=3Dm
> # CONFIG_RADIO_TEA5764 is not set
> # CONFIG_RADIO_TEF6862 is not set
> # CONFIG_RADIO_WL1273 is not set
> CONFIG_USB_DSBR=3Dm
> CONFIG_USB_KEENE=3Dm
> CONFIG_USB_MA901=3Dm
> CONFIG_USB_MR800=3Dm
> CONFIG_USB_RAREMONO=3Dm
> CONFIG_RADIO_SI470X=3Dm
> CONFIG_USB_SI470X=3Dm
> # CONFIG_I2C_SI470X is not set
> CONFIG_MEDIA_PLATFORM_DRIVERS=3Dy
> CONFIG_V4L_PLATFORM_DRIVERS=3Dy
> # CONFIG_SDR_PLATFORM_DRIVERS is not set
> # CONFIG_DVB_PLATFORM_DRIVERS is not set
> CONFIG_V4L_MEM2MEM_DRIVERS=3Dy
> # CONFIG_VIDEO_MEM2MEM_DEINTERLACE is not set
>=20
> #
> # Allegro DVT media platform drivers
> #
>=20
> #
> # Amlogic media platform drivers
> #
>=20
> #
> # Amphion drivers
> #
>=20
> #
> # Aspeed media platform drivers
> #
> # CONFIG_VIDEO_ASPEED is not set
>=20
> #
> # Atmel media platform drivers
> #
>=20
> #
> # Cadence media platform drivers
> #
> # CONFIG_VIDEO_CADENCE_CSI2RX is not set
> # CONFIG_VIDEO_CADENCE_CSI2TX is not set
>=20
> #
> # Chips&Media media platform drivers
> #
>=20
> #
> # Intel media platform drivers
> #
>=20
> #
> # Marvell media platform drivers
> #
> CONFIG_VIDEO_CAFE_CCIC=3Dm
>=20
> #
> # Mediatek media platform drivers
> #
>=20
> #
> # NVidia media platform drivers
> #
>=20
> #
> # NXP media platform drivers
> #
>=20
> #
> # Qualcomm media platform drivers
> #
>=20
> #
> # Renesas media platform drivers
> #
>=20
> #
> # Rockchip media platform drivers
> #
>=20
> #
> # Samsung media platform drivers
> #
>=20
> #
> # STMicroelectronics media platform drivers
> #
>=20
> #
> # Sunxi media platform drivers
> #
>=20
> #
> # Texas Instruments drivers
> #
>=20
> #
> # Verisilicon media platform drivers
> #
>=20
> #
> # VIA media platform drivers
> #
> CONFIG_VIDEO_VIA_CAMERA=3Dm
>=20
> #
> # Xilinx media platform drivers
> #
>=20
> #
> # MMC/SDIO DVB adapters
> #
> CONFIG_SMS_SDIO_DRV=3Dm
> CONFIG_V4L_TEST_DRIVERS=3Dy
> # CONFIG_VIDEO_VIM2M is not set
> # CONFIG_VIDEO_VICODEC is not set
> # CONFIG_VIDEO_VIMC is not set
> CONFIG_VIDEO_VIVID=3Dm
> CONFIG_VIDEO_VIVID_CEC=3Dy
> CONFIG_VIDEO_VIVID_MAX_DEVS=3D64
> # CONFIG_DVB_TEST_DRIVERS is not set
>=20
> #
> # FireWire (IEEE 1394) Adapters
> #
> CONFIG_DVB_FIREDTV=3Dm
> CONFIG_DVB_FIREDTV_INPUT=3Dy
> CONFIG_MEDIA_COMMON_OPTIONS=3Dy
>=20
> #
> # common driver options
> #
> CONFIG_CYPRESS_FIRMWARE=3Dm
> CONFIG_TTPCI_EEPROM=3Dm
> CONFIG_VIDEO_CX2341X=3Dm
> CONFIG_VIDEO_TVEEPROM=3Dm
> CONFIG_DVB_B2C2_FLEXCOP=3Dm
> CONFIG_SMS_SIANO_MDTV=3Dm
> CONFIG_SMS_SIANO_RC=3Dy
> # CONFIG_SMS_SIANO_DEBUGFS is not set
> CONFIG_VIDEO_V4L2_TPG=3Dm
> CONFIG_VIDEOBUF2_CORE=3Dm
> CONFIG_VIDEOBUF2_V4L2=3Dm
> CONFIG_VIDEOBUF2_MEMOPS=3Dm
> CONFIG_VIDEOBUF2_DMA_CONTIG=3Dm
> CONFIG_VIDEOBUF2_VMALLOC=3Dm
> CONFIG_VIDEOBUF2_DMA_SG=3Dm
> CONFIG_VIDEOBUF2_DVB=3Dm
> # end of Media drivers
>=20
> #
> # Media ancillary drivers
> #
> CONFIG_MEDIA_ATTACH=3Dy
>=20
> #
> # IR I2C driver auto-selected by 'Autoselect ancillary drivers'
> #
> CONFIG_VIDEO_IR_I2C=3Dm
> CONFIG_VIDEO_CAMERA_SENSOR=3Dy
> # CONFIG_VIDEO_AR0521 is not set
> # CONFIG_VIDEO_HI556 is not set
> # CONFIG_VIDEO_HI846 is not set
> # CONFIG_VIDEO_HI847 is not set
> # CONFIG_VIDEO_IMX208 is not set
> # CONFIG_VIDEO_IMX214 is not set
> # CONFIG_VIDEO_IMX219 is not set
> # CONFIG_VIDEO_IMX258 is not set
> # CONFIG_VIDEO_IMX274 is not set
> # CONFIG_VIDEO_IMX290 is not set
> # CONFIG_VIDEO_IMX319 is not set
> # CONFIG_VIDEO_IMX355 is not set
> # CONFIG_VIDEO_MT9M001 is not set
> # CONFIG_VIDEO_MT9M032 is not set
> # CONFIG_VIDEO_MT9M111 is not set
> # CONFIG_VIDEO_MT9P031 is not set
> # CONFIG_VIDEO_MT9T001 is not set
> # CONFIG_VIDEO_MT9T112 is not set
> CONFIG_VIDEO_MT9V011=3Dm
> # CONFIG_VIDEO_MT9V032 is not set
> # CONFIG_VIDEO_MT9V111 is not set
> CONFIG_VIDEO_NOON010PC30=3Dm
> # CONFIG_VIDEO_OG01A1B is not set
> # CONFIG_VIDEO_OV02A10 is not set
> # CONFIG_VIDEO_OV08D10 is not set
> # CONFIG_VIDEO_OV13858 is not set
> # CONFIG_VIDEO_OV13B10 is not set
> CONFIG_VIDEO_OV2640=3Dm
> # CONFIG_VIDEO_OV2659 is not set
> # CONFIG_VIDEO_OV2680 is not set
> # CONFIG_VIDEO_OV2685 is not set
> # CONFIG_VIDEO_OV2740 is not set
> # CONFIG_VIDEO_OV5647 is not set
> # CONFIG_VIDEO_OV5648 is not set
> # CONFIG_VIDEO_OV5670 is not set
> # CONFIG_VIDEO_OV5675 is not set
> # CONFIG_VIDEO_OV5693 is not set
> # CONFIG_VIDEO_OV5695 is not set
> # CONFIG_VIDEO_OV6650 is not set
> # CONFIG_VIDEO_OV7251 is not set
> # CONFIG_VIDEO_OV7640 is not set
> CONFIG_VIDEO_OV7670=3Dm
> # CONFIG_VIDEO_OV772X is not set
> # CONFIG_VIDEO_OV7740 is not set
> # CONFIG_VIDEO_OV8856 is not set
> # CONFIG_VIDEO_OV8865 is not set
> # CONFIG_VIDEO_OV9640 is not set
> # CONFIG_VIDEO_OV9650 is not set
> # CONFIG_VIDEO_OV9734 is not set
> # CONFIG_VIDEO_RDACM20 is not set
> # CONFIG_VIDEO_RDACM21 is not set
> # CONFIG_VIDEO_RJ54N1 is not set
> # CONFIG_VIDEO_S5C73M3 is not set
> # CONFIG_VIDEO_S5K4ECGX is not set
> # CONFIG_VIDEO_S5K5BAF is not set
> # CONFIG_VIDEO_S5K6A3 is not set
> # CONFIG_VIDEO_S5K6AA is not set
> CONFIG_VIDEO_SR030PC30=3Dm
> # CONFIG_VIDEO_VS6624 is not set
> # CONFIG_VIDEO_CCS is not set
> # CONFIG_VIDEO_ET8EK8 is not set
> # CONFIG_VIDEO_M5MOLS is not set
>=20
> #
> # Lens drivers
> #
> # CONFIG_VIDEO_AD5820 is not set
> # CONFIG_VIDEO_AK7375 is not set
> # CONFIG_VIDEO_DW9714 is not set
> # CONFIG_VIDEO_DW9768 is not set
> # CONFIG_VIDEO_DW9807_VCM is not set
> # end of Lens drivers
>=20
> #
> # Flash devices
> #
> # CONFIG_VIDEO_ADP1653 is not set
> # CONFIG_VIDEO_LM3560 is not set
> # CONFIG_VIDEO_LM3646 is not set
> # end of Flash devices
>=20
> #
> # Audio decoders, processors and mixers
> #
> CONFIG_VIDEO_CS3308=3Dm
> CONFIG_VIDEO_CS5345=3Dm
> CONFIG_VIDEO_CS53L32A=3Dm
> CONFIG_VIDEO_MSP3400=3Dm
> # CONFIG_VIDEO_SONY_BTF_MPX is not set
> # CONFIG_VIDEO_TDA1997X is not set
> CONFIG_VIDEO_TDA7432=3Dm
> CONFIG_VIDEO_TDA9840=3Dm
> CONFIG_VIDEO_TEA6415C=3Dm
> CONFIG_VIDEO_TEA6420=3Dm
> CONFIG_VIDEO_TLV320AIC23B=3Dm
> CONFIG_VIDEO_TVAUDIO=3Dm
> # CONFIG_VIDEO_UDA1342 is not set
> CONFIG_VIDEO_VP27SMPX=3Dm
> CONFIG_VIDEO_WM8739=3Dm
> CONFIG_VIDEO_WM8775=3Dm
> # end of Audio decoders, processors and mixers
>=20
> #
> # RDS decoders
> #
> CONFIG_VIDEO_SAA6588=3Dm
> # end of RDS decoders
>=20
> #
> # Video decoders
> #
> # CONFIG_VIDEO_ADV7180 is not set
> # CONFIG_VIDEO_ADV7183 is not set
> # CONFIG_VIDEO_ADV7604 is not set
> # CONFIG_VIDEO_ADV7842 is not set
> CONFIG_VIDEO_BT819=3Dm
> CONFIG_VIDEO_BT856=3Dm
> # CONFIG_VIDEO_BT866 is not set
> CONFIG_VIDEO_KS0127=3Dm
> # CONFIG_VIDEO_ML86V7667 is not set
> CONFIG_VIDEO_SAA7110=3Dm
> CONFIG_VIDEO_SAA711X=3Dm
> # CONFIG_VIDEO_TC358743 is not set
> # CONFIG_VIDEO_TVP514X is not set
> CONFIG_VIDEO_TVP5150=3Dm
> # CONFIG_VIDEO_TVP7002 is not set
> # CONFIG_VIDEO_TW2804 is not set
> # CONFIG_VIDEO_TW9903 is not set
> # CONFIG_VIDEO_TW9906 is not set
> # CONFIG_VIDEO_TW9910 is not set
> CONFIG_VIDEO_VPX3220=3Dm
>=20
> #
> # Video and audio decoders
> #
> CONFIG_VIDEO_SAA717X=3Dm
> CONFIG_VIDEO_CX25840=3Dm
> # end of Video decoders
>=20
> #
> # Video encoders
> #
> # CONFIG_VIDEO_AD9389B is not set
> CONFIG_VIDEO_ADV7170=3Dm
> CONFIG_VIDEO_ADV7175=3Dm
> # CONFIG_VIDEO_ADV7343 is not set
> # CONFIG_VIDEO_ADV7393 is not set
> # CONFIG_VIDEO_ADV7511 is not set
> # CONFIG_VIDEO_AK881X is not set
> CONFIG_VIDEO_SAA7127=3Dm
> CONFIG_VIDEO_SAA7185=3Dm
> # CONFIG_VIDEO_THS8200 is not set
> # end of Video encoders
>=20
> #
> # Video improvement chips
> #
> CONFIG_VIDEO_UPD64031A=3Dm
> CONFIG_VIDEO_UPD64083=3Dm
> # end of Video improvement chips
>=20
> #
> # Audio/Video compression chips
> #
> CONFIG_VIDEO_SAA6752HS=3Dm
> # end of Audio/Video compression chips
>=20
> #
> # SDR tuner chips
> #
> # CONFIG_SDR_MAX2175 is not set
> # end of SDR tuner chips
>=20
> #
> # Miscellaneous helper chips
> #
> # CONFIG_VIDEO_I2C is not set
> CONFIG_VIDEO_M52790=3Dm
> # CONFIG_VIDEO_ST_MIPID02 is not set
> # CONFIG_VIDEO_THS7303 is not set
> # end of Miscellaneous helper chips
>=20
> #
> # Media SPI Adapters
> #
> # CONFIG_CXD2880_SPI_DRV is not set
> # CONFIG_VIDEO_GS1662 is not set
> # end of Media SPI Adapters
>=20
> CONFIG_MEDIA_TUNER=3Dm
>=20
> #
> # Customize TV tuners
> #
> CONFIG_MEDIA_TUNER_E4000=3Dm
> CONFIG_MEDIA_TUNER_FC0011=3Dm
> CONFIG_MEDIA_TUNER_FC0012=3Dm
> CONFIG_MEDIA_TUNER_FC0013=3Dm
> CONFIG_MEDIA_TUNER_FC2580=3Dm
> CONFIG_MEDIA_TUNER_IT913X=3Dm
> CONFIG_MEDIA_TUNER_M88RS6000T=3Dm
> CONFIG_MEDIA_TUNER_MAX2165=3Dm
> CONFIG_MEDIA_TUNER_MC44S803=3Dm
> CONFIG_MEDIA_TUNER_MSI001=3Dm
> CONFIG_MEDIA_TUNER_MT2060=3Dm
> CONFIG_MEDIA_TUNER_MT2063=3Dm
> CONFIG_MEDIA_TUNER_MT20XX=3Dm
> CONFIG_MEDIA_TUNER_MT2131=3Dm
> CONFIG_MEDIA_TUNER_MT2266=3Dm
> CONFIG_MEDIA_TUNER_MXL301RF=3Dm
> CONFIG_MEDIA_TUNER_MXL5005S=3Dm
> CONFIG_MEDIA_TUNER_MXL5007T=3Dm
> CONFIG_MEDIA_TUNER_QM1D1B0004=3Dm
> CONFIG_MEDIA_TUNER_QM1D1C0042=3Dm
> CONFIG_MEDIA_TUNER_QT1010=3Dm
> CONFIG_MEDIA_TUNER_R820T=3Dm
> CONFIG_MEDIA_TUNER_SI2157=3Dm
> CONFIG_MEDIA_TUNER_SIMPLE=3Dm
> CONFIG_MEDIA_TUNER_TDA18212=3Dm
> CONFIG_MEDIA_TUNER_TDA18218=3Dm
> CONFIG_MEDIA_TUNER_TDA18250=3Dm
> CONFIG_MEDIA_TUNER_TDA18271=3Dm
> CONFIG_MEDIA_TUNER_TDA827X=3Dm
> CONFIG_MEDIA_TUNER_TDA8290=3Dm
> CONFIG_MEDIA_TUNER_TDA9887=3Dm
> CONFIG_MEDIA_TUNER_TEA5761=3Dm
> CONFIG_MEDIA_TUNER_TEA5767=3Dm
> CONFIG_MEDIA_TUNER_TUA9001=3Dm
> CONFIG_MEDIA_TUNER_XC2028=3Dm
> CONFIG_MEDIA_TUNER_XC4000=3Dm
> CONFIG_MEDIA_TUNER_XC5000=3Dm
> # end of Customize TV tuners
>=20
> #
> # Customise DVB Frontends
> #
>=20
> #
> # Multistandard (satellite) frontends
> #
> CONFIG_DVB_M88DS3103=3Dm
> CONFIG_DVB_MXL5XX=3Dm
> CONFIG_DVB_STB0899=3Dm
> CONFIG_DVB_STB6100=3Dm
> CONFIG_DVB_STV090x=3Dm
> CONFIG_DVB_STV0910=3Dm
> CONFIG_DVB_STV6110x=3Dm
> CONFIG_DVB_STV6111=3Dm
>=20
> #
> # Multistandard (cable + terrestrial) frontends
> #
> CONFIG_DVB_DRXK=3Dm
> CONFIG_DVB_MN88472=3Dm
> CONFIG_DVB_MN88473=3Dm
> CONFIG_DVB_SI2165=3Dm
> CONFIG_DVB_TDA18271C2DD=3Dm
>=20
> #
> # DVB-S (satellite) frontends
> #
> CONFIG_DVB_CX24110=3Dm
> CONFIG_DVB_CX24116=3Dm
> CONFIG_DVB_CX24117=3Dm
> CONFIG_DVB_CX24120=3Dm
> CONFIG_DVB_CX24123=3Dm
> CONFIG_DVB_DS3000=3Dm
> CONFIG_DVB_MB86A16=3Dm
> CONFIG_DVB_MT312=3Dm
> CONFIG_DVB_S5H1420=3Dm
> CONFIG_DVB_SI21XX=3Dm
> CONFIG_DVB_STB6000=3Dm
> CONFIG_DVB_STV0288=3Dm
> CONFIG_DVB_STV0299=3Dm
> CONFIG_DVB_STV0900=3Dm
> CONFIG_DVB_STV6110=3Dm
> CONFIG_DVB_TDA10071=3Dm
> CONFIG_DVB_TDA10086=3Dm
> CONFIG_DVB_TDA8083=3Dm
> # CONFIG_DVB_TDA8261 is not set
> CONFIG_DVB_TDA826X=3Dm
> CONFIG_DVB_TS2020=3Dm
> CONFIG_DVB_TUA6100=3Dm
> CONFIG_DVB_TUNER_CX24113=3Dm
> CONFIG_DVB_TUNER_ITD1000=3Dm
> CONFIG_DVB_VES1X93=3Dm
> CONFIG_DVB_ZL10036=3Dm
> CONFIG_DVB_ZL10039=3Dm
>=20
> #
> # DVB-T (terrestrial) frontends
> #
> CONFIG_DVB_AF9013=3Dm
> CONFIG_DVB_AS102_FE=3Dm
> CONFIG_DVB_CX22700=3Dm
> CONFIG_DVB_CX22702=3Dm
> CONFIG_DVB_CXD2820R=3Dm
> CONFIG_DVB_CXD2841ER=3Dm
> CONFIG_DVB_DIB3000MB=3Dm
> CONFIG_DVB_DIB3000MC=3Dm
> CONFIG_DVB_DIB7000M=3Dm
> CONFIG_DVB_DIB7000P=3Dm
> # CONFIG_DVB_DIB9000 is not set
> CONFIG_DVB_DRXD=3Dm
> CONFIG_DVB_EC100=3Dm
> CONFIG_DVB_GP8PSK_FE=3Dm
> CONFIG_DVB_L64781=3Dm
> CONFIG_DVB_MT352=3Dm
> CONFIG_DVB_NXT6000=3Dm
> CONFIG_DVB_RTL2830=3Dm
> CONFIG_DVB_RTL2832=3Dm
> CONFIG_DVB_RTL2832_SDR=3Dm
> # CONFIG_DVB_S5H1432 is not set
> CONFIG_DVB_SI2168=3Dm
> CONFIG_DVB_SP887X=3Dm
> CONFIG_DVB_STV0367=3Dm
> CONFIG_DVB_TDA10048=3Dm
> CONFIG_DVB_TDA1004X=3Dm
> CONFIG_DVB_ZD1301_DEMOD=3Dm
> CONFIG_DVB_ZL10353=3Dm
> # CONFIG_DVB_CXD2880 is not set
>=20
> #
> # DVB-C (cable) frontends
> #
> CONFIG_DVB_STV0297=3Dm
> CONFIG_DVB_TDA10021=3Dm
> CONFIG_DVB_TDA10023=3Dm
> CONFIG_DVB_VES1820=3Dm
>=20
> #
> # ATSC (North American/Korean Terrestrial/Cable DTV) frontends
> #
> CONFIG_DVB_AU8522=3Dm
> CONFIG_DVB_AU8522_DTV=3Dm
> CONFIG_DVB_AU8522_V4L=3Dm
> CONFIG_DVB_BCM3510=3Dm
> CONFIG_DVB_LG2160=3Dm
> CONFIG_DVB_LGDT3305=3Dm
> CONFIG_DVB_LGDT3306A=3Dm
> CONFIG_DVB_LGDT330X=3Dm
> CONFIG_DVB_MXL692=3Dm
> CONFIG_DVB_NXT200X=3Dm
> CONFIG_DVB_OR51132=3Dm
> CONFIG_DVB_OR51211=3Dm
> CONFIG_DVB_S5H1409=3Dm
> CONFIG_DVB_S5H1411=3Dm
>=20
> #
> # ISDB-T (terrestrial) frontends
> #
> CONFIG_DVB_DIB8000=3Dm
> CONFIG_DVB_MB86A20S=3Dm
> CONFIG_DVB_S921=3Dm
>=20
> #
> # ISDB-S (satellite) & ISDB-T (terrestrial) frontends
> #
> # CONFIG_DVB_MN88443X is not set
> CONFIG_DVB_TC90522=3Dm
>=20
> #
> # Digital terrestrial only tuners/PLL
> #
> CONFIG_DVB_PLL=3Dm
> CONFIG_DVB_TUNER_DIB0070=3Dm
> CONFIG_DVB_TUNER_DIB0090=3Dm
>=20
> #
> # SEC control devices for DVB-S
> #
> CONFIG_DVB_A8293=3Dm
> CONFIG_DVB_AF9033=3Dm
> CONFIG_DVB_ASCOT2E=3Dm
> CONFIG_DVB_ATBM8830=3Dm
> CONFIG_DVB_HELENE=3Dm
> CONFIG_DVB_HORUS3A=3Dm
> CONFIG_DVB_ISL6405=3Dm
> CONFIG_DVB_ISL6421=3Dm
> CONFIG_DVB_ISL6423=3Dm
> CONFIG_DVB_IX2505V=3Dm
> # CONFIG_DVB_LGS8GL5 is not set
> CONFIG_DVB_LGS8GXX=3Dm
> CONFIG_DVB_LNBH25=3Dm
> # CONFIG_DVB_LNBH29 is not set
> CONFIG_DVB_LNBP21=3Dm
> CONFIG_DVB_LNBP22=3Dm
> CONFIG_DVB_M88RS2000=3Dm
> CONFIG_DVB_TDA665x=3Dm
> CONFIG_DVB_DRX39XYJ=3Dm
>=20
> #
> # Common Interface (EN50221) controller drivers
> #
> CONFIG_DVB_CXD2099=3Dm
> CONFIG_DVB_SP2=3Dm
> # end of Customise DVB Frontends
>=20
> #
> # Tools to develop new frontends
> #
> CONFIG_DVB_DUMMY_FE=3Dm
> # end of Media ancillary drivers
>=20
> #
> # Graphics support
> #
> CONFIG_APERTURE_HELPERS=3Dy
> CONFIG_AGP=3Dy
> CONFIG_AGP_AMD64=3Dy
> CONFIG_AGP_INTEL=3Dy
> CONFIG_AGP_SIS=3Dy
> CONFIG_AGP_VIA=3Dy
> CONFIG_INTEL_GTT=3Dy
> CONFIG_VGA_SWITCHEROO=3Dy
> CONFIG_DRM=3Dm
> CONFIG_DRM_MIPI_DSI=3Dy
> CONFIG_DRM_KMS_HELPER=3Dm
> # CONFIG_DRM_DEBUG_DP_MST_TOPOLOGY_REFS is not set
> # CONFIG_DRM_DEBUG_MODESET_LOCK is not set
> CONFIG_DRM_FBDEV_EMULATION=3Dy
> CONFIG_DRM_FBDEV_OVERALLOC=3D100
> # CONFIG_DRM_FBDEV_LEAK_PHYS_SMEM is not set
> CONFIG_DRM_LOAD_EDID_FIRMWARE=3Dy
> CONFIG_DRM_DISPLAY_HELPER=3Dm
> CONFIG_DRM_DISPLAY_DP_HELPER=3Dy
> CONFIG_DRM_DISPLAY_HDCP_HELPER=3Dy
> CONFIG_DRM_DISPLAY_HDMI_HELPER=3Dy
> CONFIG_DRM_DP_AUX_CHARDEV=3Dy
> CONFIG_DRM_DP_CEC=3Dy
> CONFIG_DRM_TTM=3Dm
> CONFIG_DRM_BUDDY=3Dm
> CONFIG_DRM_VRAM_HELPER=3Dm
> CONFIG_DRM_TTM_HELPER=3Dm
> CONFIG_DRM_GEM_SHMEM_HELPER=3Dm
> CONFIG_DRM_SCHED=3Dm
>=20
> #
> # I2C encoder or helper chips
> #
> CONFIG_DRM_I2C_CH7006=3Dm
> CONFIG_DRM_I2C_SIL164=3Dm
> # CONFIG_DRM_I2C_NXP_TDA998X is not set
> # CONFIG_DRM_I2C_NXP_TDA9950 is not set
> # end of I2C encoder or helper chips
>=20
> #
> # ARM devices
> #
> # end of ARM devices
>=20
> CONFIG_DRM_RADEON=3Dm
> # CONFIG_DRM_RADEON_USERPTR is not set
> CONFIG_DRM_AMDGPU=3Dm
> CONFIG_DRM_AMDGPU_SI=3Dy
> CONFIG_DRM_AMDGPU_CIK=3Dy
> CONFIG_DRM_AMDGPU_USERPTR=3Dy
>=20
> #
> # ACP (Audio CoProcessor) Configuration
> #
> CONFIG_DRM_AMD_ACP=3Dy
> # end of ACP (Audio CoProcessor) Configuration
>=20
> #
> # Display Engine Configuration
> #
> CONFIG_DRM_AMD_DC=3Dy
> CONFIG_DRM_AMD_DC_DCN=3Dy
> CONFIG_DRM_AMD_DC_HDCP=3Dy
> CONFIG_DRM_AMD_DC_SI=3Dy
> # CONFIG_DRM_AMD_SECURE_DISPLAY is not set
> # end of Display Engine Configuration
>=20
> CONFIG_HSA_AMD=3Dy
> CONFIG_DRM_NOUVEAU=3Dm
> # CONFIG_NOUVEAU_LEGACY_CTX_SUPPORT is not set
> CONFIG_NOUVEAU_DEBUG=3D5
> CONFIG_NOUVEAU_DEBUG_DEFAULT=3D3
> # CONFIG_NOUVEAU_DEBUG_MMU is not set
> # CONFIG_NOUVEAU_DEBUG_PUSH is not set
> CONFIG_DRM_NOUVEAU_BACKLIGHT=3Dy
> CONFIG_DRM_I915=3Dm
> CONFIG_DRM_I915_FORCE_PROBE=3D""
> CONFIG_DRM_I915_CAPTURE_ERROR=3Dy
> CONFIG_DRM_I915_COMPRESS_ERROR=3Dy
> CONFIG_DRM_I915_USERPTR=3Dy
> CONFIG_DRM_I915_GVT_KVMGT=3Dm
>=20
> #
> # drm/i915 Debugging
> #
> # CONFIG_DRM_I915_WERROR is not set
> # CONFIG_DRM_I915_DEBUG is not set
> # CONFIG_DRM_I915_DEBUG_MMIO is not set
> # CONFIG_DRM_I915_SW_FENCE_DEBUG_OBJECTS is not set
> # CONFIG_DRM_I915_SW_FENCE_CHECK_DAG is not set
> # CONFIG_DRM_I915_DEBUG_GUC is not set
> # CONFIG_DRM_I915_SELFTEST is not set
> # CONFIG_DRM_I915_LOW_LEVEL_TRACEPOINTS is not set
> # CONFIG_DRM_I915_DEBUG_VBLANK_EVADE is not set
> # CONFIG_DRM_I915_DEBUG_RUNTIME_PM is not set
> # end of drm/i915 Debugging
>=20
> #
> # drm/i915 Profile Guided Optimisation
> #
> CONFIG_DRM_I915_REQUEST_TIMEOUT=3D20000
> CONFIG_DRM_I915_FENCE_TIMEOUT=3D10000
> CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND=3D250
> CONFIG_DRM_I915_HEARTBEAT_INTERVAL=3D2500
> CONFIG_DRM_I915_PREEMPT_TIMEOUT=3D640
> CONFIG_DRM_I915_MAX_REQUEST_BUSYWAIT=3D8000
> CONFIG_DRM_I915_STOP_TIMEOUT=3D100
> CONFIG_DRM_I915_TIMESLICE_DURATION=3D1
> # end of drm/i915 Profile Guided Optimisation
>=20
> CONFIG_DRM_I915_GVT=3Dy
> CONFIG_DRM_VGEM=3Dm
> # CONFIG_DRM_VKMS is not set
> CONFIG_DRM_VMWGFX=3Dm
> # CONFIG_DRM_VMWGFX_MKSSTATS is not set
> CONFIG_DRM_GMA500=3Dm
> CONFIG_DRM_UDL=3Dm
> CONFIG_DRM_AST=3Dm
> CONFIG_DRM_MGAG200=3Dm
> CONFIG_DRM_QXL=3Dm
> CONFIG_DRM_VIRTIO_GPU=3Dm
> CONFIG_DRM_PANEL=3Dy
>=20
> #
> # Display Panels
> #
> # CONFIG_DRM_PANEL_RASPBERRYPI_TOUCHSCREEN is not set
> # CONFIG_DRM_PANEL_WIDECHIPS_WS2401 is not set
> # end of Display Panels
>=20
> CONFIG_DRM_BRIDGE=3Dy
> CONFIG_DRM_PANEL_BRIDGE=3Dy
>=20
> #
> # Display Interface Bridges
> #
> # CONFIG_DRM_ANALOGIX_ANX78XX is not set
> # end of Display Interface Bridges
>=20
> # CONFIG_DRM_ETNAVIV is not set
> CONFIG_DRM_BOCHS=3Dm
> CONFIG_DRM_CIRRUS_QEMU=3Dm
> # CONFIG_DRM_GM12U320 is not set
> # CONFIG_DRM_PANEL_MIPI_DBI is not set
> # CONFIG_DRM_SIMPLEDRM is not set
> # CONFIG_TINYDRM_HX8357D is not set
> # CONFIG_TINYDRM_ILI9163 is not set
> # CONFIG_TINYDRM_ILI9225 is not set
> # CONFIG_TINYDRM_ILI9341 is not set
> # CONFIG_TINYDRM_ILI9486 is not set
> # CONFIG_TINYDRM_MI0283QT is not set
> # CONFIG_TINYDRM_REPAPER is not set
> # CONFIG_TINYDRM_ST7586 is not set
> # CONFIG_TINYDRM_ST7735R is not set
> CONFIG_DRM_XEN=3Dy
> CONFIG_DRM_XEN_FRONTEND=3Dm
> CONFIG_DRM_VBOXVIDEO=3Dm
> # CONFIG_DRM_GUD is not set
> # CONFIG_DRM_SSD130X is not set
> CONFIG_DRM_HYPERV=3Dm
> # CONFIG_DRM_LEGACY is not set
> CONFIG_DRM_PANEL_ORIENTATION_QUIRKS=3Dy
> CONFIG_DRM_NOMODESET=3Dy
> CONFIG_DRM_PRIVACY_SCREEN=3Dy
>=20
> #
> # Frame buffer Devices
> #
> CONFIG_FB_CMDLINE=3Dy
> CONFIG_FB_NOTIFY=3Dy
> CONFIG_FB=3Dy
> CONFIG_FIRMWARE_EDID=3Dy
> CONFIG_FB_DDC=3Dm
> CONFIG_FB_CFB_FILLRECT=3Dy
> CONFIG_FB_CFB_COPYAREA=3Dy
> CONFIG_FB_CFB_IMAGEBLIT=3Dy
> CONFIG_FB_SYS_FILLRECT=3Dy
> CONFIG_FB_SYS_COPYAREA=3Dy
> CONFIG_FB_SYS_IMAGEBLIT=3Dy
> # CONFIG_FB_FOREIGN_ENDIAN is not set
> CONFIG_FB_SYS_FOPS=3Dy
> CONFIG_FB_DEFERRED_IO=3Dy
> CONFIG_FB_HECUBA=3Dm
> CONFIG_FB_SVGALIB=3Dm
> CONFIG_FB_BACKLIGHT=3Dm
> CONFIG_FB_MODE_HELPERS=3Dy
> CONFIG_FB_TILEBLITTING=3Dy
>=20
> #
> # Frame buffer hardware drivers
> #
> CONFIG_FB_CIRRUS=3Dm
> CONFIG_FB_PM2=3Dm
> CONFIG_FB_PM2_FIFO_DISCONNECT=3Dy
> CONFIG_FB_CYBER2000=3Dm
> CONFIG_FB_CYBER2000_DDC=3Dy
> CONFIG_FB_ARC=3Dm
> # CONFIG_FB_ASILIANT is not set
> # CONFIG_FB_IMSTT is not set
> CONFIG_FB_VGA16=3Dm
> CONFIG_FB_UVESA=3Dm
> CONFIG_FB_VESA=3Dy
> CONFIG_FB_EFI=3Dy
> CONFIG_FB_N411=3Dm
> CONFIG_FB_HGA=3Dm
> # CONFIG_FB_OPENCORES is not set
> # CONFIG_FB_S1D13XXX is not set
> # CONFIG_FB_NVIDIA is not set
> # CONFIG_FB_RIVA is not set
> # CONFIG_FB_I740 is not set
> CONFIG_FB_LE80578=3Dm
> CONFIG_FB_CARILLO_RANCH=3Dm
> # CONFIG_FB_INTEL is not set
> CONFIG_FB_MATROX=3Dm
> CONFIG_FB_MATROX_MILLENIUM=3Dy
> CONFIG_FB_MATROX_MYSTIQUE=3Dy
> CONFIG_FB_MATROX_G=3Dy
> CONFIG_FB_MATROX_I2C=3Dm
> CONFIG_FB_MATROX_MAVEN=3Dm
> CONFIG_FB_RADEON=3Dm
> CONFIG_FB_RADEON_I2C=3Dy
> CONFIG_FB_RADEON_BACKLIGHT=3Dy
> # CONFIG_FB_RADEON_DEBUG is not set
> CONFIG_FB_ATY128=3Dm
> CONFIG_FB_ATY128_BACKLIGHT=3Dy
> CONFIG_FB_ATY=3Dm
> CONFIG_FB_ATY_CT=3Dy
> # CONFIG_FB_ATY_GENERIC_LCD is not set
> CONFIG_FB_ATY_GX=3Dy
> CONFIG_FB_ATY_BACKLIGHT=3Dy
> CONFIG_FB_S3=3Dm
> CONFIG_FB_S3_DDC=3Dy
> CONFIG_FB_SAVAGE=3Dm
> # CONFIG_FB_SAVAGE_I2C is not set
> # CONFIG_FB_SAVAGE_ACCEL is not set
> CONFIG_FB_SIS=3Dm
> CONFIG_FB_SIS_300=3Dy
> CONFIG_FB_SIS_315=3Dy
> CONFIG_FB_VIA=3Dm
> # CONFIG_FB_VIA_DIRECT_PROCFS is not set
> CONFIG_FB_VIA_X_COMPATIBILITY=3Dy
> CONFIG_FB_NEOMAGIC=3Dm
> CONFIG_FB_KYRO=3Dm
> CONFIG_FB_3DFX=3Dm
> # CONFIG_FB_3DFX_ACCEL is not set
> CONFIG_FB_3DFX_I2C=3Dy
> CONFIG_FB_VOODOO1=3Dm
> CONFIG_FB_VT8623=3Dm
> CONFIG_FB_TRIDENT=3Dm
> CONFIG_FB_ARK=3Dm
> CONFIG_FB_PM3=3Dm
> # CONFIG_FB_CARMINE is not set
> CONFIG_FB_SMSCUFX=3Dm
> CONFIG_FB_UDL=3Dm
> # CONFIG_FB_IBM_GXT4500 is not set
> CONFIG_FB_VIRTUAL=3Dm
> CONFIG_XEN_FBDEV_FRONTEND=3Dy
> # CONFIG_FB_METRONOME is not set
> CONFIG_FB_MB862XX=3Dm
> CONFIG_FB_MB862XX_PCI_GDC=3Dy
> CONFIG_FB_MB862XX_I2C=3Dy
> # CONFIG_FB_HYPERV is not set
> CONFIG_FB_SIMPLE=3Dy
> # CONFIG_FB_SSD1307 is not set
> # CONFIG_FB_SM712 is not set
> # end of Frame buffer Devices
>=20
> #
> # Backlight & LCD device support
> #
> # CONFIG_LCD_CLASS_DEVICE is not set
> CONFIG_BACKLIGHT_CLASS_DEVICE=3Dy
> # CONFIG_BACKLIGHT_KTD253 is not set
> CONFIG_BACKLIGHT_PWM=3Dm
> CONFIG_BACKLIGHT_APPLE=3Dm
> # CONFIG_BACKLIGHT_QCOM_WLED is not set
> # CONFIG_BACKLIGHT_SAHARA is not set
> # CONFIG_BACKLIGHT_ADP8860 is not set
> # CONFIG_BACKLIGHT_ADP8870 is not set
> # CONFIG_BACKLIGHT_LM3630A is not set
> # CONFIG_BACKLIGHT_LM3639 is not set
> # CONFIG_BACKLIGHT_LP855X is not set
> # CONFIG_BACKLIGHT_GPIO is not set
> # CONFIG_BACKLIGHT_LV5207LP is not set
> # CONFIG_BACKLIGHT_BD6107 is not set
> # CONFIG_BACKLIGHT_ARCXCNN is not set
> # end of Backlight & LCD device support
>=20
> CONFIG_VGASTATE=3Dm
> CONFIG_VIDEOMODE_HELPERS=3Dy
> CONFIG_HDMI=3Dy
>=20
> #
> # Console display driver support
> #
> CONFIG_VGA_CONSOLE=3Dy
> CONFIG_DUMMY_CONSOLE=3Dy
> CONFIG_DUMMY_CONSOLE_COLUMNS=3D80
> CONFIG_DUMMY_CONSOLE_ROWS=3D25
> CONFIG_FRAMEBUFFER_CONSOLE=3Dy
> # CONFIG_FRAMEBUFFER_CONSOLE_LEGACY_ACCELERATION is not set
> CONFIG_FRAMEBUFFER_CONSOLE_DETECT_PRIMARY=3Dy
> CONFIG_FRAMEBUFFER_CONSOLE_ROTATION=3Dy
> # CONFIG_FRAMEBUFFER_CONSOLE_DEFERRED_TAKEOVER is not set
> # end of Console display driver support
>=20
> # CONFIG_LOGO is not set
> # end of Graphics support
>=20
> CONFIG_SOUND=3Dm
> CONFIG_SOUND_OSS_CORE=3Dy
> # CONFIG_SOUND_OSS_CORE_PRECLAIM is not set
> CONFIG_SND=3Dm
> CONFIG_SND_TIMER=3Dm
> CONFIG_SND_PCM=3Dm
> CONFIG_SND_PCM_ELD=3Dy
> CONFIG_SND_HWDEP=3Dm
> CONFIG_SND_SEQ_DEVICE=3Dm
> CONFIG_SND_RAWMIDI=3Dm
> CONFIG_SND_COMPRESS_OFFLOAD=3Dm
> CONFIG_SND_JACK=3Dy
> CONFIG_SND_JACK_INPUT_DEV=3Dy
> CONFIG_SND_OSSEMUL=3Dy
> CONFIG_SND_MIXER_OSS=3Dm
> CONFIG_SND_PCM_OSS=3Dm
> CONFIG_SND_PCM_OSS_PLUGINS=3Dy
> CONFIG_SND_PCM_TIMER=3Dy
> CONFIG_SND_HRTIMER=3Dm
> CONFIG_SND_DYNAMIC_MINORS=3Dy
> CONFIG_SND_MAX_CARDS=3D32
> CONFIG_SND_SUPPORT_OLD_API=3Dy
> CONFIG_SND_PROC_FS=3Dy
> CONFIG_SND_VERBOSE_PROCFS=3Dy
> # CONFIG_SND_VERBOSE_PRINTK is not set
> CONFIG_SND_CTL_FAST_LOOKUP=3Dy
> # CONFIG_SND_DEBUG is not set
> # CONFIG_SND_CTL_INPUT_VALIDATION is not set
> CONFIG_SND_VMASTER=3Dy
> CONFIG_SND_DMA_SGBUF=3Dy
> CONFIG_SND_CTL_LED=3Dm
> CONFIG_SND_SEQUENCER=3Dm
> CONFIG_SND_SEQ_DUMMY=3Dm
> # CONFIG_SND_SEQUENCER_OSS is not set
> CONFIG_SND_SEQ_HRTIMER_DEFAULT=3Dy
> CONFIG_SND_SEQ_MIDI_EVENT=3Dm
> CONFIG_SND_SEQ_MIDI=3Dm
> CONFIG_SND_SEQ_MIDI_EMUL=3Dm
> CONFIG_SND_SEQ_VIRMIDI=3Dm
> CONFIG_SND_MPU401_UART=3Dm
> CONFIG_SND_OPL3_LIB=3Dm
> CONFIG_SND_OPL3_LIB_SEQ=3Dm
> CONFIG_SND_VX_LIB=3Dm
> CONFIG_SND_AC97_CODEC=3Dm
> CONFIG_SND_DRIVERS=3Dy
> CONFIG_SND_PCSP=3Dm
> CONFIG_SND_DUMMY=3Dm
> CONFIG_SND_ALOOP=3Dm
> CONFIG_SND_VIRMIDI=3Dm
> CONFIG_SND_MTPAV=3Dm
> CONFIG_SND_MTS64=3Dm
> CONFIG_SND_SERIAL_U16550=3Dm
> CONFIG_SND_MPU401=3Dm
> CONFIG_SND_PORTMAN2X4=3Dm
> CONFIG_SND_AC97_POWER_SAVE=3Dy
> CONFIG_SND_AC97_POWER_SAVE_DEFAULT=3D0
> CONFIG_SND_SB_COMMON=3Dm
> CONFIG_SND_PCI=3Dy
> CONFIG_SND_AD1889=3Dm
> CONFIG_SND_ALS300=3Dm
> CONFIG_SND_ALS4000=3Dm
> CONFIG_SND_ALI5451=3Dm
> CONFIG_SND_ASIHPI=3Dm
> CONFIG_SND_ATIIXP=3Dm
> CONFIG_SND_ATIIXP_MODEM=3Dm
> CONFIG_SND_AU8810=3Dm
> CONFIG_SND_AU8820=3Dm
> CONFIG_SND_AU8830=3Dm
> # CONFIG_SND_AW2 is not set
> CONFIG_SND_AZT3328=3Dm
> CONFIG_SND_BT87X=3Dm
> # CONFIG_SND_BT87X_OVERCLOCK is not set
> CONFIG_SND_CA0106=3Dm
> CONFIG_SND_CMIPCI=3Dm
> CONFIG_SND_OXYGEN_LIB=3Dm
> CONFIG_SND_OXYGEN=3Dm
> CONFIG_SND_CS4281=3Dm
> CONFIG_SND_CS46XX=3Dm
> CONFIG_SND_CS46XX_NEW_DSP=3Dy
> CONFIG_SND_CTXFI=3Dm
> CONFIG_SND_DARLA20=3Dm
> CONFIG_SND_GINA20=3Dm
> CONFIG_SND_LAYLA20=3Dm
> CONFIG_SND_DARLA24=3Dm
> CONFIG_SND_GINA24=3Dm
> CONFIG_SND_LAYLA24=3Dm
> CONFIG_SND_MONA=3Dm
> CONFIG_SND_MIA=3Dm
> CONFIG_SND_ECHO3G=3Dm
> CONFIG_SND_INDIGO=3Dm
> CONFIG_SND_INDIGOIO=3Dm
> CONFIG_SND_INDIGODJ=3Dm
> CONFIG_SND_INDIGOIOX=3Dm
> CONFIG_SND_INDIGODJX=3Dm
> CONFIG_SND_EMU10K1=3Dm
> CONFIG_SND_EMU10K1_SEQ=3Dm
> CONFIG_SND_EMU10K1X=3Dm
> CONFIG_SND_ENS1370=3Dm
> CONFIG_SND_ENS1371=3Dm
> CONFIG_SND_ES1938=3Dm
> CONFIG_SND_ES1968=3Dm
> CONFIG_SND_ES1968_INPUT=3Dy
> CONFIG_SND_ES1968_RADIO=3Dy
> CONFIG_SND_FM801=3Dm
> CONFIG_SND_FM801_TEA575X_BOOL=3Dy
> CONFIG_SND_HDSP=3Dm
> CONFIG_SND_HDSPM=3Dm
> CONFIG_SND_ICE1712=3Dm
> CONFIG_SND_ICE1724=3Dm
> CONFIG_SND_INTEL8X0=3Dm
> CONFIG_SND_INTEL8X0M=3Dm
> CONFIG_SND_KORG1212=3Dm
> CONFIG_SND_LOLA=3Dm
> CONFIG_SND_LX6464ES=3Dm
> CONFIG_SND_MAESTRO3=3Dm
> CONFIG_SND_MAESTRO3_INPUT=3Dy
> CONFIG_SND_MIXART=3Dm
> CONFIG_SND_NM256=3Dm
> CONFIG_SND_PCXHR=3Dm
> CONFIG_SND_RIPTIDE=3Dm
> CONFIG_SND_RME32=3Dm
> CONFIG_SND_RME96=3Dm
> CONFIG_SND_RME9652=3Dm
> CONFIG_SND_SONICVIBES=3Dm
> CONFIG_SND_TRIDENT=3Dm
> CONFIG_SND_VIA82XX=3Dm
> CONFIG_SND_VIA82XX_MODEM=3Dm
> CONFIG_SND_VIRTUOSO=3Dm
> CONFIG_SND_VX222=3Dm
> CONFIG_SND_YMFPCI=3Dm
>=20
> #
> # HD-Audio
> #
> CONFIG_SND_HDA=3Dm
> CONFIG_SND_HDA_GENERIC_LEDS=3Dy
> CONFIG_SND_HDA_INTEL=3Dm
> CONFIG_SND_HDA_HWDEP=3Dy
> CONFIG_SND_HDA_RECONFIG=3Dy
> CONFIG_SND_HDA_INPUT_BEEP=3Dy
> CONFIG_SND_HDA_INPUT_BEEP_MODE=3D1
> CONFIG_SND_HDA_PATCH_LOADER=3Dy
> CONFIG_SND_HDA_SCODEC_CS35L41=3Dm
> CONFIG_SND_HDA_CS_DSP_CONTROLS=3Dm
> CONFIG_SND_HDA_SCODEC_CS35L41_I2C=3Dm
> CONFIG_SND_HDA_SCODEC_CS35L41_SPI=3Dm
> CONFIG_SND_HDA_CODEC_REALTEK=3Dm
> CONFIG_SND_HDA_CODEC_ANALOG=3Dm
> CONFIG_SND_HDA_CODEC_SIGMATEL=3Dm
> CONFIG_SND_HDA_CODEC_VIA=3Dm
> CONFIG_SND_HDA_CODEC_HDMI=3Dm
> CONFIG_SND_HDA_CODEC_CIRRUS=3Dm
> CONFIG_SND_HDA_CODEC_CS8409=3Dm
> CONFIG_SND_HDA_CODEC_CONEXANT=3Dm
> CONFIG_SND_HDA_CODEC_CA0110=3Dm
> CONFIG_SND_HDA_CODEC_CA0132=3Dm
> CONFIG_SND_HDA_CODEC_CA0132_DSP=3Dy
> CONFIG_SND_HDA_CODEC_CMEDIA=3Dm
> CONFIG_SND_HDA_CODEC_SI3054=3Dm
> CONFIG_SND_HDA_GENERIC=3Dm
> CONFIG_SND_HDA_POWER_SAVE_DEFAULT=3D1
> # CONFIG_SND_HDA_INTEL_HDMI_SILENT_STREAM is not set
> # CONFIG_SND_HDA_CTL_DEV_ID is not set
> # end of HD-Audio
>=20
> CONFIG_SND_HDA_CORE=3Dm
> CONFIG_SND_HDA_DSP_LOADER=3Dy
> CONFIG_SND_HDA_COMPONENT=3Dy
> CONFIG_SND_HDA_I915=3Dy
> CONFIG_SND_HDA_EXT_CORE=3Dm
> CONFIG_SND_HDA_PREALLOC_SIZE=3D0
> CONFIG_SND_INTEL_NHLT=3Dy
> CONFIG_SND_INTEL_DSP_CONFIG=3Dm
> CONFIG_SND_INTEL_SOUNDWIRE_ACPI=3Dm
> CONFIG_SND_SPI=3Dy
> CONFIG_SND_USB=3Dy
> CONFIG_SND_USB_AUDIO=3Dm
> CONFIG_SND_USB_AUDIO_USE_MEDIA_CONTROLLER=3Dy
> CONFIG_SND_USB_UA101=3Dm
> CONFIG_SND_USB_USX2Y=3Dm
> CONFIG_SND_USB_CAIAQ=3Dm
> CONFIG_SND_USB_CAIAQ_INPUT=3Dy
> CONFIG_SND_USB_US122L=3Dm
> CONFIG_SND_USB_6FIRE=3Dm
> CONFIG_SND_USB_HIFACE=3Dm
> CONFIG_SND_BCD2000=3Dm
> CONFIG_SND_USB_LINE6=3Dm
> CONFIG_SND_USB_POD=3Dm
> CONFIG_SND_USB_PODHD=3Dm
> CONFIG_SND_USB_TONEPORT=3Dm
> CONFIG_SND_USB_VARIAX=3Dm
> CONFIG_SND_FIREWIRE=3Dy
> CONFIG_SND_FIREWIRE_LIB=3Dm
> CONFIG_SND_DICE=3Dm
> CONFIG_SND_OXFW=3Dm
> CONFIG_SND_ISIGHT=3Dm
> CONFIG_SND_FIREWORKS=3Dm
> CONFIG_SND_BEBOB=3Dm
> CONFIG_SND_FIREWIRE_DIGI00X=3Dm
> CONFIG_SND_FIREWIRE_TASCAM=3Dm
> CONFIG_SND_FIREWIRE_MOTU=3Dm
> CONFIG_SND_FIREFACE=3Dm
> CONFIG_SND_PCMCIA=3Dy
> CONFIG_SND_VXPOCKET=3Dm
> CONFIG_SND_PDAUDIOCF=3Dm
> CONFIG_SND_SOC=3Dm
> CONFIG_SND_SOC_COMPRESS=3Dy
> CONFIG_SND_SOC_TOPOLOGY=3Dy
> CONFIG_SND_SOC_ACPI=3Dm
> # CONFIG_SND_SOC_ADI is not set
> CONFIG_SND_SOC_AMD_ACP=3Dm
> CONFIG_SND_SOC_AMD_CZ_DA7219MX98357_MACH=3Dm
> CONFIG_SND_SOC_AMD_CZ_RT5645_MACH=3Dm
> # CONFIG_SND_SOC_AMD_ST_ES8336_MACH is not set
> CONFIG_SND_SOC_AMD_ACP3x=3Dm
> # CONFIG_SND_SOC_AMD_RV_RT5682_MACH is not set
> CONFIG_SND_SOC_AMD_RENOIR=3Dm
> CONFIG_SND_SOC_AMD_RENOIR_MACH=3Dm
> CONFIG_SND_SOC_AMD_ACP5x=3Dm
> CONFIG_SND_SOC_AMD_VANGOGH_MACH=3Dm
> CONFIG_SND_SOC_AMD_ACP6x=3Dm
> CONFIG_SND_SOC_AMD_YC_MACH=3Dm
> CONFIG_SND_AMD_ACP_CONFIG=3Dm
> # CONFIG_SND_SOC_AMD_ACP_COMMON is not set
> # CONFIG_SND_SOC_AMD_RPL_ACP6x is not set
> # CONFIG_SND_SOC_AMD_PS is not set
> # CONFIG_SND_ATMEL_SOC is not set
> # CONFIG_SND_BCM63XX_I2S_WHISTLER is not set
> # CONFIG_SND_DESIGNWARE_I2S is not set
>=20
> #
> # SoC Audio for Freescale CPUs
> #
>=20
> #
> # Common SoC Audio options for Freescale CPUs:
> #
> # CONFIG_SND_SOC_FSL_ASRC is not set
> # CONFIG_SND_SOC_FSL_SAI is not set
> # CONFIG_SND_SOC_FSL_AUDMIX is not set
> # CONFIG_SND_SOC_FSL_SSI is not set
> # CONFIG_SND_SOC_FSL_SPDIF is not set
> # CONFIG_SND_SOC_FSL_ESAI is not set
> # CONFIG_SND_SOC_FSL_MICFIL is not set
> # CONFIG_SND_SOC_FSL_XCVR is not set
> # CONFIG_SND_SOC_IMX_AUDMUX is not set
> # end of SoC Audio for Freescale CPUs
>=20
> # CONFIG_SND_I2S_HI6210_I2S is not set
> # CONFIG_SND_SOC_IMG is not set
> CONFIG_SND_SOC_INTEL_SST_TOPLEVEL=3Dy
> CONFIG_SND_SOC_INTEL_SST=3Dm
> CONFIG_SND_SOC_INTEL_CATPT=3Dm
> CONFIG_SND_SST_ATOM_HIFI2_PLATFORM=3Dm
> # CONFIG_SND_SST_ATOM_HIFI2_PLATFORM_PCI is not set
> CONFIG_SND_SST_ATOM_HIFI2_PLATFORM_ACPI=3Dm
> CONFIG_SND_SOC_INTEL_SKYLAKE=3Dm
> CONFIG_SND_SOC_INTEL_SKL=3Dm
> CONFIG_SND_SOC_INTEL_APL=3Dm
> CONFIG_SND_SOC_INTEL_KBL=3Dm
> CONFIG_SND_SOC_INTEL_GLK=3Dm
> CONFIG_SND_SOC_INTEL_CNL=3Dm
> CONFIG_SND_SOC_INTEL_CFL=3Dm
> # CONFIG_SND_SOC_INTEL_CML_H is not set
> # CONFIG_SND_SOC_INTEL_CML_LP is not set
> CONFIG_SND_SOC_INTEL_SKYLAKE_FAMILY=3Dm
> CONFIG_SND_SOC_INTEL_SKYLAKE_SSP_CLK=3Dm
> CONFIG_SND_SOC_INTEL_SKYLAKE_HDAUDIO_CODEC=3Dy
> CONFIG_SND_SOC_INTEL_SKYLAKE_COMMON=3Dm
> CONFIG_SND_SOC_ACPI_INTEL_MATCH=3Dm
> # CONFIG_SND_SOC_INTEL_AVS is not set
> CONFIG_SND_SOC_INTEL_MACH=3Dy
> CONFIG_SND_SOC_INTEL_USER_FRIENDLY_LONG_NAMES=3Dy
> CONFIG_SND_SOC_INTEL_HDA_DSP_COMMON=3Dm
> CONFIG_SND_SOC_INTEL_SOF_MAXIM_COMMON=3Dm
> CONFIG_SND_SOC_INTEL_SOF_REALTEK_COMMON=3Dm
> CONFIG_SND_SOC_INTEL_HASWELL_MACH=3Dm
> CONFIG_SND_SOC_INTEL_BDW_RT5650_MACH=3Dm
> CONFIG_SND_SOC_INTEL_BDW_RT5677_MACH=3Dm
> CONFIG_SND_SOC_INTEL_BROADWELL_MACH=3Dm
> CONFIG_SND_SOC_INTEL_BYTCR_RT5640_MACH=3Dm
> CONFIG_SND_SOC_INTEL_BYTCR_RT5651_MACH=3Dm
> CONFIG_SND_SOC_INTEL_CHT_BSW_RT5672_MACH=3Dm
> CONFIG_SND_SOC_INTEL_CHT_BSW_RT5645_MACH=3Dm
> CONFIG_SND_SOC_INTEL_CHT_BSW_MAX98090_TI_MACH=3Dm
> CONFIG_SND_SOC_INTEL_CHT_BSW_NAU8824_MACH=3Dm
> CONFIG_SND_SOC_INTEL_BYT_CHT_CX2072X_MACH=3Dm
> CONFIG_SND_SOC_INTEL_BYT_CHT_DA7213_MACH=3Dm
> CONFIG_SND_SOC_INTEL_BYT_CHT_ES8316_MACH=3Dm
> # CONFIG_SND_SOC_INTEL_BYT_CHT_NOCODEC_MACH is not set
> CONFIG_SND_SOC_INTEL_SKL_RT286_MACH=3Dm
> CONFIG_SND_SOC_INTEL_SKL_NAU88L25_SSM4567_MACH=3Dm
> CONFIG_SND_SOC_INTEL_SKL_NAU88L25_MAX98357A_MACH=3Dm
> CONFIG_SND_SOC_INTEL_DA7219_MAX98357A_GENERIC=3Dm
> # CONFIG_SND_SOC_INTEL_BXT_DA7219_MAX98357A_MACH is not set
> # CONFIG_SND_SOC_INTEL_BXT_RT298_MACH is not set
> # CONFIG_SND_SOC_INTEL_SOF_WM8804_MACH is not set
> CONFIG_SND_SOC_INTEL_KBL_RT5663_MAX98927_MACH=3Dm
> CONFIG_SND_SOC_INTEL_KBL_RT5663_RT5514_MAX98927_MACH=3Dm
> CONFIG_SND_SOC_INTEL_KBL_DA7219_MAX98357A_MACH=3Dm
> # CONFIG_SND_SOC_INTEL_KBL_DA7219_MAX98927_MACH is not set
> # CONFIG_SND_SOC_INTEL_KBL_RT5660_MACH is not set
> # CONFIG_SND_SOC_INTEL_GLK_DA7219_MAX98357A_MACH is not set
> CONFIG_SND_SOC_INTEL_GLK_RT5682_MAX98357A_MACH=3Dm
> CONFIG_SND_SOC_INTEL_SKL_HDA_DSP_GENERIC_MACH=3Dm
> CONFIG_SND_SOC_INTEL_SOF_RT5682_MACH=3Dm
> # CONFIG_SND_SOC_INTEL_SOF_CS42L42_MACH is not set
> # CONFIG_SND_SOC_INTEL_SOF_PCM512x_MACH is not set
> CONFIG_SND_SOC_INTEL_SOF_ES8336_MACH=3Dm
> # CONFIG_SND_SOC_INTEL_SOF_NAU8825_MACH is not set
> # CONFIG_SND_SOC_INTEL_CML_LP_DA7219_MAX98357A_MACH is not set
> # CONFIG_SND_SOC_INTEL_SOF_CML_RT1011_RT5682_MACH is not set
> # CONFIG_SND_SOC_INTEL_SOF_DA7219_MAX98373_MACH is not set
> # CONFIG_SND_SOC_INTEL_SOF_SSP_AMP_MACH is not set
> # CONFIG_SND_SOC_INTEL_EHL_RT5660_MACH is not set
> CONFIG_SND_SOC_INTEL_SOUNDWIRE_SOF_MACH=3Dm
> # CONFIG_SND_SOC_MTK_BTCVSD is not set
> CONFIG_SND_SOC_SOF_TOPLEVEL=3Dy
> CONFIG_SND_SOC_SOF_PCI_DEV=3Dm
> CONFIG_SND_SOC_SOF_PCI=3Dm
> # CONFIG_SND_SOC_SOF_ACPI is not set
> CONFIG_SND_SOC_SOF_DEBUG_PROBES=3Dm
> CONFIG_SND_SOC_SOF_CLIENT=3Dm
> # CONFIG_SND_SOC_SOF_DEVELOPER_SUPPORT is not set
> CONFIG_SND_SOC_SOF=3Dm
> CONFIG_SND_SOC_SOF_PROBE_WORK_QUEUE=3Dy
> CONFIG_SND_SOC_SOF_IPC3=3Dy
> CONFIG_SND_SOC_SOF_INTEL_IPC4=3Dy
> # CONFIG_SND_SOC_SOF_AMD_TOPLEVEL is not set
> CONFIG_SND_SOC_SOF_INTEL_TOPLEVEL=3Dy
> CONFIG_SND_SOC_SOF_INTEL_HIFI_EP_IPC=3Dm
> CONFIG_SND_SOC_SOF_INTEL_ATOM_HIFI_EP=3Dm
> CONFIG_SND_SOC_SOF_INTEL_COMMON=3Dm
> CONFIG_SND_SOC_SOF_MERRIFIELD=3Dm
> CONFIG_SND_SOC_SOF_INTEL_SKL=3Dm
> CONFIG_SND_SOC_SOF_SKYLAKE=3Dm
> CONFIG_SND_SOC_SOF_KABYLAKE=3Dm
> CONFIG_SND_SOC_SOF_INTEL_APL=3Dm
> CONFIG_SND_SOC_SOF_APOLLOLAKE=3Dm
> CONFIG_SND_SOC_SOF_GEMINILAKE=3Dm
> CONFIG_SND_SOC_SOF_INTEL_CNL=3Dm
> CONFIG_SND_SOC_SOF_CANNONLAKE=3Dm
> CONFIG_SND_SOC_SOF_COFFEELAKE=3Dm
> CONFIG_SND_SOC_SOF_COMETLAKE=3Dm
> CONFIG_SND_SOC_SOF_INTEL_ICL=3Dm
> CONFIG_SND_SOC_SOF_ICELAKE=3Dm
> CONFIG_SND_SOC_SOF_JASPERLAKE=3Dm
> CONFIG_SND_SOC_SOF_INTEL_TGL=3Dm
> CONFIG_SND_SOC_SOF_TIGERLAKE=3Dm
> CONFIG_SND_SOC_SOF_ELKHARTLAKE=3Dm
> CONFIG_SND_SOC_SOF_ALDERLAKE=3Dm
> CONFIG_SND_SOC_SOF_INTEL_MTL=3Dm
> CONFIG_SND_SOC_SOF_METEORLAKE=3Dm
> CONFIG_SND_SOC_SOF_HDA_COMMON=3Dm
> CONFIG_SND_SOC_SOF_HDA_LINK=3Dy
> CONFIG_SND_SOC_SOF_HDA_AUDIO_CODEC=3Dy
> CONFIG_SND_SOC_SOF_HDA_LINK_BASELINE=3Dm
> CONFIG_SND_SOC_SOF_HDA=3Dm
> CONFIG_SND_SOC_SOF_HDA_PROBES=3Dm
> CONFIG_SND_SOC_SOF_INTEL_SOUNDWIRE_LINK_BASELINE=3Dm
> CONFIG_SND_SOC_SOF_INTEL_SOUNDWIRE=3Dm
> CONFIG_SND_SOC_SOF_XTENSA=3Dm
>=20
> #
> # STMicroelectronics STM32 SOC audio support
> #
> # end of STMicroelectronics STM32 SOC audio support
>=20
> # CONFIG_SND_SOC_XILINX_I2S is not set
> # CONFIG_SND_SOC_XILINX_AUDIO_FORMATTER is not set
> # CONFIG_SND_SOC_XILINX_SPDIF is not set
> # CONFIG_SND_SOC_XTFPGA_I2S is not set
> CONFIG_SND_SOC_I2C_AND_SPI=3Dm
>=20
> #
> # CODEC drivers
> #
> CONFIG_SND_SOC_WM_ADSP=3Dm
> # CONFIG_SND_SOC_AC97_CODEC is not set
> # CONFIG_SND_SOC_ADAU1372_I2C is not set
> # CONFIG_SND_SOC_ADAU1372_SPI is not set
> # CONFIG_SND_SOC_ADAU1701 is not set
> # CONFIG_SND_SOC_ADAU1761_I2C is not set
> # CONFIG_SND_SOC_ADAU1761_SPI is not set
> CONFIG_SND_SOC_ADAU7002=3Dm
> # CONFIG_SND_SOC_ADAU7118_HW is not set
> # CONFIG_SND_SOC_ADAU7118_I2C is not set
> # CONFIG_SND_SOC_AK4104 is not set
> # CONFIG_SND_SOC_AK4118 is not set
> # CONFIG_SND_SOC_AK4375 is not set
> # CONFIG_SND_SOC_AK4458 is not set
> # CONFIG_SND_SOC_AK4554 is not set
> # CONFIG_SND_SOC_AK4613 is not set
> # CONFIG_SND_SOC_AK4642 is not set
> # CONFIG_SND_SOC_AK5386 is not set
> # CONFIG_SND_SOC_AK5558 is not set
> # CONFIG_SND_SOC_ALC5623 is not set
> # CONFIG_SND_SOC_AW8738 is not set
> # CONFIG_SND_SOC_BD28623 is not set
> # CONFIG_SND_SOC_BT_SCO is not set
> # CONFIG_SND_SOC_CROS_EC_CODEC is not set
> # CONFIG_SND_SOC_CS35L32 is not set
> # CONFIG_SND_SOC_CS35L33 is not set
> # CONFIG_SND_SOC_CS35L34 is not set
> # CONFIG_SND_SOC_CS35L35 is not set
> # CONFIG_SND_SOC_CS35L36 is not set
> CONFIG_SND_SOC_CS35L41_LIB=3Dm
> CONFIG_SND_SOC_CS35L41=3Dm
> CONFIG_SND_SOC_CS35L41_SPI=3Dm
> # CONFIG_SND_SOC_CS35L41_I2C is not set
> # CONFIG_SND_SOC_CS35L45_SPI is not set
> # CONFIG_SND_SOC_CS35L45_I2C is not set
> # CONFIG_SND_SOC_CS42L42 is not set
> # CONFIG_SND_SOC_CS42L51_I2C is not set
> # CONFIG_SND_SOC_CS42L52 is not set
> # CONFIG_SND_SOC_CS42L56 is not set
> # CONFIG_SND_SOC_CS42L73 is not set
> # CONFIG_SND_SOC_CS42L83 is not set
> # CONFIG_SND_SOC_CS4234 is not set
> # CONFIG_SND_SOC_CS4265 is not set
> # CONFIG_SND_SOC_CS4270 is not set
> # CONFIG_SND_SOC_CS4271_I2C is not set
> # CONFIG_SND_SOC_CS4271_SPI is not set
> # CONFIG_SND_SOC_CS42XX8_I2C is not set
> # CONFIG_SND_SOC_CS43130 is not set
> # CONFIG_SND_SOC_CS4341 is not set
> # CONFIG_SND_SOC_CS4349 is not set
> # CONFIG_SND_SOC_CS53L30 is not set
> CONFIG_SND_SOC_CX2072X=3Dm
> CONFIG_SND_SOC_DA7213=3Dm
> CONFIG_SND_SOC_DA7219=3Dm
> CONFIG_SND_SOC_DMIC=3Dm
> # CONFIG_SND_SOC_ES7134 is not set
> # CONFIG_SND_SOC_ES7241 is not set
> CONFIG_SND_SOC_ES8316=3Dm
> CONFIG_SND_SOC_ES8326=3Dm
> # CONFIG_SND_SOC_ES8328_I2C is not set
> # CONFIG_SND_SOC_ES8328_SPI is not set
> # CONFIG_SND_SOC_GTM601 is not set
> CONFIG_SND_SOC_HDAC_HDMI=3Dm
> CONFIG_SND_SOC_HDAC_HDA=3Dm
> # CONFIG_SND_SOC_HDA is not set
> # CONFIG_SND_SOC_ICS43432 is not set
> # CONFIG_SND_SOC_INNO_RK3036 is not set
> # CONFIG_SND_SOC_MAX98088 is not set
> CONFIG_SND_SOC_MAX98090=3Dm
> CONFIG_SND_SOC_MAX98357A=3Dm
> # CONFIG_SND_SOC_MAX98504 is not set
> # CONFIG_SND_SOC_MAX9867 is not set
> CONFIG_SND_SOC_MAX98927=3Dm
> # CONFIG_SND_SOC_MAX98520 is not set
> CONFIG_SND_SOC_MAX98373=3Dm
> CONFIG_SND_SOC_MAX98373_I2C=3Dm
> CONFIG_SND_SOC_MAX98373_SDW=3Dm
> CONFIG_SND_SOC_MAX98390=3Dm
> # CONFIG_SND_SOC_MAX98396 is not set
> # CONFIG_SND_SOC_MAX9860 is not set
> # CONFIG_SND_SOC_MSM8916_WCD_DIGITAL is not set
> # CONFIG_SND_SOC_PCM1681 is not set
> # CONFIG_SND_SOC_PCM1789_I2C is not set
> # CONFIG_SND_SOC_PCM179X_I2C is not set
> # CONFIG_SND_SOC_PCM179X_SPI is not set
> # CONFIG_SND_SOC_PCM186X_I2C is not set
> # CONFIG_SND_SOC_PCM186X_SPI is not set
> # CONFIG_SND_SOC_PCM3060_I2C is not set
> # CONFIG_SND_SOC_PCM3060_SPI is not set
> # CONFIG_SND_SOC_PCM3168A_I2C is not set
> # CONFIG_SND_SOC_PCM3168A_SPI is not set
> # CONFIG_SND_SOC_PCM5102A is not set
> # CONFIG_SND_SOC_PCM512x_I2C is not set
> # CONFIG_SND_SOC_PCM512x_SPI is not set
> # CONFIG_SND_SOC_RK3328 is not set
> CONFIG_SND_SOC_RL6231=3Dm
> CONFIG_SND_SOC_RL6347A=3Dm
> CONFIG_SND_SOC_RT286=3Dm
> CONFIG_SND_SOC_RT1011=3Dm
> CONFIG_SND_SOC_RT1015=3Dm
> CONFIG_SND_SOC_RT1015P=3Dm
> CONFIG_SND_SOC_RT1308=3Dm
> CONFIG_SND_SOC_RT1308_SDW=3Dm
> CONFIG_SND_SOC_RT1316_SDW=3Dm
> # CONFIG_SND_SOC_RT1318_SDW is not set
> CONFIG_SND_SOC_RT5514=3Dm
> CONFIG_SND_SOC_RT5514_SPI=3Dm
> # CONFIG_SND_SOC_RT5616 is not set
> # CONFIG_SND_SOC_RT5631 is not set
> CONFIG_SND_SOC_RT5640=3Dm
> CONFIG_SND_SOC_RT5645=3Dm
> CONFIG_SND_SOC_RT5651=3Dm
> # CONFIG_SND_SOC_RT5659 is not set
> CONFIG_SND_SOC_RT5663=3Dm
> CONFIG_SND_SOC_RT5670=3Dm
> CONFIG_SND_SOC_RT5677=3Dm
> CONFIG_SND_SOC_RT5677_SPI=3Dm
> CONFIG_SND_SOC_RT5682=3Dm
> CONFIG_SND_SOC_RT5682_I2C=3Dm
> CONFIG_SND_SOC_RT5682_SDW=3Dm
> CONFIG_SND_SOC_RT5682S=3Dm
> CONFIG_SND_SOC_RT700=3Dm
> CONFIG_SND_SOC_RT700_SDW=3Dm
> CONFIG_SND_SOC_RT711=3Dm
> CONFIG_SND_SOC_RT711_SDW=3Dm
> CONFIG_SND_SOC_RT711_SDCA_SDW=3Dm
> CONFIG_SND_SOC_RT715=3Dm
> CONFIG_SND_SOC_RT715_SDW=3Dm
> CONFIG_SND_SOC_RT715_SDCA_SDW=3Dm
> # CONFIG_SND_SOC_RT9120 is not set
> CONFIG_SND_SOC_SDW_MOCKUP=3Dm
> # CONFIG_SND_SOC_SGTL5000 is not set
> # CONFIG_SND_SOC_SIMPLE_AMPLIFIER is not set
> # CONFIG_SND_SOC_SIMPLE_MUX is not set
> # CONFIG_SND_SOC_SPDIF is not set
> # CONFIG_SND_SOC_SRC4XXX_I2C is not set
> # CONFIG_SND_SOC_SSM2305 is not set
> # CONFIG_SND_SOC_SSM2518 is not set
> # CONFIG_SND_SOC_SSM2602_SPI is not set
> # CONFIG_SND_SOC_SSM2602_I2C is not set
> CONFIG_SND_SOC_SSM4567=3Dm
> # CONFIG_SND_SOC_STA32X is not set
> # CONFIG_SND_SOC_STA350 is not set
> # CONFIG_SND_SOC_STI_SAS is not set
> # CONFIG_SND_SOC_TAS2552 is not set
> # CONFIG_SND_SOC_TAS2562 is not set
> # CONFIG_SND_SOC_TAS2764 is not set
> # CONFIG_SND_SOC_TAS2770 is not set
> # CONFIG_SND_SOC_TAS2780 is not set
> # CONFIG_SND_SOC_TAS5086 is not set
> # CONFIG_SND_SOC_TAS571X is not set
> # CONFIG_SND_SOC_TAS5720 is not set
> # CONFIG_SND_SOC_TAS5805M is not set
> # CONFIG_SND_SOC_TAS6424 is not set
> # CONFIG_SND_SOC_TDA7419 is not set
> # CONFIG_SND_SOC_TFA9879 is not set
> # CONFIG_SND_SOC_TFA989X is not set
> # CONFIG_SND_SOC_TLV320ADC3XXX is not set
> # CONFIG_SND_SOC_TLV320AIC23_I2C is not set
> # CONFIG_SND_SOC_TLV320AIC23_SPI is not set
> # CONFIG_SND_SOC_TLV320AIC31XX is not set
> # CONFIG_SND_SOC_TLV320AIC32X4_I2C is not set
> # CONFIG_SND_SOC_TLV320AIC32X4_SPI is not set
> # CONFIG_SND_SOC_TLV320AIC3X_I2C is not set
> # CONFIG_SND_SOC_TLV320AIC3X_SPI is not set
> # CONFIG_SND_SOC_TLV320ADCX140 is not set
> CONFIG_SND_SOC_TS3A227E=3Dm
> # CONFIG_SND_SOC_TSCS42XX is not set
> # CONFIG_SND_SOC_TSCS454 is not set
> # CONFIG_SND_SOC_UDA1334 is not set
> # CONFIG_SND_SOC_WCD9335 is not set
> # CONFIG_SND_SOC_WCD938X_SDW is not set
> # CONFIG_SND_SOC_WM8510 is not set
> # CONFIG_SND_SOC_WM8523 is not set
> # CONFIG_SND_SOC_WM8524 is not set
> # CONFIG_SND_SOC_WM8580 is not set
> # CONFIG_SND_SOC_WM8711 is not set
> # CONFIG_SND_SOC_WM8728 is not set
> # CONFIG_SND_SOC_WM8731_I2C is not set
> # CONFIG_SND_SOC_WM8731_SPI is not set
> # CONFIG_SND_SOC_WM8737 is not set
> # CONFIG_SND_SOC_WM8741 is not set
> # CONFIG_SND_SOC_WM8750 is not set
> # CONFIG_SND_SOC_WM8753 is not set
> # CONFIG_SND_SOC_WM8770 is not set
> # CONFIG_SND_SOC_WM8776 is not set
> # CONFIG_SND_SOC_WM8782 is not set
> # CONFIG_SND_SOC_WM8804_I2C is not set
> # CONFIG_SND_SOC_WM8804_SPI is not set
> # CONFIG_SND_SOC_WM8903 is not set
> # CONFIG_SND_SOC_WM8904 is not set
> # CONFIG_SND_SOC_WM8940 is not set
> # CONFIG_SND_SOC_WM8960 is not set
> # CONFIG_SND_SOC_WM8962 is not set
> # CONFIG_SND_SOC_WM8974 is not set
> # CONFIG_SND_SOC_WM8978 is not set
> # CONFIG_SND_SOC_WM8985 is not set
> # CONFIG_SND_SOC_WSA881X is not set
> # CONFIG_SND_SOC_WSA883X is not set
> # CONFIG_SND_SOC_ZL38060 is not set
> # CONFIG_SND_SOC_MAX9759 is not set
> # CONFIG_SND_SOC_MT6351 is not set
> # CONFIG_SND_SOC_MT6358 is not set
> # CONFIG_SND_SOC_MT6660 is not set
> # CONFIG_SND_SOC_NAU8315 is not set
> # CONFIG_SND_SOC_NAU8540 is not set
> # CONFIG_SND_SOC_NAU8810 is not set
> CONFIG_SND_SOC_NAU8821=3Dm
> # CONFIG_SND_SOC_NAU8822 is not set
> CONFIG_SND_SOC_NAU8824=3Dm
> CONFIG_SND_SOC_NAU8825=3Dm
> # CONFIG_SND_SOC_TPA6130A2 is not set
> # CONFIG_SND_SOC_LPASS_WSA_MACRO is not set
> # CONFIG_SND_SOC_LPASS_VA_MACRO is not set
> # CONFIG_SND_SOC_LPASS_RX_MACRO is not set
> # CONFIG_SND_SOC_LPASS_TX_MACRO is not set
> # end of CODEC drivers
>=20
> # CONFIG_SND_SIMPLE_CARD is not set
> CONFIG_SND_X86=3Dy
> CONFIG_HDMI_LPE_AUDIO=3Dm
> CONFIG_SND_SYNTH_EMUX=3Dm
> CONFIG_SND_XEN_FRONTEND=3Dm
> # CONFIG_SND_VIRTIO is not set
> CONFIG_AC97_BUS=3Dm
>=20
> #
> # HID support
> #
> CONFIG_HID=3Dm
> CONFIG_HID_BATTERY_STRENGTH=3Dy
> CONFIG_HIDRAW=3Dy
> CONFIG_UHID=3Dm
> CONFIG_HID_GENERIC=3Dm
>=20
> #
> # Special HID drivers
> #
> CONFIG_HID_A4TECH=3Dm
> CONFIG_HID_ACCUTOUCH=3Dm
> CONFIG_HID_ACRUX=3Dm
> CONFIG_HID_ACRUX_FF=3Dy
> CONFIG_HID_APPLE=3Dm
> CONFIG_HID_APPLEIR=3Dm
> CONFIG_HID_ASUS=3Dm
> CONFIG_HID_AUREAL=3Dm
> CONFIG_HID_BELKIN=3Dm
> CONFIG_HID_BETOP_FF=3Dm
> CONFIG_HID_BIGBEN_FF=3Dm
> CONFIG_HID_CHERRY=3Dm
> CONFIG_HID_CHICONY=3Dm
> CONFIG_HID_CORSAIR=3Dm
> CONFIG_HID_COUGAR=3Dm
> CONFIG_HID_MACALLY=3Dm
> CONFIG_HID_PRODIKEYS=3Dm
> CONFIG_HID_CMEDIA=3Dm
> CONFIG_HID_CP2112=3Dm
> CONFIG_HID_CREATIVE_SB0540=3Dm
> CONFIG_HID_CYPRESS=3Dm
> CONFIG_HID_DRAGONRISE=3Dm
> CONFIG_DRAGONRISE_FF=3Dy
> CONFIG_HID_EMS_FF=3Dm
> CONFIG_HID_ELAN=3Dm
> CONFIG_HID_ELECOM=3Dm
> CONFIG_HID_ELO=3Dm
> CONFIG_HID_EZKEY=3Dm
> CONFIG_HID_FT260=3Dm
> CONFIG_HID_GEMBIRD=3Dm
> CONFIG_HID_GFRM=3Dm
> CONFIG_HID_GLORIOUS=3Dm
> CONFIG_HID_HOLTEK=3Dm
> CONFIG_HOLTEK_FF=3Dy
> CONFIG_HID_VIVALDI_COMMON=3Dm
> CONFIG_HID_GOOGLE_HAMMER=3Dm
> CONFIG_HID_VIVALDI=3Dm
> CONFIG_HID_GT683R=3Dm
> CONFIG_HID_KEYTOUCH=3Dm
> CONFIG_HID_KYE=3Dm
> CONFIG_HID_UCLOGIC=3Dm
> CONFIG_HID_WALTOP=3Dm
> CONFIG_HID_VIEWSONIC=3Dm
> # CONFIG_HID_VRC2 is not set
> # CONFIG_HID_XIAOMI is not set
> CONFIG_HID_GYRATION=3Dm
> CONFIG_HID_ICADE=3Dm
> CONFIG_HID_ITE=3Dm
> CONFIG_HID_JABRA=3Dm
> CONFIG_HID_TWINHAN=3Dm
> CONFIG_HID_KENSINGTON=3Dm
> CONFIG_HID_LCPOWER=3Dm
> CONFIG_HID_LED=3Dm
> CONFIG_HID_LENOVO=3Dm
> # CONFIG_HID_LETSKETCH is not set
> CONFIG_HID_LOGITECH=3Dm
> CONFIG_HID_LOGITECH_DJ=3Dm
> CONFIG_HID_LOGITECH_HIDPP=3Dm
> CONFIG_LOGITECH_FF=3Dy
> CONFIG_LOGIRUMBLEPAD2_FF=3Dy
> CONFIG_LOGIG940_FF=3Dy
> CONFIG_LOGIWHEELS_FF=3Dy
> CONFIG_HID_MAGICMOUSE=3Dm
> CONFIG_HID_MALTRON=3Dm
> CONFIG_HID_MAYFLASH=3Dm
> # CONFIG_HID_MEGAWORLD_FF is not set
> CONFIG_HID_REDRAGON=3Dm
> CONFIG_HID_MICROSOFT=3Dm
> CONFIG_HID_MONTEREY=3Dm
> CONFIG_HID_MULTITOUCH=3Dm
> CONFIG_HID_NINTENDO=3Dm
> CONFIG_NINTENDO_FF=3Dy
> CONFIG_HID_NTI=3Dm
> CONFIG_HID_NTRIG=3Dm
> CONFIG_HID_ORTEK=3Dm
> CONFIG_HID_PANTHERLORD=3Dm
> CONFIG_PANTHERLORD_FF=3Dy
> CONFIG_HID_PENMOUNT=3Dm
> CONFIG_HID_PETALYNX=3Dm
> CONFIG_HID_PICOLCD=3Dm
> CONFIG_HID_PICOLCD_FB=3Dy
> CONFIG_HID_PICOLCD_BACKLIGHT=3Dy
> CONFIG_HID_PICOLCD_LEDS=3Dy
> CONFIG_HID_PICOLCD_CIR=3Dy
> CONFIG_HID_PLANTRONICS=3Dm
> CONFIG_HID_PLAYSTATION=3Dm
> CONFIG_PLAYSTATION_FF=3Dy
> # CONFIG_HID_PXRC is not set
> # CONFIG_HID_RAZER is not set
> CONFIG_HID_PRIMAX=3Dm
> CONFIG_HID_RETRODE=3Dm
> CONFIG_HID_ROCCAT=3Dm
> CONFIG_HID_SAITEK=3Dm
> CONFIG_HID_SAMSUNG=3Dm
> CONFIG_HID_SEMITEK=3Dm
> # CONFIG_HID_SIGMAMICRO is not set
> CONFIG_HID_SONY=3Dm
> CONFIG_SONY_FF=3Dy
> CONFIG_HID_SPEEDLINK=3Dm
> CONFIG_HID_STEAM=3Dm
> CONFIG_HID_STEELSERIES=3Dm
> CONFIG_HID_SUNPLUS=3Dm
> CONFIG_HID_RMI=3Dm
> CONFIG_HID_GREENASIA=3Dm
> CONFIG_GREENASIA_FF=3Dy
> CONFIG_HID_HYPERV_MOUSE=3Dm
> CONFIG_HID_SMARTJOYPLUS=3Dm
> CONFIG_SMARTJOYPLUS_FF=3Dy
> CONFIG_HID_TIVO=3Dm
> CONFIG_HID_TOPSEED=3Dm
> # CONFIG_HID_TOPRE is not set
> CONFIG_HID_THINGM=3Dm
> CONFIG_HID_THRUSTMASTER=3Dm
> CONFIG_THRUSTMASTER_FF=3Dy
> CONFIG_HID_UDRAW_PS3=3Dm
> CONFIG_HID_U2FZERO=3Dm
> CONFIG_HID_WACOM=3Dm
> CONFIG_HID_WIIMOTE=3Dm
> CONFIG_HID_XINMO=3Dm
> CONFIG_HID_ZEROPLUS=3Dm
> CONFIG_ZEROPLUS_FF=3Dy
> CONFIG_HID_ZYDACRON=3Dm
> CONFIG_HID_SENSOR_HUB=3Dm
> CONFIG_HID_SENSOR_CUSTOM_SENSOR=3Dm
> CONFIG_HID_ALPS=3Dm
> CONFIG_HID_MCP2221=3Dm
> # end of Special HID drivers
>=20
> #
> # USB HID support
> #
> CONFIG_USB_HID=3Dm
> CONFIG_HID_PID=3Dy
> CONFIG_USB_HIDDEV=3Dy
>=20
> #
> # USB HID Boot Protocol drivers
> #
> # CONFIG_USB_KBD is not set
> # CONFIG_USB_MOUSE is not set
> # end of USB HID Boot Protocol drivers
> # end of USB HID support
>=20
> #
> # I2C HID support
> #
> CONFIG_I2C_HID_ACPI=3Dm
> # end of I2C HID support
>=20
> CONFIG_I2C_HID_CORE=3Dm
>=20
> #
> # Intel ISH HID support
> #
> CONFIG_INTEL_ISH_HID=3Dm
> # CONFIG_INTEL_ISH_FIRMWARE_DOWNLOADER is not set
> # end of Intel ISH HID support
>=20
> #
> # AMD SFH HID Support
> #
> CONFIG_AMD_SFH_HID=3Dm
> # end of AMD SFH HID Support
>=20
> #
> # Surface System Aggregator Module HID support
> #
> CONFIG_SURFACE_HID=3Dm
> CONFIG_SURFACE_KBD=3Dm
> # end of Surface System Aggregator Module HID support
>=20
> CONFIG_SURFACE_HID_CORE=3Dm
> # end of HID support
>=20
> CONFIG_USB_OHCI_LITTLE_ENDIAN=3Dy
> CONFIG_USB_SUPPORT=3Dy
> CONFIG_USB_COMMON=3Dm
> CONFIG_USB_LED_TRIG=3Dy
> # CONFIG_USB_ULPI_BUS is not set
> # CONFIG_USB_CONN_GPIO is not set
> CONFIG_USB_ARCH_HAS_HCD=3Dy
> CONFIG_USB=3Dm
> CONFIG_USB_PCI=3Dy
> CONFIG_USB_ANNOUNCE_NEW_DEVICES=3Dy
>=20
> #
> # Miscellaneous USB options
> #
> CONFIG_USB_DEFAULT_PERSIST=3Dy
> # CONFIG_USB_FEW_INIT_RETRIES is not set
> CONFIG_USB_DYNAMIC_MINORS=3Dy
> # CONFIG_USB_OTG is not set
> # CONFIG_USB_OTG_PRODUCTLIST is not set
> # CONFIG_USB_OTG_DISABLE_EXTERNAL_HUB is not set
> CONFIG_USB_LEDS_TRIGGER_USBPORT=3Dm
> CONFIG_USB_AUTOSUSPEND_DELAY=3D2
> CONFIG_USB_MON=3Dm
>=20
> #
> # USB Host Controller Drivers
> #
> # CONFIG_USB_C67X00_HCD is not set
> CONFIG_USB_XHCI_HCD=3Dm
> # CONFIG_USB_XHCI_DBGCAP is not set
> CONFIG_USB_XHCI_PCI=3Dm
> # CONFIG_USB_XHCI_PCI_RENESAS is not set
> # CONFIG_USB_XHCI_PLATFORM is not set
> CONFIG_USB_EHCI_HCD=3Dm
> CONFIG_USB_EHCI_ROOT_HUB_TT=3Dy
> CONFIG_USB_EHCI_TT_NEWSCHED=3Dy
> CONFIG_USB_EHCI_PCI=3Dm
> # CONFIG_USB_EHCI_FSL is not set
> # CONFIG_USB_EHCI_HCD_PLATFORM is not set
> # CONFIG_USB_OXU210HP_HCD is not set
> # CONFIG_USB_ISP116X_HCD is not set
> # CONFIG_USB_FOTG210_HCD is not set
> # CONFIG_USB_MAX3421_HCD is not set
> CONFIG_USB_OHCI_HCD=3Dm
> CONFIG_USB_OHCI_HCD_PCI=3Dm
> # CONFIG_USB_OHCI_HCD_SSB is not set
> # CONFIG_USB_OHCI_HCD_PLATFORM is not set
> CONFIG_USB_UHCI_HCD=3Dm
> CONFIG_USB_U132_HCD=3Dm
> CONFIG_USB_SL811_HCD=3Dm
> # CONFIG_USB_SL811_HCD_ISO is not set
> CONFIG_USB_SL811_CS=3Dm
> # CONFIG_USB_R8A66597_HCD is not set
> # CONFIG_USB_HCD_BCMA is not set
> # CONFIG_USB_HCD_SSB is not set
> # CONFIG_USB_HCD_TEST_MODE is not set
> # CONFIG_USB_XEN_HCD is not set
>=20
> #
> # USB Device Class drivers
> #
> CONFIG_USB_ACM=3Dm
> CONFIG_USB_PRINTER=3Dm
> CONFIG_USB_WDM=3Dm
> CONFIG_USB_TMC=3Dm
>=20
> #
> # NOTE: USB_STORAGE depends on SCSI but BLK_DEV_SD may
> #
>=20
> #
> # also be needed; see USB_STORAGE Help for more info
> #
> CONFIG_USB_STORAGE=3Dm
> # CONFIG_USB_STORAGE_DEBUG is not set
> CONFIG_USB_STORAGE_REALTEK=3Dm
> CONFIG_REALTEK_AUTOPM=3Dy
> CONFIG_USB_STORAGE_DATAFAB=3Dm
> CONFIG_USB_STORAGE_FREECOM=3Dm
> CONFIG_USB_STORAGE_ISD200=3Dm
> CONFIG_USB_STORAGE_USBAT=3Dm
> CONFIG_USB_STORAGE_SDDR09=3Dm
> CONFIG_USB_STORAGE_SDDR55=3Dm
> CONFIG_USB_STORAGE_JUMPSHOT=3Dm
> CONFIG_USB_STORAGE_ALAUDA=3Dm
> CONFIG_USB_STORAGE_ONETOUCH=3Dm
> CONFIG_USB_STORAGE_KARMA=3Dm
> CONFIG_USB_STORAGE_CYPRESS_ATACB=3Dm
> CONFIG_USB_STORAGE_ENE_UB6250=3Dm
> CONFIG_USB_UAS=3Dm
>=20
> #
> # USB Imaging devices
> #
> CONFIG_USB_MDC800=3Dm
> CONFIG_USB_MICROTEK=3Dm
> CONFIG_USBIP_CORE=3Dm
> CONFIG_USBIP_VHCI_HCD=3Dm
> CONFIG_USBIP_VHCI_HC_PORTS=3D15
> CONFIG_USBIP_VHCI_NR_HCS=3D8
> CONFIG_USBIP_HOST=3Dm
> CONFIG_USBIP_VUDC=3Dm
> # CONFIG_USBIP_DEBUG is not set
> # CONFIG_USB_CDNS_SUPPORT is not set
> # CONFIG_USB_MUSB_HDRC is not set
> # CONFIG_USB_DWC3 is not set
> # CONFIG_USB_DWC2 is not set
> # CONFIG_USB_CHIPIDEA is not set
> # CONFIG_USB_ISP1760 is not set
>=20
> #
> # USB port drivers
> #
> CONFIG_USB_USS720=3Dm
> CONFIG_USB_SERIAL=3Dm
> CONFIG_USB_SERIAL_GENERIC=3Dy
> CONFIG_USB_SERIAL_SIMPLE=3Dm
> CONFIG_USB_SERIAL_AIRCABLE=3Dm
> CONFIG_USB_SERIAL_ARK3116=3Dm
> CONFIG_USB_SERIAL_BELKIN=3Dm
> CONFIG_USB_SERIAL_CH341=3Dm
> CONFIG_USB_SERIAL_WHITEHEAT=3Dm
> CONFIG_USB_SERIAL_DIGI_ACCELEPORT=3Dm
> CONFIG_USB_SERIAL_CP210X=3Dm
> CONFIG_USB_SERIAL_CYPRESS_M8=3Dm
> CONFIG_USB_SERIAL_EMPEG=3Dm
> CONFIG_USB_SERIAL_FTDI_SIO=3Dm
> CONFIG_USB_SERIAL_VISOR=3Dm
> CONFIG_USB_SERIAL_IPAQ=3Dm
> CONFIG_USB_SERIAL_IR=3Dm
> CONFIG_USB_SERIAL_EDGEPORT=3Dm
> CONFIG_USB_SERIAL_EDGEPORT_TI=3Dm
> CONFIG_USB_SERIAL_F81232=3Dm
> CONFIG_USB_SERIAL_F8153X=3Dm
> CONFIG_USB_SERIAL_GARMIN=3Dm
> CONFIG_USB_SERIAL_IPW=3Dm
> CONFIG_USB_SERIAL_IUU=3Dm
> CONFIG_USB_SERIAL_KEYSPAN_PDA=3Dm
> CONFIG_USB_SERIAL_KEYSPAN=3Dm
> CONFIG_USB_SERIAL_KLSI=3Dm
> CONFIG_USB_SERIAL_KOBIL_SCT=3Dm
> CONFIG_USB_SERIAL_MCT_U232=3Dm
> CONFIG_USB_SERIAL_METRO=3Dm
> CONFIG_USB_SERIAL_MOS7720=3Dm
> CONFIG_USB_SERIAL_MOS7715_PARPORT=3Dy
> CONFIG_USB_SERIAL_MOS7840=3Dm
> CONFIG_USB_SERIAL_MXUPORT=3Dm
> CONFIG_USB_SERIAL_NAVMAN=3Dm
> CONFIG_USB_SERIAL_PL2303=3Dm
> CONFIG_USB_SERIAL_OTI6858=3Dm
> CONFIG_USB_SERIAL_QCAUX=3Dm
> CONFIG_USB_SERIAL_QUALCOMM=3Dm
> CONFIG_USB_SERIAL_SPCP8X5=3Dm
> CONFIG_USB_SERIAL_SAFE=3Dm
> # CONFIG_USB_SERIAL_SAFE_PADDED is not set
> CONFIG_USB_SERIAL_SIERRAWIRELESS=3Dm
> CONFIG_USB_SERIAL_SYMBOL=3Dm
> CONFIG_USB_SERIAL_TI=3Dm
> CONFIG_USB_SERIAL_CYBERJACK=3Dm
> CONFIG_USB_SERIAL_WWAN=3Dm
> CONFIG_USB_SERIAL_OPTION=3Dm
> CONFIG_USB_SERIAL_OMNINET=3Dm
> CONFIG_USB_SERIAL_OPTICON=3Dm
> CONFIG_USB_SERIAL_XSENS_MT=3Dm
> CONFIG_USB_SERIAL_WISHBONE=3Dm
> CONFIG_USB_SERIAL_SSU100=3Dm
> CONFIG_USB_SERIAL_QT2=3Dm
> CONFIG_USB_SERIAL_UPD78F0730=3Dm
> CONFIG_USB_SERIAL_XR=3Dm
> CONFIG_USB_SERIAL_DEBUG=3Dm
>=20
> #
> # USB Miscellaneous drivers
> #
> CONFIG_USB_EMI62=3Dm
> CONFIG_USB_EMI26=3Dm
> CONFIG_USB_ADUTUX=3Dm
> CONFIG_USB_SEVSEG=3Dm
> CONFIG_USB_LEGOTOWER=3Dm
> CONFIG_USB_LCD=3Dm
> CONFIG_USB_CYPRESS_CY7C63=3Dm
> CONFIG_USB_CYTHERM=3Dm
> CONFIG_USB_IDMOUSE=3Dm
> CONFIG_USB_FTDI_ELAN=3Dm
> CONFIG_USB_APPLEDISPLAY=3Dm
> CONFIG_APPLE_MFI_FASTCHARGE=3Dm
> CONFIG_USB_SISUSBVGA=3Dm
> CONFIG_USB_LD=3Dm
> CONFIG_USB_TRANCEVIBRATOR=3Dm
> CONFIG_USB_IOWARRIOR=3Dm
> CONFIG_USB_TEST=3Dm
> CONFIG_USB_EHSET_TEST_FIXTURE=3Dm
> CONFIG_USB_ISIGHTFW=3Dm
> CONFIG_USB_YUREX=3Dm
> CONFIG_USB_EZUSB_FX2=3Dm
> # CONFIG_USB_HUB_USB251XB is not set
> # CONFIG_USB_HSIC_USB3503 is not set
> # CONFIG_USB_HSIC_USB4604 is not set
> # CONFIG_USB_LINK_LAYER_TEST is not set
> CONFIG_USB_CHAOSKEY=3Dm
> CONFIG_USB_ATM=3Dm
> CONFIG_USB_SPEEDTOUCH=3Dm
> CONFIG_USB_CXACRU=3Dm
> CONFIG_USB_UEAGLEATM=3Dm
> CONFIG_USB_XUSBATM=3Dm
>=20
> #
> # USB Physical Layer drivers
> #
> # CONFIG_NOP_USB_XCEIV is not set
> # CONFIG_USB_GPIO_VBUS is not set
> # CONFIG_USB_ISP1301 is not set
> # end of USB Physical Layer drivers
>=20
> CONFIG_USB_GADGET=3Dm
> # CONFIG_USB_GADGET_DEBUG is not set
> # CONFIG_USB_GADGET_DEBUG_FILES is not set
> # CONFIG_USB_GADGET_DEBUG_FS is not set
> CONFIG_USB_GADGET_VBUS_DRAW=3D2
> CONFIG_USB_GADGET_STORAGE_NUM_BUFFERS=3D2
> # CONFIG_U_SERIAL_CONSOLE is not set
>=20
> #
> # USB Peripheral Controller
> #
> # CONFIG_USB_FOTG210_UDC is not set
> # CONFIG_USB_GR_UDC is not set
> # CONFIG_USB_R8A66597 is not set
> # CONFIG_USB_PXA27X is not set
> # CONFIG_USB_MV_UDC is not set
> # CONFIG_USB_MV_U3D is not set
> # CONFIG_USB_M66592 is not set
> # CONFIG_USB_BDC_UDC is not set
> # CONFIG_USB_AMD5536UDC is not set
> # CONFIG_USB_NET2272 is not set
> CONFIG_USB_NET2280=3Dm
> # CONFIG_USB_GOKU is not set
> CONFIG_USB_EG20T=3Dm
> # CONFIG_USB_MAX3420_UDC is not set
> CONFIG_USB_DUMMY_HCD=3Dm
> # end of USB Peripheral Controller
>=20
> CONFIG_USB_LIBCOMPOSITE=3Dm
> CONFIG_USB_F_ACM=3Dm
> CONFIG_USB_F_SS_LB=3Dm
> CONFIG_USB_U_SERIAL=3Dm
> CONFIG_USB_U_ETHER=3Dm
> CONFIG_USB_U_AUDIO=3Dm
> CONFIG_USB_F_SERIAL=3Dm
> CONFIG_USB_F_OBEX=3Dm
> CONFIG_USB_F_NCM=3Dm
> CONFIG_USB_F_ECM=3Dm
> CONFIG_USB_F_PHONET=3Dm
> CONFIG_USB_F_EEM=3Dm
> CONFIG_USB_F_SUBSET=3Dm
> CONFIG_USB_F_RNDIS=3Dm
> CONFIG_USB_F_MASS_STORAGE=3Dm
> CONFIG_USB_F_FS=3Dm
> CONFIG_USB_F_UAC1=3Dm
> CONFIG_USB_F_UAC2=3Dm
> CONFIG_USB_F_UVC=3Dm
> CONFIG_USB_F_MIDI=3Dm
> CONFIG_USB_F_HID=3Dm
> CONFIG_USB_F_PRINTER=3Dm
> CONFIG_USB_CONFIGFS=3Dm
> CONFIG_USB_CONFIGFS_SERIAL=3Dy
> CONFIG_USB_CONFIGFS_ACM=3Dy
> CONFIG_USB_CONFIGFS_OBEX=3Dy
> CONFIG_USB_CONFIGFS_NCM=3Dy
> CONFIG_USB_CONFIGFS_ECM=3Dy
> CONFIG_USB_CONFIGFS_ECM_SUBSET=3Dy
> CONFIG_USB_CONFIGFS_RNDIS=3Dy
> CONFIG_USB_CONFIGFS_EEM=3Dy
> CONFIG_USB_CONFIGFS_PHONET=3Dy
> CONFIG_USB_CONFIGFS_MASS_STORAGE=3Dy
> CONFIG_USB_CONFIGFS_F_LB_SS=3Dy
> CONFIG_USB_CONFIGFS_F_FS=3Dy
> CONFIG_USB_CONFIGFS_F_UAC1=3Dy
> # CONFIG_USB_CONFIGFS_F_UAC1_LEGACY is not set
> CONFIG_USB_CONFIGFS_F_UAC2=3Dy
> CONFIG_USB_CONFIGFS_F_MIDI=3Dy
> CONFIG_USB_CONFIGFS_F_HID=3Dy
> CONFIG_USB_CONFIGFS_F_UVC=3Dy
> CONFIG_USB_CONFIGFS_F_PRINTER=3Dy
> # CONFIG_USB_CONFIGFS_F_TCM is not set
>=20
> #
> # USB Gadget precomposed configurations
> #
> # CONFIG_USB_ZERO is not set
> # CONFIG_USB_AUDIO is not set
> CONFIG_USB_ETH=3Dm
> CONFIG_USB_ETH_RNDIS=3Dy
> # CONFIG_USB_ETH_EEM is not set
> # CONFIG_USB_G_NCM is not set
> CONFIG_USB_GADGETFS=3Dm
> CONFIG_USB_FUNCTIONFS=3Dm
> CONFIG_USB_FUNCTIONFS_ETH=3Dy
> CONFIG_USB_FUNCTIONFS_RNDIS=3Dy
> CONFIG_USB_FUNCTIONFS_GENERIC=3Dy
> # CONFIG_USB_MASS_STORAGE is not set
> # CONFIG_USB_GADGET_TARGET is not set
> CONFIG_USB_G_SERIAL=3Dm
> # CONFIG_USB_MIDI_GADGET is not set
> # CONFIG_USB_G_PRINTER is not set
> # CONFIG_USB_CDC_COMPOSITE is not set
> # CONFIG_USB_G_NOKIA is not set
> # CONFIG_USB_G_ACM_MS is not set
> # CONFIG_USB_G_MULTI is not set
> # CONFIG_USB_G_HID is not set
> # CONFIG_USB_G_DBGP is not set
> # CONFIG_USB_G_WEBCAM is not set
> # CONFIG_USB_RAW_GADGET is not set
> # end of USB Gadget precomposed configurations
>=20
> CONFIG_TYPEC=3Dm
> CONFIG_TYPEC_TCPM=3Dm
> # CONFIG_TYPEC_TCPCI is not set
> CONFIG_TYPEC_FUSB302=3Dm
> # CONFIG_TYPEC_WCOVE is not set
> CONFIG_TYPEC_UCSI=3Dm
> # CONFIG_UCSI_CCG is not set
> CONFIG_UCSI_ACPI=3Dm
> # CONFIG_UCSI_STM32G0 is not set
> CONFIG_TYPEC_TPS6598X=3Dm
> # CONFIG_TYPEC_ANX7411 is not set
> # CONFIG_TYPEC_RT1719 is not set
> # CONFIG_TYPEC_HD3SS3220 is not set
> # CONFIG_TYPEC_STUSB160X is not set
> # CONFIG_TYPEC_WUSB3801 is not set
>=20
> #
> # USB Type-C Multiplexer/DeMultiplexer Switch support
> #
> # CONFIG_TYPEC_MUX_FSA4480 is not set
> CONFIG_TYPEC_MUX_PI3USB30532=3Dm
> # CONFIG_TYPEC_MUX_INTEL_PMC is not set
> # end of USB Type-C Multiplexer/DeMultiplexer Switch support
>=20
> #
> # USB Type-C Alternate Mode drivers
> #
> CONFIG_TYPEC_DP_ALTMODE=3Dm
> CONFIG_TYPEC_NVIDIA_ALTMODE=3Dm
> # end of USB Type-C Alternate Mode drivers
>=20
> CONFIG_USB_ROLE_SWITCH=3Dm
> CONFIG_USB_ROLES_INTEL_XHCI=3Dm
> CONFIG_MMC=3Dm
> CONFIG_MMC_BLOCK=3Dm
> CONFIG_MMC_BLOCK_MINORS=3D256
> CONFIG_SDIO_UART=3Dm
> # CONFIG_MMC_TEST is not set
>=20
> #
> # MMC/SD/SDIO Host Controller Drivers
> #
> # CONFIG_MMC_DEBUG is not set
> CONFIG_MMC_SDHCI=3Dm
> CONFIG_MMC_SDHCI_IO_ACCESSORS=3Dy
> CONFIG_MMC_SDHCI_PCI=3Dm
> CONFIG_MMC_RICOH_MMC=3Dy
> CONFIG_MMC_SDHCI_ACPI=3Dm
> # CONFIG_MMC_SDHCI_PLTFM is not set
> CONFIG_MMC_WBSD=3Dm
> CONFIG_MMC_TIFM_SD=3Dm
> # CONFIG_MMC_SPI is not set
> CONFIG_MMC_SDRICOH_CS=3Dm
> CONFIG_MMC_CB710=3Dm
> CONFIG_MMC_VIA_SDMMC=3Dm
> CONFIG_MMC_VUB300=3Dm
> CONFIG_MMC_USHC=3Dm
> # CONFIG_MMC_USDHI6ROL0 is not set
> CONFIG_MMC_REALTEK_PCI=3Dm
> CONFIG_MMC_REALTEK_USB=3Dm
> CONFIG_MMC_CQHCI=3Dm
> # CONFIG_MMC_HSQ is not set
> CONFIG_MMC_TOSHIBA_PCI=3Dm
> # CONFIG_MMC_MTK is not set
> CONFIG_SCSI_UFSHCD=3Dm
> # CONFIG_SCSI_UFS_BSG is not set
> # CONFIG_SCSI_UFS_HPB is not set
> # CONFIG_SCSI_UFS_HWMON is not set
> CONFIG_SCSI_UFSHCD_PCI=3Dm
> # CONFIG_SCSI_UFS_DWC_TC_PCI is not set
> # CONFIG_SCSI_UFSHCD_PLATFORM is not set
> CONFIG_MEMSTICK=3Dm
> # CONFIG_MEMSTICK_DEBUG is not set
>=20
> #
> # MemoryStick drivers
> #
> # CONFIG_MEMSTICK_UNSAFE_RESUME is not set
> CONFIG_MSPRO_BLOCK=3Dm
> # CONFIG_MS_BLOCK is not set
>=20
> #
> # MemoryStick Host Controller Drivers
> #
> CONFIG_MEMSTICK_TIFM_MS=3Dm
> CONFIG_MEMSTICK_JMICRON_38X=3Dm
> CONFIG_MEMSTICK_R592=3Dm
> CONFIG_MEMSTICK_REALTEK_PCI=3Dm
> CONFIG_MEMSTICK_REALTEK_USB=3Dm
> CONFIG_NEW_LEDS=3Dy
> CONFIG_LEDS_CLASS=3Dy
> # CONFIG_LEDS_CLASS_FLASH is not set
> CONFIG_LEDS_CLASS_MULTICOLOR=3Dm
> CONFIG_LEDS_BRIGHTNESS_HW_CHANGED=3Dy
>=20
> #
> # LED drivers
> #
> CONFIG_LEDS_APU=3Dm
> # CONFIG_LEDS_LM3530 is not set
> # CONFIG_LEDS_LM3532 is not set
> # CONFIG_LEDS_LM3642 is not set
> # CONFIG_LEDS_PCA9532 is not set
> CONFIG_LEDS_GPIO=3Dm
> CONFIG_LEDS_LP3944=3Dm
> # CONFIG_LEDS_LP3952 is not set
> # CONFIG_LEDS_LP50XX is not set
> CONFIG_LEDS_PCA955X=3Dm
> # CONFIG_LEDS_PCA955X_GPIO is not set
> # CONFIG_LEDS_PCA963X is not set
> CONFIG_LEDS_DAC124S085=3Dm
> # CONFIG_LEDS_PWM is not set
> CONFIG_LEDS_REGULATOR=3Dm
> CONFIG_LEDS_BD2802=3Dm
> CONFIG_LEDS_INTEL_SS4200=3Dm
> CONFIG_LEDS_LT3593=3Dm
> # CONFIG_LEDS_TCA6507 is not set
> # CONFIG_LEDS_TLC591XX is not set
> # CONFIG_LEDS_LM355x is not set
> CONFIG_LEDS_MENF21BMC=3Dm
> # CONFIG_LEDS_IS31FL319X is not set
>=20
> #
> # LED driver for blink(1) USB RGB LED is under Special HID drivers (HID_T=
HINGM)
> #
> # CONFIG_LEDS_BLINKM is not set
> # CONFIG_LEDS_MLXCPLD is not set
> # CONFIG_LEDS_MLXREG is not set
> # CONFIG_LEDS_USER is not set
> # CONFIG_LEDS_NIC78BX is not set
> # CONFIG_LEDS_TI_LMU_COMMON is not set
>=20
> #
> # Flash and Torch LED drivers
> #
>=20
> #
> # RGB LED drivers
> #
> # CONFIG_LEDS_PWM_MULTICOLOR is not set
>=20
> #
> # LED Triggers
> #
> CONFIG_LEDS_TRIGGERS=3Dy
> CONFIG_LEDS_TRIGGER_TIMER=3Dm
> CONFIG_LEDS_TRIGGER_ONESHOT=3Dm
> CONFIG_LEDS_TRIGGER_DISK=3Dy
> CONFIG_LEDS_TRIGGER_MTD=3Dy
> CONFIG_LEDS_TRIGGER_HEARTBEAT=3Dm
> CONFIG_LEDS_TRIGGER_BACKLIGHT=3Dm
> CONFIG_LEDS_TRIGGER_CPU=3Dy
> CONFIG_LEDS_TRIGGER_ACTIVITY=3Dm
> CONFIG_LEDS_TRIGGER_GPIO=3Dm
> CONFIG_LEDS_TRIGGER_DEFAULT_ON=3Dm
>=20
> #
> # iptables trigger is under Netfilter config (LED target)
> #
> CONFIG_LEDS_TRIGGER_TRANSIENT=3Dm
> CONFIG_LEDS_TRIGGER_CAMERA=3Dm
> CONFIG_LEDS_TRIGGER_PANIC=3Dy
> CONFIG_LEDS_TRIGGER_NETDEV=3Dm
> CONFIG_LEDS_TRIGGER_PATTERN=3Dm
> CONFIG_LEDS_TRIGGER_AUDIO=3Dm
> # CONFIG_LEDS_TRIGGER_TTY is not set
>=20
> #
> # Simple LED drivers
> #
> CONFIG_LEDS_SIEMENS_SIMATIC_IPC=3Dm
> CONFIG_ACCESSIBILITY=3Dy
> CONFIG_A11Y_BRAILLE_CONSOLE=3Dy
>=20
> #
> # Speakup console speech
> #
> CONFIG_SPEAKUP=3Dm
> CONFIG_SPEAKUP_SYNTH_ACNTSA=3Dm
> CONFIG_SPEAKUP_SYNTH_APOLLO=3Dm
> CONFIG_SPEAKUP_SYNTH_AUDPTR=3Dm
> CONFIG_SPEAKUP_SYNTH_BNS=3Dm
> CONFIG_SPEAKUP_SYNTH_DECTLK=3Dm
> CONFIG_SPEAKUP_SYNTH_DECEXT=3Dm
> CONFIG_SPEAKUP_SYNTH_LTLK=3Dm
> CONFIG_SPEAKUP_SYNTH_SOFT=3Dm
> CONFIG_SPEAKUP_SYNTH_SPKOUT=3Dm
> CONFIG_SPEAKUP_SYNTH_TXPRT=3Dm
> CONFIG_SPEAKUP_SYNTH_DUMMY=3Dm
> # end of Speakup console speech
>=20
> CONFIG_INFINIBAND=3Dm
> CONFIG_INFINIBAND_USER_MAD=3Dm
> CONFIG_INFINIBAND_USER_ACCESS=3Dm
> CONFIG_INFINIBAND_USER_MEM=3Dy
> CONFIG_INFINIBAND_ON_DEMAND_PAGING=3Dy
> CONFIG_INFINIBAND_ADDR_TRANS=3Dy
> CONFIG_INFINIBAND_ADDR_TRANS_CONFIGFS=3Dy
> CONFIG_INFINIBAND_VIRT_DMA=3Dy
> # CONFIG_INFINIBAND_BNXT_RE is not set
> CONFIG_INFINIBAND_CXGB4=3Dm
> # CONFIG_INFINIBAND_EFA is not set
> # CONFIG_INFINIBAND_ERDMA is not set
> CONFIG_INFINIBAND_HFI1=3Dm
> # CONFIG_HFI1_DEBUG_SDMA_ORDER is not set
> # CONFIG_SDMA_VERBOSITY is not set
> CONFIG_INFINIBAND_IRDMA=3Dm
> CONFIG_MLX4_INFINIBAND=3Dm
> CONFIG_MLX5_INFINIBAND=3Dm
> CONFIG_INFINIBAND_MTHCA=3Dm
> CONFIG_INFINIBAND_MTHCA_DEBUG=3Dy
> CONFIG_INFINIBAND_OCRDMA=3Dm
> CONFIG_INFINIBAND_QEDR=3Dm
> CONFIG_INFINIBAND_QIB=3Dm
> CONFIG_INFINIBAND_QIB_DCA=3Dy
> CONFIG_INFINIBAND_USNIC=3Dm
> # CONFIG_INFINIBAND_VMWARE_PVRDMA is not set
> CONFIG_INFINIBAND_RDMAVT=3Dm
> CONFIG_RDMA_RXE=3Dm
> # CONFIG_RDMA_SIW is not set
> CONFIG_INFINIBAND_IPOIB=3Dm
> CONFIG_INFINIBAND_IPOIB_CM=3Dy
> CONFIG_INFINIBAND_IPOIB_DEBUG=3Dy
> # CONFIG_INFINIBAND_IPOIB_DEBUG_DATA is not set
> CONFIG_INFINIBAND_SRP=3Dm
> CONFIG_INFINIBAND_SRPT=3Dm
> CONFIG_INFINIBAND_ISER=3Dm
> CONFIG_INFINIBAND_ISERT=3Dm
> # CONFIG_INFINIBAND_RTRS_CLIENT is not set
> # CONFIG_INFINIBAND_RTRS_SERVER is not set
> # CONFIG_INFINIBAND_OPA_VNIC is not set
> CONFIG_EDAC_ATOMIC_SCRUB=3Dy
> CONFIG_EDAC_SUPPORT=3Dy
> CONFIG_EDAC=3Dy
> CONFIG_EDAC_LEGACY_SYSFS=3Dy
> # CONFIG_EDAC_DEBUG is not set
> CONFIG_EDAC_DECODE_MCE=3Dm
> # CONFIG_EDAC_GHES is not set
> CONFIG_EDAC_AMD64=3Dm
> CONFIG_EDAC_E752X=3Dm
> CONFIG_EDAC_I82975X=3Dm
> CONFIG_EDAC_I3000=3Dm
> CONFIG_EDAC_I3200=3Dm
> CONFIG_EDAC_IE31200=3Dm
> CONFIG_EDAC_X38=3Dm
> CONFIG_EDAC_I5400=3Dm
> CONFIG_EDAC_I7CORE=3Dm
> CONFIG_EDAC_I5000=3Dm
> CONFIG_EDAC_I5100=3Dm
> CONFIG_EDAC_I7300=3Dm
> CONFIG_EDAC_SBRIDGE=3Dm
> CONFIG_EDAC_SKX=3Dm
> CONFIG_EDAC_I10NM=3Dm
> CONFIG_EDAC_PND2=3Dm
> CONFIG_EDAC_IGEN6=3Dm
> CONFIG_RTC_LIB=3Dy
> CONFIG_RTC_MC146818_LIB=3Dy
> CONFIG_RTC_CLASS=3Dy
> CONFIG_RTC_HCTOSYS=3Dy
> CONFIG_RTC_HCTOSYS_DEVICE=3D"rtc0"
> CONFIG_RTC_SYSTOHC=3Dy
> CONFIG_RTC_SYSTOHC_DEVICE=3D"rtc0"
> # CONFIG_RTC_DEBUG is not set
> CONFIG_RTC_NVMEM=3Dy
>=20
> #
> # RTC interfaces
> #
> CONFIG_RTC_INTF_SYSFS=3Dy
> CONFIG_RTC_INTF_PROC=3Dy
> CONFIG_RTC_INTF_DEV=3Dy
> # CONFIG_RTC_INTF_DEV_UIE_EMUL is not set
> # CONFIG_RTC_DRV_TEST is not set
>=20
> #
> # I2C RTC drivers
> #
> # CONFIG_RTC_DRV_ABB5ZES3 is not set
> # CONFIG_RTC_DRV_ABEOZ9 is not set
> # CONFIG_RTC_DRV_ABX80X is not set
> # CONFIG_RTC_DRV_DS1307 is not set
> # CONFIG_RTC_DRV_DS1374 is not set
> # CONFIG_RTC_DRV_DS1672 is not set
> # CONFIG_RTC_DRV_MAX6900 is not set
> # CONFIG_RTC_DRV_RS5C372 is not set
> # CONFIG_RTC_DRV_ISL1208 is not set
> # CONFIG_RTC_DRV_ISL12022 is not set
> # CONFIG_RTC_DRV_X1205 is not set
> # CONFIG_RTC_DRV_PCF8523 is not set
> # CONFIG_RTC_DRV_PCF85063 is not set
> # CONFIG_RTC_DRV_PCF85363 is not set
> # CONFIG_RTC_DRV_PCF8563 is not set
> # CONFIG_RTC_DRV_PCF8583 is not set
> # CONFIG_RTC_DRV_M41T80 is not set
> # CONFIG_RTC_DRV_BQ32K is not set
> # CONFIG_RTC_DRV_S35390A is not set
> # CONFIG_RTC_DRV_FM3130 is not set
> # CONFIG_RTC_DRV_RX8010 is not set
> # CONFIG_RTC_DRV_RX8581 is not set
> # CONFIG_RTC_DRV_RX8025 is not set
> # CONFIG_RTC_DRV_EM3027 is not set
> # CONFIG_RTC_DRV_RV3028 is not set
> # CONFIG_RTC_DRV_RV3032 is not set
> # CONFIG_RTC_DRV_RV8803 is not set
> # CONFIG_RTC_DRV_SD3078 is not set
>=20
> #
> # SPI RTC drivers
> #
> # CONFIG_RTC_DRV_M41T93 is not set
> # CONFIG_RTC_DRV_M41T94 is not set
> # CONFIG_RTC_DRV_DS1302 is not set
> # CONFIG_RTC_DRV_DS1305 is not set
> # CONFIG_RTC_DRV_DS1343 is not set
> # CONFIG_RTC_DRV_DS1347 is not set
> # CONFIG_RTC_DRV_DS1390 is not set
> # CONFIG_RTC_DRV_MAX6916 is not set
> # CONFIG_RTC_DRV_R9701 is not set
> # CONFIG_RTC_DRV_RX4581 is not set
> # CONFIG_RTC_DRV_RS5C348 is not set
> # CONFIG_RTC_DRV_MAX6902 is not set
> # CONFIG_RTC_DRV_PCF2123 is not set
> # CONFIG_RTC_DRV_MCP795 is not set
> CONFIG_RTC_I2C_AND_SPI=3Dy
>=20
> #
> # SPI and I2C RTC drivers
> #
> # CONFIG_RTC_DRV_DS3232 is not set
> # CONFIG_RTC_DRV_PCF2127 is not set
> # CONFIG_RTC_DRV_RV3029C2 is not set
> # CONFIG_RTC_DRV_RX6110 is not set
>=20
> #
> # Platform RTC drivers
> #
> CONFIG_RTC_DRV_CMOS=3Dy
> # CONFIG_RTC_DRV_DS1286 is not set
> # CONFIG_RTC_DRV_DS1511 is not set
> # CONFIG_RTC_DRV_DS1553 is not set
> # CONFIG_RTC_DRV_DS1685_FAMILY is not set
> # CONFIG_RTC_DRV_DS1742 is not set
> # CONFIG_RTC_DRV_DS2404 is not set
> # CONFIG_RTC_DRV_STK17TA8 is not set
> # CONFIG_RTC_DRV_M48T86 is not set
> # CONFIG_RTC_DRV_M48T35 is not set
> # CONFIG_RTC_DRV_M48T59 is not set
> # CONFIG_RTC_DRV_MSM6242 is not set
> # CONFIG_RTC_DRV_BQ4802 is not set
> # CONFIG_RTC_DRV_RP5C01 is not set
> # CONFIG_RTC_DRV_V3020 is not set
> # CONFIG_RTC_DRV_CROS_EC is not set
>=20
> #
> # on-CPU RTC drivers
> #
> # CONFIG_RTC_DRV_FTRTC010 is not set
>=20
> #
> # HID Sensor RTC drivers
> #
> # CONFIG_RTC_DRV_HID_SENSOR_TIME is not set
> # CONFIG_RTC_DRV_GOLDFISH is not set
> CONFIG_DMADEVICES=3Dy
> # CONFIG_DMADEVICES_DEBUG is not set
>=20
> #
> # DMA Devices
> #
> CONFIG_DMA_ENGINE=3Dy
> CONFIG_DMA_VIRTUAL_CHANNELS=3Dy
> CONFIG_DMA_ACPI=3Dy
> # CONFIG_ALTERA_MSGDMA is not set
> CONFIG_INTEL_IDMA64=3Dm
> CONFIG_INTEL_IDXD_BUS=3Dm
> CONFIG_INTEL_IDXD=3Dm
> # CONFIG_INTEL_IDXD_COMPAT is not set
> CONFIG_INTEL_IDXD_SVM=3Dy
> CONFIG_INTEL_IDXD_PERFMON=3Dy
> CONFIG_INTEL_IOATDMA=3Dm
> # CONFIG_PLX_DMA is not set
> # CONFIG_AMD_PTDMA is not set
> # CONFIG_QCOM_HIDMA_MGMT is not set
> # CONFIG_QCOM_HIDMA is not set
> CONFIG_DW_DMAC_CORE=3Dm
> CONFIG_DW_DMAC=3Dm
> CONFIG_DW_DMAC_PCI=3Dm
> # CONFIG_DW_EDMA is not set
> # CONFIG_DW_EDMA_PCIE is not set
> CONFIG_HSU_DMA=3Dy
> # CONFIG_SF_PDMA is not set
> # CONFIG_INTEL_LDMA is not set
>=20
> #
> # DMA Clients
> #
> CONFIG_ASYNC_TX_DMA=3Dy
> # CONFIG_DMATEST is not set
> CONFIG_DMA_ENGINE_RAID=3Dy
>=20
> #
> # DMABUF options
> #
> CONFIG_SYNC_FILE=3Dy
> # CONFIG_SW_SYNC is not set
> # CONFIG_UDMABUF is not set
> # CONFIG_DMABUF_MOVE_NOTIFY is not set
> # CONFIG_DMABUF_DEBUG is not set
> # CONFIG_DMABUF_SELFTESTS is not set
> # CONFIG_DMABUF_HEAPS is not set
> # CONFIG_DMABUF_SYSFS_STATS is not set
> # end of DMABUF options
>=20
> CONFIG_DCA=3Dm
> # CONFIG_AUXDISPLAY is not set
> # CONFIG_PANEL is not set
> CONFIG_UIO=3Dm
> CONFIG_UIO_CIF=3Dm
> # CONFIG_UIO_PDRV_GENIRQ is not set
> # CONFIG_UIO_DMEM_GENIRQ is not set
> CONFIG_UIO_AEC=3Dm
> CONFIG_UIO_SERCOS3=3Dm
> CONFIG_UIO_PCI_GENERIC=3Dm
> CONFIG_UIO_NETX=3Dm
> # CONFIG_UIO_PRUSS is not set
> CONFIG_UIO_MF624=3Dm
> CONFIG_UIO_HV_GENERIC=3Dm
> CONFIG_VFIO=3Dm
> CONFIG_VFIO_IOMMU_TYPE1=3Dm
> CONFIG_VFIO_VIRQFD=3Dm
> # CONFIG_VFIO_NOIOMMU is not set
> CONFIG_VFIO_PCI_CORE=3Dm
> CONFIG_VFIO_PCI_MMAP=3Dy
> CONFIG_VFIO_PCI_INTX=3Dy
> CONFIG_VFIO_PCI=3Dm
> CONFIG_VFIO_PCI_VGA=3Dy
> CONFIG_VFIO_PCI_IGD=3Dy
> # CONFIG_MLX5_VFIO_PCI is not set
> CONFIG_VFIO_MDEV=3Dm
> CONFIG_IRQ_BYPASS_MANAGER=3Dm
> CONFIG_VIRT_DRIVERS=3Dy
> CONFIG_VMGENID=3Dy
> CONFIG_VBOXGUEST=3Dm
> # CONFIG_NITRO_ENCLAVES is not set
> # CONFIG_EFI_SECRET is not set
> CONFIG_SEV_GUEST=3Dm
> CONFIG_VIRTIO_ANCHOR=3Dy
> CONFIG_VIRTIO=3Dm
> CONFIG_VIRTIO_PCI_LIB=3Dm
> CONFIG_VIRTIO_PCI_LIB_LEGACY=3Dm
> CONFIG_VIRTIO_MENU=3Dy
> CONFIG_VIRTIO_PCI=3Dm
> CONFIG_VIRTIO_PCI_LEGACY=3Dy
> CONFIG_VIRTIO_PMEM=3Dm
> CONFIG_VIRTIO_BALLOON=3Dm
> CONFIG_VIRTIO_MEM=3Dm
> CONFIG_VIRTIO_INPUT=3Dm
> CONFIG_VIRTIO_MMIO=3Dm
> # CONFIG_VIRTIO_MMIO_CMDLINE_DEVICES is not set
> CONFIG_VIRTIO_DMA_SHARED_BUFFER=3Dm
> # CONFIG_VDPA is not set
> CONFIG_VHOST_IOTLB=3Dm
> CONFIG_VHOST=3Dm
> CONFIG_VHOST_MENU=3Dy
> CONFIG_VHOST_NET=3Dm
> CONFIG_VHOST_SCSI=3Dm
> CONFIG_VHOST_VSOCK=3Dm
> # CONFIG_VHOST_CROSS_ENDIAN_LEGACY is not set
>=20
> #
> # Microsoft Hyper-V guest support
> #
> CONFIG_HYPERV=3Dm
> CONFIG_HYPERV_TIMER=3Dy
> CONFIG_HYPERV_UTILS=3Dm
> CONFIG_HYPERV_BALLOON=3Dm
> # end of Microsoft Hyper-V guest support
>=20
> #
> # Xen driver support
> #
> CONFIG_XEN_BALLOON=3Dy
> CONFIG_XEN_BALLOON_MEMORY_HOTPLUG=3Dy
> CONFIG_XEN_MEMORY_HOTPLUG_LIMIT=3D512
> CONFIG_XEN_SCRUB_PAGES_DEFAULT=3Dy
> CONFIG_XEN_DEV_EVTCHN=3Dm
> CONFIG_XEN_BACKEND=3Dy
> CONFIG_XENFS=3Dm
> CONFIG_XEN_COMPAT_XENFS=3Dy
> CONFIG_XEN_SYS_HYPERVISOR=3Dy
> CONFIG_XEN_XENBUS_FRONTEND=3Dy
> CONFIG_XEN_GNTDEV=3Dm
> CONFIG_XEN_GRANT_DEV_ALLOC=3Dm
> # CONFIG_XEN_GRANT_DMA_ALLOC is not set
> CONFIG_SWIOTLB_XEN=3Dy
> CONFIG_XEN_PCI_STUB=3Dy
> CONFIG_XEN_PCIDEV_BACKEND=3Dm
> # CONFIG_XEN_PVCALLS_FRONTEND is not set
> # CONFIG_XEN_PVCALLS_BACKEND is not set
> CONFIG_XEN_SCSI_BACKEND=3Dm
> CONFIG_XEN_PRIVCMD=3Dm
> CONFIG_XEN_ACPI_PROCESSOR=3Dm
> CONFIG_XEN_MCE_LOG=3Dy
> CONFIG_XEN_HAVE_PVMMU=3Dy
> CONFIG_XEN_EFI=3Dy
> CONFIG_XEN_AUTO_XLATE=3Dy
> CONFIG_XEN_ACPI=3Dy
> CONFIG_XEN_SYMS=3Dy
> CONFIG_XEN_HAVE_VPMU=3Dy
> CONFIG_XEN_FRONT_PGDIR_SHBUF=3Dm
> CONFIG_XEN_UNPOPULATED_ALLOC=3Dy
> # CONFIG_XEN_VIRTIO is not set
> # end of Xen driver support
>=20
> # CONFIG_GREYBUS is not set
> CONFIG_COMEDI=3Dm
> # CONFIG_COMEDI_DEBUG is not set
> CONFIG_COMEDI_DEFAULT_BUF_SIZE_KB=3D2048
> CONFIG_COMEDI_DEFAULT_BUF_MAXSIZE_KB=3D20480
> CONFIG_COMEDI_MISC_DRIVERS=3Dy
> CONFIG_COMEDI_BOND=3Dm
> CONFIG_COMEDI_TEST=3Dm
> CONFIG_COMEDI_PARPORT=3Dm
> # CONFIG_COMEDI_ISA_DRIVERS is not set
> CONFIG_COMEDI_PCI_DRIVERS=3Dm
> CONFIG_COMEDI_8255_PCI=3Dm
> CONFIG_COMEDI_ADDI_WATCHDOG=3Dm
> CONFIG_COMEDI_ADDI_APCI_1032=3Dm
> CONFIG_COMEDI_ADDI_APCI_1500=3Dm
> CONFIG_COMEDI_ADDI_APCI_1516=3Dm
> CONFIG_COMEDI_ADDI_APCI_1564=3Dm
> CONFIG_COMEDI_ADDI_APCI_16XX=3Dm
> CONFIG_COMEDI_ADDI_APCI_2032=3Dm
> CONFIG_COMEDI_ADDI_APCI_2200=3Dm
> CONFIG_COMEDI_ADDI_APCI_3120=3Dm
> CONFIG_COMEDI_ADDI_APCI_3501=3Dm
> CONFIG_COMEDI_ADDI_APCI_3XXX=3Dm
> CONFIG_COMEDI_ADL_PCI6208=3Dm
> CONFIG_COMEDI_ADL_PCI7X3X=3Dm
> CONFIG_COMEDI_ADL_PCI8164=3Dm
> CONFIG_COMEDI_ADL_PCI9111=3Dm
> CONFIG_COMEDI_ADL_PCI9118=3Dm
> CONFIG_COMEDI_ADV_PCI1710=3Dm
> CONFIG_COMEDI_ADV_PCI1720=3Dm
> CONFIG_COMEDI_ADV_PCI1723=3Dm
> CONFIG_COMEDI_ADV_PCI1724=3Dm
> CONFIG_COMEDI_ADV_PCI1760=3Dm
> CONFIG_COMEDI_ADV_PCI_DIO=3Dm
> CONFIG_COMEDI_AMPLC_DIO200_PCI=3Dm
> CONFIG_COMEDI_AMPLC_PC236_PCI=3Dm
> CONFIG_COMEDI_AMPLC_PC263_PCI=3Dm
> CONFIG_COMEDI_AMPLC_PCI224=3Dm
> CONFIG_COMEDI_AMPLC_PCI230=3Dm
> CONFIG_COMEDI_CONTEC_PCI_DIO=3Dm
> CONFIG_COMEDI_DAS08_PCI=3Dm
> CONFIG_COMEDI_DT3000=3Dm
> CONFIG_COMEDI_DYNA_PCI10XX=3Dm
> CONFIG_COMEDI_GSC_HPDI=3Dm
> CONFIG_COMEDI_MF6X4=3Dm
> CONFIG_COMEDI_ICP_MULTI=3Dm
> CONFIG_COMEDI_DAQBOARD2000=3Dm
> CONFIG_COMEDI_JR3_PCI=3Dm
> CONFIG_COMEDI_KE_COUNTER=3Dm
> CONFIG_COMEDI_CB_PCIDAS64=3Dm
> CONFIG_COMEDI_CB_PCIDAS=3Dm
> CONFIG_COMEDI_CB_PCIDDA=3Dm
> CONFIG_COMEDI_CB_PCIMDAS=3Dm
> CONFIG_COMEDI_CB_PCIMDDA=3Dm
> CONFIG_COMEDI_ME4000=3Dm
> CONFIG_COMEDI_ME_DAQ=3Dm
> CONFIG_COMEDI_NI_6527=3Dm
> CONFIG_COMEDI_NI_65XX=3Dm
> CONFIG_COMEDI_NI_660X=3Dm
> CONFIG_COMEDI_NI_670X=3Dm
> CONFIG_COMEDI_NI_LABPC_PCI=3Dm
> CONFIG_COMEDI_NI_PCIDIO=3Dm
> CONFIG_COMEDI_NI_PCIMIO=3Dm
> CONFIG_COMEDI_RTD520=3Dm
> CONFIG_COMEDI_S626=3Dm
> CONFIG_COMEDI_MITE=3Dm
> CONFIG_COMEDI_NI_TIOCMD=3Dm
> CONFIG_COMEDI_PCMCIA_DRIVERS=3Dm
> CONFIG_COMEDI_CB_DAS16_CS=3Dm
> CONFIG_COMEDI_DAS08_CS=3Dm
> CONFIG_COMEDI_NI_DAQ_700_CS=3Dm
> CONFIG_COMEDI_NI_DAQ_DIO24_CS=3Dm
> CONFIG_COMEDI_NI_LABPC_CS=3Dm
> CONFIG_COMEDI_NI_MIO_CS=3Dm
> CONFIG_COMEDI_QUATECH_DAQP_CS=3Dm
> CONFIG_COMEDI_USB_DRIVERS=3Dm
> CONFIG_COMEDI_DT9812=3Dm
> CONFIG_COMEDI_NI_USB6501=3Dm
> CONFIG_COMEDI_USBDUX=3Dm
> CONFIG_COMEDI_USBDUXFAST=3Dm
> CONFIG_COMEDI_USBDUXSIGMA=3Dm
> CONFIG_COMEDI_VMK80XX=3Dm
> CONFIG_COMEDI_8254=3Dm
> CONFIG_COMEDI_8255=3Dm
> CONFIG_COMEDI_8255_SA=3Dm
> CONFIG_COMEDI_KCOMEDILIB=3Dm
> CONFIG_COMEDI_AMPLC_DIO200=3Dm
> CONFIG_COMEDI_AMPLC_PC236=3Dm
> CONFIG_COMEDI_DAS08=3Dm
> CONFIG_COMEDI_NI_LABPC=3Dm
> CONFIG_COMEDI_NI_TIO=3Dm
> CONFIG_COMEDI_NI_ROUTING=3Dm
> # CONFIG_COMEDI_TESTS is not set
> CONFIG_STAGING=3Dy
> CONFIG_PRISM2_USB=3Dm
> CONFIG_RTL8192U=3Dm
> CONFIG_RTLLIB=3Dm
> CONFIG_RTLLIB_CRYPTO_CCMP=3Dm
> CONFIG_RTLLIB_CRYPTO_TKIP=3Dm
> CONFIG_RTLLIB_CRYPTO_WEP=3Dm
> CONFIG_RTL8192E=3Dm
> CONFIG_RTL8723BS=3Dm
> CONFIG_R8712U=3Dm
> CONFIG_R8188EU=3Dm
> CONFIG_RTS5208=3Dm
> # CONFIG_VT6655 is not set
> CONFIG_VT6656=3Dm
>=20
> #
> # IIO staging drivers
> #
>=20
> #
> # Accelerometers
> #
> # CONFIG_ADIS16203 is not set
> # CONFIG_ADIS16240 is not set
> # end of Accelerometers
>=20
> #
> # Analog to digital converters
> #
> # CONFIG_AD7816 is not set
> # end of Analog to digital converters
>=20
> #
> # Analog digital bi-direction converters
> #
> # CONFIG_ADT7316 is not set
> # end of Analog digital bi-direction converters
>=20
> #
> # Direct Digital Synthesis
> #
> # CONFIG_AD9832 is not set
> # CONFIG_AD9834 is not set
> # end of Direct Digital Synthesis
>=20
> #
> # Network Analyzer, Impedance Converters
> #
> # CONFIG_AD5933 is not set
> # end of Network Analyzer, Impedance Converters
>=20
> #
> # Active energy metering IC
> #
> # CONFIG_ADE7854 is not set
> # end of Active energy metering IC
>=20
> #
> # Resolver to digital converters
> #
> # CONFIG_AD2S1210 is not set
> # end of Resolver to digital converters
> # end of IIO staging drivers
>=20
> # CONFIG_FB_SM750 is not set
> CONFIG_STAGING_MEDIA=3Dy
> # CONFIG_INTEL_ATOMISP is not set
> # CONFIG_VIDEO_IPU3_IMGU is not set
> # CONFIG_STAGING_MEDIA_DEPRECATED is not set
> # CONFIG_LTE_GDM724X is not set
> # CONFIG_FB_TFT is not set
> # CONFIG_KS7010 is not set
> # CONFIG_PI433 is not set
> # CONFIG_FIELDBUS_DEV is not set
> CONFIG_QLGE=3Dm
> # CONFIG_VME_BUS is not set
> CONFIG_CHROME_PLATFORMS=3Dy
> CONFIG_CHROMEOS_ACPI=3Dm
> CONFIG_CHROMEOS_LAPTOP=3Dm
> CONFIG_CHROMEOS_PSTORE=3Dm
> # CONFIG_CHROMEOS_TBMC is not set
> CONFIG_CROS_EC=3Dm
> # CONFIG_CROS_EC_I2C is not set
> # CONFIG_CROS_EC_ISHTP is not set
> # CONFIG_CROS_EC_SPI is not set
> # CONFIG_CROS_EC_LPC is not set
> CONFIG_CROS_EC_PROTO=3Dy
> CONFIG_CROS_KBD_LED_BACKLIGHT=3Dm
> CONFIG_CROS_EC_CHARDEV=3Dm
> CONFIG_CROS_EC_LIGHTBAR=3Dm
> CONFIG_CROS_EC_DEBUGFS=3Dm
> CONFIG_CROS_EC_SENSORHUB=3Dm
> CONFIG_CROS_EC_SYSFS=3Dm
> CONFIG_CROS_EC_TYPEC=3Dm
> CONFIG_CROS_USBPD_NOTIFY=3Dm
> # CONFIG_CHROMEOS_PRIVACY_SCREEN is not set
> CONFIG_CROS_TYPEC_SWITCH=3Dm
> # CONFIG_MELLANOX_PLATFORM is not set
> CONFIG_SURFACE_PLATFORMS=3Dy
> CONFIG_SURFACE3_WMI=3Dm
> CONFIG_SURFACE_3_POWER_OPREGION=3Dm
> CONFIG_SURFACE_ACPI_NOTIFY=3Dm
> # CONFIG_SURFACE_AGGREGATOR_CDEV is not set
> # CONFIG_SURFACE_AGGREGATOR_HUB is not set
> CONFIG_SURFACE_AGGREGATOR_REGISTRY=3Dm
> # CONFIG_SURFACE_AGGREGATOR_TABLET_SWITCH is not set
> CONFIG_SURFACE_DTX=3Dm
> CONFIG_SURFACE_GPE=3Dm
> CONFIG_SURFACE_HOTPLUG=3Dm
> CONFIG_SURFACE_PLATFORM_PROFILE=3Dm
> CONFIG_SURFACE_PRO3_BUTTON=3Dm
> CONFIG_SURFACE_AGGREGATOR=3Dm
> CONFIG_SURFACE_AGGREGATOR_BUS=3Dy
> CONFIG_X86_PLATFORM_DEVICES=3Dy
> CONFIG_ACPI_WMI=3Dm
> CONFIG_WMI_BMOF=3Dm
> CONFIG_HUAWEI_WMI=3Dm
> CONFIG_MXM_WMI=3Dm
> CONFIG_PEAQ_WMI=3Dm
> CONFIG_NVIDIA_WMI_EC_BACKLIGHT=3Dm
> CONFIG_XIAOMI_WMI=3Dm
> CONFIG_GIGABYTE_WMI=3Dm
> # CONFIG_YOGABOOK_WMI is not set
> CONFIG_ACERHDF=3Dm
> CONFIG_ACER_WIRELESS=3Dm
> CONFIG_ACER_WMI=3Dm
> # CONFIG_AMD_PMF is not set
> CONFIG_AMD_PMC=3Dm
> # CONFIG_AMD_HSMP is not set
> # CONFIG_ADV_SWBUTTON is not set
> CONFIG_APPLE_GMUX=3Dm
> CONFIG_ASUS_LAPTOP=3Dm
> CONFIG_ASUS_WIRELESS=3Dm
> CONFIG_ASUS_WMI=3Dm
> CONFIG_ASUS_NB_WMI=3Dm
> # CONFIG_ASUS_TF103C_DOCK is not set
> CONFIG_EEEPC_LAPTOP=3Dm
> CONFIG_EEEPC_WMI=3Dm
> CONFIG_X86_PLATFORM_DRIVERS_DELL=3Dy
> CONFIG_ALIENWARE_WMI=3Dm
> CONFIG_DCDBAS=3Dm
> CONFIG_DELL_LAPTOP=3Dm
> CONFIG_DELL_RBU=3Dm
> CONFIG_DELL_RBTN=3Dm
> CONFIG_DELL_SMBIOS=3Dm
> CONFIG_DELL_SMBIOS_WMI=3Dy
> CONFIG_DELL_SMBIOS_SMM=3Dy
> CONFIG_DELL_SMO8800=3Dm
> CONFIG_DELL_WMI=3Dm
> # CONFIG_DELL_WMI_PRIVACY is not set
> CONFIG_DELL_WMI_AIO=3Dm
> CONFIG_DELL_WMI_DESCRIPTOR=3Dm
> CONFIG_DELL_WMI_LED=3Dm
> CONFIG_DELL_WMI_SYSMAN=3Dm
> CONFIG_AMILO_RFKILL=3Dm
> CONFIG_FUJITSU_LAPTOP=3Dm
> CONFIG_FUJITSU_TABLET=3Dm
> CONFIG_GPD_POCKET_FAN=3Dm
> CONFIG_X86_PLATFORM_DRIVERS_HP=3Dy
> CONFIG_HP_ACCEL=3Dm
> CONFIG_HP_WMI=3Dm
> # CONFIG_WIRELESS_HOTKEY is not set
> CONFIG_IBM_RTL=3Dm
> CONFIG_IDEAPAD_LAPTOP=3Dm
> CONFIG_SENSORS_HDAPS=3Dm
> CONFIG_THINKPAD_ACPI=3Dm
> CONFIG_THINKPAD_ACPI_ALSA_SUPPORT=3Dy
> # CONFIG_THINKPAD_ACPI_DEBUGFACILITIES is not set
> # CONFIG_THINKPAD_ACPI_DEBUG is not set
> # CONFIG_THINKPAD_ACPI_UNSAFE_LEDS is not set
> CONFIG_THINKPAD_ACPI_VIDEO=3Dy
> CONFIG_THINKPAD_ACPI_HOTKEY_POLL=3Dy
> CONFIG_THINKPAD_LMI=3Dm
> CONFIG_INTEL_ATOMISP2_PDX86=3Dy
> # CONFIG_INTEL_ATOMISP2_LED is not set
> CONFIG_INTEL_ATOMISP2_PM=3Dm
> # CONFIG_INTEL_SAR_INT1092 is not set
> # CONFIG_INTEL_SKL_INT3472 is not set
> CONFIG_INTEL_PMC_CORE=3Dm
> CONFIG_INTEL_PMT_CLASS=3Dm
> CONFIG_INTEL_PMT_TELEMETRY=3Dm
> CONFIG_INTEL_PMT_CRASHLOG=3Dm
>=20
> #
> # Intel Speed Select Technology interface support
> #
> CONFIG_INTEL_SPEED_SELECT_INTERFACE=3Dm
> # end of Intel Speed Select Technology interface support
>=20
> CONFIG_INTEL_WMI=3Dy
> # CONFIG_INTEL_WMI_SBL_FW_UPDATE is not set
> CONFIG_INTEL_WMI_THUNDERBOLT=3Dm
>=20
> #
> # Intel Uncore Frequency Control
> #
> CONFIG_INTEL_UNCORE_FREQ_CONTROL=3Dm
> # end of Intel Uncore Frequency Control
>=20
> CONFIG_INTEL_HID_EVENT=3Dm
> CONFIG_INTEL_VBTN=3Dm
> CONFIG_INTEL_INT0002_VGPIO=3Dm
> CONFIG_INTEL_OAKTRAIL=3Dm
> # CONFIG_INTEL_BXTWC_PMIC_TMU is not set
> # CONFIG_INTEL_CHTDC_TI_PWRBTN is not set
> CONFIG_INTEL_CHTWC_INT33FE=3Dm
> # CONFIG_INTEL_ISHTP_ECLITE is not set
> # CONFIG_INTEL_PUNIT_IPC is not set
> CONFIG_INTEL_RST=3Dm
> CONFIG_INTEL_SDSI=3Dm
> CONFIG_INTEL_SMARTCONNECT=3Dm
> CONFIG_INTEL_TURBO_MAX_3=3Dy
> CONFIG_INTEL_VSEC=3Dm
> CONFIG_MSI_LAPTOP=3Dm
> CONFIG_MSI_WMI=3Dm
> CONFIG_PCENGINES_APU2=3Dm
> # CONFIG_BARCO_P50_GPIO is not set
> CONFIG_SAMSUNG_LAPTOP=3Dm
> CONFIG_SAMSUNG_Q10=3Dm
> CONFIG_ACPI_TOSHIBA=3Dm
> CONFIG_TOSHIBA_BT_RFKILL=3Dm
> CONFIG_TOSHIBA_HAPS=3Dm
> CONFIG_TOSHIBA_WMI=3Dm
> CONFIG_ACPI_CMPC=3Dm
> CONFIG_COMPAL_LAPTOP=3Dm
> CONFIG_LG_LAPTOP=3Dm
> CONFIG_PANASONIC_LAPTOP=3Dm
> CONFIG_SONY_LAPTOP=3Dm
> CONFIG_SONYPI_COMPAT=3Dy
> # CONFIG_SYSTEM76_ACPI is not set
> CONFIG_TOPSTAR_LAPTOP=3Dm
> CONFIG_SERIAL_MULTI_INSTANTIATE=3Dm
> # CONFIG_MLX_PLATFORM is not set
> CONFIG_TOUCHSCREEN_DMI=3Dy
> CONFIG_X86_ANDROID_TABLETS=3Dm
> CONFIG_FW_ATTR_CLASS=3Dm
> CONFIG_INTEL_IPS=3Dm
> CONFIG_INTEL_SCU_IPC=3Dy
> # CONFIG_INTEL_SCU_PCI is not set
> # CONFIG_INTEL_SCU_PLATFORM is not set
> CONFIG_SIEMENS_SIMATIC_IPC=3Dm
> # CONFIG_WINMATE_FM07_KEYS is not set
> CONFIG_P2SB=3Dy
> CONFIG_HAVE_CLK=3Dy
> CONFIG_HAVE_CLK_PREPARE=3Dy
> CONFIG_COMMON_CLK=3Dy
> # CONFIG_LMK04832 is not set
> # CONFIG_COMMON_CLK_MAX9485 is not set
> # CONFIG_COMMON_CLK_SI5341 is not set
> # CONFIG_COMMON_CLK_SI5351 is not set
> # CONFIG_COMMON_CLK_SI544 is not set
> # CONFIG_COMMON_CLK_CDCE706 is not set
> # CONFIG_COMMON_CLK_CS2000_CP is not set
> # CONFIG_COMMON_CLK_PWM is not set
> # CONFIG_XILINX_VCU is not set
> # CONFIG_HWSPINLOCK is not set
>=20
> #
> # Clock Source drivers
> #
> CONFIG_CLKEVT_I8253=3Dy
> CONFIG_I8253_LOCK=3Dy
> CONFIG_CLKBLD_I8253=3Dy
> # end of Clock Source drivers
>=20
> CONFIG_MAILBOX=3Dy
> CONFIG_PCC=3Dy
> # CONFIG_ALTERA_MBOX is not set
> CONFIG_IOMMU_IOVA=3Dy
> CONFIG_IOASID=3Dy
> CONFIG_IOMMU_API=3Dy
> CONFIG_IOMMU_SUPPORT=3Dy
>=20
> #
> # Generic IOMMU Pagetable Support
> #
> CONFIG_IOMMU_IO_PGTABLE=3Dy
> # end of Generic IOMMU Pagetable Support
>=20
> # CONFIG_IOMMU_DEBUGFS is not set
> # CONFIG_IOMMU_DEFAULT_DMA_STRICT is not set
> CONFIG_IOMMU_DEFAULT_DMA_LAZY=3Dy
> # CONFIG_IOMMU_DEFAULT_PASSTHROUGH is not set
> CONFIG_IOMMU_DMA=3Dy
> CONFIG_IOMMU_SVA=3Dy
> CONFIG_AMD_IOMMU=3Dy
> CONFIG_AMD_IOMMU_V2=3Dy
> CONFIG_DMAR_TABLE=3Dy
> CONFIG_INTEL_IOMMU=3Dy
> CONFIG_INTEL_IOMMU_SVM=3Dy
> # CONFIG_INTEL_IOMMU_DEFAULT_ON is not set
> CONFIG_INTEL_IOMMU_FLOPPY_WA=3Dy
> CONFIG_INTEL_IOMMU_SCALABLE_MODE_DEFAULT_ON=3Dy
> CONFIG_INTEL_IOMMU_PERF_EVENTS=3Dy
> CONFIG_IRQ_REMAP=3Dy
> CONFIG_HYPERV_IOMMU=3Dy
> # CONFIG_VIRTIO_IOMMU is not set
>=20
> #
> # Remoteproc drivers
> #
> # CONFIG_REMOTEPROC is not set
> # end of Remoteproc drivers
>=20
> #
> # Rpmsg drivers
> #
> # CONFIG_RPMSG_QCOM_GLINK_RPM is not set
> # CONFIG_RPMSG_VIRTIO is not set
> # end of Rpmsg drivers
>=20
> CONFIG_SOUNDWIRE=3Dm
>=20
> #
> # SoundWire Devices
> #
> CONFIG_SOUNDWIRE_CADENCE=3Dm
> CONFIG_SOUNDWIRE_INTEL=3Dm
> CONFIG_SOUNDWIRE_QCOM=3Dm
> CONFIG_SOUNDWIRE_GENERIC_ALLOCATION=3Dm
>=20
> #
> # SOC (System On Chip) specific Drivers
> #
>=20
> #
> # Amlogic SoC drivers
> #
> # end of Amlogic SoC drivers
>=20
> #
> # Broadcom SoC drivers
> #
> # end of Broadcom SoC drivers
>=20
> #
> # NXP/Freescale QorIQ SoC drivers
> #
> # end of NXP/Freescale QorIQ SoC drivers
>=20
> #
> # fujitsu SoC drivers
> #
> # end of fujitsu SoC drivers
>=20
> #
> # i.MX SoC drivers
> #
> # end of i.MX SoC drivers
>=20
> #
> # Enable LiteX SoC Builder specific drivers
> #
> # end of Enable LiteX SoC Builder specific drivers
>=20
> #
> # Qualcomm SoC drivers
> #
> CONFIG_QCOM_QMI_HELPERS=3Dm
> # end of Qualcomm SoC drivers
>=20
> # CONFIG_SOC_TI is not set
>=20
> #
> # Xilinx SoC drivers
> #
> # end of Xilinx SoC drivers
> # end of SOC (System On Chip) specific Drivers
>=20
> CONFIG_PM_DEVFREQ=3Dy
>=20
> #
> # DEVFREQ Governors
> #
> CONFIG_DEVFREQ_GOV_SIMPLE_ONDEMAND=3Dm
> # CONFIG_DEVFREQ_GOV_PERFORMANCE is not set
> # CONFIG_DEVFREQ_GOV_POWERSAVE is not set
> # CONFIG_DEVFREQ_GOV_USERSPACE is not set
> # CONFIG_DEVFREQ_GOV_PASSIVE is not set
>=20
> #
> # DEVFREQ Drivers
> #
> # CONFIG_PM_DEVFREQ_EVENT is not set
> CONFIG_EXTCON=3Dm
>=20
> #
> # Extcon Device Drivers
> #
> # CONFIG_EXTCON_ADC_JACK is not set
> CONFIG_EXTCON_AXP288=3Dm
> # CONFIG_EXTCON_FSA9480 is not set
> # CONFIG_EXTCON_GPIO is not set
> # CONFIG_EXTCON_INTEL_INT3496 is not set
> CONFIG_EXTCON_INTEL_CHT_WC=3Dm
> # CONFIG_EXTCON_MAX3355 is not set
> # CONFIG_EXTCON_PTN5150 is not set
> # CONFIG_EXTCON_RT8973A is not set
> # CONFIG_EXTCON_SM5502 is not set
> # CONFIG_EXTCON_USB_GPIO is not set
> # CONFIG_EXTCON_USBC_CROS_EC is not set
> # CONFIG_EXTCON_USBC_TUSB320 is not set
> CONFIG_MEMORY=3Dy
> CONFIG_IIO=3Dm
> CONFIG_IIO_BUFFER=3Dy
> # CONFIG_IIO_BUFFER_CB is not set
> # CONFIG_IIO_BUFFER_DMA is not set
> # CONFIG_IIO_BUFFER_DMAENGINE is not set
> # CONFIG_IIO_BUFFER_HW_CONSUMER is not set
> CONFIG_IIO_KFIFO_BUF=3Dm
> CONFIG_IIO_TRIGGERED_BUFFER=3Dm
> # CONFIG_IIO_CONFIGFS is not set
> CONFIG_IIO_TRIGGER=3Dy
> CONFIG_IIO_CONSUMERS_PER_TRIGGER=3D2
> # CONFIG_IIO_SW_DEVICE is not set
> # CONFIG_IIO_SW_TRIGGER is not set
> CONFIG_IIO_TRIGGERED_EVENT=3Dm
>=20
> #
> # Accelerometers
> #
> CONFIG_ADIS16201=3Dm
> CONFIG_ADIS16209=3Dm
> # CONFIG_ADXL313_I2C is not set
> # CONFIG_ADXL313_SPI is not set
> CONFIG_ADXL345=3Dm
> CONFIG_ADXL345_I2C=3Dm
> CONFIG_ADXL345_SPI=3Dm
> # CONFIG_ADXL355_I2C is not set
> # CONFIG_ADXL355_SPI is not set
> # CONFIG_ADXL367_SPI is not set
> # CONFIG_ADXL367_I2C is not set
> CONFIG_ADXL372=3Dm
> CONFIG_ADXL372_SPI=3Dm
> CONFIG_ADXL372_I2C=3Dm
> CONFIG_BMA180=3Dm
> CONFIG_BMA220=3Dm
> CONFIG_BMA400=3Dm
> CONFIG_BMA400_I2C=3Dm
> CONFIG_BMA400_SPI=3Dm
> CONFIG_BMC150_ACCEL=3Dm
> CONFIG_BMC150_ACCEL_I2C=3Dm
> CONFIG_BMC150_ACCEL_SPI=3Dm
> # CONFIG_BMI088_ACCEL is not set
> CONFIG_DA280=3Dm
> CONFIG_DA311=3Dm
> # CONFIG_DMARD06 is not set
> CONFIG_DMARD09=3Dm
> CONFIG_DMARD10=3Dm
> # CONFIG_FXLS8962AF_I2C is not set
> # CONFIG_FXLS8962AF_SPI is not set
> CONFIG_HID_SENSOR_ACCEL_3D=3Dm
> CONFIG_IIO_ST_ACCEL_3AXIS=3Dm
> CONFIG_IIO_ST_ACCEL_I2C_3AXIS=3Dm
> CONFIG_IIO_ST_ACCEL_SPI_3AXIS=3Dm
> CONFIG_KXSD9=3Dm
> CONFIG_KXSD9_SPI=3Dm
> CONFIG_KXSD9_I2C=3Dm
> CONFIG_KXCJK1013=3Dm
> CONFIG_MC3230=3Dm
> CONFIG_MMA7455=3Dm
> CONFIG_MMA7455_I2C=3Dm
> CONFIG_MMA7455_SPI=3Dm
> CONFIG_MMA7660=3Dm
> CONFIG_MMA8452=3Dm
> CONFIG_MMA9551_CORE=3Dm
> CONFIG_MMA9551=3Dm
> CONFIG_MMA9553=3Dm
> # CONFIG_MSA311 is not set
> CONFIG_MXC4005=3Dm
> CONFIG_MXC6255=3Dm
> CONFIG_SCA3000=3Dm
> # CONFIG_SCA3300 is not set
> CONFIG_STK8312=3Dm
> CONFIG_STK8BA50=3Dm
> # end of Accelerometers
>=20
> #
> # Analog to digital converters
> #
> CONFIG_AD_SIGMA_DELTA=3Dm
> CONFIG_AD7091R5=3Dm
> CONFIG_AD7124=3Dm
> CONFIG_AD7192=3Dm
> CONFIG_AD7266=3Dm
> # CONFIG_AD7280 is not set
> CONFIG_AD7291=3Dm
> CONFIG_AD7292=3Dm
> CONFIG_AD7298=3Dm
> CONFIG_AD7476=3Dm
> CONFIG_AD7606=3Dm
> CONFIG_AD7606_IFACE_PARALLEL=3Dm
> CONFIG_AD7606_IFACE_SPI=3Dm
> CONFIG_AD7766=3Dm
> CONFIG_AD7768_1=3Dm
> CONFIG_AD7780=3Dm
> CONFIG_AD7791=3Dm
> CONFIG_AD7793=3Dm
> CONFIG_AD7887=3Dm
> CONFIG_AD7923=3Dm
> CONFIG_AD7949=3Dm
> CONFIG_AD799X=3Dm
> CONFIG_AXP20X_ADC=3Dm
> CONFIG_AXP288_ADC=3Dm
> CONFIG_CC10001_ADC=3Dm
> # CONFIG_ENVELOPE_DETECTOR is not set
> CONFIG_HI8435=3Dm
> CONFIG_HX711=3Dm
> CONFIG_INA2XX_ADC=3Dm
> CONFIG_LTC2471=3Dm
> CONFIG_LTC2485=3Dm
> CONFIG_LTC2496=3Dm
> CONFIG_LTC2497=3Dm
> CONFIG_MAX1027=3Dm
> CONFIG_MAX11100=3Dm
> CONFIG_MAX1118=3Dm
> # CONFIG_MAX11205 is not set
> CONFIG_MAX1241=3Dm
> CONFIG_MAX1363=3Dm
> CONFIG_MAX9611=3Dm
> CONFIG_MCP320X=3Dm
> CONFIG_MCP3422=3Dm
> CONFIG_MCP3911=3Dm
> CONFIG_NAU7802=3Dm
> # CONFIG_RICHTEK_RTQ6056 is not set
> # CONFIG_SD_ADC_MODULATOR is not set
> CONFIG_TI_ADC081C=3Dm
> CONFIG_TI_ADC0832=3Dm
> CONFIG_TI_ADC084S021=3Dm
> CONFIG_TI_ADC12138=3Dm
> CONFIG_TI_ADC108S102=3Dm
> CONFIG_TI_ADC128S052=3Dm
> CONFIG_TI_ADC161S626=3Dm
> CONFIG_TI_ADS1015=3Dm
> CONFIG_TI_ADS7950=3Dm
> # CONFIG_TI_ADS8344 is not set
> # CONFIG_TI_ADS8688 is not set
> # CONFIG_TI_ADS124S08 is not set
> # CONFIG_TI_ADS131E08 is not set
> # CONFIG_TI_TLC4541 is not set
> # CONFIG_TI_TSC2046 is not set
> # CONFIG_VF610_ADC is not set
> CONFIG_VIPERBOARD_ADC=3Dm
> # CONFIG_XILINX_XADC is not set
> # end of Analog to digital converters
>=20
> #
> # Analog to digital and digital to analog converters
> #
> # CONFIG_AD74413R is not set
> # end of Analog to digital and digital to analog converters
>=20
> #
> # Analog Front Ends
> #
> # CONFIG_IIO_RESCALE is not set
> # end of Analog Front Ends
>=20
> #
> # Amplifiers
> #
> # CONFIG_AD8366 is not set
> # CONFIG_ADA4250 is not set
> # CONFIG_HMC425 is not set
> # end of Amplifiers
>=20
> #
> # Capacitance to digital converters
> #
> # CONFIG_AD7150 is not set
> # CONFIG_AD7746 is not set
> # end of Capacitance to digital converters
>=20
> #
> # Chemical Sensors
> #
> # CONFIG_ATLAS_PH_SENSOR is not set
> # CONFIG_ATLAS_EZO_SENSOR is not set
> # CONFIG_BME680 is not set
> # CONFIG_CCS811 is not set
> # CONFIG_IAQCORE is not set
> # CONFIG_PMS7003 is not set
> # CONFIG_SCD30_CORE is not set
> # CONFIG_SCD4X is not set
> # CONFIG_SENSIRION_SGP30 is not set
> # CONFIG_SENSIRION_SGP40 is not set
> # CONFIG_SPS30_I2C is not set
> # CONFIG_SPS30_SERIAL is not set
> # CONFIG_SENSEAIR_SUNRISE_CO2 is not set
> # CONFIG_VZ89X is not set
> # end of Chemical Sensors
>=20
> # CONFIG_IIO_CROS_EC_SENSORS_CORE is not set
>=20
> #
> # Hid Sensor IIO Common
> #
> CONFIG_HID_SENSOR_IIO_COMMON=3Dm
> CONFIG_HID_SENSOR_IIO_TRIGGER=3Dm
> # end of Hid Sensor IIO Common
>=20
> CONFIG_IIO_MS_SENSORS_I2C=3Dm
>=20
> #
> # IIO SCMI Sensors
> #
> # end of IIO SCMI Sensors
>=20
> #
> # SSP Sensor Common
> #
> # CONFIG_IIO_SSP_SENSORHUB is not set
> # end of SSP Sensor Common
>=20
> CONFIG_IIO_ST_SENSORS_I2C=3Dm
> CONFIG_IIO_ST_SENSORS_SPI=3Dm
> CONFIG_IIO_ST_SENSORS_CORE=3Dm
>=20
> #
> # Digital to analog converters
> #
> # CONFIG_AD3552R is not set
> CONFIG_AD5064=3Dm
> CONFIG_AD5360=3Dm
> CONFIG_AD5380=3Dm
> CONFIG_AD5421=3Dm
> CONFIG_AD5446=3Dm
> CONFIG_AD5449=3Dm
> CONFIG_AD5592R_BASE=3Dm
> CONFIG_AD5592R=3Dm
> CONFIG_AD5593R=3Dm
> CONFIG_AD5504=3Dm
> CONFIG_AD5624R_SPI=3Dm
> # CONFIG_LTC2688 is not set
> CONFIG_AD5686=3Dm
> CONFIG_AD5686_SPI=3Dm
> CONFIG_AD5696_I2C=3Dm
> CONFIG_AD5755=3Dm
> CONFIG_AD5758=3Dm
> CONFIG_AD5761=3Dm
> CONFIG_AD5764=3Dm
> # CONFIG_AD5766 is not set
> CONFIG_AD5770R=3Dm
> CONFIG_AD5791=3Dm
> # CONFIG_AD7293 is not set
> CONFIG_AD7303=3Dm
> CONFIG_AD8801=3Dm
> # CONFIG_DPOT_DAC is not set
> CONFIG_DS4424=3Dm
> CONFIG_LTC1660=3Dm
> CONFIG_LTC2632=3Dm
> CONFIG_M62332=3Dm
> CONFIG_MAX517=3Dm
> # CONFIG_MAX5821 is not set
> CONFIG_MCP4725=3Dm
> CONFIG_MCP4922=3Dm
> CONFIG_TI_DAC082S085=3Dm
> CONFIG_TI_DAC5571=3Dm
> CONFIG_TI_DAC7311=3Dm
> CONFIG_TI_DAC7612=3Dm
> # CONFIG_VF610_DAC is not set
> # end of Digital to analog converters
>=20
> #
> # IIO dummy driver
> #
> # end of IIO dummy driver
>=20
> #
> # Filters
> #
> # CONFIG_ADMV8818 is not set
> # end of Filters
>=20
> #
> # Frequency Synthesizers DDS/PLL
> #
>=20
> #
> # Clock Generator/Distribution
> #
> # CONFIG_AD9523 is not set
> # end of Clock Generator/Distribution
>=20
> #
> # Phase-Locked Loop (PLL) frequency synthesizers
> #
> # CONFIG_ADF4350 is not set
> # CONFIG_ADF4371 is not set
> # CONFIG_ADMV1013 is not set
> # CONFIG_ADMV1014 is not set
> # CONFIG_ADMV4420 is not set
> # CONFIG_ADRF6780 is not set
> # end of Phase-Locked Loop (PLL) frequency synthesizers
> # end of Frequency Synthesizers DDS/PLL
>=20
> #
> # Digital gyroscope sensors
> #
> CONFIG_ADIS16080=3Dm
> CONFIG_ADIS16130=3Dm
> CONFIG_ADIS16136=3Dm
> CONFIG_ADIS16260=3Dm
> CONFIG_ADXRS290=3Dm
> CONFIG_ADXRS450=3Dm
> CONFIG_BMG160=3Dm
> CONFIG_BMG160_I2C=3Dm
> CONFIG_BMG160_SPI=3Dm
> CONFIG_FXAS21002C=3Dm
> CONFIG_FXAS21002C_I2C=3Dm
> CONFIG_FXAS21002C_SPI=3Dm
> CONFIG_HID_SENSOR_GYRO_3D=3Dm
> CONFIG_MPU3050=3Dm
> CONFIG_MPU3050_I2C=3Dm
> CONFIG_IIO_ST_GYRO_3AXIS=3Dm
> CONFIG_IIO_ST_GYRO_I2C_3AXIS=3Dm
> CONFIG_IIO_ST_GYRO_SPI_3AXIS=3Dm
> CONFIG_ITG3200=3Dm
> # end of Digital gyroscope sensors
>=20
> #
> # Health Sensors
> #
>=20
> #
> # Heart Rate Monitors
> #
> # CONFIG_AFE4403 is not set
> # CONFIG_AFE4404 is not set
> # CONFIG_MAX30100 is not set
> # CONFIG_MAX30102 is not set
> # end of Heart Rate Monitors
> # end of Health Sensors
>=20
> #
> # Humidity sensors
> #
> # CONFIG_AM2315 is not set
> # CONFIG_DHT11 is not set
> # CONFIG_HDC100X is not set
> # CONFIG_HDC2010 is not set
> # CONFIG_HID_SENSOR_HUMIDITY is not set
> # CONFIG_HTS221 is not set
> # CONFIG_HTU21 is not set
> # CONFIG_SI7005 is not set
> # CONFIG_SI7020 is not set
> # end of Humidity sensors
>=20
> #
> # Inertial measurement units
> #
> # CONFIG_ADIS16400 is not set
> CONFIG_ADIS16460=3Dm
> CONFIG_ADIS16475=3Dm
> CONFIG_ADIS16480=3Dm
> CONFIG_BMI160=3Dm
> CONFIG_BMI160_I2C=3Dm
> CONFIG_BMI160_SPI=3Dm
> # CONFIG_BOSCH_BNO055_SERIAL is not set
> # CONFIG_BOSCH_BNO055_I2C is not set
> CONFIG_FXOS8700=3Dm
> CONFIG_FXOS8700_I2C=3Dm
> CONFIG_FXOS8700_SPI=3Dm
> CONFIG_KMX61=3Dm
> CONFIG_INV_ICM42600=3Dm
> CONFIG_INV_ICM42600_I2C=3Dm
> CONFIG_INV_ICM42600_SPI=3Dm
> CONFIG_INV_MPU6050_IIO=3Dm
> CONFIG_INV_MPU6050_I2C=3Dm
> CONFIG_INV_MPU6050_SPI=3Dm
> CONFIG_IIO_ST_LSM6DSX=3Dm
> CONFIG_IIO_ST_LSM6DSX_I2C=3Dm
> CONFIG_IIO_ST_LSM6DSX_SPI=3Dm
> # CONFIG_IIO_ST_LSM9DS0 is not set
> # end of Inertial measurement units
>=20
> CONFIG_IIO_ADIS_LIB=3Dm
> CONFIG_IIO_ADIS_LIB_BUFFER=3Dy
>=20
> #
> # Light sensors
> #
> CONFIG_ACPI_ALS=3Dm
> CONFIG_ADJD_S311=3Dm
> CONFIG_ADUX1020=3Dm
> CONFIG_AL3010=3Dm
> CONFIG_AL3320A=3Dm
> CONFIG_APDS9300=3Dm
> CONFIG_APDS9960=3Dm
> CONFIG_AS73211=3Dm
> CONFIG_BH1750=3Dm
> CONFIG_BH1780=3Dm
> CONFIG_CM32181=3Dm
> CONFIG_CM3232=3Dm
> CONFIG_CM3323=3Dm
> # CONFIG_CM3605 is not set
> CONFIG_CM36651=3Dm
> CONFIG_GP2AP002=3Dm
> CONFIG_GP2AP020A00F=3Dm
> CONFIG_SENSORS_ISL29018=3Dm
> CONFIG_SENSORS_ISL29028=3Dm
> CONFIG_ISL29125=3Dm
> CONFIG_HID_SENSOR_ALS=3Dm
> CONFIG_HID_SENSOR_PROX=3Dm
> CONFIG_JSA1212=3Dm
> CONFIG_RPR0521=3Dm
> CONFIG_LTR501=3Dm
> # CONFIG_LTRF216A is not set
> CONFIG_LV0104CS=3Dm
> CONFIG_MAX44000=3Dm
> CONFIG_MAX44009=3Dm
> CONFIG_NOA1305=3Dm
> CONFIG_OPT3001=3Dm
> CONFIG_PA12203001=3Dm
> CONFIG_SI1133=3Dm
> CONFIG_SI1145=3Dm
> CONFIG_STK3310=3Dm
> CONFIG_ST_UVIS25=3Dm
> CONFIG_ST_UVIS25_I2C=3Dm
> CONFIG_ST_UVIS25_SPI=3Dm
> CONFIG_TCS3414=3Dm
> CONFIG_TCS3472=3Dm
> CONFIG_SENSORS_TSL2563=3Dm
> CONFIG_TSL2583=3Dm
> # CONFIG_TSL2591 is not set
> CONFIG_TSL2772=3Dm
> CONFIG_TSL4531=3Dm
> CONFIG_US5182D=3Dm
> CONFIG_VCNL4000=3Dm
> CONFIG_VCNL4035=3Dm
> CONFIG_VEML6030=3Dm
> CONFIG_VEML6070=3Dm
> CONFIG_VL6180=3Dm
> CONFIG_ZOPT2201=3Dm
> # end of Light sensors
>=20
> #
> # Magnetometer sensors
> #
> # CONFIG_AK8974 is not set
> CONFIG_AK8975=3Dm
> CONFIG_AK09911=3Dm
> CONFIG_BMC150_MAGN=3Dm
> CONFIG_BMC150_MAGN_I2C=3Dm
> CONFIG_BMC150_MAGN_SPI=3Dm
> CONFIG_MAG3110=3Dm
> CONFIG_HID_SENSOR_MAGNETOMETER_3D=3Dm
> CONFIG_MMC35240=3Dm
> CONFIG_IIO_ST_MAGN_3AXIS=3Dm
> CONFIG_IIO_ST_MAGN_I2C_3AXIS=3Dm
> CONFIG_IIO_ST_MAGN_SPI_3AXIS=3Dm
> CONFIG_SENSORS_HMC5843=3Dm
> CONFIG_SENSORS_HMC5843_I2C=3Dm
> CONFIG_SENSORS_HMC5843_SPI=3Dm
> CONFIG_SENSORS_RM3100=3Dm
> CONFIG_SENSORS_RM3100_I2C=3Dm
> CONFIG_SENSORS_RM3100_SPI=3Dm
> # CONFIG_YAMAHA_YAS530 is not set
> # end of Magnetometer sensors
>=20
> #
> # Multiplexers
> #
> # CONFIG_IIO_MUX is not set
> # end of Multiplexers
>=20
> #
> # Inclinometer sensors
> #
> CONFIG_HID_SENSOR_INCLINOMETER_3D=3Dm
> CONFIG_HID_SENSOR_DEVICE_ROTATION=3Dm
> # end of Inclinometer sensors
>=20
> #
> # Triggers - standalone
> #
> # CONFIG_IIO_INTERRUPT_TRIGGER is not set
> # CONFIG_IIO_SYSFS_TRIGGER is not set
> # end of Triggers - standalone
>=20
> #
> # Linear and angular position sensors
> #
> # CONFIG_HID_SENSOR_CUSTOM_INTEL_HINGE is not set
> # end of Linear and angular position sensors
>=20
> #
> # Digital potentiometers
> #
> # CONFIG_AD5110 is not set
> # CONFIG_AD5272 is not set
> # CONFIG_DS1803 is not set
> # CONFIG_MAX5432 is not set
> # CONFIG_MAX5481 is not set
> # CONFIG_MAX5487 is not set
> # CONFIG_MCP4018 is not set
> # CONFIG_MCP4131 is not set
> # CONFIG_MCP4531 is not set
> # CONFIG_MCP41010 is not set
> # CONFIG_TPL0102 is not set
> # end of Digital potentiometers
>=20
> #
> # Digital potentiostats
> #
> # CONFIG_LMP91000 is not set
> # end of Digital potentiostats
>=20
> #
> # Pressure sensors
> #
> CONFIG_ABP060MG=3Dm
> CONFIG_BMP280=3Dm
> CONFIG_BMP280_I2C=3Dm
> CONFIG_BMP280_SPI=3Dm
> CONFIG_DLHL60D=3Dm
> CONFIG_DPS310=3Dm
> CONFIG_HID_SENSOR_PRESS=3Dm
> CONFIG_HP03=3Dm
> CONFIG_ICP10100=3Dm
> CONFIG_MPL115=3Dm
> CONFIG_MPL115_I2C=3Dm
> CONFIG_MPL115_SPI=3Dm
> CONFIG_MPL3115=3Dm
> CONFIG_MS5611=3Dm
> # CONFIG_MS5611_I2C is not set
> # CONFIG_MS5611_SPI is not set
> CONFIG_MS5637=3Dm
> CONFIG_IIO_ST_PRESS=3Dm
> CONFIG_IIO_ST_PRESS_I2C=3Dm
> CONFIG_IIO_ST_PRESS_SPI=3Dm
> CONFIG_T5403=3Dm
> CONFIG_HP206C=3Dm
> CONFIG_ZPA2326=3Dm
> CONFIG_ZPA2326_I2C=3Dm
> CONFIG_ZPA2326_SPI=3Dm
> # end of Pressure sensors
>=20
> #
> # Lightning sensors
> #
> # CONFIG_AS3935 is not set
> # end of Lightning sensors
>=20
> #
> # Proximity and distance sensors
> #
> # CONFIG_CROS_EC_MKBP_PROXIMITY is not set
> CONFIG_ISL29501=3Dm
> CONFIG_LIDAR_LITE_V2=3Dm
> CONFIG_MB1232=3Dm
> CONFIG_PING=3Dm
> CONFIG_RFD77402=3Dm
> CONFIG_SRF04=3Dm
> CONFIG_SX_COMMON=3Dm
> CONFIG_SX9310=3Dm
> # CONFIG_SX9324 is not set
> # CONFIG_SX9360 is not set
> # CONFIG_SX9500 is not set
> CONFIG_SRF08=3Dm
> CONFIG_VCNL3020=3Dm
> CONFIG_VL53L0X_I2C=3Dm
> # end of Proximity and distance sensors
>=20
> #
> # Resolver to digital converters
> #
> # CONFIG_AD2S90 is not set
> # CONFIG_AD2S1200 is not set
> # end of Resolver to digital converters
>=20
> #
> # Temperature sensors
> #
> CONFIG_LTC2983=3Dm
> CONFIG_MAXIM_THERMOCOUPLE=3Dm
> CONFIG_HID_SENSOR_TEMP=3Dm
> CONFIG_MLX90614=3Dm
> CONFIG_MLX90632=3Dm
> CONFIG_TMP006=3Dm
> CONFIG_TMP007=3Dm
> # CONFIG_TMP117 is not set
> CONFIG_TSYS01=3Dm
> CONFIG_TSYS02D=3Dm
> CONFIG_MAX31856=3Dm
> # CONFIG_MAX31865 is not set
> # end of Temperature sensors
>=20
> # CONFIG_NTB is not set
> CONFIG_PWM=3Dy
> CONFIG_PWM_SYSFS=3Dy
> # CONFIG_PWM_DEBUG is not set
> # CONFIG_PWM_CLK is not set
> CONFIG_PWM_CRC=3Dy
> # CONFIG_PWM_CROS_EC is not set
> # CONFIG_PWM_DWC is not set
> CONFIG_PWM_LPSS=3Dm
> # CONFIG_PWM_LPSS_PCI is not set
> CONFIG_PWM_LPSS_PLATFORM=3Dm
> # CONFIG_PWM_PCA9685 is not set
>=20
> #
> # IRQ chip support
> #
> # end of IRQ chip support
>=20
> # CONFIG_IPACK_BUS is not set
> CONFIG_RESET_CONTROLLER=3Dy
> # CONFIG_RESET_SIMPLE is not set
> # CONFIG_RESET_TI_SYSCON is not set
> # CONFIG_RESET_TI_TPS380X is not set
>=20
> #
> # PHY Subsystem
> #
> CONFIG_GENERIC_PHY=3Dy
> # CONFIG_USB_LGM_PHY is not set
> # CONFIG_PHY_CAN_TRANSCEIVER is not set
>=20
> #
> # PHY drivers for Broadcom platforms
> #
> # CONFIG_BCM_KONA_USB2_PHY is not set
> # end of PHY drivers for Broadcom platforms
>=20
> # CONFIG_PHY_PXA_28NM_HSIC is not set
> # CONFIG_PHY_PXA_28NM_USB2 is not set
> # CONFIG_PHY_CPCAP_USB is not set
> # CONFIG_PHY_INTEL_LGM_EMMC is not set
> # end of PHY Subsystem
>=20
> CONFIG_POWERCAP=3Dy
> CONFIG_INTEL_RAPL_CORE=3Dm
> CONFIG_INTEL_RAPL=3Dm
> # CONFIG_IDLE_INJECT is not set
> # CONFIG_MCB is not set
>=20
> #
> # Performance monitor support
> #
> # end of Performance monitor support
>=20
> CONFIG_RAS=3Dy
> # CONFIG_RAS_CEC is not set
> CONFIG_USB4=3Dm
> # CONFIG_USB4_DEBUGFS_WRITE is not set
> # CONFIG_USB4_DMA_TEST is not set
>=20
> #
> # Android
> #
> # CONFIG_ANDROID_BINDER_IPC is not set
> # end of Android
>=20
> CONFIG_LIBNVDIMM=3Dm
> CONFIG_BLK_DEV_PMEM=3Dm
> CONFIG_ND_CLAIM=3Dy
> CONFIG_ND_BTT=3Dm
> CONFIG_BTT=3Dy
> CONFIG_ND_PFN=3Dm
> CONFIG_NVDIMM_PFN=3Dy
> CONFIG_NVDIMM_DAX=3Dy
> CONFIG_NVDIMM_KEYS=3Dy
> CONFIG_DAX=3Dy
> CONFIG_DEV_DAX=3Dm
> CONFIG_DEV_DAX_PMEM=3Dm
> CONFIG_DEV_DAX_HMEM=3Dm
> CONFIG_DEV_DAX_HMEM_DEVICES=3Dy
> CONFIG_DEV_DAX_KMEM=3Dm
> CONFIG_NVMEM=3Dy
> CONFIG_NVMEM_SYSFS=3Dy
> # CONFIG_NVMEM_RMEM is not set
>=20
> #
> # HW tracing support
> #
> # CONFIG_STM is not set
> CONFIG_INTEL_TH=3Dm
> CONFIG_INTEL_TH_PCI=3Dm
> # CONFIG_INTEL_TH_ACPI is not set
> CONFIG_INTEL_TH_GTH=3Dm
> CONFIG_INTEL_TH_MSU=3Dm
> CONFIG_INTEL_TH_PTI=3Dm
> # CONFIG_INTEL_TH_DEBUG is not set
> # end of HW tracing support
>=20
> # CONFIG_FPGA is not set
> # CONFIG_TEE is not set
> CONFIG_PM_OPP=3Dy
> # CONFIG_SIOX is not set
> CONFIG_SLIMBUS=3Dm
> # CONFIG_SLIM_QCOM_CTRL is not set
> # CONFIG_INTERCONNECT is not set
> # CONFIG_COUNTER is not set
> # CONFIG_MOST is not set
> # CONFIG_PECI is not set
> # CONFIG_HTE is not set
> # end of Device Drivers
>=20
> #
> # File systems
> #
> CONFIG_DCACHE_WORD_ACCESS=3Dy
> # CONFIG_VALIDATE_FS_PARSER is not set
> CONFIG_FS_IOMAP=3Dy
> # CONFIG_EXT2_FS is not set
> # CONFIG_EXT3_FS is not set
> CONFIG_EXT4_FS=3Dm
> CONFIG_EXT4_USE_FOR_EXT2=3Dy
> CONFIG_EXT4_FS_POSIX_ACL=3Dy
> CONFIG_EXT4_FS_SECURITY=3Dy
> # CONFIG_EXT4_DEBUG is not set
> CONFIG_JBD2=3Dm
> # CONFIG_JBD2_DEBUG is not set
> CONFIG_FS_MBCACHE=3Dm
> CONFIG_REISERFS_FS=3Dm
> # CONFIG_REISERFS_CHECK is not set
> # CONFIG_REISERFS_PROC_INFO is not set
> CONFIG_REISERFS_FS_XATTR=3Dy
> CONFIG_REISERFS_FS_POSIX_ACL=3Dy
> CONFIG_REISERFS_FS_SECURITY=3Dy
> CONFIG_JFS_FS=3Dm
> CONFIG_JFS_POSIX_ACL=3Dy
> CONFIG_JFS_SECURITY=3Dy
> # CONFIG_JFS_DEBUG is not set
> # CONFIG_JFS_STATISTICS is not set
> CONFIG_XFS_FS=3Dm
> CONFIG_XFS_SUPPORT_V4=3Dy
> CONFIG_XFS_QUOTA=3Dy
> CONFIG_XFS_POSIX_ACL=3Dy
> CONFIG_XFS_RT=3Dy
> # CONFIG_XFS_ONLINE_SCRUB is not set
> # CONFIG_XFS_WARN is not set
> # CONFIG_XFS_DEBUG is not set
> CONFIG_GFS2_FS=3Dm
> CONFIG_GFS2_FS_LOCKING_DLM=3Dy
> CONFIG_OCFS2_FS=3Dm
> CONFIG_OCFS2_FS_O2CB=3Dm
> CONFIG_OCFS2_FS_USERSPACE_CLUSTER=3Dm
> CONFIG_OCFS2_FS_STATS=3Dy
> CONFIG_OCFS2_DEBUG_MASKLOG=3Dy
> # CONFIG_OCFS2_DEBUG_FS is not set
> CONFIG_BTRFS_FS=3Dm
> CONFIG_BTRFS_FS_POSIX_ACL=3Dy
> # CONFIG_BTRFS_FS_CHECK_INTEGRITY is not set
> # CONFIG_BTRFS_FS_RUN_SANITY_TESTS is not set
> # CONFIG_BTRFS_DEBUG is not set
> # CONFIG_BTRFS_ASSERT is not set
> # CONFIG_BTRFS_FS_REF_VERIFY is not set
> CONFIG_NILFS2_FS=3Dm
> CONFIG_F2FS_FS=3Dm
> CONFIG_F2FS_STAT_FS=3Dy
> CONFIG_F2FS_FS_XATTR=3Dy
> CONFIG_F2FS_FS_POSIX_ACL=3Dy
> CONFIG_F2FS_FS_SECURITY=3Dy
> # CONFIG_F2FS_CHECK_FS is not set
> # CONFIG_F2FS_FAULT_INJECTION is not set
> CONFIG_F2FS_FS_COMPRESSION=3Dy
> CONFIG_F2FS_FS_LZO=3Dy
> CONFIG_F2FS_FS_LZORLE=3Dy
> CONFIG_F2FS_FS_LZ4=3Dy
> CONFIG_F2FS_FS_LZ4HC=3Dy
> CONFIG_F2FS_FS_ZSTD=3Dy
> CONFIG_F2FS_IOSTAT=3Dy
> # CONFIG_F2FS_UNFAIR_RWSEM is not set
> CONFIG_ZONEFS_FS=3Dm
> CONFIG_FS_DAX=3Dy
> CONFIG_FS_DAX_PMD=3Dy
> CONFIG_FS_POSIX_ACL=3Dy
> CONFIG_EXPORTFS=3Dy
> CONFIG_EXPORTFS_BLOCK_OPS=3Dy
> CONFIG_FILE_LOCKING=3Dy
> CONFIG_FS_ENCRYPTION=3Dy
> CONFIG_FS_ENCRYPTION_ALGS=3Dm
> CONFIG_FS_VERITY=3Dy
> # CONFIG_FS_VERITY_DEBUG is not set
> CONFIG_FS_VERITY_BUILTIN_SIGNATURES=3Dy
> CONFIG_FSNOTIFY=3Dy
> CONFIG_DNOTIFY=3Dy
> CONFIG_INOTIFY_USER=3Dy
> CONFIG_FANOTIFY=3Dy
> CONFIG_FANOTIFY_ACCESS_PERMISSIONS=3Dy
> CONFIG_QUOTA=3Dy
> CONFIG_QUOTA_NETLINK_INTERFACE=3Dy
> CONFIG_PRINT_QUOTA_WARNING=3Dy
> # CONFIG_QUOTA_DEBUG is not set
> CONFIG_QUOTA_TREE=3Dm
> CONFIG_QFMT_V1=3Dm
> CONFIG_QFMT_V2=3Dm
> CONFIG_QUOTACTL=3Dy
> # CONFIG_AUTOFS4_FS is not set
> CONFIG_AUTOFS_FS=3Dm
> CONFIG_FUSE_FS=3Dm
> CONFIG_CUSE=3Dm
> CONFIG_VIRTIO_FS=3Dm
> CONFIG_FUSE_DAX=3Dy
> CONFIG_OVERLAY_FS=3Dm
> # CONFIG_OVERLAY_FS_REDIRECT_DIR is not set
> CONFIG_OVERLAY_FS_REDIRECT_ALWAYS_FOLLOW=3Dy
> # CONFIG_OVERLAY_FS_INDEX is not set
> # CONFIG_OVERLAY_FS_XINO_AUTO is not set
> # CONFIG_OVERLAY_FS_METACOPY is not set
>=20
> #
> # Caches
> #
> CONFIG_NETFS_SUPPORT=3Dm
> CONFIG_NETFS_STATS=3Dy
> CONFIG_FSCACHE=3Dm
> CONFIG_FSCACHE_STATS=3Dy
> # CONFIG_FSCACHE_DEBUG is not set
> CONFIG_CACHEFILES=3Dm
> # CONFIG_CACHEFILES_DEBUG is not set
> # CONFIG_CACHEFILES_ERROR_INJECTION is not set
> # CONFIG_CACHEFILES_ONDEMAND is not set
> # end of Caches
>=20
> #
> # CD-ROM/DVD Filesystems
> #
> CONFIG_ISO9660_FS=3Dm
> CONFIG_JOLIET=3Dy
> CONFIG_ZISOFS=3Dy
> CONFIG_UDF_FS=3Dm
> # end of CD-ROM/DVD Filesystems
>=20
> #
> # DOS/FAT/EXFAT/NT Filesystems
> #
> CONFIG_FAT_FS=3Dm
> CONFIG_MSDOS_FS=3Dm
> CONFIG_VFAT_FS=3Dm
> CONFIG_FAT_DEFAULT_CODEPAGE=3D437
> CONFIG_FAT_DEFAULT_IOCHARSET=3D"ascii"
> CONFIG_FAT_DEFAULT_UTF8=3Dy
> CONFIG_EXFAT_FS=3Dm
> CONFIG_EXFAT_DEFAULT_IOCHARSET=3D"utf8"
> # CONFIG_NTFS_FS is not set
> # CONFIG_NTFS3_FS is not set
> # end of DOS/FAT/EXFAT/NT Filesystems
>=20
> #
> # Pseudo filesystems
> #
> CONFIG_PROC_FS=3Dy
> CONFIG_PROC_KCORE=3Dy
> CONFIG_PROC_VMCORE=3Dy
> # CONFIG_PROC_VMCORE_DEVICE_DUMP is not set
> CONFIG_PROC_SYSCTL=3Dy
> CONFIG_PROC_PAGE_MONITOR=3Dy
> CONFIG_PROC_CHILDREN=3Dy
> CONFIG_PROC_PID_ARCH_STATUS=3Dy
> CONFIG_PROC_CPU_RESCTRL=3Dy
> CONFIG_KERNFS=3Dy
> CONFIG_SYSFS=3Dy
> CONFIG_TMPFS=3Dy
> CONFIG_TMPFS_POSIX_ACL=3Dy
> CONFIG_TMPFS_XATTR=3Dy
> CONFIG_TMPFS_INODE64=3Dy
> CONFIG_HUGETLBFS=3Dy
> CONFIG_HUGETLB_PAGE=3Dy
> CONFIG_ARCH_WANT_HUGETLB_PAGE_OPTIMIZE_VMEMMAP=3Dy
> CONFIG_HUGETLB_PAGE_OPTIMIZE_VMEMMAP=3Dy
> # CONFIG_HUGETLB_PAGE_OPTIMIZE_VMEMMAP_DEFAULT_ON is not set
> CONFIG_MEMFD_CREATE=3Dy
> CONFIG_ARCH_HAS_GIGANTIC_PAGE=3Dy
> CONFIG_CONFIGFS_FS=3Dm
> CONFIG_EFIVAR_FS=3Dm
> # end of Pseudo filesystems
>=20
> CONFIG_MISC_FILESYSTEMS=3Dy
> CONFIG_ORANGEFS_FS=3Dm
> CONFIG_ADFS_FS=3Dm
> # CONFIG_ADFS_FS_RW is not set
> CONFIG_AFFS_FS=3Dm
> CONFIG_ECRYPT_FS=3Dm
> CONFIG_ECRYPT_FS_MESSAGING=3Dy
> CONFIG_HFS_FS=3Dm
> CONFIG_HFSPLUS_FS=3Dm
> CONFIG_BEFS_FS=3Dm
> # CONFIG_BEFS_DEBUG is not set
> CONFIG_BFS_FS=3Dm
> CONFIG_EFS_FS=3Dm
> CONFIG_JFFS2_FS=3Dm
> CONFIG_JFFS2_FS_DEBUG=3D0
> CONFIG_JFFS2_FS_WRITEBUFFER=3Dy
> # CONFIG_JFFS2_FS_WBUF_VERIFY is not set
> CONFIG_JFFS2_SUMMARY=3Dy
> CONFIG_JFFS2_FS_XATTR=3Dy
> CONFIG_JFFS2_FS_POSIX_ACL=3Dy
> CONFIG_JFFS2_FS_SECURITY=3Dy
> CONFIG_JFFS2_COMPRESSION_OPTIONS=3Dy
> CONFIG_JFFS2_ZLIB=3Dy
> CONFIG_JFFS2_LZO=3Dy
> CONFIG_JFFS2_RTIME=3Dy
> # CONFIG_JFFS2_RUBIN is not set
> # CONFIG_JFFS2_CMODE_NONE is not set
> CONFIG_JFFS2_CMODE_PRIORITY=3Dy
> # CONFIG_JFFS2_CMODE_SIZE is not set
> # CONFIG_JFFS2_CMODE_FAVOURLZO is not set
> CONFIG_UBIFS_FS=3Dm
> CONFIG_UBIFS_FS_ADVANCED_COMPR=3Dy
> CONFIG_UBIFS_FS_LZO=3Dy
> CONFIG_UBIFS_FS_ZLIB=3Dy
> CONFIG_UBIFS_FS_ZSTD=3Dy
> # CONFIG_UBIFS_ATIME_SUPPORT is not set
> CONFIG_UBIFS_FS_XATTR=3Dy
> CONFIG_UBIFS_FS_SECURITY=3Dy
> # CONFIG_UBIFS_FS_AUTHENTICATION is not set
> # CONFIG_CRAMFS is not set
> CONFIG_SQUASHFS=3Dm
> # CONFIG_SQUASHFS_FILE_CACHE is not set
> CONFIG_SQUASHFS_FILE_DIRECT=3Dy
> # CONFIG_SQUASHFS_DECOMP_SINGLE is not set
> # CONFIG_SQUASHFS_DECOMP_MULTI is not set
> CONFIG_SQUASHFS_DECOMP_MULTI_PERCPU=3Dy
> CONFIG_SQUASHFS_XATTR=3Dy
> CONFIG_SQUASHFS_ZLIB=3Dy
> CONFIG_SQUASHFS_LZ4=3Dy
> CONFIG_SQUASHFS_LZO=3Dy
> CONFIG_SQUASHFS_XZ=3Dy
> CONFIG_SQUASHFS_ZSTD=3Dy
> # CONFIG_SQUASHFS_4K_DEVBLK_SIZE is not set
> # CONFIG_SQUASHFS_EMBEDDED is not set
> CONFIG_SQUASHFS_FRAGMENT_CACHE_SIZE=3D3
> CONFIG_VXFS_FS=3Dm
> CONFIG_MINIX_FS=3Dm
> CONFIG_OMFS_FS=3Dm
> CONFIG_HPFS_FS=3Dm
> CONFIG_QNX4FS_FS=3Dm
> CONFIG_QNX6FS_FS=3Dm
> # CONFIG_QNX6FS_DEBUG is not set
> CONFIG_ROMFS_FS=3Dm
> # CONFIG_ROMFS_BACKED_BY_BLOCK is not set
> # CONFIG_ROMFS_BACKED_BY_MTD is not set
> CONFIG_ROMFS_BACKED_BY_BOTH=3Dy
> CONFIG_ROMFS_ON_BLOCK=3Dy
> CONFIG_ROMFS_ON_MTD=3Dy
> CONFIG_PSTORE=3Dy
> CONFIG_PSTORE_DEFAULT_KMSG_BYTES=3D10240
> CONFIG_PSTORE_DEFLATE_COMPRESS=3Dy
> # CONFIG_PSTORE_LZO_COMPRESS is not set
> # CONFIG_PSTORE_LZ4_COMPRESS is not set
> # CONFIG_PSTORE_LZ4HC_COMPRESS is not set
> # CONFIG_PSTORE_842_COMPRESS is not set
> # CONFIG_PSTORE_ZSTD_COMPRESS is not set
> CONFIG_PSTORE_COMPRESS=3Dy
> CONFIG_PSTORE_DEFLATE_COMPRESS_DEFAULT=3Dy
> CONFIG_PSTORE_COMPRESS_DEFAULT=3D"deflate"
> # CONFIG_PSTORE_CONSOLE is not set
> # CONFIG_PSTORE_PMSG is not set
> # CONFIG_PSTORE_FTRACE is not set
> CONFIG_PSTORE_RAM=3Dm
> CONFIG_PSTORE_ZONE=3Dm
> CONFIG_PSTORE_BLK=3Dm
> CONFIG_PSTORE_BLK_BLKDEV=3D""
> CONFIG_PSTORE_BLK_KMSG_SIZE=3D64
> CONFIG_PSTORE_BLK_MAX_REASON=3D2
> CONFIG_SYSV_FS=3Dm
> CONFIG_UFS_FS=3Dm
> # CONFIG_UFS_FS_WRITE is not set
> # CONFIG_UFS_DEBUG is not set
> CONFIG_EROFS_FS=3Dm
> # CONFIG_EROFS_FS_DEBUG is not set
> CONFIG_EROFS_FS_XATTR=3Dy
> CONFIG_EROFS_FS_POSIX_ACL=3Dy
> CONFIG_EROFS_FS_SECURITY=3Dy
> CONFIG_EROFS_FS_ZIP=3Dy
> # CONFIG_EROFS_FS_ZIP_LZMA is not set
> CONFIG_VBOXSF_FS=3Dm
> CONFIG_NETWORK_FILESYSTEMS=3Dy
> CONFIG_NFS_FS=3Dm
> CONFIG_NFS_V2=3Dm
> CONFIG_NFS_V3=3Dm
> CONFIG_NFS_V3_ACL=3Dy
> CONFIG_NFS_V4=3Dm
> CONFIG_NFS_SWAP=3Dy
> CONFIG_NFS_V4_1=3Dy
> CONFIG_NFS_V4_2=3Dy
> CONFIG_PNFS_FILE_LAYOUT=3Dm
> CONFIG_PNFS_BLOCK=3Dm
> CONFIG_PNFS_FLEXFILE_LAYOUT=3Dm
> CONFIG_NFS_V4_1_IMPLEMENTATION_ID_DOMAIN=3D"kernel.org"
> # CONFIG_NFS_V4_1_MIGRATION is not set
> CONFIG_NFS_V4_SECURITY_LABEL=3Dy
> CONFIG_NFS_FSCACHE=3Dy
> # CONFIG_NFS_USE_LEGACY_DNS is not set
> CONFIG_NFS_USE_KERNEL_DNS=3Dy
> CONFIG_NFS_DEBUG=3Dy
> CONFIG_NFS_DISABLE_UDP_SUPPORT=3Dy
> # CONFIG_NFS_V4_2_READ_PLUS is not set
> CONFIG_NFSD=3Dm
> # CONFIG_NFSD_V2 is not set
> CONFIG_NFSD_V3_ACL=3Dy
> CONFIG_NFSD_V4=3Dy
> CONFIG_NFSD_PNFS=3Dy
> CONFIG_NFSD_BLOCKLAYOUT=3Dy
> # CONFIG_NFSD_SCSILAYOUT is not set
> # CONFIG_NFSD_FLEXFILELAYOUT is not set
> # CONFIG_NFSD_V4_2_INTER_SSC is not set
> CONFIG_NFSD_V4_SECURITY_LABEL=3Dy
> CONFIG_GRACE_PERIOD=3Dm
> CONFIG_LOCKD=3Dm
> CONFIG_LOCKD_V4=3Dy
> CONFIG_NFS_ACL_SUPPORT=3Dm
> CONFIG_NFS_COMMON=3Dy
> CONFIG_NFS_V4_2_SSC_HELPER=3Dy
> CONFIG_SUNRPC=3Dm
> CONFIG_SUNRPC_GSS=3Dm
> CONFIG_SUNRPC_BACKCHANNEL=3Dy
> CONFIG_SUNRPC_SWAP=3Dy
> CONFIG_RPCSEC_GSS_KRB5=3Dm
> # CONFIG_SUNRPC_DISABLE_INSECURE_ENCTYPES is not set
> CONFIG_SUNRPC_DEBUG=3Dy
> CONFIG_SUNRPC_XPRT_RDMA=3Dm
> CONFIG_CEPH_FS=3Dm
> CONFIG_CEPH_FSCACHE=3Dy
> CONFIG_CEPH_FS_POSIX_ACL=3Dy
> # CONFIG_CEPH_FS_SECURITY_LABEL is not set
> CONFIG_CIFS=3Dm
> CONFIG_CIFS_STATS2=3Dy
> CONFIG_CIFS_ALLOW_INSECURE_LEGACY=3Dy
> CONFIG_CIFS_UPCALL=3Dy
> CONFIG_CIFS_XATTR=3Dy
> CONFIG_CIFS_POSIX=3Dy
> CONFIG_CIFS_DEBUG=3Dy
> # CONFIG_CIFS_DEBUG2 is not set
> # CONFIG_CIFS_DEBUG_DUMP_KEYS is not set
> CONFIG_CIFS_DFS_UPCALL=3Dy
> # CONFIG_CIFS_SWN_UPCALL is not set
> # CONFIG_CIFS_SMB_DIRECT is not set
> CONFIG_CIFS_FSCACHE=3Dy
> CONFIG_SMB_SERVER=3Dm
> # CONFIG_SMB_SERVER_SMBDIRECT is not set
> CONFIG_SMB_SERVER_CHECK_CAP_NET_ADMIN=3Dy
> # CONFIG_SMB_SERVER_KERBEROS5 is not set
> CONFIG_SMBFS=3Dm
> CONFIG_CODA_FS=3Dm
> CONFIG_AFS_FS=3Dm
> # CONFIG_AFS_DEBUG is not set
> CONFIG_AFS_FSCACHE=3Dy
> # CONFIG_AFS_DEBUG_CURSOR is not set
> CONFIG_9P_FS=3Dm
> CONFIG_9P_FSCACHE=3Dy
> CONFIG_9P_FS_POSIX_ACL=3Dy
> CONFIG_9P_FS_SECURITY=3Dy
> CONFIG_NLS=3Dy
> CONFIG_NLS_DEFAULT=3D"utf8"
> CONFIG_NLS_CODEPAGE_437=3Dm
> CONFIG_NLS_CODEPAGE_737=3Dm
> CONFIG_NLS_CODEPAGE_775=3Dm
> CONFIG_NLS_CODEPAGE_850=3Dm
> CONFIG_NLS_CODEPAGE_852=3Dm
> CONFIG_NLS_CODEPAGE_855=3Dm
> CONFIG_NLS_CODEPAGE_857=3Dm
> CONFIG_NLS_CODEPAGE_860=3Dm
> CONFIG_NLS_CODEPAGE_861=3Dm
> CONFIG_NLS_CODEPAGE_862=3Dm
> CONFIG_NLS_CODEPAGE_863=3Dm
> CONFIG_NLS_CODEPAGE_864=3Dm
> CONFIG_NLS_CODEPAGE_865=3Dm
> CONFIG_NLS_CODEPAGE_866=3Dm
> CONFIG_NLS_CODEPAGE_869=3Dm
> CONFIG_NLS_CODEPAGE_936=3Dm
> CONFIG_NLS_CODEPAGE_950=3Dm
> CONFIG_NLS_CODEPAGE_932=3Dm
> CONFIG_NLS_CODEPAGE_949=3Dm
> CONFIG_NLS_CODEPAGE_874=3Dm
> CONFIG_NLS_ISO8859_8=3Dm
> CONFIG_NLS_CODEPAGE_1250=3Dm
> CONFIG_NLS_CODEPAGE_1251=3Dm
> CONFIG_NLS_ASCII=3Dm
> CONFIG_NLS_ISO8859_1=3Dm
> CONFIG_NLS_ISO8859_2=3Dm
> CONFIG_NLS_ISO8859_3=3Dm
> CONFIG_NLS_ISO8859_4=3Dm
> CONFIG_NLS_ISO8859_5=3Dm
> CONFIG_NLS_ISO8859_6=3Dm
> CONFIG_NLS_ISO8859_7=3Dm
> CONFIG_NLS_ISO8859_9=3Dm
> CONFIG_NLS_ISO8859_13=3Dm
> CONFIG_NLS_ISO8859_14=3Dm
> CONFIG_NLS_ISO8859_15=3Dm
> CONFIG_NLS_KOI8_R=3Dm
> CONFIG_NLS_KOI8_U=3Dm
> CONFIG_NLS_MAC_ROMAN=3Dm
> CONFIG_NLS_MAC_CELTIC=3Dm
> CONFIG_NLS_MAC_CENTEURO=3Dm
> CONFIG_NLS_MAC_CROATIAN=3Dm
> CONFIG_NLS_MAC_CYRILLIC=3Dm
> CONFIG_NLS_MAC_GAELIC=3Dm
> CONFIG_NLS_MAC_GREEK=3Dm
> CONFIG_NLS_MAC_ICELAND=3Dm
> CONFIG_NLS_MAC_INUIT=3Dm
> CONFIG_NLS_MAC_ROMANIAN=3Dm
> CONFIG_NLS_MAC_TURKISH=3Dm
> CONFIG_NLS_UTF8=3Dm
> CONFIG_DLM=3Dm
> # CONFIG_DLM_DEPRECATED_API is not set
> CONFIG_DLM_DEBUG=3Dy
> CONFIG_UNICODE=3Dy
> # CONFIG_UNICODE_NORMALIZATION_SELFTEST is not set
> CONFIG_IO_WQ=3Dy
> # end of File systems
>=20
> #
> # Security options
> #
> CONFIG_KEYS=3Dy
> # CONFIG_KEYS_REQUEST_CACHE is not set
> CONFIG_PERSISTENT_KEYRINGS=3Dy
> # CONFIG_TRUSTED_KEYS is not set
> CONFIG_ENCRYPTED_KEYS=3Dy
> # CONFIG_USER_DECRYPTED_DATA is not set
> CONFIG_KEY_DH_OPERATIONS=3Dy
> CONFIG_SECURITY_DMESG_RESTRICT=3Dy
> CONFIG_SECURITY=3Dy
> CONFIG_SECURITYFS=3Dy
> CONFIG_SECURITY_NETWORK=3Dy
> # CONFIG_SECURITY_INFINIBAND is not set
> CONFIG_SECURITY_NETWORK_XFRM=3Dy
> CONFIG_SECURITY_PATH=3Dy
> CONFIG_INTEL_TXT=3Dy
> CONFIG_LSM_MMAP_MIN_ADDR=3D65536
> CONFIG_HAVE_HARDENED_USERCOPY_ALLOCATOR=3Dy
> CONFIG_HARDENED_USERCOPY=3Dy
> CONFIG_FORTIFY_SOURCE=3Dy
> # CONFIG_STATIC_USERMODEHELPER is not set
> CONFIG_SECURITY_SELINUX=3Dy
> # CONFIG_SECURITY_SELINUX_BOOTPARAM is not set
> # CONFIG_SECURITY_SELINUX_DISABLE is not set
> CONFIG_SECURITY_SELINUX_DEVELOP=3Dy
> CONFIG_SECURITY_SELINUX_AVC_STATS=3Dy
> CONFIG_SECURITY_SELINUX_CHECKREQPROT_VALUE=3D0
> CONFIG_SECURITY_SELINUX_SIDTAB_HASH_BITS=3D9
> CONFIG_SECURITY_SELINUX_SID2STR_CACHE_SIZE=3D256
> # CONFIG_SECURITY_SMACK is not set
> CONFIG_SECURITY_TOMOYO=3Dy
> CONFIG_SECURITY_TOMOYO_MAX_ACCEPT_ENTRY=3D2048
> CONFIG_SECURITY_TOMOYO_MAX_AUDIT_LOG=3D1024
> # CONFIG_SECURITY_TOMOYO_OMIT_USERSPACE_LOADER is not set
> CONFIG_SECURITY_TOMOYO_POLICY_LOADER=3D"/sbin/tomoyo-init"
> CONFIG_SECURITY_TOMOYO_ACTIVATION_TRIGGER=3D"/sbin/init"
> # CONFIG_SECURITY_TOMOYO_INSECURE_BUILTIN_SETTING is not set
> CONFIG_SECURITY_APPARMOR=3Dy
> # CONFIG_SECURITY_APPARMOR_DEBUG is not set
> CONFIG_SECURITY_APPARMOR_INTROSPECT_POLICY=3Dy
> CONFIG_SECURITY_APPARMOR_HASH=3Dy
> CONFIG_SECURITY_APPARMOR_HASH_DEFAULT=3Dy
> CONFIG_SECURITY_APPARMOR_EXPORT_BINARY=3Dy
> CONFIG_SECURITY_APPARMOR_PARANOID_LOAD=3Dy
> # CONFIG_SECURITY_LOADPIN is not set
> CONFIG_SECURITY_YAMA=3Dy
> # CONFIG_SECURITY_SAFESETID is not set
> CONFIG_SECURITY_LOCKDOWN_LSM=3Dy
> CONFIG_SECURITY_LOCKDOWN_LSM_EARLY=3Dy
> CONFIG_LOCK_DOWN_KERNEL_FORCE_NONE=3Dy
> # CONFIG_LOCK_DOWN_KERNEL_FORCE_INTEGRITY is not set
> # CONFIG_LOCK_DOWN_KERNEL_FORCE_CONFIDENTIALITY is not set
> CONFIG_SECURITY_LANDLOCK=3Dy
> CONFIG_INTEGRITY=3Dy
> CONFIG_INTEGRITY_SIGNATURE=3Dy
> CONFIG_INTEGRITY_ASYMMETRIC_KEYS=3Dy
> # CONFIG_INTEGRITY_TRUSTED_KEYRING is not set
> CONFIG_INTEGRITY_PLATFORM_KEYRING=3Dy
> CONFIG_INTEGRITY_MACHINE_KEYRING=3Dy
> CONFIG_LOAD_UEFI_KEYS=3Dy
> CONFIG_INTEGRITY_AUDIT=3Dy
> CONFIG_IMA=3Dy
> # CONFIG_IMA_KEXEC is not set
> CONFIG_IMA_MEASURE_PCR_IDX=3D10
> CONFIG_IMA_LSM_RULES=3Dy
> # CONFIG_IMA_NG_TEMPLATE is not set
> CONFIG_IMA_SIG_TEMPLATE=3Dy
> CONFIG_IMA_DEFAULT_TEMPLATE=3D"ima-sig"
> # CONFIG_IMA_DEFAULT_HASH_SHA1 is not set
> CONFIG_IMA_DEFAULT_HASH_SHA256=3Dy
> CONFIG_IMA_DEFAULT_HASH=3D"sha256"
> # CONFIG_IMA_WRITE_POLICY is not set
> # CONFIG_IMA_READ_POLICY is not set
> CONFIG_IMA_APPRAISE=3Dy
> CONFIG_IMA_ARCH_POLICY=3Dy
> # CONFIG_IMA_APPRAISE_BUILD_POLICY is not set
> CONFIG_IMA_APPRAISE_BOOTPARAM=3Dy
> # CONFIG_IMA_APPRAISE_MODSIG is not set
> # CONFIG_IMA_KEYRINGS_PERMIT_SIGNED_BY_BUILTIN_OR_SECONDARY is not set
> CONFIG_IMA_MEASURE_ASYMMETRIC_KEYS=3Dy
> CONFIG_IMA_QUEUE_EARLY_BOOT_KEYS=3Dy
> CONFIG_IMA_SECURE_AND_OR_TRUSTED_BOOT=3Dy
> # CONFIG_IMA_DISABLE_HTABLE is not set
> CONFIG_EVM=3Dy
> CONFIG_EVM_ATTR_FSUUID=3Dy
> # CONFIG_EVM_ADD_XATTRS is not set
> # CONFIG_DEFAULT_SECURITY_SELINUX is not set
> # CONFIG_DEFAULT_SECURITY_TOMOYO is not set
> CONFIG_DEFAULT_SECURITY_APPARMOR=3Dy
> # CONFIG_DEFAULT_SECURITY_DAC is not set
> CONFIG_LSM=3D"landlock,lockdown,yama,loadpin,safesetid,integrity,apparmor=
,selinux,smack,tomoyo,bpf"
>=20
> #
> # Kernel hardening options
> #
>=20
> #
> # Memory initialization
> #
> CONFIG_CC_HAS_AUTO_VAR_INIT_PATTERN=3Dy
> CONFIG_CC_HAS_AUTO_VAR_INIT_ZERO_BARE=3Dy
> CONFIG_CC_HAS_AUTO_VAR_INIT_ZERO=3Dy
> # CONFIG_INIT_STACK_NONE is not set
> # CONFIG_INIT_STACK_ALL_PATTERN is not set
> CONFIG_INIT_STACK_ALL_ZERO=3Dy
> CONFIG_INIT_ON_ALLOC_DEFAULT_ON=3Dy
> # CONFIG_INIT_ON_FREE_DEFAULT_ON is not set
> CONFIG_CC_HAS_ZERO_CALL_USED_REGS=3Dy
> # CONFIG_ZERO_CALL_USED_REGS is not set
> # end of Memory initialization
>=20
> CONFIG_RANDSTRUCT_NONE=3Dy
> # end of Kernel hardening options
> # end of Security options
>=20
> CONFIG_XOR_BLOCKS=3Dm
> CONFIG_ASYNC_CORE=3Dm
> CONFIG_ASYNC_MEMCPY=3Dm
> CONFIG_ASYNC_XOR=3Dm
> CONFIG_ASYNC_PQ=3Dm
> CONFIG_ASYNC_RAID6_RECOV=3Dm
> CONFIG_CRYPTO=3Dy
>=20
> #
> # Crypto core or helper
> #
> CONFIG_CRYPTO_FIPS=3Dy
> CONFIG_CRYPTO_FIPS_NAME=3D"Linux Kernel Cryptographic API"
> # CONFIG_CRYPTO_FIPS_CUSTOM_VERSION is not set
> CONFIG_CRYPTO_ALGAPI=3Dy
> CONFIG_CRYPTO_ALGAPI2=3Dy
> CONFIG_CRYPTO_AEAD=3Dm
> CONFIG_CRYPTO_AEAD2=3Dy
> CONFIG_CRYPTO_SKCIPHER=3Dy
> CONFIG_CRYPTO_SKCIPHER2=3Dy
> CONFIG_CRYPTO_HASH=3Dy
> CONFIG_CRYPTO_HASH2=3Dy
> CONFIG_CRYPTO_RNG=3Dy
> CONFIG_CRYPTO_RNG2=3Dy
> CONFIG_CRYPTO_RNG_DEFAULT=3Dm
> CONFIG_CRYPTO_AKCIPHER2=3Dy
> CONFIG_CRYPTO_AKCIPHER=3Dy
> CONFIG_CRYPTO_KPP2=3Dy
> CONFIG_CRYPTO_KPP=3Dy
> CONFIG_CRYPTO_ACOMP2=3Dy
> CONFIG_CRYPTO_MANAGER=3Dy
> CONFIG_CRYPTO_MANAGER2=3Dy
> CONFIG_CRYPTO_USER=3Dm
> # CONFIG_CRYPTO_MANAGER_DISABLE_TESTS is not set
> # CONFIG_CRYPTO_MANAGER_EXTRA_TESTS is not set
> CONFIG_CRYPTO_GF128MUL=3Dm
> CONFIG_CRYPTO_NULL=3Dm
> CONFIG_CRYPTO_NULL2=3Dy
> CONFIG_CRYPTO_PCRYPT=3Dm
> CONFIG_CRYPTO_CRYPTD=3Dm
> CONFIG_CRYPTO_AUTHENC=3Dm
> CONFIG_CRYPTO_TEST=3Dm
> CONFIG_CRYPTO_SIMD=3Dm
> CONFIG_CRYPTO_ENGINE=3Dm
> # end of Crypto core or helper
>=20
> #
> # Public-key cryptography
> #
> CONFIG_CRYPTO_RSA=3Dy
> CONFIG_CRYPTO_DH=3Dy
> # CONFIG_CRYPTO_DH_RFC7919_GROUPS is not set
> CONFIG_CRYPTO_ECC=3Dm
> CONFIG_CRYPTO_ECDH=3Dm
> # CONFIG_CRYPTO_ECDSA is not set
> CONFIG_CRYPTO_ECRDSA=3Dm
> # CONFIG_CRYPTO_SM2 is not set
> CONFIG_CRYPTO_CURVE25519=3Dm
> # end of Public-key cryptography
>=20
> #
> # Block ciphers
> #
> CONFIG_CRYPTO_AES=3Dy
> CONFIG_CRYPTO_AES_TI=3Dm
> # CONFIG_CRYPTO_ARIA is not set
> CONFIG_CRYPTO_BLOWFISH=3Dm
> CONFIG_CRYPTO_BLOWFISH_COMMON=3Dm
> CONFIG_CRYPTO_CAMELLIA=3Dm
> CONFIG_CRYPTO_CAST_COMMON=3Dm
> CONFIG_CRYPTO_CAST5=3Dm
> CONFIG_CRYPTO_CAST6=3Dm
> CONFIG_CRYPTO_DES=3Dm
> CONFIG_CRYPTO_FCRYPT=3Dm
> CONFIG_CRYPTO_SERPENT=3Dm
> # CONFIG_CRYPTO_SM4_GENERIC is not set
> CONFIG_CRYPTO_TWOFISH=3Dm
> CONFIG_CRYPTO_TWOFISH_COMMON=3Dm
> # end of Block ciphers
>=20
> #
> # Length-preserving ciphers and modes
> #
> CONFIG_CRYPTO_ADIANTUM=3Dm
> CONFIG_CRYPTO_CHACHA20=3Dm
> CONFIG_CRYPTO_CBC=3Dy
> CONFIG_CRYPTO_CFB=3Dm
> CONFIG_CRYPTO_CTR=3Dm
> CONFIG_CRYPTO_CTS=3Dm
> CONFIG_CRYPTO_ECB=3Dm
> # CONFIG_CRYPTO_HCTR2 is not set
> CONFIG_CRYPTO_KEYWRAP=3Dm
> CONFIG_CRYPTO_LRW=3Dm
> CONFIG_CRYPTO_OFB=3Dm
> CONFIG_CRYPTO_PCBC=3Dm
> CONFIG_CRYPTO_XTS=3Dm
> CONFIG_CRYPTO_NHPOLY1305=3Dm
> # end of Length-preserving ciphers and modes
>=20
> #
> # AEAD (authenticated encryption with associated data) ciphers
> #
> CONFIG_CRYPTO_AEGIS128=3Dm
> CONFIG_CRYPTO_CHACHA20POLY1305=3Dm
> CONFIG_CRYPTO_CCM=3Dm
> CONFIG_CRYPTO_GCM=3Dm
> CONFIG_CRYPTO_SEQIV=3Dm
> CONFIG_CRYPTO_ECHAINIV=3Dm
> CONFIG_CRYPTO_ESSIV=3Dm
> # end of AEAD (authenticated encryption with associated data) ciphers
>=20
> #
> # Hashes, digests, and MACs
> #
> CONFIG_CRYPTO_BLAKE2B=3Dm
> CONFIG_CRYPTO_CMAC=3Dm
> CONFIG_CRYPTO_GHASH=3Dm
> CONFIG_CRYPTO_HMAC=3Dy
> CONFIG_CRYPTO_MD4=3Dm
> CONFIG_CRYPTO_MD5=3Dy
> CONFIG_CRYPTO_MICHAEL_MIC=3Dm
> CONFIG_CRYPTO_POLY1305=3Dm
> CONFIG_CRYPTO_RMD160=3Dm
> CONFIG_CRYPTO_SHA1=3Dy
> CONFIG_CRYPTO_SHA256=3Dy
> CONFIG_CRYPTO_SHA512=3Dm
> CONFIG_CRYPTO_SHA3=3Dm
> # CONFIG_CRYPTO_SM3_GENERIC is not set
> CONFIG_CRYPTO_STREEBOG=3Dm
> CONFIG_CRYPTO_VMAC=3Dm
> CONFIG_CRYPTO_WP512=3Dm
> CONFIG_CRYPTO_XCBC=3Dm
> CONFIG_CRYPTO_XXHASH=3Dm
> # end of Hashes, digests, and MACs
>=20
> #
> # CRCs (cyclic redundancy checks)
> #
> CONFIG_CRYPTO_CRC32C=3Dm
> CONFIG_CRYPTO_CRC32=3Dm
> CONFIG_CRYPTO_CRCT10DIF=3Dm
> CONFIG_CRYPTO_CRC64_ROCKSOFT=3Dm
> # end of CRCs (cyclic redundancy checks)
>=20
> #
> # Compression
> #
> CONFIG_CRYPTO_DEFLATE=3Dy
> CONFIG_CRYPTO_LZO=3Dy
> # CONFIG_CRYPTO_842 is not set
> CONFIG_CRYPTO_LZ4=3Dm
> CONFIG_CRYPTO_LZ4HC=3Dm
> CONFIG_CRYPTO_ZSTD=3Dm
> # end of Compression
>=20
> #
> # Random number generation
> #
> CONFIG_CRYPTO_ANSI_CPRNG=3Dm
> CONFIG_CRYPTO_DRBG_MENU=3Dm
> CONFIG_CRYPTO_DRBG_HMAC=3Dy
> CONFIG_CRYPTO_DRBG_HASH=3Dy
> CONFIG_CRYPTO_DRBG_CTR=3Dy
> CONFIG_CRYPTO_DRBG=3Dm
> CONFIG_CRYPTO_JITTERENTROPY=3Dm
> CONFIG_CRYPTO_KDF800108_CTR=3Dy
> # end of Random number generation
>=20
> #
> # Userspace interface
> #
> CONFIG_CRYPTO_USER_API=3Dm
> CONFIG_CRYPTO_USER_API_HASH=3Dm
> CONFIG_CRYPTO_USER_API_SKCIPHER=3Dm
> CONFIG_CRYPTO_USER_API_RNG=3Dm
> # CONFIG_CRYPTO_USER_API_RNG_CAVP is not set
> CONFIG_CRYPTO_USER_API_AEAD=3Dm
> # CONFIG_CRYPTO_USER_API_ENABLE_OBSOLETE is not set
> # CONFIG_CRYPTO_STATS is not set
> # end of Userspace interface
>=20
> CONFIG_CRYPTO_HASH_INFO=3Dy
>=20
> #
> # Accelerated Cryptographic Algorithms for CPU (x86)
> #
> CONFIG_CRYPTO_CURVE25519_X86=3Dm
> CONFIG_CRYPTO_AES_NI_INTEL=3Dm
> CONFIG_CRYPTO_BLOWFISH_X86_64=3Dm
> CONFIG_CRYPTO_CAMELLIA_X86_64=3Dm
> CONFIG_CRYPTO_CAMELLIA_AESNI_AVX_X86_64=3Dm
> CONFIG_CRYPTO_CAMELLIA_AESNI_AVX2_X86_64=3Dm
> CONFIG_CRYPTO_CAST5_AVX_X86_64=3Dm
> CONFIG_CRYPTO_CAST6_AVX_X86_64=3Dm
> CONFIG_CRYPTO_DES3_EDE_X86_64=3Dm
> CONFIG_CRYPTO_SERPENT_SSE2_X86_64=3Dm
> CONFIG_CRYPTO_SERPENT_AVX_X86_64=3Dm
> CONFIG_CRYPTO_SERPENT_AVX2_X86_64=3Dm
> # CONFIG_CRYPTO_SM4_AESNI_AVX_X86_64 is not set
> # CONFIG_CRYPTO_SM4_AESNI_AVX2_X86_64 is not set
> CONFIG_CRYPTO_TWOFISH_X86_64=3Dm
> CONFIG_CRYPTO_TWOFISH_X86_64_3WAY=3Dm
> CONFIG_CRYPTO_TWOFISH_AVX_X86_64=3Dm
> # CONFIG_CRYPTO_ARIA_AESNI_AVX_X86_64 is not set
> CONFIG_CRYPTO_CHACHA20_X86_64=3Dm
> CONFIG_CRYPTO_AEGIS128_AESNI_SSE2=3Dm
> CONFIG_CRYPTO_NHPOLY1305_SSE2=3Dm
> CONFIG_CRYPTO_NHPOLY1305_AVX2=3Dm
> CONFIG_CRYPTO_BLAKE2S_X86=3Dy
> # CONFIG_CRYPTO_POLYVAL_CLMUL_NI is not set
> CONFIG_CRYPTO_POLY1305_X86_64=3Dm
> CONFIG_CRYPTO_SHA1_SSSE3=3Dm
> CONFIG_CRYPTO_SHA256_SSSE3=3Dm
> CONFIG_CRYPTO_SHA512_SSSE3=3Dm
> # CONFIG_CRYPTO_SM3_AVX_X86_64 is not set
> CONFIG_CRYPTO_GHASH_CLMUL_NI_INTEL=3Dm
> CONFIG_CRYPTO_CRC32C_INTEL=3Dm
> CONFIG_CRYPTO_CRC32_PCLMUL=3Dm
> CONFIG_CRYPTO_CRCT10DIF_PCLMUL=3Dm
> # end of Accelerated Cryptographic Algorithms for CPU (x86)
>=20
> CONFIG_CRYPTO_HW=3Dy
> CONFIG_CRYPTO_DEV_PADLOCK=3Dm
> CONFIG_CRYPTO_DEV_PADLOCK_AES=3Dm
> CONFIG_CRYPTO_DEV_PADLOCK_SHA=3Dm
> # CONFIG_CRYPTO_DEV_ATMEL_ECC is not set
> # CONFIG_CRYPTO_DEV_ATMEL_SHA204A is not set
> CONFIG_CRYPTO_DEV_CCP=3Dy
> CONFIG_CRYPTO_DEV_CCP_DD=3Dm
> CONFIG_CRYPTO_DEV_SP_CCP=3Dy
> CONFIG_CRYPTO_DEV_CCP_CRYPTO=3Dm
> CONFIG_CRYPTO_DEV_SP_PSP=3Dy
> # CONFIG_CRYPTO_DEV_CCP_DEBUGFS is not set
> CONFIG_CRYPTO_DEV_QAT=3Dm
> CONFIG_CRYPTO_DEV_QAT_DH895xCC=3Dm
> CONFIG_CRYPTO_DEV_QAT_C3XXX=3Dm
> CONFIG_CRYPTO_DEV_QAT_C62X=3Dm
> # CONFIG_CRYPTO_DEV_QAT_4XXX is not set
> CONFIG_CRYPTO_DEV_QAT_DH895xCCVF=3Dm
> CONFIG_CRYPTO_DEV_QAT_C3XXXVF=3Dm
> CONFIG_CRYPTO_DEV_QAT_C62XVF=3Dm
> # CONFIG_CRYPTO_DEV_NITROX_CNN55XX is not set
> CONFIG_CRYPTO_DEV_CHELSIO=3Dm
> CONFIG_CRYPTO_DEV_VIRTIO=3Dm
> # CONFIG_CRYPTO_DEV_SAFEXCEL is not set
> # CONFIG_CRYPTO_DEV_AMLOGIC_GXL is not set
> CONFIG_ASYMMETRIC_KEY_TYPE=3Dy
> CONFIG_ASYMMETRIC_PUBLIC_KEY_SUBTYPE=3Dy
> CONFIG_X509_CERTIFICATE_PARSER=3Dy
> CONFIG_PKCS8_PRIVATE_KEY_PARSER=3Dm
> CONFIG_PKCS7_MESSAGE_PARSER=3Dy
> # CONFIG_PKCS7_TEST_KEY is not set
> CONFIG_SIGNED_PE_FILE_VERIFICATION=3Dy
> # CONFIG_FIPS_SIGNATURE_SELFTEST is not set
>=20
> #
> # Certificates for signature checking
> #
> CONFIG_MODULE_SIG_KEY=3D"certs/signing_key.pem"
> CONFIG_MODULE_SIG_KEY_TYPE_RSA=3Dy
> # CONFIG_MODULE_SIG_KEY_TYPE_ECDSA is not set
> CONFIG_SYSTEM_TRUSTED_KEYRING=3Dy
> CONFIG_SYSTEM_TRUSTED_KEYS=3D""
> # CONFIG_SYSTEM_EXTRA_CERTIFICATE is not set
> CONFIG_SECONDARY_TRUSTED_KEYRING=3Dy
> CONFIG_SYSTEM_BLACKLIST_KEYRING=3Dy
> CONFIG_SYSTEM_BLACKLIST_HASH_LIST=3D""
> # CONFIG_SYSTEM_REVOCATION_LIST is not set
> # CONFIG_SYSTEM_BLACKLIST_AUTH_UPDATE is not set
> # end of Certificates for signature checking
>=20
> CONFIG_BINARY_PRINTF=3Dy
>=20
> #
> # Library routines
> #
> CONFIG_RAID6_PQ=3Dm
> CONFIG_RAID6_PQ_BENCHMARK=3Dy
> CONFIG_LINEAR_RANGES=3Dy
> # CONFIG_PACKING is not set
> CONFIG_BITREVERSE=3Dy
> CONFIG_GENERIC_STRNCPY_FROM_USER=3Dy
> CONFIG_GENERIC_STRNLEN_USER=3Dy
> CONFIG_GENERIC_NET_UTILS=3Dy
> CONFIG_CORDIC=3Dm
> # CONFIG_PRIME_NUMBERS is not set
> CONFIG_RATIONAL=3Dy
> CONFIG_GENERIC_PCI_IOMAP=3Dy
> CONFIG_GENERIC_IOMAP=3Dy
> CONFIG_ARCH_USE_CMPXCHG_LOCKREF=3Dy
> CONFIG_ARCH_HAS_FAST_MULTIPLIER=3Dy
> CONFIG_ARCH_USE_SYM_ANNOTATIONS=3Dy
>=20
> #
> # Crypto library routines
> #
> CONFIG_CRYPTO_LIB_UTILS=3Dy
> CONFIG_CRYPTO_LIB_AES=3Dy
> CONFIG_CRYPTO_LIB_ARC4=3Dm
> CONFIG_CRYPTO_ARCH_HAVE_LIB_BLAKE2S=3Dy
> CONFIG_CRYPTO_LIB_BLAKE2S_GENERIC=3Dy
> CONFIG_CRYPTO_ARCH_HAVE_LIB_CHACHA=3Dm
> CONFIG_CRYPTO_LIB_CHACHA_GENERIC=3Dm
> CONFIG_CRYPTO_LIB_CHACHA=3Dm
> CONFIG_CRYPTO_ARCH_HAVE_LIB_CURVE25519=3Dm
> CONFIG_CRYPTO_LIB_CURVE25519_GENERIC=3Dm
> CONFIG_CRYPTO_LIB_CURVE25519=3Dm
> CONFIG_CRYPTO_LIB_DES=3Dm
> CONFIG_CRYPTO_LIB_POLY1305_RSIZE=3D11
> CONFIG_CRYPTO_ARCH_HAVE_LIB_POLY1305=3Dm
> CONFIG_CRYPTO_LIB_POLY1305_GENERIC=3Dm
> CONFIG_CRYPTO_LIB_POLY1305=3Dm
> CONFIG_CRYPTO_LIB_CHACHA20POLY1305=3Dm
> CONFIG_CRYPTO_LIB_SHA1=3Dy
> CONFIG_CRYPTO_LIB_SHA256=3Dy
> # end of Crypto library routines
>=20
> CONFIG_CRC_CCITT=3Dy
> CONFIG_CRC16=3Dm
> CONFIG_CRC_T10DIF=3Dm
> CONFIG_CRC64_ROCKSOFT=3Dm
> CONFIG_CRC_ITU_T=3Dm
> CONFIG_CRC32=3Dy
> # CONFIG_CRC32_SELFTEST is not set
> CONFIG_CRC32_SLICEBY8=3Dy
> # CONFIG_CRC32_SLICEBY4 is not set
> # CONFIG_CRC32_SARWATE is not set
> # CONFIG_CRC32_BIT is not set
> CONFIG_CRC64=3Dm
> # CONFIG_CRC4 is not set
> CONFIG_CRC7=3Dm
> CONFIG_LIBCRC32C=3Dm
> CONFIG_CRC8=3Dm
> CONFIG_XXHASH=3Dy
> # CONFIG_RANDOM32_SELFTEST is not set
> CONFIG_ZLIB_INFLATE=3Dy
> CONFIG_ZLIB_DEFLATE=3Dy
> CONFIG_LZO_COMPRESS=3Dy
> CONFIG_LZO_DECOMPRESS=3Dy
> CONFIG_LZ4_COMPRESS=3Dm
> CONFIG_LZ4HC_COMPRESS=3Dm
> CONFIG_LZ4_DECOMPRESS=3Dy
> CONFIG_ZSTD_COMMON=3Dy
> CONFIG_ZSTD_COMPRESS=3Dm
> CONFIG_ZSTD_DECOMPRESS=3Dy
> CONFIG_XZ_DEC=3Dy
> CONFIG_XZ_DEC_X86=3Dy
> # CONFIG_XZ_DEC_POWERPC is not set
> # CONFIG_XZ_DEC_IA64 is not set
> # CONFIG_XZ_DEC_ARM is not set
> # CONFIG_XZ_DEC_ARMTHUMB is not set
> # CONFIG_XZ_DEC_SPARC is not set
> # CONFIG_XZ_DEC_MICROLZMA is not set
> CONFIG_XZ_DEC_BCJ=3Dy
> # CONFIG_XZ_DEC_TEST is not set
> CONFIG_DECOMPRESS_GZIP=3Dy
> CONFIG_DECOMPRESS_BZIP2=3Dy
> CONFIG_DECOMPRESS_LZMA=3Dy
> CONFIG_DECOMPRESS_XZ=3Dy
> CONFIG_DECOMPRESS_LZO=3Dy
> CONFIG_DECOMPRESS_LZ4=3Dy
> CONFIG_DECOMPRESS_ZSTD=3Dy
> CONFIG_GENERIC_ALLOCATOR=3Dy
> CONFIG_REED_SOLOMON=3Dm
> CONFIG_REED_SOLOMON_ENC8=3Dy
> CONFIG_REED_SOLOMON_DEC8=3Dy
> CONFIG_REED_SOLOMON_DEC16=3Dy
> CONFIG_BCH=3Dm
> CONFIG_TEXTSEARCH=3Dy
> CONFIG_TEXTSEARCH_KMP=3Dm
> CONFIG_TEXTSEARCH_BM=3Dm
> CONFIG_TEXTSEARCH_FSM=3Dm
> CONFIG_BTREE=3Dy
> CONFIG_INTERVAL_TREE=3Dy
> CONFIG_XARRAY_MULTI=3Dy
> CONFIG_ASSOCIATIVE_ARRAY=3Dy
> CONFIG_HAS_IOMEM=3Dy
> CONFIG_HAS_IOPORT_MAP=3Dy
> CONFIG_HAS_DMA=3Dy
> CONFIG_DMA_OPS=3Dy
> CONFIG_NEED_SG_DMA_LENGTH=3Dy
> CONFIG_NEED_DMA_MAP_STATE=3Dy
> CONFIG_ARCH_DMA_ADDR_T_64BIT=3Dy
> CONFIG_ARCH_HAS_FORCE_DMA_UNENCRYPTED=3Dy
> CONFIG_SWIOTLB=3Dy
> CONFIG_DMA_COHERENT_POOL=3Dy
> # CONFIG_DMA_API_DEBUG is not set
> # CONFIG_DMA_MAP_BENCHMARK is not set
> CONFIG_SGL_ALLOC=3Dy
> CONFIG_IOMMU_HELPER=3Dy
> CONFIG_CHECK_SIGNATURE=3Dy
> CONFIG_CPUMASK_OFFSTACK=3Dy
> # CONFIG_FORCE_NR_CPUS is not set
> CONFIG_CPU_RMAP=3Dy
> CONFIG_DQL=3Dy
> CONFIG_GLOB=3Dy
> # CONFIG_GLOB_SELFTEST is not set
> CONFIG_NLATTR=3Dy
> CONFIG_LRU_CACHE=3Dm
> CONFIG_CLZ_TAB=3Dy
> CONFIG_IRQ_POLL=3Dy
> CONFIG_MPILIB=3Dy
> CONFIG_SIGNATURE=3Dy
> CONFIG_DIMLIB=3Dy
> CONFIG_OID_REGISTRY=3Dy
> CONFIG_UCS2_STRING=3Dy
> CONFIG_HAVE_GENERIC_VDSO=3Dy
> CONFIG_GENERIC_GETTIMEOFDAY=3Dy
> CONFIG_GENERIC_VDSO_TIME_NS=3Dy
> CONFIG_FONT_SUPPORT=3Dy
> CONFIG_FONTS=3Dy
> CONFIG_FONT_8x8=3Dy
> CONFIG_FONT_8x16=3Dy
> # CONFIG_FONT_6x11 is not set
> # CONFIG_FONT_7x14 is not set
> # CONFIG_FONT_PEARL_8x8 is not set
> # CONFIG_FONT_ACORN_8x8 is not set
> # CONFIG_FONT_MINI_4x6 is not set
> # CONFIG_FONT_6x10 is not set
> # CONFIG_FONT_10x18 is not set
> # CONFIG_FONT_SUN8x16 is not set
> # CONFIG_FONT_SUN12x22 is not set
> CONFIG_FONT_TER16x32=3Dy
> # CONFIG_FONT_6x8 is not set
> CONFIG_SG_POOL=3Dy
> CONFIG_ARCH_HAS_PMEM_API=3Dy
> CONFIG_MEMREGION=3Dy
> CONFIG_ARCH_HAS_UACCESS_FLUSHCACHE=3Dy
> CONFIG_ARCH_HAS_COPY_MC=3Dy
> CONFIG_ARCH_STACKWALK=3Dy
> CONFIG_STACKDEPOT=3Dy
> CONFIG_SBITMAP=3Dy
> # end of Library routines
>=20
> CONFIG_PLDMFW=3Dy
>=20
> #
> # Kernel hacking
> #
>=20
> #
> # printk and dmesg options
> #
> CONFIG_PRINTK_TIME=3Dy
> # CONFIG_PRINTK_CALLER is not set
> # CONFIG_STACKTRACE_BUILD_ID is not set
> CONFIG_CONSOLE_LOGLEVEL_DEFAULT=3D7
> CONFIG_CONSOLE_LOGLEVEL_QUIET=3D4
> CONFIG_MESSAGE_LOGLEVEL_DEFAULT=3D4
> CONFIG_BOOT_PRINTK_DELAY=3Dy
> CONFIG_DYNAMIC_DEBUG=3Dy
> CONFIG_DYNAMIC_DEBUG_CORE=3Dy
> CONFIG_SYMBOLIC_ERRNAME=3Dy
> CONFIG_DEBUG_BUGVERBOSE=3Dy
> # end of printk and dmesg options
>=20
> CONFIG_DEBUG_KERNEL=3Dy
> CONFIG_DEBUG_MISC=3Dy
>=20
> #
> # Compile-time checks and compiler options
> #
> CONFIG_DEBUG_INFO=3Dy
> CONFIG_AS_HAS_NON_CONST_LEB128=3Dy
> # CONFIG_DEBUG_INFO_NONE is not set
> CONFIG_DEBUG_INFO_DWARF_TOOLCHAIN_DEFAULT=3Dy
> # CONFIG_DEBUG_INFO_DWARF4 is not set
> # CONFIG_DEBUG_INFO_DWARF5 is not set
> # CONFIG_DEBUG_INFO_REDUCED is not set
> # CONFIG_DEBUG_INFO_COMPRESSED is not set
> # CONFIG_DEBUG_INFO_SPLIT is not set
> CONFIG_DEBUG_INFO_BTF=3Dy
> CONFIG_PAHOLE_HAS_SPLIT_BTF=3Dy
> CONFIG_PAHOLE_HAS_LANG_EXCLUDE=3Dy
> CONFIG_DEBUG_INFO_BTF_MODULES=3Dy
> CONFIG_MODULE_ALLOW_BTF_MISMATCH=3Dy
> # CONFIG_GDB_SCRIPTS is not set
> CONFIG_FRAME_WARN=3D2048
> CONFIG_STRIP_ASM_SYMS=3Dy
> # CONFIG_READABLE_ASM is not set
> # CONFIG_HEADERS_INSTALL is not set
> # CONFIG_DEBUG_SECTION_MISMATCH is not set
> CONFIG_SECTION_MISMATCH_WARN_ONLY=3Dy
> # CONFIG_DEBUG_FORCE_FUNCTION_ALIGN_64B is not set
> CONFIG_OBJTOOL=3Dy
> # CONFIG_VMLINUX_MAP is not set
> # CONFIG_DEBUG_FORCE_WEAK_PER_CPU is not set
> # end of Compile-time checks and compiler options
>=20
> #
> # Generic Kernel Debugging Instruments
> #
> CONFIG_MAGIC_SYSRQ=3Dy
> CONFIG_MAGIC_SYSRQ_DEFAULT_ENABLE=3D0x01b6
> CONFIG_MAGIC_SYSRQ_SERIAL=3Dy
> CONFIG_MAGIC_SYSRQ_SERIAL_SEQUENCE=3D""
> CONFIG_DEBUG_FS=3Dy
> CONFIG_DEBUG_FS_ALLOW_ALL=3Dy
> # CONFIG_DEBUG_FS_DISALLOW_MOUNT is not set
> # CONFIG_DEBUG_FS_ALLOW_NONE is not set
> CONFIG_HAVE_ARCH_KGDB=3Dy
> # CONFIG_KGDB is not set
> CONFIG_ARCH_HAS_UBSAN_SANITIZE_ALL=3Dy
> # CONFIG_UBSAN is not set
> CONFIG_HAVE_ARCH_KCSAN=3Dy
> CONFIG_HAVE_KCSAN_COMPILER=3Dy
> # CONFIG_KCSAN is not set
> # end of Generic Kernel Debugging Instruments
>=20
> #
> # Networking Debugging
> #
> # CONFIG_NET_DEV_REFCNT_TRACKER is not set
> # CONFIG_NET_NS_REFCNT_TRACKER is not set
> # CONFIG_DEBUG_NET is not set
> # end of Networking Debugging
>=20
> #
> # Memory Debugging
> #
> CONFIG_PAGE_EXTENSION=3Dy
> # CONFIG_DEBUG_PAGEALLOC is not set
> CONFIG_SLUB_DEBUG=3Dy
> # CONFIG_SLUB_DEBUG_ON is not set
> # CONFIG_PAGE_OWNER is not set
> # CONFIG_PAGE_TABLE_CHECK is not set
> CONFIG_PAGE_POISONING=3Dy
> # CONFIG_DEBUG_PAGE_REF is not set
> # CONFIG_DEBUG_RODATA_TEST is not set
> CONFIG_ARCH_HAS_DEBUG_WX=3Dy
> CONFIG_DEBUG_WX=3Dy
> CONFIG_GENERIC_PTDUMP=3Dy
> CONFIG_PTDUMP_CORE=3Dy
> # CONFIG_PTDUMP_DEBUGFS is not set
> # CONFIG_DEBUG_OBJECTS is not set
> # CONFIG_SHRINKER_DEBUG is not set
> CONFIG_HAVE_DEBUG_KMEMLEAK=3Dy
> # CONFIG_DEBUG_KMEMLEAK is not set
> # CONFIG_DEBUG_STACK_USAGE is not set
> CONFIG_SCHED_STACK_END_CHECK=3Dy
> CONFIG_ARCH_HAS_DEBUG_VM_PGTABLE=3Dy
> # CONFIG_DEBUG_VM is not set
> # CONFIG_DEBUG_VM_PGTABLE is not set
> CONFIG_ARCH_HAS_DEBUG_VIRTUAL=3Dy
> # CONFIG_DEBUG_VIRTUAL is not set
> CONFIG_DEBUG_MEMORY_INIT=3Dy
> CONFIG_MEMORY_NOTIFIER_ERROR_INJECT=3Dm
> # CONFIG_DEBUG_PER_CPU_MAPS is not set
> CONFIG_HAVE_ARCH_KASAN=3Dy
> CONFIG_HAVE_ARCH_KASAN_VMALLOC=3Dy
> CONFIG_CC_HAS_KASAN_GENERIC=3Dy
> CONFIG_CC_HAS_WORKING_NOSANITIZE_ADDRESS=3Dy
> # CONFIG_KASAN is not set
> CONFIG_HAVE_ARCH_KFENCE=3Dy
> # CONFIG_KFENCE is not set
> CONFIG_HAVE_ARCH_KMSAN=3Dy
> # end of Memory Debugging
>=20
> # CONFIG_DEBUG_SHIRQ is not set
>=20
> #
> # Debug Oops, Lockups and Hangs
> #
> # CONFIG_PANIC_ON_OOPS is not set
> CONFIG_PANIC_ON_OOPS_VALUE=3D0
> CONFIG_PANIC_TIMEOUT=3D0
> CONFIG_LOCKUP_DETECTOR=3Dy
> CONFIG_SOFTLOCKUP_DETECTOR=3Dy
> # CONFIG_BOOTPARAM_SOFTLOCKUP_PANIC is not set
> CONFIG_HARDLOCKUP_DETECTOR_PERF=3Dy
> CONFIG_HARDLOCKUP_CHECK_TIMESTAMP=3Dy
> CONFIG_HARDLOCKUP_DETECTOR=3Dy
> # CONFIG_BOOTPARAM_HARDLOCKUP_PANIC is not set
> CONFIG_DETECT_HUNG_TASK=3Dy
> CONFIG_DEFAULT_HUNG_TASK_TIMEOUT=3D120
> # CONFIG_BOOTPARAM_HUNG_TASK_PANIC is not set
> # CONFIG_WQ_WATCHDOG is not set
> # CONFIG_TEST_LOCKUP is not set
> # end of Debug Oops, Lockups and Hangs
>=20
> #
> # Scheduler Debugging
> #
> CONFIG_SCHED_DEBUG=3Dy
> CONFIG_SCHED_INFO=3Dy
> CONFIG_SCHEDSTATS=3Dy
> # end of Scheduler Debugging
>=20
> # CONFIG_DEBUG_TIMEKEEPING is not set
> # CONFIG_DEBUG_PREEMPT is not set
>=20
> #
> # Lock Debugging (spinlocks, mutexes, etc...)
> #
> CONFIG_LOCK_DEBUGGING_SUPPORT=3Dy
> # CONFIG_PROVE_LOCKING is not set
> # CONFIG_LOCK_STAT is not set
> # CONFIG_DEBUG_RT_MUTEXES is not set
> # CONFIG_DEBUG_SPINLOCK is not set
> # CONFIG_DEBUG_MUTEXES is not set
> # CONFIG_DEBUG_WW_MUTEX_SLOWPATH is not set
> # CONFIG_DEBUG_RWSEMS is not set
> # CONFIG_DEBUG_LOCK_ALLOC is not set
> # CONFIG_DEBUG_ATOMIC_SLEEP is not set
> # CONFIG_DEBUG_LOCKING_API_SELFTESTS is not set
> # CONFIG_LOCK_TORTURE_TEST is not set
> # CONFIG_WW_MUTEX_SELFTEST is not set
> # CONFIG_SCF_TORTURE_TEST is not set
> # CONFIG_CSD_LOCK_WAIT_DEBUG is not set
> # end of Lock Debugging (spinlocks, mutexes, etc...)
>=20
> # CONFIG_DEBUG_IRQFLAGS is not set
> CONFIG_STACKTRACE=3Dy
> # CONFIG_WARN_ALL_UNSEEDED_RANDOM is not set
> # CONFIG_DEBUG_KOBJECT is not set
>=20
> #
> # Debug kernel data structures
> #
> CONFIG_DEBUG_LIST=3Dy
> # CONFIG_DEBUG_PLIST is not set
> # CONFIG_DEBUG_SG is not set
> # CONFIG_DEBUG_NOTIFIERS is not set
> CONFIG_BUG_ON_DATA_CORRUPTION=3Dy
> # CONFIG_DEBUG_MAPLE_TREE is not set
> # end of Debug kernel data structures
>=20
> # CONFIG_DEBUG_CREDENTIALS is not set
>=20
> #
> # RCU Debugging
> #
> # CONFIG_RCU_SCALE_TEST is not set
> # CONFIG_RCU_TORTURE_TEST is not set
> # CONFIG_RCU_REF_SCALE_TEST is not set
> CONFIG_RCU_CPU_STALL_TIMEOUT=3D21
> CONFIG_RCU_EXP_CPU_STALL_TIMEOUT=3D0
> # CONFIG_RCU_TRACE is not set
> # CONFIG_RCU_EQS_DEBUG is not set
> # end of RCU Debugging
>=20
> # CONFIG_DEBUG_WQ_FORCE_RR_CPU is not set
> # CONFIG_CPU_HOTPLUG_STATE_CONTROL is not set
> # CONFIG_LATENCYTOP is not set
> CONFIG_USER_STACKTRACE_SUPPORT=3Dy
> CONFIG_NOP_TRACER=3Dy
> CONFIG_HAVE_RETHOOK=3Dy
> CONFIG_RETHOOK=3Dy
> CONFIG_HAVE_FUNCTION_TRACER=3Dy
> CONFIG_HAVE_FUNCTION_GRAPH_TRACER=3Dy
> CONFIG_HAVE_DYNAMIC_FTRACE=3Dy
> CONFIG_HAVE_DYNAMIC_FTRACE_WITH_REGS=3Dy
> CONFIG_HAVE_DYNAMIC_FTRACE_WITH_DIRECT_CALLS=3Dy
> CONFIG_HAVE_DYNAMIC_FTRACE_WITH_ARGS=3Dy
> CONFIG_HAVE_DYNAMIC_FTRACE_NO_PATCHABLE=3Dy
> CONFIG_HAVE_FTRACE_MCOUNT_RECORD=3Dy
> CONFIG_HAVE_SYSCALL_TRACEPOINTS=3Dy
> CONFIG_HAVE_FENTRY=3Dy
> CONFIG_HAVE_OBJTOOL_MCOUNT=3Dy
> CONFIG_HAVE_C_RECORDMCOUNT=3Dy
> CONFIG_HAVE_BUILDTIME_MCOUNT_SORT=3Dy
> CONFIG_BUILDTIME_MCOUNT_SORT=3Dy
> CONFIG_TRACER_MAX_TRACE=3Dy
> CONFIG_TRACE_CLOCK=3Dy
> CONFIG_RING_BUFFER=3Dy
> CONFIG_EVENT_TRACING=3Dy
> CONFIG_CONTEXT_SWITCH_TRACER=3Dy
> CONFIG_TRACING=3Dy
> CONFIG_GENERIC_TRACER=3Dy
> CONFIG_TRACING_SUPPORT=3Dy
> CONFIG_FTRACE=3Dy
> # CONFIG_BOOTTIME_TRACING is not set
> CONFIG_FUNCTION_TRACER=3Dy
> CONFIG_FUNCTION_GRAPH_TRACER=3Dy
> CONFIG_DYNAMIC_FTRACE=3Dy
> CONFIG_DYNAMIC_FTRACE_WITH_REGS=3Dy
> CONFIG_DYNAMIC_FTRACE_WITH_DIRECT_CALLS=3Dy
> CONFIG_DYNAMIC_FTRACE_WITH_ARGS=3Dy
> # CONFIG_FPROBE is not set
> # CONFIG_FUNCTION_PROFILER is not set
> CONFIG_STACK_TRACER=3Dy
> # CONFIG_IRQSOFF_TRACER is not set
> # CONFIG_PREEMPT_TRACER is not set
> # CONFIG_SCHED_TRACER is not set
> # CONFIG_HWLAT_TRACER is not set
> # CONFIG_OSNOISE_TRACER is not set
> # CONFIG_TIMERLAT_TRACER is not set
> CONFIG_MMIOTRACE=3Dy
> CONFIG_FTRACE_SYSCALLS=3Dy
> CONFIG_TRACER_SNAPSHOT=3Dy
> # CONFIG_TRACER_SNAPSHOT_PER_CPU_SWAP is not set
> CONFIG_BRANCH_PROFILE_NONE=3Dy
> # CONFIG_PROFILE_ANNOTATED_BRANCHES is not set
> CONFIG_BLK_DEV_IO_TRACE=3Dy
> CONFIG_KPROBE_EVENTS=3Dy
> # CONFIG_KPROBE_EVENTS_ON_NOTRACE is not set
> CONFIG_UPROBE_EVENTS=3Dy
> CONFIG_BPF_EVENTS=3Dy
> CONFIG_DYNAMIC_EVENTS=3Dy
> CONFIG_PROBE_EVENTS=3Dy
> CONFIG_FTRACE_MCOUNT_RECORD=3Dy
> CONFIG_FTRACE_MCOUNT_USE_CC=3Dy
> CONFIG_TRACING_MAP=3Dy
> CONFIG_SYNTH_EVENTS=3Dy
> CONFIG_HIST_TRIGGERS=3Dy
> # CONFIG_TRACE_EVENT_INJECT is not set
> # CONFIG_TRACEPOINT_BENCHMARK is not set
> # CONFIG_RING_BUFFER_BENCHMARK is not set
> # CONFIG_TRACE_EVAL_MAP_FILE is not set
> # CONFIG_FTRACE_RECORD_RECURSION is not set
> # CONFIG_FTRACE_STARTUP_TEST is not set
> # CONFIG_FTRACE_SORT_STARTUP_TEST is not set
> # CONFIG_RING_BUFFER_STARTUP_TEST is not set
> # CONFIG_RING_BUFFER_VALIDATE_TIME_DELTAS is not set
> # CONFIG_MMIOTRACE_TEST is not set
> # CONFIG_PREEMPTIRQ_DELAY_TEST is not set
> # CONFIG_SYNTH_EVENT_GEN_TEST is not set
> # CONFIG_KPROBE_EVENT_GEN_TEST is not set
> # CONFIG_HIST_TRIGGERS_DEBUG is not set
> # CONFIG_RV is not set
> # CONFIG_PROVIDE_OHCI1394_DMA_INIT is not set
> # CONFIG_SAMPLES is not set
> CONFIG_HAVE_SAMPLE_FTRACE_DIRECT=3Dy
> CONFIG_HAVE_SAMPLE_FTRACE_DIRECT_MULTI=3Dy
> CONFIG_ARCH_HAS_DEVMEM_IS_ALLOWED=3Dy
> CONFIG_STRICT_DEVMEM=3Dy
> CONFIG_IO_STRICT_DEVMEM=3Dy
>=20
> #
> # x86 Debugging
> #
> # CONFIG_X86_VERBOSE_BOOTUP is not set
> CONFIG_EARLY_PRINTK=3Dy
> # CONFIG_EARLY_PRINTK_DBGP is not set
> # CONFIG_EARLY_PRINTK_USB_XDBC is not set
> # CONFIG_EFI_PGT_DUMP is not set
> # CONFIG_DEBUG_TLBFLUSH is not set
> # CONFIG_IOMMU_DEBUG is not set
> CONFIG_HAVE_MMIOTRACE_SUPPORT=3Dy
> # CONFIG_X86_DECODER_SELFTEST is not set
> CONFIG_IO_DELAY_0X80=3Dy
> # CONFIG_IO_DELAY_0XED is not set
> # CONFIG_IO_DELAY_UDELAY is not set
> # CONFIG_IO_DELAY_NONE is not set
> # CONFIG_DEBUG_BOOT_PARAMS is not set
> # CONFIG_CPA_DEBUG is not set
> # CONFIG_DEBUG_ENTRY is not set
> # CONFIG_DEBUG_NMI_SELFTEST is not set
> CONFIG_X86_DEBUG_FPU=3Dy
> # CONFIG_PUNIT_ATOM_DEBUG is not set
> CONFIG_UNWINDER_ORC=3Dy
> # CONFIG_UNWINDER_FRAME_POINTER is not set
> # end of x86 Debugging
>=20
> #
> # Kernel Testing and Coverage
> #
> # CONFIG_KUNIT is not set
> CONFIG_NOTIFIER_ERROR_INJECTION=3Dm
> CONFIG_PM_NOTIFIER_ERROR_INJECT=3Dm
> # CONFIG_NETDEV_NOTIFIER_ERROR_INJECT is not set
> # CONFIG_FUNCTION_ERROR_INJECTION is not set
> # CONFIG_FAULT_INJECTION is not set
> CONFIG_ARCH_HAS_KCOV=3Dy
> CONFIG_CC_HAS_SANCOV_TRACE_PC=3Dy
> # CONFIG_KCOV is not set
> CONFIG_RUNTIME_TESTING_MENU=3Dy
> # CONFIG_LKDTM is not set
> # CONFIG_TEST_MIN_HEAP is not set
> # CONFIG_TEST_DIV64 is not set
> # CONFIG_BACKTRACE_SELF_TEST is not set
> # CONFIG_TEST_REF_TRACKER is not set
> # CONFIG_RBTREE_TEST is not set
> # CONFIG_REED_SOLOMON_TEST is not set
> # CONFIG_INTERVAL_TREE_TEST is not set
> # CONFIG_PERCPU_TEST is not set
> # CONFIG_ATOMIC64_SELFTEST is not set
> # CONFIG_ASYNC_RAID6_TEST is not set
> # CONFIG_TEST_HEXDUMP is not set
> # CONFIG_STRING_SELFTEST is not set
> # CONFIG_TEST_STRING_HELPERS is not set
> # CONFIG_TEST_STRSCPY is not set
> # CONFIG_TEST_KSTRTOX is not set
> # CONFIG_TEST_PRINTF is not set
> # CONFIG_TEST_SCANF is not set
> # CONFIG_TEST_BITMAP is not set
> # CONFIG_TEST_UUID is not set
> # CONFIG_TEST_XARRAY is not set
> # CONFIG_TEST_MAPLE_TREE is not set
> # CONFIG_TEST_RHASHTABLE is not set
> # CONFIG_TEST_SIPHASH is not set
> # CONFIG_TEST_IDA is not set
> # CONFIG_TEST_LKM is not set
> # CONFIG_TEST_BITOPS is not set
> # CONFIG_TEST_VMALLOC is not set
> CONFIG_TEST_USER_COPY=3Dm
> CONFIG_TEST_BPF=3Dm
> # CONFIG_TEST_BLACKHOLE_DEV is not set
> # CONFIG_FIND_BIT_BENCHMARK is not set
> CONFIG_TEST_FIRMWARE=3Dm
> # CONFIG_TEST_SYSCTL is not set
> # CONFIG_TEST_UDELAY is not set
> CONFIG_TEST_STATIC_KEYS=3Dm
> # CONFIG_TEST_DYNAMIC_DEBUG is not set
> # CONFIG_TEST_KMOD is not set
> # CONFIG_TEST_MEMCAT_P is not set
> # CONFIG_TEST_LIVEPATCH is not set
> # CONFIG_TEST_MEMINIT is not set
> # CONFIG_TEST_FREE_PAGES is not set
> # CONFIG_TEST_FPU is not set
> # CONFIG_TEST_CLOCKSOURCE_WATCHDOG is not set
> CONFIG_ARCH_USE_MEMTEST=3Dy
> CONFIG_MEMTEST=3Dy
> # CONFIG_HYPERV_TESTING is not set
> # end of Kernel Testing and Coverage
>=20
> #
> # Rust hacking
> #
> # end of Rust hacking
> # end of Kernel hacking

> processor	: 0
> vendor_id	: GenuineIntel
> cpu family	: 6
> model		: 140
> model name	: 11th Gen Intel(R) Core(TM) i5-11300H @ 3.10GHz
> stepping	: 1
> microcode	: 0xb6
> cpu MHz		: 400.000
> cache size	: 8192 KB
> physical id	: 0
> siblings	: 8
> core id		: 0
> cpu cores	: 4
> apicid		: 0
> initial apicid	: 0
> fpu		: yes
> fpu_exception	: yes
> cpuid level	: 27
> wp		: yes
> flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pa=
t pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb =
rdtscp lm constant_tsc art arch_perfmon pebs bts rep_good nopl xtopology no=
nstop_tsc cpuid aperfmperf tsc_known_freq pni pclmulqdq dtes64 monitor ds_c=
pl vmx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic movb=
e popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm abm 3dnowpref=
etch cpuid_fault epb cat_l2 cdp_l2 ssbd ibrs ibpb stibp ibrs_enhanced tpr_s=
hadow flexpriority ept vpid ept_ad fsgsbase tsc_adjust bmi1 avx2 smep bmi2 =
erms invpcid rdt_a avx512f avx512dq rdseed adx smap avx512ifma clflushopt c=
lwb intel_pt avx512cd sha_ni avx512bw avx512vl xsaveopt xsavec xgetbv1 xsav=
es split_lock_detect dtherm ida arat pln pts hwp hwp_notify hwp_act_window =
hwp_epp hwp_pkg_req vnmi avx512vbmi umip pku ospke avx512_vbmi2 gfni vaes v=
pclmulqdq avx512_vnni avx512_bitalg avx512_vpopcntdq rdpid movdiri movdir64=
b fsrm avx512_vp2intersect md_clear ibt flush_l1d arch_capabilities
> vmx flags	: vnmi preemption_timer posted_intr invvpid ept_x_only ept_ad e=
pt_1gb flexpriority apicv tsc_offset vtpr mtf vapic ept vpid unrestricted_g=
uest vapic_reg vid ple pml ept_violation_ve ept_mode_based_exec tsc_scaling
> bugs		: spectre_v1 spectre_v2 spec_store_bypass swapgs eibrs_pbrsb gds bhi
> bogomips	: 6220.80
> clflush size	: 64
> cache_alignment	: 64
> address sizes	: 39 bits physical, 48 bits virtual
> power management:
>=20
> processor	: 1
> vendor_id	: GenuineIntel
> cpu family	: 6
> model		: 140
> model name	: 11th Gen Intel(R) Core(TM) i5-11300H @ 3.10GHz
> stepping	: 1
> microcode	: 0xb6
> cpu MHz		: 400.000
> cache size	: 8192 KB
> physical id	: 0
> siblings	: 8
> core id		: 1
> cpu cores	: 4
> apicid		: 2
> initial apicid	: 2
> fpu		: yes
> fpu_exception	: yes
> cpuid level	: 27
> wp		: yes
> flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pa=
t pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb =
rdtscp lm constant_tsc art arch_perfmon pebs bts rep_good nopl xtopology no=
nstop_tsc cpuid aperfmperf tsc_known_freq pni pclmulqdq dtes64 monitor ds_c=
pl vmx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic movb=
e popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm abm 3dnowpref=
etch cpuid_fault epb cat_l2 cdp_l2 ssbd ibrs ibpb stibp ibrs_enhanced tpr_s=
hadow flexpriority ept vpid ept_ad fsgsbase tsc_adjust bmi1 avx2 smep bmi2 =
erms invpcid rdt_a avx512f avx512dq rdseed adx smap avx512ifma clflushopt c=
lwb intel_pt avx512cd sha_ni avx512bw avx512vl xsaveopt xsavec xgetbv1 xsav=
es split_lock_detect dtherm ida arat pln pts hwp hwp_notify hwp_act_window =
hwp_epp hwp_pkg_req vnmi avx512vbmi umip pku ospke avx512_vbmi2 gfni vaes v=
pclmulqdq avx512_vnni avx512_bitalg avx512_vpopcntdq rdpid movdiri movdir64=
b fsrm avx512_vp2intersect md_clear ibt flush_l1d arch_capabilities
> vmx flags	: vnmi preemption_timer posted_intr invvpid ept_x_only ept_ad e=
pt_1gb flexpriority apicv tsc_offset vtpr mtf vapic ept vpid unrestricted_g=
uest vapic_reg vid ple pml ept_violation_ve ept_mode_based_exec tsc_scaling
> bugs		: spectre_v1 spectre_v2 spec_store_bypass swapgs eibrs_pbrsb gds bhi
> bogomips	: 6220.80
> clflush size	: 64
> cache_alignment	: 64
> address sizes	: 39 bits physical, 48 bits virtual
> power management:
>=20
> processor	: 2
> vendor_id	: GenuineIntel
> cpu family	: 6
> model		: 140
> model name	: 11th Gen Intel(R) Core(TM) i5-11300H @ 3.10GHz
> stepping	: 1
> microcode	: 0xb6
> cpu MHz		: 400.000
> cache size	: 8192 KB
> physical id	: 0
> siblings	: 8
> core id		: 2
> cpu cores	: 4
> apicid		: 4
> initial apicid	: 4
> fpu		: yes
> fpu_exception	: yes
> cpuid level	: 27
> wp		: yes
> flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pa=
t pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb =
rdtscp lm constant_tsc art arch_perfmon pebs bts rep_good nopl xtopology no=
nstop_tsc cpuid aperfmperf tsc_known_freq pni pclmulqdq dtes64 monitor ds_c=
pl vmx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic movb=
e popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm abm 3dnowpref=
etch cpuid_fault epb cat_l2 cdp_l2 ssbd ibrs ibpb stibp ibrs_enhanced tpr_s=
hadow flexpriority ept vpid ept_ad fsgsbase tsc_adjust bmi1 avx2 smep bmi2 =
erms invpcid rdt_a avx512f avx512dq rdseed adx smap avx512ifma clflushopt c=
lwb intel_pt avx512cd sha_ni avx512bw avx512vl xsaveopt xsavec xgetbv1 xsav=
es split_lock_detect dtherm ida arat pln pts hwp hwp_notify hwp_act_window =
hwp_epp hwp_pkg_req vnmi avx512vbmi umip pku ospke avx512_vbmi2 gfni vaes v=
pclmulqdq avx512_vnni avx512_bitalg avx512_vpopcntdq rdpid movdiri movdir64=
b fsrm avx512_vp2intersect md_clear ibt flush_l1d arch_capabilities
> vmx flags	: vnmi preemption_timer posted_intr invvpid ept_x_only ept_ad e=
pt_1gb flexpriority apicv tsc_offset vtpr mtf vapic ept vpid unrestricted_g=
uest vapic_reg vid ple pml ept_violation_ve ept_mode_based_exec tsc_scaling
> bugs		: spectre_v1 spectre_v2 spec_store_bypass swapgs eibrs_pbrsb gds bhi
> bogomips	: 6220.80
> clflush size	: 64
> cache_alignment	: 64
> address sizes	: 39 bits physical, 48 bits virtual
> power management:
>=20
> processor	: 3
> vendor_id	: GenuineIntel
> cpu family	: 6
> model		: 140
> model name	: 11th Gen Intel(R) Core(TM) i5-11300H @ 3.10GHz
> stepping	: 1
> microcode	: 0xb6
> cpu MHz		: 400.000
> cache size	: 8192 KB
> physical id	: 0
> siblings	: 8
> core id		: 3
> cpu cores	: 4
> apicid		: 6
> initial apicid	: 6
> fpu		: yes
> fpu_exception	: yes
> cpuid level	: 27
> wp		: yes
> flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pa=
t pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb =
rdtscp lm constant_tsc art arch_perfmon pebs bts rep_good nopl xtopology no=
nstop_tsc cpuid aperfmperf tsc_known_freq pni pclmulqdq dtes64 monitor ds_c=
pl vmx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic movb=
e popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm abm 3dnowpref=
etch cpuid_fault epb cat_l2 cdp_l2 ssbd ibrs ibpb stibp ibrs_enhanced tpr_s=
hadow flexpriority ept vpid ept_ad fsgsbase tsc_adjust bmi1 avx2 smep bmi2 =
erms invpcid rdt_a avx512f avx512dq rdseed adx smap avx512ifma clflushopt c=
lwb intel_pt avx512cd sha_ni avx512bw avx512vl xsaveopt xsavec xgetbv1 xsav=
es split_lock_detect dtherm ida arat pln pts hwp hwp_notify hwp_act_window =
hwp_epp hwp_pkg_req vnmi avx512vbmi umip pku ospke avx512_vbmi2 gfni vaes v=
pclmulqdq avx512_vnni avx512_bitalg avx512_vpopcntdq rdpid movdiri movdir64=
b fsrm avx512_vp2intersect md_clear ibt flush_l1d arch_capabilities
> vmx flags	: vnmi preemption_timer posted_intr invvpid ept_x_only ept_ad e=
pt_1gb flexpriority apicv tsc_offset vtpr mtf vapic ept vpid unrestricted_g=
uest vapic_reg vid ple pml ept_violation_ve ept_mode_based_exec tsc_scaling
> bugs		: spectre_v1 spectre_v2 spec_store_bypass swapgs eibrs_pbrsb gds bhi
> bogomips	: 6220.80
> clflush size	: 64
> cache_alignment	: 64
> address sizes	: 39 bits physical, 48 bits virtual
> power management:
>=20
> processor	: 4
> vendor_id	: GenuineIntel
> cpu family	: 6
> model		: 140
> model name	: 11th Gen Intel(R) Core(TM) i5-11300H @ 3.10GHz
> stepping	: 1
> microcode	: 0xb6
> cpu MHz		: 400.000
> cache size	: 8192 KB
> physical id	: 0
> siblings	: 8
> core id		: 0
> cpu cores	: 4
> apicid		: 1
> initial apicid	: 1
> fpu		: yes
> fpu_exception	: yes
> cpuid level	: 27
> wp		: yes
> flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pa=
t pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb =
rdtscp lm constant_tsc art arch_perfmon pebs bts rep_good nopl xtopology no=
nstop_tsc cpuid aperfmperf tsc_known_freq pni pclmulqdq dtes64 monitor ds_c=
pl vmx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic movb=
e popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm abm 3dnowpref=
etch cpuid_fault epb cat_l2 cdp_l2 ssbd ibrs ibpb stibp ibrs_enhanced tpr_s=
hadow flexpriority ept vpid ept_ad fsgsbase tsc_adjust bmi1 avx2 smep bmi2 =
erms invpcid rdt_a avx512f avx512dq rdseed adx smap avx512ifma clflushopt c=
lwb intel_pt avx512cd sha_ni avx512bw avx512vl xsaveopt xsavec xgetbv1 xsav=
es split_lock_detect dtherm ida arat pln pts hwp hwp_notify hwp_act_window =
hwp_epp hwp_pkg_req vnmi avx512vbmi umip pku ospke avx512_vbmi2 gfni vaes v=
pclmulqdq avx512_vnni avx512_bitalg avx512_vpopcntdq rdpid movdiri movdir64=
b fsrm avx512_vp2intersect md_clear ibt flush_l1d arch_capabilities
> vmx flags	: vnmi preemption_timer posted_intr invvpid ept_x_only ept_ad e=
pt_1gb flexpriority apicv tsc_offset vtpr mtf vapic ept vpid unrestricted_g=
uest vapic_reg vid ple pml ept_violation_ve ept_mode_based_exec tsc_scaling
> bugs		: spectre_v1 spectre_v2 spec_store_bypass swapgs eibrs_pbrsb gds bhi
> bogomips	: 6220.80
> clflush size	: 64
> cache_alignment	: 64
> address sizes	: 39 bits physical, 48 bits virtual
> power management:
>=20
> processor	: 5
> vendor_id	: GenuineIntel
> cpu family	: 6
> model		: 140
> model name	: 11th Gen Intel(R) Core(TM) i5-11300H @ 3.10GHz
> stepping	: 1
> microcode	: 0xb6
> cpu MHz		: 400.000
> cache size	: 8192 KB
> physical id	: 0
> siblings	: 8
> core id		: 1
> cpu cores	: 4
> apicid		: 3
> initial apicid	: 3
> fpu		: yes
> fpu_exception	: yes
> cpuid level	: 27
> wp		: yes
> flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pa=
t pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb =
rdtscp lm constant_tsc art arch_perfmon pebs bts rep_good nopl xtopology no=
nstop_tsc cpuid aperfmperf tsc_known_freq pni pclmulqdq dtes64 monitor ds_c=
pl vmx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic movb=
e popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm abm 3dnowpref=
etch cpuid_fault epb cat_l2 cdp_l2 ssbd ibrs ibpb stibp ibrs_enhanced tpr_s=
hadow flexpriority ept vpid ept_ad fsgsbase tsc_adjust bmi1 avx2 smep bmi2 =
erms invpcid rdt_a avx512f avx512dq rdseed adx smap avx512ifma clflushopt c=
lwb intel_pt avx512cd sha_ni avx512bw avx512vl xsaveopt xsavec xgetbv1 xsav=
es split_lock_detect dtherm ida arat pln pts hwp hwp_notify hwp_act_window =
hwp_epp hwp_pkg_req vnmi avx512vbmi umip pku ospke avx512_vbmi2 gfni vaes v=
pclmulqdq avx512_vnni avx512_bitalg avx512_vpopcntdq rdpid movdiri movdir64=
b fsrm avx512_vp2intersect md_clear ibt flush_l1d arch_capabilities
> vmx flags	: vnmi preemption_timer posted_intr invvpid ept_x_only ept_ad e=
pt_1gb flexpriority apicv tsc_offset vtpr mtf vapic ept vpid unrestricted_g=
uest vapic_reg vid ple pml ept_violation_ve ept_mode_based_exec tsc_scaling
> bugs		: spectre_v1 spectre_v2 spec_store_bypass swapgs eibrs_pbrsb gds bhi
> bogomips	: 6220.80
> clflush size	: 64
> cache_alignment	: 64
> address sizes	: 39 bits physical, 48 bits virtual
> power management:
>=20
> processor	: 6
> vendor_id	: GenuineIntel
> cpu family	: 6
> model		: 140
> model name	: 11th Gen Intel(R) Core(TM) i5-11300H @ 3.10GHz
> stepping	: 1
> microcode	: 0xb6
> cpu MHz		: 400.000
> cache size	: 8192 KB
> physical id	: 0
> siblings	: 8
> core id		: 2
> cpu cores	: 4
> apicid		: 5
> initial apicid	: 5
> fpu		: yes
> fpu_exception	: yes
> cpuid level	: 27
> wp		: yes
> flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pa=
t pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb =
rdtscp lm constant_tsc art arch_perfmon pebs bts rep_good nopl xtopology no=
nstop_tsc cpuid aperfmperf tsc_known_freq pni pclmulqdq dtes64 monitor ds_c=
pl vmx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic movb=
e popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm abm 3dnowpref=
etch cpuid_fault epb cat_l2 cdp_l2 ssbd ibrs ibpb stibp ibrs_enhanced tpr_s=
hadow flexpriority ept vpid ept_ad fsgsbase tsc_adjust bmi1 avx2 smep bmi2 =
erms invpcid rdt_a avx512f avx512dq rdseed adx smap avx512ifma clflushopt c=
lwb intel_pt avx512cd sha_ni avx512bw avx512vl xsaveopt xsavec xgetbv1 xsav=
es split_lock_detect dtherm ida arat pln pts hwp hwp_notify hwp_act_window =
hwp_epp hwp_pkg_req vnmi avx512vbmi umip pku ospke avx512_vbmi2 gfni vaes v=
pclmulqdq avx512_vnni avx512_bitalg avx512_vpopcntdq rdpid movdiri movdir64=
b fsrm avx512_vp2intersect md_clear ibt flush_l1d arch_capabilities
> vmx flags	: vnmi preemption_timer posted_intr invvpid ept_x_only ept_ad e=
pt_1gb flexpriority apicv tsc_offset vtpr mtf vapic ept vpid unrestricted_g=
uest vapic_reg vid ple pml ept_violation_ve ept_mode_based_exec tsc_scaling
> bugs		: spectre_v1 spectre_v2 spec_store_bypass swapgs eibrs_pbrsb gds bhi
> bogomips	: 6220.80
> clflush size	: 64
> cache_alignment	: 64
> address sizes	: 39 bits physical, 48 bits virtual
> power management:
>=20
> processor	: 7
> vendor_id	: GenuineIntel
> cpu family	: 6
> model		: 140
> model name	: 11th Gen Intel(R) Core(TM) i5-11300H @ 3.10GHz
> stepping	: 1
> microcode	: 0xb6
> cpu MHz		: 400.000
> cache size	: 8192 KB
> physical id	: 0
> siblings	: 8
> core id		: 3
> cpu cores	: 4
> apicid		: 7
> initial apicid	: 7
> fpu		: yes
> fpu_exception	: yes
> cpuid level	: 27
> wp		: yes
> flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pa=
t pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb =
rdtscp lm constant_tsc art arch_perfmon pebs bts rep_good nopl xtopology no=
nstop_tsc cpuid aperfmperf tsc_known_freq pni pclmulqdq dtes64 monitor ds_c=
pl vmx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic movb=
e popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm abm 3dnowpref=
etch cpuid_fault epb cat_l2 cdp_l2 ssbd ibrs ibpb stibp ibrs_enhanced tpr_s=
hadow flexpriority ept vpid ept_ad fsgsbase tsc_adjust bmi1 avx2 smep bmi2 =
erms invpcid rdt_a avx512f avx512dq rdseed adx smap avx512ifma clflushopt c=
lwb intel_pt avx512cd sha_ni avx512bw avx512vl xsaveopt xsavec xgetbv1 xsav=
es split_lock_detect dtherm ida arat pln pts hwp hwp_notify hwp_act_window =
hwp_epp hwp_pkg_req vnmi avx512vbmi umip pku ospke avx512_vbmi2 gfni vaes v=
pclmulqdq avx512_vnni avx512_bitalg avx512_vpopcntdq rdpid movdiri movdir64=
b fsrm avx512_vp2intersect md_clear ibt flush_l1d arch_capabilities
> vmx flags	: vnmi preemption_timer posted_intr invvpid ept_x_only ept_ad e=
pt_1gb flexpriority apicv tsc_offset vtpr mtf vapic ept vpid unrestricted_g=
uest vapic_reg vid ple pml ept_violation_ve ept_mode_based_exec tsc_scaling
> bugs		: spectre_v1 spectre_v2 spec_store_bypass swapgs eibrs_pbrsb gds bhi
> bogomips	: 6220.80
> clflush size	: 64
> cache_alignment	: 64
> address sizes	: 39 bits physical, 48 bits virtual
> power management:
>=20

> Screen 0: minimum 320 x 200, current 1920 x 1080, maximum 16384 x 16384
> eDP-1 connected primary 1920x1080+0+0 (0x48) normal (normal left inverted=
 right x axis y axis) 344mm x 194mm
> 	Identifier: 0x42
> 	Timestamp:  6612
> 	Subpixel:   unknown
> 	Gamma:      1.0:1.0:1.0
> 	Brightness: 1.0
> 	Clones:   =20
> 	CRTC:       0
> 	CRTCs:      0 1 2 3
> 	Transform:  1.000000 0.000000 0.000000
> 	            0.000000 1.000000 0.000000
> 	            0.000000 0.000000 1.000000
> 	           filter:=20
> 	EDID:=20
> 		00ffffffffffff0006af994a00000000
> 		011f0104a5221378036e859358589228
> 		1e505400000001010101010101010101
> 		010101010101d94080c87038e0406c30
> 		aa0058c2100000180000000f00000000
> 		00000000000000000020000000fd0030
> 		3c44440e010a202020202020000000fe
> 		004231353648414e30322e310a2000ea
> 	vrr_capable: 1=20
> 		range: (0, 1)
> 	Colorspace: Default=20
> 		supported: Default, BT709_YCC, XVYCC_601, XVYCC_709, SYCC_601, opYCC_60=
1, opRGB, BT2020_CYCC, BT2020_RGB, BT2020_YCC, DCI-P3_RGB_D65, RGB_WIDE_FIX=
ED, RGB_WIDE_FLOAT, BT601_YCC
> 	max bpc: 12=20
> 		range: (6, 12)
> 	Broadcast RGB: Automatic=20
> 		supported: Automatic, Full, Limited 16:235
> 	panel orientation: Normal=20
> 		supported: Normal, Upside Down, Left Side Up, Right Side Up
> 	scaling mode: Full aspect=20
> 		supported: Full, Center, Full aspect
> 	link-status: Good=20
> 		supported: Good, Bad
> 	CONNECTOR_ID: 313=20
> 		supported: 313
> 	non-desktop: 0=20
> 		range: (0, 1)
>   1920x1080 (0x48) 166.010MHz -HSync -VSync *current +preferred
>         h: width  1920 start 2028 end 2076 total 2120 skew    0 clock  78=
=2E31KHz
>         v: height 1080 start 1090 end 1100 total 1304           clock  60=
=2E05Hz
>   1920x1080 (0x49) 138.500MHz +HSync -VSync
>         h: width  1920 start 1968 end 2000 total 2080 skew    0 clock  66=
=2E59KHz
>         v: height 1080 start 1083 end 1088 total 1111           clock  59=
=2E93Hz
>   1680x1050 (0x4a) 146.250MHz -HSync +VSync
>         h: width  1680 start 1784 end 1960 total 2240 skew    0 clock  65=
=2E29KHz
>         v: height 1050 start 1053 end 1059 total 1089           clock  59=
=2E95Hz
>   1680x1050 (0x4b) 119.000MHz +HSync -VSync
>         h: width  1680 start 1728 end 1760 total 1840 skew    0 clock  64=
=2E67KHz
>         v: height 1050 start 1053 end 1059 total 1080           clock  59=
=2E88Hz
>   1400x1050 (0x4c) 122.000MHz +HSync +VSync
>         h: width  1400 start 1488 end 1640 total 1880 skew    0 clock  64=
=2E89KHz
>         v: height 1050 start 1052 end 1064 total 1082           clock  59=
=2E98Hz
>   1600x900 (0x4d) 118.250MHz -HSync +VSync
>         h: width  1600 start 1696 end 1856 total 2112 skew    0 clock  55=
=2E99KHz
>         v: height  900 start  903 end  908 total  934           clock  59=
=2E95Hz
>   1600x900 (0x4e) 97.500MHz +HSync -VSync
>         h: width  1600 start 1648 end 1680 total 1760 skew    0 clock  55=
=2E40KHz
>         v: height  900 start  903 end  908 total  926           clock  59=
=2E82Hz
>   1280x1024 (0x4f) 108.000MHz +HSync +VSync
>         h: width  1280 start 1328 end 1440 total 1688 skew    0 clock  63=
=2E98KHz
>         v: height 1024 start 1025 end 1028 total 1066           clock  60=
=2E02Hz
>   1400x900 (0x50) 103.500MHz -HSync +VSync
>         h: width  1400 start 1480 end 1624 total 1848 skew    0 clock  56=
=2E01KHz
>         v: height  900 start  903 end  913 total  934           clock  59=
=2E96Hz
>   1400x900 (0x51) 86.500MHz +HSync -VSync
>         h: width  1400 start 1448 end 1480 total 1560 skew    0 clock  55=
=2E45KHz
>         v: height  900 start  903 end  913 total  926           clock  59=
=2E88Hz
>   1280x960 (0x52) 108.000MHz +HSync +VSync
>         h: width  1280 start 1376 end 1488 total 1800 skew    0 clock  60=
=2E00KHz
>         v: height  960 start  961 end  964 total 1000           clock  60=
=2E00Hz
>   1440x810 (0x53) 151.875MHz +HSync -VSync DoubleScan
>         h: width  1440 start 1464 end 1480 total 1520 skew    0 clock  99=
=2E92KHz
>         v: height  810 start  811 end  814 total  833           clock  59=
=2E97Hz
>   1368x768 (0x54) 85.250MHz -HSync +VSync
>         h: width  1368 start 1440 end 1576 total 1784 skew    0 clock  47=
=2E79KHz
>         v: height  768 start  771 end  781 total  798           clock  59=
=2E88Hz
>   1368x768 (0x55) 72.250MHz +HSync -VSync
>         h: width  1368 start 1416 end 1448 total 1528 skew    0 clock  47=
=2E28KHz
>         v: height  768 start  771 end  781 total  790           clock  59=
=2E85Hz
>   1280x800 (0x56) 134.250MHz +HSync -VSync DoubleScan
>         h: width  1280 start 1304 end 1320 total 1360 skew    0 clock  98=
=2E71KHz
>         v: height  800 start  801 end  804 total  823           clock  59=
=2E97Hz
>   1280x800 (0x57) 83.500MHz -HSync +VSync
>         h: width  1280 start 1352 end 1480 total 1680 skew    0 clock  49=
=2E70KHz
>         v: height  800 start  803 end  809 total  831           clock  59=
=2E81Hz
>   1280x800 (0x58) 71.000MHz +HSync -VSync
>         h: width  1280 start 1328 end 1360 total 1440 skew    0 clock  49=
=2E31KHz
>         v: height  800 start  803 end  809 total  823           clock  59=
=2E91Hz
>   1280x720 (0x59) 156.125MHz -HSync +VSync DoubleScan
>         h: width  1280 start 1376 end 1512 total 1744 skew    0 clock  89=
=2E52KHz
>         v: height  720 start  721 end  724 total  746           clock  60=
=2E00Hz
>   1280x720 (0x5a) 120.750MHz +HSync -VSync DoubleScan
>         h: width  1280 start 1304 end 1320 total 1360 skew    0 clock  88=
=2E79KHz
>         v: height  720 start  721 end  724 total  740           clock  59=
=2E99Hz
>   1280x720 (0x5b) 74.500MHz -HSync +VSync
>         h: width  1280 start 1344 end 1472 total 1664 skew    0 clock  44=
=2E77KHz
>         v: height  720 start  723 end  728 total  748           clock  59=
=2E86Hz
>   1280x720 (0x5c) 63.750MHz +HSync -VSync
>         h: width  1280 start 1328 end 1360 total 1440 skew    0 clock  44=
=2E27KHz
>         v: height  720 start  723 end  728 total  741           clock  59=
=2E74Hz
>   1024x768 (0x5d) 133.475MHz -HSync +VSync DoubleScan
>         h: width  1024 start 1100 end 1212 total 1400 skew    0 clock  95=
=2E34KHz
>         v: height  768 start  768 end  770 total  794           clock  60=
=2E04Hz
>   1024x768 (0x5e) 65.000MHz -HSync -VSync
>         h: width  1024 start 1048 end 1184 total 1344 skew    0 clock  48=
=2E36KHz
>         v: height  768 start  771 end  777 total  806           clock  60=
=2E00Hz
>   960x720 (0x5f) 117.000MHz -HSync +VSync DoubleScan
>         h: width   960 start 1024 end 1128 total 1300 skew    0 clock  90=
=2E00KHz
>         v: height  720 start  720 end  722 total  750           clock  60=
=2E00Hz
>   928x696 (0x60) 109.150MHz -HSync +VSync DoubleScan
>         h: width   928 start  976 end 1088 total 1264 skew    0 clock  86=
=2E35KHz
>         v: height  696 start  696 end  698 total  719           clock  60=
=2E05Hz
>   896x672 (0x61) 102.400MHz -HSync +VSync DoubleScan
>         h: width   896 start  960 end 1060 total 1224 skew    0 clock  83=
=2E66KHz
>         v: height  672 start  672 end  674 total  697           clock  60=
=2E01Hz
>   1024x576 (0x62) 98.500MHz -HSync +VSync DoubleScan
>         h: width  1024 start 1092 end 1200 total 1376 skew    0 clock  71=
=2E58KHz
>         v: height  576 start  577 end  580 total  597           clock  59=
=2E95Hz
>   1024x576 (0x63) 78.375MHz +HSync -VSync DoubleScan
>         h: width  1024 start 1048 end 1064 total 1104 skew    0 clock  70=
=2E99KHz
>         v: height  576 start  577 end  580 total  592           clock  59=
=2E96Hz
>   1024x576 (0x64) 46.500MHz -HSync +VSync
>         h: width  1024 start 1064 end 1160 total 1296 skew    0 clock  35=
=2E88KHz
>         v: height  576 start  579 end  584 total  599           clock  59=
=2E90Hz
>   1024x576 (0x65) 42.000MHz +HSync -VSync
>         h: width  1024 start 1072 end 1104 total 1184 skew    0 clock  35=
=2E47KHz
>         v: height  576 start  579 end  584 total  593           clock  59=
=2E82Hz
>   960x600 (0x66) 96.625MHz -HSync +VSync DoubleScan
>         h: width   960 start 1028 end 1128 total 1296 skew    0 clock  74=
=2E56KHz
>         v: height  600 start  601 end  604 total  622           clock  59=
=2E93Hz
>   960x600 (0x67) 77.000MHz +HSync -VSync DoubleScan
>         h: width   960 start  984 end 1000 total 1040 skew    0 clock  74=
=2E04KHz
>         v: height  600 start  601 end  604 total  617           clock  60=
=2E00Hz
>   960x540 (0x68) 86.500MHz -HSync +VSync DoubleScan
>         h: width   960 start 1024 end 1124 total 1288 skew    0 clock  67=
=2E16KHz
>         v: height  540 start  541 end  544 total  560           clock  59=
=2E96Hz
>   960x540 (0x69) 69.250MHz +HSync -VSync DoubleScan
>         h: width   960 start  984 end 1000 total 1040 skew    0 clock  66=
=2E59KHz
>         v: height  540 start  541 end  544 total  555           clock  59=
=2E99Hz
>   960x540 (0x6a) 40.750MHz -HSync +VSync
>         h: width   960 start  992 end 1088 total 1216 skew    0 clock  33=
=2E51KHz
>         v: height  540 start  543 end  548 total  562           clock  59=
=2E63Hz
>   960x540 (0x6b) 37.250MHz +HSync -VSync
>         h: width   960 start 1008 end 1040 total 1120 skew    0 clock  33=
=2E26KHz
>         v: height  540 start  543 end  548 total  556           clock  59=
=2E82Hz
>   800x600 (0x6c) 81.000MHz +HSync +VSync DoubleScan
>         h: width   800 start  832 end  928 total 1080 skew    0 clock  75=
=2E00KHz
>         v: height  600 start  600 end  602 total  625           clock  60=
=2E00Hz
>   800x600 (0x6d) 40.000MHz +HSync +VSync
>         h: width   800 start  840 end  968 total 1056 skew    0 clock  37=
=2E88KHz
>         v: height  600 start  601 end  605 total  628           clock  60=
=2E32Hz
>   800x600 (0x6e) 36.000MHz +HSync +VSync
>         h: width   800 start  824 end  896 total 1024 skew    0 clock  35=
=2E16KHz
>         v: height  600 start  601 end  603 total  625           clock  56=
=2E25Hz
>   840x525 (0x6f) 73.125MHz -HSync +VSync DoubleScan
>         h: width   840 start  892 end  980 total 1120 skew    0 clock  65=
=2E29KHz
>         v: height  525 start  526 end  529 total  544           clock  60=
=2E01Hz
>   840x525 (0x70) 59.500MHz +HSync -VSync DoubleScan
>         h: width   840 start  864 end  880 total  920 skew    0 clock  64=
=2E67KHz
>         v: height  525 start  526 end  529 total  540           clock  59=
=2E88Hz
>   864x486 (0x71) 32.500MHz -HSync +VSync
>         h: width   864 start  888 end  968 total 1072 skew    0 clock  30=
=2E32KHz
>         v: height  486 start  489 end  494 total  506           clock  59=
=2E92Hz
>   864x486 (0x72) 30.500MHz +HSync -VSync
>         h: width   864 start  912 end  944 total 1024 skew    0 clock  29=
=2E79KHz
>         v: height  486 start  489 end  494 total  500           clock  59=
=2E57Hz
>   700x525 (0x73) 61.000MHz +HSync +VSync DoubleScan
>         h: width   700 start  744 end  820 total  940 skew    0 clock  64=
=2E89KHz
>         v: height  525 start  526 end  532 total  541           clock  59=
=2E98Hz
>   800x450 (0x74) 59.125MHz -HSync +VSync DoubleScan
>         h: width   800 start  848 end  928 total 1056 skew    0 clock  55=
=2E99KHz
>         v: height  450 start  451 end  454 total  467           clock  59=
=2E95Hz
>   800x450 (0x75) 48.750MHz +HSync -VSync DoubleScan
>         h: width   800 start  824 end  840 total  880 skew    0 clock  55=
=2E40KHz
>         v: height  450 start  451 end  454 total  463           clock  59=
=2E82Hz
>   640x512 (0x76) 54.000MHz +HSync +VSync DoubleScan
>         h: width   640 start  664 end  720 total  844 skew    0 clock  63=
=2E98KHz
>         v: height  512 start  512 end  514 total  533           clock  60=
=2E02Hz
>   700x450 (0x77) 51.750MHz -HSync +VSync DoubleScan
>         h: width   700 start  740 end  812 total  924 skew    0 clock  56=
=2E01KHz
>         v: height  450 start  451 end  456 total  467           clock  59=
=2E96Hz
>   700x450 (0x78) 43.250MHz +HSync -VSync DoubleScan
>         h: width   700 start  724 end  740 total  780 skew    0 clock  55=
=2E45KHz
>         v: height  450 start  451 end  456 total  463           clock  59=
=2E88Hz
>   640x480 (0x79) 54.000MHz +HSync +VSync DoubleScan
>         h: width   640 start  688 end  744 total  900 skew    0 clock  60=
=2E00KHz
>         v: height  480 start  480 end  482 total  500           clock  60=
=2E00Hz
>   640x480 (0x7a) 25.175MHz -HSync -VSync
>         h: width   640 start  656 end  752 total  800 skew    0 clock  31=
=2E47KHz
>         v: height  480 start  490 end  492 total  525           clock  59=
=2E94Hz
>   720x405 (0x7b) 22.500MHz -HSync +VSync
>         h: width   720 start  744 end  808 total  896 skew    0 clock  25=
=2E11KHz
>         v: height  405 start  408 end  413 total  422           clock  59=
=2E51Hz
>   720x405 (0x7c) 21.750MHz +HSync -VSync
>         h: width   720 start  768 end  800 total  880 skew    0 clock  24=
=2E72KHz
>         v: height  405 start  408 end  413 total  419           clock  58=
=2E99Hz
>   684x384 (0x7d) 42.625MHz -HSync +VSync DoubleScan
>         h: width   684 start  720 end  788 total  892 skew    0 clock  47=
=2E79KHz
>         v: height  384 start  385 end  390 total  399           clock  59=
=2E88Hz
>   684x384 (0x7e) 36.125MHz +HSync -VSync DoubleScan
>         h: width   684 start  708 end  724 total  764 skew    0 clock  47=
=2E28KHz
>         v: height  384 start  385 end  390 total  395           clock  59=
=2E85Hz
>   640x400 (0x7f) 41.750MHz -HSync +VSync DoubleScan
>         h: width   640 start  676 end  740 total  840 skew    0 clock  49=
=2E70KHz
>         v: height  400 start  401 end  404 total  415           clock  59=
=2E88Hz
>   640x400 (0x80) 35.500MHz +HSync -VSync DoubleScan
>         h: width   640 start  664 end  680 total  720 skew    0 clock  49=
=2E31KHz
>         v: height  400 start  401 end  404 total  411           clock  59=
=2E98Hz
>   640x360 (0x81) 37.250MHz -HSync +VSync DoubleScan
>         h: width   640 start  672 end  736 total  832 skew    0 clock  44=
=2E77KHz
>         v: height  360 start  361 end  364 total  374           clock  59=
=2E86Hz
>   640x360 (0x82) 31.875MHz +HSync -VSync DoubleScan
>         h: width   640 start  664 end  680 total  720 skew    0 clock  44=
=2E27KHz
>         v: height  360 start  361 end  364 total  370           clock  59=
=2E83Hz
>   640x360 (0x83) 18.000MHz -HSync +VSync
>         h: width   640 start  664 end  720 total  800 skew    0 clock  22=
=2E50KHz
>         v: height  360 start  363 end  368 total  376           clock  59=
=2E84Hz
>   640x360 (0x84) 17.750MHz +HSync -VSync
>         h: width   640 start  688 end  720 total  800 skew    0 clock  22=
=2E19KHz
>         v: height  360 start  363 end  368 total  374           clock  59=
=2E32Hz
>   512x384 (0x85) 32.500MHz -HSync -VSync DoubleScan
>         h: width   512 start  524 end  592 total  672 skew    0 clock  48=
=2E36KHz
>         v: height  384 start  385 end  388 total  403           clock  60=
=2E00Hz
>   512x288 (0x86) 23.250MHz -HSync +VSync DoubleScan
>         h: width   512 start  532 end  580 total  648 skew    0 clock  35=
=2E88KHz
>         v: height  288 start  289 end  292 total  299           clock  60=
=2E00Hz
>   512x288 (0x87) 21.000MHz +HSync -VSync DoubleScan
>         h: width   512 start  536 end  552 total  592 skew    0 clock  35=
=2E47KHz
>         v: height  288 start  289 end  292 total  296           clock  59=
=2E92Hz
>   480x270 (0x88) 20.375MHz -HSync +VSync DoubleScan
>         h: width   480 start  496 end  544 total  608 skew    0 clock  33=
=2E51KHz
>         v: height  270 start  271 end  274 total  281           clock  59=
=2E63Hz
>   480x270 (0x89) 18.625MHz +HSync -VSync DoubleScan
>         h: width   480 start  504 end  520 total  560 skew    0 clock  33=
=2E26KHz
>         v: height  270 start  271 end  274 total  278           clock  59=
=2E82Hz
>   400x300 (0x8a) 20.000MHz +HSync +VSync DoubleScan
>         h: width   400 start  420 end  484 total  528 skew    0 clock  37=
=2E88KHz
>         v: height  300 start  300 end  302 total  314           clock  60=
=2E32Hz
>   400x300 (0x8b) 18.000MHz +HSync +VSync DoubleScan
>         h: width   400 start  412 end  448 total  512 skew    0 clock  35=
=2E16KHz
>         v: height  300 start  300 end  301 total  312           clock  56=
=2E34Hz
>   432x243 (0x8c) 16.250MHz -HSync +VSync DoubleScan
>         h: width   432 start  444 end  484 total  536 skew    0 clock  30=
=2E32KHz
>         v: height  243 start  244 end  247 total  253           clock  59=
=2E92Hz
>   432x243 (0x8d) 15.250MHz +HSync -VSync DoubleScan
>         h: width   432 start  456 end  472 total  512 skew    0 clock  29=
=2E79KHz
>         v: height  243 start  244 end  247 total  250           clock  59=
=2E57Hz
>   320x240 (0x8e) 12.587MHz -HSync -VSync DoubleScan
>         h: width   320 start  328 end  376 total  400 skew    0 clock  31=
=2E47KHz
>         v: height  240 start  245 end  246 total  262           clock  60=
=2E05Hz
>   360x202 (0x8f) 11.250MHz -HSync +VSync DoubleScan
>         h: width   360 start  372 end  404 total  448 skew    0 clock  25=
=2E11KHz
>         v: height  202 start  204 end  206 total  211           clock  59=
=2E51Hz
>   360x202 (0x90) 10.875MHz +HSync -VSync DoubleScan
>         h: width   360 start  384 end  400 total  440 skew    0 clock  24=
=2E72KHz
>         v: height  202 start  204 end  206 total  209           clock  59=
=2E13Hz
>   320x180 (0x91)  9.000MHz -HSync +VSync DoubleScan
>         h: width   320 start  332 end  360 total  400 skew    0 clock  22=
=2E50KHz
>         v: height  180 start  181 end  184 total  188           clock  59=
=2E84Hz
>   320x180 (0x92)  8.875MHz +HSync -VSync DoubleScan
>         h: width   320 start  344 end  360 total  400 skew    0 clock  22=
=2E19KHz
>         v: height  180 start  181 end  184 total  187           clock  59=
=2E32Hz
> DP-1 disconnected (normal left inverted right x axis y axis)
> 	Identifier: 0x43
> 	Timestamp:  6612
> 	Subpixel:   unknown
> 	Clones:     HDMI-1
> 	CRTCs:      0 1 2 3
> 	Transform:  1.000000 0.000000 0.000000
> 	            0.000000 1.000000 0.000000
> 	            0.000000 0.000000 1.000000
> 	           filter:=20
> 	HDCP Content Type: HDCP Type0=20
> 		supported: HDCP Type0, HDCP Type1
> 	Content Protection: Undesired=20
> 		supported: Undesired, Desired, Enabled
> 	vrr_capable: 0=20
> 		range: (0, 1)
> 	Colorspace: Default=20
> 		supported: Default, BT709_YCC, XVYCC_601, XVYCC_709, SYCC_601, opYCC_60=
1, opRGB, BT2020_CYCC, BT2020_RGB, BT2020_YCC, DCI-P3_RGB_D65, RGB_WIDE_FIX=
ED, RGB_WIDE_FLOAT, BT601_YCC
> 	max bpc: 12=20
> 		range: (6, 12)
> 	Broadcast RGB: Automatic=20
> 		supported: Automatic, Full, Limited 16:235
> 	audio: auto=20
> 		supported: force-dvi, off, auto, on
> 	subconnector: Unknown=20
> 		supported: Unknown, VGA, DVI-D, HDMI, DP, Wireless, Native
> 	link-status: Good=20
> 		supported: Good, Bad
> 	CONNECTOR_ID: 322=20
> 		supported: 322
> 	non-desktop: 0=20
> 		range: (0, 1)
> HDMI-1 disconnected (normal left inverted right x axis y axis)
> 	Identifier: 0x44
> 	Timestamp:  6612
> 	Subpixel:   unknown
> 	Clones:     DP-1
> 	CRTCs:      0 1 2 3
> 	Transform:  1.000000 0.000000 0.000000
> 	            0.000000 1.000000 0.000000
> 	            0.000000 0.000000 1.000000
> 	           filter:=20
> 	HDCP Content Type: HDCP Type0=20
> 		supported: HDCP Type0, HDCP Type1
> 	Content Protection: Undesired=20
> 		supported: Undesired, Desired, Enabled
> 	max bpc: 12=20
> 		range: (8, 12)
> 	content type: No Data=20
> 		supported: No Data, Graphics, Photo, Cinema, Game
> 	Colorspace: Default=20
> 		supported: Default, SMPTE_170M_YCC, BT709_YCC, XVYCC_601, XVYCC_709, SY=
CC_601, opYCC_601, opRGB, BT2020_CYCC, BT2020_RGB, BT2020_YCC, DCI-P3_RGB_D=
65, DCI-P3_RGB_Theater
> 	aspect ratio: Automatic=20
> 		supported: Automatic, 4:3, 16:9
> 	Broadcast RGB: Automatic=20
> 		supported: Automatic, Full, Limited 16:235
> 	audio: auto=20
> 		supported: force-dvi, off, auto, on
> 	link-status: Good=20
> 		supported: Good, Bad
> 	CONNECTOR_ID: 334=20
> 		supported: 334
> 	non-desktop: 0=20
> 		range: (0, 1)
> DP-2 disconnected (normal left inverted right x axis y axis)
> 	Identifier: 0x45
> 	Timestamp:  6612
> 	Subpixel:   unknown
> 	Clones:   =20
> 	CRTCs:      0 1 2 3
> 	Transform:  1.000000 0.000000 0.000000
> 	            0.000000 1.000000 0.000000
> 	            0.000000 0.000000 1.000000
> 	           filter:=20
> 	HDCP Content Type: HDCP Type0=20
> 		supported: HDCP Type0, HDCP Type1
> 	Content Protection: Undesired=20
> 		supported: Undesired, Desired, Enabled
> 	vrr_capable: 0=20
> 		range: (0, 1)
> 	Colorspace: Default=20
> 		supported: Default, BT709_YCC, XVYCC_601, XVYCC_709, SYCC_601, opYCC_60=
1, opRGB, BT2020_CYCC, BT2020_RGB, BT2020_YCC, DCI-P3_RGB_D65, RGB_WIDE_FIX=
ED, RGB_WIDE_FLOAT, BT601_YCC
> 	max bpc: 12=20
> 		range: (6, 12)
> 	Broadcast RGB: Automatic=20
> 		supported: Automatic, Full, Limited 16:235
> 	audio: auto=20
> 		supported: force-dvi, off, auto, on
> 	subconnector: Unknown=20
> 		supported: Unknown, VGA, DVI-D, HDMI, DP, Wireless, Native
> 	link-status: Good=20
> 		supported: Good, Bad
> 	CONNECTOR_ID: 340=20
> 		supported: 340
> 	non-desktop: 0=20
> 		range: (0, 1)
> DP-3 disconnected (normal left inverted right x axis y axis)
> 	Identifier: 0x46
> 	Timestamp:  6612
> 	Subpixel:   unknown
> 	Clones:   =20
> 	CRTCs:      0 1 2 3
> 	Transform:  1.000000 0.000000 0.000000
> 	            0.000000 1.000000 0.000000
> 	            0.000000 0.000000 1.000000
> 	           filter:=20
> 	HDCP Content Type: HDCP Type0=20
> 		supported: HDCP Type0, HDCP Type1
> 	Content Protection: Undesired=20
> 		supported: Undesired, Desired, Enabled
> 	vrr_capable: 0=20
> 		range: (0, 1)
> 	Colorspace: Default=20
> 		supported: Default, BT709_YCC, XVYCC_601, XVYCC_709, SYCC_601, opYCC_60=
1, opRGB, BT2020_CYCC, BT2020_RGB, BT2020_YCC, DCI-P3_RGB_D65, RGB_WIDE_FIX=
ED, RGB_WIDE_FLOAT, BT601_YCC
> 	max bpc: 12=20
> 		range: (6, 12)
> 	Broadcast RGB: Automatic=20
> 		supported: Automatic, Full, Limited 16:235
> 	audio: auto=20
> 		supported: force-dvi, off, auto, on
> 	subconnector: Unknown=20
> 		supported: Unknown, VGA, DVI-D, HDMI, DP, Wireless, Native
> 	link-status: Good=20
> 		supported: Good, Bad
> 	CONNECTOR_ID: 349=20
> 		supported: 349
> 	non-desktop: 0=20
> 		range: (0, 1)

> ccm 20480 3 - Live 0x0000000000000000
> rfcomm 102400 4 - Live 0x0000000000000000
> cmac 12288 3 - Live 0x0000000000000000
> algif_hash 12288 1 - Live 0x0000000000000000
> algif_skcipher 12288 1 - Live 0x0000000000000000
> af_alg 32768 6 algif_hash,algif_skcipher, Live 0x0000000000000000
> sr_mod 28672 0 - Live 0x0000000000000000
> cdrom 81920 1 sr_mod, Live 0x0000000000000000
> sg 45056 0 - Live 0x0000000000000000
> bnep 36864 2 - Live 0x0000000000000000
> uvcvideo 147456 0 - Live 0x0000000000000000
> btusb 86016 0 - Live 0x0000000000000000
> btrtl 32768 1 btusb, Live 0x0000000000000000
> btintel 69632 1 btusb, Live 0x0000000000000000
> videobuf2_vmalloc 20480 1 uvcvideo, Live 0x0000000000000000
> btbcm 24576 1 btusb, Live 0x0000000000000000
> uvc 12288 1 uvcvideo, Live 0x0000000000000000
> btmtk 12288 1 btusb, Live 0x0000000000000000
> videobuf2_memops 16384 1 videobuf2_vmalloc, Live 0x0000000000000000
> snd_usb_audio 479232 2 - Live 0x0000000000000000
> videobuf2_v4l2 36864 1 uvcvideo, Live 0x0000000000000000
> bluetooth 1064960 34 rfcomm,bnep,btusb,btrtl,btintel,btbcm,btmtk, Live 0x=
0000000000000000
> videodev 364544 2 uvcvideo,videobuf2_v4l2, Live 0x0000000000000000
> snd_usbmidi_lib 49152 1 snd_usb_audio, Live 0x0000000000000000
> uas 32768 0 - Live 0x0000000000000000
> snd_rawmidi 53248 1 snd_usbmidi_lib, Live 0x0000000000000000
> videobuf2_common 81920 4 uvcvideo,videobuf2_vmalloc,videobuf2_memops,vide=
obuf2_v4l2, Live 0x0000000000000000
> snd_seq_device 16384 1 snd_rawmidi, Live 0x0000000000000000
> usb_storage 86016 1 uas, Live 0x0000000000000000
> mc 86016 5 uvcvideo,snd_usb_audio,videobuf2_v4l2,videodev,videobuf2_commo=
n, Live 0x0000000000000000
> qrtr 53248 2 - Live 0x0000000000000000
> binfmt_misc 28672 1 - Live 0x0000000000000000
> snd_ctl_led 24576 0 - Live 0x0000000000000000
> snd_soc_skl_hda_dsp 24576 6 - Live 0x0000000000000000
> snd_soc_hdac_hdmi 45056 1 snd_soc_skl_hda_dsp, Live 0x0000000000000000
> snd_sof_probes 24576 0 - Live 0x0000000000000000
> snd_soc_intel_hda_dsp_common 16384 1 snd_soc_skl_hda_dsp, Live 0x00000000=
00000000
> iwlmvm 561152 0 - Live 0x0000000000000000
> snd_hda_codec_hdmi 94208 1 - Live 0x0000000000000000
> intel_uncore_frequency 12288 0 - Live 0x0000000000000000
> snd_hda_codec_realtek 204800 1 - Live 0x0000000000000000
> intel_uncore_frequency_common 16384 1 intel_uncore_frequency, Live 0x0000=
000000000000
> snd_hda_codec_generic 114688 1 snd_hda_codec_realtek, Live 0x000000000000=
0000
> x86_pkg_temp_thermal 16384 0 - Live 0x0000000000000000
> intel_powerclamp 16384 0 - Live 0x0000000000000000
> snd_hda_scodec_component 20480 1 snd_hda_codec_realtek, Live 0x0000000000=
000000
> snd_soc_dmic 12288 1 - Live 0x0000000000000000
> mac80211 1392640 1 iwlmvm, Live 0x0000000000000000
> snd_sof_pci_intel_tgl 12288 0 - Live 0x0000000000000000
> snd_sof_pci_intel_cnl 20480 1 snd_sof_pci_intel_tgl, Live 0x0000000000000=
000
> snd_sof_intel_hda_generic 36864 2 snd_sof_pci_intel_tgl,snd_sof_pci_intel=
_cnl, Live 0x0000000000000000
> soundwire_intel 73728 1 snd_sof_intel_hda_generic, Live 0x0000000000000000
> coretemp 16384 0 - Live 0x0000000000000000
> soundwire_generic_allocation 12288 1 soundwire_intel, Live 0x000000000000=
0000
> soundwire_cadence 45056 1 soundwire_intel, Live 0x0000000000000000
> snd_sof_intel_hda_common 184320 3 snd_sof_pci_intel_tgl,snd_sof_pci_intel=
_cnl,snd_sof_intel_hda_generic, Live 0x0000000000000000
> kvm_intel 413696 0 - Live 0x0000000000000000
> snd_sof_intel_hda_mlink 36864 3 snd_sof_intel_hda_generic,soundwire_intel=
,snd_sof_intel_hda_common, Live 0x0000000000000000
> snd_sof_intel_hda 20480 2 snd_sof_intel_hda_generic,snd_sof_intel_hda_com=
mon, Live 0x0000000000000000
> snd_sof_pci 24576 3 snd_sof_pci_intel_tgl,snd_sof_pci_intel_cnl,snd_sof_i=
ntel_hda_generic, Live 0x0000000000000000
> snd_sof_xtensa_dsp 16384 1 snd_sof_intel_hda_generic, Live 0x000000000000=
0000
> snd_sof 376832 6 snd_sof_probes,snd_sof_pci_intel_cnl,snd_sof_intel_hda_g=
eneric,snd_sof_intel_hda_common,snd_sof_intel_hda,snd_sof_pci, Live 0x00000=
00000000000
> snd_sof_utils 16384 1 snd_sof, Live 0x0000000000000000
> kvm 1331200 1 kvm_intel, Live 0x0000000000000000
> snd_soc_hdac_hda 28672 1 snd_sof_intel_hda_common, Live 0x0000000000000000
> snd_hda_ext_core 36864 5 snd_soc_hdac_hdmi,snd_sof_intel_hda_common,snd_s=
of_intel_hda_mlink,snd_sof_intel_hda,snd_soc_hdac_hda, Live 0x0000000000000=
000
> snd_soc_acpi_intel_match 106496 3 snd_sof_pci_intel_tgl,snd_sof_pci_intel=
_cnl,snd_sof_intel_hda_generic, Live 0x0000000000000000
> snd_soc_acpi 16384 2 snd_sof_intel_hda_generic,snd_soc_acpi_intel_match, =
Live 0x0000000000000000
> snd_soc_core 405504 8 snd_soc_skl_hda_dsp,snd_soc_hdac_hdmi,snd_sof_probe=
s,snd_soc_dmic,soundwire_intel,snd_sof_intel_hda_common,snd_sof,snd_soc_hda=
c_hda, Live 0x0000000000000000
> snd_compress 28672 2 snd_sof_probes,snd_soc_core, Live 0x0000000000000000
> crc32_pclmul 12288 0 - Live 0x0000000000000000
> soundwire_bus 114688 3 soundwire_intel,soundwire_generic_allocation,sound=
wire_cadence, Live 0x0000000000000000
> ghash_clmulni_intel 16384 0 - Live 0x0000000000000000
> sha512_ssse3 45056 0 - Live 0x0000000000000000
> sha256_ssse3 32768 0 - Live 0x0000000000000000
> sha1_ssse3 32768 0 - Live 0x0000000000000000
> snd_hda_intel 61440 0 - Live 0x0000000000000000
> nls_ascii 12288 1 - Live 0x0000000000000000
> nls_cp437 16384 1 - Live 0x0000000000000000
> snd_intel_dspcfg 36864 4 snd_sof_intel_hda_generic,snd_sof_intel_hda_comm=
on,snd_sof,snd_hda_intel, Live 0x0000000000000000
> vfat 20480 1 - Live 0x0000000000000000
> snd_intel_sdw_acpi 16384 2 snd_sof_intel_hda_generic,snd_intel_dspcfg, Li=
ve 0x0000000000000000
> fat 98304 1 vfat, Live 0x0000000000000000
> aesni_intel 364544 6 - Live 0x0000000000000000
> snd_hda_codec 212992 8 snd_soc_skl_hda_dsp,snd_soc_intel_hda_dsp_common,s=
nd_hda_codec_hdmi,snd_hda_codec_realtek,snd_hda_codec_generic,snd_sof_intel=
_hda,snd_soc_hdac_hda,snd_hda_intel, Live 0x0000000000000000
> crypto_simd 16384 1 aesni_intel, Live 0x0000000000000000
> iTCO_wdt 12288 0 - Live 0x0000000000000000
> intel_pmc_bxt 16384 1 iTCO_wdt, Live 0x0000000000000000
> cryptd 28672 3 ghash_clmulni_intel,crypto_simd, Live 0x0000000000000000
> iTCO_vendor_support 12288 1 iTCO_wdt, Live 0x0000000000000000
> libarc4 12288 1 mac80211, Live 0x0000000000000000
> iwlwifi 421888 1 iwlmvm, Live 0x0000000000000000
> hid_multitouch 32768 0 - Live 0x0000000000000000
> intel_rapl_msr 20480 0 - Live 0x0000000000000000
> mei_hdcp 28672 0 - Live 0x0000000000000000
> ee1004 16384 0 - Live 0x0000000000000000
> watchdog 49152 1 iTCO_wdt, Live 0x0000000000000000
> snd_hda_core 143360 11 snd_soc_hdac_hdmi,snd_soc_intel_hda_dsp_common,snd=
_hda_codec_hdmi,snd_hda_codec_realtek,snd_hda_codec_generic,snd_sof_intel_h=
da_common,snd_sof_intel_hda,snd_soc_hdac_hda,snd_hda_ext_core,snd_hda_intel=
,snd_hda_codec, Live 0x0000000000000000
> processor_thermal_device_pci_legacy 12288 0 - Live 0x0000000000000000
> rapl 20480 0 - Live 0x0000000000000000
> processor_thermal_device 20480 1 processor_thermal_device_pci_legacy, Liv=
e 0x0000000000000000
> ahci 49152 0 - Live 0x0000000000000000
> processor_thermal_wt_hint 16384 1 processor_thermal_device, Live 0x000000=
0000000000
> snd_hwdep 16384 2 snd_usb_audio,snd_hda_codec, Live 0x0000000000000000
> libahci 61440 1 ahci, Live 0x0000000000000000
> intel_cstate 24576 0 - Live 0x0000000000000000
> processor_thermal_rfim 28672 1 processor_thermal_device, Live 0x000000000=
0000000
> processor_thermal_rapl 16384 1 processor_thermal_device, Live 0x000000000=
0000000
> snd_pcm 188416 12 snd_usb_audio,snd_soc_hdac_hdmi,snd_hda_codec_hdmi,soun=
dwire_intel,snd_sof_intel_hda_common,snd_sof,snd_sof_utils,snd_soc_core,snd=
_compress,snd_hda_intel,snd_hda_codec,snd_hda_core, Live 0x0000000000000000
> libata 450560 2 ahci,libahci, Live 0x0000000000000000
> r8169 114688 0 - Live 0x0000000000000000
> intel_rapl_common 49152 2 intel_rapl_msr,processor_thermal_rapl, Live 0x0=
000000000000000
> cfg80211 1343488 3 iwlmvm,mac80211,iwlwifi, Live 0x0000000000000000
> intel_uncore 258048 0 - Live 0x0000000000000000
> processor_thermal_wt_req 12288 1 processor_thermal_device, Live 0x0000000=
000000000
> realtek 45056 1 - Live 0x0000000000000000
> snd_timer 53248 1 snd_pcm, Live 0x0000000000000000
> scsi_mod 319488 5 sr_mod,sg,uas,usb_storage,libata, Live 0x00000000000000=
00
> snd 147456 33 snd_usb_audio,snd_usbmidi_lib,snd_rawmidi,snd_seq_device,sn=
d_ctl_led,snd_soc_hdac_hdmi,snd_hda_codec_hdmi,snd_hda_codec_realtek,snd_hd=
a_codec_generic,snd_sof,snd_soc_core,snd_compress,snd_hda_intel,snd_hda_cod=
ec,snd_hwdep,snd_pcm,snd_timer, Live 0x0000000000000000
> mdio_devres 12288 1 r8169, Live 0x0000000000000000
> intel_lpss_pci 24576 0 - Live 0x0000000000000000
> ideapad_laptop 57344 0 - Live 0x0000000000000000
> i2c_i801 36864 0 - Live 0x0000000000000000
> processor_thermal_power_floor 12288 1 processor_thermal_device, Live 0x00=
00000000000000
> mei_me 57344 1 - Live 0x0000000000000000
> wmi_bmof 12288 0 - Live 0x0000000000000000
> libphy 225280 3 r8169,realtek,mdio_devres, Live 0x0000000000000000
> i2c_hid_acpi 12288 0 - Live 0x0000000000000000
> processor_thermal_mbox 12288 4 processor_thermal_wt_hint,processor_therma=
l_rfim,processor_thermal_wt_req,processor_thermal_power_floor, Live 0x00000=
00000000000
> intel_lpss 12288 1 intel_lpss_pci, Live 0x0000000000000000
> pcspkr 12288 0 - Live 0x0000000000000000
> platform_profile 12288 1 ideapad_laptop, Live 0x0000000000000000
> mei 180224 3 mei_hdcp,mei_me, Live 0x0000000000000000
> i2c_smbus 16384 1 i2c_i801, Live 0x0000000000000000
> soundcore 16384 2 snd_ctl_led,snd, Live 0x0000000000000000
> idma64 20480 0 - Live 0x0000000000000000
> scsi_common 16384 6 sr_mod,sg,uas,usb_storage,libata,scsi_mod, Live 0x000=
0000000000000
> intel_soc_dts_iosf 16384 1 processor_thermal_device_pci_legacy, Live 0x00=
00000000000000
> igen6_edac 28672 0 - Live 0x0000000000000000
> i2c_hid 40960 1 i2c_hid_acpi, Live 0x0000000000000000
> rfkill 40960 8 bluetooth,iwlmvm,cfg80211,ideapad_laptop, Live 0x000000000=
0000000
> battery 28672 0 - Live 0x0000000000000000
> button 24576 0 - Live 0x0000000000000000
> ac 16384 0 - Live 0x0000000000000000
> intel_pmc_core 122880 0 - Live 0x0000000000000000
> intel_vsec 20480 1 intel_pmc_core, Live 0x0000000000000000
> intel_hid 28672 0 - Live 0x0000000000000000
> pmt_telemetry 16384 1 intel_pmc_core, Live 0x0000000000000000
> sparse_keymap 12288 2 ideapad_laptop,intel_hid, Live 0x0000000000000000
> int3403_thermal 16384 0 - Live 0x0000000000000000
> int3400_thermal 20480 0 - Live 0x0000000000000000
> pmt_class 12288 1 pmt_telemetry, Live 0x0000000000000000
> acpi_thermal_rel 16384 1 int3400_thermal, Live 0x0000000000000000
> int340x_thermal_zone 16384 2 processor_thermal_device,int3403_thermal, Li=
ve 0x0000000000000000
> acpi_pad 184320 0 - Live 0x0000000000000000
> dm_mod 208896 0 - Live 0x0000000000000000
> fuse 225280 5 - Live 0x0000000000000000
> loop 40960 0 - Live 0x0000000000000000
> configfs 65536 1 - Live 0x0000000000000000
> efi_pstore 12288 0 - Live 0x0000000000000000
> efivarfs 24576 1 - Live 0x0000000000000000
> ip_tables 36864 0 - Live 0x0000000000000000
> x_tables 65536 1 ip_tables, Live 0x0000000000000000
> autofs4 57344 2 - Live 0x0000000000000000
> ext4 1126400 3 - Live 0x0000000000000000
> crc32c_generic 12288 0 - Live 0x0000000000000000
> crc16 12288 2 bluetooth,ext4, Live 0x0000000000000000
> mbcache 16384 1 ext4, Live 0x0000000000000000
> jbd2 196608 1 ext4, Live 0x0000000000000000
> i915 4194304 24 - Live 0x0000000000000000
> joydev 24576 0 - Live 0x0000000000000000
> hid_generic 12288 0 - Live 0x0000000000000000
> usbhid 73728 0 - Live 0x0000000000000000
> hid 253952 4 hid_multitouch,i2c_hid,hid_generic,usbhid, Live 0x0000000000=
000000
> nvme 57344 5 - Live 0x0000000000000000
> nvme_core 192512 6 nvme, Live 0x0000000000000000
> t10_pi 20480 1 nvme_core, Live 0x0000000000000000
> crc64_rocksoft 16384 1 t10_pi, Live 0x0000000000000000
> crc64 16384 1 crc64_rocksoft, Live 0x0000000000000000
> crc_t10dif 16384 1 t10_pi, Live 0x0000000000000000
> crct10dif_generic 12288 0 - Live 0x0000000000000000
> i2c_algo_bit 12288 1 i915, Live 0x0000000000000000
> cec 69632 1 i915, Live 0x0000000000000000
> rc_core 73728 1 cec, Live 0x0000000000000000
> drm_buddy 20480 1 i915, Live 0x0000000000000000
> ttm 102400 1 i915, Live 0x0000000000000000
> drm_display_helper 245760 1 i915, Live 0x0000000000000000
> xhci_pci 24576 0 - Live 0x0000000000000000
> xhci_hcd 356352 1 xhci_pci, Live 0x0000000000000000
> drm_kms_helper 253952 2 i915,drm_display_helper, Live 0x0000000000000000
> crct10dif_pclmul 12288 1 - Live 0x0000000000000000
> usbcore 393216 9 uvcvideo,btusb,snd_usb_audio,snd_usbmidi_lib,uas,usb_sto=
rage,usbhid,xhci_pci,xhci_hcd, Live 0x0000000000000000
> evdev 28672 45 - Live 0x0000000000000000
> crct10dif_common 12288 3 crc_t10dif,crct10dif_generic,crct10dif_pclmul, L=
ive 0x0000000000000000
> crc32c_intel 16384 6 - Live 0x0000000000000000
> serio_raw 16384 0 - Live 0x0000000000000000
> drm 741376 17 i2c_hid,i915,drm_buddy,ttm,drm_display_helper,drm_kms_helpe=
r, Live 0x0000000000000000
> usb_common 16384 3 uvcvideo,xhci_hcd,usbcore, Live 0x0000000000000000
> vmd 24576 0 - Live 0x0000000000000000
> video 77824 2 ideapad_laptop,i915, Live 0x0000000000000000
> wmi 28672 3 ideapad_laptop,wmi_bmof,video, Live 0x0000000000000000
> fan 20480 0 - Live 0x0000000000000000

> 00000000-00000000 : Reserved
> 00000000-00000000 : System RAM
> 00000000-00000000 : Reserved
>   00000000-00000000 : PCI Bus 0000:00
>   00000000-00000000 : System ROM
> 00000000-00000000 : System RAM
> 00000000-00000000 : Reserved
> 00000000-00000000 : System RAM
> 00000000-00000000 : Reserved
> 00000000-00000000 : System RAM
> 00000000-00000000 : Reserved
> 00000000-00000000 : System RAM
> 00000000-00000000 : Unknown E820 type
> 00000000-00000000 : Reserved
> 00000000-00000000 : ACPI Non-volatile Storage
> 00000000-00000000 : ACPI Tables
> 00000000-00000000 : System RAM
> 00000000-00000000 : Reserved
> 00000000-00000000 : Reserved
> 00000000-00000000 : Reserved
>   00000000-00000000 : Graphics Stolen Memory
> 00000000-00000000 : PCI Bus 0000:00
>   00000000-00000000 : 0000:00:1f.5
>   00000000-00000000 : 0000:00:0e.0
>     00000000-00000000 : VMD MEMBAR1
>       00000000-00000000 : PCI Bus 10000:e1
>         00000000-00000000 : 10000:e1:00.0
>           00000000-00000000 : nvme
>       00000000-00000000 : PCI Bus 10000:e2
>         00000000-00000000 : 10000:e2:00.0
>           00000000-00000000 : nvme
>       00000000-00000000 : 10000:e0:17.0
>         00000000-00000000 : ahci
>       00000000-00000000 : 10000:e0:17.0
>         00000000-00000000 : ahci
>       00000000-00000000 : 10000:e0:17.0
>         00000000-00000000 : ahci
>   00000000-00000000 : PCI Bus 0000:01
>     00000000-00000000 : 0000:01:00.0
>   00000000-00000000 : PCI Bus 0000:02
>     00000000-00000000 : 0000:02:00.0
>     00000000-00000000 : 0000:02:00.0
>       00000000-00000000 : r8169
>   00000000-00000000 : 0000:00:14.0
>     00000000-00000000 : xhci-hcd
> 00000000-00000000 : PCI ECAM 0000 [bus 00-02]
> 00000000-00000000 : pnp 00:05
> 00000000-00000000 : INT34C5:00
>   00000000-00000000 : INT34C5:00 INT34C5:00
> 00000000-00000000 : INT34C5:00
>   00000000-00000000 : INT34C5:00 INT34C5:00
> 00000000-00000000 : pnp 00:05
> 00000000-00000000 : INT34C5:00
>   00000000-00000000 : INT34C5:00 INT34C5:00
> 00000000-00000000 : INT34C5:00
>   00000000-00000000 : INT34C5:00 INT34C5:00
> 00000000-00000000 : pnp 00:05
> 00000000-00000000 : Reserved
> 00000000-00000000 : pnp 00:05
> 00000000-00000000 : pnp 00:05
> 00000000-00000000 : pnp 00:05
> 00000000-00000000 : pnp 00:05
> 00000000-00000000 : IOAPIC 0
> 00000000-00000000 : HPET 0
>   00000000-00000000 : PNP0103:00
> 00000000-00000000 : Reserved
>   00000000-00000000 : INTC6000:00
>     00000000-00000000 : INTC6000:00
> 00000000-00000000 : dmar0
> 00000000-00000000 : dmar1
> 00000000-00000000 : pnp 00:04
> 00000000-00000000 : pnp 00:04
> 00000000-00000000 : pnp 00:04
> 00000000-00000000 : pnp 00:04
> 00000000-00000000 : pnp 00:05
> 00000000-00000000 : System RAM
>   00000000-00000000 : Kernel code
>   00000000-00000000 : Kernel rodata
>   00000000-00000000 : Kernel data
>   00000000-00000000 : Kernel bss
> 00000000-00000000 : RAM buffer
> 00000000-00000000 : PCI Bus 0000:00
>   00000000-00000000 : 0000:00:02.0
>   00000000-00000000 : 0000:00:02.0
>   00000000-00000000 : 0000:00:15.0
>     00000000-00000000 : lpss_dev
>       00000000-00000000 : i2c_designware.0 lpss_dev
>     00000000-00000000 : lpss_priv
>     00000000-00000000 : idma64.0
>       00000000-00000000 : idma64.0 idma64.0
>   00000000-00000000 : 0000:00:02.0
>   00000000-00000000 : PCI Bus 0000:01
>     00000000-00000000 : 0000:01:00.0
>     00000000-00000000 : 0000:01:00.0
>   00000000-00000000 : 0000:00:0e.0
>   00000000-00000000 : 0000:00:02.0
>   00000000-00000000 : 0000:00:1f.3
>     00000000-00000000 : Audio DSP
>   00000000-00000000 : 0000:00:0e.0
>     00000000-00000000 : VMD MEMBAR2
>   00000000-00000000 : 0000:00:04.0
>     00000000-00000000 : proc_thermal
>   00000000-00000000 : 0000:00:0a.0
>     00000000-00000000 : telem1
>     00000000-00000000 : intel_vsec.telemetry.0
>     00000000-00000000 : intel_vsec.telemetry.0
>   00000000-00000000 : 0000:00:1f.3
>     00000000-00000000 : Audio DSP
>   00000000-00000000 : 0000:00:14.3
>     00000000-00000000 : iwlwifi
>   00000000-00000000 : 0000:00:14.2
>   00000000-00000000 : 0000:00:1f.4
>   00000000-00000000 : 0000:00:16.0
>     00000000-00000000 : mei_me
>   00000000-00000000 : 0000:00:14.2
>   00000000-00000000 : 0000:00:08.0

> 0000-0000 : PCI Bus 0000:00
>   0000-0000 : dma1
>   0000-0000 : pic1
>   0000-0000 : timer0
>   0000-0000 : timer1
>   0000-0000 : keyboard
>   0000-0000 : PNP0C09:00
>     0000-0000 : EC data
>   0000-0000 : keyboard
>   0000-0000 : PNP0C09:00
>     0000-0000 : EC cmd
>   0000-0000 : rtc0
>   0000-0000 : dma page reg
>   0000-0000 : pic2
>   0000-0000 : dma2
>   0000-0000 : fpu
>   0000-0000 : iTCO_wdt
>     0000-0000 : iTCO_wdt
>   0000-0000 : pnp 00:00
> 0000-0000 : PCI conf1
> 0000-0000 : PCI Bus 0000:00
>   0000-0000 : pnp 00:00
>   0000-0000 : ACPI PM1a_EVT_BLK
>   0000-0000 : ACPI PM1a_CNT_BLK
>   0000-0000 : ACPI PM_TMR
>   0000-0000 : ACPI CPU throttle
>   0000-0000 : ACPI PM2_CNT_BLK
>   0000-0000 : pnp 00:02
>   0000-0000 : ACPI GPE0_BLK
>   0000-0000 : pnp 00:06
>   0000-0000 : PCI Bus 0000:02
>     0000-0000 : 0000:02:00.0
>   0000-0000 : PCI Bus 0000:01
>     0000-0000 : 0000:01:00.0
>   0000-0000 : 0000:00:02.0
>   0000-0000 : 0000:00:1f.4
>     0000-0000 : i801_smbus
>   0000-0000 : pnp 00:00

> 0000:00:00.0 Host bridge: Intel Corporation 11th Gen Core Processor Host =
Bridge/DRAM Registers (rev 01)
> 	Subsystem: Lenovo 11th Gen Core Processor Host Bridge/DRAM Registers
> 	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Step=
ping- SERR- FastB2B- DisINTx-
> 	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=3Dfast >TAbort- <TAbort=
- <MAbort+ >SERR- <PERR- INTx-
> 	Latency: 0
> 	Capabilities: [e0] Vendor Specific Information: Len=3D14 <?>
> 	Kernel modules: igen6_edac
>=20
> 0000:00:02.0 VGA compatible controller: Intel Corporation TigerLake-LP GT=
2 [Iris Xe Graphics] (rev 01) (prog-if 00 [VGA controller])
> 	Subsystem: Lenovo TigerLake-LP GT2 [Iris Xe Graphics]
> 	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Step=
ping- SERR- FastB2B- DisINTx+
> 	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAbort- <TAbort=
- <MAbort- >SERR- <PERR- INTx-
> 	Latency: 0, Cache Line Size: 64 bytes
> 	Interrupt: pin A routed to IRQ 169
> 	Region 0: Memory at 6014000000 (64-bit, non-prefetchable) [size=3D16M]
> 	Region 2: Memory at 4000000000 (64-bit, prefetchable) [size=3D256M]
> 	Region 4: I/O ports at 5000 [size=3D64]
> 	Expansion ROM at 000c0000 [virtual] [disabled] [size=3D128K]
> 	Capabilities: [40] Vendor Specific Information: Len=3D0c <?>
> 	Capabilities: [70] Express (v2) Root Complex Integrated Endpoint, MSI 00
> 		DevCap:	MaxPayload 128 bytes, PhantFunc 0
> 			ExtTag- RBE+ FLReset+
> 		DevCtl:	CorrErr- NonFatalErr- FatalErr- UnsupReq-
> 			RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop- FLReset-
> 			MaxPayload 128 bytes, MaxReadReq 128 bytes
> 		DevSta:	CorrErr- NonFatalErr- FatalErr- UnsupReq- AuxPwr- TransPend-
> 		DevCap2: Completion Timeout: Not Supported, TimeoutDis- NROPrPrP- LTR-
> 			 10BitTagComp- 10BitTagReq- OBFF Not Supported, ExtFmt- EETLPPrefix-
> 			 EmergencyPowerReduction Not Supported, EmergencyPowerReductionInit-
> 			 FRS-
> 			 AtomicOpsCap: 32bit- 64bit- 128bitCAS-
> 		DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis- LTR- 10BitTagReq=
- OBFF Disabled,
> 			 AtomicOpsCtl: ReqEn-
> 	Capabilities: [ac] MSI: Enable+ Count=3D1/1 Maskable+ 64bit-
> 		Address: fee00018  Data: 0000
> 		Masking: 00000000  Pending: 00000000
> 	Capabilities: [d0] Power Management version 2
> 		Flags: PMEClk- DSI+ D1- D2- AuxCurrent=3D0mA PME(D0-,D1-,D2-,D3hot-,D3c=
old-)
> 		Status: D0 NoSoftRst- PME-Enable- DSel=3D0 DScale=3D0 PME-
> 	Capabilities: [100 v1] Process Address Space ID (PASID)
> 		PASIDCap: Exec- Priv-, Max PASID Width: 14
> 		PASIDCtl: Enable- Exec- Priv-
> 	Capabilities: [200 v1] Address Translation Service (ATS)
> 		ATSCap:	Invalidate Queue Depth: 00
> 		ATSCtl:	Enable-, Smallest Translation Unit: 00
> 	Capabilities: [300 v1] Page Request Interface (PRI)
> 		PRICtl: Enable- Reset-
> 		PRISta: RF- UPRGI- Stopped+
> 		Page Request Capacity: 00008000, Page Request Allocation: 00000000
> 	Capabilities: [320 v1] Single Root I/O Virtualization (SR-IOV)
> 		IOVCap:	Migration- 10BitTagReq- Interrupt Message Number: 000
> 		IOVCtl:	Enable- Migration- Interrupt- MSE- ARIHierarchy- 10BitTagReq-
> 		IOVSta:	Migration-
> 		Initial VFs: 7, Total VFs: 7, Number of VFs: 0, Function Dependency Lin=
k: 00
> 		VF offset: 1, stride: 1, Device ID: 9a49
> 		Supported Page Size: 00000553, System Page Size: 00000001
> 		Region 0: Memory at 0000004010000000 (64-bit, non-prefetchable)
> 		Region 2: Memory at 0000004020000000 (64-bit, prefetchable)
> 		VF Migration: offset: 00000000, BIR: 0
> 	Kernel driver in use: i915
> 	Kernel modules: i915
>=20
> 0000:00:04.0 Signal processing controller: Intel Corporation TigerLake-LP=
 Dynamic Tuning Processor Participant (rev 01)
> 	Subsystem: Lenovo TigerLake-LP Dynamic Tuning Processor Participant
> 	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Step=
ping- SERR- FastB2B- DisINTx-
> 	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=3Dfast >TAbort- <TAbort=
- <MAbort- >SERR- <PERR- INTx-
> 	Latency: 0
> 	Interrupt: pin A routed to IRQ 16
> 	Region 0: Memory at 6015200000 (64-bit, non-prefetchable) [size=3D128K]
> 	Capabilities: [90] MSI: Enable- Count=3D1/1 Maskable- 64bit-
> 		Address: 00000000  Data: 0000
> 	Capabilities: [d0] Power Management version 3
> 		Flags: PMEClk- DSI- D1- D2- AuxCurrent=3D0mA PME(D0-,D1-,D2-,D3hot-,D3c=
old-)
> 		Status: D0 NoSoftRst+ PME-Enable- DSel=3D0 DScale=3D0 PME-
> 	Capabilities: [e0] Vendor Specific Information: Len=3D0c <?>
> 	Kernel driver in use: proc_thermal
> 	Kernel modules: processor_thermal_device_pci_legacy
>=20
> 0000:00:06.0 System peripheral: Intel Corporation RST VMD Managed Control=
ler
> 	Subsystem: Lenovo RST VMD Managed Controller
> 	Control: I/O- Mem- BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr- Step=
ping- SERR- FastB2B- DisINTx-
> 	Status: Cap- 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAbort- <TAbort=
- <MAbort- >SERR- <PERR- INTx-
>=20
> 0000:00:08.0 System peripheral: Intel Corporation GNA Scoring Accelerator=
 module (rev 01)
> 	Subsystem: Lenovo GNA Scoring Accelerator module
> 	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Step=
ping- SERR- FastB2B- DisINTx-
> 	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAbort- <TAbort=
- <MAbort- >SERR- <PERR- INTx-
> 	Latency: 0, Cache Line Size: 64 bytes
> 	Interrupt: pin A routed to IRQ 255
> 	Region 0: Memory at 6015238000 (64-bit, non-prefetchable) [size=3D4K]
> 	Capabilities: [90] MSI: Enable- Count=3D1/1 Maskable- 64bit-
> 		Address: 00000000  Data: 0000
> 	Capabilities: [a0] Vendor Specific Information: Len=3D14 <?>
> 	Capabilities: [dc] Power Management version 2
> 		Flags: PMEClk- DSI- D1- D2- AuxCurrent=3D0mA PME(D0-,D1-,D2-,D3hot-,D3c=
old-)
> 		Status: D0 NoSoftRst- PME-Enable- DSel=3D0 DScale=3D0 PME-
> 	Capabilities: [f0] PCI Advanced Features
> 		AFCap: TP+ FLR+
> 		AFCtrl: FLR-
> 		AFStatus: TP-
>=20
> 0000:00:0a.0 Signal processing controller: Intel Corporation Tigerlake Te=
lemetry Aggregator Driver (rev 01)
> 	Subsystem: Lenovo Tigerlake Telemetry Aggregator Driver
> 	Control: I/O- Mem+ BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr- Step=
ping- SERR- FastB2B- DisINTx-
> 	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAbort- <TAbort=
- <MAbort- >SERR- <PERR- INTx-
> 	Region 0: Memory at 6015220000 (64-bit, non-prefetchable) [size=3D32K]
> 	Capabilities: [70] Express (v2) Root Complex Integrated Endpoint, MSI 00
> 		DevCap:	MaxPayload 128 bytes, PhantFunc 0
> 			ExtTag+ RBE- FLReset-
> 		DevCtl:	CorrErr- NonFatalErr- FatalErr- UnsupReq-
> 			RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
> 			MaxPayload 128 bytes, MaxReadReq 128 bytes
> 		DevSta:	CorrErr- NonFatalErr- FatalErr- UnsupReq- AuxPwr- TransPend-
> 		DevCap2: Completion Timeout: Not Supported, TimeoutDis- NROPrPrP- LTR-
> 			 10BitTagComp- 10BitTagReq- OBFF Not Supported, ExtFmt- EETLPPrefix-
> 			 EmergencyPowerReduction Not Supported, EmergencyPowerReductionInit-
> 			 FRS-
> 			 AtomicOpsCap: 32bit- 64bit- 128bitCAS-
> 		DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis- LTR- 10BitTagReq=
- OBFF Disabled,
> 			 AtomicOpsCtl: ReqEn-
> 	Capabilities: [d0] Power Management version 3
> 		Flags: PMEClk- DSI- D1- D2- AuxCurrent=3D0mA PME(D0-,D1-,D2-,D3hot-,D3c=
old-)
> 		Status: D0 NoSoftRst+ PME-Enable- DSel=3D0 DScale=3D0 PME-
> 	Capabilities: [100 v1] Designated Vendor-Specific: Vendor=3D8086 ID=3D00=
02 Rev=3D1 Len=3D16 <?>
> 	Capabilities: [110 v1] Designated Vendor-Specific: Vendor=3D8086 ID=3D00=
03 Rev=3D1 Len=3D16 <?>
> 	Capabilities: [120 v1] Designated Vendor-Specific: Vendor=3D8086 ID=3D00=
04 Rev=3D1 Len=3D16 <?>
> 	Kernel driver in use: intel_vsec
> 	Kernel modules: intel_vsec
>=20
> 0000:00:0e.0 RAID bus controller: Intel Corporation Volume Management Dev=
ice NVMe RAID Controller
> 	Subsystem: Lenovo Volume Management Device NVMe RAID Controller
> 	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Step=
ping- SERR- FastB2B- DisINTx+
> 	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAbort- <TAbort=
- <MAbort- >SERR- <PERR- INTx-
> 	Latency: 0, Cache Line Size: 64 bytes
> 	Region 0: Memory at 6012000000 (64-bit, non-prefetchable) [size=3D32M]
> 	Region 2: Memory at 52000000 (32-bit, non-prefetchable) [size=3D32M]
> 	Region 4: Memory at 6015100000 (64-bit, non-prefetchable) [size=3D1M]
> 	Capabilities: [80] MSI-X: Enable+ Count=3D19 Masked-
> 		Vector table: BAR=3D4 offset=3D00000000
> 		PBA: BAR=3D4 offset=3D00001000
> 	Capabilities: [90] Express (v2) Root Complex Integrated Endpoint, MSI 00
> 		DevCap:	MaxPayload 128 bytes, PhantFunc 0
> 			ExtTag- RBE- FLReset-
> 		DevCtl:	CorrErr- NonFatalErr- FatalErr- UnsupReq-
> 			RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
> 			MaxPayload 128 bytes, MaxReadReq 128 bytes
> 		DevSta:	CorrErr- NonFatalErr- FatalErr- UnsupReq- AuxPwr- TransPend-
> 		DevCap2: Completion Timeout: Not Supported, TimeoutDis- NROPrPrP- LTR-
> 			 10BitTagComp- 10BitTagReq- OBFF Not Supported, ExtFmt- EETLPPrefix-
> 			 EmergencyPowerReduction Not Supported, EmergencyPowerReductionInit-
> 			 FRS-
> 			 AtomicOpsCap: 32bit- 64bit- 128bitCAS-
> 		DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis- LTR- 10BitTagReq=
- OBFF Disabled,
> 			 AtomicOpsCtl: ReqEn-
> 	Capabilities: [e0] Power Management version 3
> 		Flags: PMEClk- DSI- D1- D2- AuxCurrent=3D0mA PME(D0-,D1-,D2-,D3hot-,D3c=
old-)
> 		Status: D0 NoSoftRst+ PME-Enable- DSel=3D0 DScale=3D0 PME-
> 	Kernel driver in use: vmd
> 	Kernel modules: vmd
>=20
> 0000:00:14.0 USB controller: Intel Corporation Tiger Lake-LP USB 3.2 Gen =
2x1 xHCI Host Controller (rev 20) (prog-if 30 [XHCI])
> 	Subsystem: Lenovo Tiger Lake-LP USB 3.2 Gen 2x1 xHCI Host Controller
> 	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Step=
ping- SERR- FastB2B- DisINTx+
> 	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=3Dmedium >TAbort- <TAbo=
rt- <MAbort- >SERR- <PERR- INTx-
> 	Latency: 0
> 	Interrupt: pin A routed to IRQ 141
> 	Region 0: Memory at 55180000 (64-bit, non-prefetchable) [size=3D64K]
> 	Capabilities: [70] Power Management version 2
> 		Flags: PMEClk- DSI- D1- D2- AuxCurrent=3D375mA PME(D0-,D1-,D2-,D3hot+,D=
3cold+)
> 		Status: D0 NoSoftRst+ PME-Enable- DSel=3D0 DScale=3D0 PME-
> 	Capabilities: [80] MSI: Enable+ Count=3D8/8 Maskable- 64bit+
> 		Address: 00000000fee00518  Data: 0000
> 	Capabilities: [90] Vendor Specific Information: Len=3D14 <?>
> 	Capabilities: [b0] Vendor Specific Information: Len=3D00 <?>
> 	Kernel driver in use: xhci_hcd
> 	Kernel modules: xhci_pci
>=20
> 0000:00:14.2 RAM memory: Intel Corporation Tiger Lake-LP Shared SRAM (rev=
 20)
> 	Subsystem: Lenovo Tiger Lake-LP Shared SRAM
> 	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Step=
ping- SERR- FastB2B- DisINTx-
> 	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAbort- <TAbort=
- <MAbort- >SERR- <PERR- INTx-
> 	Latency: 0, Cache Line Size: 64 bytes
> 	Region 0: Memory at 6015230000 (64-bit, non-prefetchable) [size=3D16K]
> 	Region 2: Memory at 6015237000 (64-bit, non-prefetchable) [size=3D4K]
> 	Capabilities: [80] Power Management version 3
> 		Flags: PMEClk- DSI- D1- D2- AuxCurrent=3D0mA PME(D0-,D1-,D2-,D3hot-,D3c=
old-)
> 		Status: D0 NoSoftRst+ PME-Enable- DSel=3D0 DScale=3D0 PME-
>=20
> 0000:00:14.3 Network controller: Intel Corporation Wi-Fi 6 AX201 (rev 20)
> 	Subsystem: Intel Corporation Wi-Fi 6 AX201
> 	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Step=
ping- SERR- FastB2B- DisINTx+
> 	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAbort- <TAbort=
- <MAbort- >SERR- <PERR- INTx-
> 	Latency: 0, Cache Line Size: 64 bytes
> 	Interrupt: pin A routed to IRQ 16
> 	Region 0: Memory at 601522c000 (64-bit, non-prefetchable) [size=3D16K]
> 	Capabilities: [c8] Power Management version 3
> 		Flags: PMEClk- DSI+ D1- D2- AuxCurrent=3D0mA PME(D0+,D1-,D2-,D3hot+,D3c=
old+)
> 		Status: D0 NoSoftRst+ PME-Enable- DSel=3D0 DScale=3D0 PME-
> 	Capabilities: [d0] MSI: Enable- Count=3D1/1 Maskable- 64bit+
> 		Address: 0000000000000000  Data: 0000
> 	Capabilities: [40] Express (v2) Root Complex Integrated Endpoint, MSI 00
> 		DevCap:	MaxPayload 128 bytes, PhantFunc 0
> 			ExtTag- RBE- FLReset+
> 		DevCtl:	CorrErr- NonFatalErr- FatalErr- UnsupReq-
> 			RlxdOrd+ ExtTag- PhantFunc- AuxPwr+ NoSnoop+ FLReset-
> 			MaxPayload 128 bytes, MaxReadReq 128 bytes
> 		DevSta:	CorrErr- NonFatalErr- FatalErr- UnsupReq- AuxPwr+ TransPend-
> 		DevCap2: Completion Timeout: Range B, TimeoutDis+ NROPrPrP- LTR+
> 			 10BitTagComp- 10BitTagReq- OBFF Via WAKE#, ExtFmt- EETLPPrefix-
> 			 EmergencyPowerReduction Not Supported, EmergencyPowerReductionInit-
> 			 FRS-
> 			 AtomicOpsCap: 32bit- 64bit- 128bitCAS-
> 		DevCtl2: Completion Timeout: 16ms to 55ms, TimeoutDis- LTR+ 10BitTagReq=
- OBFF Disabled,
> 			 AtomicOpsCtl: ReqEn-
> 	Capabilities: [80] MSI-X: Enable+ Count=3D16 Masked-
> 		Vector table: BAR=3D0 offset=3D00002000
> 		PBA: BAR=3D0 offset=3D00003000
> 	Capabilities: [100 v1] Latency Tolerance Reporting
> 		Max snoop latency: 0ns
> 		Max no snoop latency: 0ns
> 	Capabilities: [164 v1] Vendor Specific Information: ID=3D0010 Rev=3D0 Le=
n=3D014 <?>
> 	Kernel driver in use: iwlwifi
> 	Kernel modules: iwlwifi
>=20
> 0000:00:15.0 Serial bus controller: Intel Corporation Tiger Lake-LP Seria=
l IO I2C Controller #0 (rev 20)
> 	Subsystem: Lenovo Tiger Lake-LP Serial IO I2C Controller
> 	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Step=
ping- SERR- FastB2B- DisINTx-
> 	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAbort- <TAbort=
- <MAbort- >SERR- <PERR- INTx-
> 	Latency: 0, Cache Line Size: 64 bytes
> 	Interrupt: pin A routed to IRQ 27
> 	Region 0: Memory at 4017000000 (64-bit, non-prefetchable) [size=3D4K]
> 	Capabilities: [80] Power Management version 3
> 		Flags: PMEClk- DSI- D1- D2- AuxCurrent=3D0mA PME(D0-,D1-,D2-,D3hot-,D3c=
old-)
> 		Status: D3 NoSoftRst+ PME-Enable- DSel=3D0 DScale=3D0 PME-
> 	Capabilities: [90] Vendor Specific Information: Len=3D14 <?>
> 	Kernel driver in use: intel-lpss
> 	Kernel modules: intel_lpss_pci
>=20
> 0000:00:16.0 Communication controller: Intel Corporation Tiger Lake-LP Ma=
nagement Engine Interface (rev 20)
> 	Subsystem: Lenovo Tiger Lake-LP Management Engine Interface
> 	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Step=
ping- SERR- FastB2B- DisINTx+
> 	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAbort- <TAbort=
- <MAbort- >SERR- <PERR- INTx-
> 	Latency: 0
> 	Interrupt: pin A routed to IRQ 170
> 	Region 0: Memory at 6015235000 (64-bit, non-prefetchable) [size=3D4K]
> 	Capabilities: [50] Power Management version 3
> 		Flags: PMEClk- DSI- D1- D2- AuxCurrent=3D0mA PME(D0-,D1-,D2-,D3hot+,D3c=
old-)
> 		Status: D0 NoSoftRst+ PME-Enable- DSel=3D0 DScale=3D0 PME-
> 	Capabilities: [8c] MSI: Enable+ Count=3D1/1 Maskable- 64bit+
> 		Address: 00000000fee004f8  Data: 0000
> 	Capabilities: [a4] Vendor Specific Information: Len=3D14 <?>
> 	Kernel driver in use: mei_me
> 	Kernel modules: mei_me
>=20
> 0000:00:17.0 System peripheral: Intel Corporation RST VMD Managed Control=
ler
> 	Subsystem: Lenovo RST VMD Managed Controller
> 	Control: I/O- Mem- BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr- Step=
ping- SERR- FastB2B- DisINTx-
> 	Status: Cap- 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAbort- <TAbort=
- <MAbort- >SERR- <PERR- INTx-
>=20
> 0000:00:1c.0 PCI bridge: Intel Corporation Tiger Lake-LP PCI Express Root=
 Port (rev 20) (prog-if 00 [Normal decode])
> 	Subsystem: Lenovo Tiger Lake-LP PCI Express Root Port
> 	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Step=
ping- SERR- FastB2B- DisINTx+
> 	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAbort- <TAbort=
- <MAbort- >SERR- <PERR- INTx-
> 	Latency: 0, Cache Line Size: 64 bytes
> 	Interrupt: pin A routed to IRQ 120
> 	Bus: primary=3D00, secondary=3D01, subordinate=3D01, sec-latency=3D0
> 	I/O behind bridge: 4000-4fff [size=3D4K] [16-bit]
> 	Memory behind bridge: 54000000-54ffffff [size=3D16M] [32-bit]
> 	Prefetchable memory behind bridge: 6000000000-6011ffffff [size=3D288M] [=
32-bit]
> 	Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=3Dfast >TAbort- <TAbort=
- <MAbort- <SERR- <PERR-
> 	BridgeCtl: Parity- SERR+ NoISA- VGA- VGA16- MAbort- >Reset- FastB2B-
> 		PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
> 	Capabilities: [40] Express (v2) Root Port (Slot+), MSI 00
> 		DevCap:	MaxPayload 256 bytes, PhantFunc 0
> 			ExtTag- RBE+
> 		DevCtl:	CorrErr+ NonFatalErr+ FatalErr+ UnsupReq+
> 			RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
> 			MaxPayload 256 bytes, MaxReadReq 128 bytes
> 		DevSta:	CorrErr- NonFatalErr- FatalErr- UnsupReq- AuxPwr+ TransPend-
> 		LnkCap:	Port #5, Speed 8GT/s, Width x4, ASPM L1, Exit Latency L1 <16us
> 			ClockPM- Surprise- LLActRep+ BwNot+ ASPMOptComp+
> 		LnkCtl:	ASPM L1 Enabled; RCB 64 bytes, Disabled- CommClk+
> 			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
> 		LnkSta:	Speed 8GT/s, Width x4
> 			TrErr- Train- SlotClk+ DLActive+ BWMgmt+ ABWMgmt-
> 		SltCap:	AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug- Surprise-
> 			Slot #4, PowerLimit 25W; Interlock- NoCompl+
> 		SltCtl:	Enable: AttnBtn- PwrFlt- MRL- PresDet- CmdCplt- HPIrq- LinkChg-
> 			Control: AttnInd Unknown, PwrInd Unknown, Power- Interlock-
> 		SltSta:	Status: AttnBtn- PowerFlt- MRL- CmdCplt- PresDet+ Interlock-
> 			Changed: MRL- PresDet- LinkState+
> 		RootCap: CRSVisible-
> 		RootCtl: ErrCorrectable- ErrNon-Fatal- ErrFatal- PMEIntEna+ CRSVisible-
> 		RootSta: PME ReqID 0000, PMEStatus- PMEPending-
> 		DevCap2: Completion Timeout: Range ABC, TimeoutDis+ NROPrPrP- LTR+
> 			 10BitTagComp- 10BitTagReq- OBFF Not Supported, ExtFmt- EETLPPrefix-
> 			 EmergencyPowerReduction Not Supported, EmergencyPowerReductionInit-
> 			 FRS- LN System CLS Not Supported, TPHComp- ExtTPHComp- ARIFwd+
> 			 AtomicOpsCap: Routing- 32bit- 64bit- 128bitCAS-
> 		DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis- LTR+ 10BitTagReq=
- OBFF Disabled, ARIFwd-
> 			 AtomicOpsCtl: ReqEn- EgressBlck-
> 		LnkCap2: Supported Link Speeds: 2.5-8GT/s, Crosslink- Retimer- 2Retimer=
s- DRS-
> 		LnkCtl2: Target Link Speed: 8GT/s, EnterCompliance- SpeedDis-
> 			 Transmit Margin: Normal Operating Range, EnterModifiedCompliance- Com=
plianceSOS-
> 			 Compliance Preset/De-emphasis: -6dB de-emphasis, 0dB preshoot
> 		LnkSta2: Current De-emphasis Level: -3.5dB, EqualizationComplete+ Equal=
izationPhase1+
> 			 EqualizationPhase2+ EqualizationPhase3+ LinkEqualizationRequest-
> 			 Retimer- 2Retimers- CrosslinkRes: unsupported
> 	Capabilities: [80] MSI: Enable+ Count=3D1/1 Maskable- 64bit-
> 		Address: fee00218  Data: 0000
> 	Capabilities: [90] Subsystem: Lenovo Tiger Lake-LP PCI Express Root Port
> 	Capabilities: [a0] Power Management version 3
> 		Flags: PMEClk- DSI- D1- D2- AuxCurrent=3D0mA PME(D0+,D1-,D2-,D3hot+,D3c=
old+)
> 		Status: D0 NoSoftRst- PME-Enable- DSel=3D0 DScale=3D0 PME-
> 	Capabilities: [100 v1] Advanced Error Reporting
> 		UESta:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP=
- ECRC- UnsupReq- ACSViol-
> 		UEMsk:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP=
- ECRC- UnsupReq- ACSViol-
> 		UESvrt:	DLP+ SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTL=
P+ ECRC- UnsupReq- ACSViol-
> 		CESta:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr-
> 		CEMsk:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr+
> 		AERCap:	First Error Pointer: 00, ECRCGenCap- ECRCGenEn- ECRCChkCap- ECR=
CChkEn-
> 			MultHdrRecCap- MultHdrRecEn- TLPPfxPres- HdrLogCap-
> 		HeaderLog: 00000000 00000000 00000000 00000000
> 		RootCmd: CERptEn+ NFERptEn+ FERptEn+
> 		RootSta: CERcvd- MultCERcvd- UERcvd- MultUERcvd-
> 			 FirstFatal- NonFatalMsg- FatalMsg- IntMsg 0
> 		ErrorSrc: ERR_COR: 0000 ERR_FATAL/NONFATAL: 0000
> 	Capabilities: [220 v1] Access Control Services
> 		ACSCap:	SrcValid+ TransBlk+ ReqRedir+ CmpltRedir+ UpstreamFwd+ EgressCt=
rl- DirectTrans-
> 		ACSCtl:	SrcValid+ TransBlk- ReqRedir+ CmpltRedir+ UpstreamFwd+ EgressCt=
rl- DirectTrans-
> 	Capabilities: [150 v1] Precision Time Measurement
> 		PTMCap: Requester:- Responder:+ Root:+
> 		PTMClockGranularity: 4ns
> 		PTMControl: Enabled:+ RootSelected:+
> 		PTMEffectiveGranularity: Unknown
> 	Capabilities: [a30 v1] Secondary PCI Express
> 		LnkCtl3: LnkEquIntrruptEn- PerformEqu-
> 		LaneErrStat: 0
> 	Capabilities: [a00 v1] Downstream Port Containment
> 		DpcCap:	INT Msg #0, RPExt+ PoisonedTLP+ SwTrigger+ RP PIO Log 4, DL_Act=
iveErr+
> 		DpcCtl:	Trigger:1 Cmpl- INT+ ErrCor- PoisonedTLP- SwTrigger- DL_ActiveE=
rr-
> 		DpcSta:	Trigger- Reason:00 INT- RPBusy- TriggerExt:00 RP PIO ErrPtr:1f
> 		Source:	0000
> 	Kernel driver in use: pcieport
>=20
> 0000:00:1d.0 System peripheral: Intel Corporation RST VMD Managed Control=
ler
> 	Subsystem: Lenovo RST VMD Managed Controller
> 	Control: I/O- Mem- BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr- Step=
ping- SERR- FastB2B- DisINTx-
> 	Status: Cap- 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAbort- <TAbort=
- <MAbort- >SERR- <PERR- INTx-
>=20
> 0000:00:1d.3 PCI bridge: Intel Corporation Tiger Lake-LP PCI Express Root=
 Port (rev 20) (prog-if 00 [Normal decode])
> 	Subsystem: Lenovo Tiger Lake-LP PCI Express Root Port
> 	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Step=
ping- SERR- FastB2B- DisINTx+
> 	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAbort- <TAbort=
- <MAbort- >SERR- <PERR- INTx-
> 	Latency: 0, Cache Line Size: 64 bytes
> 	Interrupt: pin D routed to IRQ 121
> 	Bus: primary=3D00, secondary=3D02, subordinate=3D02, sec-latency=3D0
> 	I/O behind bridge: 3000-3fff [size=3D4K] [16-bit]
> 	Memory behind bridge: 55000000-550fffff [size=3D1M] [32-bit]
> 	Prefetchable memory behind bridge: 00000000fff00000-00000000000fffff [di=
sabled] [64-bit]
> 	Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=3Dfast >TAbort- <TAbort=
- <MAbort- <SERR- <PERR-
> 	BridgeCtl: Parity- SERR+ NoISA- VGA- VGA16- MAbort- >Reset- FastB2B-
> 		PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
> 	Capabilities: [40] Express (v2) Root Port (Slot+), MSI 00
> 		DevCap:	MaxPayload 256 bytes, PhantFunc 0
> 			ExtTag- RBE+
> 		DevCtl:	CorrErr+ NonFatalErr+ FatalErr+ UnsupReq+
> 			RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
> 			MaxPayload 128 bytes, MaxReadReq 128 bytes
> 		DevSta:	CorrErr- NonFatalErr- FatalErr- UnsupReq- AuxPwr+ TransPend-
> 		LnkCap:	Port #12, Speed 8GT/s, Width x1, ASPM L0s L1, Exit Latency L0s =
<1us, L1 <16us
> 			ClockPM- Surprise- LLActRep+ BwNot+ ASPMOptComp+
> 		LnkCtl:	ASPM Disabled; RCB 64 bytes, Disabled- CommClk+
> 			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
> 		LnkSta:	Speed 2.5GT/s, Width x1
> 			TrErr- Train- SlotClk+ DLActive+ BWMgmt+ ABWMgmt-
> 		SltCap:	AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug- Surprise-
> 			Slot #11, PowerLimit 10W; Interlock- NoCompl+
> 		SltCtl:	Enable: AttnBtn- PwrFlt- MRL- PresDet- CmdCplt- HPIrq- LinkChg-
> 			Control: AttnInd Unknown, PwrInd Unknown, Power- Interlock-
> 		SltSta:	Status: AttnBtn- PowerFlt- MRL- CmdCplt- PresDet+ Interlock-
> 			Changed: MRL- PresDet- LinkState+
> 		RootCap: CRSVisible-
> 		RootCtl: ErrCorrectable- ErrNon-Fatal- ErrFatal- PMEIntEna+ CRSVisible-
> 		RootSta: PME ReqID 0000, PMEStatus- PMEPending-
> 		DevCap2: Completion Timeout: Range ABC, TimeoutDis+ NROPrPrP- LTR+
> 			 10BitTagComp- 10BitTagReq- OBFF Not Supported, ExtFmt- EETLPPrefix-
> 			 EmergencyPowerReduction Not Supported, EmergencyPowerReductionInit-
> 			 FRS- LN System CLS Not Supported, TPHComp- ExtTPHComp- ARIFwd+
> 			 AtomicOpsCap: Routing- 32bit- 64bit- 128bitCAS-
> 		DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis- LTR+ 10BitTagReq=
- OBFF Disabled, ARIFwd-
> 			 AtomicOpsCtl: ReqEn- EgressBlck-
> 		LnkCap2: Supported Link Speeds: 2.5-8GT/s, Crosslink- Retimer- 2Retimer=
s- DRS-
> 		LnkCtl2: Target Link Speed: 8GT/s, EnterCompliance- SpeedDis-
> 			 Transmit Margin: Normal Operating Range, EnterModifiedCompliance- Com=
plianceSOS-
> 			 Compliance Preset/De-emphasis: -6dB de-emphasis, 0dB preshoot
> 		LnkSta2: Current De-emphasis Level: -3.5dB, EqualizationComplete- Equal=
izationPhase1-
> 			 EqualizationPhase2- EqualizationPhase3- LinkEqualizationRequest-
> 			 Retimer- 2Retimers- CrosslinkRes: unsupported
> 	Capabilities: [80] MSI: Enable+ Count=3D1/1 Maskable- 64bit-
> 		Address: fee00258  Data: 0000
> 	Capabilities: [90] Subsystem: Lenovo Tiger Lake-LP PCI Express Root Port
> 	Capabilities: [a0] Power Management version 3
> 		Flags: PMEClk- DSI- D1- D2- AuxCurrent=3D0mA PME(D0+,D1-,D2-,D3hot+,D3c=
old+)
> 		Status: D0 NoSoftRst- PME-Enable- DSel=3D0 DScale=3D0 PME-
> 	Capabilities: [100 v1] Advanced Error Reporting
> 		UESta:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP=
- ECRC- UnsupReq- ACSViol-
> 		UEMsk:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP=
- ECRC- UnsupReq- ACSViol-
> 		UESvrt:	DLP+ SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTL=
P+ ECRC- UnsupReq- ACSViol-
> 		CESta:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr-
> 		CEMsk:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr+
> 		AERCap:	First Error Pointer: 00, ECRCGenCap- ECRCGenEn- ECRCChkCap- ECR=
CChkEn-
> 			MultHdrRecCap- MultHdrRecEn- TLPPfxPres- HdrLogCap-
> 		HeaderLog: 00000000 00000000 00000000 00000000
> 		RootCmd: CERptEn+ NFERptEn+ FERptEn+
> 		RootSta: CERcvd- MultCERcvd- UERcvd- MultUERcvd-
> 			 FirstFatal- NonFatalMsg- FatalMsg- IntMsg 0
> 		ErrorSrc: ERR_COR: 0000 ERR_FATAL/NONFATAL: 0000
> 	Capabilities: [220 v1] Access Control Services
> 		ACSCap:	SrcValid+ TransBlk+ ReqRedir+ CmpltRedir+ UpstreamFwd+ EgressCt=
rl- DirectTrans-
> 		ACSCtl:	SrcValid+ TransBlk- ReqRedir+ CmpltRedir+ UpstreamFwd+ EgressCt=
rl- DirectTrans-
> 	Capabilities: [150 v1] Precision Time Measurement
> 		PTMCap: Requester:- Responder:+ Root:+
> 		PTMClockGranularity: 4ns
> 		PTMControl: Enabled:+ RootSelected:+
> 		PTMEffectiveGranularity: Unknown
> 	Capabilities: [200 v1] L1 PM Substates
> 		L1SubCap: PCI-PM_L1.2+ PCI-PM_L1.1+ ASPM_L1.2+ ASPM_L1.1+ L1_PM_Substat=
es+
> 			  PortCommonModeRestoreTime=3D40us PortTPowerOnTime=3D44us
> 		L1SubCtl1: PCI-PM_L1.2- PCI-PM_L1.1- ASPM_L1.2- ASPM_L1.1-
> 			   T_CommonMode=3D150us LTR1.2_Threshold=3D306176ns
> 		L1SubCtl2: T_PwrOn=3D150us
> 	Capabilities: [a30 v1] Secondary PCI Express
> 		LnkCtl3: LnkEquIntrruptEn- PerformEqu-
> 		LaneErrStat: 0
> 	Capabilities: [a00 v1] Downstream Port Containment
> 		DpcCap:	INT Msg #0, RPExt+ PoisonedTLP+ SwTrigger+ RP PIO Log 4, DL_Act=
iveErr+
> 		DpcCtl:	Trigger:1 Cmpl- INT+ ErrCor- PoisonedTLP- SwTrigger- DL_ActiveE=
rr-
> 		DpcSta:	Trigger- Reason:00 INT- RPBusy- TriggerExt:00 RP PIO ErrPtr:1f
> 		Source:	0000
> 	Kernel driver in use: pcieport
>=20
> 0000:00:1f.0 ISA bridge: Intel Corporation Tiger Lake-LP LPC Controller (=
rev 20)
> 	Subsystem: Lenovo Tiger Lake-LP LPC Controller
> 	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Step=
ping- SERR- FastB2B- DisINTx+
> 	Status: Cap- 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAbort- <TAbort=
- <MAbort- >SERR- <PERR- INTx-
> 	Latency: 0
>=20
> 0000:00:1f.3 Multimedia audio controller: Intel Corporation Tiger Lake-LP=
 Smart Sound Technology Audio Controller (rev 20)
> 	Subsystem: Lenovo Tiger Lake-LP Smart Sound Technology Audio Controller
> 	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Step=
ping- SERR- FastB2B- DisINTx+
> 	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAbort- <TAbort=
- <MAbort- >SERR- <PERR- INTx-
> 	Latency: 32, Cache Line Size: 64 bytes
> 	Interrupt: pin A routed to IRQ 184
> 	Region 0: Memory at 6015228000 (64-bit, non-prefetchable) [size=3D16K]
> 	Region 4: Memory at 6015000000 (64-bit, non-prefetchable) [size=3D1M]
> 	Capabilities: [50] Power Management version 3
> 		Flags: PMEClk- DSI- D1- D2- AuxCurrent=3D55mA PME(D0-,D1-,D2-,D3hot+,D3=
cold+)
> 		Status: D3 NoSoftRst+ PME-Enable+ DSel=3D0 DScale=3D0 PME-
> 	Capabilities: [80] Vendor Specific Information: Len=3D14 <?>
> 	Capabilities: [60] MSI: Enable+ Count=3D1/1 Maskable- 64bit+
> 		Address: 00000000fee00778  Data: 0000
> 	Kernel driver in use: sof-audio-pci-intel-tgl
> 	Kernel modules: snd_hda_intel, snd_sof_pci_intel_tgl
>=20
> 0000:00:1f.4 SMBus: Intel Corporation Tiger Lake-LP SMBus Controller (rev=
 20)
> 	Subsystem: Lenovo Tiger Lake-LP SMBus Controller
> 	Control: I/O+ Mem+ BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr- Step=
ping- SERR- FastB2B- DisINTx-
> 	Status: Cap- 66MHz- UDF- FastB2B+ ParErr- DEVSEL=3Dmedium >TAbort- <TAbo=
rt- <MAbort- >SERR- <PERR- INTx-
> 	Interrupt: pin A routed to IRQ 16
> 	Region 0: Memory at 6015234000 (64-bit, non-prefetchable) [size=3D256]
> 	Region 4: I/O ports at efa0 [size=3D32]
> 	Kernel driver in use: i801_smbus
> 	Kernel modules: i2c_i801
>=20
> 0000:00:1f.5 Serial bus controller: Intel Corporation Tiger Lake-LP SPI C=
ontroller (rev 20)
> 	Subsystem: Lenovo Tiger Lake-LP SPI Controller
> 	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Step=
ping- SERR- FastB2B- DisINTx+
> 	Status: Cap- 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAbort- <TAbort=
- <MAbort- >SERR- <PERR- INTx-
> 	Latency: 0
> 	Region 0: Memory at 50400000 (32-bit, non-prefetchable) [size=3D4K]
>=20
> 0000:01:00.0 3D controller: NVIDIA Corporation TU117M [GeForce GTX 1650 M=
obile / Max-Q] (rev a1)
> 	Subsystem: Lenovo TU117M [GeForce GTX 1650 Mobile / Max-Q]
> 	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Step=
ping- SERR- FastB2B- DisINTx-
> 	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAbort- <TAbort=
- <MAbort- >SERR- <PERR- INTx-
> 	Latency: 0, Cache Line Size: 64 bytes
> 	Interrupt: pin A routed to IRQ 255
> 	Region 0: Memory at 54000000 (32-bit, non-prefetchable) [size=3D16M]
> 	Region 1: Memory at 6000000000 (64-bit, prefetchable) [size=3D256M]
> 	Region 3: Memory at 6010000000 (64-bit, prefetchable) [size=3D32M]
> 	Region 5: I/O ports at 4000 [disabled] [size=3D128]
> 	Expansion ROM at <ignored> [disabled]
> 	Capabilities: [60] Power Management version 3
> 		Flags: PMEClk- DSI- D1- D2- AuxCurrent=3D375mA PME(D0+,D1-,D2-,D3hot+,D=
3cold+)
> 		Status: D0 NoSoftRst+ PME-Enable- DSel=3D0 DScale=3D0 PME-
> 	Capabilities: [68] MSI: Enable- Count=3D1/1 Maskable- 64bit+
> 		Address: 0000000000000000  Data: 0000
> 	Capabilities: [78] Express (v2) Endpoint, MSI 00
> 		DevCap:	MaxPayload 256 bytes, PhantFunc 0, Latency L0s unlimited, L1 <6=
4us
> 			ExtTag+ AttnBtn- AttnInd- PwrInd- RBE+ FLReset+ SlotPowerLimit 25W
> 		DevCtl:	CorrErr+ NonFatalErr+ FatalErr+ UnsupReq+
> 			RlxdOrd+ ExtTag+ PhantFunc- AuxPwr- NoSnoop+ FLReset-
> 			MaxPayload 256 bytes, MaxReadReq 512 bytes
> 		DevSta:	CorrErr+ NonFatalErr- FatalErr- UnsupReq+ AuxPwr+ TransPend-
> 		LnkCap:	Port #0, Speed 16GT/s, Width x16, ASPM L0s L1, Exit Latency L0s=
 <1us, L1 <4us
> 			ClockPM+ Surprise- LLActRep- BwNot- ASPMOptComp+
> 		LnkCtl:	ASPM L1 Enabled; RCB 64 bytes, Disabled- CommClk+
> 			ExtSynch- ClockPM+ AutWidDis- BWInt- AutBWInt-
> 		LnkSta:	Speed 8GT/s (downgraded), Width x4 (downgraded)
> 			TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-
> 		DevCap2: Completion Timeout: Range AB, TimeoutDis+ NROPrPrP- LTR+
> 			 10BitTagComp+ 10BitTagReq- OBFF Via message, ExtFmt- EETLPPrefix-
> 			 EmergencyPowerReduction Not Supported, EmergencyPowerReductionInit-
> 			 FRS- TPHComp- ExtTPHComp-
> 			 AtomicOpsCap: 32bit- 64bit- 128bitCAS-
> 		DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis- LTR+ 10BitTagReq=
- OBFF Disabled,
> 			 AtomicOpsCtl: ReqEn-
> 		LnkCap2: Supported Link Speeds: 2.5-16GT/s, Crosslink- Retimer+ 2Retime=
rs+ DRS-
> 		LnkCtl2: Target Link Speed: 16GT/s, EnterCompliance- SpeedDis-
> 			 Transmit Margin: Normal Operating Range, EnterModifiedCompliance- Com=
plianceSOS-
> 			 Compliance Preset/De-emphasis: -6dB de-emphasis, 0dB preshoot
> 		LnkSta2: Current De-emphasis Level: -6dB, EqualizationComplete+ Equaliz=
ationPhase1+
> 			 EqualizationPhase2+ EqualizationPhase3+ LinkEqualizationRequest-
> 			 Retimer- 2Retimers- CrosslinkRes: unsupported
> 	Capabilities: [100 v1] Virtual Channel
> 		Caps:	LPEVC=3D0 RefClk=3D100ns PATEntryBits=3D1
> 		Arb:	Fixed- WRR32- WRR64- WRR128-
> 		Ctrl:	ArbSelect=3DFixed
> 		Status:	InProgress-
> 		VC0:	Caps:	PATOffset=3D00 MaxTimeSlots=3D1 RejSnoopTrans-
> 			Arb:	Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256-
> 			Ctrl:	Enable+ ID=3D0 ArbSelect=3DFixed TC/VC=3Dff
> 			Status:	NegoPending- InProgress-
> 	Capabilities: [250 v1] Latency Tolerance Reporting
> 		Max snoop latency: 3145728ns
> 		Max no snoop latency: 3145728ns
> 	Capabilities: [258 v1] L1 PM Substates
> 		L1SubCap: PCI-PM_L1.2+ PCI-PM_L1.1+ ASPM_L1.2+ ASPM_L1.1+ L1_PM_Substat=
es+
> 			  PortCommonModeRestoreTime=3D255us PortTPowerOnTime=3D10us
> 		L1SubCtl1: PCI-PM_L1.2- PCI-PM_L1.1- ASPM_L1.2- ASPM_L1.1-
> 			   T_CommonMode=3D0us LTR1.2_Threshold=3D281600ns
> 		L1SubCtl2: T_PwrOn=3D10us
> 	Capabilities: [128 v1] Power Budgeting <?>
> 	Capabilities: [420 v2] Advanced Error Reporting
> 		UESta:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP=
- ECRC- UnsupReq- ACSViol-
> 		UEMsk:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP=
- ECRC- UnsupReq- ACSViol-
> 		UESvrt:	DLP+ SDES+ TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTL=
P+ ECRC- UnsupReq- ACSViol-
> 		CESta:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr-
> 		CEMsk:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr+
> 		AERCap:	First Error Pointer: 00, ECRCGenCap- ECRCGenEn- ECRCChkCap- ECR=
CChkEn-
> 			MultHdrRecCap- MultHdrRecEn- TLPPfxPres- HdrLogCap-
> 		HeaderLog: 00000000 00000000 00000000 00000000
> 	Capabilities: [600 v1] Vendor Specific Information: ID=3D0001 Rev=3D1 Le=
n=3D024 <?>
> 	Capabilities: [900 v1] Secondary PCI Express
> 		LnkCtl3: LnkEquIntrruptEn- PerformEqu-
> 		LaneErrStat: 0
> 	Capabilities: [bb0 v1] Physical Resizable BAR
> 		BAR 0: current size: 16MB, supported: 16MB
> 		BAR 1: current size: 256MB, supported: 64MB 128MB 256MB
> 		BAR 3: current size: 32MB, supported: 32MB
> 	Capabilities: [c1c v1] Physical Layer 16.0 GT/s <?>
> 	Capabilities: [d00 v1] Lane Margining at the Receiver <?>
> 	Capabilities: [e00 v1] Data Link Feature <?>
> 	Kernel modules: nouveau
>=20
> 0000:02:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8111=
/8168/8411 PCI Express Gigabit Ethernet Controller (rev 15)
> 	Subsystem: Lenovo RTL8111/8168/8211/8411 PCI Express Gigabit Ethernet Co=
ntroller
> 	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Step=
ping- SERR- FastB2B- DisINTx+
> 	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAbort- <TAbort=
- <MAbort- >SERR- <PERR- INTx-
> 	Latency: 0, Cache Line Size: 64 bytes
> 	Interrupt: pin A routed to IRQ 19
> 	Region 0: I/O ports at 3000 [size=3D256]
> 	Region 2: Memory at 55004000 (64-bit, non-prefetchable) [size=3D4K]
> 	Region 4: Memory at 55000000 (64-bit, non-prefetchable) [size=3D16K]
> 	Capabilities: [40] Power Management version 3
> 		Flags: PMEClk- DSI- D1+ D2+ AuxCurrent=3D375mA PME(D0+,D1+,D2+,D3hot+,D=
3cold+)
> 		Status: D0 NoSoftRst+ PME-Enable- DSel=3D0 DScale=3D0 PME-
> 	Capabilities: [50] MSI: Enable- Count=3D1/1 Maskable- 64bit+
> 		Address: 0000000000000000  Data: 0000
> 	Capabilities: [70] Express (v2) Endpoint, MSI 01
> 		DevCap:	MaxPayload 128 bytes, PhantFunc 0, Latency L0s <512ns, L1 <64us
> 			ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset- SlotPowerLimit 10W
> 		DevCtl:	CorrErr+ NonFatalErr+ FatalErr+ UnsupReq+
> 			RlxdOrd+ ExtTag- PhantFunc- AuxPwr- NoSnoop-
> 			MaxPayload 128 bytes, MaxReadReq 4096 bytes
> 		DevSta:	CorrErr- NonFatalErr- FatalErr- UnsupReq- AuxPwr+ TransPend-
> 		LnkCap:	Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Exit Latency L0s=
 unlimited, L1 <64us
> 			ClockPM+ Surprise- LLActRep- BwNot- ASPMOptComp+
> 		LnkCtl:	ASPM Disabled; RCB 64 bytes, Disabled- CommClk+
> 			ExtSynch- ClockPM+ AutWidDis- BWInt- AutBWInt-
> 		LnkSta:	Speed 2.5GT/s, Width x1
> 			TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-
> 		DevCap2: Completion Timeout: Range ABCD, TimeoutDis+ NROPrPrP- LTR+
> 			 10BitTagComp- 10BitTagReq- OBFF Via message/WAKE#, ExtFmt- EETLPPrefi=
x-
> 			 EmergencyPowerReduction Not Supported, EmergencyPowerReductionInit-
> 			 FRS- TPHComp- ExtTPHComp-
> 			 AtomicOpsCap: 32bit- 64bit- 128bitCAS-
> 		DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis- LTR+ 10BitTagReq=
- OBFF Disabled,
> 			 AtomicOpsCtl: ReqEn-
> 		LnkCap2: Supported Link Speeds: 2.5GT/s, Crosslink- Retimer- 2Retimers-=
 DRS-
> 		LnkCtl2: Target Link Speed: 2.5GT/s, EnterCompliance- SpeedDis-
> 			 Transmit Margin: Normal Operating Range, EnterModifiedCompliance- Com=
plianceSOS-
> 			 Compliance Preset/De-emphasis: -6dB de-emphasis, 0dB preshoot
> 		LnkSta2: Current De-emphasis Level: -6dB, EqualizationComplete- Equaliz=
ationPhase1-
> 			 EqualizationPhase2- EqualizationPhase3- LinkEqualizationRequest-
> 			 Retimer- 2Retimers- CrosslinkRes: unsupported
> 	Capabilities: [b0] MSI-X: Enable+ Count=3D4 Masked-
> 		Vector table: BAR=3D4 offset=3D00000000
> 		PBA: BAR=3D4 offset=3D00000800
> 	Capabilities: [100 v2] Advanced Error Reporting
> 		UESta:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP=
- ECRC- UnsupReq- ACSViol-
> 		UEMsk:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP=
- ECRC- UnsupReq- ACSViol-
> 		UESvrt:	DLP+ SDES+ TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTL=
P+ ECRC- UnsupReq- ACSViol-
> 		CESta:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr-
> 		CEMsk:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr+
> 		AERCap:	First Error Pointer: 00, ECRCGenCap+ ECRCGenEn- ECRCChkCap+ ECR=
CChkEn-
> 			MultHdrRecCap- MultHdrRecEn- TLPPfxPres- HdrLogCap-
> 		HeaderLog: 00000000 00000000 00000000 00000000
> 	Capabilities: [140 v1] Virtual Channel
> 		Caps:	LPEVC=3D0 RefClk=3D100ns PATEntryBits=3D1
> 		Arb:	Fixed- WRR32- WRR64- WRR128-
> 		Ctrl:	ArbSelect=3DFixed
> 		Status:	InProgress-
> 		VC0:	Caps:	PATOffset=3D00 MaxTimeSlots=3D1 RejSnoopTrans-
> 			Arb:	Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256-
> 			Ctrl:	Enable+ ID=3D0 ArbSelect=3DFixed TC/VC=3Dff
> 			Status:	NegoPending- InProgress-
> 	Capabilities: [160 v1] Device Serial Number 01-00-00-00-68-4c-e0-00
> 	Capabilities: [170 v1] Latency Tolerance Reporting
> 		Max snoop latency: 3145728ns
> 		Max no snoop latency: 3145728ns
> 	Capabilities: [178 v1] L1 PM Substates
> 		L1SubCap: PCI-PM_L1.2+ PCI-PM_L1.1+ ASPM_L1.2+ ASPM_L1.1+ L1_PM_Substat=
es+
> 			  PortCommonModeRestoreTime=3D150us PortTPowerOnTime=3D150us
> 		L1SubCtl1: PCI-PM_L1.2- PCI-PM_L1.1- ASPM_L1.2- ASPM_L1.1-
> 			   T_CommonMode=3D0us LTR1.2_Threshold=3D306176ns
> 		L1SubCtl2: T_PwrOn=3D150us
> 	Kernel driver in use: r8169
> 	Kernel modules: r8169
>=20
> 10000:e0:06.0 PCI bridge: Intel Corporation 11th Gen Core Processor PCIe =
Controller (rev 01) (prog-if 00 [Normal decode])
> 	Subsystem: Intel Corporation 11th Gen Core Processor PCIe Controller
> 	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Step=
ping- SERR- FastB2B- DisINTx+
> 	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAbort- <TAbort=
- <MAbort- >SERR- <PERR- INTx-
> 	Latency: 0
> 	Interrupt: pin D routed to IRQ 149
> 	Bus: primary=3D00, secondary=3De1, subordinate=3De1, sec-latency=3D0
> 	I/O behind bridge: f000-0fff [disabled] [16-bit]
> 	Memory behind bridge: 52000000-520fffff [size=3D1M] [32-bit]
> 	Prefetchable memory behind bridge: 00000000fff00000-00000000000fffff [di=
sabled] [64-bit]
> 	Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=3Dfast >TAbort+ <TAbort=
- <MAbort- <SERR- <PERR-
> 	BridgeCtl: Parity- SERR+ NoISA- VGA- VGA16- MAbort- >Reset- FastB2B-
> 		PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
> 	Capabilities: [40] Express (v2) Root Port (Slot+), MSI 00
> 		DevCap:	MaxPayload 256 bytes, PhantFunc 0
> 			ExtTag- RBE+
> 		DevCtl:	CorrErr+ NonFatalErr+ FatalErr+ UnsupReq+
> 			RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
> 			MaxPayload 256 bytes, MaxReadReq 128 bytes
> 		DevSta:	CorrErr- NonFatalErr- FatalErr- UnsupReq- AuxPwr+ TransPend-
> 		LnkCap:	Port #1, Speed 16GT/s, Width x4, ASPM L1, Exit Latency L1 <16us
> 			ClockPM- Surprise- LLActRep+ BwNot+ ASPMOptComp+
> 		LnkCtl:	ASPM L1 Enabled; RCB 64 bytes, Disabled- CommClk+
> 			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
> 		LnkSta:	Speed 16GT/s, Width x4
> 			TrErr- Train- SlotClk+ DLActive+ BWMgmt+ ABWMgmt-
> 		SltCap:	AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug- Surprise-
> 			Slot #0, PowerLimit 75W; Interlock- NoCompl+
> 		SltCtl:	Enable: AttnBtn- PwrFlt- MRL- PresDet- CmdCplt- HPIrq- LinkChg-
> 			Control: AttnInd Unknown, PwrInd Unknown, Power- Interlock-
> 		SltSta:	Status: AttnBtn- PowerFlt- MRL- CmdCplt- PresDet+ Interlock-
> 			Changed: MRL- PresDet+ LinkState+
> 		RootCap: CRSVisible-
> 		RootCtl: ErrCorrectable- ErrNon-Fatal- ErrFatal- PMEIntEna+ CRSVisible-
> 		RootSta: PME ReqID 0000, PMEStatus- PMEPending-
> 		DevCap2: Completion Timeout: Range ABC, TimeoutDis+ NROPrPrP- LTR+
> 			 10BitTagComp+ 10BitTagReq- OBFF Not Supported, ExtFmt- EETLPPrefix-
> 			 EmergencyPowerReduction Not Supported, EmergencyPowerReductionInit-
> 			 FRS- LN System CLS Not Supported, TPHComp- ExtTPHComp- ARIFwd+
> 			 AtomicOpsCap: Routing+ 32bit+ 64bit+ 128bitCAS+
> 		DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis- LTR+ 10BitTagReq=
- OBFF Disabled, ARIFwd-
> 			 AtomicOpsCtl: ReqEn+ EgressBlck+
> 		LnkCap2: Supported Link Speeds: 2.5-16GT/s, Crosslink- Retimer+ 2Retime=
rs+ DRS-
> 		LnkCtl2: Target Link Speed: 16GT/s, EnterCompliance- SpeedDis-
> 			 Transmit Margin: Normal Operating Range, EnterModifiedCompliance- Com=
plianceSOS-
> 			 Compliance Preset/De-emphasis: -6dB de-emphasis, 0dB preshoot
> 		LnkSta2: Current De-emphasis Level: -3.5dB, EqualizationComplete+ Equal=
izationPhase1+
> 			 EqualizationPhase2+ EqualizationPhase3+ LinkEqualizationRequest-
> 			 Retimer- 2Retimers- CrosslinkRes: unsupported
> 	Capabilities: [80] MSI: Enable+ Count=3D1/1 Maskable- 64bit-
> 		Address: fee01000  Data: 0000
> 	Capabilities: [90] Subsystem: Intel Corporation 11th Gen Core Processor =
PCIe Controller
> 	Capabilities: [a0] Power Management version 3
> 		Flags: PMEClk- DSI- D1- D2- AuxCurrent=3D0mA PME(D0+,D1-,D2-,D3hot+,D3c=
old+)
> 		Status: D0 NoSoftRst- PME-Enable- DSel=3D0 DScale=3D0 PME-
> 	Capabilities: [100 v1] Advanced Error Reporting
> 		UESta:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP=
- ECRC- UnsupReq- ACSViol-
> 		UEMsk:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt+ RxOF- MalfTLP=
- ECRC- UnsupReq- ACSViol-
> 		UESvrt:	DLP+ SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTL=
P+ ECRC- UnsupReq- ACSViol-
> 		CESta:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr-
> 		CEMsk:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr+
> 		AERCap:	First Error Pointer: 15, ECRCGenCap- ECRCGenEn- ECRCChkCap- ECR=
CChkEn-
> 			MultHdrRecCap- MultHdrRecEn- TLPPfxPres- HdrLogCap-
> 		HeaderLog: 34000000 0000007f 08000000 00000001
> 		RootCmd: CERptEn+ NFERptEn+ FERptEn+
> 		RootSta: CERcvd- MultCERcvd- UERcvd- MultUERcvd-
> 			 FirstFatal- NonFatalMsg- FatalMsg- IntMsg 0
> 		ErrorSrc: ERR_COR: 0000 ERR_FATAL/NONFATAL: 0030
> 	Capabilities: [220 v1] Access Control Services
> 		ACSCap:	SrcValid+ TransBlk+ ReqRedir+ CmpltRedir+ UpstreamFwd+ EgressCt=
rl- DirectTrans-
> 		ACSCtl:	SrcValid+ TransBlk- ReqRedir+ CmpltRedir+ UpstreamFwd+ EgressCt=
rl- DirectTrans-
> 	Capabilities: [200 v1] L1 PM Substates
> 		L1SubCap: PCI-PM_L1.2+ PCI-PM_L1.1+ ASPM_L1.2+ ASPM_L1.1+ L1_PM_Substat=
es+
> 			  PortCommonModeRestoreTime=3D45us PortTPowerOnTime=3D50us
> 		L1SubCtl1: PCI-PM_L1.2- PCI-PM_L1.1- ASPM_L1.2+ ASPM_L1.1+
> 			   T_CommonMode=3D0us LTR1.2_Threshold=3D0ns
> 		L1SubCtl2: T_PwrOn=3D0us
> 	Capabilities: [150 v1] Precision Time Measurement
> 		PTMCap: Requester:- Responder:+ Root:+
> 		PTMClockGranularity: 4ns
> 		PTMControl: Enabled:+ RootSelected:+
> 		PTMEffectiveGranularity: Unknown
> 	Capabilities: [280 v1] Virtual Channel
> 		Caps:	LPEVC=3D0 RefClk=3D100ns PATEntryBits=3D1
> 		Arb:	Fixed- WRR32- WRR64- WRR128-
> 		Ctrl:	ArbSelect=3DFixed
> 		Status:	InProgress-
> 		VC0:	Caps:	PATOffset=3D00 MaxTimeSlots=3D1 RejSnoopTrans-
> 			Arb:	Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256-
> 			Ctrl:	Enable+ ID=3D0 ArbSelect=3DFixed TC/VC=3Dff
> 			Status:	NegoPending- InProgress-
> 	Capabilities: [a00 v1] Downstream Port Containment
> 		DpcCap:	INT Msg #0, RPExt+ PoisonedTLP+ SwTrigger+ RP PIO Log 4, DL_Act=
iveErr+
> 		DpcCtl:	Trigger:1 Cmpl- INT+ ErrCor- PoisonedTLP- SwTrigger- DL_ActiveE=
rr-
> 		DpcSta:	Trigger- Reason:00 INT- RPBusy- TriggerExt:00 RP PIO ErrPtr:1f
> 		Source:	0000
> 	Capabilities: [a30 v1] Secondary PCI Express
> 		LnkCtl3: LnkEquIntrruptEn- PerformEqu-
> 		LaneErrStat: 0
> 	Capabilities: [a90 v1] Data Link Feature <?>
> 	Capabilities: [a9c v1] Physical Layer 16.0 GT/s <?>
> 	Capabilities: [edc v1] Lane Margining at the Receiver <?>
> 	Kernel driver in use: pcieport
>=20
> 10000:e0:17.0 SATA controller: Intel Corporation Tiger Lake-LP SATA Contr=
oller (rev 20) (prog-if 01 [AHCI 1.0])
> 	Subsystem: Lenovo Tiger Lake-LP SATA Controller
> 	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Step=
ping- SERR- FastB2B- DisINTx+
> 	Status: Cap+ 66MHz+ UDF- FastB2B+ ParErr- DEVSEL=3Dmedium >TAbort- <TAbo=
rt- <MAbort- >SERR- <PERR- INTx-
> 	Latency: 0
> 	Interrupt: pin A routed to IRQ 173
> 	Region 0: Memory at 52200000 (32-bit, non-prefetchable) [size=3D8K]
> 	Region 1: Memory at 52202800 (32-bit, non-prefetchable) [size=3D256]
> 	Region 5: Memory at 52202000 (32-bit, non-prefetchable) [size=3D2K]
> 	Capabilities: [80] MSI: Enable+ Count=3D1/1 Maskable- 64bit-
> 		Address: fee01000  Data: 0000
> 	Capabilities: [70] Power Management version 3
> 		Flags: PMEClk- DSI- D1- D2- AuxCurrent=3D0mA PME(D0-,D1-,D2-,D3hot+,D3c=
old-)
> 		Status: D0 NoSoftRst+ PME-Enable- DSel=3D0 DScale=3D0 PME-
> 	Capabilities: [a8] SATA HBA v1.0 BAR4 Offset=3D00000004
> 	Kernel driver in use: ahci
> 	Kernel modules: ahci
>=20
> 10000:e0:1d.0 PCI bridge: Intel Corporation Tiger Lake-LP PCI Express Roo=
t Port #9 (rev 20) (prog-if 00 [Normal decode])
> 	Subsystem: Lenovo Tiger Lake-LP PCI Express Root Port
> 	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Step=
ping- SERR- FastB2B- DisINTx+
> 	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAbort- <TAbort=
- <MAbort- >SERR- <PERR- INTx-
> 	Latency: 0
> 	Interrupt: pin A routed to IRQ 150
> 	Bus: primary=3D00, secondary=3De2, subordinate=3De2, sec-latency=3D0
> 	I/O behind bridge: f000-0fff [disabled] [16-bit]
> 	Memory behind bridge: 52100000-521fffff [size=3D1M] [32-bit]
> 	Prefetchable memory behind bridge: 00000000fff00000-00000000000fffff [di=
sabled] [64-bit]
> 	Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=3Dfast >TAbort- <TAbort=
- <MAbort+ <SERR- <PERR-
> 	BridgeCtl: Parity- SERR+ NoISA- VGA- VGA16- MAbort- >Reset- FastB2B-
> 		PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
> 	Capabilities: [40] Express (v2) Root Port (Slot+), MSI 00
> 		DevCap:	MaxPayload 256 bytes, PhantFunc 0
> 			ExtTag- RBE+
> 		DevCtl:	CorrErr+ NonFatalErr+ FatalErr+ UnsupReq+
> 			RlxdOrd- ExtTag- PhantFunc- AuxPwr- NoSnoop-
> 			MaxPayload 256 bytes, MaxReadReq 128 bytes
> 		DevSta:	CorrErr- NonFatalErr- FatalErr- UnsupReq- AuxPwr+ TransPend-
> 		LnkCap:	Port #9, Speed 8GT/s, Width x2, ASPM L1, Exit Latency L1 <16us
> 			ClockPM- Surprise- LLActRep+ BwNot+ ASPMOptComp+
> 		LnkCtl:	ASPM L1 Enabled; RCB 64 bytes, Disabled- CommClk+
> 			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
> 		LnkSta:	Speed 8GT/s, Width x2
> 			TrErr- Train- SlotClk+ DLActive+ BWMgmt+ ABWMgmt-
> 		SltCap:	AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug- Surprise-
> 			Slot #8, PowerLimit 25W; Interlock- NoCompl+
> 		SltCtl:	Enable: AttnBtn- PwrFlt- MRL- PresDet- CmdCplt- HPIrq- LinkChg-
> 			Control: AttnInd Unknown, PwrInd Unknown, Power- Interlock-
> 		SltSta:	Status: AttnBtn- PowerFlt- MRL- CmdCplt- PresDet+ Interlock-
> 			Changed: MRL- PresDet- LinkState+
> 		RootCap: CRSVisible-
> 		RootCtl: ErrCorrectable- ErrNon-Fatal- ErrFatal- PMEIntEna+ CRSVisible-
> 		RootSta: PME ReqID 0000, PMEStatus- PMEPending-
> 		DevCap2: Completion Timeout: Range ABC, TimeoutDis+ NROPrPrP- LTR+
> 			 10BitTagComp- 10BitTagReq- OBFF Not Supported, ExtFmt- EETLPPrefix-
> 			 EmergencyPowerReduction Not Supported, EmergencyPowerReductionInit-
> 			 FRS- LN System CLS Not Supported, TPHComp- ExtTPHComp- ARIFwd+
> 			 AtomicOpsCap: Routing- 32bit- 64bit- 128bitCAS-
> 		DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis- LTR+ 10BitTagReq=
- OBFF Disabled, ARIFwd-
> 			 AtomicOpsCtl: ReqEn- EgressBlck-
> 		LnkCap2: Supported Link Speeds: 2.5-8GT/s, Crosslink- Retimer- 2Retimer=
s- DRS-
> 		LnkCtl2: Target Link Speed: 8GT/s, EnterCompliance- SpeedDis-
> 			 Transmit Margin: Normal Operating Range, EnterModifiedCompliance- Com=
plianceSOS-
> 			 Compliance Preset/De-emphasis: -6dB de-emphasis, 0dB preshoot
> 		LnkSta2: Current De-emphasis Level: -3.5dB, EqualizationComplete+ Equal=
izationPhase1+
> 			 EqualizationPhase2+ EqualizationPhase3+ LinkEqualizationRequest-
> 			 Retimer- 2Retimers- CrosslinkRes: unsupported
> 	Capabilities: [80] MSI: Enable+ Count=3D1/1 Maskable- 64bit-
> 		Address: fee01000  Data: 0000
> 	Capabilities: [90] Subsystem: Lenovo Tiger Lake-LP PCI Express Root Port
> 	Capabilities: [a0] Power Management version 3
> 		Flags: PMEClk- DSI- D1- D2- AuxCurrent=3D0mA PME(D0+,D1-,D2-,D3hot+,D3c=
old+)
> 		Status: D0 NoSoftRst- PME-Enable- DSel=3D0 DScale=3D0 PME-
> 	Capabilities: [100 v1] Advanced Error Reporting
> 		UESta:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP=
- ECRC- UnsupReq- ACSViol-
> 		UEMsk:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP=
- ECRC- UnsupReq- ACSViol-
> 		UESvrt:	DLP+ SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTL=
P+ ECRC- UnsupReq- ACSViol-
> 		CESta:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr-
> 		CEMsk:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr+
> 		AERCap:	First Error Pointer: 00, ECRCGenCap- ECRCGenEn- ECRCChkCap- ECR=
CChkEn-
> 			MultHdrRecCap- MultHdrRecEn- TLPPfxPres- HdrLogCap-
> 		HeaderLog: 00000000 00000000 00000000 00000000
> 		RootCmd: CERptEn+ NFERptEn+ FERptEn+
> 		RootSta: CERcvd- MultCERcvd- UERcvd- MultUERcvd-
> 			 FirstFatal- NonFatalMsg- FatalMsg- IntMsg 0
> 		ErrorSrc: ERR_COR: 0000 ERR_FATAL/NONFATAL: 0000
> 	Capabilities: [220 v1] Access Control Services
> 		ACSCap:	SrcValid+ TransBlk+ ReqRedir+ CmpltRedir+ UpstreamFwd+ EgressCt=
rl- DirectTrans-
> 		ACSCtl:	SrcValid+ TransBlk- ReqRedir+ CmpltRedir+ UpstreamFwd+ EgressCt=
rl- DirectTrans-
> 	Capabilities: [150 v1] Precision Time Measurement
> 		PTMCap: Requester:- Responder:+ Root:+
> 		PTMClockGranularity: 4ns
> 		PTMControl: Enabled:+ RootSelected:+
> 		PTMEffectiveGranularity: Unknown
> 	Capabilities: [200 v1] L1 PM Substates
> 		L1SubCap: PCI-PM_L1.2+ PCI-PM_L1.1+ ASPM_L1.2+ ASPM_L1.1+ L1_PM_Substat=
es+
> 			  PortCommonModeRestoreTime=3D40us PortTPowerOnTime=3D44us
> 		L1SubCtl1: PCI-PM_L1.2- PCI-PM_L1.1- ASPM_L1.2+ ASPM_L1.1-
> 			   T_CommonMode=3D255us LTR1.2_Threshold=3D305152ns
> 		L1SubCtl2: T_PwrOn=3D44us
> 	Capabilities: [a30 v1] Secondary PCI Express
> 		LnkCtl3: LnkEquIntrruptEn- PerformEqu-
> 		LaneErrStat: 0
> 	Capabilities: [a00 v1] Downstream Port Containment
> 		DpcCap:	INT Msg #0, RPExt+ PoisonedTLP+ SwTrigger+ RP PIO Log 4, DL_Act=
iveErr+
> 		DpcCtl:	Trigger:1 Cmpl- INT+ ErrCor- PoisonedTLP- SwTrigger- DL_ActiveE=
rr-
> 		DpcSta:	Trigger- Reason:00 INT- RPBusy- TriggerExt:00 RP PIO ErrPtr:1f
> 		Source:	0000
> 	Kernel driver in use: pcieport
>=20
> 10000:e1:00.0 Non-Volatile memory controller: Solid State Storage Technol=
ogy Corporation CL4-8D512 NVMe SSD M.2 (DRAM-less) (rev 03) (prog-if 02 [NV=
M Express])
> 	Subsystem: Silicon Motion, Inc. CL4-8D512 NVMe SSD M.2 (DRAM-less)
> 	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Step=
ping- SERR- FastB2B- DisINTx+
> 	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAbort- <TAbort=
- <MAbort- >SERR- <PERR- INTx-
> 	Latency: 0
> 	Interrupt: pin A routed to IRQ -2147483648
> 	Region 0: Memory at 52000000 (64-bit, non-prefetchable) [size=3D16K]
> 	Capabilities: [40] Power Management version 3
> 		Flags: PMEClk- DSI- D1- D2- AuxCurrent=3D0mA PME(D0-,D1-,D2-,D3hot-,D3c=
old-)
> 		Status: D0 NoSoftRst+ PME-Enable- DSel=3D0 DScale=3D0 PME-
> 	Capabilities: [50] MSI: Enable- Count=3D1/8 Maskable+ 64bit+
> 		Address: 0000000000000000  Data: 0000
> 		Masking: 00000000  Pending: 00000000
> 	Capabilities: [70] Express (v2) Endpoint, MSI 00
> 		DevCap:	MaxPayload 256 bytes, PhantFunc 0, Latency L0s unlimited, L1 un=
limited
> 			ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset+ SlotPowerLimit 75W
> 		DevCtl:	CorrErr+ NonFatalErr+ FatalErr+ UnsupReq+
> 			RlxdOrd+ ExtTag- PhantFunc- AuxPwr- NoSnoop- FLReset-
> 			MaxPayload 256 bytes, MaxReadReq 256 bytes
> 		DevSta:	CorrErr- NonFatalErr- FatalErr- UnsupReq- AuxPwr- TransPend-
> 		LnkCap:	Port #0, Speed 16GT/s, Width x4, ASPM L1, Exit Latency L1 <8us
> 			ClockPM+ Surprise- LLActRep- BwNot- ASPMOptComp+
> 		LnkCtl:	ASPM L1 Enabled; RCB 64 bytes, Disabled- CommClk+
> 			ExtSynch- ClockPM+ AutWidDis- BWInt- AutBWInt-
> 		LnkSta:	Speed 16GT/s, Width x4
> 			TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-
> 		DevCap2: Completion Timeout: Range ABCD, TimeoutDis+ NROPrPrP- LTR+
> 			 10BitTagComp+ 10BitTagReq- OBFF Via message, ExtFmt- EETLPPrefix-
> 			 EmergencyPowerReduction Not Supported, EmergencyPowerReductionInit-
> 			 FRS- TPHComp- ExtTPHComp-
> 			 AtomicOpsCap: 32bit- 64bit- 128bitCAS-
> 		DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis- LTR+ 10BitTagReq=
- OBFF Disabled,
> 			 AtomicOpsCtl: ReqEn-
> 		LnkCap2: Supported Link Speeds: 2.5-16GT/s, Crosslink- Retimer+ 2Retime=
rs+ DRS-
> 		LnkCtl2: Target Link Speed: 16GT/s, EnterCompliance- SpeedDis-
> 			 Transmit Margin: Normal Operating Range, EnterModifiedCompliance- Com=
plianceSOS-
> 			 Compliance Preset/De-emphasis: -6dB de-emphasis, 0dB preshoot
> 		LnkSta2: Current De-emphasis Level: -6dB, EqualizationComplete+ Equaliz=
ationPhase1+
> 			 EqualizationPhase2+ EqualizationPhase3+ LinkEqualizationRequest-
> 			 Retimer- 2Retimers- CrosslinkRes: Upstream Port
> 	Capabilities: [b0] MSI-X: Enable+ Count=3D16 Masked-
> 		Vector table: BAR=3D0 offset=3D00002000
> 		PBA: BAR=3D0 offset=3D00002100
> 	Capabilities: [100 v2] Advanced Error Reporting
> 		UESta:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP=
- ECRC- UnsupReq- ACSViol-
> 		UEMsk:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP=
- ECRC- UnsupReq- ACSViol-
> 		UESvrt:	DLP+ SDES+ TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTL=
P+ ECRC- UnsupReq- ACSViol-
> 		CESta:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr-
> 		CEMsk:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr+
> 		AERCap:	First Error Pointer: 00, ECRCGenCap+ ECRCGenEn- ECRCChkCap+ ECR=
CChkEn-
> 			MultHdrRecCap- MultHdrRecEn- TLPPfxPres- HdrLogCap-
> 		HeaderLog: 00000000 00000000 00000000 00000000
> 	Capabilities: [158 v1] Secondary PCI Express
> 		LnkCtl3: LnkEquIntrruptEn- PerformEqu-
> 		LaneErrStat: 0
> 	Capabilities: [178 v1] Physical Layer 16.0 GT/s <?>
> 	Capabilities: [19c v1] Lane Margining at the Receiver <?>
> 	Capabilities: [1b4 v1] Latency Tolerance Reporting
> 		Max snoop latency: 3145728ns
> 		Max no snoop latency: 3145728ns
> 	Capabilities: [1bc v1] L1 PM Substates
> 		L1SubCap: PCI-PM_L1.2+ PCI-PM_L1.1+ ASPM_L1.2+ ASPM_L1.1+ L1_PM_Substat=
es+
> 			  PortCommonModeRestoreTime=3D10us PortTPowerOnTime=3D14us
> 		L1SubCtl1: PCI-PM_L1.2- PCI-PM_L1.1- ASPM_L1.2+ ASPM_L1.1+
> 			   T_CommonMode=3D0us LTR1.2_Threshold=3D101376ns
> 		L1SubCtl2: T_PwrOn=3D50us
> 	Kernel driver in use: nvme
> 	Kernel modules: nvme
>=20
> 10000:e2:00.0 Non-Volatile memory controller: Sandisk Corp WD Blue SN500 =
/ PC SN520 NVMe SSD (rev 01) (prog-if 02 [NVM Express])
> 	Subsystem: Sandisk Corp WD Blue SN500 / PC SN520 x2 M.2 2280 NVMe SSD
> 	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Step=
ping- SERR- FastB2B- DisINTx+
> 	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAbort- <TAbort=
- <MAbort- >SERR- <PERR- INTx-
> 	Latency: 0
> 	Interrupt: pin A routed to IRQ 0
> 	Region 0: Memory at 52100000 (64-bit, non-prefetchable) [size=3D16K]
> 	Capabilities: [80] Power Management version 3
> 		Flags: PMEClk- DSI- D1- D2- AuxCurrent=3D0mA PME(D0-,D1-,D2-,D3hot-,D3c=
old-)
> 		Status: D0 NoSoftRst+ PME-Enable- DSel=3D0 DScale=3D0 PME-
> 	Capabilities: [90] MSI: Enable- Count=3D1/32 Maskable- 64bit+
> 		Address: 0000000000000000  Data: 0000
> 	Capabilities: [b0] MSI-X: Enable+ Count=3D17 Masked-
> 		Vector table: BAR=3D0 offset=3D00002000
> 		PBA: BAR=3D0 offset=3D00003000
> 	Capabilities: [c0] Express (v2) Endpoint, MSI 00
> 		DevCap:	MaxPayload 512 bytes, PhantFunc 0, Latency L0s <1us, L1 unlimit=
ed
> 			ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset+ SlotPowerLimit 0W
> 		DevCtl:	CorrErr+ NonFatalErr+ FatalErr+ UnsupReq+
> 			RlxdOrd+ ExtTag- PhantFunc- AuxPwr- NoSnoop+ FLReset-
> 			MaxPayload 256 bytes, MaxReadReq 512 bytes
> 		DevSta:	CorrErr+ NonFatalErr- FatalErr- UnsupReq+ AuxPwr- TransPend-
> 		LnkCap:	Port #0, Speed 8GT/s, Width x2, ASPM L1, Exit Latency L1 <8us
> 			ClockPM+ Surprise- LLActRep- BwNot- ASPMOptComp+
> 		LnkCtl:	ASPM L1 Enabled; RCB 64 bytes, Disabled- CommClk+
> 			ExtSynch- ClockPM+ AutWidDis- BWInt- AutBWInt-
> 		LnkSta:	Speed 8GT/s, Width x2
> 			TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-
> 		DevCap2: Completion Timeout: Range B, TimeoutDis+ NROPrPrP- LTR+
> 			 10BitTagComp- 10BitTagReq- OBFF Not Supported, ExtFmt+ EETLPPrefix-
> 			 EmergencyPowerReduction Not Supported, EmergencyPowerReductionInit-
> 			 FRS- TPHComp- ExtTPHComp-
> 			 AtomicOpsCap: 32bit- 64bit- 128bitCAS-
> 		DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis- LTR+ 10BitTagReq=
- OBFF Disabled,
> 			 AtomicOpsCtl: ReqEn-
> 		LnkCap2: Supported Link Speeds: 2.5-8GT/s, Crosslink- Retimer- 2Retimer=
s- DRS-
> 		LnkCtl2: Target Link Speed: 8GT/s, EnterCompliance- SpeedDis-
> 			 Transmit Margin: Normal Operating Range, EnterModifiedCompliance- Com=
plianceSOS-
> 			 Compliance Preset/De-emphasis: -6dB de-emphasis, 0dB preshoot
> 		LnkSta2: Current De-emphasis Level: -6dB, EqualizationComplete+ Equaliz=
ationPhase1+
> 			 EqualizationPhase2+ EqualizationPhase3+ LinkEqualizationRequest-
> 			 Retimer- 2Retimers- CrosslinkRes: unsupported
> 	Capabilities: [100 v2] Advanced Error Reporting
> 		UESta:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP=
- ECRC- UnsupReq- ACSViol-
> 		UEMsk:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP=
- ECRC- UnsupReq- ACSViol-
> 		UESvrt:	DLP+ SDES+ TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTL=
P+ ECRC- UnsupReq- ACSViol-
> 		CESta:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr-
> 		CEMsk:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr+
> 		AERCap:	First Error Pointer: 00, ECRCGenCap+ ECRCGenEn- ECRCChkCap+ ECR=
CChkEn-
> 			MultHdrRecCap- MultHdrRecEn- TLPPfxPres- HdrLogCap-
> 		HeaderLog: 00000000 00000000 00000000 00000000
> 	Capabilities: [150 v1] Device Serial Number 00-00-00-00-00-00-00-00
> 	Capabilities: [1b8 v1] Latency Tolerance Reporting
> 		Max snoop latency: 3145728ns
> 		Max no snoop latency: 3145728ns
> 	Capabilities: [300 v1] Secondary PCI Express
> 		LnkCtl3: LnkEquIntrruptEn- PerformEqu-
> 		LaneErrStat: 0
> 	Capabilities: [900 v1] L1 PM Substates
> 		L1SubCap: PCI-PM_L1.2- PCI-PM_L1.1- ASPM_L1.2+ ASPM_L1.1- L1_PM_Substat=
es+
> 			  PortCommonModeRestoreTime=3D255us PortTPowerOnTime=3D10us
> 		L1SubCtl1: PCI-PM_L1.2- PCI-PM_L1.1- ASPM_L1.2+ ASPM_L1.1-
> 			   T_CommonMode=3D0us LTR1.2_Threshold=3D305152ns
> 		L1SubCtl2: T_PwrOn=3D44us
> 	Kernel driver in use: nvme
> 	Kernel modules: nvme
>=20

