Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 541C95BA963
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 11:30:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F09B10E2D0;
	Fri, 16 Sep 2022 09:29:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B053C10ED0E
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 09:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663320587; x=1694856587;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Y7RAYPITsxSq0ortnEB6iSKuNoNLHgJA62t/oKEGiww=;
 b=H1fCZgsS/qdMinX9V8pGvH5Ty8GP0PjCrywXM4WpQzBTSgrDjl79qHUs
 KICu4GzZIGhP1451iw3HDgGKRi7rNhCv1p7aEgx0P+Z8vYvXyUm529o53
 QPmWFomlF1Zpg8LZyN1MLEkfFLEG7NKii8fHeCeJOLN0kKfJN9OUN7t9t
 S47Z8mPLqgcIZqwlI91wN+OEvb6SJ1GuWv+JDQf2eDcgkfFq9unhoOB8F
 gqi0t4cQ4QCEkk7Lyg3wzmHphjX2z6DjrCle2ftevivfJl90pvuI5uM63
 eUUn78EjEf4pFqFIIrx6dAHDQZGSzfvIkjntkxFl68s2FPAxbTE+PqKyE g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="325225391"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="325225391"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 02:29:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="759984289"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 16 Sep 2022 02:29:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 Sep 2022 12:29:44 +0300
Date: Fri, 16 Sep 2022 12:29:44 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YyRCCEUmfhWCdoAZ@intel.com>
References: <20220909124234.2124050-1-jani.nikula@intel.com>
 <20220909124234.2124050-2-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220909124234.2124050-2-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/hotplug: refactor hotplug init
 slightly
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

On Fri, Sep 09, 2022 at 03:42:34PM +0300, Jani Nikula wrote:
> Rename intel_hpd_init_work() to the more generic intel_hpd_init_early(),
> and move the hotplug storm initialization there. This lets us move the
> HPD_STORM_DEFAULT_THRESHOLD macro to intel_hotplug.c too.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hotplug.c | 22 +++++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_hotplug.h |  2 +-
>  drivers/gpu/drm/i915/i915_drv.h              |  3 ---
>  drivers/gpu/drm/i915/i915_irq.c              | 11 +---------
>  4 files changed, 19 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
> index 4faae25d76c0..352a1b53b63e 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -90,6 +90,9 @@ enum hpd_pin intel_hpd_pin_default(struct drm_i915_private *dev_priv,
>  	return HPD_PORT_A + port - PORT_A;
>  }
>  
> +/* Threshold == 5 for long IRQs, 50 for short */
> +#define HPD_STORM_DEFAULT_THRESHOLD	50
> +
>  #define HPD_STORM_DETECT_PERIOD		1000
>  #define HPD_STORM_REENABLE_DELAY	(2 * 60 * 1000)
>  #define HPD_RETRY_DELAY			1000
> @@ -711,14 +714,23 @@ void intel_hpd_poll_disable(struct drm_i915_private *dev_priv)
>  	schedule_work(&dev_priv->display.hotplug.poll_init_work);
>  }
>  
> -void intel_hpd_init_work(struct drm_i915_private *dev_priv)
> +void intel_hpd_init_early(struct drm_i915_private *i915)
>  {
> -	INIT_DELAYED_WORK(&dev_priv->display.hotplug.hotplug_work,
> +	INIT_DELAYED_WORK(&i915->display.hotplug.hotplug_work,
>  			  i915_hotplug_work_func);
> -	INIT_WORK(&dev_priv->display.hotplug.dig_port_work, i915_digport_work_func);
> -	INIT_WORK(&dev_priv->display.hotplug.poll_init_work, i915_hpd_poll_init_work);
> -	INIT_DELAYED_WORK(&dev_priv->display.hotplug.reenable_work,
> +	INIT_WORK(&i915->display.hotplug.dig_port_work, i915_digport_work_func);
> +	INIT_WORK(&i915->display.hotplug.poll_init_work, i915_hpd_poll_init_work);
> +	INIT_DELAYED_WORK(&i915->display.hotplug.reenable_work,
>  			  intel_hpd_irq_storm_reenable_work);
> +
> +	i915->display.hotplug.hpd_storm_threshold = HPD_STORM_DEFAULT_THRESHOLD;
> +	/* If we have MST support, we want to avoid doing short HPD IRQ storm
> +	 * detection, as short HPD storms will occur as a natural part of
> +	 * sideband messaging with MST.
> +	 * On older platforms however, IRQ storms can occur with both long and
> +	 * short pulses, as seen on some G4x systems.
> +	 */
> +	i915->display.hotplug.hpd_short_storm_enabled = !HAS_DP_MST(i915);
>  }
>  
>  void intel_hpd_cancel_work(struct drm_i915_private *dev_priv)
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.h b/drivers/gpu/drm/i915/display/intel_hotplug.h
> index aa84e381d6c3..424ae5dbf5a0 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.h
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.h
> @@ -22,7 +22,7 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
>  			   u32 pin_mask, u32 long_mask);
>  void intel_hpd_trigger_irq(struct intel_digital_port *dig_port);
>  void intel_hpd_init(struct drm_i915_private *dev_priv);
> -void intel_hpd_init_work(struct drm_i915_private *dev_priv);
> +void intel_hpd_init_early(struct drm_i915_private *i915);
>  void intel_hpd_cancel_work(struct drm_i915_private *dev_priv);
>  enum hpd_pin intel_hpd_pin_default(struct drm_i915_private *dev_priv,
>  				   enum port port);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index be201ba5e9ab..c91cccb2b8c7 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -75,9 +75,6 @@ struct intel_limit;
>  struct intel_overlay_error_state;
>  struct vlv_s0ix_state;
>  
> -/* Threshold == 5 for long IRQs, 50 for short */
> -#define HPD_STORM_DEFAULT_THRESHOLD 50
> -
>  #define I915_GEM_GPU_DOMAINS \
>  	(I915_GEM_DOMAIN_RENDER | \
>  	 I915_GEM_DOMAIN_SAMPLER | \
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 515648cd1233..8ffd81243a19 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -4399,7 +4399,7 @@ void intel_irq_init(struct drm_i915_private *dev_priv)
>  
>  	intel_hpd_init_pins(dev_priv);
>  
> -	intel_hpd_init_work(dev_priv);
> +	intel_hpd_init_early(dev_priv);
>  
>  	dev->vblank_disable_immediate = true;
>  
> @@ -4413,15 +4413,6 @@ void intel_irq_init(struct drm_i915_private *dev_priv)
>  	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>  		dev_priv->display_irqs_enabled = false;
>  
> -	dev_priv->display.hotplug.hpd_storm_threshold = HPD_STORM_DEFAULT_THRESHOLD;
> -	/* If we have MST support, we want to avoid doing short HPD IRQ storm
> -	 * detection, as short HPD storms will occur as a natural part of
> -	 * sideband messaging with MST.
> -	 * On older platforms however, IRQ storms can occur with both long and
> -	 * short pulses, as seen on some G4x systems.
> -	 */
> -	dev_priv->display.hotplug.hpd_short_storm_enabled = !HAS_DP_MST(dev_priv);
> -
>  	if (HAS_GMCH(dev_priv)) {
>  		if (I915_HAS_HOTPLUG(dev_priv))
>  			dev_priv->display.funcs.hotplug = &i915_hpd_funcs;
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
