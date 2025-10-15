Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C49B0BDFAEE
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 18:36:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAE2D10E87A;
	Wed, 15 Oct 2025 16:36:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X3KSdTEM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A13210E87A;
 Wed, 15 Oct 2025 16:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760546172; x=1792082172;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=kF20nP6sZ7q7ICs9aFY38/3kIzLZFCJ9GE5zBS48U8E=;
 b=X3KSdTEMMkGslpj2MO2Xca9iLbOCDYzqj15iuLKT7ICb+HbNZVKbtIJ1
 AeEXYPLAV77uXpba6OauK3N8FUVLQRmV2dAWtX/YNayia0/8ZnHvCniMO
 Ve6AVPhWEGLpraCgoRfVpvwJdHnHovd7U3PrbYquRiVl92ui/zFQDYOQm
 vN8k/B/CO4qMO/XNBRxutbU0qwBM90t/R8YoREXs/zOOwk2Yu4F7KQINV
 gEMG28mrUp9Du0E9yQri+71qqyHti0ziNvtueyXzHrbyGvkefeG9d+ZaJ
 6OVM4PPLbmCZufFyDj707A0wjnZKNyqkBzkeMDPbs5o+Cxqd3VtCj/Gsa Q==;
X-CSE-ConnectionGUID: GpSi+OOrSbu7tnFbfDSssA==
X-CSE-MsgGUID: Rvik/dbMQ+mY6uYPo5SLpQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62656141"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62656141"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 09:36:11 -0700
X-CSE-ConnectionGUID: vu8E6DEMRya+ZQoMrhQcwQ==
X-CSE-MsgGUID: Jy+cZEPiTGmNFiTU9D72Pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="182681084"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.116])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 09:36:09 -0700
Date: Wed, 15 Oct 2025 19:36:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 uma.shankar@intel.com
Subject: Re: [PATCH 5/6] drm/i915/display: Add guardband check for feature
 latencies
Message-ID: <aO_Nd3xTtgPDN5RM@intel.com>
References: <20251015102241.1797828-1-ankit.k.nautiyal@intel.com>
 <20251015102241.1797828-6-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251015102241.1797828-6-ankit.k.nautiyal@intel.com>
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

On Wed, Oct 15, 2025 at 03:52:40PM +0530, Ankit Nautiyal wrote:
> Add a check during atomic crtc check phase to ensure the programmed
> guardband is sufficient to cover latencies introduced by enabled features
> such as DSC, PSR/PR, scalers, and DP SDPs.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 56 ++++++++++++++++++++
>  1 file changed, 56 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 4367ecfab2b3..4e3f08a8cd9c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -126,6 +126,7 @@
>  #include "intel_vga.h"
>  #include "intel_vrr.h"
>  #include "intel_wm.h"
> +#include "skl_prefill.h"
>  #include "skl_scaler.h"
>  #include "skl_universal_plane.h"
>  #include "skl_watermark.h"
> @@ -4191,6 +4192,57 @@ static int hsw_compute_linetime_wm(struct intel_atomic_state *state,
>  	return 0;
>  }
>  
> +static int intel_crtc_guardband_atomic_check(struct intel_atomic_state *state,
> +					     struct intel_crtc *crtc)

Not sure why you're adding this. We already have the
compute_guardband().

> +{
> +	struct intel_display *display = to_intel_display(crtc);
> +	struct intel_crtc_state *crtc_state =
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	const struct drm_display_mode *adjusted_mode =
> +		&crtc_state->hw.adjusted_mode;
> +	struct skl_prefill_ctx prefill_ctx;
> +	int prefill_framestart_delay = 1;
> +	int prefill_min_guardband;
> +	int prefill_latency_us;
> +	int prefill_wm0_lines;
> +	int prefill_sagv_us;
> +	int psr_latency = 0;
> +	int sdp_latency = 0;
> +	int min_guardband;
> +	int guardband;
> +
> +	skl_prefill_init(&prefill_ctx, crtc_state);
> +	prefill_wm0_lines = skl_wm0_prefill_lines(crtc_state);
> +	prefill_sagv_us = display->sagv.block_time_us;
> +	prefill_latency_us = prefill_sagv_us +
> +			     intel_scanlines_to_usecs(adjusted_mode,
> +						      prefill_framestart_delay +
> +						      prefill_wm0_lines);

All of that should pretty much just be skl_prefill_init_worst()

> +	prefill_min_guardband =
> +		skl_prefill_min_guardband(&prefill_ctx,
> +					  crtc_state,
> +					  prefill_latency_us);

The only question really is what use as the latency here.
I think we want it to be:
 max(sagv_block_time, skl_watermark_max_latency(1))
which should guarantee that we get the max power savings.

> +
> +	if (intel_crtc_has_dp_encoder(crtc_state)) {
> +		psr_latency = intel_psr_max_link_wake_latency(crtc_state);
> +		sdp_latency = intel_dp_compute_sdp_latency(crtc_state);
> +	}
> +
> +	min_guardband = max(sdp_latency, psr_latency);
> +
> +	min_guardband = max(min_guardband, prefill_min_guardband);
> +
> +	guardband = intel_crtc_vblank_length(crtc_state);
> +
> +	if (guardband < min_guardband) {
> +		drm_dbg_kms(display->drm, "actual guardband: %d shorter than min guardband: %d\n",
> +			    guardband, min_guardband);
> +		return -EINVAL;
> +	}

I don't think we want to do any checks here. This whole thing
should just be something like:

guardband = prefill_min_guardband()
guardband = max(guardband, psr_min_guardband())
guardband = max(guardband, sdp_min_guardband())

crtc_state->vrr.guardband = min(guardband, intel_vrr_max_guardband())

And then we need to check the final value against 
sdp_min_guardband() in .compute_config_late() to make sure
we got enough for the SDPs. So quite similar to PSR, except
we just want .compute_config_late() to fail if we don't have
enough for the SDPs.

I think that should be good enough for now. It may force a modeset
if the SDPs change though, so later we might want to think about
using a better worst case estimate here, eg. assume HDR metadata may
get enabled later, which we'd like to do without changing the guardband.

> +
> +	return 0;
> +}
> +
>  static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>  				   struct intel_crtc *crtc)
>  {
> @@ -4253,6 +4305,10 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>  	if (ret)
>  		return ret;
>  
> +	ret = intel_crtc_guardband_atomic_check(state, crtc);
> +	if (ret)
> +		return ret;
> +
>  	return 0;
>  }
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
