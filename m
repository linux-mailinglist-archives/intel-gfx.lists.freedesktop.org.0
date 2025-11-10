Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A535CC48835
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 19:17:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E0FC10E2DC;
	Mon, 10 Nov 2025 18:17:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="lOwfKWge";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 119E610E2DC;
 Mon, 10 Nov 2025 18:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1762798667;
 bh=oFz2gzoe2az/0Qdx99AC0nZdI4dLxtOLJGbPzO6gOoI=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=lOwfKWgePb5GttKQGunqx4sJ9Vqmd3L49+8OdsJmPB8qnZAoebIIVyYGb3WrBPGQ2
 2FfGpWZ9/1l2zIZx/zhju0GbeeBi2O+NcYIdyNElooNcl4FbomXPkQZABj5RfNFFVx
 X+0lPaSOZM78DtG6UYv6+mc9yIhnnfMHuZnGFXc8oSbZuC6h6uEwLjOwGPqIaNyawa
 umOvg97iK0i2QE5iTvGQHKr3xili4a8NM1wgkQ0AcR8IXAfbNy/019dD1iV2dqQOcU
 eQ+dX7rnYJNY893HACNQIgH7Ysio76KTLfiS8Kp4wLbnXn/2uFOaKV5ZasrqK2APfY
 BCz2KiKHK3/3A==
Message-ID: <7a370923-d430-4f3a-94b2-1749b452facf@lankhorst.se>
Date: Mon, 10 Nov 2025 19:17:46 +0100
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
 <32bbb93a-3606-4488-ac3a-3dcd1fd38304@lankhorst.se>
 <20251110160958._fKhNf8i@linutronix.de>
Content-Language: en-US
From: Maarten Lankhorst <dev@lankhorst.se>
In-Reply-To: <20251110160958._fKhNf8i@linutronix.de>
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

