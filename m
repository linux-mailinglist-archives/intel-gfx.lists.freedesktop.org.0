Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F6E403717
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 11:40:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D51A6E165;
	Wed,  8 Sep 2021 09:40:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F39F6E165
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 09:40:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="242733269"
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="242733269"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 02:40:42 -0700
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="538475097"
Received: from mdoerbec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.33.106])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 02:40:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@redhat.com>
In-Reply-To: <20210908003944.2972024-6-airlied@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210908003944.2972024-1-airlied@gmail.com>
 <20210908003944.2972024-6-airlied@gmail.com>
Date: Wed, 08 Sep 2021 12:40:37 +0300
Message-ID: <87o89376cq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 05/21] drm/i915: split watermark vfuncs from
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
>
> These are the watermark api between display and pm.
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 54 ++++++++++----------
>  drivers/gpu/drm/i915/i915_drv.h              | 24 ++++++---
>  drivers/gpu/drm/i915/intel_pm.c              | 40 +++++++--------
>  3 files changed, 63 insertions(+), 55 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index b495371c1889..b1202ede3fb0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -161,8 +161,8 @@ static void intel_modeset_setup_hw_state(struct drm_device *dev,
>   */
>  static void intel_update_watermarks(struct drm_i915_private *dev_priv)
>  {
> -	if (dev_priv->display.update_wm)
> -		dev_priv->display.update_wm(dev_priv);
> +	if (dev_priv->wm_disp.update_wm)
> +		dev_priv->wm_disp.update_wm(dev_priv);
>  }
>  
>  /* returns HPLL frequency in kHz */
> @@ -2566,8 +2566,8 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
>  		 * we'll continue to update watermarks the old way, if flags tell
>  		 * us to.
>  		 */
> -		if (dev_priv->display.initial_watermarks)
> -			dev_priv->display.initial_watermarks(state, crtc);
> +		if (dev_priv->wm_disp.initial_watermarks)
> +			dev_priv->wm_disp.initial_watermarks(state, crtc);
>  		else if (new_crtc_state->update_wm_pre)
>  			intel_update_watermarks(dev_priv);

Having an intel_initial_watermarks() wrapper similar to
intel_update_watermarks() to do the vfunc call would make this patch
nice and tidy.


>  	}
> @@ -2941,8 +2941,8 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
>  	/* update DSPCNTR to configure gamma for pipe bottom color */
>  	intel_disable_primary_plane(new_crtc_state);
>  
> -	if (dev_priv->display.initial_watermarks)
> -		dev_priv->display.initial_watermarks(state, crtc);
> +	if (dev_priv->wm_disp.initial_watermarks)
> +		dev_priv->wm_disp.initial_watermarks(state, crtc);
>  	intel_enable_pipe(new_crtc_state);
>  
>  	if (new_crtc_state->has_pch_encoder)
> @@ -3152,8 +3152,8 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  	if (DISPLAY_VER(dev_priv) >= 11)
>  		icl_set_pipe_chicken(new_crtc_state);
>  
> -	if (dev_priv->display.initial_watermarks)
> -		dev_priv->display.initial_watermarks(state, crtc);
> +	if (dev_priv->wm_disp.initial_watermarks)
> +		dev_priv->wm_disp.initial_watermarks(state, crtc);
>  
>  	if (DISPLAY_VER(dev_priv) >= 11) {
>  		const struct intel_dbuf_state *dbuf_state =
> @@ -3570,7 +3570,7 @@ static void valleyview_crtc_enable(struct intel_atomic_state *state,
>  	/* update DSPCNTR to configure gamma for pipe bottom color */
>  	intel_disable_primary_plane(new_crtc_state);
>  
> -	dev_priv->display.initial_watermarks(state, crtc);
> +	dev_priv->wm_disp.initial_watermarks(state, crtc);
>  	intel_enable_pipe(new_crtc_state);
>  
>  	intel_crtc_vblank_on(new_crtc_state);
> @@ -3613,8 +3613,8 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
>  	/* update DSPCNTR to configure gamma for pipe bottom color */
>  	intel_disable_primary_plane(new_crtc_state);
>  
> -	if (dev_priv->display.initial_watermarks)
> -		dev_priv->display.initial_watermarks(state, crtc);
> +	if (dev_priv->wm_disp.initial_watermarks)
> +		dev_priv->wm_disp.initial_watermarks(state, crtc);
>  	else
>  		intel_update_watermarks(dev_priv);
>  	intel_enable_pipe(new_crtc_state);
> @@ -3682,7 +3682,7 @@ static void i9xx_crtc_disable(struct intel_atomic_state *state,
>  	if (DISPLAY_VER(dev_priv) != 2)
>  		intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
>  
> -	if (!dev_priv->display.initial_watermarks)
> +	if (!dev_priv->wm_disp.initial_watermarks)
>  		intel_update_watermarks(dev_priv);
>  
>  	/* clock the pipe down to 640x480@60 to potentially save power */
> @@ -6790,8 +6790,8 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>  			return ret;
>  	}
>  
> -	if (dev_priv->display.compute_pipe_wm) {
> -		ret = dev_priv->display.compute_pipe_wm(state, crtc);
> +	if (dev_priv->wm_disp.compute_pipe_wm) {
> +		ret = dev_priv->wm_disp.compute_pipe_wm(state, crtc);
>  		if (ret) {
>  			drm_dbg_kms(&dev_priv->drm,
>  				    "Target pipe watermarks are invalid\n");
> @@ -6800,9 +6800,9 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>  
>  	}
>  
> -	if (dev_priv->display.compute_intermediate_wm) {
> +	if (dev_priv->wm_disp.compute_intermediate_wm) {
>  		if (drm_WARN_ON(&dev_priv->drm,
> -				!dev_priv->display.compute_pipe_wm))
> +				!dev_priv->wm_disp.compute_pipe_wm))
>  			return 0;
>  
>  		/*
> @@ -6810,7 +6810,7 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>  		 * old state and the new state.  We can program these
>  		 * immediately.
>  		 */
> -		ret = dev_priv->display.compute_intermediate_wm(state, crtc);
> +		ret = dev_priv->wm_disp.compute_intermediate_wm(state, crtc);
>  		if (ret) {
>  			drm_dbg_kms(&dev_priv->drm,
>  				    "No valid intermediate pipe watermarks are possible\n");
> @@ -8919,8 +8919,8 @@ static int calc_watermark_data(struct intel_atomic_state *state)
>  	struct drm_i915_private *dev_priv = to_i915(dev);
>  
>  	/* Is there platform-specific watermark information to calculate? */
> -	if (dev_priv->display.compute_global_watermarks)
> -		return dev_priv->display.compute_global_watermarks(state);
> +	if (dev_priv->wm_disp.compute_global_watermarks)
> +		return dev_priv->wm_disp.compute_global_watermarks(state);

Ditto all over the place.

As an overall design and style guide, I think I'm starting to lean
towards always requiring a wrapper for calling vfuncs. The one exception
might be calls completely internal to a file, and we do have them a lot
too.

But in this case, everything that gets called from intel_display.c I
think should have a wrapper, so we can hide the implementation details
and maintain a decent API.

>  
>  	return 0;
>  }
> @@ -9745,8 +9745,8 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
>  		intel_psr2_program_trans_man_trk_ctl(new_crtc_state);
>  	}
>  
> -	if (dev_priv->display.atomic_update_watermarks)
> -		dev_priv->display.atomic_update_watermarks(state, crtc);
> +	if (dev_priv->wm_disp.atomic_update_watermarks)
> +		dev_priv->wm_disp.atomic_update_watermarks(state, crtc);
>  }
>  
>  static void commit_pipe_post_planes(struct intel_atomic_state *state,
> @@ -9874,8 +9874,8 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
>  	/* FIXME unify this for all platforms */
>  	if (!new_crtc_state->hw.active &&
>  	    !HAS_GMCH(dev_priv) &&
> -	    dev_priv->display.initial_watermarks)
> -		dev_priv->display.initial_watermarks(state, crtc);
> +	    dev_priv->wm_disp.initial_watermarks)
> +		dev_priv->wm_disp.initial_watermarks(state, crtc);
>  }
>  
>  static void intel_commit_modeset_disables(struct intel_atomic_state *state)
> @@ -10297,8 +10297,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  		if (DISPLAY_VER(dev_priv) == 2 && planes_enabling(old_crtc_state, new_crtc_state))
>  			intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, true);
>  
> -		if (dev_priv->display.optimize_watermarks)
> -			dev_priv->display.optimize_watermarks(state, crtc);
> +		if (dev_priv->wm_disp.optimize_watermarks)
> +			dev_priv->wm_disp.optimize_watermarks(state, crtc);
>  	}
>  
>  	intel_dbuf_post_plane_update(state);
> @@ -11366,7 +11366,7 @@ static void sanitize_watermarks(struct drm_i915_private *dev_priv)
>  	int i;
>  
>  	/* Only supported on platforms that use atomic watermark design */
> -	if (!dev_priv->display.optimize_watermarks)
> +	if (!dev_priv->wm_disp.optimize_watermarks)
>  		return;
>  
>  	state = drm_atomic_state_alloc(&dev_priv->drm);
> @@ -11399,7 +11399,7 @@ static void sanitize_watermarks(struct drm_i915_private *dev_priv)
>  	/* Write calculated watermark values back */
>  	for_each_new_intel_crtc_in_state(intel_state, crtc, crtc_state, i) {
>  		crtc_state->wm.need_postvbl_update = true;
> -		dev_priv->display.optimize_watermarks(intel_state, crtc);
> +		dev_priv->wm_disp.optimize_watermarks(intel_state, crtc);
>  
>  		to_intel_crtc_state(crtc->base.state)->wm = crtc_state->wm;
>  	}
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index b93fa19892b5..2beee62bfb91 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -328,13 +328,10 @@ struct drm_i915_cg_funcs {
>  	void (*init_clock_gating)(struct drm_i915_private *dev_priv);
>  };
>  
> -struct drm_i915_display_funcs {
> -	void (*get_cdclk)(struct drm_i915_private *dev_priv,
> -			  struct intel_cdclk_config *cdclk_config);
> -	void (*set_cdclk)(struct drm_i915_private *dev_priv,
> -			  const struct intel_cdclk_config *cdclk_config,
> -			  enum pipe pipe);
> -	int (*bw_calc_min_cdclk)(struct intel_atomic_state *state);
> +/* functions used for watermark calcs for display. */
> +struct drm_i915_wm_disp_funcs {
> +	/* update_wm is for legacy wm management */
> +	void (*update_wm)(struct drm_i915_private *dev_priv);
>  	int (*compute_pipe_wm)(struct intel_atomic_state *state,
>  			       struct intel_crtc *crtc);
>  	int (*compute_intermediate_wm)(struct intel_atomic_state *state,
> @@ -346,7 +343,15 @@ struct drm_i915_display_funcs {
>  	void (*optimize_watermarks)(struct intel_atomic_state *state,
>  				    struct intel_crtc *crtc);
>  	int (*compute_global_watermarks)(struct intel_atomic_state *state);
> -	void (*update_wm)(struct drm_i915_private *dev_priv);
> +};
> +
> +struct drm_i915_display_funcs {
> +	void (*get_cdclk)(struct drm_i915_private *dev_priv,
> +			  struct intel_cdclk_config *cdclk_config);
> +	void (*set_cdclk)(struct drm_i915_private *dev_priv,
> +			  const struct intel_cdclk_config *cdclk_config,
> +			  enum pipe pipe);
> +	int (*bw_calc_min_cdclk)(struct intel_atomic_state *state);
>  	int (*modeset_calc_cdclk)(struct intel_cdclk_state *state);
>  	u8 (*calc_voltage_level)(int cdclk);
>  	/* Returns the active state of the crtc, and if the crtc is active,
> @@ -976,6 +981,9 @@ struct drm_i915_private {
>  	/* pm private clock gating functions */
>  	struct drm_i915_cg_funcs cg_funcs;
>  
> +	/* pm display functions */
> +	struct drm_i915_wm_disp_funcs wm_disp;
> +
>  	/* Display functions */
>  	struct drm_i915_display_funcs display;
>  
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 73549e774881..7a457646fb84 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -7962,7 +7962,7 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
>  	/* For FIFO watermark updates */
>  	if (DISPLAY_VER(dev_priv) >= 9) {
>  		skl_setup_wm_latency(dev_priv);
> -		dev_priv->display.compute_global_watermarks = skl_compute_wm;
> +		dev_priv->wm_disp.compute_global_watermarks = skl_compute_wm;
>  	} else if (HAS_PCH_SPLIT(dev_priv)) {
>  		ilk_setup_wm_latency(dev_priv);
>  
> @@ -7970,12 +7970,12 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
>  		     dev_priv->wm.spr_latency[1] && dev_priv->wm.cur_latency[1]) ||
>  		    (DISPLAY_VER(dev_priv) != 5 && dev_priv->wm.pri_latency[0] &&
>  		     dev_priv->wm.spr_latency[0] && dev_priv->wm.cur_latency[0])) {
> -			dev_priv->display.compute_pipe_wm = ilk_compute_pipe_wm;
> -			dev_priv->display.compute_intermediate_wm =
> +			dev_priv->wm_disp.compute_pipe_wm = ilk_compute_pipe_wm;
> +			dev_priv->wm_disp.compute_intermediate_wm =
>  				ilk_compute_intermediate_wm;
> -			dev_priv->display.initial_watermarks =
> +			dev_priv->wm_disp.initial_watermarks =
>  				ilk_initial_watermarks;
> -			dev_priv->display.optimize_watermarks =
> +			dev_priv->wm_disp.optimize_watermarks =
>  				ilk_optimize_watermarks;
>  		} else {
>  			drm_dbg_kms(&dev_priv->drm,
> @@ -7984,17 +7984,17 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
>  		}
>  	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
>  		vlv_setup_wm_latency(dev_priv);
> -		dev_priv->display.compute_pipe_wm = vlv_compute_pipe_wm;
> -		dev_priv->display.compute_intermediate_wm = vlv_compute_intermediate_wm;
> -		dev_priv->display.initial_watermarks = vlv_initial_watermarks;
> -		dev_priv->display.optimize_watermarks = vlv_optimize_watermarks;
> -		dev_priv->display.atomic_update_watermarks = vlv_atomic_update_fifo;
> +		dev_priv->wm_disp.compute_pipe_wm = vlv_compute_pipe_wm;
> +		dev_priv->wm_disp.compute_intermediate_wm = vlv_compute_intermediate_wm;
> +		dev_priv->wm_disp.initial_watermarks = vlv_initial_watermarks;
> +		dev_priv->wm_disp.optimize_watermarks = vlv_optimize_watermarks;
> +		dev_priv->wm_disp.atomic_update_watermarks = vlv_atomic_update_fifo;
>  	} else if (IS_G4X(dev_priv)) {
>  		g4x_setup_wm_latency(dev_priv);
> -		dev_priv->display.compute_pipe_wm = g4x_compute_pipe_wm;
> -		dev_priv->display.compute_intermediate_wm = g4x_compute_intermediate_wm;
> -		dev_priv->display.initial_watermarks = g4x_initial_watermarks;
> -		dev_priv->display.optimize_watermarks = g4x_optimize_watermarks;
> +		dev_priv->wm_disp.compute_pipe_wm = g4x_compute_pipe_wm;
> +		dev_priv->wm_disp.compute_intermediate_wm = g4x_compute_intermediate_wm;
> +		dev_priv->wm_disp.initial_watermarks = g4x_initial_watermarks;
> +		dev_priv->wm_disp.optimize_watermarks = g4x_optimize_watermarks;
>  	} else if (IS_PINEVIEW(dev_priv)) {
>  		if (!intel_get_cxsr_latency(!IS_MOBILE(dev_priv),
>  					    dev_priv->is_ddr3,
> @@ -8008,18 +8008,18 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
>  				 dev_priv->fsb_freq, dev_priv->mem_freq);
>  			/* Disable CxSR and never update its watermark again */
>  			intel_set_memory_cxsr(dev_priv, false);
> -			dev_priv->display.update_wm = NULL;
> +			dev_priv->wm_disp.update_wm = NULL;
>  		} else
> -			dev_priv->display.update_wm = pnv_update_wm;
> +			dev_priv->wm_disp.update_wm = pnv_update_wm;
>  	} else if (DISPLAY_VER(dev_priv) == 4) {
> -		dev_priv->display.update_wm = i965_update_wm;
> +		dev_priv->wm_disp.update_wm = i965_update_wm;
>  	} else if (DISPLAY_VER(dev_priv) == 3) {
> -		dev_priv->display.update_wm = i9xx_update_wm;
> +		dev_priv->wm_disp.update_wm = i9xx_update_wm;
>  	} else if (DISPLAY_VER(dev_priv) == 2) {
>  		if (INTEL_NUM_PIPES(dev_priv) == 1)
> -			dev_priv->display.update_wm = i845_update_wm;
> +			dev_priv->wm_disp.update_wm = i845_update_wm;
>  		else
> -			dev_priv->display.update_wm = i9xx_update_wm;
> +			dev_priv->wm_disp.update_wm = i9xx_update_wm;
>  	} else {
>  		drm_err(&dev_priv->drm,
>  			"unexpected fall-through in %s\n", __func__);

-- 
Jani Nikula, Intel Open Source Graphics Center
