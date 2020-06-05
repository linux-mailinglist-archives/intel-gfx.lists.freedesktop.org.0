Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 879001F02BE
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Jun 2020 00:11:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E1DA6E8BE;
	Fri,  5 Jun 2020 22:11:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86EBC6E8BE
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jun 2020 22:11:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21411889-1500050 for multiple; Fri, 05 Jun 2020 23:11:25 +0100
MIME-Version: 1.0
In-Reply-To: <20200604163916.GA3023929@mdroper-desk1.amr.corp.intel.com>
References: <20200603211529.3005059-1-matthew.d.roper@intel.com>
 <159125964432.14555.14975271091238919132@emeril.freedesktop.org>
 <20200604163916.GA3023929@mdroper-desk1.amr.corp.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx]  ✓ Fi.CI.IGT: success for Remaining RKL patches
Message-ID: <159139508324.22562.3240839281624363557@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 05 Jun 2020 23:11:23 +0100
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

Quoting Matt Roper (2020-06-04 17:39:16)
> On Thu, Jun 04, 2020 at 08:34:04AM +0000, Patchwork wrote:
> > == Series Details ==
> > 
> > Series: Remaining RKL patches
> > URL   : https://patchwork.freedesktop.org/series/77971/
> > State : success
> > 
> > == Summary ==
> > 
> > CI Bug Log - changes from CI_DRM_8579_full -> Patchwork_17859_full
> > ====================================================
> > 
> > Summary
> > -------
> > 
> >   **SUCCESS**
> > 
> >   No regressions found.
> 
> Patches #1, 6, 8, and 11 from this series applied to dinq since they have r-b's.

This seems to have introduced
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8584/fi-skl-guc/igt@runner@aborted.html