Den 2025-11-10 kl. 17:09, skrev Sebastian Andrzej Siewior:
> On 2025-11-05 21:42:53 [+0100], Maarten Lankhorst wrote:
>> Hey,
> Hi,
> 
> sorry for the long break. I somehow marked this as read by accident.
> Today I just checked if there was some progress and noticed that there
> was indeed a reply…
> 
>> Den 2025-11-05 kl. 14:47, skrev Sebastian Andrzej Siewior:
>>> i915.
>>> - drm/i915/display: Move vblank put until after critical section
>>>  - intel_vblank_evade() is invoked with irq-off
>>>    - within its callchain intel_vblank_section_enter() does spin_lock()
>>>      in I915. XE does nothing so it is fine.
>>>    - intel_crtc_scanlines_since_frame_timestamp() does a while loop
>>>      What is the expected/ possible worst case here and when does it happen?
>> The typical case is no vblank happened between those reads, and returns without looping.
>> The worst case is a vblank happening in the hardware during that loop. If that happens, it's retried once.
>> PIPE_FRMTMSTMP triggers after every completed frame update. 
>> You have to complete the loop exactly once every 16.7 ms at 60 fps to loop forever at exactly the wrong time and then keep hitting it.
>> It looks like only a specific output on a few specific platforms are using it.
> 
> I see. I am just worried that this loops sometimes too often or at the
> wrong time. But you are saying that this does not happen?
> 
>>>    While at it, I noticed:
>>>    local_irq_disable();
>>>    if (new_plane_state->uapi.visible) {
>>>            intel_plane_update_noarm(NULL, plane, crtc_state, new_plane_state);
>>>            if (plane->fbc)
>>>                   intel_fbc_dirty_rect_update_noarm(dsb, plane);
>>>                      if (!HAS_FBC_DIRTY_RECT(display))
>>>                          return;
>>>                      mutex_lock(&fbc->lock); <----
>>>
>> Eek, how did that slip through CI? There should be no lock whatsoever
>> in there since that mutex would blow up on !RT too...
> 
> yeah ;) Well I can't tell if this is magically somehow excluded but
> based on review in looks possible.
> 
>>>    Haven't checked the callbacks but it feels like a lot of code with
>>>    disabled interrupts.
>>>
>>> - The GEM_BUG_ON(!irqs_disabled) in __i915_request_submit()/
>>>   __i915_request_unsubmit() case bugs/ warnings:
>>> | WARNING: CPU: 3 PID: 2115 at drivers/gpu/drm/i915/i915_request.c:611 __i915_request_submit+0x1db/0x1f0 [i915]
>>> | CPU: 3 UID: 0 PID: 2115 Comm: modprobe Not tainted 6.18.0-rc1+ #17 PREEMPT_{RT,(lazy)}
>>> | Hardware name: To Be Filled By O.E.M. To Be Filled By O.E.M./Z68 Pro3-M, BIOS P2.30 06/29/2012
>>> | RIP: 0010:__i915_request_submit+0x1db/0x1f0 [i915]
>>> | Call Trace:
>>> |  <TASK>
>>> |  i915_request_submit+0x29/0x40 [i915]
>>> |  i9xx_submit_request+0xe/0x70 [i915]
>>> |  submit_notify+0xc1/0x230 [i915]
>>> |  __i915_sw_fence_complete+0x88/0x290 [i915]
>>> |  __engine_park+0x2d2/0x410 [i915]
>>> |  ____intel_wakeref_put_last+0x25/0x90 [i915]
>>> |  intel_gt_resume.part.0+0x2ec/0x380 [i915]
>>> |  intel_gt_init+0x14d/0x3d0 [i915]
>>> |  i915_gem_init+0x14b/0x290 [i915]
>>> |  i915_driver_probe+0x74a/0xc10 [i915]
>>> |  i915_pci_probe+0xd7/0x190 [i915]
>>> |  local_pci_probe+0x41/0x80
>> I didn't apply the i915 specific patches that I saw in the -rt patchset, I only tested the xe display.
>> For i915, I did -DNOTRACE to the entire subdirectory to disable tracing on PREEMPT_RT,
>> but the other non-display related patches are still needed, did you apply those?
> 
> Nope, I did just test what you provided. Your cover letter suggested
> that it might be enough for i915 or I misunderstood.
> 
> I don't remember seeing any events for i915. So this -DNOTRACE must be
> part of the existing patches somewhere…
> 
>> - 0003-drm-i915-Don-t-check-for-atomic-context-on-PREEMPT_R.patch
>> (0004 can be droped since upstream commit ed1fbee3debb ("drm/i915: Disable tracepoints for PREEMPT_RT"))
>> - 0005-drm-i915-gt-Use-spin_lock_irq-instead-of-local_irq_d.patch
>> - 0006-drm-i915-Drop-the-irqs_disabled-check.patch
>> - 0007-drm-i915-guc-Consider-also-RCU-depth-in-busy-loop.patch
>>
>>> - The change of irq-enable is not enough:
>>> | BUG: sleeping function called from invalid context at kernel/locking/spinlock_rt.c:48
>>> | in_atomic(): 0, irqs_disabled(): 1, non_block: 0, pid: 2115, name: modprobe
>>> | preempt_count: 0, expected: 0
>>> | RCU nest depth: 0, expected: 0
>>> | 4 locks held by modprobe/2115:
>>> |  #0: ffff99b9425161a0 (&dev->mutex){....}-{4:4}, at: __driver_attach+0xaf/0x1c0
>>> |  #1: ffffaa224810f6c0 (crtc_ww_class_acquire){+.+.}-{0:0}, at: intel_initial_commit+0x4c/0x200 [i915]
>>> |  #2: ffffaa224810f6e8 (crtc_ww_class_mutex){+.+.}-{4:4}, at: intel_initial_commit+0x4c/0x200 [i915]
>>> |  #3: ffff99b94a6c9030 (&uncore->lock){+.+.}-{3:3}, at: gen6_write32+0x50/0x290 [i915]
>>> | irq event stamp: 513344
>>> | hardirqs last  enabled at (513343): [<ffffffff8ba8d84c>] _raw_spin_unlock_irqrestore+0x4c/0x60
>>> | hardirqs last disabled at (513344): [<ffffffffc1543646>] intel_pipe_update_start+0x216/0x2c0 [i915]
>>> | softirqs last  enabled at (512766): [<ffffffff8af045cf>] __local_bh_enable_ip+0x10f/0x170
>>> | softirqs last disabled at (512712): [<ffffffffc14dfb6a>] __i915_request_queue+0x3a/0x70 [i915]
>>> | CPU: 3 UID: 0 PID: 2115 Comm: modprobe Tainted: G        W           6.18.0-rc1+ #17 PREEMPT_{RT,(lazy)}
>>> | Tainted: [W]=WARN
>>> | Hardware name: To Be Filled By O.E.M. To Be Filled By O.E.M./Z68 Pro3-M, BIOS P2.30 06/29/2012
>>> | Call Trace:
>>> |  <TASK>
>>> |  dump_stack_lvl+0x68/0x90
>>> |  __might_resched.cold+0xf0/0x12b
>>> |  rt_spin_lock+0x5f/0x200
>>> |  gen6_write32+0x50/0x290 [i915]
>>> |  ilk_set_pipeconf+0x12d/0x230 [i915]
>>> |  ilk_color_commit_arm+0x2d/0x70 [i915]
>>> |  intel_update_crtc+0x15b/0x690 [i915]
>>> |  intel_commit_modeset_enables+0xa6/0xd0 [i915]
>>> |  intel_atomic_commit_tail+0xd55/0x19a0 [i915]
>>> |  intel_atomic_commit+0x25d/0x2a0 [i915]
>>> |  drm_atomic_commit+0xad/0xe0 [drm]
>>> |  intel_initial_commit+0x16c/0x200 [i915]
>>> |  intel_display_driver_probe+0x2e/0x80 [i915]
>>> |  i915_driver_probe+0x791/0xc10 [i915]
>>> |  i915_pci_probe+0xd7/0x190 [i915]
>>>
>>> This is the intel_pipe_update_start()/ intel_pipe_update_end() part in intel_update_crtc().
>>
>> From the log it seems ilk_set_pipeconf() needs an update too.
>> Can you check if the warnings there go away when you replace
>> intel_de_write() with intel_de_write_fw() and the
>> intel_de_posting_read() with intel_de_read_fw() in ilk_set_pipeconf()
>> and the listed i915 patches from PREEMPT_RT series applied?
> 
> I added the following patches
> - 0005-drm-i915-gt-Use-spin_lock_irq-instead-of-local_irq_d.patch
> - 0006-drm-i915-Drop-the-irqs_disabled-check.patch
> - 0007-drm-i915-guc-Consider-also-RCU-depth-in-busy-loop.patch
> - drm-i915-Consider-RCU-read-section-as-atomic.patch
> 
> from https://git.kernel.org/pub/scm/linux/kernel/git/rt/linux-rt-devel.git/tree/patches?h=v6.18-rc4-rt3-patches
> 
> plus the diff below (which is mostly
> 0002-drm-i915-Don-t-disable-interrupts-on-PREEMPT_RT-duri.patch that
> clashes now with one of the earlier patches). This looks without any
> errors/ warnings.
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index ac433023636c3..3d4537c7ce672 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3169,8 +3169,8 @@ void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state)
>  	val |= TRANSCONF_FRAME_START_DELAY(crtc_state->framestart_delay - 1);
>  	val |= TRANSCONF_MSA_TIMING_DELAY(crtc_state->msa_timing_delay);
>  
> -	intel_de_write(display, TRANSCONF(display, cpu_transcoder), val);
> -	intel_de_posting_read(display, TRANSCONF(display, cpu_transcoder));
> +	intel_de_write_fw(display, TRANSCONF(display, cpu_transcoder), val);
> +	intel_de_read_fw(display, TRANSCONF(display, cpu_transcoder));
>  }
>  
>  static void hsw_set_transconf(const struct intel_crtc_state *crtc_state)
> diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
> index 5e939004b6463..40a9234e6e5dc 100644
> --- a/drivers/gpu/drm/i915/Kconfig
> +++ b/drivers/gpu/drm/i915/Kconfig
> @@ -3,7 +3,6 @@ config DRM_I915
>  	tristate "Intel 8xx/9xx/G3x/G4x/HD Graphics"
>  	depends on DRM
>  	depends on X86 && PCI
> -	depends on !PREEMPT_RT
>  	select INTEL_GTT if X86
>  	select INTERVAL_TREE
>  	# we need shmfs for the swappable backing store, and in particular

