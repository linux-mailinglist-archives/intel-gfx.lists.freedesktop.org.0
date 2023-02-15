Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC33697E50
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 15:27:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE11D10E135;
	Wed, 15 Feb 2023 14:27:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC2DD10E1D1
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 14:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676471225; x=1708007225;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=WttMMcgRhi/00DGhhciGfqsGzUm37pOes/GmvYSNhsE=;
 b=kEBQ/A8CXxgd5dEUkKf4Q3TbGAzRWmnGk2Plehd1temT0mzpHce10q/c
 Gco2I1it7SRn/MC1QpAH4xIDCyHbPVHM5i7p28dCWCqBqU+qzIP0qYFoR
 4aeng1lnfp8iMwJXrUV0vDVvLsDp2tSHYTFfh+64v6kZTXMRJieX3dd3h
 wLGjJqVrs5qMjJbzXqwNShI4MQHf+N41aZKobz2V0a6mVbN7fHpuTwmop
 XIhSGGC6orW9tJZOckPWn0387dMVTWXc+OtANTCF3M1bFig8jIR71Vo/d
 azATO6j9Pnzb7FiHAOf4nhaTVL6eJ/D7ae5y04qOz9jRUU6x0+1xVDcTj Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="311803879"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="311803879"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 06:27:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="733298351"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="733298351"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by fmsmga008.fm.intel.com with SMTP; 15 Feb 2023 06:27:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Feb 2023 16:27:02 +0200
