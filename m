Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6647B9644A
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 16:32:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37DD810E632;
	Tue, 23 Sep 2025 14:32:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zoe0s6MJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCE0010E632;
 Tue, 23 Sep 2025 14:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758637953; x=1790173953;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=SkVo6xPj9BzZvfBEOCi10Wb81u2dTAQ57riKAoYP0jk=;
 b=Zoe0s6MJzibh2hai3k4lN577GX//feXJbTo7ef7wIeCUWjz4h820Vh91
 ri30uuLrp5FnrB8+1sAzbYuM/biC9jJHXtRFbrb/71zJwfVoAe6giv1Vk
 Cfvmw0I47fg+wctZZSFIKLs5iaK8hTTHPPKcL0SlKS0uK2tG8vCNUh2yv
 WTl7zB6ujomCrdVpfRuNQNz/k1193tOqZAcDlnr71TmvQelRgWCVHZXSU
 F8S21u/XzXqV7q8DpuiInTatMS5dRGYk3jPBY43e9M0afbXxGWbXUP98V
 ZpnnNNT8jojpKUBgF7+8wkn03BDk6OV8J5LSUgta/ifZ1Exqj0y/ikDYe Q==;
X-CSE-ConnectionGUID: t+Vne8+UQICoKEPStQ73JA==
X-CSE-MsgGUID: f7KW6vtTT1WrDZ9VnWJcYw==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="71590506"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="71590506"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 07:32:32 -0700
X-CSE-ConnectionGUID: xQuzxjKfTAicTgvkFN5W4Q==
X-CSE-MsgGUID: Osco1VbfRziHYu7KF/cMZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="207535744"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 07:32:30 -0700
Date: Tue, 23 Sep 2025 17:32:28 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 7/9] drm/i915/display: Wait for scl start instead of
 dsb_wait_vblanks
Message-ID: <aNKvfC7TR52Hg6np@intel.com>
References: <20250923131043.2628282-1-ankit.k.nautiyal@intel.com>
 <20250923131043.2628282-8-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250923131043.2628282-8-ankit.k.nautiyal@intel.com>
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

On Tue, Sep 23, 2025 at 06:40:41PM +0530, Ankit Nautiyal wrote:
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
> So instruct the DSB to wait from (undelayed vblank start - SCL) to
> (delayed vblank start - SCL) in the helper to wait for delayed vblank.
> 
> v2:
> - Use helpers for safe window start/end. (Ville)
> - Move the extra wait inside the helper to wait for delayed vblank. (Ville)
> - Update the commit message.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dsb.c | 18 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_vrr.c | 17 +++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_vrr.h |  2 ++
>  3 files changed, 37 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index 0584a9597327..e118ba4a0bb7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -815,6 +815,23 @@ void intel_dsb_chain(struct intel_atomic_state *state,
>  			 wait_for_vblank ? DSB_WAIT_FOR_VBLANK : 0);
>  }
>  
> +static
> +void intel_dsb_wait_for_scl_start(struct intel_atomic_state *state,
> +				  struct intel_dsb *dsb)
> +{
> +	struct intel_crtc *crtc = dsb->crtc;
> +	const struct intel_crtc_state *crtc_state =
> +		intel_pre_commit_crtc_state(state, crtc);
> +	int start, end;
> +
> +	if (!pre_commit_is_vrr_active(state, crtc))
> +		return;
> +
> +	start = intel_vrr_safe_window_start(crtc_state);
> +	end = intel_vrr_safe_window_end(crtc_state);
> +	intel_dsb_wait_scanline_out(state, dsb, start, end);
> +}
> +
>  void intel_dsb_wait_for_delayed_vblank(struct intel_atomic_state *state,
>  				       struct intel_dsb *dsb)
>  {
> @@ -824,6 +841,7 @@ void intel_dsb_wait_for_delayed_vblank(struct intel_atomic_state *state,
>  	int usecs = intel_scanlines_to_usecs(&crtc_state->hw.adjusted_mode,
>  					     dsb_vblank_delay(state, crtc));
>  

Maybe we need a bit of explanation for this to
remind the reader what is going on. Eg. somethign like:

/*
 * If the push happened before the vmin decision boundary
 * we don't know how far we are from the undelayed vblank.
 * Wait until we're past the vmin safe window, at which
 * point we're SCL lines away from the delayed vblank.
 *
 * If the push happened after the vmin decision
 * boundary the hardware itself guarantees that we're
 * SCL lines away from the delayed vblank, and we
 * won't be inside the vmin safe window so this is
 * extra wait does nothing.
 */

> +	intel_dsb_wait_for_scl_start(state, dsb);

It's a bit confusing to have this outside the existing 
'if (vrr)' branch. I think I'd put this inside there.

And maybe just inline it there since we already
dug up the correct crtc_state anyway.

>  	intel_dsb_wait_usec(dsb, usecs);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 40e256bce3cb..8f851d3a3f44 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -800,3 +800,20 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  	if (crtc_state->vrr.enable)
>  		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>  }
> +
> +int intel_vrr_safe_window_start(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +
> +	if (DISPLAY_VER(display) >= 30)
> +		return crtc_state->hw.adjusted_mode.crtc_vdisplay -
> +		       crtc_state->set_context_latency;
> +

I'd use 'else' here for consistency with the existing code.

> +	return crtc_state->hw.adjusted_mode.crtc_vdisplay;
> +}
> +
> +int intel_vrr_safe_window_end(const struct intel_crtc_state *crtc_state)

To be accurate this is the safe window end corresponding to
vmin so I'd call it intel_vrr_vmin_safe_window_end().

> +{
> +	return intel_vrr_vmin_vblank_start(crtc_state) -
> +	       crtc_state->set_context_latency;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index b72e90b4abe5..a304b6c41103 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -41,5 +41,7 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
>  bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
> +int intel_vrr_safe_window_start(const struct intel_crtc_state *crtc_state);
> +int intel_vrr_safe_window_end(const struct intel_crtc_state *crtc_state);
>  
>  #endif /* __INTEL_VRR_H__ */
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