I would like to recommend dropping the patch below. The hardware doesn't like being
programmed during vblank time, and may lock up or show glitches on the screen,
especially at older machines.

That's why the whole complicated preparations exist, to be able to complete
programming the hardware before the vblank.

I created my series to be able to run that the timing sensitive parts safely without
any jitter from locking in between.

I tried running the following series through CI in response:
https://patchwork.freedesktop.org/series/157258/ 

After looking at the results and investigating more closely, I think the FBC warning
you mentioned is a false positive.

The code either runs in intel_pre_plane_update() when programming the hardware directly,
or it gets added to the list of mmio's programmed by the hardware, without the
vblank evasion mode active.

Still I would like to clean it up, but it's not as urgent as it was.

> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index ef429b81a5228..d69b3763380c3 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -570,7 +570,8 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
>  	 */
>  	intel_psr_wait_for_idle_locked(new_crtc_state);
>  
> -	local_irq_disable();
> +	if (!IS_ENABLED(CONFIG_PREEMPT_RT))
> +		local_irq_disable();
>  
>  	crtc->debug.min_vbl = evade.min;
>  	crtc->debug.max_vbl = evade.max;
> @@ -588,7 +589,8 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
>  	return;
>  
>  irq_disable:
> -	local_irq_disable();
> +	if (!IS_ENABLED(CONFIG_PREEMPT_RT))
> +		local_irq_disable();
>  }
>  
>  #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_VBLANK_EVADE)
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> index 6b3bc8d94e51a..d9f1e7e72f500 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -922,11 +922,13 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>  		 */
>  		intel_psr_wait_for_idle_locked(crtc_state);
>  
> -		local_irq_disable();
> +		if (!IS_ENABLED(CONFIG_PREEMPT_RT))
> +			local_irq_disable();
>  
>  		intel_vblank_evade(&evade);
>  	} else {
> -		local_irq_disable();
> +		if (!IS_ENABLED(CONFIG_PREEMPT_RT))
> +			local_irq_disable();
>  	}
>  
>  	if (new_plane_state->uapi.visible) {
> @@ -936,7 +938,8 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>  		intel_plane_disable_arm(NULL, plane, crtc_state);
>  	}
>  
> -	local_irq_enable();
> +	if (!IS_ENABLED(CONFIG_PREEMPT_RT))
> +		local_irq_enable();
>  
>  	intel_psr_unlock(crtc_state);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index a7f9195215f30..ad62e32da06a3 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -750,7 +750,8 @@ int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
>  		return 0;
>  
>  	while (!vblank_evadable(evade, &scanline)) {
> -		local_irq_enable();
> +		if (!IS_ENABLED(CONFIG_PREEMPT_RT))
> +			local_irq_enable();
>  
>  		DEFINE_WAIT(wait);
>  		while (!vblank_evadable(evade, &scanline) && timeout > 0) {
> @@ -759,7 +760,8 @@ int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
>  		}
>  		finish_wait(wq, &wait);
>  
> -		local_irq_disable();
> +		if (!IS_ENABLED(CONFIG_PREEMPT_RT))
> +			local_irq_disable();
>  
>  		if (!timeout) {
>  			drm_dbg_kms(display->drm,
> 
> 
> Sebastian

Kind regards,
~Maarten Lankhorst

