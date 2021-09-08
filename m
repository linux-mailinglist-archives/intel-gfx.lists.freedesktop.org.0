Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AEB7403955
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 14:00:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7322E6E195;
	Wed,  8 Sep 2021 12:00:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE7656E195
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 12:00:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="218599465"
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="218599465"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 05:00:06 -0700
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="538612365"
Received: from mdoerbec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.33.106])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 05:00:04 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@redhat.com>
In-Reply-To: <20210908003944.2972024-21-airlied@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210908003944.2972024-1-airlied@gmail.com>
 <20210908003944.2972024-21-airlied@gmail.com>
Date: Wed, 08 Sep 2021 15:00:00 +0300
Message-ID: <87zgsn46rj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 20/21] drm/i915: constify clock gating init
 vtable.
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
> I used a macro to avoid making any really silly mistakes here.
> ---
>  drivers/gpu/drm/i915/i915_drv.h |  2 +-
>  drivers/gpu/drm/i915/intel_pm.c | 77 +++++++++++++++++++++++----------
>  2 files changed, 54 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index fbcafc7cc075..44094a25a110 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -990,7 +990,7 @@ struct drm_i915_private {
>  	struct workqueue_struct *flip_wq;
>  
>  	/* pm private clock gating functions */
> -	struct drm_i915_cg_funcs cg_funcs;
> +	const struct drm_i915_cg_funcs *cg_funcs;
>  
>  	/* pm display functions */
>  	struct drm_i915_wm_disp_funcs wm_disp;
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 7a457646fb84..44f5582531ac 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -7871,7 +7871,7 @@ static void i830_init_clock_gating(struct drm_i915_private *dev_priv)
>  
>  void intel_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
> -	dev_priv->cg_funcs.init_clock_gating(dev_priv);
> +	dev_priv->cg_funcs->init_clock_gating(dev_priv);
>  }
>  
>  void intel_suspend_hw(struct drm_i915_private *dev_priv)
> @@ -7886,6 +7886,35 @@ static void nop_init_clock_gating(struct drm_i915_private *dev_priv)
>  		    "No clock gating settings or workarounds applied.\n");
>  }
>  
> +#define CG_FUNCS(platform) \
> +static const struct drm_i915_cg_funcs platform##_cg_funcs = { \
> +	.init_clock_gating = platform##_init_clock_gating     \
> +}
> +
> +CG_FUNCS(adlp);
> +CG_FUNCS(dg1);
> +CG_FUNCS(gen12lp);
> +CG_FUNCS(icl);
> +CG_FUNCS(cfl);
> +CG_FUNCS(skl);
> +CG_FUNCS(kbl);
> +CG_FUNCS(bxt);
> +CG_FUNCS(glk);
> +CG_FUNCS(bdw);
> +CG_FUNCS(chv);
> +CG_FUNCS(hsw);
> +CG_FUNCS(ivb);
> +CG_FUNCS(vlv);
> +CG_FUNCS(gen6);
> +CG_FUNCS(ilk);
> +CG_FUNCS(g4x);
> +CG_FUNCS(i965gm);
> +CG_FUNCS(i965g);
> +CG_FUNCS(gen3);
> +CG_FUNCS(i85x);
> +CG_FUNCS(i830);
> +CG_FUNCS(nop);

