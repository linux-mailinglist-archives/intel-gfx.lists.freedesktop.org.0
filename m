Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C053360E06B
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 14:12:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0967710E4F0;
	Wed, 26 Oct 2022 12:12:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from desiato.infradead.org (desiato.infradead.org
 [IPv6:2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B17110E4E0
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 12:12:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=FAmXXgvduJix57FP+CTCm0b1a9NivRiuL8YA2RUsBlc=; b=UGneRXO6duXalpGyfnVRW9GGG8
 EQ0NG9YWR5fsfCb2K/DyncftmRuRQHu80UOXUbP1fN8AO29+N0abCwg/6aI5t7gPl/hkgKq32TFod
 mPaRPouDLyL9GCnxbOE1FPEXMC+nKT0n54OXii5IgitqtOZajMMrEAe6qZZ1TKkn+f9Hu/BrO6pAP
 8nCXIPa38kq90fsDfOAicJMLyVU/IJnfVZ34n2z4sxXoWP365XTHcK7MvR/13pJxFrbjqBHc8cuDR
 nTo2HWcO0O0eAviM5/rPZDaObVNfMMfRnv7bf8dIAIAW7RQV6biFmvyAtzHHmcc9CCGa3LiAaDdZM
 PmJLyfCA==;
Received: from j130084.upc-j.chello.nl ([24.132.130.84]
 helo=noisy.programming.kicks-ass.net)
 by desiato.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1onfGN-006aHU-62; Wed, 26 Oct 2022 12:12:03 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 54B9F3000DD;
 Wed, 26 Oct 2022 14:12:02 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 32CC22C277A6E; Wed, 26 Oct 2022 14:12:02 +0200 (CEST)
Date: Wed, 26 Oct 2022 14:12:02 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <Y1kkEltJfojaFjEC@hirez.programming.kicks-ass.net>
References: <20220822111816.760285417@infradead.org>
 <20220822114649.055452969@infradead.org>
 <Y1LVYaPCCP3BBS4g@intel.com> <Y1drd2gzxUJWdz5F@intel.com>
 <Y1e/Kd+1UQqeSwzY@hirez.programming.kicks-ass.net>
 <Y1kMv1GpKwOSIt8f@intel.com>
 <Y1kdRNNfUeAU+FNl@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y1kdRNNfUeAU+FNl@hirez.programming.kicks-ass.net>
Subject: Re: [Intel-gfx] [PATCH v3 6/6] freezer,
 sched: Rewrite core freezer logic
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
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 bigeasy@linutronix.de, rjw@rjwysocki.net, oleg@redhat.com, rostedt@goodmis.org,
 mingo@kernel.org, mgorman@suse.de, intel-gfx@lists.freedesktop.org,
 tj@kernel.org, Will Deacon <will@kernel.org>, dietmar.eggemann@arm.com,
 ebiederm@xmission.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 26, 2022 at 01:43:00PM +0200, Peter Zijlstra wrote:
> On Wed, Oct 26, 2022 at 01:32:31PM +0300, Ville Syrj�l� wrote:
> > Short form looks to be this:
> > <4>[  355.437846] 1 lock held by rs:main Q:Reg/359:
> > <4>[  355.438418]  #0: ffff88844693b758 (&rq->__lock){-.-.}-{2:2}, at: raw_spin_rq_lock_nested+0x1b/0x30
> > <4>[  355.438432] rs:main Q:Reg/359 holding locks while freezing
> 
> > <4>[  355.438429] ------------[ cut here ]------------
> > <4>[  355.438432] rs:main Q:Reg/359 holding locks while freezing
> > <4>[  355.438439] WARNING: CPU: 0 PID: 6211 at kernel/freezer.c:134 __set_task_frozen+0x86/0xb0
> > <4>[  355.438447] Modules linked in: snd_hda_intel i915 mei_hdcp mei_pxp drm_display_helper drm_kms_helper vgem drm_shmem_helper snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_generic ledtrig_audio snd_intel_dspcfg snd_hda_codec snd_hwdep snd_hda_core snd_pcm prime_numbers ttm drm_buddy syscopyarea sysfillrect sysimgblt fb_sys_fops fuse x86_pkg_temp_thermal coretemp kvm_intel btusb btrtl btbcm btintel kvm irqbypass bluetooth crct10dif_pclmul crc32_pclmul ecdh_generic ghash_clmulni_intel ecc e1000e mei_me i2c_i801 ptp mei i2c_smbus pps_core lpc_ich video wmi [last unloaded: drm_kms_helper]
> > <4>[  355.438521] CPU: 0 PID: 6211 Comm: rtcwake Tainted: G     U             6.1.0-rc2-CI_DRM_12295-g3844a56a0922+ #1
> > <4>[  355.438526] Hardware name:  /NUC5i7RYB, BIOS RYBDWi35.86A.0385.2020.0519.1558 05/19/2020
> > <4>[  355.438530] RIP: 0010:__set_task_frozen+0x86/0xb0
> > <4>[  355.438536] Code: 83 60 09 00 00 85 c0 74 2a 48 89 df e8 ac 02 9b 00 8b 93 38 05 00 00 48 8d b3 48 07 00 00 48 c7 c7 a0 62 2b 82 e8 ee c1 9a 00 <0f> 0b c6 05 51 75 e3 02 01 c7 43 18 00 80 00 00 b8 00 80 00 00 5b
> > <4>[  355.438541] RSP: 0018:ffffc900012cbcf0 EFLAGS: 00010086
> > <4>[  355.438546] RAX: 0000000000000000 RBX: ffff88810d090040 RCX: 0000000000000004
> > <4>[  355.438550] RDX: 0000000000000004 RSI: 00000000fffff5de RDI: 00000000ffffffff
> > <4>[  355.438553] RBP: 0000000000000000 R08: 0000000000000000 R09: c0000000fffff5de
> > <4>[  355.438557] R10: 00000000002335f8 R11: ffffc900012cbb88 R12: 0000000000000246
> > <4>[  355.438561] R13: ffffffff81165430 R14: 0000000000000000 R15: ffff88810d090040
> > <4>[  355.438565] FS:  00007fcfa43c7740(0000) GS:ffff888446800000(0000) knlGS:0000000000000000
> > <4>[  355.438569] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > <4>[  355.438582] CR2: 00007fceb380f6b8 CR3: 0000000117c5c004 CR4: 00000000003706f0
> > <4>[  355.438586] Call Trace:
> > <4>[  355.438589]  <TASK>
> > <4>[  355.438592]  task_call_func+0xc4/0xe0
> > <4>[  355.438600]  freeze_task+0x84/0xe0
> > <4>[  355.438607]  try_to_freeze_tasks+0xac/0x260
> > <4>[  355.438616]  freeze_processes+0x56/0xb0
> > <4>[  355.438622]  pm_suspend.cold.7+0x1d9/0x31c
> > <4>[  355.438629]  state_store+0x7b/0xe0
> > <4>[  355.438637]  kernfs_fop_write_iter+0x124/0x1c0
> > <4>[  355.438644]  vfs_write+0x34f/0x4e0
> > <4>[  355.438655]  ksys_write+0x57/0xd0
> > <4>[  355.438663]  do_syscall_64+0x3a/0x90
> > <4>[  355.438670]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
> 
> Oh I think I see what's going on.
> 
> It's a very narrow race between schedule() and task_call_func().
> 
>   CPU0						CPU1
> 
>   __schedule()
>     rq_lock();
>     prev_state = READ_ONCE(prev->__state);
>     if (... && prev_state) {
>       deactivate_tasl(rq, prev, ...)
>         prev->on_rq = 0;
> 
> 						task_call_func()
> 						  raw_spin_lock_irqsave(p->pi_lock);
> 						  state = READ_ONCE(p->__state);
> 						  smp_rmb();
> 						  if (... || p->on_rq) // false!!!
> 						    rq = __task_rq_lock()
> 
> 						  ret = func();
> 
>     next = pick_next_task();
>     rq = context_switch(prev, next)
>       prepare_lock_switch()
>         spin_release(&__rq_lockp(rq)->dep_map...)
> 
> 
> 
> So while the task is on it's way out, it still holds rq->lock for a
> little while, and right then task_call_func() comes in and figures it
> doesn't need rq->lock anymore (because the task is already dequeued --
> but still running there) and then the __set_task_frozen() thing observes
> it's holding rq->lock and yells murder.
> 
> Could you please give the below a spin?

Urgh.. that'll narrow the race more, but won't solve it, that
prepare_lock_switch() is after we clear ->on_cpu.

Let me ponder this a wee bit more..
