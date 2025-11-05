Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C76F1C37C4C
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 21:42:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BDC310E79E;
	Wed,  5 Nov 2025 20:42:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="CbAU7RTC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B26D610E799;
 Wed,  5 Nov 2025 20:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1762375374;
 bh=MJdIRIgBNtoB4YPZdmP2xmA43PUkUh5guSsghyJ6vDs=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=CbAU7RTCO8Nh34QAk5sYoB2V3HEAL9no5OLCX2knudIrrswJSazMz68QtrhouArfZ
 Xw2Oc1JrIBHvYIMyGvXDORrW3gS/mZ/LxlIYTxA8tHWy2jfo1cVN4cLOOcYRLYn/1i
 eRrVPHZodGZ3lowqdlI/cdLS3otzyt9n89CqCk3JgjLjV1G3YLeWbWPJrRaJDsqFNc
 ew+GTpb2GcKY4qqM0kvY7AdPmi8nWN1/vpciHXcQQ+29pbGe3U59ueRl02jlGHBC3/
 5CPClMrE3Lu2RUfpCGpALK5zDDRjRh+oZQaPnphtKcIY39aZv7XV+74HF/MuN40lNs
 LVZC9rkvomYZA==
Message-ID: <32bbb93a-3606-4488-ac3a-3dcd1fd38304@lankhorst.se>
Date: Wed, 5 Nov 2025 21:42:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/7] drm/i915/display: Handle vblank evasion with
 CONFIG_PREEMPT_RT
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-rt-devel@lists.linux.dev, Mario Kleiner <mario.kleiner.de@gmail.com>,
 Mike Galbraith <umgwanakikbuti@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Clark Williams <clrkwllms@kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>
References: <20251104083634.670753-1-dev@lankhorst.se>
 <20251105134740.NseZnpeZ@linutronix.de>
Content-Language: en-US
From: Maarten Lankhorst <dev@lankhorst.se>
In-Reply-To: <20251105134740.NseZnpeZ@linutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Hey,

