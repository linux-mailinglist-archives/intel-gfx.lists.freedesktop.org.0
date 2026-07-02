Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1DOTLgElRmq7KgsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 10:44:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 664B46F4EF4
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 10:44:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=T4d9LHQc;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F02DD10F24F;
	Thu,  2 Jul 2026 08:44:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52B0810F24D;
 Thu,  2 Jul 2026 08:44:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782981885; x=1814517885;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=gvsUzBvjOHZ4w3MUZo0wew+FstJeGgGG1lqlM59vzX0=;
 b=T4d9LHQcXpAFWC268xLFftK71mop9R2cCZVKmITRFE5h0D7M43x2JeJ3
 gMHwCWF+aUHeutvR5PxhnqsD6bU3dcrXZLscqzI1GhHjS2H5af3x7A/+I
 I6n0lQx0SMrS6qBYWIL4ak2n1sLcQ5qgSpMmeQ2GC1XlQFLECLT+ACL8s
 nEVI2ts+Gb2xniHJd3msW/7F7PqDsTEtuaGEzxCLh28NjIerzIze1n/S8
 FT7x8xjVv4YrHLyhp8jvKk9nD7LYaajUPkhZFboFWQlRXWKbTIKxXYdwt
 +8t0Ii3DdRC+UheJ4VU+7otjh06Ih01bYOxg5g7glK8wOjk0w07C+lGnY Q==;
X-CSE-ConnectionGUID: tTLef28nSlaxcNGwd1ZZsg==
X-CSE-MsgGUID: 2QTMuAHYQhGBJCJQOM1MDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="87407621"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="87407621"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 01:44:45 -0700
X-CSE-ConnectionGUID: TQduU/1fQQ23LP3Il82nsA==
X-CSE-MsgGUID: r18NpzonSZG+ZmlTVLOEPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="253462763"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.209])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 01:44:42 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, Maarten Lankhorst <dev@lankhorst.se>
Subject: Re: [PATCH 3/4] drm/i915/display: Use intel_de_write_fw in
 intel_pipe_fastset
In-Reply-To: <20260702080346.431508-4-dev@lankhorst.se>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260702080346.431508-1-dev@lankhorst.se>
 <20260702080346.431508-4-dev@lankhorst.se>
Date: Thu, 02 Jul 2026 11:44:39 +0300
Message-ID: <ce83da3144dca9033d78c03bcc4e9a7c9ba3f9f5@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:from_mime,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 664B46F4EF4

On Thu, 02 Jul 2026, Maarten Lankhorst <dev@lankhorst.se> wrote:
> intel_set_pipe_src_size(), hsw_set_linetime_wm(),
> intel_cpu_transcoder_set_m1_n1() and intel_set_transcoder_timings_lrr()
> are called from an atomic context on PREEMPT_RT, and should be using the
> _fw functions.

Why is intel_pipe_fastset() called in atomic context on PREEMPT_RT in
the first place?

I have no idea how to maintain this.

It is *hard* for people to figure out when to use regular or _fw
variants.

The _fw variant usage spreads all over the place with this, and you'll
end up with folks cargo culting one or the other at random. Someone
looking at, say, intel_vrr.c won't know why one or the other is being
used.

I have given similar feedback before, and the response was like, "it's
not that hard". I disagree.

I think we'll need either 1) a mechanism in non-PREEMPT_RT to flag the
issues in CI, or 2) PREEMPT_RT runs in CI. I don't think either is going
to be trivial to achieve.


BR,
Jani.


