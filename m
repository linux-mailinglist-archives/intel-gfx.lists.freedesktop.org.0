Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 270D0B8FFF6
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 12:26:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9036810E40C;
	Mon, 22 Sep 2025 10:26:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fh2dAlb8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCECB10E40B;
 Mon, 22 Sep 2025 10:26:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758536796; x=1790072796;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/f0dTH9UWMKP0fFK1dQ6tGPCEItOj243B/Mq6f+O1DU=;
 b=fh2dAlb8DuLdXkD9Vj2/SX2X77+pLEPJ7AjXR2koP4bvD1sqPkgYkGOt
 x1zC9lZ7uAeIZOzhBjTPGPQNVxIS9pi8jWO77mNWCSYqWu2AbmNq2ybFm
 wQNCaz29knO3GNC84VvDaRqxvuTB0aeI7KRlyMGkeJdsTSAJtheMUUHIu
 pX1Jc9QoMybSNfKUPs6KM31cJvfK6XTegkAkdB0TgeadMgSe6+7zPlOjb
 EWO4CY5ZdJynnDWdVg4rA0HrQ1SEQ/r26stS8p4/0hNoQ7IKRrCexKGhU
 M31B6rqCioKdyFgcjOr7ZCWO1ROzXRzfZoBqext/XEfLMLALnCTM64hzZ g==;
X-CSE-ConnectionGUID: BX+R6xKPSjem9NWYwqI4Vg==
X-CSE-MsgGUID: hFGr0JyAQbCgI4AXSJpRmA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60850800"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60850800"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 03:26:36 -0700
X-CSE-ConnectionGUID: 5eYEy40UTuuseEgVrLMJQA==
X-CSE-MsgGUID: 31h4LfUHR4azLBVMeP1htQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,284,1751266800"; d="scan'208";a="175579911"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.115])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 03:26:34 -0700
Date: Mon, 22 Sep 2025 13:26:31 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 8/9] drm/i915/display: Wait for scl start instead of
 dsb_wait_vblanks
Message-ID: <aNEkV70k8Nv1WFzW@intel.com>
References: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
 <20250921043535.2012978-9-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250921043535.2012978-9-ankit.k.nautiyal@intel.com>
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

On Sun, Sep 21, 2025 at 10:05:34AM +0530, Ankit Nautiyal wrote:
> Until LNL, intel_dsb_wait_vblanks() waits for the undelayed vblank start.
> However, from PTL onwards, it waits for the start of the safe window,
> defined by the number of lines programmed in TRANS_SET_CONTEXT_LATENCY.
> This change was introduced to move the SCL window out of the vblank region,
> supporting modes with higher refresh rates and smaller vblanks.
> 
> As a result, on PTL+ platforms, the DSB wait for vblank completes exactly
> SCL lines earlier than the undelayed vblank start. Since we use
> intel_dsb_wait_vblanks() to time the send push operation, this causes
> issues when SCL lines are non-zero.
> 
> Instead of relying on the helper, instruct the DSB to wait from
> (undelayed vblank start - SCL) to (delayed vblank start - SCL) before
> sending the push. This approach works for both pre-PTL and PTL+ platforms.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_dsb.c     | 16 ++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dsb.h     |  2 ++
>  3 files changed, 19 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index bfeec3706f35..8d78037d5a2a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7265,7 +7265,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>  				new_crtc_state->dsb_color);
>  
>  	if (new_crtc_state->use_dsb && !intel_color_uses_chained_dsb(new_crtc_state)) {
> -		intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
> +		intel_dsb_wait_for_scl_start(state, new_crtc_state->dsb_commit);
>  
>  		intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
>  		intel_dsb_wait_for_scl_lines(state, new_crtc_state->dsb_commit);
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index 400dcc87a992..e94a05cc8c82 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -826,6 +826,22 @@ void intel_dsb_wait_for_scl_lines(struct intel_atomic_state *state,
>  	intel_dsb_wait_usec(dsb, usecs);
>  }
>  
> +void intel_dsb_wait_for_scl_start(struct intel_atomic_state *state,
> +				  struct intel_dsb *dsb)
> +{
> +	struct intel_crtc *crtc = dsb->crtc;
> +	const struct intel_crtc_state *crtc_state =
> +		intel_pre_commit_crtc_state(state, crtc);
> +	int undelayed_vblank_start = crtc_state->hw.adjusted_mode.crtc_vdisplay;
> +	int delayed_vblank_start = crtc_state->hw.adjusted_mode.crtc_vblank_start;
> +	int start, end;
> +
> +	start = undelayed_vblank_start - crtc_state->set_context_latency;
> +	end = delayed_vblank_start - crtc_state->set_context_latency;

For these we perhaps want something like:

intel_vrr_safe_window_start()
{
	if (ptl+)
		return crtc_vdisplay - set_context_latency;
	else
		return crtc_vdisplay;
}

intel_vrr_vmin_safe_window_end()
{
	intel_vrr_vmin_vblank_start() - set_context_latency;
}

> +
> +	intel_dsb_wait_scanline_out(state, dsb, start, end);

And I suspect we want to do this just before the usec wait in
intel_dsb_wait_vblank_delay() (for the VRR case only). No need
to bother higher level code with this, I think.

> +}
> +
>  /**
>   * intel_dsb_commit() - Trigger workload execution of DSB.
>   * @dsb: DSB context
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
> index 1cb5ba1a0534..5985d0024dae 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.h
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.h
> @@ -73,5 +73,7 @@ void intel_dsb_wait(struct intel_dsb *dsb);
>  
>  void intel_dsb_irq_handler(struct intel_display *display,
>  			   enum pipe pipe, enum intel_dsb_id dsb_id);
> +void intel_dsb_wait_for_scl_start(struct intel_atomic_state *state,
> +				  struct intel_dsb *dsb);
>  
>  #endif
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
