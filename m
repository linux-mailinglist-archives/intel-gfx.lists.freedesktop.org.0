Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0133AB3163C
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Aug 2025 13:23:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA26810E0FE;
	Fri, 22 Aug 2025 11:23:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dd1VF3hw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D48510E0FE;
 Fri, 22 Aug 2025 11:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755861787; x=1787397787;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=240mtqGcJmcLraxnBEGF/RO1okSIsjjxNTEYcMf9COA=;
 b=Dd1VF3hwMuxcnTaA2uQtSd8MbJhfEtlNrHrZl+K5jhhj+8BY0InKelLg
 IA2wq3Oh45xSTWNNOirt4aDXDsJ1A5cfQweZOqLg53S5rqDARwqtRs+8n
 KN7mNJb0pG8L0sZnEkSSAfVteTSMpKKQcaUSGHadD43DyXjRWrsP6XD7N
 AS8HsrS+D0vXKFoGOhshjzzz6Pyz+WXkuSCGM2Y3CdOD63m1pT3mNLuzN
 8uawgZJRGfCFgtd+FuvgVaeasWhLbdRPAS70PaZ5/my+V4qvIFbhcE1Sv
 0eIrzc882C/uiCsUAdtPE2bRIHXYDcOc1D4vpTs8SakeMXOtcC4Op1k1k Q==;
X-CSE-ConnectionGUID: FtdeGjNEQKmoltwp3w3muA==
X-CSE-MsgGUID: KoQkoVK9Sc20soZhH05gCA==
X-IronPort-AV: E=McAfee;i="6800,10657,11529"; a="61980028"
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="61980028"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2025 04:23:06 -0700
X-CSE-ConnectionGUID: JohD9gXTQJy8aeNxmM8mfQ==
X-CSE-MsgGUID: rg0CX5CJRe2FhZfenExaJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="192352302"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.190])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2025 04:23:04 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>, Mitul Golani
 <mitulkumar.ajitkumar.golani@intel.com>
Subject: Re: [PATCH 04/12] drm/i915/display: Extract helpers to set
 dsc/scaler prefill latencies
In-Reply-To: <20250820080451.2634888-5-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250820080451.2634888-1-ankit.k.nautiyal@intel.com>
 <20250820080451.2634888-5-ankit.k.nautiyal@intel.com>
Date: Fri, 22 Aug 2025 14:23:01 +0300
Message-ID: <ec108ab6a7018cd162e5fcbdead88a2f1fd89a9d@intel.com>
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

On Wed, 20 Aug 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Currently dsc/scaler prefill latencies are handled during watermark
> calculations. With the optimized guardband, we need to compute the
> latencies to find the minimum guardband that works for most cases.
> Extract the helpers to compute these latencies, so that they can be used
> while computing vrr guardband.
>
> While at it, put declarations in reverse xmas tree order for better
> redability.
>
> v2: Initialize {h,v}scale_k to 0, and simplify the check in
> intel_display_scaler_prefill_latency(). (Mitul)
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 33 ++++++++++++++
>  drivers/gpu/drm/i915/display/intel_display.h |  8 ++++

Side note, basically adding anything to intel_display.c becomes a new
todo item of things to move out of intel_display.c.

