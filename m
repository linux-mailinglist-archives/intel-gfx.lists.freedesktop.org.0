Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64DCF403796
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 12:10:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F0CE6E17E;
	Wed,  8 Sep 2021 10:10:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA8856E17E
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 10:10:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="218577011"
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="218577011"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 03:10:40 -0700
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="547626596"
Received: from mdoerbec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.33.106])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 03:10:38 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@redhat.com>
In-Reply-To: <20210908003944.2972024-13-airlied@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210908003944.2972024-1-airlied@gmail.com>
 <20210908003944.2972024-13-airlied@gmail.com>
Date: Wed, 08 Sep 2021 13:10:35 +0300
Message-ID: <874kav74ys.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 12/21] drm/i915: constify fdi link training
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
>
> Avoid having writeable function pointers.

Would benefit from the call wrapper and naming.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_fdi.c     | 18 +++++++++++++++---
>  drivers/gpu/drm/i915/i915_drv.h              |  2 +-
>  3 files changed, 17 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 87950202f4ce..0ad577aceb9d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2100,7 +2100,7 @@ static void ilk_pch_enable(const struct intel_atomic_state *state,
>  	assert_pch_transcoder_disabled(dev_priv, pipe);
>  
>  	/* For PCH output, training FDI link */
> -	dev_priv->fdi_funcs.fdi_link_train(crtc, crtc_state);
> +	dev_priv->fdi_funcs->fdi_link_train(crtc, crtc_state);
>  
>  	/* We need to program the right clock selection before writing the pixel
>  	 * mutliplier into the DPLL. */
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
> index d9f952e0c67f..68aa9c7b18ec 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> @@ -1005,15 +1005,27 @@ void lpt_fdi_program_mphy(struct drm_i915_private *dev_priv)
>  	intel_sbi_write(dev_priv, 0x21EC, tmp, SBI_MPHY);
>  }
>  
> +static const struct drm_i915_fdi_link_train_funcs ilk_funcs = {
> +	.fdi_link_train = ilk_fdi_link_train
> +};
> +
> +static const struct drm_i915_fdi_link_train_funcs gen6_funcs = {
> +	.fdi_link_train = gen6_fdi_link_train
> +};
> +
> +static const struct drm_i915_fdi_link_train_funcs ivb_funcs = {
> +	.fdi_link_train = ivb_manual_fdi_link_train
> +};
> +
>  void
>  intel_fdi_init_hook(struct drm_i915_private *dev_priv)
>  {
>  	if (IS_IRONLAKE(dev_priv)) {
> -		dev_priv->fdi_funcs.fdi_link_train = ilk_fdi_link_train;
> +		dev_priv->fdi_funcs = &ilk_funcs;
>  	} else if (IS_SANDYBRIDGE(dev_priv)) {
> -		dev_priv->fdi_funcs.fdi_link_train = gen6_fdi_link_train;
> +		dev_priv->fdi_funcs = &gen6_funcs;
>  	} else if (IS_IVYBRIDGE(dev_priv)) {
>  		/* FIXME: detect B0+ stepping and use auto training */
> -		dev_priv->fdi_funcs.fdi_link_train = ivb_manual_fdi_link_train;
> +		dev_priv->fdi_funcs = &ivb_funcs;
>  	}
>  }
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 461ab0a0f088..b3765222e717 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1006,7 +1006,7 @@ struct drm_i915_private {
>  	struct drm_i915_irq_funcs irq_funcs;
>  
>  	/* fdi display functions */
> -	struct drm_i915_fdi_link_train_funcs fdi_funcs;
> +	const struct drm_i915_fdi_link_train_funcs *fdi_funcs;
>  
>  	/* display pll funcs */
>  	struct drm_i915_dpll_funcs dpll_funcs;

-- 
Jani Nikula, Intel Open Source Graphics Center
