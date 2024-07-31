Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 253EE9433BD
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2024 17:56:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA8FE10E675;
	Wed, 31 Jul 2024 15:56:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=networkplumber-org.20230601.gappssmtp.com header.i=@networkplumber-org.20230601.gappssmtp.com header.b="FbLb5p2H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
 [209.85.214.174])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3EC510E674
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2024 15:56:29 +0000 (UTC)
Received: by mail-pl1-f174.google.com with SMTP id
 d9443c01a7336-1fd6ed7688cso45729835ad.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2024 08:56:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20230601.gappssmtp.com; s=20230601; t=1722441389;
 x=1723046189; darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:message-id:subject:cc:to
 :from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Wgdi1P0ufNS4atQWN/mxeKaBZGmRrOmUXVghmxbeLho=;
 b=FbLb5p2H4GLPzP073eErXAUmO3eqNAb5R5xBTmi3OsbmJzcIx1QbfRU3j+NGDbOcYb
 Ernpk/7QRTrSN4lI32BEBub3gAdQzY8zoYHPZfjhch35wKx2KbdTI2SDaUeTgQ8N9dog
 3NqcNmzUkv2G7Gksae7BN/7pM9ObmDjSCcQvHkdTcSRpdq43nsKDKkGdARX9lcuTIUx8
 x3nu9SMr4RbJkAOEqqdT64/3P6+us3HLux1lnZnpyRja9zr4JWYTLYDbNwQLr7rL07oN
 96qziC4U3VVsUn9eScySWXUtgPzgnJjESuBO3FwD+un4Wn2wDO2H2zplV8xqGUta5Im6
 H94w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1722441389; x=1723046189;
 h=content-transfer-encoding:mime-version:message-id:subject:cc:to
 :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Wgdi1P0ufNS4atQWN/mxeKaBZGmRrOmUXVghmxbeLho=;
 b=DpNquhGi8NyMpsCcw0Ca/itPKX1xk63bnUldDQ8feo2f4Gttmh0TIo46k6k7ML5Vcp
 CG/5vKMmk4jZHhjDKLbWPQZmKm8BQ1CtCoditZdHrYR6iy6i6FON5jKp+s17FDq0XWi5
 WksgBlwDy4kA4+dUsTOZVkkgP9ydzAadrCECBRGFC54lYnoXsLZO0aph5GPJSIRAI8D8
 TXVwqCwM4SvUlWPnIMnoUJVap0ZBhu5d27cAq7yFUiBz3l3rXO2vPrY/Eq1t2mdMmJuZ
 gA+w7b5yUj2qQvOeO5ExRLFwSAdllANu1CpLBA2Gk+J1t+0xgwP2ea+Mw9R+2W+6Phh8
 SJbw==
X-Gm-Message-State: AOJu0YyWs1q4vzXcvCEa2p3lNR+s+qGnGEWrsq2GkK0ypI2IGzn59sHb
 TaV6qgfmnT/upDX6OOJzT2S4LMuX27AEhxmzR91tUp7nSXeGWKGTPfUNeVNW+Dk=
X-Google-Smtp-Source: AGHT+IFdSsPMV/BH9/fkXVS1lHkhLDvXQ3E9dXgcxygwF3wvakbofqfQy6SEyvcHGKCM8OZ6Ma4MzA==
X-Received: by 2002:a17:903:1d2:b0:1f9:b681:194b with SMTP id
 d9443c01a7336-1ff0483e26fmr131515725ad.22.1722441389065; 
 Wed, 31 Jul 2024 08:56:29 -0700 (PDT)
Received: from hermes.local (204-195-96-226.wavecable.com. [204.195.96.226])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-1fed7f3bc3fsm122129775ad.213.2024.07.31.08.56.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Jul 2024 08:56:28 -0700 (PDT)
Date: Wed, 31 Jul 2024 08:56:26 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: jani.nikula@linux.intel.com, rodrigo.vivi@intel.com,
 joonas.lahtinen@linux.intel.com, tursulin@ursulin.net, airlied@gmail.com,
 daniel@ffwll.ch
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Warning on boot with intel_tc
Message-ID: <20240731085626.371e2ab1@hermes.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

