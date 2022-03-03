Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 914DC4CC6FB
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 21:17:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C710410EF49;
	Thu,  3 Mar 2022 20:17:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E83910EF47
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Mar 2022 20:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646338651; x=1677874651;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=AB5xEkfQyPRS/BVwJ86D2wpkg+19xlBr/joqGsHfgEU=;
 b=JptQrj0Lag9005hdJVAFy4KZt5C6l5MpaxBbkgIC6zLxfKoyNFnXVZlX
 Nk0NUVgJi71GZIlB+OxgJOGwnj6H3Pj9eIGqvhrj/UJ19VxgDEZ+MwIsU
 BbfR7yWsA1J3JEtY+nXQV9ia8FXiizOMjGw1W6FUeQpuC7B+uz4eFAmab
 KAFv41XFz7kQwmV1OMn5IZv8e0PDHCeoKXhWjut17TcAqln7Dx+q/f+P9
 dBfTM2GfydoqHsSfQROTOHtw+nrxwq7/3k6CBsTtWzOfTqGmaSRP7Bu5d
 irj4G4maQBnbzVTFaOGyewv0d5a6IRdpeGTqdsraBHa+/nFE0ZtIyHLHh Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="241220648"
X-IronPort-AV: E=Sophos;i="5.90,153,1643702400"; d="scan'208";a="241220648"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 12:17:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,153,1643702400"; d="scan'208";a="551910638"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga008.jf.intel.com with SMTP; 03 Mar 2022 12:17:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Mar 2022 22:17:27 +0200
Date: Thu, 3 Mar 2022 22:17:27 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YiEiVwpBWPL1km0N@intel.com>
References: <20220303181931.1661767-1-jani.nikula@intel.com>
 <20220303181931.1661767-4-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220303181931.1661767-4-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/gmbus: alloc intel_gmbus
 dynamically
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

