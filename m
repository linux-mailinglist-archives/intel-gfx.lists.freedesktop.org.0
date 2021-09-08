Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC1F40376E
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 12:03:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9036E6E17E;
	Wed,  8 Sep 2021 10:03:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C00BE6E17E
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 10:02:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="220123350"
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="220123350"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 03:02:59 -0700
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="538480492"
Received: from mdoerbec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.33.106])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 03:02:57 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@redhat.com>
In-Reply-To: <20210908003944.2972024-11-airlied@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210908003944.2972024-1-airlied@gmail.com>
 <20210908003944.2972024-11-airlied@gmail.com>
Date: Wed, 08 Sep 2021 13:02:54 +0300
Message-ID: <87a6kn75bl.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 10/21] drm/i915: split fdi link training
 from display vtable.
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
> It may make sense to merge this with display again later,
> however the fdi use of the vtable is limited to only a
> few generations.
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_fdi.c     |  6 +++---
>  drivers/gpu/drm/i915/i915_drv.h              | 11 ++++++++---
>  3 files changed, 12 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index ccd0332e7945..b981a923cc2f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2100,7 +2100,7 @@ static void ilk_pch_enable(const struct intel_atomic_state *state,
>  	assert_pch_transcoder_disabled(dev_priv, pipe);
>  
>  	/* For PCH output, training FDI link */
> -	dev_priv->display.fdi_link_train(crtc, crtc_state);
> +	dev_priv->fdi_funcs.fdi_link_train(crtc, crtc_state);

Nitpick, I'd add a wrapper intel_fdi_link_train to call this.

>  
>  	/* We need to program the right clock selection before writing the pixel
>  	 * mutliplier into the DPLL. */
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
> index fc09b781f15f..d9f952e0c67f 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> @@ -1009,11 +1009,11 @@ void
>  intel_fdi_init_hook(struct drm_i915_private *dev_priv)
>  {
>  	if (IS_IRONLAKE(dev_priv)) {
> -		dev_priv->display.fdi_link_train = ilk_fdi_link_train;
> +		dev_priv->fdi_funcs.fdi_link_train = ilk_fdi_link_train;
>  	} else if (IS_SANDYBRIDGE(dev_priv)) {
> -		dev_priv->display.fdi_link_train = gen6_fdi_link_train;
> +		dev_priv->fdi_funcs.fdi_link_train = gen6_fdi_link_train;
>  	} else if (IS_IVYBRIDGE(dev_priv)) {
>  		/* FIXME: detect B0+ stepping and use auto training */
> -		dev_priv->display.fdi_link_train = ivb_manual_fdi_link_train;
> +		dev_priv->fdi_funcs.fdi_link_train = ivb_manual_fdi_link_train;
>  	}
>  }
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index ece23401cb46..49b23ea46475 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -388,6 +388,11 @@ struct drm_i915_irq_funcs {
>  	void (*hpd_irq_setup)(struct drm_i915_private *dev_priv);
>  };
>  
> +struct drm_i915_fdi_link_train_funcs {

Nitpick, intel_fdi_funcs.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> +	void (*fdi_link_train)(struct intel_crtc *crtc,
> +			       const struct intel_crtc_state *crtc_state);
> +};
> +
>  struct drm_i915_display_funcs {
>  	/* Returns the active state of the crtc, and if the crtc is active,
>  	 * fills out the pipe-config with the hw state. */
> @@ -403,9 +408,6 @@ struct drm_i915_display_funcs {
>  	void (*commit_modeset_enables)(struct intel_atomic_state *state);
>  	void (*commit_modeset_disables)(struct intel_atomic_state *state);
>  
> -	void (*fdi_link_train)(struct intel_crtc *crtc,
> -			       const struct intel_crtc_state *crtc_state);
> -
>  	/* clock updates for mode set */
>  	/* cursor updates */
>  	/* render clock increase/decrease */
> @@ -1000,6 +1002,9 @@ struct drm_i915_private {
>  	/* irq display functions */
>  	struct drm_i915_irq_funcs irq_funcs;
>  
> +	/* fdi display functions */
> +	struct drm_i915_fdi_link_train_funcs fdi_funcs;
> +
>  	/* Display functions */
>  	struct drm_i915_display_funcs display;

-- 
Jani Nikula, Intel Open Source Graphics Center