<4>[    3.422515] i915 0000:00:02.0: drm_WARN_ON_ONCE(drm_drv_uses_atomic_modeset(dev))
<4>[    3.422528] WARNING: CPU: 4 PID: 372 at drivers/gpu/drm/drm_vblank.c:719 drm_crtc_vblank_helper_get_vblank_timestamp_internal+0x264/0x370
<4>[    3.422529] Modules linked in: i915(+) mei_hdcp x86_pkg_temp_thermal coretemp snd_hda_intel snd_intel_dspcfg crct10dif_pclmul snd_hda_codec crc32_pclmul snd_hwdep snd_hda_core ghash_clmulni_intel snd_pcm mei_me e1000e mei ptp prime_numbers pps_core
<4>[    3.422540] CPU: 4 PID: 372 Comm: systemd-udevd Tainted: G     U            5.7.0-CI-CI_DRM_8584+ #1
<4>[    3.422542] Hardware name: System manufacturer System Product Name/Z170 PRO GAMING, BIOS 3402 04/26/2017
<4>[    3.422544] RIP: 0010:drm_crtc_vblank_helper_get_vblank_timestamp_internal+0x264/0x370
<4>[    3.422547] Code: 8b 5f 50 48 85 db 0f 84 e8 00 00 00 e8 65 62 01 00 48 c7 c1 08 90 35 82 48 89 da 48 89 c6 48 c7 c7 c8 95 35 82 e8 ec d6 9c ff <0f> 0b 45 31 d2 e9 32 ff ff ff 48 8b 7b 18 8b 4d 9c 48 c7 c2 40 90
<4>[    3.422548] RSP: 0018:ffffc9000050b808 EFLAGS: 00010082
<4>[    3.422550] RAX: 0000000000000000 RBX: ffff88822ba975a0 RCX: 0000000000000003
<4>[    3.422552] RDX: 0000000000000000 RSI: 0000000000000000 RDI: ffffffff82383f0a
<4>[    3.422554] RBP: ffffc9000050b878 R08: 0000000000000000 R09: 0000000000000001
<4>[    3.422555] R10: 0000000000000000 R11: 00000000e5a843ae R12: ffff8882193eb800
<4>[    3.422557] R13: ffffc9000050b8c8 R14: 0000000000000000 R15: ffff88820c1fd350
<4>[    3.422559] FS:  00007f3e6ef07680(0000) GS:ffff88822ec00000(0000) knlGS:0000000000000000
<4>[    3.422561] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4>[    3.422562] CR2: 00007f91492aa290 CR3: 000000022368a004 CR4: 00000000003606e0
<4>[    3.422564] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
<4>[    3.422565] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
<4>[    3.422567] Call Trace:
<4>[    3.422604]  ? fwtable_read32+0x83/0x310 [i915]
<4>[    3.422611]  drm_get_last_vbltimestamp+0xb2/0xc0
<4>[    3.422616]  drm_reset_vblank_timestamp+0x54/0xc0
<4>[    3.422621]  drm_crtc_vblank_on+0x83/0x140
<4>[    3.422670]  intel_modeset_setup_hw_state+0x8f7/0x16c0 [i915]
<4>[    3.422676]  ? drm_modeset_lock+0xad/0x120
<4>[    3.422727]  intel_modeset_init+0x582/0x1c50 [i915]
<4>[    3.422731]  ? _raw_spin_unlock_irqrestore+0x34/0x60
<4>[    3.422764]  ? intel_irq_postinstall+0x284/0x610 [i915]
<4>[    3.422799]  i915_driver_probe+0x778/0xf90 [i915]
<4>[    3.422805]  ? __pm_runtime_resume+0x4f/0x80
<4>[    3.422840]  i915_pci_probe+0x3b/0x1d0 [i915]
<4>[    3.422843]  ? _raw_spin_unlock_irqrestore+0x34/0x60
<4>[    3.422849]  pci_device_probe+0x9e/0x120
<4>[    3.422853]  really_probe+0xea/0x430
<4>[    3.422858]  driver_probe_device+0x10b/0x120
<4>[    3.422861]  device_driver_attach+0x4a/0x50
<4>[    3.422865]  __driver_attach+0x97/0x130
<4>[    3.422868]  ? device_driver_attach+0x50/0x50
<4>[    3.422871]  bus_for_each_dev+0x74/0xc0
<4>[    3.422875]  bus_add_driver+0x142/0x220
<4>[    3.422879]  driver_register+0x56/0xf0
<4>[    3.422913]  i915_init+0x6c/0x7c [i915]
<4>[    3.422916]  ? 0xffffffffa08c9000
<4>[    3.422918]  do_one_initcall+0x58/0x300
<4>[    3.422921]  ? do_init_module+0x1d/0x1f2
<4>[    3.422924]  ? rcu_read_lock_sched_held+0x4d/0x80
<4>[    3.422928]  ? kmem_cache_alloc_trace+0x2a6/0x2d0
<4>[    3.422933]  do_init_module+0x56/0x1f2
<4>[    3.422936]  load_module+0x2339/0x2a20
<4>[    3.422953]  ? __do_sys_finit_module+0xe9/0x110
<4>[    3.422955]  __do_sys_finit_module+0xe9/0x110
<4>[    3.422966]  do_syscall_64+0x4f/0x220
<4>[    3.422969]  entry_SYSCALL_64_after_hwframe+0x49/0xb3
<4>[    3.422971] RIP: 0033:0x7f3e6ea28839
<4>[    3.422973] Code: 00 f3 c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 1f f6 2c 00 f7 d8 64 89 01 48
<4>[    3.422975] RSP: 002b:00007ffebbc0c118 EFLAGS: 00000246 ORIG_RAX: 0000000000000139
<4>[    3.422977] RAX: ffffffffffffffda RBX: 0000557f8afde730 RCX: 00007f3e6ea28839
<4>[    3.422979] RDX: 0000000000000000 RSI: 0000557f8afd62c0 RDI: 000000000000000f
<4>[    3.422980] RBP: 0000557f8afd62c0 R08: 0000000000000000 R09: 00007ffebbc0c230
<4>[    3.422982] R10: 000000000000000f R11: 0000000000000246 R12: 0000000000000000
<4>[    3.422984] R13: 0000557f8afb99e0 R14: 0000000000020000 R15: 0000000000000000
<4>[    3.422993] irq event stamp: 603166
<4>[    3.422996] hardirqs last  enabled at (603165): [<ffffffff81a4dfd7>] _raw_spin_unlock_irqrestore+0x47/0x60
<4>[    3.422998] hardirqs last disabled at (603166): [<ffffffff81a4dd5d>] _raw_spin_lock_irqsave+0xd/0x50
<4>[    3.423000] softirqs last  enabled at (603132): [<ffffffff81e00395>] __do_softirq+0x395/0x
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