Den 2025-11-05 kl. 14:47, skrev Sebastian Andrzej Siewior:
> Thank you for looking into this. I applied this on top of
> drm-intel-next-2025-11-04 for testing.
> 
> On 2025-11-04 09:36:24 [+0100], Maarten Lankhorst wrote:
>> There is a critical section between intel_pipe_update_start() and
>> intel_pipe_update_end() where we only program hardware registers,
>> should not take any lock and complete as fast as possible.
>>
>> The previous approach used to remove the local_irq_enable/disable()
>> in this critical, but that increases the probability that the time
>> sensitive section does not complete in 100 µs, potentially causing
>> the hardware to hang.
>>
>> I went through all the lockdep splats that occurred in CI, and fixed
>> them 1 by 1 until there were none left. This additionally improves
>> latency by not removing any locks in the fastpath.
>>
>> In intel_de.h the implicit DMC wakelock was added, ideally we can get rid
>> of it, but for now we can simply use the same _fw variants as are
>> needed on i915.
>>
>> I believe this series is enough to make xe and perhaps good enough to make
>> i915's display RT safe.
> 
> I've been playing with it:
> - DRM_XE_DEBUG_GUC ended in a segfault:
> | xe 0000:00:02.0: enabling device (0006 -> 0007)
> | Console: switching to colour dummy device 80x25
> | xe 0000:00:02.0: vgaarb: deactivate vga console
> | xe 0000:00:02.0: [drm] Running in SR-IOV PF mode
> | xe 0000:00:02.0: [drm] Found tigerlake/uy (device ID 9a49) integrated display version 12.00 stepping C0
> | xe 0000:00:02.0: vgaarb: VGA decodes changed: olddecodes=io+mem,decodes=none:owns=mem
> | xe 0000:00:02.0: [drm] Finished loading DMC firmware i915/tgl_dmc_ver2_12.bin (v2.12)
> | xe 0000:00:02.0: [drm] Tile0: GT0: Using GuC firmware from i915/tgl_guc_70.bin version 70.49.4
> | xe 0000:00:02.0: [drm] Tile0: GT0: Using HuC firmware from i915/tgl_huc.bin version 7.9.3
> | xe 0000:00:02.0: [drm] Tile0: GT0: vcs1 fused off
> | xe 0000:00:02.0: [drm] Tile0: GT0: vcs3 fused off
> | xe 0000:00:02.0: [drm] Tile0: GT0: vcs4 fused off
> | xe 0000:00:02.0: [drm] Tile0: GT0: vcs5 fused off
> | xe 0000:00:02.0: [drm] Tile0: GT0: vcs6 fused off
> | xe 0000:00:02.0: [drm] Tile0: GT0: vcs7 fused off
> | xe 0000:00:02.0: [drm] Tile0: GT0: vecs1 fused off
> | xe 0000:00:02.0: [drm] Tile0: GT0: vecs2 fused off
> | xe 0000:00:02.0: [drm] Tile0: GT0: vecs3 fused off
> | BUG: kernel NULL pointer dereference, address: 0000000000000000
> | #PF: supervisor read access in kernel mode
> | #PF: error_code(0x0000) - not-present page
> | PGD 0 P4D 0
> | Oops: Oops: 0000 [#1] SMP NOPTI
> | CPU: 1 UID: 0 PID: 631 Comm: kworker/u32:9 Tainted: G     U      E       6.18.0-rc1+ #31 PREEMPT_{RT,(lazy)}
> | Tainted: [U]=USER, [E]=UNSIGNED_MODULE
> | Hardware name: LENOVO 20TD00GLGE/20TD00GLGE, BIOS R1EET64W(1.64 ) 03/18/2025
> | Workqueue:  drm_sched_run_job_work [gpu_sched]
> | RIP: 0010:stack_depot_save_flags+0x168/0xb00
> | Code: c2 44 31 d0 41 c1 ca 08 44 29 d0 41 89 c0 45 89 c2 44 23 15 82 68 a1 03 49 c1 e2 04 4c 03 15 7f 68 a1 03 65 ff 05 f8 b9 f6 01 <4d> 8b 0a 4d 39 ca 75 1c e9 ae  00 00 00 66 66 2e 0f 1f 84 00 00 00
> | RSP: 0018:ffffaa58c1a9f6a8 EFLAGS: 00010282
> | RAX: 0000000006425a49 RBX: 0000000000000001 RCX: 000000000000000e
> | RDX: 000000000000000e RSI: 00000000be7f6f1a RDI: 0000000000000001
> | RBP: ffffaa58c1a9f700 R08: 0000000006425a49 R09: 000000000739c857
> | R10: 0000000000000000 R11: 00000000000025b3 R12: 0000000000004502
> | R13: ffff9c3a8f2b18b8 R14: 0000000000002800 R15: 000000000000000d
> | FS:  0000000000000000(0000) GS:ffff9c3e55884000(0000) knlGS:0000000000000000
> | CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> | CR2: 0000000000000000 CR3: 000000003e854003 CR4: 0000000000f72ef0
> | PKRU: 55555554
> | Call Trace:
> | Call Trace:
> |  <TASK>
> |  fast_req_track+0x58/0xb0 [xe]
> |  h2g_write+0x39f/0x720 [xe]
> |  __guc_ct_send_locked+0x1e4/0x10f0 [xe]
> |  guc_ct_send_locked+0xa4/0x690 [xe]
> |  guc_ct_send+0x74/0x250 [xe]
> |  xe_guc_ct_send+0x19/0x50 [xe]
> |  __register_exec_queue.isra.0+0x7e/0xa0 [xe]
> |  register_exec_queue+0x2f4/0x750 [xe]
> |  guc_exec_queue_run_job+0x4f6/0x8f0 [xe]
> |  drm_sched_run_job_work+0x1ef/0x450 [gpu_sched]
> 
> This happens also without the series and without PREEMPT_RT enabled. I
> just to a while to figure this one out on the hardware in question since
> it all just froze…
> 
> Other than that, XE seems fine.
> 
> i915.
> - drm/i915/display: Move vblank put until after critical section
>  - intel_vblank_evade() is invoked with irq-off
>    - within its callchain intel_vblank_section_enter() does spin_lock()
>      in I915. XE does nothing so it is fine.
>    - intel_crtc_scanlines_since_frame_timestamp() does a while loop
>      What is the expected/ possible worst case here and when does it happen?
The typical case is no vblank happened between those reads, and returns without looping.
The worst case is a vblank happening in the hardware during that loop. If that happens, it's retried once.
PIPE_FRMTMSTMP triggers after every completed frame update. 
You have to complete the loop exactly once every 16.7 ms at 60 fps to loop forever at exactly the wrong time and then keep hitting it.
It looks like only a specific output on a few specific platforms are using it.

>    While at it, I noticed:
>    local_irq_disable();
>    if (new_plane_state->uapi.visible) {
>            intel_plane_update_noarm(NULL, plane, crtc_state, new_plane_state);
>            if (plane->fbc)
>                   intel_fbc_dirty_rect_update_noarm(dsb, plane);
>                      if (!HAS_FBC_DIRTY_RECT(display))
>                          return;
>                      mutex_lock(&fbc->lock); <----
> 
Eek, how did that slip through CI? There should be no lock whatsoever in there since that mutex would blow up on !RT too...

>    Haven't checked the callbacks but it feels like a lot of code with
>    disabled interrupts.
> 
> - The GEM_BUG_ON(!irqs_disabled) in __i915_request_submit()/
>   __i915_request_unsubmit() case bugs/ warnings:
> | WARNING: CPU: 3 PID: 2115 at drivers/gpu/drm/i915/i915_request.c:611 __i915_request_submit+0x1db/0x1f0 [i915]
> | CPU: 3 UID: 0 PID: 2115 Comm: modprobe Not tainted 6.18.0-rc1+ #17 PREEMPT_{RT,(lazy)}
> | Hardware name: To Be Filled By O.E.M. To Be Filled By O.E.M./Z68 Pro3-M, BIOS P2.30 06/29/2012
> | RIP: 0010:__i915_request_submit+0x1db/0x1f0 [i915]
> | Call Trace:
> |  <TASK>
> |  i915_request_submit+0x29/0x40 [i915]
> |  i9xx_submit_request+0xe/0x70 [i915]
> |  submit_notify+0xc1/0x230 [i915]
> |  __i915_sw_fence_complete+0x88/0x290 [i915]
> |  __engine_park+0x2d2/0x410 [i915]
> |  ____intel_wakeref_put_last+0x25/0x90 [i915]
> |  intel_gt_resume.part.0+0x2ec/0x380 [i915]
> |  intel_gt_init+0x14d/0x3d0 [i915]
> |  i915_gem_init+0x14b/0x290 [i915]
> |  i915_driver_probe+0x74a/0xc10 [i915]
> |  i915_pci_probe+0xd7/0x190 [i915]
> |  local_pci_probe+0x41/0x80
I didn't apply the i915 specific patches that I saw in the -rt patchset, I only tested the xe display.
For i915, I did -DNOTRACE to the entire subdirectory to disable tracing on PREEMPT_RT,
but the other non-display related patches are still needed, did you apply those?

- 0003-drm-i915-Don-t-check-for-atomic-context-on-PREEMPT_R.patch
(0004 can be droped since upstream commit ed1fbee3debb ("drm/i915: Disable tracepoints for PREEMPT_RT"))
- 0005-drm-i915-gt-Use-spin_lock_irq-instead-of-local_irq_d.patch
- 0006-drm-i915-Drop-the-irqs_disabled-check.patch
- 0007-drm-i915-guc-Consider-also-RCU-depth-in-busy-loop.patch

> - The change of irq-enable is not enough:
> | BUG: sleeping function called from invalid context at kernel/locking/spinlock_rt.c:48
> | in_atomic(): 0, irqs_disabled(): 1, non_block: 0, pid: 2115, name: modprobe
> | preempt_count: 0, expected: 0
> | RCU nest depth: 0, expected: 0
> | 4 locks held by modprobe/2115:
> |  #0: ffff99b9425161a0 (&dev->mutex){....}-{4:4}, at: __driver_attach+0xaf/0x1c0
> |  #1: ffffaa224810f6c0 (crtc_ww_class_acquire){+.+.}-{0:0}, at: intel_initial_commit+0x4c/0x200 [i915]
> |  #2: ffffaa224810f6e8 (crtc_ww_class_mutex){+.+.}-{4:4}, at: intel_initial_commit+0x4c/0x200 [i915]
> |  #3: ffff99b94a6c9030 (&uncore->lock){+.+.}-{3:3}, at: gen6_write32+0x50/0x290 [i915]
> | irq event stamp: 513344
> | hardirqs last  enabled at (513343): [<ffffffff8ba8d84c>] _raw_spin_unlock_irqrestore+0x4c/0x60
> | hardirqs last disabled at (513344): [<ffffffffc1543646>] intel_pipe_update_start+0x216/0x2c0 [i915]
> | softirqs last  enabled at (512766): [<ffffffff8af045cf>] __local_bh_enable_ip+0x10f/0x170
> | softirqs last disabled at (512712): [<ffffffffc14dfb6a>] __i915_request_queue+0x3a/0x70 [i915]
> | CPU: 3 UID: 0 PID: 2115 Comm: modprobe Tainted: G        W           6.18.0-rc1+ #17 PREEMPT_{RT,(lazy)}
> | Tainted: [W]=WARN
> | Hardware name: To Be Filled By O.E.M. To Be Filled By O.E.M./Z68 Pro3-M, BIOS P2.30 06/29/2012
> | Call Trace:
> |  <TASK>
> |  dump_stack_lvl+0x68/0x90
> |  __might_resched.cold+0xf0/0x12b
> |  rt_spin_lock+0x5f/0x200
> |  gen6_write32+0x50/0x290 [i915]
> |  ilk_set_pipeconf+0x12d/0x230 [i915]
> |  ilk_color_commit_arm+0x2d/0x70 [i915]
> |  intel_update_crtc+0x15b/0x690 [i915]
> |  intel_commit_modeset_enables+0xa6/0xd0 [i915]
> |  intel_atomic_commit_tail+0xd55/0x19a0 [i915]
> |  intel_atomic_commit+0x25d/0x2a0 [i915]
> |  drm_atomic_commit+0xad/0xe0 [drm]
> |  intel_initial_commit+0x16c/0x200 [i915]
> |  intel_display_driver_probe+0x2e/0x80 [i915]
> |  i915_driver_probe+0x791/0xc10 [i915]
> |  i915_pci_probe+0xd7/0x190 [i915]
> 
> This is the intel_pipe_update_start()/ intel_pipe_update_end() part in intel_update_crtc().

From the log it seems ilk_set_pipeconf() needs an update too.
Can you check if the warnings there go away when you replace intel_de_write() with intel_de_write_fw() and the intel_de_posting_read() with intel_de_read_fw() in ilk_set_pipeconf() and the listed i915 patches from PREEMPT_RT series applied?

Kind regards,
~Maarten Lankhorst
