Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D564F40378E
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 12:09:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBB366E182;
	Wed,  8 Sep 2021 10:09:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 091EE6E182
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 10:09:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="281458171"
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="281458171"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 03:09:13 -0700
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="538482815"
Received: from mdoerbec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.33.106])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 03:09:10 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@redhat.com>
In-Reply-To: <20210908003944.2972024-12-airlied@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210908003944.2972024-1-airlied@gmail.com>
 <20210908003944.2972024-12-airlied@gmail.com>
Date: Wed, 08 Sep 2021 13:09:08 +0300
Message-ID: <877dfr7517.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 11/21] drm/i915: split the dpll clock
 compute out from display vtable.
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
> this could be merged later but for now it's simple to split it out.
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  6 +++---
>  drivers/gpu/drm/i915/display/intel_dpll.c    | 16 ++++++++--------
>  drivers/gpu/drm/i915/i915_drv.h              |  8 +++++++-
>  3 files changed, 18 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index b981a923cc2f..87950202f4ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6768,10 +6768,10 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>  		crtc_state->update_wm_post = true;
>  
>  	if (mode_changed && crtc_state->hw.enable &&
> -	    dev_priv->display.crtc_compute_clock &&
> +	    dev_priv->dpll_funcs.crtc_compute_clock &&
>  	    !crtc_state->bigjoiner_slave &&
>  	    !drm_WARN_ON(&dev_priv->drm, crtc_state->shared_dpll)) {
> -		ret = dev_priv->display.crtc_compute_clock(crtc_state);
> +		ret = dev_priv->dpll_funcs.crtc_compute_clock(crtc_state);
>  		if (ret)
>  			return ret;

It was there before, but yuck. Conditions like this with checks on the
existence of a vfunc are really ugly. Could benefit from a wrapper - but
that requires figuring out what the condition actually is. *facepalm*.

>  	}
> @@ -8807,7 +8807,7 @@ static void intel_modeset_clear_plls(struct intel_atomic_state *state)
>  	struct intel_crtc *crtc;
>  	int i;
>  
> -	if (!dev_priv->display.crtc_compute_clock)
> +	if (!dev_priv->dpll_funcs.crtc_compute_clock)
>  		return;
>  
>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
> index 210f91f4a576..9326c7cbb05c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1367,21 +1367,21 @@ void
>  intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv)
>  {
>  	if (DISPLAY_VER(dev_priv) >= 9 || HAS_DDI(dev_priv))
> -		dev_priv->display.crtc_compute_clock = hsw_crtc_compute_clock;
> +		dev_priv->dpll_funcs.crtc_compute_clock = hsw_crtc_compute_clock;
>  	else if (HAS_PCH_SPLIT(dev_priv))
> -		dev_priv->display.crtc_compute_clock = ilk_crtc_compute_clock;
> +		dev_priv->dpll_funcs.crtc_compute_clock = ilk_crtc_compute_clock;
>  	else if (IS_CHERRYVIEW(dev_priv))
> -		dev_priv->display.crtc_compute_clock = chv_crtc_compute_clock;
> +		dev_priv->dpll_funcs.crtc_compute_clock = chv_crtc_compute_clock;
>  	else if (IS_VALLEYVIEW(dev_priv))
> -		dev_priv->display.crtc_compute_clock = vlv_crtc_compute_clock;
> +		dev_priv->dpll_funcs.crtc_compute_clock = vlv_crtc_compute_clock;
>  	else if (IS_G4X(dev_priv))
> -		dev_priv->display.crtc_compute_clock = g4x_crtc_compute_clock;
> +		dev_priv->dpll_funcs.crtc_compute_clock = g4x_crtc_compute_clock;
>  	else if (IS_PINEVIEW(dev_priv))
> -		dev_priv->display.crtc_compute_clock = pnv_crtc_compute_clock;
> +		dev_priv->dpll_funcs.crtc_compute_clock = pnv_crtc_compute_clock;
>  	else if (DISPLAY_VER(dev_priv) != 2)
> -		dev_priv->display.crtc_compute_clock = i9xx_crtc_compute_clock;
> +		dev_priv->dpll_funcs.crtc_compute_clock = i9xx_crtc_compute_clock;
>  	else
> -		dev_priv->display.crtc_compute_clock = i8xx_crtc_compute_clock;
> +		dev_priv->dpll_funcs.crtc_compute_clock = i8xx_crtc_compute_clock;
>  }
>  
>  static bool i9xx_has_pps(struct drm_i915_private *dev_priv)
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 49b23ea46475..461ab0a0f088 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -393,6 +393,10 @@ struct drm_i915_fdi_link_train_funcs {
>  			       const struct intel_crtc_state *crtc_state);
>  };
>  
> +struct drm_i915_dpll_funcs {

Nitpick, intel_dpll_funcs. Starting to spot the pattern? ;D

Part of the point is that I think these may eventually move to their own
headers, and I like to drive naming structs and functions after the file
name. So, you'd find intel_dpll_* stuff in intel_dpll.[ch]. Or if they
stay in i915_drv.h, at least that's the chrystal clear context.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +	int (*crtc_compute_clock)(struct intel_crtc_state *crtc_state);
> +};
> +
>  struct drm_i915_display_funcs {
>  	/* Returns the active state of the crtc, and if the crtc is active,
>  	 * fills out the pipe-config with the hw state. */
> @@ -400,7 +404,6 @@ struct drm_i915_display_funcs {
>  				struct intel_crtc_state *);
>  	void (*get_initial_plane_config)(struct intel_crtc *,
>  					 struct intel_initial_plane_config *);
> -	int (*crtc_compute_clock)(struct intel_crtc_state *crtc_state);
>  	void (*crtc_enable)(struct intel_atomic_state *state,
>  			    struct intel_crtc *crtc);
>  	void (*crtc_disable)(struct intel_atomic_state *state,
> @@ -1005,6 +1008,9 @@ struct drm_i915_private {
>  	/* fdi display functions */
>  	struct drm_i915_fdi_link_train_funcs fdi_funcs;
>  
> +	/* display pll funcs */
> +	struct drm_i915_dpll_funcs dpll_funcs;
> +
>  	/* Display functions */
>  	struct drm_i915_display_funcs display;

-- 
Jani Nikula, Intel Open Source Graphics Center
