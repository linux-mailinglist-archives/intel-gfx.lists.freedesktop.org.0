Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41886A30C95
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 14:12:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3C4710E0B7;
	Tue, 11 Feb 2025 13:12:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cp98Mpt4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5018810E0B7;
 Tue, 11 Feb 2025 13:12:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739279577; x=1770815577;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=wwQ54njcL7a6k05HMk1ASj0g5Zdeypsz38hU+ZgNgwo=;
 b=cp98Mpt4B8iK+ll6mbt5LunogLCGs6GBvz8W7E6QEvL2fhjh1cZTPmlh
 eh00hBY1jb8C3icrCtaUYLU7Ne1fHnFR4jM24QIiN5+tk+f15qe8aA990
 Z5eBPmGWn6On3AlMRky9QAj0utoQTuyShq9ShemIKmOOB5+EEHXD2UR/B
 jYfmGkKOpPfgOBXt++f5IKN4IX6E3y+ERDvBUIS7g5fAroXvfcfxeWs00
 d8uCstOPRdzjoS0azXhqmG7leZBw6WZPV6zDyBL136hABkRsmJde/QIyX
 vY0ao53k0Pn74m8M1SIJqLureXQCqBZ4oWdODOuH3UkO3L+pfhc1dfBy9 A==;
X-CSE-ConnectionGUID: 19l43bKUTW61H4EDmax7jA==
X-CSE-MsgGUID: zGyYzUu1SYGr3PdvvYYUYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="57305295"
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="57305295"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 05:12:56 -0800
X-CSE-ConnectionGUID: nGVfwKFER3utjafnjH+N+A==
X-CSE-MsgGUID: iQ5IJ2jLTwGa49EPC/ae+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="113027894"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.93])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 05:12:53 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH 7/9] drm/i915/dpll: Use intel_display for update_refclk
 hook
In-Reply-To: <20250211104857.3501566-8-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250211104857.3501566-1-suraj.kandpal@intel.com>
 <20250211104857.3501566-8-suraj.kandpal@intel.com>
Date: Tue, 11 Feb 2025 15:12:51 +0200
Message-ID: <87mses1v70.fsf@intel.com>
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

