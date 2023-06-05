Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8F2722AA6
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jun 2023 17:14:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4501210E2B8;
	Mon,  5 Jun 2023 15:14:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5088910E2B8
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Jun 2023 15:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685978086; x=1717514086;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=W4IKg0oNQ/Ya6Vt+GlBo0IGMp8fMh/LSqoG8dxUfVJE=;
 b=E7z1kC7i4hDxoIMrg/84uHQfFOSBsjokB4rccGFWenFlNnHbmL39jwSF
 5zmONZPlIfRxfiRkWCKP38f0OPRf3LbEPVl1238zESSbw1X/M0fsedde1
 yXLxJ/RKC95s4rT79H2pZSJHlK5W+/FgDwjxR7Cu+a854ySk9ofWOi6SU
 2q8OPo0GlcUy8zkgeFn6rOjISh2Xownrzhkf91Ht7Nftimre23ZiD1ewV
 cR0wCZiwi2ZW5p92Nwd4M+Gna9HeXYfzHvj+Ul7uHuCpTXlw/BrnZgK+Z
 qbya2RtQXib5B142UcQqBn3/xxYyJl3CCAfIWp5My+LSGocAXVmc9wZ5O w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="345987053"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="345987053"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 08:13:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="659129201"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="659129201"
Received: from moelschl-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.32.122])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 08:13:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230530185529.3378520-2-anusha.srivatsa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230530185529.3378520-1-anusha.srivatsa@intel.com>
 <20230530185529.3378520-2-anusha.srivatsa@intel.com>
Date: Mon, 05 Jun 2023 18:13:49 +0300
Message-ID: <87o7luaqmq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/adlp: s/ADLP/ALDERLAKE_P for
 display and graphics step
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

On Tue, 30 May 2023, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> Driver refers to the platfrom Alderlake P as ADLP in places
> and ALDERLAKE_P in some. Making the consistent change
> to avoid confusion of the right naming convention for
> the platform.

$ git grep "#define IS_.*_DISPLAY_STEP" -- drivers/gpu/drm/i915/i915_drv.h
drivers/gpu/drm/i915/i915_drv.h:#define IS_KBL_DISPLAY_STEP(i915, since, until) \
drivers/gpu/drm/i915/i915_drv.h:#define IS_JSL_EHL_DISPLAY_STEP(p, since, until) \
drivers/gpu/drm/i915/i915_drv.h:#define IS_TGL_DISPLAY_STEP(__i915, since, until) \
drivers/gpu/drm/i915/i915_drv.h:#define IS_RKL_DISPLAY_STEP(p, since, until) \
drivers/gpu/drm/i915/i915_drv.h:#define IS_ADLS_DISPLAY_STEP(__i915, since, until) \
drivers/gpu/drm/i915/i915_drv.h:#define IS_ADLP_DISPLAY_STEP(__i915, since, until) \
drivers/gpu/drm/i915/i915_drv.h:#define IS_MTL_DISPLAY_STEP(__i915, since, until) \
drivers/gpu/drm/i915/i915_drv.h:#define IS_DG2_DISPLAY_STEP(__i915, since, until) \

They all use the acronym. Do you suggest to rename all of them, or just
ADL-P?

BR,
Jani.



>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c         | 2 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c      | 2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c           | 8 ++++----
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 4 ++--
>  drivers/gpu/drm/i915/i915_drv.h                    | 4 ++--
>  5 files changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 6bed75f1541a..013678caaca8 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -3541,7 +3541,7 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
>  	} else if (IS_ALDERLAKE_P(dev_priv)) {
>  		dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
>  		/* Wa_22011320316:adl-p[a0] */
> -		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> +		if (IS_ALDERLAKE_P_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>  			dev_priv->display.cdclk.table = adlp_a_step_cdclk_table;
>  		else if (IS_ADLP_RPLU(dev_priv))
>  			dev_priv->display.cdclk.table = rplu_cdclk_table;
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 6b2d8a1e2aa9..81f3ce5a0a1e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -3781,7 +3781,7 @@ static void adlp_cmtg_clock_gating_wa(struct drm_i915_private *i915, struct inte
>  {
>  	u32 val;
>  
> -	if (!IS_ADLP_DISPLAY_STEP(i915, STEP_A0, STEP_B0) ||
> +	if (!IS_ALDERLAKE_P_DISPLAY_STEP(i915, STEP_A0, STEP_B0) ||
>  	    pll->info->id != DPLL_ID_ICL_DPLL0)
>  		return;
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index ea0389c5f656..c25457dae315 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -639,7 +639,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
>  	}
>  
>  	/* Wa_22012278275:adl-p */
> -	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_E0)) {
> +	if (IS_ALDERLAKE_P_DISPLAY_STEP(dev_priv, STEP_A0, STEP_E0)) {
>  		static const u8 map[] = {
>  			2, /* 5 lines */
>  			1, /* 6 lines */
> @@ -807,7 +807,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
>  		return;
>  
>  	/* Wa_16011303918:adl-p */
> -	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> +	if (IS_ALDERLAKE_P_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>  		return;
>  
>  	/*
> @@ -975,7 +975,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
>  		return false;
>  	}
>  
> -	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
> +	if (IS_ALDERLAKE_P_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
>  		drm_dbg_kms(&dev_priv->drm, "PSR2 not completely functional in this stepping\n");
>  		return false;
>  	}
> @@ -1033,7 +1033,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
>  
>  	/* Wa_16011303918:adl-p */
>  	if (crtc_state->vrr.enable &&
> -	    IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
> +	    IS_ALDERLAKE_P_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "PSR2 not enabled, not compatible with HW stepping + VRR\n");
>  		return false;
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 36070d86550f..2019e0a87bd3 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2174,7 +2174,7 @@ static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
>  		return false;
>  
>  	/* Wa_22011186057 */
> -	if (IS_ADLP_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
> +	if (IS_ALDERLAKE_P_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
>  		return false;
>  
>  	if (DISPLAY_VER(i915) >= 11)
> @@ -2200,7 +2200,7 @@ static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
>  		return false;
>  
>  	/* Wa_22011186057 */
> -	if (IS_ADLP_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
> +	if (IS_ALDERLAKE_P_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
>  		return false;
>  
>  	/* Wa_14013215631 */
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index f1205ed3ba71..1a50b8b2f00d 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -669,11 +669,11 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	(IS_ALDERLAKE_S(__i915) && \
>  	 IS_GRAPHICS_STEP(__i915, since, until))
>  
> -#define IS_ADLP_DISPLAY_STEP(__i915, since, until) \
> +#define IS_ALDERLAKE_P_DISPLAY_STEP(__i915, since, until) \
>  	(IS_ALDERLAKE_P(__i915) && \
>  	 IS_DISPLAY_STEP(__i915, since, until))
>  
> -#define IS_ADLP_GRAPHICS_STEP(__i915, since, until) \
> +#define IS_ALDERLAKE_P_GRAPHICS_STEP(__i915, since, until) \
>  	(IS_ALDERLAKE_P(__i915) && \
>  	 IS_GRAPHICS_STEP(__i915, since, until))

-- 
Jani Nikula, Intel Open Source Graphics Center