I am seeing this warning on boot on my Intel mini PC.
Running Debian testing and it has kernel 6.9.10-amd64.
This looks like something that recently changed and is 100% reproducible.
Since only warning, things seem to be ok after that.

[    1.858857] i915 0000:00:02.0: [drm] VT-d active for gfx access
[    1.858917] Console: switching to colour dummy device 80x25
[    1.858932] i915 0000:00:02.0: vgaarb: deactivate vga console
[    1.858968] i915 0000:00:02.0: [drm] Using Transparent Hugepages
[    1.860007] i915 0000:00:02.0: vgaarb: VGA decodes changed: olddecodes=io+mem,decodes=io+mem:owns=io+mem
[    1.861315] i915 0000:00:02.0: [drm] Finished loading DMC firmware i915/tgl_dmc_ver2_12.bin (v2.12)
[    1.880262] ------------[ cut here ]------------
[    1.880263] i915 0000:00:02.0: drm_WARN_ON(aux_powered)
[    1.880275] WARNING: CPU: 2 PID: 220 at drivers/gpu/drm/i915/display/intel_tc.c:1424 intel_tc_port_update_mode+0x2ac/0x340 [i915]
[    1.880383] Modules linked in: i915(+) crc32_pclmul drm_buddy crc32c_intel i2c_algo_bit drm_display_helper nvme cec rc_core ttm ghash_clmulni_intel nvme_core xhci_pci sha512_ssse3 drm_kms_helper t10_pi sha512_generic xhci_hcd sha256_ssse3 video drm sha1_ssse3 thunderbolt(+) crc64_rocksoft_generic usbcore e1000e(+) igc crc64_rocksoft crc_t10dif i2c_i801 crct10dif_generic crct10dif_pclmul crc64 i2c_smbus crct10dif_common usb_common vmd fan wmi button aesni_intel crypto_simd cryptd
[    1.880401] CPU: 2 PID: 220 Comm: (udev-worker) Not tainted 6.9.10-amd64 #1  Debian 6.9.10-1
[    1.880403] Hardware name: GIGABYTE GB-BSi7-1165G7/GB-BSi7-1165G7, BIOS F9 10/16/2021
[    1.880404] RIP: 0010:intel_tc_port_update_mode+0x2ac/0x340 [i915]
[    1.880506] Code: 4c 8b 77 50 4d 85 f6 75 03 4c 8b 37 e8 9d aa fc ce 48 c7 c1 1e 9d ce c0 4c 89 f2 48 c7 c7 95 9c ce c0 48 89 c6 e8 54 fc 7b ce <0f> 0b e9 bd fd ff ff 45 85 f6 0f 84 f7 fe ff ff e9 e5 fe ff ff 0f
[    1.880507] RSP: 0018:ffffc07c007d77f8 EFLAGS: 00010286
[    1.880509] RAX: 0000000000000000 RBX: ffffa0a51708c000 RCX: c0000000ffffefff
[    1.880510] RDX: 0000000000000000 RSI: 00000000ffffefff RDI: 0000000000000001
[    1.880511] RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000003
[    1.880511] R10: ffffc07c007d7688 R11: ffffffff90eca3a8 R12: 0000000000000000
[    1.880512] R13: ffffa0a563966e00 R14: ffffa0a50267bbf0 R15: ffffa0a517d0c000
[    1.880513] FS:  00007f90bb429900(0000) GS:ffffa0ac90300000(0000) knlGS:0000000000000000
[    1.880514] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[    1.880514] CR2: 00005609c42952c8 CR3: 0000000116428004 CR4: 0000000000f70ef0
[    1.880531] PKRU: 55555554
[    1.880531] Call Trace:
[    1.880533]  <TASK>
[    1.880534]  ? __warn+0x80/0x120
[    1.880537]  ? intel_tc_port_update_mode+0x2ac/0x340 [i915]
[    1.880635]  ? report_bug+0x164/0x190
[    1.880638]  ? prb_read_valid+0x1b/0x30
[    1.880640]  ? handle_bug+0x3c/0x80
[    1.880645]  ? exc_invalid_op+0x17/0x70
[    1.880646]  ? asm_exc_invalid_op+0x1a/0x20
[    1.880649]  ? intel_tc_port_update_mode+0x2ac/0x340 [i915]
[    1.880738]  ? intel_tc_port_update_mode+0x2ac/0x340 [i915]
[    1.880818]  intel_tc_port_init_mode+0xea/0x1e0 [i915]
[    1.880897]  intel_tc_port_init+0x19b/0x230 [i915]
[    1.880976]  intel_ddi_init+0x986/0x1060 [i915]
[    1.881062]  ? __pfx_intel_ddi_init+0x10/0x10 [i915]
[    1.881143]  intel_bios_for_each_encoder+0x35/0x50 [i915]
[    1.881245]  intel_setup_outputs+0x386/0x8b0 [i915]
[    1.881345]  intel_display_driver_probe_nogem+0x13d/0x220 [i915]
[    1.881439]  i915_driver_probe+0x656/0xbb0 [i915]
[    1.881514]  local_pci_probe+0x42/0xa0
[    1.881517]  pci_device_probe+0xc7/0x240
[    1.881519]  really_probe+0xd3/0x390
[    1.881522]  ? __pfx___driver_attach+0x10/0x10
[    1.881523]  __driver_probe_device+0x78/0x150
[    1.881524]  driver_probe_device+0x1f/0x90
[    1.881526]  __driver_attach+0xd2/0x1c0
[    1.881527]  bus_for_each_dev+0x85/0xd0
[    1.881530]  bus_add_driver+0x112/0x240
[    1.881532]  driver_register+0x59/0x100
[    1.881533]  i915_init+0x22/0xc0 [i915]
[    1.881606]  ? __pfx_i915_init+0x10/0x10 [i915]
[    1.881675]  do_one_initcall+0x58/0x320
[    1.881679]  do_init_module+0x60/0x240
[    1.881682]  init_module_from_file+0x89/0xe0
[    1.881684]  idempotent_init_module+0x120/0x2b0
[    1.881686]  __x64_sys_finit_module+0x5e/0xb0
[    1.881687]  do_syscall_64+0x82/0x190
[    1.881689]  ? syscall_exit_to_user_mode+0x77/0x210
[    1.881691]  ? do_syscall_64+0x8e/0x190
[    1.881693]  ? syscall_exit_to_user_mode+0x77/0x210
[    1.881694]  ? do_syscall_64+0x8e/0x190
[    1.881695]  ? do_syscall_64+0x8e/0x190
[    1.881697]  ? syscall_exit_to_user_mode+0x77/0x210
[    1.881698]  ? do_syscall_64+0x8e/0x190
[    1.881699]  ? syscall_exit_to_user_mode+0x77/0x210
[    1.881701]  ? do_syscall_64+0x8e/0x190
[    1.881702]  ? do_syscall_64+0x8e/0x190
[    1.881703]  ? do_syscall_64+0x8e/0x190
[    1.881704]  ? do_syscall_64+0x8e/0x190
[    1.881705]  ? syscall_exit_to_user_mode+0x77/0x210
[    1.881707]  ? clear_bhb_loop+0x25/0x80
[    1.881709]  ? clear_bhb_loop+0x25/0x80
[    1.881710]  ? clear_bhb_loop+0x25/0x80
[    1.881711]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
[    1.881713] RIP: 0033:0x7f90bb5ce0e9
[    1.881715] Code: ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d ff 4c 0d 00 f7 d8 64 89 01 48
[    1.881716] RSP: 002b:00007ffd77d0cd28 EFLAGS: 00000246 ORIG_RAX: 0000000000000139
[    1.881717] RAX: ffffffffffffffda RBX: 00005609c4286c10 RCX: 00007f90bb5ce0e9
[    1.881718] RDX: 0000000000000000 RSI: 00007f90bb421522 RDI: 0000000000000024
[    1.881718] RBP: 0000000000000000 R08: 0000000000000001 R09: 0000000000000000
[    1.881719] R10: 0000000000000040 R11: 0000000000000246 R12: 00007f90bb421522
[    1.881720] R13: 0000000000020000 R14: 00005609c4272cb0 R15: 0000000000000000
[    1.881721]  </TASK>
[    1.881721] ---[ end trace 0000000000000000 ]---
[    1.884081] i915 0000:00:02.0: [drm] Protected Xe Path (PXP) protected content support initialized
[    1.911326] [drm] Initialized i915 1.6.0 20230929 for 0000:00:02.0 on minor 0



