Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87ADE4038D3
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 13:34:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85F1B8923C;
	Wed,  8 Sep 2021 11:34:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A51AF8923C
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 11:34:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="220487924"
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="220487924"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 04:34:50 -0700
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="693263305"
Received: from mdoerbec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.33.106])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 04:34:48 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@redhat.com>
In-Reply-To: <20210908003944.2972024-5-airlied@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210908003944.2972024-1-airlied@gmail.com>
 <20210908003944.2972024-5-airlied@gmail.com>
Date: Wed, 08 Sep 2021 14:34:45 +0300
Message-ID: <87bl535mi2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 04/21] drm/i915: split clock gating init
 from display vtable
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
> This function is only used inside intel_pm.c
> ---
>  drivers/gpu/drm/i915/i915_drv.h |  9 ++++++-
>  drivers/gpu/drm/i915/intel_pm.c | 48 ++++++++++++++++-----------------
>  2 files changed, 32 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index ef903d70ab0b..b93fa19892b5 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -323,6 +323,11 @@ struct intel_crtc;
>  struct intel_limit;
>  struct dpll;
>  
> +/* functions used internal in intel_pm.c */
> +struct drm_i915_cg_funcs {

Nitpick, cg here is a bit terse.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +	void (*init_clock_gating)(struct drm_i915_private *dev_priv);
> +};
> +
>  struct drm_i915_display_funcs {
>  	void (*get_cdclk)(struct drm_i915_private *dev_priv,
>  			  struct intel_cdclk_config *cdclk_config);
> @@ -365,7 +370,6 @@ struct drm_i915_display_funcs {
>  				    const struct drm_connector_state *old_conn_state);
>  	void (*fdi_link_train)(struct intel_crtc *crtc,
>  			       const struct intel_crtc_state *crtc_state);
> -	void (*init_clock_gating)(struct drm_i915_private *dev_priv);
>  	void (*hpd_irq_setup)(struct drm_i915_private *dev_priv);
>  	/* clock updates for mode set */
>  	/* cursor updates */
> @@ -969,6 +973,9 @@ struct drm_i915_private {
>  	/* unbound hipri wq for page flips/plane updates */
>  	struct workqueue_struct *flip_wq;
>  
> +	/* pm private clock gating functions */
> +	struct drm_i915_cg_funcs cg_funcs;
> +
>  	/* Display functions */
>  	struct drm_i915_display_funcs display;
>  
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 4054c6f7a2f9..73549e774881 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -7871,7 +7871,7 @@ static void i830_init_clock_gating(struct drm_i915_private *dev_priv)
>  
>  void intel_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
> -	dev_priv->display.init_clock_gating(dev_priv);
> +	dev_priv->cg_funcs.init_clock_gating(dev_priv);
>  }
>  
>  void intel_suspend_hw(struct drm_i915_private *dev_priv)
> @@ -7898,52 +7898,52 @@ static void nop_init_clock_gating(struct drm_i915_private *dev_priv)
>  void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv)
>  {
>  	if (IS_ALDERLAKE_P(dev_priv))
> -		dev_priv->display.init_clock_gating = adlp_init_clock_gating;
> +		dev_priv->cg_funcs.init_clock_gating = adlp_init_clock_gating;
>  	else if (IS_DG1(dev_priv))
> -		dev_priv->display.init_clock_gating = dg1_init_clock_gating;
> +		dev_priv->cg_funcs.init_clock_gating = dg1_init_clock_gating;
>  	else if (GRAPHICS_VER(dev_priv) == 12)
> -		dev_priv->display.init_clock_gating = gen12lp_init_clock_gating;
> +		dev_priv->cg_funcs.init_clock_gating = gen12lp_init_clock_gating;
>  	else if (GRAPHICS_VER(dev_priv) == 11)
> -		dev_priv->display.init_clock_gating = icl_init_clock_gating;
> +		dev_priv->cg_funcs.init_clock_gating = icl_init_clock_gating;
>  	else if (IS_COFFEELAKE(dev_priv) || IS_COMETLAKE(dev_priv))
> -		dev_priv->display.init_clock_gating = cfl_init_clock_gating;
> +		dev_priv->cg_funcs.init_clock_gating = cfl_init_clock_gating;
>  	else if (IS_SKYLAKE(dev_priv))
> -		dev_priv->display.init_clock_gating = skl_init_clock_gating;
> +		dev_priv->cg_funcs.init_clock_gating = skl_init_clock_gating;
>  	else if (IS_KABYLAKE(dev_priv))
> -		dev_priv->display.init_clock_gating = kbl_init_clock_gating;
> +		dev_priv->cg_funcs.init_clock_gating = kbl_init_clock_gating;
>  	else if (IS_BROXTON(dev_priv))
> -		dev_priv->display.init_clock_gating = bxt_init_clock_gating;
> +		dev_priv->cg_funcs.init_clock_gating = bxt_init_clock_gating;
>  	else if (IS_GEMINILAKE(dev_priv))
> -		dev_priv->display.init_clock_gating = glk_init_clock_gating;
> +		dev_priv->cg_funcs.init_clock_gating = glk_init_clock_gating;
>  	else if (IS_BROADWELL(dev_priv))
> -		dev_priv->display.init_clock_gating = bdw_init_clock_gating;
> +		dev_priv->cg_funcs.init_clock_gating = bdw_init_clock_gating;
>  	else if (IS_CHERRYVIEW(dev_priv))
> -		dev_priv->display.init_clock_gating = chv_init_clock_gating;
> +		dev_priv->cg_funcs.init_clock_gating = chv_init_clock_gating;
>  	else if (IS_HASWELL(dev_priv))
> -		dev_priv->display.init_clock_gating = hsw_init_clock_gating;
> +		dev_priv->cg_funcs.init_clock_gating = hsw_init_clock_gating;
>  	else if (IS_IVYBRIDGE(dev_priv))
> -		dev_priv->display.init_clock_gating = ivb_init_clock_gating;
> +		dev_priv->cg_funcs.init_clock_gating = ivb_init_clock_gating;
>  	else if (IS_VALLEYVIEW(dev_priv))
> -		dev_priv->display.init_clock_gating = vlv_init_clock_gating;
> +		dev_priv->cg_funcs.init_clock_gating = vlv_init_clock_gating;
>  	else if (GRAPHICS_VER(dev_priv) == 6)
> -		dev_priv->display.init_clock_gating = gen6_init_clock_gating;
> +		dev_priv->cg_funcs.init_clock_gating = gen6_init_clock_gating;
>  	else if (GRAPHICS_VER(dev_priv) == 5)
> -		dev_priv->display.init_clock_gating = ilk_init_clock_gating;
> +		dev_priv->cg_funcs.init_clock_gating = ilk_init_clock_gating;
>  	else if (IS_G4X(dev_priv))
> -		dev_priv->display.init_clock_gating = g4x_init_clock_gating;
> +		dev_priv->cg_funcs.init_clock_gating = g4x_init_clock_gating;
>  	else if (IS_I965GM(dev_priv))
> -		dev_priv->display.init_clock_gating = i965gm_init_clock_gating;
> +		dev_priv->cg_funcs.init_clock_gating = i965gm_init_clock_gating;
>  	else if (IS_I965G(dev_priv))
> -		dev_priv->display.init_clock_gating = i965g_init_clock_gating;
> +		dev_priv->cg_funcs.init_clock_gating = i965g_init_clock_gating;
>  	else if (GRAPHICS_VER(dev_priv) == 3)
> -		dev_priv->display.init_clock_gating = gen3_init_clock_gating;
> +		dev_priv->cg_funcs.init_clock_gating = gen3_init_clock_gating;
>  	else if (IS_I85X(dev_priv) || IS_I865G(dev_priv))
> -		dev_priv->display.init_clock_gating = i85x_init_clock_gating;
> +		dev_priv->cg_funcs.init_clock_gating = i85x_init_clock_gating;
>  	else if (GRAPHICS_VER(dev_priv) == 2)
> -		dev_priv->display.init_clock_gating = i830_init_clock_gating;
> +		dev_priv->cg_funcs.init_clock_gating = i830_init_clock_gating;
>  	else {
>  		MISSING_CASE(INTEL_DEVID(dev_priv));
> -		dev_priv->display.init_clock_gating = nop_init_clock_gating;
> +		dev_priv->cg_funcs.init_clock_gating = nop_init_clock_gating;
>  	}
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
