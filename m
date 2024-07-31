Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A429433FA
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2024 18:15:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1516510E148;
	Wed, 31 Jul 2024 16:15:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Go/tmNSh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 247B610E148;
 Wed, 31 Jul 2024 16:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722442506; x=1753978506;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=OLrL8kcM795+hA1LH3pC4LCudeYJzaW41aKIXlYNXhc=;
 b=Go/tmNShkLtt9b78NYXCxp7u3kJ8mP+YJULlZkTV42ih2B+Ilixg3SGi
 aKSPiCruVT6e+I3RGCVwRGK72fJyE+DFA9Hc3ebWMyQ0AD0NELoBXdCWb
 EZX4UmI59X6na8WhIrxFSgK7e109CQypLjYjjn6nE8VpoCu+vdW2VMhiY
 5aQ+MDhkswkaxl3Ule7KcGy30iol3Asb3PX+XRvaFXVn5eGAk1qKFJe+o
 ggdGILnLwBHgaqi11LhZ32yu4V0bjqJJYh65TSGS8Yi6u2Jeqfp3EMGcp
 xQAwUJLK2M5wlGZ2eFnFh4OeP4sfhAUe8YDSFkHwFlQkFyKP2rYDHq/lF Q==;
X-CSE-ConnectionGUID: F+DmvvdgR0KRvJSWEPb8dQ==
X-CSE-MsgGUID: AJ1mY8rrR6Ch6AgaOJUx9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11150"; a="20218439"
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="20218439"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 09:15:05 -0700
X-CSE-ConnectionGUID: R+HF2k2oQ/iJ1dJMNjAU6Q==
X-CSE-MsgGUID: JMxb7sQQRL+9+e0uqbEkPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="59376892"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 09:15:03 -0700
Date: Wed, 31 Jul 2024 19:15:19 +0300
From: Imre Deak <imre.deak@intel.com>
To: Stephen Hemminger <stephen@networkplumber.org>
Cc: jani.nikula@linux.intel.com, rodrigo.vivi@intel.com,
 joonas.lahtinen@linux.intel.com, tursulin@ursulin.net,
 airlied@gmail.com, daniel@ffwll.ch, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: Warning on boot with intel_tc
Message-ID: <ZqpjF4FdUTJ-XRto@ideak-desk.fi.intel.com>
References: <20240731085626.371e2ab1@hermes.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240731085626.371e2ab1@hermes.local>
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

On Wed, Jul 31, 2024 at 08:56:26AM -0700, Stephen Hemminger wrote:
> I am seeing this warning on boot on my Intel mini PC.
> Running Debian testing and it has kernel 6.9.10-amd64.
> This looks like something that recently changed and is 100% reproducible.
> Since only warning, things seem to be ok after that.

Could you please open a ticket at
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/new

provding a drm debug dmesg log as described at
https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html
?

Thanks,
Imre

