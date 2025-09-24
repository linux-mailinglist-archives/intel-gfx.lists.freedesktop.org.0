Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2EA0B99C74
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 14:11:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B94510E71C;
	Wed, 24 Sep 2025 12:11:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cFYcdxg0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8EAA10E71C;
 Wed, 24 Sep 2025 12:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758715908; x=1790251908;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ldmtok+UsYuHUevPBamdidUOgW6n3+ZVaORafSXwPhE=;
 b=cFYcdxg0q3M12JXMQWZnyqnKsdYOkkT/cPznrSQATfs2uSWl4n6WvFjf
 OKw01bI+w9mDUgya5YHuinaFgjEhfsH8BYQDx60GUz8HF+Yn/FJWZB5SZ
 bhnhSgSxJDNhFz0Y9wU6gyQTOw8WJj34kVcTaV0G9+7qfcpPqH9opCgKd
 rVdjoP32DBzBMnzy1BHEJy/v41dAJ1ZN3mAwJ0CBddULPHg1F5uDP9S+X
 ZrBcEwORoHRYAomjpQrufFkQ/Y3e0jbRXflE/bFfKhOde8PQLQjctRQrN
 qB5+ibQglvLs+4BG/Ln9Q55Z5NU7P+whGFYJNgCC6+N/uuOg1hqvWX8OV g==;
X-CSE-ConnectionGUID: YmBFTK9GT32pdWrPGJP0Eg==
X-CSE-MsgGUID: L6yjoXTyQYmtciboW/UhSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="60049497"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="60049497"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 05:11:47 -0700
X-CSE-ConnectionGUID: 5tT1KRsBShGVaSL7c+9sVA==
X-CSE-MsgGUID: 4gc5lN5FSdq/5ECDNE9lww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="177456037"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.144])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 05:11:46 -0700
Date: Wed, 24 Sep 2025 15:11:43 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 6/9] drm/i915/display: Wait for scl start instead of
 dsb_wait_vblanks
Message-ID: <aNPf_7jBUpQ6sI_x@intel.com>
References: <20250924105129.2771196-1-ankit.k.nautiyal@intel.com>
 <20250924105129.2771196-7-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250924105129.2771196-7-ankit.k.nautiyal@intel.com>
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

On Wed, Sep 24, 2025 at 04:21:26PM +0530, Ankit Nautiyal wrote:
> Until LNL, intel_dsb_wait_vblanks() used to wait for the undelayed vblank
> start. However, from PTL onwards, it waits for the start of the
> safe-window defined by the number of lines programmed in the register
> TRANS_SET_CONTEXT_LATENCY. This change was introduced to move the SCL
> window out of the vblank region, supporting modes with higher refresh
> rates and smaller vblanks. This change introduces a "safe window" a
> scanline range from (undelayed vblank - SCL) to (delayed vblank - SCL).
> 
> As a result, on PTL+ platforms, the DSB wait for vblank completes exactly
> SCL lines earlier than the undelayed vblank start (safe window start).
> If the flip occurs in the active region and the push happens before the
> vmin decision boundary, the DSB wait fires early, and the push is sent
> inside this safe window. In such cases, the push bit is cleared at the
> delayed vblank, but our wait logic does not account for the early trigger,
> leading to DSB poll errors.
> 
> To fix this, we add an explicit wait for the end of the safe window i.e.,
> the scanline range from (undelayed vblank - SCL) to (delayed vblank - SCL).
> Once past this window, we are exactly SCL lines away from the delayed
> vblank, and our existing wait logic works as intended.
> 
> This additional wait is only effective if the push occurs before the vmin
> decision boundary. If the push happens after the boundary, the hardware
> already guarantees we're SCL lines away from the delayed vblank, and the
> extra wait becomes a no-op.
> 
> v2:
> - Use helpers for safe window start/end. (Ville)
> - Move the extra wait inside the helper to wait for delayed vblank. (Ville)
> - Update the commit message.
> 
> v3:
> - Add more documentation for explanation for the wait. (Ville)
> - Rename intel_vrr_vmin_safe_window_start/end as this is vmin safe
>   window. (Ville)
> - Minor refactoring to align with the code. (Ville)
> - Update the commit message for more clarity.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dsb.c | 16 ++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_vrr.c | 17 +++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_vrr.h |  2 ++
>  3 files changed, 35 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index 135d40852e4c..3cb4c9be146f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -824,6 +824,22 @@ void intel_dsb_wait_for_delayed_vblank(struct intel_atomic_state *state,
>  	int usecs = intel_scanlines_to_usecs(&crtc_state->hw.adjusted_mode,
>  					     dsb_vblank_delay(state, crtc));
>  
> +	/*
> +	 * If the push happened before the vmin decision boundary
> +	 * we don't know how far we are from the undelayed vblank.
> +	 * Wait until we're past the vmin safe window, at which
> +	 * point we're SCL lines away from the delayed vblank.
> +	 *
> +	 * If the push happened after the vmin decision boundary
> +	 * the hardware itself guarantees that we're SCL lines
> +	 * away from the delayed vblank, and we won't be inside
> +	 * the vmin safe window so this extra wait does nothing.
> +	 */
> +	if (pre_commit_is_vrr_active(state, crtc))
> +		intel_dsb_wait_scanline_out(state, dsb,
> +					    intel_vrr_vmin_safe_window_start(crtc_state),
> +					    intel_vrr_vmin_safe_window_end(crtc_state));

Hmm, I thought we already had a 'if (vrr)' check here. But I guess that
was in dsb_vblank_delay(). Hmm, yeah I think what you did here is fine
for the moment.

I'm thinking we should follow up with inlining dsb_vblank_delay()
directly into intel_dsb_wait_for_delayed_vblank(), just to keep all
the VRR related wait magic in one place. I don't think there are any
other users of dsb_vblank_delay().

> +
>  	intel_dsb_wait_usec(dsb, usecs);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 1bb9db06f43d..26c5c32a9a58 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -800,3 +800,20 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  	if (crtc_state->vrr.enable)
>  		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>  }
> +
> +int intel_vrr_vmin_safe_window_start(const struct intel_crtc_state *crtc_state)

I only wanted you to rename the safe_window_end(). The safe window
start doesn't change for vmin/vmax/etc. So should drop the "vmin"
again from this one.

With that
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +
> +	if (DISPLAY_VER(display) >= 30)
> +		return crtc_state->hw.adjusted_mode.crtc_vdisplay -
> +		       crtc_state->set_context_latency;
> +	else
> +		return crtc_state->hw.adjusted_mode.crtc_vdisplay;
> +}
> +
> +int intel_vrr_vmin_safe_window_end(const struct intel_crtc_state *crtc_state)
> +{
> +	return intel_vrr_vmin_vblank_start(crtc_state) -
> +	       crtc_state->set_context_latency;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 38bf9996b883..239e4f94725c 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -41,5 +41,7 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
>  bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
> +int intel_vrr_vmin_safe_window_start(const struct intel_crtc_state *crtc_state);
> +int intel_vrr_vmin_safe_window_end(const struct intel_crtc_state *crtc_state);
>  
>  #endif /* __INTEL_VRR_H__ */
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
