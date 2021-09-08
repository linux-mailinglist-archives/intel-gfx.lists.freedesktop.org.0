Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D315240379D
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 12:12:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5BD96E17A;
	Wed,  8 Sep 2021 10:12:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F09C6E17A
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 10:12:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="220124880"
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="220124880"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 03:12:22 -0700
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="538483908"
Received: from mdoerbec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.33.106])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 03:12:21 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@redhat.com>
In-Reply-To: <20210908003944.2972024-14-airlied@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210908003944.2972024-1-airlied@gmail.com>
 <20210908003944.2972024-14-airlied@gmail.com>
Date: Wed, 08 Sep 2021 13:12:17 +0300
Message-ID: <871r5z74vy.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 13/21] drm/i915: constify irq function
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
> Use a macro to avoid mistakes, this type of macro is only used
> in a couple of places.
> ---
>  drivers/gpu/drm/i915/display/intel_hotplug.c |  4 +--
>  drivers/gpu/drm/i915/i915_drv.h              |  2 +-
>  drivers/gpu/drm/i915/i915_irq.c              | 27 +++++++++++++++-----
>  3 files changed, 23 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
> index a06e1e1b33e1..97df40107213 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -215,8 +215,8 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i915_private *dev_priv)
>  
>  static void intel_hpd_irq_setup(struct drm_i915_private *i915)
>  {
> -	if (i915->display_irqs_enabled && i915->irq_funcs.hpd_irq_setup)
> -		i915->irq_funcs.hpd_irq_setup(i915);
> +	if (i915->display_irqs_enabled && i915->irq_funcs)
> +		i915->irq_funcs->hpd_irq_setup(i915);
>  }
>  
>  static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index b3765222e717..6050bb519b18 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1003,7 +1003,7 @@ struct drm_i915_private {
>  	struct drm_i915_wm_disp_funcs wm_disp;
>  
>  	/* irq display functions */
> -	struct drm_i915_irq_funcs irq_funcs;
> +	const struct drm_i915_irq_funcs *irq_funcs;
>  
>  	/* fdi display functions */
>  	const struct drm_i915_fdi_link_train_funcs *fdi_funcs;
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index f515a3a76a8e..29231daf6057 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -4345,6 +4345,19 @@ static irqreturn_t i965_irq_handler(int irq, void *arg)
>  	return ret;
>  }
>  
> +#define HPD_FUNCS(platform)					\
> +static const struct drm_i915_irq_funcs platform##_hpd_funcs = { \
> +	.hpd_irq_setup = platform##_hpd_irq_setup		\
> +}
> +
> +HPD_FUNCS(i915);
> +HPD_FUNCS(dg1);
> +HPD_FUNCS(gen11);
> +HPD_FUNCS(bxt);
> +HPD_FUNCS(icp);
> +HPD_FUNCS(spt);
> +HPD_FUNCS(ilk);
> +

#undef HPD_FUNCS

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>  /**
>   * intel_irq_init - initializes irq support
>   * @dev_priv: i915 device instance
> @@ -4395,20 +4408,20 @@ void intel_irq_init(struct drm_i915_private *dev_priv)
>  
>  	if (HAS_GMCH(dev_priv)) {
>  		if (I915_HAS_HOTPLUG(dev_priv))
> -			dev_priv->irq_funcs.hpd_irq_setup = i915_hpd_irq_setup;
> +			dev_priv->irq_funcs = &i915_hpd_funcs;
>  	} else {
>  		if (HAS_PCH_DG1(dev_priv))
> -			dev_priv->irq_funcs.hpd_irq_setup = dg1_hpd_irq_setup;
> +			dev_priv->irq_funcs = &dg1_hpd_funcs;
>  		else if (DISPLAY_VER(dev_priv) >= 11)
> -			dev_priv->irq_funcs.hpd_irq_setup = gen11_hpd_irq_setup;
> +			dev_priv->irq_funcs = &gen11_hpd_funcs;
>  		else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> -			dev_priv->irq_funcs.hpd_irq_setup = bxt_hpd_irq_setup;
> +			dev_priv->irq_funcs = &bxt_hpd_funcs;
>  		else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
> -			dev_priv->irq_funcs.hpd_irq_setup = icp_hpd_irq_setup;
> +			dev_priv->irq_funcs = &icp_hpd_funcs;
>  		else if (INTEL_PCH_TYPE(dev_priv) >= PCH_SPT)
> -			dev_priv->irq_funcs.hpd_irq_setup = spt_hpd_irq_setup;
> +			dev_priv->irq_funcs = &spt_hpd_funcs;
>  		else
> -			dev_priv->irq_funcs.hpd_irq_setup = ilk_hpd_irq_setup;
> +			dev_priv->irq_funcs = &ilk_hpd_funcs;
>  	}
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
