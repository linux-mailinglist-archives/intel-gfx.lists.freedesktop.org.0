Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EFB614FA23
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Feb 2020 20:16:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AAFE6E2A9;
	Sat,  1 Feb 2020 19:16:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87AA96E2A9
 for <intel-gfx@lists.freedesktop.org>; Sat,  1 Feb 2020 19:16:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20085199-1500050 for multiple; Sat, 01 Feb 2020 19:16:39 +0000
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200201135231.104080-1-michal.wajdeczko@intel.com>
References: <20200201135231.104080-1-michal.wajdeczko@intel.com>
Message-ID: <158058459689.15137.10552857473732703836@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 01 Feb 2020 19:16:36 +0000
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/guc: Stop using mutex while
 sending CTB messages
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

Quoting Michal Wajdeczko (2020-02-01 13:52:31)
>  void intel_guc_ct_init_early(struct intel_guc_ct *ct)
>  {
> +       int i;
> +
>         spin_lock_init(&ct->requests.lock);
>         INIT_LIST_HEAD(&ct->requests.pending);
>         INIT_LIST_HEAD(&ct->requests.incoming);
>         INIT_WORK(&ct->requests.worker, ct_incoming_request_worker_func);
> +       for (i = 0; i < ARRAY_SIZE(ct->ctbs); i++) {
> +               spin_lock_init(&ct->ctbs[i].lock);
> +               lockdep_set_subclass(&ct->ctbs[i].lock, i);

Ugh this then hits the lockdep bug where the lock has to be used or else
it miscounts.

<4>[  276.588423] DEBUG_LOCKS_WARN_ON(debug_atomic_read(nr_unused_locks) != nr_unused)
<4>[  276.588431] WARNING: CPU: 9 PID: 1107 at kernel/locking/lockdep_proc.c:249 lockdep_stats_show+0x9b8/0xa40
<4>[  276.588452] Modules linked in: vgem snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_generic x86_pkg_temp_thermal coretemp snd_intel_dspcfg snd_hda_codec mei_hdcp snd_hwdep crct10dif_pclmul snd_hda_core crc32_pclmul snd_pcm ghash_clmulni_intel e1000e mei_me ptp mei pps_core prime_numbers [last unloaded: i915]
<4>[  276.588492] CPU: 9 PID: 1107 Comm: igt_runner Tainted: G     U            5.5.0-CI-Patchwork_16376+ #1
<4>[  276.588504] Hardware name: Micro-Star International Co., Ltd. MS-7B54/Z370M MORTAR (MS-7B54), BIOS 1.10 12/28/2017
<4>[  276.588519] RIP: 0010:lockdep_stats_show+0x9b8/0xa40
<4>[  276.588527] Code: 00 85 c0 0f 84 6e f8 ff ff 8b 05 03 bd 62 01 85 c0 0f 85 60 f8 ff ff 48 c7 c6 28 fd 2c 82 48 c7 c7 82 c7 2b 82 e8 38 30 f9 ff <0f> 0b e9 46 f8 ff ff 48 c7 44 24 50 00 00 00 00 45 31 e4 48 c7 44
<4>[  276.588549] RSP: 0018:ffffc90000e37dc0 EFLAGS: 00010282
<4>[  276.588557] RAX: 0000000000000000 RBX: 0000000000000474 RCX: 0000000000000001
<4>[  276.588567] RDX: 0000000080000001 RSI: 0000000000000000 RDI: ffffffff8112e5bc
<4>[  276.588576] RBP: 0000000000000043 R08: 0000000000000000 R09: 000000000003ae40
<4>[  276.588586] R10: ffffc90000e37dc0 R11: 0000000000000453 R12: 0000000000013384
<4>[  276.588595] R13: 0000000000000014 R14: ffff88823c4fc238 R15: 0000000000000003
<4>[  276.588605] FS:  00007fd2e01b8980(0000) GS:ffff888266c80000(0000) knlGS:0000000000000000
<4>[  276.588616] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4>[  276.588624] CR2: 00007ffd8febc150 CR3: 0000000252cd4006 CR4: 00000000003606e0
<4>[  276.588633] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
<4>[  276.588642] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
<4>[  276.588652] Call Trace:
<4>[  276.588663]  seq_read+0xdb/0x3f0
<4>[  276.588671]  ? do_sys_open+0x13b/0x250
<4>[  276.588680]  proc_reg_read+0x34/0x60
<4>[  276.588687]  vfs_read+0x96/0x160
<4>[  276.588695]  ksys_read+0x9f/0xe0
<4>[  276.588703]  do_syscall_64+0x4f/0x220
<4>[  276.588711]  entry_SYSCALL_64_after_hwframe+0x49/0xbe

        /*
         * Due to an interesting quirk in lockdep's internal debug tracking,
         * after setting a subclass we must ensure the lock is used. Otherwise,
         * nr_unused_locks is incremented once too often.
         */
#ifdef CONFIG_DEBUG_LOCK_ALLOC
        lock_map_acquire(&ct->ctbs[i].lock.dep_map);
        lock_map_release(&ct->ctbs[i].lock.dep_map);
#endif


> +       }
>  }
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
