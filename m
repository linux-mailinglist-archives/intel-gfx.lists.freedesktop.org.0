Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 485C94017BA
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Sep 2021 10:18:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E493B89811;
	Mon,  6 Sep 2021 08:18:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE18A8980C
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Sep 2021 08:18:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10098"; a="219934897"
X-IronPort-AV: E=Sophos;i="5.85,271,1624345200"; d="scan'208";a="219934897"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2021 01:18:33 -0700
X-IronPort-AV: E=Sophos;i="5.85,271,1624345200"; d="scan'208";a="536623277"
Received: from isandweg-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.251.212.194])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2021 01:18:29 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Cc: "Syrjala\, Ville" <ville.syrjala@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>
In-Reply-To: <20210906034356.2946530-2-airlied@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210906034356.2946530-1-airlied@gmail.com>
 <20210906034356.2946530-2-airlied@gmail.com>
Date: Mon, 06 Sep 2021 11:18:26 +0300
Message-ID: <87mtoq86ct.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 01/10] drm/i915: move display funcs into a
 display struct.
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

On Mon, 06 Sep 2021, Dave Airlie <airlied@gmail.com> wrote:
> From: Dave Airlie <airlied@redhat.com>
>
> This is the first step in an idea to refactor the display code
> into a bit more of a corner.

So, do we want to make i915->display a pointer?

If we do, and we're about to touch every place accessing the display
struct, we might just as well have:

struct drm_i915_private {
	struct drm_i915_display _display;
        struct drm_i915_display *display;
};

and initialize i915->display = &i915->_display, and make all access
happen via the pointer. If we want to allocate it dynamically at some
point, it'll be a *much* easier task.

But the first question to figure out is whether we want to do that or
not.


BR,
Jani.


