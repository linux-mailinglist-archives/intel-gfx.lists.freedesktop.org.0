Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E34C5651F22
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 11:44:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 766E710E39B;
	Tue, 20 Dec 2022 10:43:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9962310E39B
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 10:43:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671533012; x=1703069012;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+mLf0wN4xMRI+v9R88+UlNyOIEfJ6/wmtEUpLB0YMgk=;
 b=flz772btjaUUPxyX74QKQaGYusn7XPw51vvyWRCPgceRa9OYBUYY6UeS
 MmxlfVPD8+YWxKTnXqan2Y0vFmpZh6xXSKQcLVYkLWoX5U6yXHKxKw5xd
 gtrtFDnWaHH7s/DEplSWLtXdlJmTI+xnbtQo1r/9tIXYmdG6+oWN3C9q2
 kleR10zhl/n/emhsnzFbWDeYnEN1b1gqavta3pzClNH1XKkvF5QNwHRdl
 AjN/PiBjWrL411lPa5OJ1f2Y1JQOzG3/C7zpToqnVUw1KiNXJbxBRXg/D
 B9gMBAe3Hu5Xd0YVZnWm52jB1SNRwDZaej73B1NZspHhYThLuVjiTgU2R A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="346686054"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="346686054"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 02:43:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="714377189"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="714377189"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 20 Dec 2022 02:43:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 20 Dec 2022 12:43:28 +0200
Date: Tue, 20 Dec 2022 12:43:28 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y6GR0O+APCfeGX+u@intel.com>
References: <20221219105955.4014451-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221219105955.4014451-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915/dsi: add support for ICL+
 native MIPI GPIO sequence
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

