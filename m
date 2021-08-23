Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5528C3F4A4E
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 14:07:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A6BF897F5;
	Mon, 23 Aug 2021 12:07:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D3FD897F5
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Aug 2021 12:07:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10084"; a="213957186"
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="213957186"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 05:07:02 -0700
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="535335626"
Received: from todonova-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.249.44.47])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 05:06:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>, intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, vandita.kulkarni@intel.com,
 cooper.chiou@intel.com, william.tseng@intel.com,
 Lee Shawn C <shawn.c.lee@intel.com>
In-Reply-To: <20210812154237.13911-3-shawn.c.lee@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210812154237.13911-1-shawn.c.lee@intel.com>
 <20210812154237.13911-3-shawn.c.lee@intel.com>
Date: Mon, 23 Aug 2021 15:06:55 +0300
Message-ID: <878s0sgyao.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [v4 2/7] drm/i915/jsl: program DSI panel GPIOs
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

On Thu, 12 Aug 2021, Lee Shawn C <shawn.c.lee@intel.com> wrote:
> DSI driver should have its own implementation to toggle
> gpio pins based on GPIO info coming from VBT sequences.
>
> v2: Remove redundant ICP_PP_CONTROL() define.
>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Cc: William Tseng <william.tseng@intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 44 +++++++++++++++++++-
>  1 file changed, 43 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> index cc93e045a425..57676a5e560c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> @@ -43,6 +43,7 @@
>  #include "intel_display_types.h"
>  #include "intel_dsi.h"
>  #include "intel_sideband.h"
> +#include "intel_de.h"
>  
>  #define MIPI_TRANSFER_MODE_SHIFT	0
>  #define MIPI_VIRTUAL_CHANNEL_SHIFT	1
> @@ -354,7 +355,48 @@ static void bxt_exec_gpio(struct drm_i915_private *dev_priv,
>  static void icl_exec_gpio(struct drm_i915_private *dev_priv,
>  			  u8 gpio_source, u8 gpio_index, bool value)
>  {
> -	drm_dbg_kms(&dev_priv->drm, "Skipping ICL GPIO element execution\n");
> +	u32 val;
> +
> +	switch (gpio_index) {
> +	case ICL_GPIO_L_VDDEN_1:
> +		val = intel_de_read(dev_priv, PP_CONTROL(0));
> +		if (value)
> +			val |= PANEL_POWER_ON;
> +		else
> +			val &= ~PANEL_POWER_ON;
> +		intel_de_write(dev_priv, PP_CONTROL(0), val);
> +		break;
> +	case ICL_GPIO_L_BKLTEN_1:
> +		val = intel_de_read(dev_priv, PP_CONTROL(0));
> +		if (value)
> +			val |= EDP_BLC_ENABLE;
> +		else
> +			val &= ~EDP_BLC_ENABLE;
> +		intel_de_write(dev_priv, PP_CONTROL(0), val);
> +		break;

Again, this breaks the PPS abstractions we have in intel_pps.[ch].

BR,
Jani.

> +	case ICL_GPIO_DDPA_CTRLCLK_1:
> +		val = intel_de_read(dev_priv, GPIO(1));
> +		if (value)
> +			val |= GPIO_CLOCK_VAL_OUT;
> +		else
> +			val &= ~GPIO_CLOCK_VAL_OUT;
> +		val |= GPIO_CLOCK_DIR_MASK | GPIO_CLOCK_DIR_OUT | GPIO_CLOCK_VAL_MASK;
> +		intel_de_write(dev_priv, GPIO(1), val);
> +		break;
> +	case ICL_GPIO_DDPA_CTRLDATA_1:
> +		val = intel_de_read(dev_priv, GPIO(1));
> +		if (value)
> +			val |= GPIO_DATA_VAL_OUT;
> +		else
> +			val &= ~GPIO_DATA_VAL_OUT;
> +		val |= GPIO_DATA_DIR_MASK | GPIO_DATA_DIR_OUT | GPIO_DATA_VAL_MASK;
> +		intel_de_write(dev_priv, GPIO(1), val);
> +		break;
> +	default:
> +		/* TODO: Add support for remaining GPIOs */
> +		DRM_ERROR("Invalid GPIO number (%d) from VBT\n", gpio_index);
> +		break;
> +	}
>  }
>  
>  static const u8 *mipi_exec_gpio(struct intel_dsi *intel_dsi, const u8 *data)

-- 
Jani Nikula, Intel Open Source Graphics Center
