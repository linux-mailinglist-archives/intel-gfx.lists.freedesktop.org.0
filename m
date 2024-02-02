Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFFD846A96
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 09:23:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C421B10E305;
	Fri,  2 Feb 2024 08:23:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux.microsoft.com header.i=@linux.microsoft.com header.b="QdhZU2uW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4761A10E342
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 08:23:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="10844537"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; d="scan'208";a="10844537"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 00:23:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'208";a="4598576"
Received: from mistoan-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.140])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 00:23:03 -0800
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Fri, 02 Feb 2024 10:22:59 +0200
Resent-Message-ID: <87le83ff6k.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from orsmga002.jf.intel.com (orsmga002.jf.intel.com [10.7.209.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 3A619580CBA;
 Thu,  1 Feb 2024 22:43:38 -0800 (PST)
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="789152695"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'";a="789152695"
Received: from fmvoesa105.fm.intel.com ([10.64.2.15])
 by orsmga002-1.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01
 Feb 2024 22:43:37 -0800
X-IPAS-Result: =?us-ascii?q?A0EFAACAjrxlmLHS/INaGgEBAQEBAQEBAQEDAQEBARIBA?=
 =?us-ascii?q?QEBAgIBAQEBgX4CAQEBAQsBgjgZAYE4gQmNT4hpGZ8vOBUBAQEBAQEBAQEJL?=
 =?us-ascii?q?hMBAgQBAQMEjFYCJjcGDQEBAgQBAQEBAwIBAgEBAQEBAQgBAQECAgEBAQIBA?=
 =?us-ascii?q?QYDAQEBAQIQAQEBAQEBAQEeGQUQDieFLz0NgjclARCBDEsNAwc8AQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBBQINXAEBHgECAwEBAQ4WG?=
 =?us-ascii?q?QEBBAopAQIDAQIGAQFEBAgDAScrBgESBYJ7gmADAwKjNgGHXQEBiiiBeTOBA?=
 =?us-ascii?q?YIKAQEGsR2BYQmBSAGMcldLg0F6JxuBSUR6GzWBBoE+b4FSiTSCGYMWKYItA?=
 =?us-ascii?q?4xrgWeEQEqBJgOBBm0bEB43ERAFDg0DCG4dAhEiOgMFAwQyChIMCyEFVQNAB?=
 =?us-ascii?q?kkLAwIaBQMDBIEwBQ0aAhAsJgMDEkkCEBQDOAMDBgMKMTAaO0EMUANnHxoYC?=
 =?us-ascii?q?TwPDBoCGxsNJyMCLEADERACFgMiFgQ2EQkLJgMqBjYCEgwGBgZdIxYJBCUDC?=
 =?us-ascii?q?AQDVAMhdBEDBAoDFAcLB1Qmg0cEE0QDEIE0BoVYAwkDBwVJQAMLGA1IESwWH?=
 =?us-ascii?q?wYOGygfbwecSC0HAVgBIQkLgmiSZCYIj0UvgW+gYYQbgWEMn0kBMqofmFUgo?=
 =?us-ascii?q?z+FEYF5JAKBWjMTByODN1IZD44gDBaDWI88AV0gNTsCBwsBAQMJhUYBAYMmK?=
 =?us-ascii?q?wgBgUYBAQ?=
IronPort-PHdr: A9a23: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
 MjWl8/v37oQsw==
IronPort-Data: A9a23:RhfXn696Pu3czYBeYzdEDrUDv3iTJUtcMsCJ2f8bNWPcYEJGY0x3m
 jAWUDzXPPzcamTwc9x0b4Syp0gAsJDQy9RmTVdqryoxFiIbosfsO4+lIxarNUt+DCFioGGLT
 Sk6QoCYdKjYm1eF/k/F3p7J8yckjclkYZKlUL+bY0idfSc9FGF7z0gLd9cR2OZAmcK+Dx6Gp
 eT8qsjePE7N8zNvOwr40YrawP9UlKq04G5wUmAWP6gR4AeEzyNNVvrzGInoR5fGatgMdgKFb
 7ubpF2J1jux1wsgDNqjjoH6fiUiKlIFFVPW4pb+c/HKbilq/kTe4I5iXBYvQR4/ZwGyojxE4
 I4lWaqYEl51Y/KWyIzxZDEDe812FfUuFLYquhFTu+TLp6HNWyKEL/mDlyjalGDXkwp6KTgmy
 BAWFNwCRkCto/qk4p2edsthvM0OceziI90kmUg1mFk1Dd5+KXzCa6rD79Ie0i09i8xDBvXCY
 NJfbiBgBPjCS0QUYxFNVch4xr7wwCCgLFW0q3rNzUYzy2TJzUl93abgNJ/ffcGMTshOtkKZv
 X7duWrjDxwWOcec1T2dtHW2iYcjmAuiAN1OSuzpr5aGhnW4nG4/CgYWDWHi++eWiUy9UopFO
 U0br39GQa8arRD0H4ikN/Gim1atuBIGSddSVc4z4xmXzbXP4AexAmkCUy4Hado6uctwTjsvv
 neAk9rsQzluq6+eW3ue3rOVqy6ifykTMWIGIyQDSGMt6t/voccojgPTT/5nEaionpv0Hy39x
 3aBqy1Wr7wJhNAK0an9/FzLije3q4TVXyYx5wPKTiSk6B90YMiuYInAwVrS5vtDaoKQUUOQu
 n8bmsOMxOQPC4yd0i2LXOgJWrqu4p6tMjTagBhpHpo88z2F/3+lYJAW4TdiKUMvOcEBERfra
 UnOohEX54VBLWC4cah5YoGZD8Us0LimFNL5W/SSZd1LCrBzcwiB9TooYUeQw2HrnU4ElaA5J
 IfdcMCwAHJcAqNipBKzTuwc3L1t3ikiyGfYV4H45xCm16eOIn+TVboBdlCJa4gR6aqZugKT+
 NZSN8KA4xFeVvDuJCjR7YMXa1sNKBATA5HsrstGMOKKOSJiGWc8G7nQx68sf8pumKE9vvzU9
 3e8QUtR1xzwn2DcOwaDQnRibq7/G5d5sX8/eycrOD6Ax38maJ29qqIebIc+YZEj9ep+3bh1S
 eUIf4OLBfEnYijZ4Sgeat/gtpd/cBWtrQaPOTe1Jjk5Y5NkAQfO/7fMYArr8CRIFTutt8I6q
 pWk1wXGUdwCQRhvCIDdb/fH50GxsH4Mhf1aW0rOP8kVeUPw/YwsICv05sLbOOkDIB/OgDWA2
 guaDAwbue7V5Ygv/7ElmJxosa/5Pc9mDGh1OlX54Iy/GHT/93X9+qx5BbPgkS/maEv4/6CrZ
 ONwxv76MeEakFsij2aaO+s3pU7Zz4a1z4K23jhZ8GP3g0NH446Mz1GJ1MNC8KNXy7JVtBC1R
 kWXvN5ANt1l2f8J8nZBf2LJjczai5n4fwU+C9xoey0WAwcqptK6vb16ZUXktcCkBOId3HkZ6
 ekgotUKzAe0lwAnNN2L5ggNqDzSfiVaD/567M1AaGMOtubN4gweCXA7InKsiKxjl/0WWqXXC
 mHJ2fGc71ii7hSaG5bMKZQ99bMB2sVf4XimPXcaIE6VntPDircswBRN/HwqSAVLww9c0v5iU
 lWHxGUrTZhiCwxA3ZAZN0j1QlkpLETAqiTZlQBT/EWHFBbAa4A4BDBnUQp71BpHozs0k/ky1
 Ozw9VsJph6xIJuuh3tvCR81wxEhJPQonjD/dAmcN53tN7E+YDz4kumrZGESrADgD993j0rCz
 dSGNs4pAUEnHUb8aJHXx2VXOXr8hfxEyKF/rSldwZ40
IronPort-HdrOrdr: A9a23:SEYqb6HmphCicmmPpLqEHseALOsnbusQ8zAXPiBKIyC9vPbo8v
 xH/pwgtCMc7QxwZJhOo6HmBEDrex/hHKBOkPws1NuZLWrbUS6TXflfBWWL+UyQJ8XRntQtpp
 uIWZIOd+EZNDBB/LbHCOPRKadT/DD/ytHXuQ6h9QYKcegwUdAd0+4RMG/yeSIZeOAFP+tDKH
 Oy3Lsym9PKQwVyUi3UPAhmYwADz+e77q4OGSR2fiLOZ2G1/E6VAdPBfiSl4g==
X-Talos-CUID: =?us-ascii?q?9a23=3A9ItJvGmTty3lAqF2GsU0cj4mITLXOS3z6G/CAWC?=
 =?us-ascii?q?dNURkcrS4FHqZ5/1fsPM7zg=3D=3D?=
X-Talos-MUID: 9a23:Pm9JFQjrJHQ3BQhxiyEBZsMpH51qz6a1CBg3yM8YlMqGNiUoISWcg2Hi
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="10746991"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'";a="10746991"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from gabe.freedesktop.org ([131.252.210.177])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Feb 2024
 22:43:36 -0800
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
 by gabe.freedesktop.org (Postfix) with ESMTP id 162CC10E713;
 Fri,  2 Feb 2024 06:43:35 +0000 (UTC)
X-Original-To: dri-devel@lists.freedesktop.org
Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
 by gabe.freedesktop.org (Postfix) with ESMTP id 46C0610E6FD
 for <dri-devel@lists.freedesktop.org>; Fri,  2 Feb 2024 06:43:34 +0000 (UTC)
Received: by linux.microsoft.com (Postfix, from userid 1134)
 id C4CDD20B2000; Thu,  1 Feb 2024 22:43:30 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com C4CDD20B2000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1706856210;
 bh=/bx6QDZpUAu0zrSd8HA7Hzv58wlXmlOwd1w++Z5qd8c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QdhZU2uWQWHXyEgfYWLD1DveLDO8kE+lv1wiSfe5h0KXuSgz1p7NfoCb+4+WfzXRy
 a1F/BLKb1PQujut7dyK0vnngiK/dWsXFXVw+FAbe3U0B0dtrTeKbs2FDX8YwO5Bn9M
 HAqPN5ZHHobOGeyyRHWltE9/LugzXQOIasB8Yts8=
From: Shradha Gupta <shradhagupta@linux.microsoft.com>
To: linux-kernel@vger.kernel.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.dev>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
 Saurabh Singh Sengar <ssengar@linux.microsoft.com>
Cc: Shradha Gupta <shradhagupta@linux.microsoft.com>,
 Shradha Gupta <shradhagupta@microsoft.com>
Subject: [PATCH v4, 1/2] drm: Check output polling initialized before disabling
Date: Thu,  1 Feb 2024 22:43:28 -0800
Message-Id: <1706856208-9617-1-git-send-email-shradhagupta@linux.microsoft.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1706856176-9483-1-git-send-email-shradhagupta@linux.microsoft.com>
References: <1706856176-9483-1-git-send-email-shradhagupta@linux.microsoft.com>
X-BeenThere: dri-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
X-TUID: 6ImBsgcFQgBy
MIME-Version: 1.0
Content-Type: text/plain
X-BeenThere: intel-gfx@lists.freedesktop.org
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

In drm_kms_helper_poll_disable() check if output polling
support is initialized before disabling polling. If not flag
this as a warning.
Additionally in drm_mode_config_helper_suspend() and
drm_mode_config_helper_resume() calls, that re the callers of these
functions, avoid invoking them if polling is not initialized.
For drivers like hyperv-drm, that do not initialize connector
polling, if suspend is called without this check, it leads to
suspend failure with following stack
[  770.719392] Freezing remaining freezable tasks ... (elapsed 0.001 seconds) done.
[  770.720592] printk: Suspending console(s) (use no_console_suspend to debug)
[  770.948823] ------------[ cut here ]------------
[  770.948824] WARNING: CPU: 1 PID: 17197 at kernel/workqueue.c:3162 __flush_work.isra.0+0x212/0x230
[  770.948831] Modules linked in: rfkill nft_counter xt_conntrack xt_owner udf nft_compat crc_itu_t nft_fib_inet nft_fib_ipv4 nft_fib_ipv6 nft_fib nft_reject_inet nf_reject_ipv4 nf_reject_ipv6 nft_reject nft_ct nft_chain_nat nf_nat nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 ip_set nf_tables nfnetlink vfat fat mlx5_ib ib_uverbs ib_core mlx5_core intel_rapl_msr intel_rapl_common kvm_amd ccp mlxfw kvm psample hyperv_drm tls drm_shmem_helper drm_kms_helper irqbypass pcspkr syscopyarea sysfillrect sysimgblt hv_balloon hv_utils joydev drm fuse xfs libcrc32c pci_hyperv pci_hyperv_intf sr_mod sd_mod cdrom t10_pi sg hv_storvsc scsi_transport_fc hv_netvsc serio_raw hyperv_keyboard hid_hyperv crct10dif_pclmul crc32_pclmul crc32c_intel hv_vmbus ghash_clmulni_intel dm_mirror dm_region_hash dm_log dm_mod
[  770.948863] CPU: 1 PID: 17197 Comm: systemd-sleep Not tainted 5.14.0-362.2.1.el9_3.x86_64 #1
[  770.948865] Hardware name: Microsoft Corporation Virtual Machine/Virtual Machine, BIOS Hyper-V UEFI Release v4.1 05/09/2022
[  770.948866] RIP: 0010:__flush_work.isra.0+0x212/0x230
[  770.948869] Code: 8b 4d 00 4c 8b 45 08 89 ca 48 c1 e9 04 83 e2 08 83 e1 0f 83 ca 02 89 c8 48 0f ba 6d 00 03 e9 25 ff ff ff 0f 0b e9 4e ff ff ff <0f> 0b 45 31 ed e9 44 ff ff ff e8 8f 89 b2 00 66 66 2e 0f 1f 84 00
[  770.948870] RSP: 0018:ffffaf4ac213fb10 EFLAGS: 00010246
[  770.948871] RAX: 0000000000000000 RBX: 0000000000000000 RCX: ffffffff8c992857
[  770.948872] RDX: 0000000000000001 RSI: 0000000000000001 RDI: ffff9aad82b00330
[  770.948873] RBP: ffff9aad82b00330 R08: 0000000000000000 R09: ffff9aad87ee3d10
[  770.948874] R10: 0000000000000200 R11: 0000000000000000 R12: ffff9aad82b00330
[  770.948874] R13: 0000000000000001 R14: 0000000000000000 R15: 0000000000000001
[  770.948875] FS:  00007ff1b2f6bb40(0000) GS:ffff9aaf37d00000(0000) knlGS:0000000000000000
[  770.948878] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  770.948878] CR2: 0000555f345cb666 CR3: 00000001462dc005 CR4: 0000000000370ee0
[  770.948879] Call Trace:
[  770.948880]  <TASK>
[  770.948881]  ? show_trace_log_lvl+0x1c4/0x2df
[  770.948884]  ? show_trace_log_lvl+0x1c4/0x2df
[  770.948886]  ? __cancel_work_timer+0x103/0x190
[  770.948887]  ? __flush_work.isra.0+0x212/0x230
[  770.948889]  ? __warn+0x81/0x110
[  770.948891]  ? __flush_work.isra.0+0x212/0x230
[  770.948892]  ? report_bug+0x10a/0x140
[  770.948895]  ? handle_bug+0x3c/0x70
[  770.948898]  ? exc_invalid_op+0x14/0x70
[  770.948899]  ? asm_exc_invalid_op+0x16/0x20
[  770.948903]  ? __flush_work.isra.0+0x212/0x230
[  770.948905]  __cancel_work_timer+0x103/0x190
[  770.948907]  ? _raw_spin_unlock_irqrestore+0xa/0x30
[  770.948910]  drm_kms_helper_poll_disable+0x1e/0x40 [drm_kms_helper]
[  770.948923]  drm_mode_config_helper_suspend+0x1c/0x80 [drm_kms_helper]
[  770.948933]  ? __pfx_vmbus_suspend+0x10/0x10 [hv_vmbus]
[  770.948942]  hyperv_vmbus_suspend+0x17/0x40 [hyperv_drm]
[  770.948944]  ? __pfx_vmbus_suspend+0x10/0x10 [hv_vmbus]
[  770.948951]  dpm_run_callback+0x4c/0x140
[  770.948954]  __device_suspend_noirq+0x74/0x220
[  770.948956]  dpm_noirq_suspend_devices+0x148/0x2a0
[  770.948958]  dpm_suspend_end+0x54/0xe0
[  770.948960]  create_image+0x14/0x290
[  770.948963]  hibernation_snapshot+0xd6/0x200
[  770.948964]  hibernate.cold+0x8b/0x1fb
[  770.948967]  state_store+0xcd/0xd0
[  770.948969]  kernfs_fop_write_iter+0x124/0x1b0
[  770.948973]  new_sync_write+0xff/0x190
[  770.948976]  vfs_write+0x1ef/0x280
[  770.948978]  ksys_write+0x5f/0xe0
[  770.948979]  do_syscall_64+0x5c/0x90
[  770.948981]  ? syscall_exit_work+0x103/0x130
[  770.948983]  ? syscall_exit_to_user_mode+0x12/0x30
[  770.948985]  ? do_syscall_64+0x69/0x90
[  770.948986]  ? do_syscall_64+0x69/0x90
[  770.948987]  ? do_user_addr_fault+0x1d6/0x6a0
[  770.948989]  ? do_syscall_64+0x69/0x90
[  770.948990]  ? exc_page_fault+0x62/0x150
[  770.948992]  entry_SYSCALL_64_after_hwframe+0x72/0xdc
[  770.948995] RIP: 0033:0x7ff1b293eba7
[  770.949010] Code: 0b 00 f7 d8 64 89 02 48 c7 c0 ff ff ff ff eb b7 0f 1f 00 f3 0f 1e fa 64 8b 04 25 18 00 00 00 85 c0 75 10 b8 01 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 51 c3 48 83 ec 28 48 89 54 24 18 48 89 74 24
[  770.949011] RSP: 002b:00007ffde3912128 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
[  770.949012] RAX: ffffffffffffffda RBX: 0000000000000005 RCX: 00007ff1b293eba7
[  770.949013] RDX: 0000000000000005 RSI: 00007ffde3912210 RDI: 0000000000000004
[  770.949014] RBP: 00007ffde3912210 R08: 000055d7dd4c9510 R09: 00007ff1b29b14e0
[  770.949014] R10: 00007ff1b29b13e0 R11: 0000000000000246 R12: 0000000000000005
[  770.949015] R13: 000055d7dd4c53e0 R14: 0000000000000005 R15: 00007ff1b29f69e0
[  770.949016]  </TASK>
[  770.949017] ---[ end trace e6fa0618bfa2f31d ]---

Built-on: Rhel9, Ubuntu22
Signed-off-by: Shradha Gupta <shradhagupta@linux.microsoft.com>
---
Changes in v4
 * clubbed similar patches together and added a cover letter
Changes in v3
 * Also added checks in the _suspend and _resume calls to avoid driver bugs
 * Added WARN_ON around the checks in _enable and _disable calls
 * Fixed the patch description to reflect new changes
Changes in v2
 * Moved the poll_enabled check in drm_kms_helper_poll_disable()
 * Reworded the patch description based on new changes
---
 drivers/gpu/drm/drm_modeset_helper.c | 19 ++++++++++++++++---
 drivers/gpu/drm/drm_probe_helper.c   | 13 +++++++++++--
 2 files changed, 27 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/drm_modeset_helper.c b/drivers/gpu/drm/drm_modeset_helper.c
index f858dfedf2cf..2c582020cb42 100644
--- a/drivers/gpu/drm/drm_modeset_helper.c
+++ b/drivers/gpu/drm/drm_modeset_helper.c
@@ -193,13 +193,22 @@ int drm_mode_config_helper_suspend(struct drm_device *dev)
 
 	if (!dev)
 		return 0;
+	/*
+	 * Don't disable polling if it was never initialized
+	 */
+	if (dev->mode_config.poll_enabled)
+		drm_kms_helper_poll_disable(dev);
 
-	drm_kms_helper_poll_disable(dev);
 	drm_fb_helper_set_suspend_unlocked(dev->fb_helper, 1);
 	state = drm_atomic_helper_suspend(dev);
 	if (IS_ERR(state)) {
 		drm_fb_helper_set_suspend_unlocked(dev->fb_helper, 0);
-		drm_kms_helper_poll_enable(dev);
+		/*
+		 * Don't enable polling if it was never initialized
+		 */
+		if (dev->mode_config.poll_enabled)
+			drm_kms_helper_poll_enable(dev);
+
 		return PTR_ERR(state);
 	}
 
@@ -239,7 +248,11 @@ int drm_mode_config_helper_resume(struct drm_device *dev)
 	dev->mode_config.suspend_state = NULL;
 
 	drm_fb_helper_set_suspend_unlocked(dev->fb_helper, 0);
-	drm_kms_helper_poll_enable(dev);
+	/*
+	 * Don't enable polling if it is not initialized
+	 */
+	if (dev->mode_config.poll_enabled)
+		drm_kms_helper_poll_enable(dev);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/drm_probe_helper.c b/drivers/gpu/drm/drm_probe_helper.c
index 3f479483d7d8..bd76603dc387 100644
--- a/drivers/gpu/drm/drm_probe_helper.c
+++ b/drivers/gpu/drm/drm_probe_helper.c
@@ -293,14 +293,17 @@ static void reschedule_output_poll_work(struct drm_device *dev)
  * Drivers can call this helper from their device resume implementation. It is
  * not an error to call this even when output polling isn't enabled.
  *
+ * If device polling was never initialized before, this call will trigger a
+ * warning and return.
+ *
  * Note that calls to enable and disable polling must be strictly ordered, which
  * is automatically the case when they're only call from suspend/resume
  * callbacks.
  */
 void drm_kms_helper_poll_enable(struct drm_device *dev)
 {
-	if (!dev->mode_config.poll_enabled || !drm_kms_helper_poll ||
-	    dev->mode_config.poll_running)
+	if (drm_WARN_ON_ONCE(dev, !dev->mode_config.poll_enabled) ||
+	    !drm_kms_helper_poll || dev->mode_config.poll_running)
 		return;
 
 	if (drm_kms_helper_enable_hpd(dev) ||
@@ -871,12 +874,18 @@ EXPORT_SYMBOL(drm_kms_helper_is_poll_worker);
  * not an error to call this even when output polling isn't enabled or already
  * disabled. Polling is re-enabled by calling drm_kms_helper_poll_enable().
  *
+ * If however, the polling was never initialized, this call will trigger a
+ * warning and return
+ *
  * Note that calls to enable and disable polling must be strictly ordered, which
  * is automatically the case when they're only call from suspend/resume
  * callbacks.
  */
 void drm_kms_helper_poll_disable(struct drm_device *dev)
 {
+	if (drm_WARN_ON(dev, !dev->mode_config.poll_enabled))
+		return;
+
 	if (dev->mode_config.poll_running)
 		drm_kms_helper_disable_hpd(dev);
 
-- 
2.34.1

