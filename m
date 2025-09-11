Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA28DB534AA
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Sep 2025 15:58:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6078810EB3A;
	Thu, 11 Sep 2025 13:58:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GJlAzs0l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2DE310EB3A;
 Thu, 11 Sep 2025 13:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757599114; x=1789135114;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=c2LPkjZYkVkBO5U9bLlaaV59+l6u8DQOF5f2en4pwKU=;
 b=GJlAzs0lG2L99nXyiihLtQKDSCP/QuYk89O7O8OJ7GHg2PRg9wbIU105
 qelPVz8cv0g2zS8ZsaFZHvF3b7vioBZgz5dSS1crbxbdtpu0VzwFyPoTc
 ORyUc3qygdNNy+w8a8AQlkONNFlRt0YIIsWoniweipWVjQm7gBL0qawgy
 QmloOdpZdIV5EP6LxockasrrGEyaIjfecPxhno1LGl/y8t8idYHexmRFj
 GS4qkMMD+aCm43exHJEaGs9pxV5ci6YX0S39x5zVw5riQa0e2qlA+RdCz
 vfxJ84vRO4bZR5U3mKQeDHexgMOSfE8cjG+0Mm47fE+HltghopvVjVcBE g==;
X-CSE-ConnectionGUID: 9Dvy115BS+yl1A1vms0Nhg==
X-CSE-MsgGUID: 669+k/LtSoSfhb/rC0C/vQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11549"; a="70186930"
X-IronPort-AV: E=Sophos;i="6.18,257,1751266800"; d="scan'208";a="70186930"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 06:58:34 -0700
X-CSE-ConnectionGUID: REA19fAXTJuf+baC51pNIg==
X-CSE-MsgGUID: rJjgTUkOR8ic5zf1FNv0LA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,257,1751266800"; d="scan'208";a="173768472"
Received: from johunt-mobl9.ger.corp.intel.com (HELO localhost)
 ([10.245.244.13])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 06:58:32 -0700
Date: Thu, 11 Sep 2025 16:58:28 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: Re: [PATCH 03/15] drm/i915/skl_watermark: Pass linetime as argument
 to latency helpers
Message-ID: <aMLVhHbUNHJJypyM@intel.com>
References: <20250911024554.692469-1-ankit.k.nautiyal@intel.com>
 <20250911024554.692469-4-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250911024554.692469-4-ankit.k.nautiyal@intel.com>
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

On Thu, Sep 11, 2025 at 08:15:42AM +0530, Ankit Nautiyal wrote:
> Refactor dsc_prefill_latency and scaler_prefill_latency to take
> linetime as an explicit parameter instead of computing it internally.
> 
> This avoids redundant calculations and simplifies scanline conversion
> logic in skl_is_vblank_too_short().
> 
> This change also facilitates future extraction of these helpers for use
> cases where latencies are computed for an optimized guardband, based on the
> highest resolution mode, rather than the current mode.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 18 ++++++++----------
>  1 file changed, 8 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 51548447f4aa..49d424f5b305 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2176,13 +2176,11 @@ cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
>  }
>  
>  static int
> -dsc_prefill_latency(const struct intel_crtc_state *crtc_state)
> +dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	const struct intel_crtc_scaler_state *scaler_state =
>  					&crtc_state->scaler_state;
> -	int linetime = DIV_ROUND_UP(1000 * crtc_state->hw.adjusted_mode.htotal,
> -				    crtc_state->hw.adjusted_mode.clock);
>  	int num_scaler_users = hweight32(scaler_state->scaler_users);
>  	int chroma_downscaling_factor =
>  		crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 4 : 1;
> @@ -2206,18 +2204,16 @@ dsc_prefill_latency(const struct intel_crtc_state *crtc_state)
>  
>  	dsc_prefill_latency *= cdclk_prefill_adjustment(crtc_state);
>  
> -	return intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, dsc_prefill_latency);
> +	return dsc_prefill_latency;
>  }
>  
>  static int
> -scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
> +scaler_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
>  {
>  	const struct intel_crtc_scaler_state *scaler_state =
>  					&crtc_state->scaler_state;
>  	int num_scaler_users = hweight32(scaler_state->scaler_users);
>  	int scaler_prefill_latency = 0;
> -	int linetime = DIV_ROUND_UP(1000 * crtc_state->hw.adjusted_mode.htotal,
> -				    crtc_state->hw.adjusted_mode.clock);
>  
>  	if (!num_scaler_users)
>  		return scaler_prefill_latency;
> @@ -2238,7 +2234,7 @@ scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
>  
>  	scaler_prefill_latency *= cdclk_prefill_adjustment(crtc_state);
>  
> -	return intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, scaler_prefill_latency);
> +	return scaler_prefill_latency;
>  }
>  
>  static bool
> @@ -2247,11 +2243,13 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
>  {
>  	const struct drm_display_mode *adjusted_mode =
>  		&crtc_state->hw.adjusted_mode;
> +	int linetime = DIV_ROUND_UP(1000 * adjusted_mode->htotal,
> +				    adjusted_mode->clock);
>  
>  	return crtc_state->framestart_delay +
>  		intel_usecs_to_scanlines(adjusted_mode, latency) +
> -		scaler_prefill_latency(crtc_state) +
> -		dsc_prefill_latency(crtc_state) +
> +		DIV_ROUND_UP(scaler_prefill_latency(crtc_state, linetime), linetime) +
> +		DIV_ROUND_UP(dsc_prefill_latency(crtc_state, linetime), linetime) +

Looks like you could just add up all the usec latency numbers and
convert the whole thing with a single intel_usecs_to_scanlines() call
instead of this mismash of hand rolled and non-hand rolled stuff.

>  		wm0_lines >
>  		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
>  }
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