Date: Wed, 15 Feb 2023 16:27:02 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y+zrtm8cQZtMH6b2@intel.com>
References: <20230215141910.433043-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230215141910.433043-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 1/5] drm/i915/wm: move ILK watermark
 sanitization to i9xx_wm.[ch]
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 15, 2023 at 04:19:06PM +0200, Jani Nikula wrote:
> Move sanitize_watermarks() to i9xx_wm.[ch] and rename as
> ilk_wm_sanitize(). The slightly unfortunate downside is having to expose
> intel_atomic_check() from intel_display.c, but this declutters
> intel_display.c nicely.
> 
> v2:
> - Move to i9xx_wm.[ch] instead of intel_wm.[ch] (Ville)
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/i9xx_wm.c       | 119 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/i9xx_wm.h       |   1 +
>  drivers/gpu/drm/i915/display/intel_display.c | 124 +------------------
>  drivers/gpu/drm/i915/display/intel_display.h |   2 +
>  4 files changed, 125 insertions(+), 121 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
> index dfdd40991871..f76ac64ebd71 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
> @@ -5,6 +5,7 @@
>  
>  #include "i915_drv.h"
>  #include "i9xx_wm.h"
> +#include "intel_atomic.h"
>  #include "intel_display.h"
>  #include "intel_display_trace.h"
>  #include "intel_mchbar_regs.h"
> @@ -3380,6 +3381,124 @@ static void ilk_pipe_wm_get_hw_state(struct intel_crtc *crtc)
>  	crtc->wm.active.ilk = *active;
>  }
>  
> +static int ilk_sanitize_watermarks_add_affected(struct drm_atomic_state *state)
> +{
> +	struct drm_plane *plane;
> +	struct intel_crtc *crtc;
> +
> +	for_each_intel_crtc(state->dev, crtc) {
> +		struct intel_crtc_state *crtc_state;
> +
> +		crtc_state = intel_atomic_get_crtc_state(state, crtc);
> +		if (IS_ERR(crtc_state))
> +			return PTR_ERR(crtc_state);
> +
> +		if (crtc_state->hw.active) {
> +			/*
> +			 * Preserve the inherited flag to avoid
> +			 * taking the full modeset path.
> +			 */
> +			crtc_state->inherited = true;
> +		}
> +	}
> +
> +	drm_for_each_plane(plane, state->dev) {
> +		struct drm_plane_state *plane_state;
> +
> +		plane_state = drm_atomic_get_plane_state(state, plane);
> +		if (IS_ERR(plane_state))
> +			return PTR_ERR(plane_state);
> +	}
> +
> +	return 0;
> +}
> +
> +/*
> + * Calculate what we think the watermarks should be for the state we've read
> + * out of the hardware and then immediately program those watermarks so that
> + * we ensure the hardware settings match our internal state.
> + *
> + * We can calculate what we think WM's should be by creating a duplicate of the
> + * current state (which was constructed during hardware readout) and running it
> + * through the atomic check code to calculate new watermark values in the
> + * state object.
> + */
> +void ilk_wm_sanitize(struct drm_i915_private *dev_priv)
> +{
> +	struct drm_atomic_state *state;
> +	struct intel_atomic_state *intel_state;
> +	struct intel_crtc *crtc;
> +	struct intel_crtc_state *crtc_state;
> +	struct drm_modeset_acquire_ctx ctx;
> +	int ret;
> +	int i;
> +
> +	/* Only supported on platforms that use atomic watermark design */
> +	if (!dev_priv->display.funcs.wm->optimize_watermarks)
> +		return;
> +
> +	state = drm_atomic_state_alloc(&dev_priv->drm);
> +	if (drm_WARN_ON(&dev_priv->drm, !state))
> +		return;
> +
> +	intel_state = to_intel_atomic_state(state);
> +
> +	drm_modeset_acquire_init(&ctx, 0);
> +
> +retry:
> +	state->acquire_ctx = &ctx;
> +
> +	/*
> +	 * Hardware readout is the only time we don't want to calculate
> +	 * intermediate watermarks (since we don't trust the current
> +	 * watermarks).
> +	 */
> +	if (!HAS_GMCH(dev_priv))
> +		intel_state->skip_intermediate_wm = true;
> +
> +	ret = ilk_sanitize_watermarks_add_affected(state);
> +	if (ret)
> +		goto fail;
> +
> +	ret = intel_atomic_check(&dev_priv->drm, state);
> +	if (ret)
> +		goto fail;
> +
> +	/* Write calculated watermark values back */
> +	for_each_new_intel_crtc_in_state(intel_state, crtc, crtc_state, i) {
> +		crtc_state->wm.need_postvbl_update = true;
> +		intel_optimize_watermarks(intel_state, crtc);
> +
> +		to_intel_crtc_state(crtc->base.state)->wm = crtc_state->wm;
> +	}
> +
> +fail:
> +	if (ret == -EDEADLK) {
> +		drm_atomic_state_clear(state);
> +		drm_modeset_backoff(&ctx);
> +		goto retry;
> +	}
> +
> +	/*
> +	 * If we fail here, it means that the hardware appears to be
> +	 * programmed in a way that shouldn't be possible, given our
> +	 * understanding of watermark requirements.  This might mean a
> +	 * mistake in the hardware readout code or a mistake in the
> +	 * watermark calculations for a given platform.  Raise a WARN
> +	 * so that this is noticeable.
> +	 *
> +	 * If this actually happens, we'll have to just leave the
> +	 * BIOS-programmed watermarks untouched and hope for the best.
> +	 */
> +	drm_WARN(&dev_priv->drm, ret,
> +		 "Could not determine valid watermarks for inherited state\n");
> +
> +	drm_atomic_state_put(state);
> +
> +	drm_modeset_drop_locks(&ctx);
> +	drm_modeset_acquire_fini(&ctx);
> +}
> +
>  #define _FW_WM(value, plane) \
>  	(((value) & DSPFW_ ## plane ## _MASK) >> DSPFW_ ## plane ## _SHIFT)
>  #define _FW_WM_VLV(value, plane) \
> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.h b/drivers/gpu/drm/i915/display/i9xx_wm.h
> index 133a3234dea5..a7875cbcd05a 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_wm.h
> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.h
> @@ -14,6 +14,7 @@ struct intel_plane_state;
>  
>  int ilk_wm_max_level(const struct drm_i915_private *i915);
>  bool ilk_disable_lp_wm(struct drm_i915_private *i915);
> +void ilk_wm_sanitize(struct drm_i915_private *i915);
>  bool intel_set_memory_cxsr(struct drm_i915_private *i915, bool enable);
>  void i9xx_wm_init(struct drm_i915_private *i915);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 3479125fbda6..d5769e8d5a5c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6606,8 +6606,8 @@ static int intel_bigjoiner_add_affected_crtcs(struct intel_atomic_state *state)
>   * @dev: drm device
>   * @_state: state to validate
>   */
> -static int intel_atomic_check(struct drm_device *dev,
> -			      struct drm_atomic_state *_state)
> +int intel_atomic_check(struct drm_device *dev,
> +		       struct drm_atomic_state *_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(dev);
>  	struct intel_atomic_state *state = to_intel_atomic_state(_state);
> @@ -8267,124 +8267,6 @@ void intel_modeset_init_hw(struct drm_i915_private *i915)
>  	cdclk_state->logical = cdclk_state->actual = i915->display.cdclk.hw;
>  }
>  
> -static int sanitize_watermarks_add_affected(struct drm_atomic_state *state)
> -{
> -	struct drm_plane *plane;
> -	struct intel_crtc *crtc;
> -
> -	for_each_intel_crtc(state->dev, crtc) {
> -		struct intel_crtc_state *crtc_state;
> -
> -		crtc_state = intel_atomic_get_crtc_state(state, crtc);
> -		if (IS_ERR(crtc_state))
> -			return PTR_ERR(crtc_state);
> -
> -		if (crtc_state->hw.active) {
> -			/*
> -			 * Preserve the inherited flag to avoid
> -			 * taking the full modeset path.
> -			 */
> -			crtc_state->inherited = true;
> -		}
> -	}
> -
> -	drm_for_each_plane(plane, state->dev) {
> -		struct drm_plane_state *plane_state;
> -
> -		plane_state = drm_atomic_get_plane_state(state, plane);
> -		if (IS_ERR(plane_state))
> -			return PTR_ERR(plane_state);
> -	}
> -
> -	return 0;
> -}
> -
> -/*
> - * Calculate what we think the watermarks should be for the state we've read
> - * out of the hardware and then immediately program those watermarks so that
> - * we ensure the hardware settings match our internal state.
> - *
> - * We can calculate what we think WM's should be by creating a duplicate of the
> - * current state (which was constructed during hardware readout) and running it
> - * through the atomic check code to calculate new watermark values in the
> - * state object.
> - */
> -static void sanitize_watermarks(struct drm_i915_private *dev_priv)
> -{
> -	struct drm_atomic_state *state;
> -	struct intel_atomic_state *intel_state;
> -	struct intel_crtc *crtc;
> -	struct intel_crtc_state *crtc_state;
> -	struct drm_modeset_acquire_ctx ctx;
> -	int ret;
> -	int i;
> -
> -	/* Only supported on platforms that use atomic watermark design */
> -	if (!dev_priv->display.funcs.wm->optimize_watermarks)
> -		return;
> -
> -	state = drm_atomic_state_alloc(&dev_priv->drm);
> -	if (drm_WARN_ON(&dev_priv->drm, !state))
> -		return;
> -
> -	intel_state = to_intel_atomic_state(state);
> -
> -	drm_modeset_acquire_init(&ctx, 0);
> -
> -retry:
> -	state->acquire_ctx = &ctx;
> -
> -	/*
> -	 * Hardware readout is the only time we don't want to calculate
> -	 * intermediate watermarks (since we don't trust the current
> -	 * watermarks).
> -	 */
> -	if (!HAS_GMCH(dev_priv))
> -		intel_state->skip_intermediate_wm = true;
> -
> -	ret = sanitize_watermarks_add_affected(state);
> -	if (ret)
> -		goto fail;
> -
> -	ret = intel_atomic_check(&dev_priv->drm, state);
> -	if (ret)
> -		goto fail;
> -
> -	/* Write calculated watermark values back */
> -	for_each_new_intel_crtc_in_state(intel_state, crtc, crtc_state, i) {
> -		crtc_state->wm.need_postvbl_update = true;
> -		intel_optimize_watermarks(intel_state, crtc);
> -
> -		to_intel_crtc_state(crtc->base.state)->wm = crtc_state->wm;
> -	}
> -
> -fail:
> -	if (ret == -EDEADLK) {
> -		drm_atomic_state_clear(state);
> -		drm_modeset_backoff(&ctx);
> -		goto retry;
> -	}
> -
> -	/*
> -	 * If we fail here, it means that the hardware appears to be
> -	 * programmed in a way that shouldn't be possible, given our
> -	 * understanding of watermark requirements.  This might mean a
> -	 * mistake in the hardware readout code or a mistake in the
> -	 * watermark calculations for a given platform.  Raise a WARN
> -	 * so that this is noticeable.
> -	 *
> -	 * If this actually happens, we'll have to just leave the
> -	 * BIOS-programmed watermarks untouched and hope for the best.
> -	 */
> -	drm_WARN(&dev_priv->drm, ret,
> -		 "Could not determine valid watermarks for inherited state\n");
> -
> -	drm_atomic_state_put(state);
> -
> -	drm_modeset_drop_locks(&ctx);
> -	drm_modeset_acquire_fini(&ctx);
> -}
> -
>  static int intel_initial_commit(struct drm_device *dev)
>  {
>  	struct drm_atomic_state *state = NULL;
> @@ -8666,7 +8548,7 @@ int intel_modeset_init_nogem(struct drm_i915_private *i915)
>  	 * since the watermark calculation done here will use pstate->fb.
>  	 */
>  	if (!HAS_GMCH(i915))

Maybe also pimp this a bit so we don't even call it on skl+?

Either way
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> -		sanitize_watermarks(i915);
> +		ilk_wm_sanitize(i915);
>  
>  	return 0;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index cb6f520cc575..ed852f62721d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -32,6 +32,7 @@
>  
>  enum drm_scaling_filter;
>  struct dpll;
> +struct drm_atomic_state;
>  struct drm_connector;
>  struct drm_device;
>  struct drm_display_mode;
> @@ -394,6 +395,7 @@ enum phy_fia {
>  			     ((connector) = to_intel_connector((__state)->base.connectors[__i].ptr), \
>  			     (new_connector_state) = to_intel_digital_connector_state((__state)->base.connectors[__i].new_state), 1))
>  
> +int intel_atomic_check(struct drm_device *dev, struct drm_atomic_state *state);
>  int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
>  				     struct intel_crtc *crtc);
>  u8 intel_calc_active_pipes(struct intel_atomic_state *state,
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
