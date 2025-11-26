Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 430BFC8BA70
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 20:43:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC9D910E68F;
	Wed, 26 Nov 2025 19:43:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E8ZEHydB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99CF810E68C;
 Wed, 26 Nov 2025 19:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764186179; x=1795722179;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=hwIei+8qOwbbyN76iBkt+855ikbh/H0V0WBilN4ikxs=;
 b=E8ZEHydBrmmoYRrwHUKeSdYC0qBUpQQp5zZgTMJ8Opd+0G1yzshZo9BU
 XLJgZYbGHmUJ2aNkaAJPhH48Fba/DSFI/p9gbJiTDcNwVJ22z8tZlyaVz
 aRt1p/dpglN7k/eq3Gz5D+yoLHn1rHsIp3CY5OoX0suGLqWJahvAy83eY
 B/6ivjHhibN8JVPguDGCaELHTroP79AR7fLkaWo+iZMceJpcUHfOmk/FD
 58RDYzwW1AYbo9E5ILxwMi64Tdgtq5aCEkIJe6tmS6RWCXbO2cie6Xehb
 BgqsNZA8M4BdTnn1YigWdhQmrrYt8io7KlgTDSnDdQlGMc0A9Jz1VyBwL A==;
X-CSE-ConnectionGUID: 50zeeK+PSSi5kd491KUFBg==
X-CSE-MsgGUID: qMrRzz+kRk2x9EA5OF63Lw==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="83622927"
X-IronPort-AV: E=Sophos;i="6.20,229,1758610800"; d="scan'208";a="83622927"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 11:42:59 -0800
X-CSE-ConnectionGUID: JptYqFv2SFuZr2RfOyK4vA==
X-CSE-MsgGUID: /+peG8fHTMSyibRSinUt2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,229,1758610800"; d="scan'208";a="197524900"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.205])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 11:42:55 -0800
Date: Wed, 26 Nov 2025 21:42:52 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Cc: Maarten Lankhorst <dev@lankhorst.se>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "linux-rt-devel@lists.linux.dev" <linux-rt-devel@lists.linux.dev>,
 Mario Kleiner <mario.kleiner.de@gmail.com>,
 Mike Galbraith <umgwanakikbuti@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Clark Williams <clrkwllms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [PATCH v2 2/7] drm/i915/display: Use intel_de_write_fw in
 intel_pipe_fastset
Message-ID: <aSdYPKUJgbe84G1M@intel.com>
References: <20251104083634.670753-1-dev@lankhorst.se>
 <20251104083634.670753-3-dev@lankhorst.se>
 <DM4PR11MB63609A43C9B11091A5FB41EFF4DEA@DM4PR11MB6360.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM4PR11MB63609A43C9B11091A5FB41EFF4DEA@DM4PR11MB6360.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Wed, Nov 26, 2025 at 07:19:47PM +0000, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Maarten
> > Lankhorst
> > Sent: Tuesday, November 4, 2025 2:06 PM
> > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Cc: linux-rt-devel@lists.linux.dev; Maarten Lankhorst <dev@lankhorst.se>; Mario
> > Kleiner <mario.kleiner.de@gmail.com>; Mike Galbraith
> > <umgwanakikbuti@gmail.com>; Thomas Gleixner <tglx@linutronix.de>; Sebastian
> > Andrzej Siewior <bigeasy@linutronix.de>; Clark Williams
> > <clrkwllms@kernel.org>; Steven Rostedt <rostedt@goodmis.org>
> > Subject: [PATCH v2 2/7] drm/i915/display: Use intel_de_write_fw in
> > intel_pipe_fastset
> > 
> > intel_set_pipe_src_size(), hsw_set_linetime_wm(),
> > intel_cpu_transcoder_set_m1_n1() and intel_set_transcoder_timings_lrr()
> > are called from an atomic context on PREEMPT_RT, and should be using the _fw
> > functions.
> 
> This could be ok but we need to be sure that all are called with power domains up.
> I think would be safe to keep this under RT check so that we don't end up breaking any
> generic non RT usecase.

When removing the locks from register accesses one needs to consider
what platforms the code runs on, what other register are on the same
cacheline, and whether they can be accessed in parallel. If there is
something there then we may not be able to remove the locks.

