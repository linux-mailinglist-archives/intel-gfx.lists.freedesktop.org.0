Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2252340374A
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 11:52:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F0816E174;
	Wed,  8 Sep 2021 09:52:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B7E46E174
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 09:52:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="220121774"
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="220121774"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 02:52:39 -0700
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="547620632"
Received: from mdoerbec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.33.106])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 02:52:37 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@redhat.com>
In-Reply-To: <20210908003944.2972024-9-airlied@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210908003944.2972024-1-airlied@gmail.com>
 <20210908003944.2972024-9-airlied@gmail.com>
Date: Wed, 08 Sep 2021 12:52:34 +0300
Message-ID: <87fsuf75st.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 08/21] drm/i915: split cdclk functions from
 display vtable.
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

On Wed, 08 Sep 2021, Dave Airlie <airlied@gmail.com> wrote:
> From: Dave Airlie <airlied@redhat.com>

Commit message.

>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 148 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
>  .../drm/i915/display/intel_display_power.c    |   2 +-
>  drivers/gpu/drm/i915/i915_drv.h               |   8 +-
>  4 files changed, 83 insertions(+), 77 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 34fa4130d5c4..c12b4e6bf5f5 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1466,7 +1466,7 @@ static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
>  	 * at least what the CDCLK frequency requires.
>  	 */
>  	cdclk_config->voltage_level =
> -		dev_priv->display.calc_voltage_level(cdclk_config->cdclk);
> +		dev_priv->cdclk_funcs.calc_voltage_level(cdclk_config->cdclk);
>  }
>  
>  static void bxt_de_pll_disable(struct drm_i915_private *dev_priv)
> @@ -1777,7 +1777,7 @@ static void bxt_cdclk_init_hw(struct drm_i915_private *dev_priv)
>  	cdclk_config.cdclk = bxt_calc_cdclk(dev_priv, 0);
>  	cdclk_config.vco = bxt_calc_cdclk_pll_vco(dev_priv, cdclk_config.cdclk);
>  	cdclk_config.voltage_level =
> -		dev_priv->display.calc_voltage_level(cdclk_config.cdclk);
> +		dev_priv->cdclk_funcs.calc_voltage_level(cdclk_config.cdclk);
>  
>  	bxt_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
>  }
> @@ -1789,7 +1789,7 @@ static void bxt_cdclk_uninit_hw(struct drm_i915_private *dev_priv)
>  	cdclk_config.cdclk = cdclk_config.bypass;
>  	cdclk_config.vco = 0;
>  	cdclk_config.voltage_level =
> -		dev_priv->display.calc_voltage_level(cdclk_config.cdclk);
> +		dev_priv->cdclk_funcs.calc_voltage_level(cdclk_config.cdclk);
>  
>  	bxt_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
>  }
> @@ -1932,7 +1932,7 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
>  	if (!intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_config))
>  		return;
>  
> -	if (drm_WARN_ON_ONCE(&dev_priv->drm, !dev_priv->display.set_cdclk))
> +	if (drm_WARN_ON_ONCE(&dev_priv->drm, !dev_priv->cdclk_funcs.set_cdclk))
>  		return;
>  
>  	intel_dump_cdclk_config(cdclk_config, "Changing CDCLK to");
> @@ -1956,7 +1956,7 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
>  				     &dev_priv->gmbus_mutex);
>  	}
>  
> -	dev_priv->display.set_cdclk(dev_priv, cdclk_config, pipe);
> +	dev_priv->cdclk_funcs.set_cdclk(dev_priv, cdclk_config, pipe);
>  
>  	for_each_intel_dp(&dev_priv->drm, encoder) {
>  		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> @@ -2414,7 +2414,7 @@ static int bxt_modeset_calc_cdclk(struct intel_cdclk_state *cdclk_state)
>  	cdclk_state->logical.cdclk = cdclk;
>  	cdclk_state->logical.voltage_level =
>  		max_t(int, min_voltage_level,
> -		      dev_priv->display.calc_voltage_level(cdclk));
> +		      dev_priv->cdclk_funcs.calc_voltage_level(cdclk));
>  
>  	if (!cdclk_state->active_pipes) {
>  		cdclk = bxt_calc_cdclk(dev_priv, cdclk_state->force_min_cdclk);
> @@ -2423,7 +2423,7 @@ static int bxt_modeset_calc_cdclk(struct intel_cdclk_state *cdclk_state)
>  		cdclk_state->actual.vco = vco;
>  		cdclk_state->actual.cdclk = cdclk;
>  		cdclk_state->actual.voltage_level =
> -			dev_priv->display.calc_voltage_level(cdclk);
> +			dev_priv->cdclk_funcs.calc_voltage_level(cdclk);
>  	} else {
>  		cdclk_state->actual = cdclk_state->logical;
>  	}
> @@ -2515,7 +2515,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
>  	new_cdclk_state->active_pipes =
>  		intel_calc_active_pipes(state, old_cdclk_state->active_pipes);
>  
> -	ret = dev_priv->display.modeset_calc_cdclk(new_cdclk_state);
> +	ret = dev_priv->cdclk_funcs.modeset_calc_cdclk(new_cdclk_state);
>  	if (ret)
>  		return ret;
>  
> @@ -2695,7 +2695,7 @@ void intel_update_max_cdclk(struct drm_i915_private *dev_priv)
>   */
>  void intel_update_cdclk(struct drm_i915_private *dev_priv)
>  {
> -	dev_priv->display.get_cdclk(dev_priv, &dev_priv->cdclk.hw);
> +	dev_priv->cdclk_funcs.get_cdclk(dev_priv, &dev_priv->cdclk.hw);
>  
>  	/*
>  	 * 9:0 CMBUS [sic] CDCLK frequency (cdfreq):
> @@ -2852,119 +2852,119 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
>  void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
>  {
>  	if (IS_DG2(dev_priv)) {
> -		dev_priv->display.set_cdclk = bxt_set_cdclk;
> -		dev_priv->display.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
> -		dev_priv->display.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
> -		dev_priv->display.calc_voltage_level = tgl_calc_voltage_level;
> +		dev_priv->cdclk_funcs.set_cdclk = bxt_set_cdclk;
> +		dev_priv->cdclk_funcs.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
> +		dev_priv->cdclk_funcs.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
> +		dev_priv->cdclk_funcs.calc_voltage_level = tgl_calc_voltage_level;
>  		dev_priv->cdclk.table = dg2_cdclk_table;
>  	} else if (IS_ALDERLAKE_P(dev_priv)) {
> -		dev_priv->display.set_cdclk = bxt_set_cdclk;
> -		dev_priv->display.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
> -		dev_priv->display.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
> -		dev_priv->display.calc_voltage_level = tgl_calc_voltage_level;
> +		dev_priv->cdclk_funcs.set_cdclk = bxt_set_cdclk;
> +		dev_priv->cdclk_funcs.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
> +		dev_priv->cdclk_funcs.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
> +		dev_priv->cdclk_funcs.calc_voltage_level = tgl_calc_voltage_level;
>  		/* Wa_22011320316:adl-p[a0] */
>  		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>  			dev_priv->cdclk.table = adlp_a_step_cdclk_table;
>  		else
>  			dev_priv->cdclk.table = adlp_cdclk_table;
>  	} else if (IS_ROCKETLAKE(dev_priv)) {
> -		dev_priv->display.set_cdclk = bxt_set_cdclk;
> -		dev_priv->display.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
> -		dev_priv->display.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
> -		dev_priv->display.calc_voltage_level = tgl_calc_voltage_level;
> +		dev_priv->cdclk_funcs.set_cdclk = bxt_set_cdclk;
> +		dev_priv->cdclk_funcs.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
> +		dev_priv->cdclk_funcs.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
> +		dev_priv->cdclk_funcs.calc_voltage_level = tgl_calc_voltage_level;
>  		dev_priv->cdclk.table = rkl_cdclk_table;
>  	} else if (DISPLAY_VER(dev_priv) >= 12) {
> -		dev_priv->display.set_cdclk = bxt_set_cdclk;
> -		dev_priv->display.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
> -		dev_priv->display.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
> -		dev_priv->display.calc_voltage_level = tgl_calc_voltage_level;
> +		dev_priv->cdclk_funcs.set_cdclk = bxt_set_cdclk;
> +		dev_priv->cdclk_funcs.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
> +		dev_priv->cdclk_funcs.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
> +		dev_priv->cdclk_funcs.calc_voltage_level = tgl_calc_voltage_level;
>  		dev_priv->cdclk.table = icl_cdclk_table;
>  	} else if (IS_JSL_EHL(dev_priv)) {
> -		dev_priv->display.set_cdclk = bxt_set_cdclk;
> -		dev_priv->display.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
> -		dev_priv->display.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
> -		dev_priv->display.calc_voltage_level = ehl_calc_voltage_level;
> +		dev_priv->cdclk_funcs.set_cdclk = bxt_set_cdclk;
> +		dev_priv->cdclk_funcs.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
> +		dev_priv->cdclk_funcs.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
> +		dev_priv->cdclk_funcs.calc_voltage_level = ehl_calc_voltage_level;
>  		dev_priv->cdclk.table = icl_cdclk_table;
>  	} else if (DISPLAY_VER(dev_priv) >= 11) {
> -		dev_priv->display.set_cdclk = bxt_set_cdclk;
> -		dev_priv->display.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
> -		dev_priv->display.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
> -		dev_priv->display.calc_voltage_level = icl_calc_voltage_level;
> +		dev_priv->cdclk_funcs.set_cdclk = bxt_set_cdclk;
> +		dev_priv->cdclk_funcs.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
> +		dev_priv->cdclk_funcs.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
> +		dev_priv->cdclk_funcs.calc_voltage_level = icl_calc_voltage_level;
>  		dev_priv->cdclk.table = icl_cdclk_table;
>  	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
> -		dev_priv->display.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
> -		dev_priv->display.set_cdclk = bxt_set_cdclk;
> -		dev_priv->display.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
> -		dev_priv->display.calc_voltage_level = bxt_calc_voltage_level;
> +		dev_priv->cdclk_funcs.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
> +		dev_priv->cdclk_funcs.set_cdclk = bxt_set_cdclk;
> +		dev_priv->cdclk_funcs.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
> +		dev_priv->cdclk_funcs.calc_voltage_level = bxt_calc_voltage_level;
>  		if (IS_GEMINILAKE(dev_priv))
>  			dev_priv->cdclk.table = glk_cdclk_table;
>  		else
>  			dev_priv->cdclk.table = bxt_cdclk_table;
>  	} else if (DISPLAY_VER(dev_priv) == 9) {
> -		dev_priv->display.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
> -		dev_priv->display.set_cdclk = skl_set_cdclk;
> -		dev_priv->display.modeset_calc_cdclk = skl_modeset_calc_cdclk;
> +		dev_priv->cdclk_funcs.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
> +		dev_priv->cdclk_funcs.set_cdclk = skl_set_cdclk;
> +		dev_priv->cdclk_funcs.modeset_calc_cdclk = skl_modeset_calc_cdclk;
>  	} else if (IS_BROADWELL(dev_priv)) {
> -		dev_priv->display.bw_calc_min_cdclk = intel_bw_calc_min_cdclk;
> -		dev_priv->display.set_cdclk = bdw_set_cdclk;
> -		dev_priv->display.modeset_calc_cdclk = bdw_modeset_calc_cdclk;
> +		dev_priv->cdclk_funcs.bw_calc_min_cdclk = intel_bw_calc_min_cdclk;
> +		dev_priv->cdclk_funcs.set_cdclk = bdw_set_cdclk;
> +		dev_priv->cdclk_funcs.modeset_calc_cdclk = bdw_modeset_calc_cdclk;
>  	} else if (IS_CHERRYVIEW(dev_priv)) {
> -		dev_priv->display.bw_calc_min_cdclk = intel_bw_calc_min_cdclk;
> -		dev_priv->display.set_cdclk = chv_set_cdclk;
> -		dev_priv->display.modeset_calc_cdclk = vlv_modeset_calc_cdclk;
> +		dev_priv->cdclk_funcs.bw_calc_min_cdclk = intel_bw_calc_min_cdclk;
> +		dev_priv->cdclk_funcs.set_cdclk = chv_set_cdclk;
> +		dev_priv->cdclk_funcs.modeset_calc_cdclk = vlv_modeset_calc_cdclk;
>  	} else if (IS_VALLEYVIEW(dev_priv)) {
> -		dev_priv->display.bw_calc_min_cdclk = intel_bw_calc_min_cdclk;
> -		dev_priv->display.set_cdclk = vlv_set_cdclk;
> -		dev_priv->display.modeset_calc_cdclk = vlv_modeset_calc_cdclk;
> +		dev_priv->cdclk_funcs.bw_calc_min_cdclk = intel_bw_calc_min_cdclk;
> +		dev_priv->cdclk_funcs.set_cdclk = vlv_set_cdclk;
> +		dev_priv->cdclk_funcs.modeset_calc_cdclk = vlv_modeset_calc_cdclk;
>  	} else {
> -		dev_priv->display.bw_calc_min_cdclk = intel_bw_calc_min_cdclk;
> -		dev_priv->display.modeset_calc_cdclk = fixed_modeset_calc_cdclk;
> +		dev_priv->cdclk_funcs.bw_calc_min_cdclk = intel_bw_calc_min_cdclk;
> +		dev_priv->cdclk_funcs.modeset_calc_cdclk = fixed_modeset_calc_cdclk;
>  	}
>  
>  	if (DISPLAY_VER(dev_priv) >= 10 || IS_BROXTON(dev_priv))
> -		dev_priv->display.get_cdclk = bxt_get_cdclk;
> +		dev_priv->cdclk_funcs.get_cdclk = bxt_get_cdclk;
>  	else if (DISPLAY_VER(dev_priv) == 9)
> -		dev_priv->display.get_cdclk = skl_get_cdclk;
> +		dev_priv->cdclk_funcs.get_cdclk = skl_get_cdclk;
>  	else if (IS_BROADWELL(dev_priv))
> -		dev_priv->display.get_cdclk = bdw_get_cdclk;
> +		dev_priv->cdclk_funcs.get_cdclk = bdw_get_cdclk;
>  	else if (IS_HASWELL(dev_priv))
> -		dev_priv->display.get_cdclk = hsw_get_cdclk;
> +		dev_priv->cdclk_funcs.get_cdclk = hsw_get_cdclk;
>  	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> -		dev_priv->display.get_cdclk = vlv_get_cdclk;
> +		dev_priv->cdclk_funcs.get_cdclk = vlv_get_cdclk;
>  	else if (IS_SANDYBRIDGE(dev_priv) || IS_IVYBRIDGE(dev_priv))
> -		dev_priv->display.get_cdclk = fixed_400mhz_get_cdclk;
> +		dev_priv->cdclk_funcs.get_cdclk = fixed_400mhz_get_cdclk;
>  	else if (IS_IRONLAKE(dev_priv))
> -		dev_priv->display.get_cdclk = fixed_450mhz_get_cdclk;
> +		dev_priv->cdclk_funcs.get_cdclk = fixed_450mhz_get_cdclk;
>  	else if (IS_GM45(dev_priv))
> -		dev_priv->display.get_cdclk = gm45_get_cdclk;
> +		dev_priv->cdclk_funcs.get_cdclk = gm45_get_cdclk;
>  	else if (IS_G45(dev_priv))
> -		dev_priv->display.get_cdclk = g33_get_cdclk;
> +		dev_priv->cdclk_funcs.get_cdclk = g33_get_cdclk;
>  	else if (IS_I965GM(dev_priv))
> -		dev_priv->display.get_cdclk = i965gm_get_cdclk;
> +		dev_priv->cdclk_funcs.get_cdclk = i965gm_get_cdclk;
>  	else if (IS_I965G(dev_priv))
> -		dev_priv->display.get_cdclk = fixed_400mhz_get_cdclk;
> +		dev_priv->cdclk_funcs.get_cdclk = fixed_400mhz_get_cdclk;
>  	else if (IS_PINEVIEW(dev_priv))
> -		dev_priv->display.get_cdclk = pnv_get_cdclk;
> +		dev_priv->cdclk_funcs.get_cdclk = pnv_get_cdclk;
>  	else if (IS_G33(dev_priv))
> -		dev_priv->display.get_cdclk = g33_get_cdclk;
> +		dev_priv->cdclk_funcs.get_cdclk = g33_get_cdclk;
>  	else if (IS_I945GM(dev_priv))
> -		dev_priv->display.get_cdclk = i945gm_get_cdclk;
> +		dev_priv->cdclk_funcs.get_cdclk = i945gm_get_cdclk;
>  	else if (IS_I945G(dev_priv))
> -		dev_priv->display.get_cdclk = fixed_400mhz_get_cdclk;
> +		dev_priv->cdclk_funcs.get_cdclk = fixed_400mhz_get_cdclk;
>  	else if (IS_I915GM(dev_priv))
> -		dev_priv->display.get_cdclk = i915gm_get_cdclk;
> +		dev_priv->cdclk_funcs.get_cdclk = i915gm_get_cdclk;
>  	else if (IS_I915G(dev_priv))
> -		dev_priv->display.get_cdclk = fixed_333mhz_get_cdclk;
> +		dev_priv->cdclk_funcs.get_cdclk = fixed_333mhz_get_cdclk;
>  	else if (IS_I865G(dev_priv))
> -		dev_priv->display.get_cdclk = fixed_266mhz_get_cdclk;
> +		dev_priv->cdclk_funcs.get_cdclk = fixed_266mhz_get_cdclk;
>  	else if (IS_I85X(dev_priv))
> -		dev_priv->display.get_cdclk = i85x_get_cdclk;
> +		dev_priv->cdclk_funcs.get_cdclk = i85x_get_cdclk;
>  	else if (IS_I845G(dev_priv))
> -		dev_priv->display.get_cdclk = fixed_200mhz_get_cdclk;
> +		dev_priv->cdclk_funcs.get_cdclk = fixed_200mhz_get_cdclk;
>  	else if (IS_I830(dev_priv))
> -		dev_priv->display.get_cdclk = fixed_133mhz_get_cdclk;
> +		dev_priv->cdclk_funcs.get_cdclk = fixed_133mhz_get_cdclk;
>  
> -	if (drm_WARN(&dev_priv->drm, !dev_priv->display.get_cdclk,
> +	if (drm_WARN(&dev_priv->drm, !dev_priv->cdclk_funcs.get_cdclk,
>  		     "Unknown platform. Assuming 133 MHz CDCLK\n"))
> -		dev_priv->display.get_cdclk = fixed_133mhz_get_cdclk;
> +		dev_priv->cdclk_funcs.get_cdclk = fixed_133mhz_get_cdclk;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index b1202ede3fb0..ccd0332e7945 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -9120,7 +9120,7 @@ static int intel_atomic_check_cdclk(struct intel_atomic_state *state,
>  	    old_cdclk_state->force_min_cdclk != new_cdclk_state->force_min_cdclk)
>  		*need_cdclk_calc = true;
>  
> -	ret = dev_priv->display.bw_calc_min_cdclk(state);
> +	ret = dev_priv->cdclk_funcs.bw_calc_min_cdclk(state);
>  	if (ret)
>  		return ret;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index cce1a926fcc1..2cf420c06ed6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1195,7 +1195,7 @@ static void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
>  	if (!HAS_DISPLAY(dev_priv))
>  		return;
>  
> -	dev_priv->display.get_cdclk(dev_priv, &cdclk_config);
> +	dev_priv->cdclk_funcs.get_cdclk(dev_priv, &cdclk_config);
>  	/* Can't read out voltage_level so can't use intel_cdclk_changed() */
>  	drm_WARN_ON(&dev_priv->drm,
>  		    intel_cdclk_needs_modeset(&dev_priv->cdclk.hw,
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 3e60bf8182e3..fbe92f248d05 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -373,7 +373,7 @@ struct drm_i915_display_audio_funcs {
>  				    const struct drm_connector_state *old_conn_state);
>  };
>  
> -struct drm_i915_display_funcs {
> +struct drm_i915_display_cdclk_funcs {

Nitpick, struct intel_cdclk_funcs.

intel_cdclk_*() wrappers for ->get_cdclk and ->bw_calc_min_cdclk would
be nice, as those are the ones that get called outside of intel_cdclk.c.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>  	void (*get_cdclk)(struct drm_i915_private *dev_priv,
>  			  struct intel_cdclk_config *cdclk_config);
>  	void (*set_cdclk)(struct drm_i915_private *dev_priv,
> @@ -382,6 +382,9 @@ struct drm_i915_display_funcs {
>  	int (*bw_calc_min_cdclk)(struct intel_atomic_state *state);
>  	int (*modeset_calc_cdclk)(struct intel_cdclk_state *state);
>  	u8 (*calc_voltage_level)(int cdclk);
> +};
> +
> +struct drm_i915_display_funcs {
>  	/* Returns the active state of the crtc, and if the crtc is active,
>  	 * fills out the pipe-config with the hw state. */
>  	bool (*get_pipe_config)(struct intel_crtc *,
> @@ -999,6 +1002,9 @@ struct drm_i915_private {
>  	/* Display internal audio functions */
>  	struct drm_i915_display_audio_funcs audio_funcs;
>  
> +	/* Display CDCLK functions */
> +	struct drm_i915_display_cdclk_funcs cdclk_funcs;
> +
>  	/* PCH chipset type */
>  	enum intel_pch pch_type;
>  	unsigned short pch_id;

-- 
Jani Nikula, Intel Open Source Graphics Center
