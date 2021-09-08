Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 264674037FC
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 12:38:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 462426E18E;
	Wed,  8 Sep 2021 10:38:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A00716E18E
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 10:38:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="306008177"
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="306008177"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 03:38:38 -0700
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="547659527"
Received: from mdoerbec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.33.106])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 03:38:37 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@redhat.com>
In-Reply-To: <20210908003944.2972024-17-airlied@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210908003944.2972024-1-airlied@gmail.com>
 <20210908003944.2972024-17-airlied@gmail.com>
Date: Wed, 08 Sep 2021 13:38:34 +0300
Message-ID: <87sfyf5p3p.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 16/21] drm/i915: constify the dpll clock
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
>  drivers/gpu/drm/i915/display/intel_display.c |  6 +--
>  drivers/gpu/drm/i915/display/intel_dpll.c    | 49 ++++++++++++++++----
>  drivers/gpu/drm/i915/i915_drv.h              |  2 +-
>  3 files changed, 45 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 0ad577aceb9d..d8a576d1435e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6768,10 +6768,10 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>  		crtc_state->update_wm_post = true;
>  
>  	if (mode_changed && crtc_state->hw.enable &&
> -	    dev_priv->dpll_funcs.crtc_compute_clock &&
> +	    dev_priv->dpll_funcs &&
>  	    !crtc_state->bigjoiner_slave &&
>  	    !drm_WARN_ON(&dev_priv->drm, crtc_state->shared_dpll)) {
> -		ret = dev_priv->dpll_funcs.crtc_compute_clock(crtc_state);
> +		ret = dev_priv->dpll_funcs->crtc_compute_clock(crtc_state);
>  		if (ret)
>  			return ret;
>  	}
> @@ -8807,7 +8807,7 @@ static void intel_modeset_clear_plls(struct intel_atomic_state *state)
>  	struct intel_crtc *crtc;
>  	int i;
>  
> -	if (!dev_priv->dpll_funcs.crtc_compute_clock)
> +	if (!dev_priv->dpll_funcs)
>  		return;
>  
>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
> index 9326c7cbb05c..3df10b88e69f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1363,25 +1363,58 @@ static int i8xx_crtc_compute_clock(struct intel_crtc_state *crtc_state)
>  	return 0;
>  }
>  
> +static const struct drm_i915_dpll_funcs hsw_dpll_funcs = {
> +	.crtc_compute_clock = hsw_crtc_compute_clock
> +};
> +
> +static const struct drm_i915_dpll_funcs ilk_dpll_funcs = {
> +	.crtc_compute_clock = ilk_crtc_compute_clock
> +};
> +
> +static const struct drm_i915_dpll_funcs chv_dpll_funcs = {
> +	.crtc_compute_clock = chv_crtc_compute_clock
> +};
> +
> +static const struct drm_i915_dpll_funcs vlv_dpll_funcs = {
> +	.crtc_compute_clock = vlv_crtc_compute_clock
> +};
> +
> +static const struct drm_i915_dpll_funcs g4x_dpll_funcs = {
> +	.crtc_compute_clock = g4x_crtc_compute_clock
> +};
> +
> +static const struct drm_i915_dpll_funcs pnv_dpll_funcs = {
> +	.crtc_compute_clock = pnv_crtc_compute_clock
> +};
> +
> +static const struct drm_i915_dpll_funcs i9xx_dpll_funcs = {
> +	.crtc_compute_clock = i9xx_crtc_compute_clock
> +};
> +
> +static const struct drm_i915_dpll_funcs i8xx_dpll_funcs = {
> +	.crtc_compute_clock = i8xx_crtc_compute_clock
> +};
> +
> +
>  void
>  intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv)
>  {
>  	if (DISPLAY_VER(dev_priv) >= 9 || HAS_DDI(dev_priv))
> -		dev_priv->dpll_funcs.crtc_compute_clock = hsw_crtc_compute_clock;
> +		dev_priv->dpll_funcs = &hsw_dpll_funcs;
>  	else if (HAS_PCH_SPLIT(dev_priv))
> -		dev_priv->dpll_funcs.crtc_compute_clock = ilk_crtc_compute_clock;
> +		dev_priv->dpll_funcs = &ilk_dpll_funcs;
>  	else if (IS_CHERRYVIEW(dev_priv))
> -		dev_priv->dpll_funcs.crtc_compute_clock = chv_crtc_compute_clock;
> +		dev_priv->dpll_funcs = &chv_dpll_funcs;
>  	else if (IS_VALLEYVIEW(dev_priv))
> -		dev_priv->dpll_funcs.crtc_compute_clock = vlv_crtc_compute_clock;
> +		dev_priv->dpll_funcs = &vlv_dpll_funcs;
>  	else if (IS_G4X(dev_priv))
> -		dev_priv->dpll_funcs.crtc_compute_clock = g4x_crtc_compute_clock;
> +		dev_priv->dpll_funcs = &g4x_dpll_funcs;
>  	else if (IS_PINEVIEW(dev_priv))
> -		dev_priv->dpll_funcs.crtc_compute_clock = pnv_crtc_compute_clock;
> +		dev_priv->dpll_funcs = &pnv_dpll_funcs;
>  	else if (DISPLAY_VER(dev_priv) != 2)
> -		dev_priv->dpll_funcs.crtc_compute_clock = i9xx_crtc_compute_clock;
> +		dev_priv->dpll_funcs = &i9xx_dpll_funcs;
>  	else
> -		dev_priv->dpll_funcs.crtc_compute_clock = i8xx_crtc_compute_clock;
> +		dev_priv->dpll_funcs = &i8xx_dpll_funcs;
>  }
>  
>  static bool i9xx_has_pps(struct drm_i915_private *dev_priv)
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 8d14318c5708..a9563730aad5 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1009,7 +1009,7 @@ struct drm_i915_private {
>  	const struct drm_i915_fdi_link_train_funcs *fdi_funcs;
>  
>  	/* display pll funcs */
> -	struct drm_i915_dpll_funcs dpll_funcs;
> +	const struct drm_i915_dpll_funcs *dpll_funcs;
>  
>  	/* Display functions */
>  	struct drm_i915_display_funcs display;

-- 
Jani Nikula, Intel Open Source Graphics Center
