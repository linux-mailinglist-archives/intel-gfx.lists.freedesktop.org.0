Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A3DAB10CA
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 12:33:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 100A010EA12;
	Fri,  9 May 2025 10:33:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L6UymyJ9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3010410EA11;
 Fri,  9 May 2025 10:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746786790; x=1778322790;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=GxEXf/W+vH+o6RCcBVPRDC+SaxUn2JHIUAYAAC1src4=;
 b=L6UymyJ9BaLIQFMM4q+4HeXKLcYP6MplGOCxyvFwsHj8DOlZg7oPCrBC
 HtKHRKkpBrOQMVipLVnDw6Yh9qbM7wAaxY89s2s2HzZoVNY9FT+Jps1Lb
 bvjLfiYqEOaHxgBZMi5qw1lnJo2MFkYKshFJe6+323W2IRlvXRHKqw01k
 AIOq3wfUE3NWmhYxpKaG5iZdiQfGDiMXKxP2Ntp0cfa9aYz88yON46tNg
 1jsteEABu8nYZQEwzPHTVz71MAFPGJSkHFh+61gFlFJhylINfiUXKIbFC
 o2U1XuOslLs4PO+kyk0baAM8/n62nYOVyg53HA+QPRFahdqGOfepn3sic w==;
X-CSE-ConnectionGUID: BV6qLy7rT162tzku16CMvA==
X-CSE-MsgGUID: /1RMhqWdT1O6R6roDA9N6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="48516180"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="48516180"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:33:09 -0700
X-CSE-ConnectionGUID: sG2dpu6JRDiVuWN+azA6PA==
X-CSE-MsgGUID: 33LskUODReeTXbrzz0Vq6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="141358757"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.201])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:33:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH 17/18] drm/i915/dpll: Rename intel_compute_dpll
In-Reply-To: <20250509042729.1152004-18-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250509042729.1152004-1-suraj.kandpal@intel.com>
 <20250509042729.1152004-18-suraj.kandpal@intel.com>
Date: Fri, 09 May 2025 13:33:04 +0300
Message-ID: <87zffmjcpr.fsf@intel.com>
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

On Fri, 09 May 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Rename intel_compute_dpll to intel_dpll_compute in an
> effort to make sure all function names that are exported have
> the filename at start.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_dpll.c     | 6 +++---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 8 ++++----
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h | 6 +++---
>  3 files changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
> index 6a0bb12eafc4..c15a9af53313 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1161,7 +1161,7 @@ static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
>  	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
>  		return 0;
>  
> -	ret = intel_compute_dplls(state, crtc, encoder);
> +	ret = intel_dpll_compute(state, crtc, encoder);
>  	if (ret)
>  		return ret;
>  
> @@ -1223,7 +1223,7 @@ static int mtl_crtc_compute_clock(struct intel_atomic_state *state,
>  	if (ret)
>  		return ret;
>  
> -	/* TODO: Do the readback via intel_compute_dplls() */
> +	/* TODO: Do the readback via intel_dpll_compute() */
>  	crtc_state->port_clock = intel_cx0pll_calc_port_clock(encoder, &crtc_state->dpll_hw_state.cx0pll);
>  
>  	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
> @@ -1394,7 +1394,7 @@ static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
>  	ilk_compute_dpll(crtc_state, &crtc_state->dpll,
>  			 &crtc_state->dpll);
>  
> -	ret = intel_compute_dplls(state, crtc, NULL);
> +	ret = intel_dpll_compute(state, crtc, NULL);
>  	if (ret)
>  		return ret;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 65dd8c3a3aed..05714e6fbad5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4383,7 +4383,7 @@ void intel_dpll_init(struct intel_display *display)
>  }
>  
>  /**
> - * intel_compute_dplls - compute DPLL state CRTC and encoder combination
> + * intel_dpll_compute - compute DPLL state CRTC and encoder combination
>   * @state: atomic state
>   * @crtc: CRTC to compute DPLLs for
>   * @encoder: encoder
> @@ -4396,9 +4396,9 @@ void intel_dpll_init(struct intel_display *display)
>   * Returns:
>   * 0 on success, negative error code on failure.
>   */
> -int intel_compute_dplls(struct intel_atomic_state *state,
> -			struct intel_crtc *crtc,
> -			struct intel_encoder *encoder)
> +int intel_dpll_compute(struct intel_atomic_state *state,
> +		       struct intel_crtc *crtc,
> +		       struct intel_encoder *encoder)
>  {
>  	struct intel_display *display = to_intel_display(state);
>  	const struct intel_dpll_mgr *dpll_mgr = display->dpll.mgr;
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> index 4f8074580582..c2658ad409e4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -396,9 +396,9 @@ void assert_dpll(struct intel_display *display,
>  		 bool state);
>  #define assert_dpll_enabled(d, p) assert_dpll(d, p, true)
>  #define assert_dpll_disabled(d, p) assert_dpll(d, p, false)
> -int intel_compute_dplls(struct intel_atomic_state *state,
> -			struct intel_crtc *crtc,
> -			struct intel_encoder *encoder);
> +int intel_dpll_compute(struct intel_atomic_state *state,
> +		       struct intel_crtc *crtc,
> +		       struct intel_encoder *encoder);
>  int intel_dpll_reserve(struct intel_atomic_state *state,
>  		       struct intel_crtc *crtc,
>  		       struct intel_encoder *encoder);

-- 
Jani Nikula, Intel