On Tue, 11 Feb 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Use intel_display instead of drm_i915_private for update_refclk hook.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  .../drm/i915/display/intel_display_driver.c   |  2 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 32 +++++++++----------
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  2 +-
>  3 files changed, 18 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index d448672fdfa4..978f530c810e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -453,7 +453,7 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
>  
>  	intel_update_czclk(i915);
>  	intel_display_driver_init_hw(display);
> -	intel_dpll_update_ref_clks(i915);
> +	intel_dpll_update_ref_clks(display);
>  
>  	if (display->cdclk.max_cdclk_freq == 0)
>  		intel_update_max_cdclk(display);
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 104054a6df56..f94da1ffc8ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -109,7 +109,7 @@ struct intel_dpll_mgr {
>  	void (*update_active_dpll)(struct intel_atomic_state *state,
>  				   struct intel_crtc *crtc,
>  				   struct intel_encoder *encoder);
> -	void (*update_ref_clks)(struct drm_i915_private *i915);
> +	void (*update_ref_clks)(struct intel_display *display);
>  	void (*dump_hw_state)(struct drm_printer *p,
>  			      const struct intel_dpll_hw_state *dpll_hw_state);
>  	bool (*compare_hw_state)(const struct intel_dpll_hw_state *a,
> @@ -1240,14 +1240,14 @@ static int hsw_get_dpll(struct intel_atomic_state *state,
>  	return 0;
>  }
>  
> -static void hsw_update_dpll_ref_clks(struct drm_i915_private *i915)
> +static void hsw_update_dpll_ref_clks(struct intel_display *display)
>  {
> -	i915->display.dpll.ref_clks.ssc = 135000;
> +	display->dpll.ref_clks.ssc = 135000;
>  	/* Non-SSC is only used on non-ULT HSW. */
> -	if (intel_de_read(i915, FUSE_STRAP3) & HSW_REF_CLK_SELECT)
> -		i915->display.dpll.ref_clks.nssc = 24000;
> +	if (intel_de_read(display, FUSE_STRAP3) & HSW_REF_CLK_SELECT)
> +		display->dpll.ref_clks.nssc = 24000;
>  	else
> -		i915->display.dpll.ref_clks.nssc = 135000;
> +		display->dpll.ref_clks.nssc = 135000;
>  }
>  
>  static void hsw_dump_hw_state(struct drm_printer *p,
> @@ -1977,10 +1977,10 @@ static int skl_ddi_pll_get_freq(struct intel_display *display,
>  		return skl_ddi_lcpll_get_freq(display, pll, dpll_hw_state);
>  }
>  
> -static void skl_update_dpll_ref_clks(struct drm_i915_private *i915)
> +static void skl_update_dpll_ref_clks(struct intel_display *display)
>  {
>  	/* No SSC ref */
> -	i915->display.dpll.ref_clks.nssc = i915->display.cdclk.hw.ref;
> +	display->dpll.ref_clks.nssc = display->cdclk.hw.ref;
>  }
>  
>  static void skl_dump_hw_state(struct drm_printer *p,
> @@ -2446,10 +2446,10 @@ static int bxt_get_dpll(struct intel_atomic_state *state,
>  	return 0;
>  }
>  
> -static void bxt_update_dpll_ref_clks(struct drm_i915_private *i915)
> +static void bxt_update_dpll_ref_clks(struct intel_display *display)
>  {
> -	i915->display.dpll.ref_clks.ssc = 100000;
> -	i915->display.dpll.ref_clks.nssc = 100000;
> +	display->dpll.ref_clks.ssc = 100000;
> +	display->dpll.ref_clks.nssc = 100000;
>  	/* DSI non-SSC ref 19.2MHz */
>  }
>  
> @@ -4078,10 +4078,10 @@ static void mg_pll_disable(struct intel_display *display,
>  	icl_pll_disable(display, pll, enable_reg);
>  }
>  
> -static void icl_update_dpll_ref_clks(struct drm_i915_private *i915)
> +static void icl_update_dpll_ref_clks(struct intel_display *display)
>  {
>  	/* No SSC ref */
> -	i915->display.dpll.ref_clks.nssc = i915->display.cdclk.hw.ref;
> +	display->dpll.ref_clks.nssc = display->cdclk.hw.ref;
>  }
>  
>  static void icl_dump_hw_state(struct drm_printer *p,
> @@ -4532,10 +4532,10 @@ static void readout_dpll_hw_state(struct intel_display *display,
>  		    pll->info->name, pll->state.pipe_mask, pll->on);
>  }
>  
> -void intel_dpll_update_ref_clks(struct drm_i915_private *i915)
> +void intel_dpll_update_ref_clks(struct intel_display *display)
>  {
> -	if (i915->display.dpll.mgr && i915->display.dpll.mgr->update_ref_clks)
> -		i915->display.dpll.mgr->update_ref_clks(i915);
> +	if (display->dpll.mgr && display->dpll.mgr->update_ref_clks)
> +		display->dpll.mgr->update_ref_clks(display);
>  }
>  
>  void intel_dpll_readout_hw_state(struct intel_display *display)
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> index b6f2cbce13e4..3d988f17f31d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -423,7 +423,7 @@ void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state);
>  void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state);
>  void intel_shared_dpll_swap_state(struct intel_atomic_state *state);
>  void intel_shared_dpll_init(struct drm_i915_private *i915);
> -void intel_dpll_update_ref_clks(struct drm_i915_private *i915);
> +void intel_dpll_update_ref_clks(struct intel_display *display);
>  void intel_dpll_readout_hw_state(struct intel_display *display);
>  void intel_dpll_sanitize_state(struct intel_display *display);

-- 
Jani Nikula, Intel
