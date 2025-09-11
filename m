Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2520B53521
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Sep 2025 16:22:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5136110EB46;
	Thu, 11 Sep 2025 14:22:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="huTxaT6b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD98F10EB44;
 Thu, 11 Sep 2025 14:22:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757600533; x=1789136533;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=JIdctt95IJ3md5R+FKvfVzjk9fGpl2y7DOQFCIBEKtw=;
 b=huTxaT6b7D2UAOvL0+xkrJ7HsTFYG2c/Cs8dE8BXZXrUQvDjkQMzSLmw
 KJk/5Y2cNQeG+0qpJOhVJrcgiou7z0kuFA/kReaePgu+CrzcaL6gnMkPk
 C3id6zyjVOnmYb5ibHhN610LxsRrYsIky+d7NxhLfTByesP+xViJZt5tI
 1Z9xnwTYnGv7NFbd3S4BFfurtrapBLkF+FzK1T/5f3zC70/k65wl0i3SW
 voQNT/t6N6s2irW5/0iVgTlFy1yvsOLhKKaD2wZd45HHHPFJ9wrmh9XNz
 kK4I5NmrR7pSzf3Nl+/ik9HZWBboBYNefMRUknD8s0WVlOF/3lRuq8S7M Q==;
X-CSE-ConnectionGUID: VzSytthmRJOErQaFfNcgKA==
X-CSE-MsgGUID: mzpq5D8HRjiNGWuImuliIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11549"; a="77388655"
X-IronPort-AV: E=Sophos;i="6.18,257,1751266800"; d="scan'208";a="77388655"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 07:22:12 -0700
X-CSE-ConnectionGUID: SQ3C7ij4Q+KiTXUUxFlI5g==
X-CSE-MsgGUID: 8O4nm1U6Q/WjaYqZQqphVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,257,1751266800"; d="scan'208";a="173607881"
Received: from johunt-mobl9.ger.corp.intel.com (HELO localhost)
 ([10.245.244.13])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 07:22:10 -0700
Date: Thu, 11 Sep 2025 17:22:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: Re: [PATCH 10/15] drm/i915/skl_watermark: Remove redundant latency
 checks from vblank validation
Message-ID: <aMLbD4g6iB9s_FWU@intel.com>
References: <20250911024554.692469-1-ankit.k.nautiyal@intel.com>
 <20250911024554.692469-11-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250911024554.692469-11-ankit.k.nautiyal@intel.com>
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

On Thu, Sep 11, 2025 at 08:15:49AM +0530, Ankit Nautiyal wrote:
> Drop DSC and scaler prefill latency checks from skl_is_vblank_too_short().
> These are now covered by the guardband validation added during the atomic
> CRTC check phase.
> 
> This cleanup prepares for future changes where the guardband will be
> optimized independently of vblank length, making vblank-based checks
> obsolete.

This looks very wrong, at least for platforms that don't have a
programmable guardband.

> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 79 --------------------
>  1 file changed, 79 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 83ac26004f05..07589096b143 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -28,7 +28,6 @@
>  #include "intel_flipq.h"
>  #include "intel_pcode.h"
>  #include "intel_plane.h"
> -#include "intel_vrr.h"
>  #include "intel_wm.h"
>  #include "skl_universal_plane_regs.h"
>  #include "skl_scaler.h"
> @@ -2159,93 +2158,15 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
>  	return 0;
>  }
>  
> -static int
> -cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
> -{
> -	struct intel_display *display = to_intel_display(crtc_state);
> -	struct intel_atomic_state *state =
> -		to_intel_atomic_state(crtc_state->uapi.state);
> -	const struct intel_cdclk_state *cdclk_state;
> -
> -	cdclk_state = intel_atomic_get_cdclk_state(state);
> -	if (IS_ERR(cdclk_state)) {
> -		drm_WARN_ON(display->drm, PTR_ERR(cdclk_state));
> -		return 1;
> -	}
> -
> -	return min(1, DIV_ROUND_UP(crtc_state->pixel_rate,
> -				   2 * intel_cdclk_logical(cdclk_state)));
> -}
> -
> -static int
> -dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
> -{
> -	const struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
> -	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
> -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	int num_scaler_users = hweight32(scaler_state->scaler_users);
> -	u64 hscale_k[ARRAY_SIZE(scaler_state->scalers)];
> -	u64 vscale_k[ARRAY_SIZE(scaler_state->scalers)];
> -	u32 dsc_prefill_latency = 0;
> -
> -	if (!crtc_state->dsc.compression_enable ||
> -	    !num_scaler_users ||
> -	    num_scaler_users > crtc->num_scalers)
> -		return dsc_prefill_latency;
> -
> -	for (int i = 0; i < num_scaler_users; i++) {
> -		hscale_k[i] = max(1000, mul_u32_u32(scaler_state->scalers[i].hscale, 1000) >> 16);
> -		vscale_k[i] = max(1000, mul_u32_u32(scaler_state->scalers[i].vscale, 1000) >> 16);
> -	}
> -
> -	dsc_prefill_latency =
> -		intel_vrr_guardband_dsc_latency(num_scaler_users, hscale_k, vscale_k,
> -						chroma_downscaling_factor,
> -						cdclk_prefill_adjustment(crtc_state),
> -						linetime);
> -
> -	return dsc_prefill_latency;
> -}
> -
> -static int
> -scaler_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
> -{
> -	const struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
> -	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
> -	int num_scaler_users = hweight32(scaler_state->scaler_users);
> -	u64 hscale_k = 0, vscale_k = 0;
> -	int scaler_prefill_latency = 0;
> -
> -	if (!num_scaler_users)
> -		return scaler_prefill_latency;
> -
> -	if (num_scaler_users > 1) {
> -		hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].hscale, 1000) >> 16);
> -		vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].vscale, 1000) >> 16);
> -	}
> -
> -	scaler_prefill_latency =
> -		intel_vrr_guardband_scaler_latency(num_scaler_users, hscale_k, vscale_k,
> -						   chroma_downscaling_factor,
> -						   cdclk_prefill_adjustment(crtc_state),
> -						   linetime);
> -
> -	return scaler_prefill_latency;
> -}
> -
>  static bool
>  skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
>  			int wm0_lines, int latency)
>  {
>  	const struct drm_display_mode *adjusted_mode =
>  		&crtc_state->hw.adjusted_mode;
> -	int linetime = DIV_ROUND_UP(1000 * adjusted_mode->htotal,
> -				    adjusted_mode->clock);
>  
>  	return crtc_state->framestart_delay +
>  		intel_usecs_to_scanlines(adjusted_mode, latency) +
> -		DIV_ROUND_UP(scaler_prefill_latency(crtc_state, linetime), linetime) +
> -		DIV_ROUND_UP(dsc_prefill_latency(crtc_state, linetime), linetime) +
>  		wm0_lines >
>  		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
>  }
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
