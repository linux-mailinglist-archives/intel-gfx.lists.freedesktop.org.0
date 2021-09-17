Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8601340F65F
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 12:59:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 053416EC20;
	Fri, 17 Sep 2021 10:59:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A0736EC20
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 10:59:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10109"; a="202933024"
X-IronPort-AV: E=Sophos;i="5.85,301,1624345200"; d="scan'208";a="202933024"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 03:59:08 -0700
X-IronPort-AV: E=Sophos;i="5.85,301,1624345200"; d="scan'208";a="546290435"
Received: from unknown (HELO localhost) ([10.251.216.224])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 03:59:05 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Lee Shawn C <shawn.c.lee@intel.com>, Vandita Kulkarni
 <vandita.kulkarni@intel.com>, Cooper Chiou <cooper.chiou@intel.com>,
 William Tseng <william.tseng@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
In-Reply-To: <20210917043537.4575-1-shawn.c.lee@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210916102118.17356-1-shawn.c.lee@intel.com>
 <20210917043537.4575-1-shawn.c.lee@intel.com>
Date: Fri, 17 Sep 2021 13:59:01 +0300
Message-ID: <87wnnfv56y.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: do not register gmbus if it
 was reserved for MIPI display
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

On Fri, 17 Sep 2021, Lee Shawn C <shawn.c.lee@intel.com> wrote:
> Gmbus driver would setup all Intel i2c GMBuses. But DDC bus
> may configured as gpio and reserved for MIPI driver to control
> panel power on/off sequence.
>
> Using i2c tool to communicate to peripherals via i2c interface
> reversed for gmbus(DDC). There will be some high/low pulse
> appear on DDC SCL and SDA (might be host sent out i2c slave
> address). MIPI panel would be impacted due to unexpected signal
> then caused abnormal display or shut down issue.
>
> v2: gmbus driver should not add i2c adapter for DDC interface
>     if LFP display was configured to support MIPI panel.
> v3: fix sparse warning
>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Cc: William Tseng <william.tseng@intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_gmbus.c | 18 +++++++++++++++++-
>  1 file changed, 17 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
> index ceb1bf8a8c3c..51d2b6bf2ed2 100644
> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> @@ -141,6 +141,21 @@ bool intel_gmbus_is_valid_pin(struct drm_i915_private *dev_priv,
>  	return pin < size && get_gmbus_pin(dev_priv, pin)->name;
>  }
>  
> +static bool intel_gmbus_ddc_reserve_for_mipi(struct drm_i915_private *dev_priv,
> +					     unsigned int pin)
> +{
> +	if (intel_bios_is_dsi_present(dev_priv, NULL)) {
> +		if (DISPLAY_VER(dev_priv) >= 11) {
> +			if ((pin == GMBUS_PIN_2_BXT && dev_priv->vbt.dsi.config->dual_link) ||
> +			     pin == GMBUS_PIN_1_BXT) {
> +				return true;
> +			}
> +		}
> +	}
> +
> +	return false;
> +}
> +
>  /* Intel GPIO access functions */
>  
>  #define I2C_RISEFALL_TIME 10
> @@ -859,7 +874,8 @@ int intel_gmbus_setup(struct drm_i915_private *dev_priv)
>  	init_waitqueue_head(&dev_priv->gmbus_wait_queue);
>  
>  	for (pin = 0; pin < ARRAY_SIZE(dev_priv->gmbus); pin++) {
> -		if (!intel_gmbus_is_valid_pin(dev_priv, pin))
> +		if (!intel_gmbus_is_valid_pin(dev_priv, pin) ||
> +		     intel_gmbus_ddc_reserve_for_mipi(dev_priv, pin))
>  			continue;
>  
>  		bus = &dev_priv->gmbus[pin];

This does not prevent the pin from being used for e.g. HDMI, and things
are probably going to go awfully wrong with intel_gmbus_get_adapter()
when the adapter hasn't been registered. In that sense, this is no
different from v1.

Sure, the VBT probably shouldn't do that, but that's not an excuse for
us to not take it into account.

Cc: Ville in case he has some clever ideas off the top of his head. I
know I'd have to spend time I don't have to figure this out.


BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
