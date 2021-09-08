Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2694038A0
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 13:19:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C12AA6E192;
	Wed,  8 Sep 2021 11:19:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A97F6E192
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 11:19:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="281470811"
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="281470811"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 04:19:42 -0700
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="538506676"
Received: from mdoerbec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.33.106])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 04:19:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>, intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, vandita.kulkarni@intel.com,
 cooper.chiou@intel.com, william.tseng@intel.com,
 Lee Shawn C <shawn.c.lee@intel.com>
In-Reply-To: <20210902121429.27606-5-shawn.c.lee@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210902121429.27606-1-shawn.c.lee@intel.com>
 <20210902121429.27606-5-shawn.c.lee@intel.com>
Date: Wed, 08 Sep 2021 14:19:36 +0300
Message-ID: <87pmtj5n7b.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [v3 4/5] drm/i915/dsi: Retrieve max brightness
 level from VBT
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

On Thu, 02 Sep 2021, Lee Shawn C <shawn.c.lee@intel.com> wrote:
> So far, DCS backlight driver hardcode (0xFF) for max brightness level.
> MIPI DCS spec allow max 0xFFFF for set_display_brightness (51h) command.
> And VBT brightness precision bits can support 8 ~ 16 bits.
>
> We should set correct precision bits in VBT that meet panel's request.
> Driver can refer to this setting then configure max brightness level
> in DCS backlight driver properly.
>
> v2: modify variable name brightness_precision_bits instead of
>     max_brightness_level.
> v3: fix checkpatch warning.
>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Cc: William Tseng <william.tseng@intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c              |  3 +++
>  drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c | 10 ++++++++--
>  drivers/gpu/drm/i915/i915_drv.h                        |  1 +
>  3 files changed, 12 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index e86e6ed2d3bf..ccaf0a3100f7 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -483,6 +483,9 @@ parse_lfp_backlight(struct drm_i915_private *i915,
>  			level = 255;
>  		}
>  		i915->vbt.backlight.min_brightness = min_level;
> +
> +		i915->vbt.backlight.brightness_precision_bits =
> +			backlight_data->brightness_precision_bits[panel_type];
>  	} else {
>  		level = backlight_data->level[panel_type];
>  		i915->vbt.backlight.min_brightness = entry->min_brightness;
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
> index 584c14c4cbd0..567c086602d5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
> @@ -147,10 +147,16 @@ static void dcs_enable_backlight(const struct intel_crtc_state *crtc_state,
>  static int dcs_setup_backlight(struct intel_connector *connector,
>  			       enum pipe unused)
>  {
> +	struct drm_device *dev = connector->base.dev;
> +	struct drm_i915_private *dev_priv = to_i915(dev);
>  	struct intel_panel *panel = &connector->panel;
>  
> -	panel->backlight.max = PANEL_PWM_MAX_VALUE;
> -	panel->backlight.level = PANEL_PWM_MAX_VALUE;
> +	if (dev_priv->vbt.backlight.brightness_precision_bits > 8)
> +		panel->backlight.max = (1 << dev_priv->vbt.backlight.brightness_precision_bits) - 1;
> +	else
> +		panel->backlight.max = PANEL_PWM_MAX_VALUE;
> +
> +	panel->backlight.level = panel->backlight.max;
>  
>  	return 0;
>  }
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index be2392bbcecc..99a2d308b24d 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -705,6 +705,7 @@ struct intel_vbt_data {
>  
>  	struct {
>  		u16 pwm_freq_hz;
> +		u16 brightness_precision_bits;
>  		bool present;
>  		bool active_low_pwm;
>  		u8 min_brightness;	/* min_brightness/255 of max */

-- 
Jani Nikula, Intel Open Source Graphics Center