That's assuming the "system hangs when same cacheline is accessed from
multiple cpus" issue is real for display registers, and I'm actually
not 100% it is. But we'd need to run some tests on the affected systems
(~ivb/hsw) to get any kind of confidence here. IIRC some old
intel_gpu_top thhat directly poked the registers was very good at
hitting it on hsw at least, so that would be a decent starting point.

Anyways, I'm going to be replacing the uncore lock with a display
specific lock soonish, and I suppose I can just make that a raw
spinlock to appease RT.

> 
> @Ville Syrjälä Any thoughts on this ?
> 
> Regards,
> Uma Shankar
> 
> > This likely prevents a deadlock on i915.
> > 
> > Again noticed when trying to disable preemption in vblank evasion:
> > <3> BUG: sleeping function called from invalid context at
> > kernel/locking/spinlock_rt.c:48 <3> in_atomic(): 1, irqs_disabled(): 0, non_block:
> > 0, pid: 1505, name: kms_cursor_lega <3> preempt_count: 1, expected: 0 <3>
> > RCU nest depth: 0, expected: 0 <4> 4 locks held by kms_cursor_lega/1505:
> > <4>  #0: ffffc90003c6f988 (crtc_ww_class_acquire){+.+.}-{0:0}, at:
> > drm_mode_atomic_ioctl+0x13b/0xe90 <4>  #1: ffffc90003c6f9b0
> > (crtc_ww_class_mutex){+.+.}-{3:3}, at: drm_mode_atomic_ioctl+0x13b/0xe90 <4>
> > #2: ffff888135b838b8 (&intel_dp->psr.lock){+.+.}-{3:3}, at:
> > intel_psr_lock+0xc5/0xf0 [xe] <4>  #3: ffff88812607bbc0 (&wl->lock){+.+.}-{2:2},
> > at: intel_dmc_wl_get+0x3c/0x140 [xe]
> > <4> CPU: 6 UID: 0 PID: 1505 Comm: kms_cursor_lega Tainted: G     U
> > 6.18.0-rc3-lgci-xe-xe-pw-156729v1+ #1 PREEMPT_{RT,(lazy)}
> > <4> Tainted: [U]=USER
> > <4> Hardware name: Intel Corporation Panther Lake Client Platform/PTL-UH LP5
> > T3 RVP1, BIOS PTLPFWI1.R00.3383.D02.2509240621 09/24/2025 <4> Call Trace:
> > <4>  <TASK>
> > <4>  dump_stack_lvl+0xc1/0xf0
> > <4>  dump_stack+0x10/0x20
> > <4>  __might_resched+0x174/0x260
> > <4>  rt_spin_lock+0x63/0x200
> > <4>  ? intel_dmc_wl_get+0x3c/0x140 [xe]
> > <4>  intel_dmc_wl_get+0x3c/0x140 [xe]
> > <4>  intel_set_pipe_src_size+0x89/0xe0 [xe] <4>  intel_update_crtc+0x3c1/0x950
> > [xe] <4>  ? intel_pre_update_crtc+0x258/0x400 [xe] <4>
> > skl_commit_modeset_enables+0x217/0x720 [xe] <4>
> > intel_atomic_commit_tail+0xd4e/0x1af0 [xe] <4>  ? lock_release+0xce/0x2a0 <4>
> > intel_atomic_commit+0x2e5/0x330 [xe] <4>  ? intel_atomic_commit+0x2e5/0x330
> > [xe] <4>  drm_atomic_commit+0xaf/0xf0 <4>  ?
> > __pfx___drm_printfn_info+0x10/0x10
> > <4>  drm_mode_atomic_ioctl+0xbd5/0xe90
> > <4>  ? lock_acquire+0xc4/0x2e0
> > <4>  ? __pfx_drm_mode_atomic_ioctl+0x10/0x10
> > <4>  drm_ioctl_kernel+0xb6/0x120
> > <4>  drm_ioctl+0x2d7/0x5a0
> > <4>  ? __pfx_drm_mode_atomic_ioctl+0x10/0x10
> > <4>  ? rt_spin_unlock+0xa0/0x140
> > <4>  ? __pm_runtime_resume+0x53/0x90
> > <4>  xe_drm_ioctl+0x56/0x90 [xe]
> > <4>  __x64_sys_ioctl+0xa8/0x110
> > <4>  ? lock_acquire+0xc4/0x2e0
> > <4>  x64_sys_call+0x1144/0x26a0
> > <4>  do_syscall_64+0x93/0xae0
> > <4>  ? lock_release+0xce/0x2a0
> > <4>  ? __task_pid_nr_ns+0xd9/0x270
> > <4>  ? do_syscall_64+0x1b7/0xae0
> > <4>  ? find_held_lock+0x31/0x90
> > <4>  ? __task_pid_nr_ns+0xcf/0x270
> > <4>  ? __lock_acquire+0x43e/0x2860
> > <4>  ? __task_pid_nr_ns+0xd9/0x270
> > <4>  ? lock_acquire+0xc4/0x2e0
> > <4>  ? find_held_lock+0x31/0x90
> > <4>  ? __task_pid_nr_ns+0xcf/0x270
> > <4>  ? lock_release+0xce/0x2a0
> > <4>  ? __task_pid_nr_ns+0xd9/0x270
> > <4>  ? do_syscall_64+0x1b7/0xae0
> > <4>  ? do_syscall_64+0x1b7/0xae0
> > <4>  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> > 
> > Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 36 ++++++++++----------
> >  drivers/gpu/drm/i915/display/intel_vrr.c     | 16 ++++-----
> >  2 files changed, 26 insertions(+), 26 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 42ec787986666..1bff1148fe9d7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -1573,9 +1573,9 @@ static void hsw_set_linetime_wm(const struct
> > intel_crtc_state *crtc_state)
> >  	struct intel_display *display = to_intel_display(crtc_state);
> >  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > 
> > -	intel_de_write(display, WM_LINETIME(crtc->pipe),
> > -		       HSW_LINETIME(crtc_state->linetime) |
> > -		       HSW_IPS_LINETIME(crtc_state->ips_linetime));
> > +	intel_de_write_fw(display, WM_LINETIME(crtc->pipe),
> > +			  HSW_LINETIME(crtc_state->linetime) |
> > +			  HSW_IPS_LINETIME(crtc_state->ips_linetime));
> >  }
> > 
> >  static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
> > @@ -2543,14 +2543,14 @@ void intel_set_m_n(struct intel_display *display,
> >  		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
> >  		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)  {
> > -	intel_de_write(display, data_m_reg, TU_SIZE(m_n->tu) | m_n->data_m);
> > -	intel_de_write(display, data_n_reg, m_n->data_n);
> > -	intel_de_write(display, link_m_reg, m_n->link_m);
> > +	intel_de_write_fw(display, data_m_reg, TU_SIZE(m_n->tu) | m_n-
> > >data_m);
> > +	intel_de_write_fw(display, data_n_reg, m_n->data_n);
> > +	intel_de_write_fw(display, link_m_reg, m_n->link_m);
> >  	/*
> >  	 * On BDW+ writing LINK_N arms the double buffered update
> >  	 * of all the M/N registers, so it must be written last.
> >  	 */
> > -	intel_de_write(display, link_n_reg, m_n->link_n);
> > +	intel_de_write_fw(display, link_n_reg, m_n->link_n);
> >  }
> > 
> >  bool intel_cpu_transcoder_has_m2_n2(struct intel_display *display, @@ -2737,9
> > +2737,9 @@ static void intel_set_transcoder_timings_lrr(const struct
> > intel_crtc_state *crtc
> >  	}
> > 
> >  	if (DISPLAY_VER(display) >= 13) {
> > -		intel_de_write(display,
> > -			       TRANS_SET_CONTEXT_LATENCY(display,
> > cpu_transcoder),
> > -			       crtc_state->set_context_latency);
> > +		intel_de_write_fw(display,
> > +				  TRANS_SET_CONTEXT_LATENCY(display,
> > cpu_transcoder),
> > +				  crtc_state->set_context_latency);
> > 
> >  		/*
> >  		 * VBLANK_START not used by hw, just clear it @@ -2755,9
> > +2755,9 @@ static void intel_set_transcoder_timings_lrr(const struct
> > intel_crtc_state *crtc
> >  	 * The hardware actually ignores TRANS_VBLANK.VBLANK_END in DP
> > mode.
> >  	 * But let's write it anyway to keep the state checker happy.
> >  	 */
> > -	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
> > -		       VBLANK_START(crtc_vblank_start - 1) |
> > -		       VBLANK_END(crtc_vblank_end - 1));
> > +	intel_de_write_fw(display, TRANS_VBLANK(display, cpu_transcoder),
> > +			  VBLANK_START(crtc_vblank_start - 1) |
> > +			  VBLANK_END(crtc_vblank_end - 1));
> >  	/*
> >  	 * For platforms that always use VRR Timing Generator, the
> > VTOTAL.Vtotal
> >  	 * bits are not required. Since the support for these bits is going to @@ -
> > 2771,9 +2771,9 @@ static void intel_set_transcoder_timings_lrr(const struct
> > intel_crtc_state *crtc
> >  	 * The double buffer latch point for TRANS_VTOTAL
> >  	 * is the transcoder's undelayed vblank.
> >  	 */
> > -	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
> > -		       VACTIVE(crtc_vdisplay - 1) |
> > -		       VTOTAL(crtc_vtotal - 1));
> > +	intel_de_write_fw(display, TRANS_VTOTAL(display, cpu_transcoder),
> > +			  VACTIVE(crtc_vdisplay - 1) |
> > +			  VTOTAL(crtc_vtotal - 1));
> > 
> >  	intel_vrr_set_fixed_rr_timings(crtc_state);
> >  	intel_vrr_transcoder_enable(crtc_state);
> > @@ -2790,8 +2790,8 @@ static void intel_set_pipe_src_size(const struct
> > intel_crtc_state *crtc_state)
> >  	/* pipesrc controls the size that is scaled from, which should
> >  	 * always be the user's requested size.
> >  	 */
> > -	intel_de_write(display, PIPESRC(display, pipe),
> > -		       PIPESRC_WIDTH(width - 1) | PIPESRC_HEIGHT(height -
> > 1));
> > +	intel_de_write_fw(display, PIPESRC(display, pipe),
> > +			  PIPESRC_WIDTH(width - 1) | PIPESRC_HEIGHT(height
> > - 1));
> >  }
> > 
> >  static bool intel_pipe_is_interlaced(const struct intel_crtc_state *crtc_state) diff --
> > git a/drivers/gpu/drm/i915/display/intel_vrr.c
> > b/drivers/gpu/drm/i915/display/intel_vrr.c
> > index 00cbc126fb366..2e19673697fa4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > @@ -300,12 +300,12 @@ void intel_vrr_set_fixed_rr_timings(const struct
> > intel_crtc_state *crtc_state)
> >  	if (!intel_vrr_possible(crtc_state))
> >  		return;
> > 
> > -	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
> > -		       intel_vrr_fixed_rr_hw_vmin(crtc_state) - 1);
> > -	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
> > -		       intel_vrr_fixed_rr_hw_vmax(crtc_state) - 1);
> > -	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
> > -		       intel_vrr_fixed_rr_hw_flipline(crtc_state) - 1);
> > +	intel_de_write_fw(display, TRANS_VRR_VMIN(display, cpu_transcoder),
> > +			  intel_vrr_fixed_rr_hw_vmin(crtc_state) - 1);
> > +	intel_de_write_fw(display, TRANS_VRR_VMAX(display, cpu_transcoder),
> > +			  intel_vrr_fixed_rr_hw_vmax(crtc_state) - 1);
> > +	intel_de_write_fw(display, TRANS_VRR_FLIPLINE(display,
> > cpu_transcoder),
> > +			  intel_vrr_fixed_rr_hw_flipline(crtc_state) - 1);
> >  }
> > 
> >  static
> > @@ -693,7 +693,7 @@ static void intel_vrr_tg_enable(const struct
> > intel_crtc_state *crtc_state,
> >  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> >  	u32 vrr_ctl;
> > 
> > -	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
> > TRANS_PUSH_EN);
> > +	intel_de_write_fw(display, TRANS_PUSH(display, cpu_transcoder),
> > +TRANS_PUSH_EN);
> > 
> >  	vrr_ctl = VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state);
> > 
> > @@ -705,7 +705,7 @@ static void intel_vrr_tg_enable(const struct
> > intel_crtc_state *crtc_state,
> >  	if (cmrr_enable)
> >  		vrr_ctl |= VRR_CTL_CMRR_ENABLE;
> > 
> > -	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> > vrr_ctl);
> > +	intel_de_write_fw(display, TRANS_VRR_CTL(display, cpu_transcoder),
> > +vrr_ctl);
> >  }
> > 
> >  static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc_state)
> > --
> > 2.51.0

-- 
Ville Syrjälä
Intel