>
> Signed-off-by: Dave Airlie <airlied@redhat.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c    |  24 +--
>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 148 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_color.c    |  64 ++++----
>  drivers/gpu/drm/i915/display/intel_display.c  | 110 ++++++-------
>  .../drm/i915/display/intel_display_power.c    |   2 +-
>  drivers/gpu/drm/i915/display/intel_dpll.c     |  16 +-
>  drivers/gpu/drm/i915/display/intel_fdi.c      |   6 +-
>  drivers/gpu/drm/i915/display/intel_hotplug.c  |   4 +-
>  drivers/gpu/drm/i915/i915_drv.h               |  10 +-
>  drivers/gpu/drm/i915/i915_irq.c               |  14 +-
>  drivers/gpu/drm/i915/intel_pm.c               | 104 ++++++------
>  11 files changed, 253 insertions(+), 249 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 532237588511..fd56191c8a68 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -848,8 +848,8 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
>  
>  	connector->eld[6] = drm_av_sync_delay(connector, adjusted_mode) / 2;
>  
> -	if (dev_priv->display.audio_codec_enable)
> -		dev_priv->display.audio_codec_enable(encoder,
> +	if (dev_priv->display.funcs.audio_codec_enable)
> +		dev_priv->display.funcs.audio_codec_enable(encoder,
>  						     crtc_state,
>  						     conn_state);
>  
> @@ -893,8 +893,8 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
>  	enum port port = encoder->port;
>  	enum pipe pipe = crtc->pipe;
>  
> -	if (dev_priv->display.audio_codec_disable)
> -		dev_priv->display.audio_codec_disable(encoder,
> +	if (dev_priv->display.funcs.audio_codec_disable)
> +		dev_priv->display.funcs.audio_codec_disable(encoder,
>  						      old_crtc_state,
>  						      old_conn_state);
>  
> @@ -922,17 +922,17 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
>  void intel_init_audio_hooks(struct drm_i915_private *dev_priv)
>  {
>  	if (IS_G4X(dev_priv)) {
> -		dev_priv->display.audio_codec_enable = g4x_audio_codec_enable;
> -		dev_priv->display.audio_codec_disable = g4x_audio_codec_disable;
> +		dev_priv->display.funcs.audio_codec_enable = g4x_audio_codec_enable;
> +		dev_priv->display.funcs.audio_codec_disable = g4x_audio_codec_disable;
>  	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> -		dev_priv->display.audio_codec_enable = ilk_audio_codec_enable;
> -		dev_priv->display.audio_codec_disable = ilk_audio_codec_disable;
> +		dev_priv->display.funcs.audio_codec_enable = ilk_audio_codec_enable;
> +		dev_priv->display.funcs.audio_codec_disable = ilk_audio_codec_disable;
>  	} else if (IS_HASWELL(dev_priv) || DISPLAY_VER(dev_priv) >= 8) {
> -		dev_priv->display.audio_codec_enable = hsw_audio_codec_enable;
> -		dev_priv->display.audio_codec_disable = hsw_audio_codec_disable;
> +		dev_priv->display.funcs.audio_codec_enable = hsw_audio_codec_enable;
> +		dev_priv->display.funcs.audio_codec_disable = hsw_audio_codec_disable;
>  	} else if (HAS_PCH_SPLIT(dev_priv)) {
> -		dev_priv->display.audio_codec_enable = ilk_audio_codec_enable;
> -		dev_priv->display.audio_codec_disable = ilk_audio_codec_disable;
> +		dev_priv->display.funcs.audio_codec_enable = ilk_audio_codec_enable;
> +		dev_priv->display.funcs.audio_codec_disable = ilk_audio_codec_disable;
>  	}
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 34fa4130d5c4..becbf0fc4c4d 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1466,7 +1466,7 @@ static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
>  	 * at least what the CDCLK frequency requires.
>  	 */
>  	cdclk_config->voltage_level =
> -		dev_priv->display.calc_voltage_level(cdclk_config->cdclk);
> +		dev_priv->display.funcs.calc_voltage_level(cdclk_config->cdclk);
>  }
>  
>  static void bxt_de_pll_disable(struct drm_i915_private *dev_priv)
> @@ -1777,7 +1777,7 @@ static void bxt_cdclk_init_hw(struct drm_i915_private *dev_priv)
>  	cdclk_config.cdclk = bxt_calc_cdclk(dev_priv, 0);
>  	cdclk_config.vco = bxt_calc_cdclk_pll_vco(dev_priv, cdclk_config.cdclk);
>  	cdclk_config.voltage_level =
> -		dev_priv->display.calc_voltage_level(cdclk_config.cdclk);
> +		dev_priv->display.funcs.calc_voltage_level(cdclk_config.cdclk);
>  
>  	bxt_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
>  }
> @@ -1789,7 +1789,7 @@ static void bxt_cdclk_uninit_hw(struct drm_i915_private *dev_priv)
>  	cdclk_config.cdclk = cdclk_config.bypass;
>  	cdclk_config.vco = 0;
>  	cdclk_config.voltage_level =
> -		dev_priv->display.calc_voltage_level(cdclk_config.cdclk);
> +		dev_priv->display.funcs.calc_voltage_level(cdclk_config.cdclk);
>  
>  	bxt_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
>  }
> @@ -1932,7 +1932,7 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
>  	if (!intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_config))
>  		return;
>  
> -	if (drm_WARN_ON_ONCE(&dev_priv->drm, !dev_priv->display.set_cdclk))
> +	if (drm_WARN_ON_ONCE(&dev_priv->drm, !dev_priv->display.funcs.set_cdclk))
>  		return;
>  
>  	intel_dump_cdclk_config(cdclk_config, "Changing CDCLK to");
> @@ -1956,7 +1956,7 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
>  				     &dev_priv->gmbus_mutex);
>  	}
>  
> -	dev_priv->display.set_cdclk(dev_priv, cdclk_config, pipe);
> +	dev_priv->display.funcs.set_cdclk(dev_priv, cdclk_config, pipe);
>  
>  	for_each_intel_dp(&dev_priv->drm, encoder) {
>  		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> @@ -2414,7 +2414,7 @@ static int bxt_modeset_calc_cdclk(struct intel_cdclk_state *cdclk_state)
>  	cdclk_state->logical.cdclk = cdclk;
>  	cdclk_state->logical.voltage_level =
>  		max_t(int, min_voltage_level,
> -		      dev_priv->display.calc_voltage_level(cdclk));
> +		      dev_priv->display.funcs.calc_voltage_level(cdclk));
>  
>  	if (!cdclk_state->active_pipes) {
>  		cdclk = bxt_calc_cdclk(dev_priv, cdclk_state->force_min_cdclk);
> @@ -2423,7 +2423,7 @@ static int bxt_modeset_calc_cdclk(struct intel_cdclk_state *cdclk_state)
>  		cdclk_state->actual.vco = vco;
>  		cdclk_state->actual.cdclk = cdclk;
>  		cdclk_state->actual.voltage_level =
> -			dev_priv->display.calc_voltage_level(cdclk);
> +			dev_priv->display.funcs.calc_voltage_level(cdclk);
>  	} else {
>  		cdclk_state->actual = cdclk_state->logical;
>  	}
> @@ -2515,7 +2515,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
>  	new_cdclk_state->active_pipes =
>  		intel_calc_active_pipes(state, old_cdclk_state->active_pipes);
>  
> -	ret = dev_priv->display.modeset_calc_cdclk(new_cdclk_state);
> +	ret = dev_priv->display.funcs.modeset_calc_cdclk(new_cdclk_state);
>  	if (ret)
>  		return ret;
>  
> @@ -2695,7 +2695,7 @@ void intel_update_max_cdclk(struct drm_i915_private *dev_priv)
>   */
>  void intel_update_cdclk(struct drm_i915_private *dev_priv)
>  {
> -	dev_priv->display.get_cdclk(dev_priv, &dev_priv->cdclk.hw);
> +	dev_priv->display.funcs.get_cdclk(dev_priv, &dev_priv->cdclk.hw);
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
> +		dev_priv->display.funcs.set_cdclk = bxt_set_cdclk;
> +		dev_priv->display.funcs.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
> +		dev_priv->display.funcs.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
> +		dev_priv->display.funcs.calc_voltage_level = tgl_calc_voltage_level;
>  		dev_priv->cdclk.table = dg2_cdclk_table;
>  	} else if (IS_ALDERLAKE_P(dev_priv)) {
> -		dev_priv->display.set_cdclk = bxt_set_cdclk;
> -		dev_priv->display.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
> -		dev_priv->display.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
> -		dev_priv->display.calc_voltage_level = tgl_calc_voltage_level;
> +		dev_priv->display.funcs.set_cdclk = bxt_set_cdclk;
> +		dev_priv->display.funcs.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
> +		dev_priv->display.funcs.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
> +		dev_priv->display.funcs.calc_voltage_level = tgl_calc_voltage_level;
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
> +		dev_priv->display.funcs.set_cdclk = bxt_set_cdclk;
> +		dev_priv->display.funcs.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
> +		dev_priv->display.funcs.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
> +		dev_priv->display.funcs.calc_voltage_level = tgl_calc_voltage_level;
>  		dev_priv->cdclk.table = rkl_cdclk_table;
>  	} else if (DISPLAY_VER(dev_priv) >= 12) {
> -		dev_priv->display.set_cdclk = bxt_set_cdclk;
> -		dev_priv->display.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
> -		dev_priv->display.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
> -		dev_priv->display.calc_voltage_level = tgl_calc_voltage_level;
> +		dev_priv->display.funcs.set_cdclk = bxt_set_cdclk;
> +		dev_priv->display.funcs.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
> +		dev_priv->display.funcs.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
> +		dev_priv->display.funcs.calc_voltage_level = tgl_calc_voltage_level;
>  		dev_priv->cdclk.table = icl_cdclk_table;
>  	} else if (IS_JSL_EHL(dev_priv)) {
> -		dev_priv->display.set_cdclk = bxt_set_cdclk;
> -		dev_priv->display.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
> -		dev_priv->display.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
> -		dev_priv->display.calc_voltage_level = ehl_calc_voltage_level;
> +		dev_priv->display.funcs.set_cdclk = bxt_set_cdclk;
> +		dev_priv->display.funcs.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
> +		dev_priv->display.funcs.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
> +		dev_priv->display.funcs.calc_voltage_level = ehl_calc_voltage_level;
>  		dev_priv->cdclk.table = icl_cdclk_table;
>  	} else if (DISPLAY_VER(dev_priv) >= 11) {
> -		dev_priv->display.set_cdclk = bxt_set_cdclk;
> -		dev_priv->display.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
> -		dev_priv->display.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
> -		dev_priv->display.calc_voltage_level = icl_calc_voltage_level;
> +		dev_priv->display.funcs.set_cdclk = bxt_set_cdclk;
> +		dev_priv->display.funcs.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
> +		dev_priv->display.funcs.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
> +		dev_priv->display.funcs.calc_voltage_level = icl_calc_voltage_level;
>  		dev_priv->cdclk.table = icl_cdclk_table;
>  	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
> -		dev_priv->display.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
> -		dev_priv->display.set_cdclk = bxt_set_cdclk;
> -		dev_priv->display.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
> -		dev_priv->display.calc_voltage_level = bxt_calc_voltage_level;
> +		dev_priv->display.funcs.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
> +		dev_priv->display.funcs.set_cdclk = bxt_set_cdclk;
> +		dev_priv->display.funcs.modeset_calc_cdclk = bxt_modeset_calc_cdclk;
> +		dev_priv->display.funcs.calc_voltage_level = bxt_calc_voltage_level;
>  		if (IS_GEMINILAKE(dev_priv))
>  			dev_priv->cdclk.table = glk_cdclk_table;
>  		else
>  			dev_priv->cdclk.table = bxt_cdclk_table;
>  	} else if (DISPLAY_VER(dev_priv) == 9) {
> -		dev_priv->display.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
> -		dev_priv->display.set_cdclk = skl_set_cdclk;
> -		dev_priv->display.modeset_calc_cdclk = skl_modeset_calc_cdclk;
> +		dev_priv->display.funcs.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
> +		dev_priv->display.funcs.set_cdclk = skl_set_cdclk;
> +		dev_priv->display.funcs.modeset_calc_cdclk = skl_modeset_calc_cdclk;
>  	} else if (IS_BROADWELL(dev_priv)) {
> -		dev_priv->display.bw_calc_min_cdclk = intel_bw_calc_min_cdclk;
> -		dev_priv->display.set_cdclk = bdw_set_cdclk;
> -		dev_priv->display.modeset_calc_cdclk = bdw_modeset_calc_cdclk;
> +		dev_priv->display.funcs.bw_calc_min_cdclk = intel_bw_calc_min_cdclk;
> +		dev_priv->display.funcs.set_cdclk = bdw_set_cdclk;
> +		dev_priv->display.funcs.modeset_calc_cdclk = bdw_modeset_calc_cdclk;
>  	} else if (IS_CHERRYVIEW(dev_priv)) {
> -		dev_priv->display.bw_calc_min_cdclk = intel_bw_calc_min_cdclk;
> -		dev_priv->display.set_cdclk = chv_set_cdclk;
> -		dev_priv->display.modeset_calc_cdclk = vlv_modeset_calc_cdclk;
> +		dev_priv->display.funcs.bw_calc_min_cdclk = intel_bw_calc_min_cdclk;
> +		dev_priv->display.funcs.set_cdclk = chv_set_cdclk;
> +		dev_priv->display.funcs.modeset_calc_cdclk = vlv_modeset_calc_cdclk;
>  	} else if (IS_VALLEYVIEW(dev_priv)) {
> -		dev_priv->display.bw_calc_min_cdclk = intel_bw_calc_min_cdclk;
> -		dev_priv->display.set_cdclk = vlv_set_cdclk;
> -		dev_priv->display.modeset_calc_cdclk = vlv_modeset_calc_cdclk;
> +		dev_priv->display.funcs.bw_calc_min_cdclk = intel_bw_calc_min_cdclk;
> +		dev_priv->display.funcs.set_cdclk = vlv_set_cdclk;
> +		dev_priv->display.funcs.modeset_calc_cdclk = vlv_modeset_calc_cdclk;
>  	} else {
> -		dev_priv->display.bw_calc_min_cdclk = intel_bw_calc_min_cdclk;
> -		dev_priv->display.modeset_calc_cdclk = fixed_modeset_calc_cdclk;
> +		dev_priv->display.funcs.bw_calc_min_cdclk = intel_bw_calc_min_cdclk;
> +		dev_priv->display.funcs.modeset_calc_cdclk = fixed_modeset_calc_cdclk;
>  	}
>  
>  	if (DISPLAY_VER(dev_priv) >= 10 || IS_BROXTON(dev_priv))
> -		dev_priv->display.get_cdclk = bxt_get_cdclk;
> +		dev_priv->display.funcs.get_cdclk = bxt_get_cdclk;
>  	else if (DISPLAY_VER(dev_priv) == 9)
> -		dev_priv->display.get_cdclk = skl_get_cdclk;
> +		dev_priv->display.funcs.get_cdclk = skl_get_cdclk;
>  	else if (IS_BROADWELL(dev_priv))
> -		dev_priv->display.get_cdclk = bdw_get_cdclk;
> +		dev_priv->display.funcs.get_cdclk = bdw_get_cdclk;
>  	else if (IS_HASWELL(dev_priv))
> -		dev_priv->display.get_cdclk = hsw_get_cdclk;
> +		dev_priv->display.funcs.get_cdclk = hsw_get_cdclk;
>  	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> -		dev_priv->display.get_cdclk = vlv_get_cdclk;
> +		dev_priv->display.funcs.get_cdclk = vlv_get_cdclk;
>  	else if (IS_SANDYBRIDGE(dev_priv) || IS_IVYBRIDGE(dev_priv))
> -		dev_priv->display.get_cdclk = fixed_400mhz_get_cdclk;
> +		dev_priv->display.funcs.get_cdclk = fixed_400mhz_get_cdclk;
>  	else if (IS_IRONLAKE(dev_priv))
> -		dev_priv->display.get_cdclk = fixed_450mhz_get_cdclk;
> +		dev_priv->display.funcs.get_cdclk = fixed_450mhz_get_cdclk;
>  	else if (IS_GM45(dev_priv))
> -		dev_priv->display.get_cdclk = gm45_get_cdclk;
> +		dev_priv->display.funcs.get_cdclk = gm45_get_cdclk;
>  	else if (IS_G45(dev_priv))
> -		dev_priv->display.get_cdclk = g33_get_cdclk;
> +		dev_priv->display.funcs.get_cdclk = g33_get_cdclk;
>  	else if (IS_I965GM(dev_priv))
> -		dev_priv->display.get_cdclk = i965gm_get_cdclk;
> +		dev_priv->display.funcs.get_cdclk = i965gm_get_cdclk;
>  	else if (IS_I965G(dev_priv))
> -		dev_priv->display.get_cdclk = fixed_400mhz_get_cdclk;
> +		dev_priv->display.funcs.get_cdclk = fixed_400mhz_get_cdclk;
>  	else if (IS_PINEVIEW(dev_priv))
> -		dev_priv->display.get_cdclk = pnv_get_cdclk;
> +		dev_priv->display.funcs.get_cdclk = pnv_get_cdclk;
>  	else if (IS_G33(dev_priv))
> -		dev_priv->display.get_cdclk = g33_get_cdclk;
> +		dev_priv->display.funcs.get_cdclk = g33_get_cdclk;
>  	else if (IS_I945GM(dev_priv))
> -		dev_priv->display.get_cdclk = i945gm_get_cdclk;
> +		dev_priv->display.funcs.get_cdclk = i945gm_get_cdclk;
>  	else if (IS_I945G(dev_priv))
> -		dev_priv->display.get_cdclk = fixed_400mhz_get_cdclk;
> +		dev_priv->display.funcs.get_cdclk = fixed_400mhz_get_cdclk;
>  	else if (IS_I915GM(dev_priv))
> -		dev_priv->display.get_cdclk = i915gm_get_cdclk;
> +		dev_priv->display.funcs.get_cdclk = i915gm_get_cdclk;
>  	else if (IS_I915G(dev_priv))
> -		dev_priv->display.get_cdclk = fixed_333mhz_get_cdclk;
> +		dev_priv->display.funcs.get_cdclk = fixed_333mhz_get_cdclk;
>  	else if (IS_I865G(dev_priv))
> -		dev_priv->display.get_cdclk = fixed_266mhz_get_cdclk;
> +		dev_priv->display.funcs.get_cdclk = fixed_266mhz_get_cdclk;
>  	else if (IS_I85X(dev_priv))
> -		dev_priv->display.get_cdclk = i85x_get_cdclk;
> +		dev_priv->display.funcs.get_cdclk = i85x_get_cdclk;
>  	else if (IS_I845G(dev_priv))
> -		dev_priv->display.get_cdclk = fixed_200mhz_get_cdclk;
> +		dev_priv->display.funcs.get_cdclk = fixed_200mhz_get_cdclk;
>  	else if (IS_I830(dev_priv))
> -		dev_priv->display.get_cdclk = fixed_133mhz_get_cdclk;
> +		dev_priv->display.funcs.get_cdclk = fixed_133mhz_get_cdclk;
>  
> -	if (drm_WARN(&dev_priv->drm, !dev_priv->display.get_cdclk,
> +	if (drm_WARN(&dev_priv->drm, !dev_priv->display.funcs.get_cdclk,
>  		     "Unknown platform. Assuming 133 MHz CDCLK\n"))
> -		dev_priv->display.get_cdclk = fixed_133mhz_get_cdclk;
> +		dev_priv->display.funcs.get_cdclk = fixed_133mhz_get_cdclk;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index afcb4bf3826c..8ac223156e31 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1137,14 +1137,14 @@ void intel_color_load_luts(const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
>  
> -	dev_priv->display.load_luts(crtc_state);
> +	dev_priv->display.funcs.load_luts(crtc_state);
>  }
>  
>  void intel_color_commit(const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
>  
> -	dev_priv->display.color_commit(crtc_state);
> +	dev_priv->display.funcs.color_commit(crtc_state);
>  }
>  
>  static bool intel_can_preload_luts(const struct intel_crtc_state *new_crtc_state)
> @@ -1200,15 +1200,15 @@ int intel_color_check(struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
>  
> -	return dev_priv->display.color_check(crtc_state);
> +	return dev_priv->display.funcs.color_check(crtc_state);
>  }
>  
>  void intel_color_get_config(struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
>  
> -	if (dev_priv->display.read_luts)
> -		dev_priv->display.read_luts(crtc_state);
> +	if (dev_priv->display.funcs.read_luts)
> +		dev_priv->display.funcs.read_luts(crtc_state);
>  }
>  
>  static bool need_plane_update(struct intel_plane *plane,
> @@ -2101,51 +2101,51 @@ void intel_color_init(struct intel_crtc *crtc)
>  
>  	if (HAS_GMCH(dev_priv)) {
>  		if (IS_CHERRYVIEW(dev_priv)) {
> -			dev_priv->display.color_check = chv_color_check;
> -			dev_priv->display.color_commit = i9xx_color_commit;
> -			dev_priv->display.load_luts = chv_load_luts;
> -			dev_priv->display.read_luts = chv_read_luts;
> +			dev_priv->display.funcs.color_check = chv_color_check;
> +			dev_priv->display.funcs.color_commit = i9xx_color_commit;
> +			dev_priv->display.funcs.load_luts = chv_load_luts;
> +			dev_priv->display.funcs.read_luts = chv_read_luts;
>  		} else if (DISPLAY_VER(dev_priv) >= 4) {
> -			dev_priv->display.color_check = i9xx_color_check;
> -			dev_priv->display.color_commit = i9xx_color_commit;
> -			dev_priv->display.load_luts = i965_load_luts;
> -			dev_priv->display.read_luts = i965_read_luts;
> +			dev_priv->display.funcs.color_check = i9xx_color_check;
> +			dev_priv->display.funcs.color_commit = i9xx_color_commit;
> +			dev_priv->display.funcs.load_luts = i965_load_luts;
> +			dev_priv->display.funcs.read_luts = i965_read_luts;
>  		} else {
> -			dev_priv->display.color_check = i9xx_color_check;
> -			dev_priv->display.color_commit = i9xx_color_commit;
> -			dev_priv->display.load_luts = i9xx_load_luts;
> -			dev_priv->display.read_luts = i9xx_read_luts;
> +			dev_priv->display.funcs.color_check = i9xx_color_check;
> +			dev_priv->display.funcs.color_commit = i9xx_color_commit;
> +			dev_priv->display.funcs.load_luts = i9xx_load_luts;
> +			dev_priv->display.funcs.read_luts = i9xx_read_luts;
>  		}
>  	} else {
>  		if (DISPLAY_VER(dev_priv) >= 11)
> -			dev_priv->display.color_check = icl_color_check;
> +			dev_priv->display.funcs.color_check = icl_color_check;
>  		else if (DISPLAY_VER(dev_priv) >= 10)
> -			dev_priv->display.color_check = glk_color_check;
> +			dev_priv->display.funcs.color_check = glk_color_check;
>  		else if (DISPLAY_VER(dev_priv) >= 7)
> -			dev_priv->display.color_check = ivb_color_check;
> +			dev_priv->display.funcs.color_check = ivb_color_check;
>  		else
> -			dev_priv->display.color_check = ilk_color_check;
> +			dev_priv->display.funcs.color_check = ilk_color_check;
>  
>  		if (DISPLAY_VER(dev_priv) >= 9)
> -			dev_priv->display.color_commit = skl_color_commit;
> +			dev_priv->display.funcs.color_commit = skl_color_commit;
>  		else if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
> -			dev_priv->display.color_commit = hsw_color_commit;
> +			dev_priv->display.funcs.color_commit = hsw_color_commit;
>  		else
> -			dev_priv->display.color_commit = ilk_color_commit;
> +			dev_priv->display.funcs.color_commit = ilk_color_commit;
>  
>  		if (DISPLAY_VER(dev_priv) >= 11) {
> -			dev_priv->display.load_luts = icl_load_luts;
> -			dev_priv->display.read_luts = icl_read_luts;
> +			dev_priv->display.funcs.load_luts = icl_load_luts;
> +			dev_priv->display.funcs.read_luts = icl_read_luts;
>  		} else if (DISPLAY_VER(dev_priv) == 10) {
> -			dev_priv->display.load_luts = glk_load_luts;
> -			dev_priv->display.read_luts = glk_read_luts;
> +			dev_priv->display.funcs.load_luts = glk_load_luts;
> +			dev_priv->display.funcs.read_luts = glk_read_luts;
>  		} else if (DISPLAY_VER(dev_priv) >= 8) {
> -			dev_priv->display.load_luts = bdw_load_luts;
> +			dev_priv->display.funcs.load_luts = bdw_load_luts;
>  		} else if (DISPLAY_VER(dev_priv) >= 7) {
> -			dev_priv->display.load_luts = ivb_load_luts;
> +			dev_priv->display.funcs.load_luts = ivb_load_luts;
>  		} else {
> -			dev_priv->display.load_luts = ilk_load_luts;
> -			dev_priv->display.read_luts = ilk_read_luts;
> +			dev_priv->display.funcs.load_luts = ilk_load_luts;
> +			dev_priv->display.funcs.read_luts = ilk_read_luts;
>  		}
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 1f447ba776c7..f31585e56e84 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2060,7 +2060,7 @@ static void ilk_pch_enable(const struct intel_atomic_state *state,
>  	assert_pch_transcoder_disabled(dev_priv, pipe);
>  
>  	/* For PCH output, training FDI link */
> -	dev_priv->display.fdi_link_train(crtc, crtc_state);
> +	dev_priv->display.funcs.fdi_link_train(crtc, crtc_state);
>  
>  	/* We need to program the right clock selection before writing the pixel
>  	 * mutliplier into the DPLL. */
> @@ -2526,8 +2526,8 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
>  		 * we'll continue to update watermarks the old way, if flags tell
>  		 * us to.
>  		 */
> -		if (dev_priv->display.initial_watermarks)
> -			dev_priv->display.initial_watermarks(state, crtc);
> +		if (dev_priv->display.funcs.initial_watermarks)
> +			dev_priv->display.funcs.initial_watermarks(state, crtc);
>  		else if (new_crtc_state->update_wm_pre)
>  			intel_update_watermarks(crtc);
>  	}
> @@ -2901,8 +2901,8 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
>  	/* update DSPCNTR to configure gamma for pipe bottom color */
>  	intel_disable_primary_plane(new_crtc_state);
>  
> -	if (dev_priv->display.initial_watermarks)
> -		dev_priv->display.initial_watermarks(state, crtc);
> +	if (dev_priv->display.funcs.initial_watermarks)
> +		dev_priv->display.funcs.initial_watermarks(state, crtc);
>  	intel_enable_pipe(new_crtc_state);
>  
>  	if (new_crtc_state->has_pch_encoder)
> @@ -3112,8 +3112,8 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  	if (DISPLAY_VER(dev_priv) >= 11)
>  		icl_set_pipe_chicken(new_crtc_state);
>  
> -	if (dev_priv->display.initial_watermarks)
> -		dev_priv->display.initial_watermarks(state, crtc);
> +	if (dev_priv->display.funcs.initial_watermarks)
> +		dev_priv->display.funcs.initial_watermarks(state, crtc);
>  
>  	if (DISPLAY_VER(dev_priv) >= 11) {
>  		const struct intel_dbuf_state *dbuf_state =
> @@ -3530,7 +3530,7 @@ static void valleyview_crtc_enable(struct intel_atomic_state *state,
>  	/* update DSPCNTR to configure gamma for pipe bottom color */
>  	intel_disable_primary_plane(new_crtc_state);
>  
> -	dev_priv->display.initial_watermarks(state, crtc);
> +	dev_priv->display.funcs.initial_watermarks(state, crtc);
>  	intel_enable_pipe(new_crtc_state);
>  
>  	intel_crtc_vblank_on(new_crtc_state);
> @@ -3573,8 +3573,8 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
>  	/* update DSPCNTR to configure gamma for pipe bottom color */
>  	intel_disable_primary_plane(new_crtc_state);
>  
> -	if (dev_priv->display.initial_watermarks)
> -		dev_priv->display.initial_watermarks(state, crtc);
> +	if (dev_priv->display.funcs.initial_watermarks)
> +		dev_priv->display.funcs.initial_watermarks(state, crtc);
>  	else
>  		intel_update_watermarks(crtc);
>  	intel_enable_pipe(new_crtc_state);
> @@ -3642,7 +3642,7 @@ static void i9xx_crtc_disable(struct intel_atomic_state *state,
>  	if (DISPLAY_VER(dev_priv) != 2)
>  		intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
>  
> -	if (!dev_priv->display.initial_watermarks)
> +	if (!dev_priv->display.funcs.initial_watermarks)
>  		intel_update_watermarks(crtc);
>  
>  	/* clock the pipe down to 640x480@60 to potentially save power */
> @@ -3696,7 +3696,7 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
>  
>  	drm_WARN_ON(&dev_priv->drm, IS_ERR(temp_crtc_state) || ret);
>  
> -	dev_priv->display.crtc_disable(to_intel_atomic_state(state), crtc);
> +	dev_priv->display.funcs.crtc_disable(to_intel_atomic_state(state), crtc);
>  
>  	drm_atomic_state_put(state);
>  
> @@ -5901,7 +5901,7 @@ static bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state)
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  
> -	if (!i915->display.get_pipe_config(crtc, crtc_state))
> +	if (!i915->display.funcs.get_pipe_config(crtc, crtc_state))
>  		return false;
>  
>  	crtc_state->hw.active = true;
> @@ -6728,10 +6728,10 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>  		crtc_state->update_wm_post = true;
>  
>  	if (mode_changed && crtc_state->hw.enable &&
> -	    dev_priv->display.crtc_compute_clock &&
> +	    dev_priv->display.funcs.crtc_compute_clock &&
>  	    !crtc_state->bigjoiner_slave &&
>  	    !drm_WARN_ON(&dev_priv->drm, crtc_state->shared_dpll)) {
> -		ret = dev_priv->display.crtc_compute_clock(crtc_state);
> +		ret = dev_priv->display.funcs.crtc_compute_clock(crtc_state);
>  		if (ret)
>  			return ret;
>  	}
> @@ -6750,8 +6750,8 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>  			return ret;
>  	}
>  
> -	if (dev_priv->display.compute_pipe_wm) {
> -		ret = dev_priv->display.compute_pipe_wm(state, crtc);
> +	if (dev_priv->display.funcs.compute_pipe_wm) {
> +		ret = dev_priv->display.funcs.compute_pipe_wm(state, crtc);
>  		if (ret) {
>  			drm_dbg_kms(&dev_priv->drm,
>  				    "Target pipe watermarks are invalid\n");
> @@ -6760,9 +6760,9 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>  
>  	}
>  
> -	if (dev_priv->display.compute_intermediate_wm) {
> +	if (dev_priv->display.funcs.compute_intermediate_wm) {
>  		if (drm_WARN_ON(&dev_priv->drm,
> -				!dev_priv->display.compute_pipe_wm))
> +				!dev_priv->display.funcs.compute_pipe_wm))
>  			return 0;
>  
>  		/*
> @@ -6770,7 +6770,7 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>  		 * old state and the new state.  We can program these
>  		 * immediately.
>  		 */
> -		ret = dev_priv->display.compute_intermediate_wm(state, crtc);
> +		ret = dev_priv->display.funcs.compute_intermediate_wm(state, crtc);
>  		if (ret) {
>  			drm_dbg_kms(&dev_priv->drm,
>  				    "No valid intermediate pipe watermarks are possible\n");
> @@ -8767,7 +8767,7 @@ static void intel_modeset_clear_plls(struct intel_atomic_state *state)
>  	struct intel_crtc *crtc;
>  	int i;
>  
> -	if (!dev_priv->display.crtc_compute_clock)
> +	if (!dev_priv->display.funcs.crtc_compute_clock)
>  		return;
>  
>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> @@ -8879,8 +8879,8 @@ static int calc_watermark_data(struct intel_atomic_state *state)
>  	struct drm_i915_private *dev_priv = to_i915(dev);
>  
>  	/* Is there platform-specific watermark information to calculate? */
> -	if (dev_priv->display.compute_global_watermarks)
> -		return dev_priv->display.compute_global_watermarks(state);
> +	if (dev_priv->display.funcs.compute_global_watermarks)
> +		return dev_priv->display.funcs.compute_global_watermarks(state);
>  
>  	return 0;
>  }
> @@ -9080,7 +9080,7 @@ static int intel_atomic_check_cdclk(struct intel_atomic_state *state,
>  	    old_cdclk_state->force_min_cdclk != new_cdclk_state->force_min_cdclk)
>  		*need_cdclk_calc = true;
>  
> -	ret = dev_priv->display.bw_calc_min_cdclk(state);
> +	ret = dev_priv->display.funcs.bw_calc_min_cdclk(state);
>  	if (ret)
>  		return ret;
>  
> @@ -9705,8 +9705,8 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
>  		intel_psr2_program_trans_man_trk_ctl(new_crtc_state);
>  	}
>  
> -	if (dev_priv->display.atomic_update_watermarks)
> -		dev_priv->display.atomic_update_watermarks(state, crtc);
> +	if (dev_priv->display.funcs.atomic_update_watermarks)
> +		dev_priv->display.funcs.atomic_update_watermarks(state, crtc);
>  }
>  
>  static void commit_pipe_post_planes(struct intel_atomic_state *state,
> @@ -9738,7 +9738,7 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
>  
>  	intel_crtc_update_active_timings(new_crtc_state);
>  
> -	dev_priv->display.crtc_enable(state, crtc);
> +	dev_priv->display.funcs.crtc_enable(state, crtc);
>  
>  	if (new_crtc_state->bigjoiner_slave)
>  		return;
> @@ -9826,7 +9826,7 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
>  	 */
>  	intel_crtc_disable_pipe_crc(crtc);
>  
> -	dev_priv->display.crtc_disable(state, crtc);
> +	dev_priv->display.funcs.crtc_disable(state, crtc);
>  	crtc->active = false;
>  	intel_fbc_disable(crtc);
>  	intel_disable_shared_dpll(old_crtc_state);
> @@ -9834,8 +9834,8 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
>  	/* FIXME unify this for all platforms */
>  	if (!new_crtc_state->hw.active &&
>  	    !HAS_GMCH(dev_priv) &&
> -	    dev_priv->display.initial_watermarks)
> -		dev_priv->display.initial_watermarks(state, crtc);
> +	    dev_priv->display.funcs.initial_watermarks)
> +		dev_priv->display.funcs.initial_watermarks(state, crtc);
>  }
>  
>  static void intel_commit_modeset_disables(struct intel_atomic_state *state)
> @@ -10206,7 +10206,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  	}
>  
>  	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
> -	dev_priv->display.commit_modeset_enables(state);
> +	dev_priv->display.funcs.commit_modeset_enables(state);
>  
>  	if (state->modeset) {
>  		intel_encoders_update_complete(state);
> @@ -10257,8 +10257,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  		if (DISPLAY_VER(dev_priv) == 2 && planes_enabling(old_crtc_state, new_crtc_state))
>  			intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, true);
>  
> -		if (dev_priv->display.optimize_watermarks)
> -			dev_priv->display.optimize_watermarks(state, crtc);
> +		if (dev_priv->display.funcs.optimize_watermarks)
> +			dev_priv->display.funcs.optimize_watermarks(state, crtc);
>  	}
>  
>  	intel_dbuf_post_plane_update(state);
> @@ -11225,36 +11225,36 @@ void intel_init_display_hooks(struct drm_i915_private *dev_priv)
>  	intel_dpll_init_clock_hook(dev_priv);
>  
>  	if (DISPLAY_VER(dev_priv) >= 9) {
> -		dev_priv->display.get_pipe_config = hsw_get_pipe_config;
> -		dev_priv->display.crtc_enable = hsw_crtc_enable;
> -		dev_priv->display.crtc_disable = hsw_crtc_disable;
> +		dev_priv->display.funcs.get_pipe_config = hsw_get_pipe_config;
> +		dev_priv->display.funcs.crtc_enable = hsw_crtc_enable;
> +		dev_priv->display.funcs.crtc_disable = hsw_crtc_disable;
>  	} else if (HAS_DDI(dev_priv)) {
> -		dev_priv->display.get_pipe_config = hsw_get_pipe_config;
> -		dev_priv->display.crtc_enable = hsw_crtc_enable;
> -		dev_priv->display.crtc_disable = hsw_crtc_disable;
> +		dev_priv->display.funcs.get_pipe_config = hsw_get_pipe_config;
> +		dev_priv->display.funcs.crtc_enable = hsw_crtc_enable;
> +		dev_priv->display.funcs.crtc_disable = hsw_crtc_disable;
>  	} else if (HAS_PCH_SPLIT(dev_priv)) {
> -		dev_priv->display.get_pipe_config = ilk_get_pipe_config;
> -		dev_priv->display.crtc_enable = ilk_crtc_enable;
> -		dev_priv->display.crtc_disable = ilk_crtc_disable;
> +		dev_priv->display.funcs.get_pipe_config = ilk_get_pipe_config;
> +		dev_priv->display.funcs.crtc_enable = ilk_crtc_enable;
> +		dev_priv->display.funcs.crtc_disable = ilk_crtc_disable;
>  	} else if (IS_CHERRYVIEW(dev_priv) ||
>  		   IS_VALLEYVIEW(dev_priv)) {
> -		dev_priv->display.get_pipe_config = i9xx_get_pipe_config;
> -		dev_priv->display.crtc_enable = valleyview_crtc_enable;
> -		dev_priv->display.crtc_disable = i9xx_crtc_disable;
> +		dev_priv->display.funcs.get_pipe_config = i9xx_get_pipe_config;
> +		dev_priv->display.funcs.crtc_enable = valleyview_crtc_enable;
> +		dev_priv->display.funcs.crtc_disable = i9xx_crtc_disable;
>  	} else {
> -		dev_priv->display.get_pipe_config = i9xx_get_pipe_config;
> -		dev_priv->display.crtc_enable = i9xx_crtc_enable;
> -		dev_priv->display.crtc_disable = i9xx_crtc_disable;
> +		dev_priv->display.funcs.get_pipe_config = i9xx_get_pipe_config;
> +		dev_priv->display.funcs.crtc_enable = i9xx_crtc_enable;
> +		dev_priv->display.funcs.crtc_disable = i9xx_crtc_disable;
>  	}
>  
>  	intel_fdi_init_hook(dev_priv);
>  
>  	if (DISPLAY_VER(dev_priv) >= 9) {
> -		dev_priv->display.commit_modeset_enables = skl_commit_modeset_enables;
> -		dev_priv->display.get_initial_plane_config = skl_get_initial_plane_config;
> +		dev_priv->display.funcs.commit_modeset_enables = skl_commit_modeset_enables;
> +		dev_priv->display.funcs.get_initial_plane_config = skl_get_initial_plane_config;
>  	} else {
> -		dev_priv->display.commit_modeset_enables = intel_commit_modeset_enables;
> -		dev_priv->display.get_initial_plane_config = i9xx_get_initial_plane_config;
> +		dev_priv->display.funcs.commit_modeset_enables = intel_commit_modeset_enables;
> +		dev_priv->display.funcs.get_initial_plane_config = i9xx_get_initial_plane_config;
>  	}
>  
>  }
> @@ -11326,7 +11326,7 @@ static void sanitize_watermarks(struct drm_i915_private *dev_priv)
>  	int i;
>  
>  	/* Only supported on platforms that use atomic watermark design */
> -	if (!dev_priv->display.optimize_watermarks)
> +	if (!dev_priv->display.funcs.optimize_watermarks)
>  		return;
>  
>  	state = drm_atomic_state_alloc(&dev_priv->drm);
> @@ -11359,7 +11359,7 @@ static void sanitize_watermarks(struct drm_i915_private *dev_priv)
>  	/* Write calculated watermark values back */
>  	for_each_new_intel_crtc_in_state(intel_state, crtc, crtc_state, i) {
>  		crtc_state->wm.need_postvbl_update = true;
> -		dev_priv->display.optimize_watermarks(intel_state, crtc);
> +		dev_priv->display.funcs.optimize_watermarks(intel_state, crtc);
>  
>  		to_intel_crtc_state(crtc->base.state)->wm = crtc_state->wm;
>  	}
> @@ -11683,7 +11683,7 @@ int intel_modeset_init_nogem(struct drm_i915_private *i915)
>  		 * can even allow for smooth boot transitions if the BIOS
>  		 * fb is large enough for the active pipe configuration.
>  		 */
> -		i915->display.get_initial_plane_config(crtc, &plane_config);
> +		i915->display.funcs.get_initial_plane_config(crtc, &plane_config);
>  
>  		/*
>  		 * If the fb is shared between multiple heads, we'll
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index cce1a926fcc1..ebe4fee6d680 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1195,7 +1195,7 @@ static void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
>  	if (!HAS_DISPLAY(dev_priv))
>  		return;
>  
> -	dev_priv->display.get_cdclk(dev_priv, &cdclk_config);
> +	dev_priv->display.funcs.get_cdclk(dev_priv, &cdclk_config);
>  	/* Can't read out voltage_level so can't use intel_cdclk_changed() */
>  	drm_WARN_ON(&dev_priv->drm,
>  		    intel_cdclk_needs_modeset(&dev_priv->cdclk.hw,
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
> index 210f91f4a576..2dc7c0f95103 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1367,21 +1367,21 @@ void
>  intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv)
>  {
>  	if (DISPLAY_VER(dev_priv) >= 9 || HAS_DDI(dev_priv))
> -		dev_priv->display.crtc_compute_clock = hsw_crtc_compute_clock;
> +		dev_priv->display.funcs.crtc_compute_clock = hsw_crtc_compute_clock;
>  	else if (HAS_PCH_SPLIT(dev_priv))
> -		dev_priv->display.crtc_compute_clock = ilk_crtc_compute_clock;
> +		dev_priv->display.funcs.crtc_compute_clock = ilk_crtc_compute_clock;
>  	else if (IS_CHERRYVIEW(dev_priv))
> -		dev_priv->display.crtc_compute_clock = chv_crtc_compute_clock;
> +		dev_priv->display.funcs.crtc_compute_clock = chv_crtc_compute_clock;
>  	else if (IS_VALLEYVIEW(dev_priv))
> -		dev_priv->display.crtc_compute_clock = vlv_crtc_compute_clock;
> +		dev_priv->display.funcs.crtc_compute_clock = vlv_crtc_compute_clock;
>  	else if (IS_G4X(dev_priv))
> -		dev_priv->display.crtc_compute_clock = g4x_crtc_compute_clock;
> +		dev_priv->display.funcs.crtc_compute_clock = g4x_crtc_compute_clock;
>  	else if (IS_PINEVIEW(dev_priv))
> -		dev_priv->display.crtc_compute_clock = pnv_crtc_compute_clock;
> +		dev_priv->display.funcs.crtc_compute_clock = pnv_crtc_compute_clock;
>  	else if (DISPLAY_VER(dev_priv) != 2)
> -		dev_priv->display.crtc_compute_clock = i9xx_crtc_compute_clock;
> +		dev_priv->display.funcs.crtc_compute_clock = i9xx_crtc_compute_clock;
>  	else
> -		dev_priv->display.crtc_compute_clock = i8xx_crtc_compute_clock;
> +		dev_priv->display.funcs.crtc_compute_clock = i8xx_crtc_compute_clock;
>  }
>  
>  static bool i9xx_has_pps(struct drm_i915_private *dev_priv)
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
> index fc09b781f15f..aaa0207f483e 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> @@ -1009,11 +1009,11 @@ void
>  intel_fdi_init_hook(struct drm_i915_private *dev_priv)
>  {
>  	if (IS_IRONLAKE(dev_priv)) {
> -		dev_priv->display.fdi_link_train = ilk_fdi_link_train;
> +		dev_priv->display.funcs.fdi_link_train = ilk_fdi_link_train;
>  	} else if (IS_SANDYBRIDGE(dev_priv)) {
> -		dev_priv->display.fdi_link_train = gen6_fdi_link_train;
> +		dev_priv->display.funcs.fdi_link_train = gen6_fdi_link_train;
>  	} else if (IS_IVYBRIDGE(dev_priv)) {
>  		/* FIXME: detect B0+ stepping and use auto training */
> -		dev_priv->display.fdi_link_train = ivb_manual_fdi_link_train;
> +		dev_priv->display.funcs.fdi_link_train = ivb_manual_fdi_link_train;
>  	}
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
> index 47c85ac97c87..6c65efcb8a9c 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -215,8 +215,8 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i915_private *dev_priv)
>  
>  static void intel_hpd_irq_setup(struct drm_i915_private *i915)
>  {
> -	if (i915->display_irqs_enabled && i915->display.hpd_irq_setup)
> -		i915->display.hpd_irq_setup(i915);
> +	if (i915->display_irqs_enabled && i915->display.funcs.hpd_irq_setup)
> +		i915->display.funcs.hpd_irq_setup(i915);
>  }
>  
>  static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index be2392bbcecc..04335bace0e3 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -825,6 +825,11 @@ struct i915_selftest_stash {
>  	struct ida mock_region_instances;
>  };
>  
> +struct drm_i915_display {
> +	/* Display functions */
> +	struct drm_i915_display_funcs funcs;
> +};
> +
>  struct drm_i915_private {
>  	struct drm_device drm;
>  
> @@ -838,6 +843,8 @@ struct drm_i915_private {
>  	struct intel_runtime_info __runtime; /* Use RUNTIME_INFO() to access. */
>  	struct intel_driver_caps caps;
>  
> +	struct drm_i915_display display;
> +
>  	/**
>  	 * Data Stolen Memory - aka "i915 stolen memory" gives us the start and
>  	 * end of stolen which we can optionally use to create GEM objects
> @@ -971,9 +978,6 @@ struct drm_i915_private {
>  	/* unbound hipri wq for page flips/plane updates */
>  	struct workqueue_struct *flip_wq;
>  
> -	/* Display functions */
> -	struct drm_i915_display_funcs display;
> -
>  	/* PCH chipset type */
>  	enum intel_pch pch_type;
>  	unsigned short pch_id;
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 0a1681384c84..b1e3f51dc593 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -4395,20 +4395,20 @@ void intel_irq_init(struct drm_i915_private *dev_priv)
>  
>  	if (HAS_GMCH(dev_priv)) {
>  		if (I915_HAS_HOTPLUG(dev_priv))
> -			dev_priv->display.hpd_irq_setup = i915_hpd_irq_setup;
> +			dev_priv->display.funcs.hpd_irq_setup = i915_hpd_irq_setup;
>  	} else {
>  		if (HAS_PCH_DG1(dev_priv))
> -			dev_priv->display.hpd_irq_setup = dg1_hpd_irq_setup;
> +			dev_priv->display.funcs.hpd_irq_setup = dg1_hpd_irq_setup;
>  		else if (DISPLAY_VER(dev_priv) >= 11)
> -			dev_priv->display.hpd_irq_setup = gen11_hpd_irq_setup;
> +			dev_priv->display.funcs.hpd_irq_setup = gen11_hpd_irq_setup;
>  		else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> -			dev_priv->display.hpd_irq_setup = bxt_hpd_irq_setup;
> +			dev_priv->display.funcs.hpd_irq_setup = bxt_hpd_irq_setup;
>  		else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
> -			dev_priv->display.hpd_irq_setup = icp_hpd_irq_setup;
> +			dev_priv->display.funcs.hpd_irq_setup = icp_hpd_irq_setup;
>  		else if (INTEL_PCH_TYPE(dev_priv) >= PCH_SPT)
> -			dev_priv->display.hpd_irq_setup = spt_hpd_irq_setup;
> +			dev_priv->display.funcs.hpd_irq_setup = spt_hpd_irq_setup;
>  		else
> -			dev_priv->display.hpd_irq_setup = ilk_hpd_irq_setup;
> +			dev_priv->display.funcs.hpd_irq_setup = ilk_hpd_irq_setup;
>  	}
>  }
>  
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index cfc41f8fa74a..0c64b3a94cf1 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -2347,7 +2347,7 @@ static void i9xx_update_wm(struct intel_crtc *unused_crtc)
>  	else
>  		wm_info = &i830_a_wm_info;
>  
> -	fifo_size = dev_priv->display.get_fifo_size(dev_priv, PLANE_A);
> +	fifo_size = dev_priv->display.funcs.get_fifo_size(dev_priv, PLANE_A);
>  	crtc = intel_get_crtc_for_plane(dev_priv, PLANE_A);
>  	if (intel_crtc_active(crtc)) {
>  		const struct drm_display_mode *pipe_mode =
> @@ -2374,7 +2374,7 @@ static void i9xx_update_wm(struct intel_crtc *unused_crtc)
>  	if (DISPLAY_VER(dev_priv) == 2)
>  		wm_info = &i830_bc_wm_info;
>  
> -	fifo_size = dev_priv->display.get_fifo_size(dev_priv, PLANE_B);
> +	fifo_size = dev_priv->display.funcs.get_fifo_size(dev_priv, PLANE_B);
>  	crtc = intel_get_crtc_for_plane(dev_priv, PLANE_B);
>  	if (intel_crtc_active(crtc)) {
>  		const struct drm_display_mode *pipe_mode =
> @@ -2490,7 +2490,7 @@ static void i845_update_wm(struct intel_crtc *unused_crtc)
>  	pipe_mode = &crtc->config->hw.pipe_mode;
>  	planea_wm = intel_calculate_wm(pipe_mode->crtc_clock,
>  				       &i845_wm_info,
> -				       dev_priv->display.get_fifo_size(dev_priv, PLANE_A),
> +				       dev_priv->display.funcs.get_fifo_size(dev_priv, PLANE_A),
>  				       4, pessimal_latency_ns);
>  	fwater_lo = intel_uncore_read(&dev_priv->uncore, FW_BLC) & ~0xfff;
>  	fwater_lo |= (3<<8) | planea_wm;
> @@ -7167,8 +7167,8 @@ void intel_update_watermarks(struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  
> -	if (dev_priv->display.update_wm)
> -		dev_priv->display.update_wm(crtc);
> +	if (dev_priv->display.funcs.update_wm)
> +		dev_priv->display.funcs.update_wm(crtc);
>  }
>  
>  void intel_enable_ipc(struct drm_i915_private *dev_priv)
> @@ -7910,7 +7910,7 @@ static void i830_init_clock_gating(struct drm_i915_private *dev_priv)
>  
>  void intel_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
> -	dev_priv->display.init_clock_gating(dev_priv);
> +	dev_priv->display.funcs.init_clock_gating(dev_priv);
>  }
>  
>  void intel_suspend_hw(struct drm_i915_private *dev_priv)
> @@ -7937,52 +7937,52 @@ static void nop_init_clock_gating(struct drm_i915_private *dev_priv)
>  void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv)
>  {
>  	if (IS_ALDERLAKE_P(dev_priv))
> -		dev_priv->display.init_clock_gating = adlp_init_clock_gating;
> +		dev_priv->display.funcs.init_clock_gating = adlp_init_clock_gating;
>  	else if (IS_DG1(dev_priv))
> -		dev_priv->display.init_clock_gating = dg1_init_clock_gating;
> +		dev_priv->display.funcs.init_clock_gating = dg1_init_clock_gating;
>  	else if (GRAPHICS_VER(dev_priv) == 12)
> -		dev_priv->display.init_clock_gating = gen12lp_init_clock_gating;
> +		dev_priv->display.funcs.init_clock_gating = gen12lp_init_clock_gating;
>  	else if (GRAPHICS_VER(dev_priv) == 11)
> -		dev_priv->display.init_clock_gating = icl_init_clock_gating;
> +		dev_priv->display.funcs.init_clock_gating = icl_init_clock_gating;
>  	else if (IS_COFFEELAKE(dev_priv) || IS_COMETLAKE(dev_priv))
> -		dev_priv->display.init_clock_gating = cfl_init_clock_gating;
> +		dev_priv->display.funcs.init_clock_gating = cfl_init_clock_gating;
>  	else if (IS_SKYLAKE(dev_priv))
> -		dev_priv->display.init_clock_gating = skl_init_clock_gating;
> +		dev_priv->display.funcs.init_clock_gating = skl_init_clock_gating;
>  	else if (IS_KABYLAKE(dev_priv))
> -		dev_priv->display.init_clock_gating = kbl_init_clock_gating;
> +		dev_priv->display.funcs.init_clock_gating = kbl_init_clock_gating;
>  	else if (IS_BROXTON(dev_priv))
> -		dev_priv->display.init_clock_gating = bxt_init_clock_gating;
> +		dev_priv->display.funcs.init_clock_gating = bxt_init_clock_gating;
>  	else if (IS_GEMINILAKE(dev_priv))
> -		dev_priv->display.init_clock_gating = glk_init_clock_gating;
> +		dev_priv->display.funcs.init_clock_gating = glk_init_clock_gating;
>  	else if (IS_BROADWELL(dev_priv))
> -		dev_priv->display.init_clock_gating = bdw_init_clock_gating;
> +		dev_priv->display.funcs.init_clock_gating = bdw_init_clock_gating;
>  	else if (IS_CHERRYVIEW(dev_priv))
> -		dev_priv->display.init_clock_gating = chv_init_clock_gating;
> +		dev_priv->display.funcs.init_clock_gating = chv_init_clock_gating;
>  	else if (IS_HASWELL(dev_priv))
> -		dev_priv->display.init_clock_gating = hsw_init_clock_gating;
> +		dev_priv->display.funcs.init_clock_gating = hsw_init_clock_gating;
>  	else if (IS_IVYBRIDGE(dev_priv))
> -		dev_priv->display.init_clock_gating = ivb_init_clock_gating;
> +		dev_priv->display.funcs.init_clock_gating = ivb_init_clock_gating;
>  	else if (IS_VALLEYVIEW(dev_priv))
> -		dev_priv->display.init_clock_gating = vlv_init_clock_gating;
> +		dev_priv->display.funcs.init_clock_gating = vlv_init_clock_gating;
>  	else if (GRAPHICS_VER(dev_priv) == 6)
> -		dev_priv->display.init_clock_gating = gen6_init_clock_gating;
> +		dev_priv->display.funcs.init_clock_gating = gen6_init_clock_gating;
>  	else if (GRAPHICS_VER(dev_priv) == 5)
> -		dev_priv->display.init_clock_gating = ilk_init_clock_gating;
> +		dev_priv->display.funcs.init_clock_gating = ilk_init_clock_gating;
>  	else if (IS_G4X(dev_priv))
> -		dev_priv->display.init_clock_gating = g4x_init_clock_gating;
> +		dev_priv->display.funcs.init_clock_gating = g4x_init_clock_gating;
>  	else if (IS_I965GM(dev_priv))
> -		dev_priv->display.init_clock_gating = i965gm_init_clock_gating;
> +		dev_priv->display.funcs.init_clock_gating = i965gm_init_clock_gating;
>  	else if (IS_I965G(dev_priv))
> -		dev_priv->display.init_clock_gating = i965g_init_clock_gating;
> +		dev_priv->display.funcs.init_clock_gating = i965g_init_clock_gating;
>  	else if (GRAPHICS_VER(dev_priv) == 3)
> -		dev_priv->display.init_clock_gating = gen3_init_clock_gating;
> +		dev_priv->display.funcs.init_clock_gating = gen3_init_clock_gating;
>  	else if (IS_I85X(dev_priv) || IS_I865G(dev_priv))
> -		dev_priv->display.init_clock_gating = i85x_init_clock_gating;
> +		dev_priv->display.funcs.init_clock_gating = i85x_init_clock_gating;
>  	else if (GRAPHICS_VER(dev_priv) == 2)
> -		dev_priv->display.init_clock_gating = i830_init_clock_gating;
> +		dev_priv->display.funcs.init_clock_gating = i830_init_clock_gating;
>  	else {
>  		MISSING_CASE(INTEL_DEVID(dev_priv));
> -		dev_priv->display.init_clock_gating = nop_init_clock_gating;
> +		dev_priv->display.funcs.init_clock_gating = nop_init_clock_gating;
>  	}
>  }
>  
> @@ -8001,7 +8001,7 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
>  	/* For FIFO watermark updates */
>  	if (DISPLAY_VER(dev_priv) >= 9) {
>  		skl_setup_wm_latency(dev_priv);
> -		dev_priv->display.compute_global_watermarks = skl_compute_wm;
> +		dev_priv->display.funcs.compute_global_watermarks = skl_compute_wm;
>  	} else if (HAS_PCH_SPLIT(dev_priv)) {
>  		ilk_setup_wm_latency(dev_priv);
>  
> @@ -8009,12 +8009,12 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
>  		     dev_priv->wm.spr_latency[1] && dev_priv->wm.cur_latency[1]) ||
>  		    (DISPLAY_VER(dev_priv) != 5 && dev_priv->wm.pri_latency[0] &&
>  		     dev_priv->wm.spr_latency[0] && dev_priv->wm.cur_latency[0])) {
> -			dev_priv->display.compute_pipe_wm = ilk_compute_pipe_wm;
> -			dev_priv->display.compute_intermediate_wm =
> +			dev_priv->display.funcs.compute_pipe_wm = ilk_compute_pipe_wm;
> +			dev_priv->display.funcs.compute_intermediate_wm =
>  				ilk_compute_intermediate_wm;
> -			dev_priv->display.initial_watermarks =
> +			dev_priv->display.funcs.initial_watermarks =
>  				ilk_initial_watermarks;
> -			dev_priv->display.optimize_watermarks =
> +			dev_priv->display.funcs.optimize_watermarks =
>  				ilk_optimize_watermarks;
>  		} else {
>  			drm_dbg_kms(&dev_priv->drm,
> @@ -8023,17 +8023,17 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
>  		}
>  	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
>  		vlv_setup_wm_latency(dev_priv);
> -		dev_priv->display.compute_pipe_wm = vlv_compute_pipe_wm;
> -		dev_priv->display.compute_intermediate_wm = vlv_compute_intermediate_wm;
> -		dev_priv->display.initial_watermarks = vlv_initial_watermarks;
> -		dev_priv->display.optimize_watermarks = vlv_optimize_watermarks;
> -		dev_priv->display.atomic_update_watermarks = vlv_atomic_update_fifo;
> +		dev_priv->display.funcs.compute_pipe_wm = vlv_compute_pipe_wm;
> +		dev_priv->display.funcs.compute_intermediate_wm = vlv_compute_intermediate_wm;
> +		dev_priv->display.funcs.initial_watermarks = vlv_initial_watermarks;
> +		dev_priv->display.funcs.optimize_watermarks = vlv_optimize_watermarks;
> +		dev_priv->display.funcs.atomic_update_watermarks = vlv_atomic_update_fifo;
>  	} else if (IS_G4X(dev_priv)) {
>  		g4x_setup_wm_latency(dev_priv);
> -		dev_priv->display.compute_pipe_wm = g4x_compute_pipe_wm;
> -		dev_priv->display.compute_intermediate_wm = g4x_compute_intermediate_wm;
> -		dev_priv->display.initial_watermarks = g4x_initial_watermarks;
> -		dev_priv->display.optimize_watermarks = g4x_optimize_watermarks;
> +		dev_priv->display.funcs.compute_pipe_wm = g4x_compute_pipe_wm;
> +		dev_priv->display.funcs.compute_intermediate_wm = g4x_compute_intermediate_wm;
> +		dev_priv->display.funcs.initial_watermarks = g4x_initial_watermarks;
> +		dev_priv->display.funcs.optimize_watermarks = g4x_optimize_watermarks;
>  	} else if (IS_PINEVIEW(dev_priv)) {
>  		if (!intel_get_cxsr_latency(!IS_MOBILE(dev_priv),
>  					    dev_priv->is_ddr3,
> @@ -8047,21 +8047,21 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
>  				 dev_priv->fsb_freq, dev_priv->mem_freq);
>  			/* Disable CxSR and never update its watermark again */
>  			intel_set_memory_cxsr(dev_priv, false);
> -			dev_priv->display.update_wm = NULL;
> +			dev_priv->display.funcs.update_wm = NULL;
>  		} else
> -			dev_priv->display.update_wm = pnv_update_wm;
> +			dev_priv->display.funcs.update_wm = pnv_update_wm;
>  	} else if (DISPLAY_VER(dev_priv) == 4) {
> -		dev_priv->display.update_wm = i965_update_wm;
> +		dev_priv->display.funcs.update_wm = i965_update_wm;
>  	} else if (DISPLAY_VER(dev_priv) == 3) {
> -		dev_priv->display.update_wm = i9xx_update_wm;
> -		dev_priv->display.get_fifo_size = i9xx_get_fifo_size;
> +		dev_priv->display.funcs.update_wm = i9xx_update_wm;
> +		dev_priv->display.funcs.get_fifo_size = i9xx_get_fifo_size;
>  	} else if (DISPLAY_VER(dev_priv) == 2) {
>  		if (INTEL_NUM_PIPES(dev_priv) == 1) {
> -			dev_priv->display.update_wm = i845_update_wm;
> -			dev_priv->display.get_fifo_size = i845_get_fifo_size;
> +			dev_priv->display.funcs.update_wm = i845_update_wm;
> +			dev_priv->display.funcs.get_fifo_size = i845_get_fifo_size;
>  		} else {
> -			dev_priv->display.update_wm = i9xx_update_wm;
> -			dev_priv->display.get_fifo_size = i830_get_fifo_size;
> +			dev_priv->display.funcs.update_wm = i9xx_update_wm;
> +			dev_priv->display.funcs.get_fifo_size = i830_get_fifo_size;
>  		}
>  	} else {
>  		drm_err(&dev_priv->drm,

-- 
Jani Nikula, Intel Open Source Graphics Center