>
> This likely prevents a deadlock on i915.
>
> Again noticed when trying to disable preemption in vblank evasion:
> <3> BUG: sleeping function called from invalid context at kernel/locking/spinlock_rt.c:48
> <3> in_atomic(): 1, irqs_disabled(): 0, non_block: 0, pid: 1505, name: kms_cursor_lega
> <3> preempt_count: 1, expected: 0
> <3> RCU nest depth: 0, expected: 0
> <4> 4 locks held by kms_cursor_lega/1505:
> <4>  #0: ffffc90003c6f988 (crtc_ww_class_acquire){+.+.}-{0:0}, at: drm_mode_atomic_ioctl+0x13b/0xe90
> <4>  #1: ffffc90003c6f9b0 (crtc_ww_class_mutex){+.+.}-{3:3}, at: drm_mode_atomic_ioctl+0x13b/0xe90
> <4>  #2: ffff888135b838b8 (&intel_dp->psr.lock){+.+.}-{3:3}, at: intel_psr_lock+0xc5/0xf0 [xe]
> <4>  #3: ffff88812607bbc0 (&wl->lock){+.+.}-{2:2}, at: intel_dmc_wl_get+0x3c/0x140 [xe]
> <4> CPU: 6 UID: 0 PID: 1505 Comm: kms_cursor_lega Tainted: G     U              6.18.0-rc3-lgci-xe-xe-pw-156729v1+ #1 PREEMPT_{RT,(lazy)}
> <4> Tainted: [U]=USER
> <4> Hardware name: Intel Corporation Panther Lake Client Platform/PTL-UH LP5 T3 RVP1, BIOS PTLPFWI1.R00.3383.D02.2509240621 09/24/2025
> <4> Call Trace:
> <4>  <TASK>
> <4>  dump_stack_lvl+0xc1/0xf0
> <4>  dump_stack+0x10/0x20
> <4>  __might_resched+0x174/0x260
> <4>  rt_spin_lock+0x63/0x200
> <4>  ? intel_dmc_wl_get+0x3c/0x140 [xe]
> <4>  intel_dmc_wl_get+0x3c/0x140 [xe]
> <4>  intel_set_pipe_src_size+0x89/0xe0 [xe]
> <4>  intel_update_crtc+0x3c1/0x950 [xe]
> <4>  ? intel_pre_update_crtc+0x258/0x400 [xe]
> <4>  skl_commit_modeset_enables+0x217/0x720 [xe]
> <4>  intel_atomic_commit_tail+0xd4e/0x1af0 [xe]
> <4>  ? lock_release+0xce/0x2a0
> <4>  intel_atomic_commit+0x2e5/0x330 [xe]
> <4>  ? intel_atomic_commit+0x2e5/0x330 [xe]
> <4>  drm_atomic_commit+0xaf/0xf0
> <4>  ? __pfx___drm_printfn_info+0x10/0x10
> <4>  drm_mode_atomic_ioctl+0xbd5/0xe90
> <4>  ? lock_acquire+0xc4/0x2e0
> <4>  ? __pfx_drm_mode_atomic_ioctl+0x10/0x10
> <4>  drm_ioctl_kernel+0xb6/0x120
> <4>  drm_ioctl+0x2d7/0x5a0
> <4>  ? __pfx_drm_mode_atomic_ioctl+0x10/0x10
> <4>  ? rt_spin_unlock+0xa0/0x140
> <4>  ? __pm_runtime_resume+0x53/0x90
> <4>  xe_drm_ioctl+0x56/0x90 [xe]
> <4>  __x64_sys_ioctl+0xa8/0x110
> <4>  ? lock_acquire+0xc4/0x2e0
> <4>  x64_sys_call+0x1144/0x26a0
> <4>  do_syscall_64+0x93/0xae0
> <4>  ? lock_release+0xce/0x2a0
> <4>  ? __task_pid_nr_ns+0xd9/0x270
> <4>  ? do_syscall_64+0x1b7/0xae0
> <4>  ? find_held_lock+0x31/0x90
> <4>  ? __task_pid_nr_ns+0xcf/0x270
> <4>  ? __lock_acquire+0x43e/0x2860
> <4>  ? __task_pid_nr_ns+0xd9/0x270
> <4>  ? lock_acquire+0xc4/0x2e0
> <4>  ? find_held_lock+0x31/0x90
> <4>  ? __task_pid_nr_ns+0xcf/0x270
> <4>  ? lock_release+0xce/0x2a0
> <4>  ? __task_pid_nr_ns+0xd9/0x270
> <4>  ? do_syscall_64+0x1b7/0xae0
> <4>  ? do_syscall_64+0x1b7/0xae0
> <4>  entry_SYSCALL_64_after_hwframe+0x76/0x7e
>
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c    |  6 +--
>  drivers/gpu/drm/i915/display/intel_display.c | 42 ++++++++++----------
>  drivers/gpu/drm/i915/display/intel_vrr.c     | 18 ++++-----
>  3 files changed, 33 insertions(+), 33 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index c8e0f90af9108..079e90057284f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -329,7 +329,7 @@ void intel_cmtg_set_vrr_ctl(const struct intel_crtc_state *crtc_state)
>  	if (crtc_state->cmrr.enable)
>  		vrr_ctl |= VRR_CTL_CMRR_ENABLE;
>  
> -	intel_de_write(display, TRANS_VRR_CTL(display, cmtg_transcoder), vrr_ctl);
> +	intel_de_write_fw(display, TRANS_VRR_CTL(display, cmtg_transcoder), vrr_ctl);
>  }
>  
>  void intel_cmtg_set_m_n(const struct intel_crtc_state *crtc_state)
> @@ -341,8 +341,8 @@ void intel_cmtg_set_m_n(const struct intel_crtc_state *crtc_state)
>  	if (!intel_cmtg_is_allowed(crtc_state))
>  		return;
>  
> -	intel_de_write(display, PIPE_LINK_M1(display, cmtg_transcoder), m_n->link_m);
> -	intel_de_write(display, PIPE_LINK_N1(display, cmtg_transcoder), m_n->link_n);
> +	intel_de_write_fw(display, PIPE_LINK_M1(display, cmtg_transcoder), m_n->link_m);
> +	intel_de_write_fw(display, PIPE_LINK_N1(display, cmtg_transcoder), m_n->link_n);
>  }
>  
>  static void intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 90c05ad08f86b..04995263112ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1605,9 +1605,9 @@ static void hsw_set_linetime_wm(const struct intel_crtc_state *crtc_state)
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  
> -	intel_de_write(display, WM_LINETIME(crtc->pipe),
> -		       HSW_LINETIME(crtc_state->linetime) |
> -		       HSW_IPS_LINETIME(crtc_state->ips_linetime));
> +	intel_de_write_fw(display, WM_LINETIME(crtc->pipe),
> +			  HSW_LINETIME(crtc_state->linetime) |
> +			  HSW_IPS_LINETIME(crtc_state->ips_linetime));
>  }
>  
>  static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
> @@ -2607,14 +2607,14 @@ void intel_set_m_n(struct intel_display *display,
>  		   intel_reg_t data_m_reg, intel_reg_t data_n_reg,
>  		   intel_reg_t link_m_reg, intel_reg_t link_n_reg)
>  {
> -	intel_de_write(display, data_m_reg, TU_SIZE(m_n->tu) | m_n->data_m);
> -	intel_de_write(display, data_n_reg, m_n->data_n);
> -	intel_de_write(display, link_m_reg, m_n->link_m);
> +	intel_de_write_fw(display, data_m_reg, TU_SIZE(m_n->tu) | m_n->data_m);
> +	intel_de_write_fw(display, data_n_reg, m_n->data_n);
> +	intel_de_write_fw(display, link_m_reg, m_n->link_m);
>  	/*
>  	 * On BDW+ writing LINK_N arms the double buffered update
>  	 * of all the M/N registers, so it must be written last.
>  	 */
> -	intel_de_write(display, link_n_reg, m_n->link_n);
> +	intel_de_write_fw(display, link_n_reg, m_n->link_n);
>  }
>  
>  bool intel_cpu_transcoder_has_m2_n2(struct intel_display *display,
> @@ -2794,9 +2794,9 @@ void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc_state,
>  	}
>  
>  	if (DISPLAY_VER(display) >= 13) {
> -		intel_de_write(display,
> -			       TRANS_SET_CONTEXT_LATENCY(display, transcoder),
> -			       crtc_state->set_context_latency);
> +		intel_de_write_fw(display,
> +				  TRANS_SET_CONTEXT_LATENCY(display, transcoder),
> +				  crtc_state->set_context_latency);
>  
>  		/*
>  		 * VBLANK_START not used by hw, just clear it
> @@ -2812,9 +2812,9 @@ void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc_state,
>  	 * The hardware actually ignores TRANS_VBLANK.VBLANK_END in DP mode.
>  	 * But let's write it anyway to keep the state checker happy.
>  	 */
> -	intel_de_write(display, TRANS_VBLANK(display, transcoder),
> -		       VBLANK_START(crtc_vblank_start - 1) |
> -		       VBLANK_END(crtc_vblank_end - 1));
> +	intel_de_write_fw(display, TRANS_VBLANK(display, transcoder),
> +		          VBLANK_START(crtc_vblank_start - 1) |
> +		          VBLANK_END(crtc_vblank_end - 1));
>  
>  	/*
>  	 * DP doesn't have vertical sync, so TRANS_VSYNC only affects
> @@ -2822,17 +2822,17 @@ void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc_state,
>  	 * using the VRR timing generator!). Thus updating TRANS_VSYNC
>  	 * here seems fine even if it isn't double buffered.
>  	 */
> -	intel_de_write(display, TRANS_VSYNC(display, transcoder),
> -		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
> -		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
> +	intel_de_write_fw(display, TRANS_VSYNC(display, transcoder),
> +			  VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
> +			  VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
>  
>  	/*
>  	 * The double buffer latch point for TRANS_VTOTAL
>  	 * is the transcoder's undelayed vblank.
>  	 */
> -	intel_de_write(display, TRANS_VTOTAL(display, transcoder),
> -		       VACTIVE(crtc_vdisplay - 1) |
> -		       VTOTAL(crtc_vtotal - 1));
> +	intel_de_write_fw(display, TRANS_VTOTAL(display, transcoder),
> +			  VACTIVE(crtc_vdisplay - 1) |
> +			  VTOTAL(crtc_vtotal - 1));
>  }
>  
>  static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state)
> @@ -2846,8 +2846,8 @@ static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state)
>  	/* pipesrc controls the size that is scaled from, which should
>  	 * always be the user's requested size.
>  	 */
> -	intel_de_write(display, PIPESRC(display, pipe),
> -		       PIPESRC_WIDTH(width - 1) | PIPESRC_HEIGHT(height - 1));
> +	intel_de_write_fw(display, PIPESRC(display, pipe),
> +			  PIPESRC_WIDTH(width - 1) | PIPESRC_HEIGHT(height - 1));
>  }
>  
>  static bool intel_pipe_is_interlaced(const struct intel_crtc_state *crtc_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index bffbdee76ee1c..5b09a17185b9c 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -332,12 +332,12 @@ void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state,
>  	if (!intel_vrr_possible(crtc_state))
>  		return;
>  
> -	intel_de_write(display, TRANS_VRR_VMIN(display, transcoder),
> -		       intel_vrr_fixed_rr_hw_vmin(crtc_state) - 1);
> -	intel_de_write(display, TRANS_VRR_VMAX(display, transcoder),
> -		       intel_vrr_fixed_rr_hw_vmax(crtc_state) - 1);
> -	intel_de_write(display, TRANS_VRR_FLIPLINE(display, transcoder),
> -		       intel_vrr_fixed_rr_hw_flipline(crtc_state) - 1);
> +	intel_de_write_fw(display, TRANS_VRR_VMIN(display, transcoder),
> +			  intel_vrr_fixed_rr_hw_vmin(crtc_state) - 1);
> +	intel_de_write_fw(display, TRANS_VRR_VMAX(display, transcoder),
> +			  intel_vrr_fixed_rr_hw_vmax(crtc_state) - 1);
> +	intel_de_write_fw(display, TRANS_VRR_FLIPLINE(display, transcoder),
> +			  intel_vrr_fixed_rr_hw_flipline(crtc_state) - 1);
>  }
>  
>  static
> @@ -923,8 +923,8 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  	u32 vrr_ctl;
>  
> -	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
> -		       trans_vrr_push(crtc_state, false));
> +	intel_de_write_fw(display, TRANS_PUSH(display, cpu_transcoder),
> +			  trans_vrr_push(crtc_state, false));
>  
>  	vrr_ctl = VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state);
>  
> @@ -936,7 +936,7 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
>  	if (cmrr_enable)
>  		vrr_ctl |= VRR_CTL_CMRR_ENABLE;
>  
> -	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
> +	intel_de_write_fw(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
>  
>  	intel_cmtg_set_vrr_ctl(crtc_state);
>  }

-- 
Jani Nikula, Intel
