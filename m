Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E36540398C
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 14:13:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 599846E19A;
	Wed,  8 Sep 2021 12:13:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C7986E19C
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 12:13:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="220521677"
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="220521677"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 05:13:24 -0700
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="538616527"
Received: from mdoerbec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.33.106])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 05:13:22 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@redhat.com>
In-Reply-To: <20210908003944.2972024-22-airlied@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210908003944.2972024-1-airlied@gmail.com>
 <20210908003944.2972024-22-airlied@gmail.com>
Date: Wed, 08 Sep 2021 15:13:19 +0300
Message-ID: <87o893465c.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 21/21] drm/i915: constify display wm vtable
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
> This adds some extra checks for the table pointer being
> valid due to some paths not setting it due to failing
> CxSR.

Can we just add a

static const struct drm_i915_wm_disp_funcs nop_wm_funcs = {
};

and point dev_priv->wm_disp at that so we can avoid the double checks?


Other than that,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 56 ++++++++-------
>  drivers/gpu/drm/i915/i915_drv.h              |  2 +-
>  drivers/gpu/drm/i915/intel_pm.c              | 74 ++++++++++++++------
>  3 files changed, 81 insertions(+), 51 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 20fd35c6858c..a3d6ab0795a3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -161,8 +161,8 @@ static void intel_modeset_setup_hw_state(struct drm_device *dev,
>   */
>  static void intel_update_watermarks(struct drm_i915_private *dev_priv)
>  {
> -	if (dev_priv->wm_disp.update_wm)
> -		dev_priv->wm_disp.update_wm(dev_priv);
> +	if (dev_priv->wm_disp && dev_priv->wm_disp->update_wm)
> +		dev_priv->wm_disp->update_wm(dev_priv);
>  }
>  
>  /* returns HPLL frequency in kHz */
> @@ -2566,8 +2566,8 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
>  		 * we'll continue to update watermarks the old way, if flags tell
>  		 * us to.
>  		 */
> -		if (dev_priv->wm_disp.initial_watermarks)
> -			dev_priv->wm_disp.initial_watermarks(state, crtc);
> +		if (dev_priv->wm_disp->initial_watermarks)
> +			dev_priv->wm_disp->initial_watermarks(state, crtc);
>  		else if (new_crtc_state->update_wm_pre)
>  			intel_update_watermarks(dev_priv);
>  	}
> @@ -2941,8 +2941,8 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
>  	/* update DSPCNTR to configure gamma for pipe bottom color */
>  	intel_disable_primary_plane(new_crtc_state);
>  
> -	if (dev_priv->wm_disp.initial_watermarks)
> -		dev_priv->wm_disp.initial_watermarks(state, crtc);
> +	if (dev_priv->wm_disp->initial_watermarks)
> +		dev_priv->wm_disp->initial_watermarks(state, crtc);
>  	intel_enable_pipe(new_crtc_state);
>  
>  	if (new_crtc_state->has_pch_encoder)
> @@ -3152,8 +3152,8 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  	if (DISPLAY_VER(dev_priv) >= 11)
>  		icl_set_pipe_chicken(new_crtc_state);
>  
> -	if (dev_priv->wm_disp.initial_watermarks)
> -		dev_priv->wm_disp.initial_watermarks(state, crtc);
> +	if (dev_priv->wm_disp && dev_priv->wm_disp->initial_watermarks)
> +		dev_priv->wm_disp->initial_watermarks(state, crtc);
>  
>  	if (DISPLAY_VER(dev_priv) >= 11) {
>  		const struct intel_dbuf_state *dbuf_state =
> @@ -3570,7 +3570,7 @@ static void valleyview_crtc_enable(struct intel_atomic_state *state,
>  	/* update DSPCNTR to configure gamma for pipe bottom color */
>  	intel_disable_primary_plane(new_crtc_state);
>  
> -	dev_priv->wm_disp.initial_watermarks(state, crtc);
> +	dev_priv->wm_disp->initial_watermarks(state, crtc);
>  	intel_enable_pipe(new_crtc_state);
>  
>  	intel_crtc_vblank_on(new_crtc_state);
> @@ -3613,8 +3613,8 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
>  	/* update DSPCNTR to configure gamma for pipe bottom color */
>  	intel_disable_primary_plane(new_crtc_state);
>  
> -	if (dev_priv->wm_disp.initial_watermarks)
> -		dev_priv->wm_disp.initial_watermarks(state, crtc);
> +	if (dev_priv->wm_disp && dev_priv->wm_disp->initial_watermarks)
> +		dev_priv->wm_disp->initial_watermarks(state, crtc);
>  	else
>  		intel_update_watermarks(dev_priv);
>  	intel_enable_pipe(new_crtc_state);
> @@ -3682,7 +3682,7 @@ static void i9xx_crtc_disable(struct intel_atomic_state *state,
>  	if (DISPLAY_VER(dev_priv) != 2)
>  		intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
>  
> -	if (!dev_priv->wm_disp.initial_watermarks)
> +	if (dev_priv->wm_disp && !dev_priv->wm_disp->initial_watermarks)
>  		intel_update_watermarks(dev_priv);
>  
>  	/* clock the pipe down to 640x480@60 to potentially save power */
> @@ -6790,8 +6790,8 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>  			return ret;
>  	}
>  
> -	if (dev_priv->wm_disp.compute_pipe_wm) {
> -		ret = dev_priv->wm_disp.compute_pipe_wm(state, crtc);
> +	if (dev_priv->wm_disp && dev_priv->wm_disp->compute_pipe_wm) {
> +		ret = dev_priv->wm_disp->compute_pipe_wm(state, crtc);
>  		if (ret) {
>  			drm_dbg_kms(&dev_priv->drm,
>  				    "Target pipe watermarks are invalid\n");
> @@ -6800,9 +6800,9 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>  
>  	}
>  
> -	if (dev_priv->wm_disp.compute_intermediate_wm) {
> +	if (dev_priv->wm_disp && dev_priv->wm_disp->compute_intermediate_wm) {
>  		if (drm_WARN_ON(&dev_priv->drm,
> -				!dev_priv->wm_disp.compute_pipe_wm))
> +				!dev_priv->wm_disp->compute_pipe_wm))
>  			return 0;
>  
>  		/*
> @@ -6810,7 +6810,7 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>  		 * old state and the new state.  We can program these
>  		 * immediately.
>  		 */
> -		ret = dev_priv->wm_disp.compute_intermediate_wm(state, crtc);
> +		ret = dev_priv->wm_disp->compute_intermediate_wm(state, crtc);
>  		if (ret) {
>  			drm_dbg_kms(&dev_priv->drm,
>  				    "No valid intermediate pipe watermarks are possible\n");
> @@ -8919,8 +8919,8 @@ static int calc_watermark_data(struct intel_atomic_state *state)
>  	struct drm_i915_private *dev_priv = to_i915(dev);
>  
>  	/* Is there platform-specific watermark information to calculate? */
> -	if (dev_priv->wm_disp.compute_global_watermarks)
> -		return dev_priv->wm_disp.compute_global_watermarks(state);
> +	if (dev_priv->wm_disp && dev_priv->wm_disp->compute_global_watermarks)
> +		return dev_priv->wm_disp->compute_global_watermarks(state);
>  
>  	return 0;
>  }
> @@ -9745,8 +9745,8 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
>  		intel_psr2_program_trans_man_trk_ctl(new_crtc_state);
>  	}
>  
> -	if (dev_priv->wm_disp.atomic_update_watermarks)
> -		dev_priv->wm_disp.atomic_update_watermarks(state, crtc);
> +	if (dev_priv->wm_disp && dev_priv->wm_disp->atomic_update_watermarks)
> +		dev_priv->wm_disp->atomic_update_watermarks(state, crtc);
>  }
>  
>  static void commit_pipe_post_planes(struct intel_atomic_state *state,
> @@ -9874,8 +9874,8 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
>  	/* FIXME unify this for all platforms */
>  	if (!new_crtc_state->hw.active &&
>  	    !HAS_GMCH(dev_priv) &&
> -	    dev_priv->wm_disp.initial_watermarks)
> -		dev_priv->wm_disp.initial_watermarks(state, crtc);
> +	    dev_priv->wm_disp && dev_priv->wm_disp->initial_watermarks)
> +		dev_priv->wm_disp->initial_watermarks(state, crtc);
>  }
>  
>  static void intel_commit_modeset_disables(struct intel_atomic_state *state)
> @@ -10297,8 +10297,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  		if (DISPLAY_VER(dev_priv) == 2 && planes_enabling(old_crtc_state, new_crtc_state))
>  			intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, true);
>  
> -		if (dev_priv->wm_disp.optimize_watermarks)
> -			dev_priv->wm_disp.optimize_watermarks(state, crtc);
> +		if (dev_priv->wm_disp && dev_priv->wm_disp->optimize_watermarks)
> +			dev_priv->wm_disp->optimize_watermarks(state, crtc);
>  	}
>  
>  	intel_dbuf_post_plane_update(state);
> @@ -11387,7 +11387,9 @@ static void sanitize_watermarks(struct drm_i915_private *dev_priv)
>  	int i;
>  
>  	/* Only supported on platforms that use atomic watermark design */
> -	if (!dev_priv->wm_disp.optimize_watermarks)
> +	if (!dev_priv->wm_disp)
> +		return;
> +	if (!dev_priv->wm_disp->optimize_watermarks)
>  		return;
>  
>  	state = drm_atomic_state_alloc(&dev_priv->drm);
> @@ -11420,7 +11422,7 @@ static void sanitize_watermarks(struct drm_i915_private *dev_priv)
>  	/* Write calculated watermark values back */
>  	for_each_new_intel_crtc_in_state(intel_state, crtc, crtc_state, i) {
>  		crtc_state->wm.need_postvbl_update = true;
> -		dev_priv->wm_disp.optimize_watermarks(intel_state, crtc);
> +		dev_priv->wm_disp->optimize_watermarks(intel_state, crtc);
>  
>  		to_intel_crtc_state(crtc->base.state)->wm = crtc_state->wm;
>  	}
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 44094a25a110..eacd30c076a8 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -993,7 +993,7 @@ struct drm_i915_private {
>  	const struct drm_i915_cg_funcs *cg_funcs;
>  
>  	/* pm display functions */
> -	struct drm_i915_wm_disp_funcs wm_disp;
> +	const struct drm_i915_wm_disp_funcs *wm_disp;
>  
>  	/* irq display functions */
>  	const struct drm_i915_irq_funcs *irq_funcs;
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 44f5582531ac..cceeb059f801 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -7976,6 +7976,48 @@ void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv)
>  	}
>  }
>  
> +static const struct drm_i915_wm_disp_funcs skl_wm_funcs = {
> +	.compute_global_watermarks = skl_compute_wm
> +};
> +
> +static const struct drm_i915_wm_disp_funcs ilk_wm_funcs = {
> +	.compute_pipe_wm = ilk_compute_pipe_wm,
> +	.compute_intermediate_wm = ilk_compute_intermediate_wm,
> +	.initial_watermarks = ilk_initial_watermarks,
> +	.optimize_watermarks = ilk_optimize_watermarks
> +};
> +
> +static const struct drm_i915_wm_disp_funcs vlv_wm_funcs = {
> +	.compute_pipe_wm = vlv_compute_pipe_wm,
> +	.compute_intermediate_wm = vlv_compute_intermediate_wm,
> +	.initial_watermarks = vlv_initial_watermarks,
> +	.optimize_watermarks = vlv_optimize_watermarks,
> +	.atomic_update_watermarks = vlv_atomic_update_fifo
> +};
> +
> +static const struct drm_i915_wm_disp_funcs g4x_wm_funcs = {
> +	.compute_pipe_wm = g4x_compute_pipe_wm,
> +	.compute_intermediate_wm = g4x_compute_intermediate_wm,
> +	.initial_watermarks = g4x_initial_watermarks,
> +	.optimize_watermarks = g4x_optimize_watermarks
> +};
> +
> +static const struct drm_i915_wm_disp_funcs pnv_wm_funcs = {
> +	.update_wm = pnv_update_wm,
> +};
> +
> +static const struct drm_i915_wm_disp_funcs i965_wm_funcs = {
> +	.update_wm = i965_update_wm,
> +};
> +
> +static const struct drm_i915_wm_disp_funcs i9xx_wm_funcs = {
> +	.update_wm = i9xx_update_wm,
> +};
> +
> +static const struct drm_i915_wm_disp_funcs i845_wm_funcs = {
> +	.update_wm = i845_update_wm,
> +};
> +
>  /* Set up chip specific power management-related functions */
>  void intel_init_pm(struct drm_i915_private *dev_priv)
>  {
> @@ -7991,7 +8033,7 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
>  	/* For FIFO watermark updates */
>  	if (DISPLAY_VER(dev_priv) >= 9) {
>  		skl_setup_wm_latency(dev_priv);
> -		dev_priv->wm_disp.compute_global_watermarks = skl_compute_wm;
> +		dev_priv->wm_disp = &skl_wm_funcs;
>  	} else if (HAS_PCH_SPLIT(dev_priv)) {
>  		ilk_setup_wm_latency(dev_priv);
>  
> @@ -7999,13 +8041,7 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
>  		     dev_priv->wm.spr_latency[1] && dev_priv->wm.cur_latency[1]) ||
>  		    (DISPLAY_VER(dev_priv) != 5 && dev_priv->wm.pri_latency[0] &&
>  		     dev_priv->wm.spr_latency[0] && dev_priv->wm.cur_latency[0])) {
> -			dev_priv->wm_disp.compute_pipe_wm = ilk_compute_pipe_wm;
> -			dev_priv->wm_disp.compute_intermediate_wm =
> -				ilk_compute_intermediate_wm;
> -			dev_priv->wm_disp.initial_watermarks =
> -				ilk_initial_watermarks;
> -			dev_priv->wm_disp.optimize_watermarks =
> -				ilk_optimize_watermarks;
> +			dev_priv->wm_disp = &ilk_wm_funcs;
>  		} else {
>  			drm_dbg_kms(&dev_priv->drm,
>  				    "Failed to read display plane latency. "
> @@ -8013,17 +8049,10 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
>  		}
>  	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
>  		vlv_setup_wm_latency(dev_priv);
> -		dev_priv->wm_disp.compute_pipe_wm = vlv_compute_pipe_wm;
> -		dev_priv->wm_disp.compute_intermediate_wm = vlv_compute_intermediate_wm;
> -		dev_priv->wm_disp.initial_watermarks = vlv_initial_watermarks;
> -		dev_priv->wm_disp.optimize_watermarks = vlv_optimize_watermarks;
> -		dev_priv->wm_disp.atomic_update_watermarks = vlv_atomic_update_fifo;
> +		dev_priv->wm_disp = &vlv_wm_funcs;
>  	} else if (IS_G4X(dev_priv)) {
>  		g4x_setup_wm_latency(dev_priv);
> -		dev_priv->wm_disp.compute_pipe_wm = g4x_compute_pipe_wm;
> -		dev_priv->wm_disp.compute_intermediate_wm = g4x_compute_intermediate_wm;
> -		dev_priv->wm_disp.initial_watermarks = g4x_initial_watermarks;
> -		dev_priv->wm_disp.optimize_watermarks = g4x_optimize_watermarks;
> +		dev_priv->wm_disp = &g4x_wm_funcs;
>  	} else if (IS_PINEVIEW(dev_priv)) {
>  		if (!intel_get_cxsr_latency(!IS_MOBILE(dev_priv),
>  					    dev_priv->is_ddr3,
> @@ -8037,18 +8066,17 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
>  				 dev_priv->fsb_freq, dev_priv->mem_freq);
>  			/* Disable CxSR and never update its watermark again */
>  			intel_set_memory_cxsr(dev_priv, false);
> -			dev_priv->wm_disp.update_wm = NULL;
>  		} else
> -			dev_priv->wm_disp.update_wm = pnv_update_wm;
> +			dev_priv->wm_disp = &pnv_wm_funcs;
>  	} else if (DISPLAY_VER(dev_priv) == 4) {
> -		dev_priv->wm_disp.update_wm = i965_update_wm;
> +		dev_priv->wm_disp = &i965_wm_funcs;
>  	} else if (DISPLAY_VER(dev_priv) == 3) {
> -		dev_priv->wm_disp.update_wm = i9xx_update_wm;
> +		dev_priv->wm_disp = &i9xx_wm_funcs;
>  	} else if (DISPLAY_VER(dev_priv) == 2) {
>  		if (INTEL_NUM_PIPES(dev_priv) == 1)
> -			dev_priv->wm_disp.update_wm = i845_update_wm;
> +			dev_priv->wm_disp = &i845_wm_funcs;
>  		else
> -			dev_priv->wm_disp.update_wm = i9xx_update_wm;
> +			dev_priv->wm_disp = &i9xx_wm_funcs;
>  	} else {
>  		drm_err(&dev_priv->drm,
>  			"unexpected fall-through in %s\n", __func__);

-- 
Jani Nikula, Intel Open Source Graphics Center