It has long been a dumping ground, and continues to be so. :(

BR,
Jani.


>  drivers/gpu/drm/i915/display/skl_watermark.c | 46 +++++++++-----------
>  3 files changed, 62 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index c1a3a95c65f0..62ec95a75154 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8328,3 +8328,36 @@ bool intel_scanout_needs_vtd_wa(struct intel_display *display)
>  
>  	return IS_DISPLAY_VER(display, 6, 11) && i915_vtd_active(i915);
>  }
> +
> +int intel_display_scaler_prefill_latency(int num_scaler_users, u64 hscale, u64 vscale,
> +					 int chroma_downscaling_factor,
> +					 int cdclk_prefill_adjustment,
> +					 int linetime)
> +{
> +	int scaler_prefill_latency;
> +
> +	scaler_prefill_latency = 4 * linetime +
> +				 DIV_ROUND_UP_ULL((4 * linetime * hscale * vscale *
> +						   chroma_downscaling_factor), 1000000);
> +
> +	scaler_prefill_latency *= cdclk_prefill_adjustment;
> +
> +	return scaler_prefill_latency;
> +}
> +
> +int intel_display_dsc_prefill_latency(int num_scaler_users, u64 *hscale, u64 *vscale,
> +				      int chroma_downscaling_factor,
> +				      int cdclk_prefill_adjustment,
> +				      int linetime)
> +{
> +	int dsc_prefill_latency;
> +
> +	dsc_prefill_latency = DIV_ROUND_UP(15 * linetime * chroma_downscaling_factor, 10);
> +
> +	for (int i = 0; i < num_scaler_users; i++)
> +		dsc_prefill_latency = DIV_ROUND_UP_ULL(dsc_prefill_latency * hscale[i] * vscale[i],
> +						       1000000);
> +	dsc_prefill_latency *= cdclk_prefill_adjustment;
> +
> +	return dsc_prefill_latency;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 37e2ab301a80..8d094b0a8c6b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -559,5 +559,13 @@ bool assert_port_valid(struct intel_display *display, enum port port);
>  
>  bool intel_scanout_needs_vtd_wa(struct intel_display *display);
>  int intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state);
> +int intel_display_scaler_prefill_latency(int num_scaler_users, u64 hscale, u64 vscale,
> +					 int chroma_downscaling_factor,
> +					 int cdclk_prefill_adjustment,
> +					 int linetime);
> +int intel_display_dsc_prefill_latency(int num_scaler_users, u64 *hscale, u64 *vscale,
> +				      int chroma_downscaling_factor,
> +				      int cdclk_prefill_adjustment,
> +				      int linetime);
>  
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 97b42bbf5642..f0213785e9fc 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2179,11 +2179,12 @@ cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
>  static int
>  dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
>  {
> +	const struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
> +	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	const struct intel_crtc_scaler_state *scaler_state =
> -					&crtc_state->scaler_state;
>  	int num_scaler_users = hweight32(scaler_state->scaler_users);
> -	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
> +	u64 hscale_k[ARRAY_SIZE(scaler_state->scalers)];
> +	u64 vscale_k[ARRAY_SIZE(scaler_state->scalers)];
>  	u32 dsc_prefill_latency = 0;
>  
>  	if (!crtc_state->dsc.compression_enable ||
> @@ -2191,18 +2192,16 @@ dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
>  	    num_scaler_users > crtc->num_scalers)
>  		return dsc_prefill_latency;
>  
> -	dsc_prefill_latency = DIV_ROUND_UP(15 * linetime * chroma_downscaling_factor, 10);
> -
>  	for (int i = 0; i < num_scaler_users; i++) {
> -		u64 hscale_k, vscale_k;
> -
> -		hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[i].hscale, 1000) >> 16);
> -		vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[i].vscale, 1000) >> 16);
> -		dsc_prefill_latency = DIV_ROUND_UP_ULL(dsc_prefill_latency * hscale_k * vscale_k,
> -						       1000000);
> +		hscale_k[i] = max(1000, mul_u32_u32(scaler_state->scalers[i].hscale, 1000) >> 16);
> +		vscale_k[i] = max(1000, mul_u32_u32(scaler_state->scalers[i].vscale, 1000) >> 16);
>  	}
>  
> -	dsc_prefill_latency *= cdclk_prefill_adjustment(crtc_state);
> +	dsc_prefill_latency =
> +		intel_display_dsc_prefill_latency(num_scaler_users, hscale_k, vscale_k,
> +						  chroma_downscaling_factor,
> +						  cdclk_prefill_adjustment(crtc_state),
> +						  linetime);
>  
>  	return dsc_prefill_latency;
>  }
> @@ -2210,28 +2209,25 @@ dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
>  static int
>  scaler_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
>  {
> -	const struct intel_crtc_scaler_state *scaler_state =
> -					&crtc_state->scaler_state;
> +	const struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
> +	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
>  	int num_scaler_users = hweight32(scaler_state->scaler_users);
> +	u64 hscale_k = 0, vscale_k = 0;
>  	int scaler_prefill_latency = 0;
>  
>  	if (!num_scaler_users)
>  		return scaler_prefill_latency;
>  
> -	scaler_prefill_latency = 4 * linetime;
> -
>  	if (num_scaler_users > 1) {
> -		u64 hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].hscale, 1000) >> 16);
> -		u64 vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].vscale, 1000) >> 16);
> -		int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
> -		int latency;
> -
> -		latency = DIV_ROUND_UP_ULL((4 * linetime * hscale_k * vscale_k *
> -					    chroma_downscaling_factor), 1000000);
> -		scaler_prefill_latency += latency;
> +		hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].hscale, 1000) >> 16);
> +		vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].vscale, 1000) >> 16);
>  	}
>  
> -	scaler_prefill_latency *= cdclk_prefill_adjustment(crtc_state);
> +	scaler_prefill_latency =
> +		intel_display_scaler_prefill_latency(num_scaler_users, hscale_k, vscale_k,
> +						     chroma_downscaling_factor,
> +						     cdclk_prefill_adjustment(crtc_state),
> +						     linetime);
>  
>  	return scaler_prefill_latency;
>  }

-- 
Jani Nikula, Intel
