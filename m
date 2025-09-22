Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C894B8FE33
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 12:00:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE17A10E3FE;
	Mon, 22 Sep 2025 10:00:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cj1EAosb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CF1D10E3FE;
 Mon, 22 Sep 2025 10:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758535232; x=1790071232;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=tA42r3V6dNbJPElvTIvtK2uaydS7h8UhxFVxcVf/Ny8=;
 b=cj1EAosbqFXzyR9VBufUtODEZ3G6/CU0uKO4++Z22hln/4ug3CetzgTb
 2RJR2+vmbXMpfAG9Q3rBnJ59R6znN6BnV5aCgiAsW9mKoko5NkzfpJmVp
 V3x6/DbHog8IItjEphPF8S+fjsjBt20Edr3LRUy2IAGHuNv17YSJ/eK7m
 Pwg1M98Vnz5bIdagViHG3JrnIsCWRus7inQo7f+C1bpaX/AABrQ0snkz7
 3L0Mqok4fLePFDHYcAT3LzE9UJ1cksQxMbQts2RwDRJZltNe5i6DY/qGO
 ElXGdfCDxcF+sB+a1EuT743nsGsoTpm92Kjg4ZRtEJ6PJ/E4WtoqJ01VR A==;
X-CSE-ConnectionGUID: /0Y/k9BDT1utZHSB7a6V+Q==
X-CSE-MsgGUID: LI5ZosZpRJ6xbWpmfO5M3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11560"; a="72217851"
X-IronPort-AV: E=Sophos;i="6.18,284,1751266800"; d="scan'208";a="72217851"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 03:00:30 -0700
X-CSE-ConnectionGUID: yIwA50LrQXq6c8Y7xT6ssw==
X-CSE-MsgGUID: /0xSZYwzSMCDwnwK0oii9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,284,1751266800"; d="scan'208";a="207179482"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.115])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 03:00:28 -0700
Date: Mon, 22 Sep 2025 13:00:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/9] drm/i915/display: Add set_context_latency to
 crtc_state->vrr
Message-ID: <aNEeOdGfUlmme2wf@intel.com>
References: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
 <20250921043535.2012978-3-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250921043535.2012978-3-ankit.k.nautiyal@intel.com>
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

