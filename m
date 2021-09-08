Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F1640376D
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 12:01:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09FFB6E17A;
	Wed,  8 Sep 2021 10:01:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D38A6E17A
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 10:01:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="220123085"
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="220123085"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 03:01:02 -0700
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="538479856"
Received: from mdoerbec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.33.106])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 03:01:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@redhat.com>
In-Reply-To: <20210908003944.2972024-10-airlied@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210908003944.2972024-1-airlied@gmail.com>
 <20210908003944.2972024-10-airlied@gmail.com>
Date: Wed, 08 Sep 2021 13:00:56 +0300
Message-ID: <87czpj75ev.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 09/21] drm/i915: split irq hotplug function
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
> This provide a service from irq to display, so make it separate
> ---
>  drivers/gpu/drm/i915/display/intel_hotplug.c |  4 ++--
>  drivers/gpu/drm/i915/i915_drv.h              |  9 ++++++++-
>  drivers/gpu/drm/i915/i915_irq.c              | 14 +++++++-------
>  3 files changed, 17 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
> index 47c85ac97c87..a06e1e1b33e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -215,8 +215,8 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i915_private *dev_priv)
>  
>  static void intel_hpd_irq_setup(struct drm_i915_private *i915)
>  {
> -	if (i915->display_irqs_enabled && i915->display.hpd_irq_setup)
> -		i915->display.hpd_irq_setup(i915);
> +	if (i915->display_irqs_enabled && i915->irq_funcs.hpd_irq_setup)
> +		i915->irq_funcs.hpd_irq_setup(i915);
>  }
>  
>  static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index fbe92f248d05..ece23401cb46 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -384,6 +384,10 @@ struct drm_i915_display_cdclk_funcs {
>  	u8 (*calc_voltage_level)(int cdclk);
>  };
>  
> +struct drm_i915_irq_funcs {

Here, I'm a bit divided with the naming, irqs being more of i915 core,
even if serving display. I could go with intel_hotplug_funcs. *shrug*.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +	void (*hpd_irq_setup)(struct drm_i915_private *dev_priv);
> +};
> +
>  struct drm_i915_display_funcs {
>  	/* Returns the active state of the crtc, and if the crtc is active,
>  	 * fills out the pipe-config with the hw state. */
> @@ -401,7 +405,7 @@ struct drm_i915_display_funcs {
>  
>  	void (*fdi_link_train)(struct intel_crtc *crtc,
>  			       const struct intel_crtc_state *crtc_state);
> -	void (*hpd_irq_setup)(struct drm_i915_private *dev_priv);
> +
>  	/* clock updates for mode set */
>  	/* cursor updates */
>  	/* render clock increase/decrease */
> @@ -993,6 +997,9 @@ struct drm_i915_private {
>  	/* pm display functions */
>  	struct drm_i915_wm_disp_funcs wm_disp;
>  
> +	/* irq display functions */
> +	struct drm_i915_irq_funcs irq_funcs;
> +
>  	/* Display functions */
>  	struct drm_i915_display_funcs display;
>  
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 0a1681384c84..f515a3a76a8e 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -4395,20 +4395,20 @@ void intel_irq_init(struct drm_i915_private *dev_priv)
>  
>  	if (HAS_GMCH(dev_priv)) {
>  		if (I915_HAS_HOTPLUG(dev_priv))
> -			dev_priv->display.hpd_irq_setup = i915_hpd_irq_setup;
> +			dev_priv->irq_funcs.hpd_irq_setup = i915_hpd_irq_setup;
>  	} else {
>  		if (HAS_PCH_DG1(dev_priv))
> -			dev_priv->display.hpd_irq_setup = dg1_hpd_irq_setup;
> +			dev_priv->irq_funcs.hpd_irq_setup = dg1_hpd_irq_setup;
>  		else if (DISPLAY_VER(dev_priv) >= 11)
> -			dev_priv->display.hpd_irq_setup = gen11_hpd_irq_setup;
> +			dev_priv->irq_funcs.hpd_irq_setup = gen11_hpd_irq_setup;
>  		else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> -			dev_priv->display.hpd_irq_setup = bxt_hpd_irq_setup;
> +			dev_priv->irq_funcs.hpd_irq_setup = bxt_hpd_irq_setup;
>  		else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
> -			dev_priv->display.hpd_irq_setup = icp_hpd_irq_setup;
> +			dev_priv->irq_funcs.hpd_irq_setup = icp_hpd_irq_setup;
>  		else if (INTEL_PCH_TYPE(dev_priv) >= PCH_SPT)
> -			dev_priv->display.hpd_irq_setup = spt_hpd_irq_setup;
> +			dev_priv->irq_funcs.hpd_irq_setup = spt_hpd_irq_setup;
>  		else
> -			dev_priv->display.hpd_irq_setup = ilk_hpd_irq_setup;
> +			dev_priv->irq_funcs.hpd_irq_setup = ilk_hpd_irq_setup;
>  	}
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