On Thu, Mar 03, 2022 at 08:19:30PM +0200, Jani Nikula wrote:
> Allocate the individual intel_gmbus structs dynamically. This lets us
> hide struct intel_gmbus inside intel_gmbus.c completely. Also use the
> cleanup function on the error path to avoid duplication.
> 
> Leave #include <linux/i2c.h> in i915_drv.h for now, as it pulls in a
> bunch of implicit dependencies.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_gmbus.c | 42 +++++++++++++++-------
>  drivers/gpu/drm/i915/i915_drv.h            | 14 ++------
>  2 files changed, 31 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
> index fd908e524875..2bb3494b93e2 100644
> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> @@ -38,6 +38,16 @@
>  #include "intel_display_types.h"
>  #include "intel_gmbus.h"
>  
> +struct intel_gmbus {
> +	struct i2c_adapter adapter;
> +#define GMBUS_FORCE_BIT_RETRY (1U << 31)
> +	u32 force_bit;
> +	u32 reg0;
> +	i915_reg_t gpio_reg;
> +	struct i2c_algo_bit_data bit_algo;
> +	struct drm_i915_private *dev_priv;
> +};
> +
>  struct gmbus_pin {
>  	const char *name;
>  	enum i915_gpio gpio;
> @@ -881,7 +891,11 @@ int intel_gmbus_setup(struct drm_i915_private *dev_priv)
>  		if (!gmbus_pin)
>  			continue;
>  
> -		bus = &dev_priv->gmbus[pin];
> +		bus = kzalloc(sizeof(*bus), GFP_KERNEL);
> +		if (!bus) {
> +			ret = -ENOMEM;
> +			goto err;
> +		}
>  
>  		bus->adapter.owner = THIS_MODULE;
>  		bus->adapter.class = I2C_CLASS_DDC;
> @@ -911,8 +925,12 @@ int intel_gmbus_setup(struct drm_i915_private *dev_priv)
>  		intel_gpio_setup(bus, GPIO(gmbus_pin->gpio));
>  
>  		ret = i2c_add_adapter(&bus->adapter);
> -		if (ret)
> +		if (ret) {
> +			kfree(bus);
>  			goto err;
> +		}
> +
> +		dev_priv->gmbus[pin] = bus;
>  	}
>  
>  	intel_gmbus_reset(dev_priv);
> @@ -920,24 +938,19 @@ int intel_gmbus_setup(struct drm_i915_private *dev_priv)
>  	return 0;
>  
>  err:
> -	while (pin--) {
> -		if (!intel_gmbus_is_valid_pin(dev_priv, pin))
> -			continue;
> +	intel_gmbus_teardown(dev_priv);
>  
> -		bus = &dev_priv->gmbus[pin];
> -		i2c_del_adapter(&bus->adapter);
> -	}
>  	return ret;
>  }
>  
>  struct i2c_adapter *intel_gmbus_get_adapter(struct drm_i915_private *dev_priv,
>  					    unsigned int pin)
>  {
> -	if (drm_WARN_ON(&dev_priv->drm,
> -			!intel_gmbus_is_valid_pin(dev_priv, pin)))
> +	if (drm_WARN_ON(&dev_priv->drm, pin >= ARRAY_SIZE(dev_priv->gmbus) ||
> +			!dev_priv->gmbus[pin]))
>  		return NULL;
>  
> -	return &dev_priv->gmbus[pin].adapter;
> +	return &dev_priv->gmbus[pin]->adapter;
>  }
>  
>  void intel_gmbus_force_bit(struct i2c_adapter *adapter, bool force_bit)
> @@ -969,10 +982,13 @@ void intel_gmbus_teardown(struct drm_i915_private *dev_priv)
>  	unsigned int pin;
>  
>  	for (pin = 0; pin < ARRAY_SIZE(dev_priv->gmbus); pin++) {
> -		if (!intel_gmbus_is_valid_pin(dev_priv, pin))
> +		bus = dev_priv->gmbus[pin];

nit: Would like the 'bus' variable to be declared inside the loop.
Same for intel_gmbus_setup().

> +		if (!bus)
>  			continue;
>  
> -		bus = &dev_priv->gmbus[pin];
>  		i2c_del_adapter(&bus->adapter);
> +
> +		kfree(bus);
> +		dev_priv->gmbus[pin] = NULL;

I see we don't actually check intel_gmbus_setup() return value at all so
intel_gmbus_teardown() can get called twice. So this NULLing is essential
should intel_gmbus_setup() ever fail.

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  	}
>  }
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 457bc1993d19..869a2bda347b 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -35,7 +35,6 @@
>  #include <asm/hypervisor.h>
>  
>  #include <linux/i2c.h>
> -#include <linux/i2c-algo-bit.h>
>  #include <linux/intel-iommu.h>
>  #include <linux/pm_qos.h>
>  
> @@ -99,6 +98,7 @@ struct intel_dpll_funcs;
>  struct intel_encoder;
>  struct intel_fbdev;
>  struct intel_fdi_funcs;
> +struct intel_gmbus;
>  struct intel_hotplug_funcs;
>  struct intel_initial_plane_config;
>  struct intel_limit;
> @@ -231,16 +231,6 @@ struct i915_drrs {
>  #define QUIRK_INCREASE_DDI_DISABLED_TIME (1<<7)
>  #define QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK (1<<8)
>  
> -struct intel_gmbus {
> -	struct i2c_adapter adapter;
> -#define GMBUS_FORCE_BIT_RETRY (1U << 31)
> -	u32 force_bit;
> -	u32 reg0;
> -	i915_reg_t gpio_reg;
> -	struct i2c_algo_bit_data bit_algo;
> -	struct drm_i915_private *dev_priv;
> -};
> -
>  struct i915_suspend_saved_registers {
>  	u32 saveDSPARB;
>  	u32 saveSWF0[16];
> @@ -510,7 +500,7 @@ struct drm_i915_private {
>  
>  	struct intel_dmc dmc;
>  
> -	struct intel_gmbus gmbus[GMBUS_NUM_PINS];
> +	struct intel_gmbus *gmbus[GMBUS_NUM_PINS];
>  
>  	/** gmbus_mutex protects against concurrent usage of the single hw gmbus
>  	 * controller on different i2c buses. */
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