#undef CF_FUNCS

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +
>  /**
>   * intel_init_clock_gating_hooks - setup the clock gating hooks
>   * @dev_priv: device private
> @@ -7898,52 +7927,52 @@ static void nop_init_clock_gating(struct drm_i915_private *dev_priv)
>  void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv)
>  {
>  	if (IS_ALDERLAKE_P(dev_priv))
> -		dev_priv->cg_funcs.init_clock_gating = adlp_init_clock_gating;
> +		dev_priv->cg_funcs = &adlp_cg_funcs;
>  	else if (IS_DG1(dev_priv))
> -		dev_priv->cg_funcs.init_clock_gating = dg1_init_clock_gating;
> +		dev_priv->cg_funcs = &dg1_cg_funcs;
>  	else if (GRAPHICS_VER(dev_priv) == 12)
> -		dev_priv->cg_funcs.init_clock_gating = gen12lp_init_clock_gating;
> +		dev_priv->cg_funcs = &gen12lp_cg_funcs;
>  	else if (GRAPHICS_VER(dev_priv) == 11)
> -		dev_priv->cg_funcs.init_clock_gating = icl_init_clock_gating;
> +		dev_priv->cg_funcs = &icl_cg_funcs;
>  	else if (IS_COFFEELAKE(dev_priv) || IS_COMETLAKE(dev_priv))
> -		dev_priv->cg_funcs.init_clock_gating = cfl_init_clock_gating;
> +		dev_priv->cg_funcs = &cfl_cg_funcs;
>  	else if (IS_SKYLAKE(dev_priv))
> -		dev_priv->cg_funcs.init_clock_gating = skl_init_clock_gating;
> +		dev_priv->cg_funcs = &skl_cg_funcs;
>  	else if (IS_KABYLAKE(dev_priv))
> -		dev_priv->cg_funcs.init_clock_gating = kbl_init_clock_gating;
> +		dev_priv->cg_funcs = &kbl_cg_funcs;
>  	else if (IS_BROXTON(dev_priv))
> -		dev_priv->cg_funcs.init_clock_gating = bxt_init_clock_gating;
> +		dev_priv->cg_funcs = &bxt_cg_funcs;
>  	else if (IS_GEMINILAKE(dev_priv))
> -		dev_priv->cg_funcs.init_clock_gating = glk_init_clock_gating;
> +		dev_priv->cg_funcs = &glk_cg_funcs;
>  	else if (IS_BROADWELL(dev_priv))
> -		dev_priv->cg_funcs.init_clock_gating = bdw_init_clock_gating;
> +		dev_priv->cg_funcs = &bdw_cg_funcs;
>  	else if (IS_CHERRYVIEW(dev_priv))
> -		dev_priv->cg_funcs.init_clock_gating = chv_init_clock_gating;
> +		dev_priv->cg_funcs = &chv_cg_funcs;
>  	else if (IS_HASWELL(dev_priv))
> -		dev_priv->cg_funcs.init_clock_gating = hsw_init_clock_gating;
> +		dev_priv->cg_funcs = &hsw_cg_funcs;
>  	else if (IS_IVYBRIDGE(dev_priv))
> -		dev_priv->cg_funcs.init_clock_gating = ivb_init_clock_gating;
> +		dev_priv->cg_funcs = &ivb_cg_funcs;
>  	else if (IS_VALLEYVIEW(dev_priv))
> -		dev_priv->cg_funcs.init_clock_gating = vlv_init_clock_gating;
> +		dev_priv->cg_funcs = &vlv_cg_funcs;
>  	else if (GRAPHICS_VER(dev_priv) == 6)
> -		dev_priv->cg_funcs.init_clock_gating = gen6_init_clock_gating;
> +		dev_priv->cg_funcs = &gen6_cg_funcs;
>  	else if (GRAPHICS_VER(dev_priv) == 5)
> -		dev_priv->cg_funcs.init_clock_gating = ilk_init_clock_gating;
> +		dev_priv->cg_funcs = &ilk_cg_funcs;
>  	else if (IS_G4X(dev_priv))
> -		dev_priv->cg_funcs.init_clock_gating = g4x_init_clock_gating;
> +		dev_priv->cg_funcs = &g4x_cg_funcs;
>  	else if (IS_I965GM(dev_priv))
> -		dev_priv->cg_funcs.init_clock_gating = i965gm_init_clock_gating;
> +		dev_priv->cg_funcs = &i965gm_cg_funcs;
>  	else if (IS_I965G(dev_priv))
> -		dev_priv->cg_funcs.init_clock_gating = i965g_init_clock_gating;
> +		dev_priv->cg_funcs = &i965g_cg_funcs;
>  	else if (GRAPHICS_VER(dev_priv) == 3)
> -		dev_priv->cg_funcs.init_clock_gating = gen3_init_clock_gating;
> +		dev_priv->cg_funcs = &gen3_cg_funcs;
>  	else if (IS_I85X(dev_priv) || IS_I865G(dev_priv))
> -		dev_priv->cg_funcs.init_clock_gating = i85x_init_clock_gating;
> +		dev_priv->cg_funcs = &i85x_cg_funcs;
>  	else if (GRAPHICS_VER(dev_priv) == 2)
> -		dev_priv->cg_funcs.init_clock_gating = i830_init_clock_gating;
> +		dev_priv->cg_funcs = &i830_cg_funcs;
>  	else {
>  		MISSING_CASE(INTEL_DEVID(dev_priv));
> -		dev_priv->cg_funcs.init_clock_gating = nop_init_clock_gating;
> +		dev_priv->cg_funcs = &nop_cg_funcs;
>  	}
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