> 
> [    1.858857] i915 0000:00:02.0: [drm] VT-d active for gfx access
> [    1.858917] Console: switching to colour dummy device 80x25
> [    1.858932] i915 0000:00:02.0: vgaarb: deactivate vga console
> [    1.858968] i915 0000:00:02.0: [drm] Using Transparent Hugepages
> [    1.860007] i915 0000:00:02.0: vgaarb: VGA decodes changed: olddecodes=io+mem,decodes=io+mem:owns=io+mem
> [    1.861315] i915 0000:00:02.0: [drm] Finished loading DMC firmware i915/tgl_dmc_ver2_12.bin (v2.12)
> [    1.880262] ------------[ cut here ]------------
> [    1.880263] i915 0000:00:02.0: drm_WARN_ON(aux_powered)
> [    1.880275] WARNING: CPU: 2 PID: 220 at drivers/gpu/drm/i915/display/intel_tc.c:1424 intel_tc_port_update_mode+0x2ac/0x340 [i915]
> [    1.880383] Modules linked in: i915(+) crc32_pclmul drm_buddy crc32c_intel i2c_algo_bit drm_display_helper nvme cec rc_core ttm ghash_clmulni_intel nvme_core xhci_pci sha512_ssse3 drm_kms_helper t10_pi sha512_generic xhci_hcd sha256_ssse3 video drm sha1_ssse3 thunderbolt(+) crc64_rocksoft_generic usbcore e1000e(+) igc crc64_rocksoft crc_t10dif i2c_i801 crct10dif_generic crct10dif_pclmul crc64 i2c_smbus crct10dif_common usb_common vmd fan wmi button aesni_intel crypto_simd cryptd
> [    1.880401] CPU: 2 PID: 220 Comm: (udev-worker) Not tainted 6.9.10-amd64 #1  Debian 6.9.10-1
> [    1.880403] Hardware name: GIGABYTE GB-BSi7-1165G7/GB-BSi7-1165G7, BIOS F9 10/16/2021
> [    1.880404] RIP: 0010:intel_tc_port_update_mode+0x2ac/0x340 [i915]
> [    1.880506] Code: 4c 8b 77 50 4d 85 f6 75 03 4c 8b 37 e8 9d aa fc ce 48 c7 c1 1e 9d ce c0 4c 89 f2 48 c7 c7 95 9c ce c0 48 89 c6 e8 54 fc 7b ce <0f> 0b e9 bd fd ff ff 45 85 f6 0f 84 f7 fe ff ff e9 e5 fe ff ff 0f
> [    1.880507] RSP: 0018:ffffc07c007d77f8 EFLAGS: 00010286
> [    1.880509] RAX: 0000000000000000 RBX: ffffa0a51708c000 RCX: c0000000ffffefff
> [    1.880510] RDX: 0000000000000000 RSI: 00000000ffffefff RDI: 0000000000000001
> [    1.880511] RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000003
> [    1.880511] R10: ffffc07c007d7688 R11: ffffffff90eca3a8 R12: 0000000000000000
> [    1.880512] R13: ffffa0a563966e00 R14: ffffa0a50267bbf0 R15: ffffa0a517d0c000
> [    1.880513] FS:  00007f90bb429900(0000) GS:ffffa0ac90300000(0000) knlGS:0000000000000000
> [    1.880514] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [    1.880514] CR2: 00005609c42952c8 CR3: 0000000116428004 CR4: 0000000000f70ef0
> [    1.880531] PKRU: 55555554
> [    1.880531] Call Trace:
> [    1.880533]  <TASK>
> [    1.880534]  ? __warn+0x80/0x120
> [    1.880537]  ? intel_tc_port_update_mode+0x2ac/0x340 [i915]
> [    1.880635]  ? report_bug+0x164/0x190
> [    1.880638]  ? prb_read_valid+0x1b/0x30
> [    1.880640]  ? handle_bug+0x3c/0x80
> [    1.880645]  ? exc_invalid_op+0x17/0x70
> [    1.880646]  ? asm_exc_invalid_op+0x1a/0x20
> [    1.880649]  ? intel_tc_port_update_mode+0x2ac/0x340 [i915]
> [    1.880738]  ? intel_tc_port_update_mode+0x2ac/0x340 [i915]
> [    1.880818]  intel_tc_port_init_mode+0xea/0x1e0 [i915]
> [    1.880897]  intel_tc_port_init+0x19b/0x230 [i915]
> [    1.880976]  intel_ddi_init+0x986/0x1060 [i915]
> [    1.881062]  ? __pfx_intel_ddi_init+0x10/0x10 [i915]
> [    1.881143]  intel_bios_for_each_encoder+0x35/0x50 [i915]
> [    1.881245]  intel_setup_outputs+0x386/0x8b0 [i915]
> [    1.881345]  intel_display_driver_probe_nogem+0x13d/0x220 [i915]
> [    1.881439]  i915_driver_probe+0x656/0xbb0 [i915]
> [    1.881514]  local_pci_probe+0x42/0xa0
> [    1.881517]  pci_device_probe+0xc7/0x240
> [    1.881519]  really_probe+0xd3/0x390
> [    1.881522]  ? __pfx___driver_attach+0x10/0x10
> [    1.881523]  __driver_probe_device+0x78/0x150
> [    1.881524]  driver_probe_device+0x1f/0x90
> [    1.881526]  __driver_attach+0xd2/0x1c0
> [    1.881527]  bus_for_each_dev+0x85/0xd0
> [    1.881530]  bus_add_driver+0x112/0x240
> [    1.881532]  driver_register+0x59/0x100
> [    1.881533]  i915_init+0x22/0xc0 [i915]
> [    1.881606]  ? __pfx_i915_init+0x10/0x10 [i915]
> [    1.881675]  do_one_initcall+0x58/0x320
> [    1.881679]  do_init_module+0x60/0x240
> [    1.881682]  init_module_from_file+0x89/0xe0
> [    1.881684]  idempotent_init_module+0x120/0x2b0
> [    1.881686]  __x64_sys_finit_module+0x5e/0xb0
> [    1.881687]  do_syscall_64+0x82/0x190
> [    1.881689]  ? syscall_exit_to_user_mode+0x77/0x210
> [    1.881691]  ? do_syscall_64+0x8e/0x190
> [    1.881693]  ? syscall_exit_to_user_mode+0x77/0x210
> [    1.881694]  ? do_syscall_64+0x8e/0x190
> [    1.881695]  ? do_syscall_64+0x8e/0x190
> [    1.881697]  ? syscall_exit_to_user_mode+0x77/0x210
> [    1.881698]  ? do_syscall_64+0x8e/0x190
> [    1.881699]  ? syscall_exit_to_user_mode+0x77/0x210
> [    1.881701]  ? do_syscall_64+0x8e/0x190
> [    1.881702]  ? do_syscall_64+0x8e/0x190
> [    1.881703]  ? do_syscall_64+0x8e/0x190
> [    1.881704]  ? do_syscall_64+0x8e/0x190
> [    1.881705]  ? syscall_exit_to_user_mode+0x77/0x210
> [    1.881707]  ? clear_bhb_loop+0x25/0x80
> [    1.881709]  ? clear_bhb_loop+0x25/0x80
> [    1.881710]  ? clear_bhb_loop+0x25/0x80
> [    1.881711]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> [    1.881713] RIP: 0033:0x7f90bb5ce0e9
> [    1.881715] Code: ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d ff 4c 0d 00 f7 d8 64 89 01 48
> [    1.881716] RSP: 002b:00007ffd77d0cd28 EFLAGS: 00000246 ORIG_RAX: 0000000000000139
> [    1.881717] RAX: ffffffffffffffda RBX: 00005609c4286c10 RCX: 00007f90bb5ce0e9
> [    1.881718] RDX: 0000000000000000 RSI: 00007f90bb421522 RDI: 0000000000000024
> [    1.881718] RBP: 0000000000000000 R08: 0000000000000001 R09: 0000000000000000
> [    1.881719] R10: 0000000000000040 R11: 0000000000000246 R12: 00007f90bb421522
> [    1.881720] R13: 0000000000020000 R14: 00005609c4272cb0 R15: 0000000000000000
> [    1.881721]  </TASK>
> [    1.881721] ---[ end trace 0000000000000000 ]---
> [    1.884081] i915 0000:00:02.0: [drm] Protected Xe Path (PXP) protected content support initialized
> [    1.911326] [drm] Initialized i915 1.6.0 20230929 for 0000:00:02.0 on minor 0
> 
> 
> 