On Sun, Sep 21, 2025 at 10:05:28AM +0530, Ankit Nautiyal wrote:
> 'Set context latency' (Window W2) is defined as the number of lines before
> the double buffering point, which are required to complete programming of
> the registers, typically when DSB is used to program the display
> registers.
> 
> Since we are not using this window for programming the registers, this
> is mostly set to 0, unless there is a requirement for few cases related
> to PSR/PR where the 'set context latency' should be at least 1.
> 
> Currently we are using the 'set context latency' (if required) implicitly
> by moving the vblank start by the required amount and then measuring the
> delay i.e. the difference between undelayed vblank start and delayed vblank
> start.
> 
> Since our guardband matches the vblank length, this was not a problem as
> the difference between the undelayed vblank and delayed vblank was at
> the most equal to the 'set context latency' lines.
> 
> However, if we want to optimize the guardband, the difference between the
> undelayed and the delayed vblank will be large and we cannot use this
> difference as the 'set context latency' lines.
> 
> To make way for this optimization of guardband, we formally introduce
> the 'set context latency' and track it as a new member
> `set_context_latency` of the intel_crtc_state.
> 
> Eventually, all references of vblank delay where we mean to use set
> context latency will be replaced by this new `set_context_latency`
> member.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  .../drm/i915/display/intel_crtc_state_dump.c  |  5 ++--
>  drivers/gpu/drm/i915/display/intel_display.c  | 29 ++++++++++++-------
>  .../drm/i915/display/intel_display_types.h    |  3 ++
>  3 files changed, 24 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> index 0c7f91046996..a14bcda4446c 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> @@ -289,10 +289,11 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>  	drm_printf(&p, "scanline offset: %d\n",
>  		   intel_crtc_scanline_offset(pipe_config));
>  
> -	drm_printf(&p, "vblank delay: %d, framestart delay: %d, MSA timing delay: %d\n",
> +	drm_printf(&p, "vblank delay: %d, framestart delay: %d, MSA timing delay: %d set context latency: %d\n",
>  		   pipe_config->hw.adjusted_mode.crtc_vblank_start -
>  		   pipe_config->hw.adjusted_mode.crtc_vdisplay,
> -		   pipe_config->framestart_delay, pipe_config->msa_timing_delay);
> +		   pipe_config->framestart_delay, pipe_config->msa_timing_delay,
> +		   pipe_config->set_context_latency);
>  
>  	drm_printf(&p, "vrr: %s, fixed rr: %s, vmin: %d, vmax: %d, flipline: %d, pipeline full: %d, guardband: %d vsync start: %d, vsync end: %d\n",
>  		   str_yes_no(pipe_config->vrr.enable),
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 679c2a9baaee..5a7794387ea2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2361,17 +2361,18 @@ static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
>  	return 0;
>  }
>  
> -static int intel_crtc_vblank_delay(const struct intel_crtc_state *crtc_state)
> +static int intel_crtc_set_context_latency(struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
> -	int vblank_delay = 0;
> +	int set_context_latency = 0;
>  
>  	if (!HAS_DSB(display))
>  		return 0;
>  
> -	vblank_delay = max(vblank_delay, intel_psr_min_set_context_latency(crtc_state));
> +	set_context_latency = max(set_context_latency,
> +				  intel_psr_min_set_context_latency(crtc_state));
>  
> -	return vblank_delay;
> +	return set_context_latency;
>  }
>  
>  static int intel_crtc_compute_vblank_delay(struct intel_atomic_state *state,

I think we should just do a full s/vblank_delay/set_context_latency/
pass over this function. Then it'll be clear that we are calculating
only the SCL here.

> @@ -2382,9 +2383,10 @@ static int intel_crtc_compute_vblank_delay(struct intel_atomic_state *state,
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct drm_display_mode *adjusted_mode =
>  		&crtc_state->hw.adjusted_mode;
> -	int vblank_delay, max_vblank_delay;
> +	int vblank_delay = 0, max_vblank_delay;
>  
> -	vblank_delay = intel_crtc_vblank_delay(crtc_state);
> +	crtc_state->set_context_latency = intel_crtc_set_context_latency(crtc_state);
> +	vblank_delay += crtc_state->set_context_latency;
>  	max_vblank_delay = adjusted_mode->crtc_vblank_end - adjusted_mode->crtc_vblank_start - 1;
>  
>  	if (vblank_delay > max_vblank_delay) {
> @@ -2617,7 +2619,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>  	if (DISPLAY_VER(display) >= 13) {
>  		intel_de_write(display,
>  			       TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder),
> -			       crtc_vblank_start - crtc_vdisplay);
> +			       crtc_state->set_context_latency);
>  
>  		/*
>  		 * VBLANK_START not used by hw, just clear it
> @@ -2707,7 +2709,7 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
>  	if (DISPLAY_VER(display) >= 13) {
>  		intel_de_write(display,
>  			       TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder),
> -			       crtc_vblank_start - crtc_vdisplay);
> +			       crtc_state->set_context_latency);
>  
>  		/*
>  		 * VBLANK_START not used by hw, just clear it
> @@ -2820,11 +2822,14 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
>  		adjusted_mode->crtc_vblank_end += 1;
>  	}
>  
> -	if (DISPLAY_VER(display) >= 13 && !transcoder_is_dsi(cpu_transcoder))
> -		adjusted_mode->crtc_vblank_start =
> -			adjusted_mode->crtc_vdisplay +
> +	if (DISPLAY_VER(display) >= 13 && !transcoder_is_dsi(cpu_transcoder)) {
> +		pipe_config->set_context_latency =
>  			intel_de_read(display,
>  				      TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder));
> +		adjusted_mode->crtc_vblank_start =
> +			adjusted_mode->crtc_vdisplay +
> +			pipe_config->set_context_latency;
> +	}
>  
>  	if (DISPLAY_VER(display) >= 30)
>  		pipe_config->min_hblank = intel_de_read(display,
> @@ -5387,6 +5392,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  		PIPE_CONF_CHECK_I(vrr.guardband);
>  	}
>  
> +	PIPE_CONF_CHECK_I(set_context_latency);
> +
>  #undef PIPE_CONF_CHECK_X
>  #undef PIPE_CONF_CHECK_I
>  #undef PIPE_CONF_CHECK_LLI
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 358ab922d7a7..a22fe77fcca1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1341,6 +1341,9 @@ struct intel_crtc_state {
>  
>  	/* LOBF flag */
>  	bool has_lobf;
> +
> +	/* W2 window or 'set context latency' lines */
> +	int set_context_latency;

This can be a u16. If there's a reasonable looking place with a
suitable hole I'd try to stick it there.

>  };
>  
>  enum intel_pipe_crc_source {
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