On Mon, Dec 19, 2022 at 12:59:55PM +0200, Jani Nikula wrote:
> Starting from ICL, the default for MIPI GPIO sequences seems to be using
> native GPIOs i.e. GPIOs available in the GPU. These native GPIOs reuse
> many pins that quite frankly seem scary to poke based on the VBT
> sequences. We pretty much have to trust that the board is configured
> such that the relevant HPD, PP_CONTROL and GPIO bits aren't used for
> anything else.
> 
> MIPI sequence v4 also adds a flag to fall back to non-native sequences.
> 
> v5:
> - Wrap SHOTPLUG_CTL_DDI modification in spin_lock() in icp_irq_handler()
>   too (Ville)
> - References instead of Closes issue 6131 because this does not fix everything
> 
> v4:
> - Wrap SHOTPLUG_CTL_DDI modification in spin_lock_irq() (Ville)
> 
> v3:
> - Fix -Wbitwise-conditional-parentheses (kernel test robot <lkp@intel.com>)
> 
> v2:
> - Fix HPD pin output set (impacts GPIOs 0 and 5)
> - Fix GPIO data output direction set (impacts GPIOs 4 and 9)
> - Reduce register accesses to single intel_de_rwm()
> 
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/6131
> Cc: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrj�l� <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 94 +++++++++++++++++++-
>  drivers/gpu/drm/i915/i915_irq.c              |  3 +
>  drivers/gpu/drm/i915/i915_reg.h              |  1 +
>  3 files changed, 95 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> index fce69fa446d5..41f025f089d9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> @@ -41,9 +41,11 @@
>  
>  #include "i915_drv.h"
>  #include "i915_reg.h"
> +#include "intel_de.h"
>  #include "intel_display_types.h"
>  #include "intel_dsi.h"
>  #include "intel_dsi_vbt.h"
> +#include "intel_gmbus_regs.h"
>  #include "vlv_dsi.h"
>  #include "vlv_dsi_regs.h"
>  #include "vlv_sideband.h"
> @@ -377,6 +379,85 @@ static void icl_exec_gpio(struct intel_connector *connector,
>  	drm_dbg_kms(&dev_priv->drm, "Skipping ICL GPIO element execution\n");
>  }
>  
> +enum {
> +	MIPI_RESET_1 = 0,
> +	MIPI_AVDD_EN_1,
> +	MIPI_BKLT_EN_1,
> +	MIPI_AVEE_EN_1,
> +	MIPI_VIO_EN_1,
> +	MIPI_RESET_2,
> +	MIPI_AVDD_EN_2,
> +	MIPI_BKLT_EN_2,
> +	MIPI_AVEE_EN_2,
> +	MIPI_VIO_EN_2,
> +};
> +
> +static void icl_native_gpio_set_value(struct drm_i915_private *dev_priv,
> +				      int gpio, bool value)
> +{
> +	int index;
> +
> +	if (drm_WARN_ON(&dev_priv->drm, DISPLAY_VER(dev_priv) == 11 && gpio >= MIPI_RESET_2))
> +		return;
> +
> +	switch (gpio) {
> +	case MIPI_RESET_1:
> +	case MIPI_RESET_2:
> +		index = gpio == MIPI_RESET_1 ? HPD_PORT_A : HPD_PORT_B;
> +
> +		/*
> +		 * Disable HPD to set the pin to output, and set output
> +		 * value. The HPD pin should not be enabled for DSI anyway,
> +		 * assuming the board design and VBT are sane, and the pin isn't
> +		 * used by a non-DSI encoder.
> +		 *
> +		 * The locking protects against concurrent SHOTPLUG_CTL_DDI
> +		 * modifications in irq setup and handling.
> +		 */
> +		spin_lock_irq(&dev_priv->irq_lock);
> +		intel_de_rmw(dev_priv, SHOTPLUG_CTL_DDI,
> +			     SHOTPLUG_CTL_DDI_HPD_ENABLE(index) |
> +			     SHOTPLUG_CTL_DDI_HPD_OUTPUT_DATA(index),
> +			     value ? SHOTPLUG_CTL_DDI_HPD_OUTPUT_DATA(index) : 0);
> +		spin_unlock_irq(&dev_priv->irq_lock);
> +		break;
> +	case MIPI_AVDD_EN_1:
> +	case MIPI_AVDD_EN_2:
> +		index = gpio == MIPI_AVDD_EN_1 ? 0 : 1;
> +
> +		intel_de_rmw(dev_priv, PP_CONTROL(index), PANEL_POWER_ON,
> +			     value ? PANEL_POWER_ON : 0);
> +		break;
> +	case MIPI_BKLT_EN_1:
> +	case MIPI_BKLT_EN_2:
> +		index = gpio == MIPI_AVDD_EN_1 ? 0 : 1;
> +
> +		intel_de_rmw(dev_priv, PP_CONTROL(index), EDP_BLC_ENABLE,
> +			     value ? EDP_BLC_ENABLE : 0);
> +		break;
> +	case MIPI_AVEE_EN_1:
> +	case MIPI_AVEE_EN_2:
> +		index = gpio == MIPI_AVEE_EN_1 ? 1 : 2;
> +
> +		intel_de_rmw(dev_priv, GPIO(dev_priv, index),
> +			     GPIO_CLOCK_VAL_OUT,
> +			     GPIO_CLOCK_DIR_MASK | GPIO_CLOCK_DIR_OUT |
> +			     GPIO_CLOCK_VAL_MASK | (value ? GPIO_CLOCK_VAL_OUT : 0));
> +		break;
> +	case MIPI_VIO_EN_1:
> +	case MIPI_VIO_EN_2:
> +		index = gpio == MIPI_VIO_EN_1 ? 1 : 2;
> +
> +		intel_de_rmw(dev_priv, GPIO(dev_priv, index),
> +			     GPIO_DATA_VAL_OUT,
> +			     GPIO_DATA_DIR_MASK | GPIO_DATA_DIR_OUT |
> +			     GPIO_DATA_VAL_MASK | (value ? GPIO_DATA_VAL_OUT : 0));
> +		break;
> +	default:
> +		MISSING_CASE(gpio);
> +	}
> +}
> +
>  static const u8 *mipi_exec_gpio(struct intel_dsi *intel_dsi, const u8 *data)
>  {
>  	struct drm_device *dev = intel_dsi->base.base.dev;
> @@ -384,8 +465,7 @@ static const u8 *mipi_exec_gpio(struct intel_dsi *intel_dsi, const u8 *data)
>  	struct intel_connector *connector = intel_dsi->attached_connector;
>  	u8 gpio_source, gpio_index = 0, gpio_number;
>  	bool value;
> -
> -	drm_dbg_kms(&dev_priv->drm, "\n");
> +	bool native = DISPLAY_VER(dev_priv) >= 11;
>  
>  	if (connector->panel.vbt.dsi.seq_version >= 3)
>  		gpio_index = *data++;
> @@ -398,10 +478,18 @@ static const u8 *mipi_exec_gpio(struct intel_dsi *intel_dsi, const u8 *data)
>  	else
>  		gpio_source = 0;
>  
> +	if (connector->panel.vbt.dsi.seq_version >= 4 && *data & BIT(1))
> +		native = false;
> +
>  	/* pull up/down */
>  	value = *data++ & 1;
>  
> -	if (DISPLAY_VER(dev_priv) >= 11)
> +	drm_dbg_kms(&dev_priv->drm, "GPIO index %u, number %u, source %u, native %s, set to %s\n",
> +		    gpio_index, gpio_number, gpio_source, str_yes_no(native), str_on_off(value));
> +
> +	if (native)
> +		icl_native_gpio_set_value(dev_priv, gpio_number, value);
> +	else if (DISPLAY_VER(dev_priv) >= 11)
>  		icl_exec_gpio(connector, gpio_source, gpio_index, value);
>  	else if (IS_VALLEYVIEW(dev_priv))
>  		vlv_exec_gpio(connector, gpio_source, gpio_number, value);
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 7a43d1bb6f97..54ea28cf8a1a 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -1974,7 +1974,10 @@ static void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
>  	if (ddi_hotplug_trigger) {
>  		u32 dig_hotplug_reg;
>  
> +		/* Locking due to DSI native GPIO sequences */
> +		spin_lock(&dev_priv->irq_lock);
>  		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_DDI, 0, 0);
> +		spin_unlock(&dev_priv->irq_lock);
>  
>  		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
>  				   ddi_hotplug_trigger, dig_hotplug_reg,
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index cef9418beec0..8b2cf980f323 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5966,6 +5966,7 @@
>  
>  #define SHOTPLUG_CTL_DDI				_MMIO(0xc4030)
>  #define   SHOTPLUG_CTL_DDI_HPD_ENABLE(hpd_pin)			(0x8 << (_HPD_PIN_DDI(hpd_pin) * 4))
> +#define   SHOTPLUG_CTL_DDI_HPD_OUTPUT_DATA(hpd_pin)		(0x4 << (_HPD_PIN_DDI(hpd_pin) * 4))
>  #define   SHOTPLUG_CTL_DDI_HPD_STATUS_MASK(hpd_pin)		(0x3 << (_HPD_PIN_DDI(hpd_pin) * 4))
>  #define   SHOTPLUG_CTL_DDI_HPD_NO_DETECT(hpd_pin)		(0x0 << (_HPD_PIN_DDI(hpd_pin) * 4))
>  #define   SHOTPLUG_CTL_DDI_HPD_SHORT_DETECT(hpd_pin)		(0x1 << (_HPD_PIN_DDI(hpd_pin) * 4))
> -- 
> 2.34.1

-- 
Ville Syrj�l�
Intel
