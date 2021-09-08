Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E335240393B
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 13:58:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EFE26E194;
	Wed,  8 Sep 2021 11:58:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9D1F6E194
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 11:58:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="220493574"
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="220493574"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 04:58:51 -0700
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="547693940"
Received: from mdoerbec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.33.106])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 04:58:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@redhat.com>
In-Reply-To: <20210908003944.2972024-20-airlied@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210908003944.2972024-1-airlied@gmail.com>
 <20210908003944.2972024-20-airlied@gmail.com>
Date: Wed, 08 Sep 2021 14:58:45 +0300
Message-ID: <8735qf5le2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 19/21] drm/i915: constify display function
 vtable
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

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 81 ++++++++++++--------
>  drivers/gpu/drm/i915/i915_drv.h              |  2 +-
>  2 files changed, 52 insertions(+), 31 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 09c9dc741026..20fd35c6858c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3736,7 +3736,7 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
>  
>  	drm_WARN_ON(&dev_priv->drm, IS_ERR(temp_crtc_state) || ret);
>  
> -	dev_priv->display.crtc_disable(to_intel_atomic_state(state), crtc);
> +	dev_priv->display->crtc_disable(to_intel_atomic_state(state), crtc);
>  
>  	drm_atomic_state_put(state);
>  
> @@ -5941,7 +5941,7 @@ static bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state)
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  
> -	if (!i915->display.get_pipe_config(crtc, crtc_state))
> +	if (!i915->display->get_pipe_config(crtc, crtc_state))
>  		return false;
>  
>  	crtc_state->hw.active = true;
> @@ -9778,7 +9778,7 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
>  
>  	intel_crtc_update_active_timings(new_crtc_state);
>  
> -	dev_priv->display.crtc_enable(state, crtc);
> +	dev_priv->display->crtc_enable(state, crtc);
>  
>  	if (new_crtc_state->bigjoiner_slave)
>  		return;
> @@ -9866,7 +9866,7 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
>  	 */
>  	intel_crtc_disable_pipe_crc(crtc);
>  
> -	dev_priv->display.crtc_disable(state, crtc);
> +	dev_priv->display->crtc_disable(state, crtc);
>  	crtc->active = false;
>  	intel_fbc_disable(crtc);
>  	intel_disable_shared_dpll(old_crtc_state);
> @@ -10246,7 +10246,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  	}
>  
>  	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
> -	dev_priv->display.commit_modeset_enables(state);
> +	dev_priv->display->commit_modeset_enables(state);
>  
>  	if (state->modeset) {
>  		intel_encoders_update_complete(state);
> @@ -11250,6 +11250,46 @@ static const struct drm_mode_config_funcs intel_mode_funcs = {
>  	.atomic_state_free = intel_atomic_state_free,
>  };
>  
> +static const struct drm_i915_display_funcs skl_display_funcs = {
> +	.get_pipe_config = hsw_get_pipe_config,
> +	.crtc_enable = hsw_crtc_enable,
> +	.crtc_disable = hsw_crtc_disable,
> +	.commit_modeset_enables = skl_commit_modeset_enables,
> +	.get_initial_plane_config = skl_get_initial_plane_config,
> +};
> +
> +static const struct drm_i915_display_funcs ddi_display_funcs = {
> +	.get_pipe_config = hsw_get_pipe_config,
> +	.crtc_enable = hsw_crtc_enable,
> +	.crtc_disable = hsw_crtc_disable,
> +	.commit_modeset_enables = intel_commit_modeset_enables,
> +	.get_initial_plane_config = i9xx_get_initial_plane_config,
> +};
> +
> +static const struct drm_i915_display_funcs pch_split_display_funcs = {
> +	.get_pipe_config = ilk_get_pipe_config,
> +	.crtc_enable = ilk_crtc_enable,
> +	.crtc_disable = ilk_crtc_disable,
> +	.commit_modeset_enables = intel_commit_modeset_enables,
> +	.get_initial_plane_config = i9xx_get_initial_plane_config,
> +};
> +
> +static const struct drm_i915_display_funcs vlv_display_funcs = {
> +	.get_pipe_config = i9xx_get_pipe_config,
> +	.crtc_enable = valleyview_crtc_enable,
> +	.crtc_disable = i9xx_crtc_disable,
> +	.commit_modeset_enables = intel_commit_modeset_enables,
> +	.get_initial_plane_config = i9xx_get_initial_plane_config,
> +};
> +
> +static const struct drm_i915_display_funcs i9xx_display_funcs = {
> +	.get_pipe_config = i9xx_get_pipe_config,
> +	.crtc_enable = i9xx_crtc_enable,
> +	.crtc_disable = i9xx_crtc_disable,
> +	.commit_modeset_enables = intel_commit_modeset_enables,
> +	.get_initial_plane_config = i9xx_get_initial_plane_config,
> +};
> +
>  /**
>   * intel_init_display_hooks - initialize the display modesetting hooks
>   * @dev_priv: device private
> @@ -11265,38 +11305,19 @@ void intel_init_display_hooks(struct drm_i915_private *dev_priv)
>  	intel_dpll_init_clock_hook(dev_priv);
>  
>  	if (DISPLAY_VER(dev_priv) >= 9) {
> -		dev_priv->display.get_pipe_config = hsw_get_pipe_config;
> -		dev_priv->display.crtc_enable = hsw_crtc_enable;
> -		dev_priv->display.crtc_disable = hsw_crtc_disable;
> +		dev_priv->display = &skl_display_funcs;
>  	} else if (HAS_DDI(dev_priv)) {
> -		dev_priv->display.get_pipe_config = hsw_get_pipe_config;
> -		dev_priv->display.crtc_enable = hsw_crtc_enable;
> -		dev_priv->display.crtc_disable = hsw_crtc_disable;
> +		dev_priv->display = &ddi_display_funcs;
>  	} else if (HAS_PCH_SPLIT(dev_priv)) {
> -		dev_priv->display.get_pipe_config = ilk_get_pipe_config;
> -		dev_priv->display.crtc_enable = ilk_crtc_enable;
> -		dev_priv->display.crtc_disable = ilk_crtc_disable;
> +		dev_priv->display = &pch_split_display_funcs;
>  	} else if (IS_CHERRYVIEW(dev_priv) ||
>  		   IS_VALLEYVIEW(dev_priv)) {
> -		dev_priv->display.get_pipe_config = i9xx_get_pipe_config;
> -		dev_priv->display.crtc_enable = valleyview_crtc_enable;
> -		dev_priv->display.crtc_disable = i9xx_crtc_disable;
> +		dev_priv->display = &vlv_display_funcs;
>  	} else {
> -		dev_priv->display.get_pipe_config = i9xx_get_pipe_config;
> -		dev_priv->display.crtc_enable = i9xx_crtc_enable;
> -		dev_priv->display.crtc_disable = i9xx_crtc_disable;
> +		dev_priv->display = &i9xx_display_funcs;
>  	}
>  
>  	intel_fdi_init_hook(dev_priv);
> -
> -	if (DISPLAY_VER(dev_priv) >= 9) {
> -		dev_priv->display.commit_modeset_enables = skl_commit_modeset_enables;
> -		dev_priv->display.get_initial_plane_config = skl_get_initial_plane_config;
> -	} else {
> -		dev_priv->display.commit_modeset_enables = intel_commit_modeset_enables;
> -		dev_priv->display.get_initial_plane_config = i9xx_get_initial_plane_config;
> -	}
> -
>  }
>  
>  void intel_modeset_init_hw(struct drm_i915_private *i915)
> @@ -11723,7 +11744,7 @@ int intel_modeset_init_nogem(struct drm_i915_private *i915)
>  		 * can even allow for smooth boot transitions if the BIOS
>  		 * fb is large enough for the active pipe configuration.
>  		 */
> -		i915->display.get_initial_plane_config(crtc, &plane_config);
> +		i915->display->get_initial_plane_config(crtc, &plane_config);
>  
>  		/*
>  		 * If the fb is shared between multiple heads, we'll
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 2231b93c2111..fbcafc7cc075 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1005,7 +1005,7 @@ struct drm_i915_private {
>  	const struct drm_i915_dpll_funcs *dpll_funcs;
>  
>  	/* Display functions */
> -	struct drm_i915_display_funcs display;
> +	const struct drm_i915_display_funcs *display;
>  
>  	/* Display internal color functions */
>  	const struct drm_i915_display_color_funcs *color_funcs;

-- 
Jani Nikula, Intel Open Source Graphics Center
