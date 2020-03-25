Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C54E51922F7
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 09:39:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AFD36E069;
	Wed, 25 Mar 2020 08:39:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2A276E069
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 08:39:15 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id 26so4356811wmk.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 01:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=B729bzvlq6qIFypVBcW0T8xo52qCT7x96CQ4OkuOvGU=;
 b=N8oSqP4hU69GPEQboValF+3jKNNIPPA4ryTgx7QcFmNW441jSbyW7KQRYG4o1bq0sV
 ygd/XGL1hGIte2bsAZazm4kp56oM1P1P3+jBi5CiJ1wdiflb3RSUzm/XZBGLkit7D74I
 Go+oErr1Le2pd9sQiX+cbopXDeLZYPhAfcXng=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=B729bzvlq6qIFypVBcW0T8xo52qCT7x96CQ4OkuOvGU=;
 b=cec4XP45ITMv9rvawyS5JFl1HovlBSlxmGYCwKIkKd5fv0hovEIdV6nJzNrQt/Gxgi
 SiFbly16Nd6dESQJqv9eE2PZ8vsvnoEr1X8TPHmMYpj3eSxituwbWhQIWPxek/q6boGp
 C2vzA1YhZRLBAusDHdjpMrEfhDzOXKoCNH2hMsSoMSINCHCh04oWfbrjcMtShrtjdYuy
 QjuEviit7zEh2AWxCtJerE3PFZKRa6bw6jeRjRnSva124eurq5OP9dvZ/96qGM9zVGZ/
 ZAXrF4DMlDMT1vKFiCZ4RQRHfKqi7OIOu4wd/HdZIEzXFjlTyL/OhMUe95IQdQSgUnLb
 gQOQ==
X-Gm-Message-State: ANhLgQ2cSVTV1cnoiqt8WC9FDF/UX9JfH3sqUi7wvj0MmrV6ZxKWsgcx
 MS+kBGBNqSzXVPsMwZwF0xa6Rw==
X-Google-Smtp-Source: ADFU+vsgMd9W+c218Xs1H7F0DulFZQgXpK4Za0ISa1Q8jtKG9WSoHBLI68euon7chNpEWzWj5sHa5w==
X-Received: by 2002:a05:600c:da:: with SMTP id
 u26mr2416753wmm.117.1585125554207; 
 Wed, 25 Mar 2020 01:39:14 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id h5sm7588682wro.83.2020.03.25.01.39.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 01:39:13 -0700 (PDT)
Date: Wed, 25 Mar 2020 09:39:11 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200325083911.GO2363188@phenom.ffwll.local>
References: <cover.1584714939.git.jani.nikula@intel.com>
 <733d3032e61cb4892a516d5be5da5ec73bdb9fa1.1584714939.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <733d3032e61cb4892a516d5be5da5ec73bdb9fa1.1584714939.git.jani.nikula@intel.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 03/13] drm/i915/dp_aux_backlight: use struct
 drm_device based logging
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
Cc: intel-gfx@lists.freedesktop.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 20, 2020 at 04:36:28PM +0200, Jani Nikula wrote:
> Convert all the DRM_* logging macros to the struct drm_device based
> macros to provide device specific logging.
> 
> No functional changes.
> 
> Generated using the following semantic patch, originally written by
> Wambui Karuga <wambui.karugax@gmail.com>, with manual fixups on top:
> 
> @@
> identifier fn, T;
> @@
> 
> fn(...,struct drm_i915_private *T,...) {
> <+...
> (
> -DRM_INFO(
> +drm_info(&T->drm,
> ...)
> |
> -DRM_NOTE(
> +drm_notice(&T->drm,
> ...)
> |
> -DRM_ERROR(
> +drm_err(&T->drm,
> ...)
> |
> -DRM_WARN(
> +drm_warn(&T->drm,
> ...)
> |
> -DRM_DEBUG_DRIVER(
> +drm_dbg(&T->drm,
> ...)
> |
> -DRM_DEBUG_KMS(
> +drm_dbg_kms(&T->drm,
> ...)
> |
> -DRM_DEBUG_ATOMIC(
> +drm_dbg_atomic(&T->drm,
> ...)
> )
> ...+>
> }
> 
> @@
> identifier fn, T;
> @@
> 
> fn(...) {
> ...
> struct drm_i915_private *T = ...;
> <+...
> (
> -DRM_INFO(
> +drm_info(&T->drm,
> ...)
> |
> -DRM_NOTE(
> +drm_notice(&T->drm,
> ...)
> |
> -DRM_ERROR(
> +drm_err(&T->drm,
> ...)
> |
> -DRM_WARN(
> +drm_warn(&T->drm,
> ...)
> |
> -DRM_DEBUG_DRIVER(
> +drm_dbg(&T->drm,
> ...)
> |
> -DRM_DEBUG_KMS(
> +drm_dbg_kms(&T->drm,
> ...)
> |
> -DRM_DEBUG_ATOMIC(
> +drm_dbg_atomic(&T->drm,
> ...)
> )
> ...+>
> }
> 
> Cc: Wambui Karuga <wambui.karugax@gmail.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_dp_aux_backlight.c | 84 +++++++++++--------
>  1 file changed, 50 insertions(+), 34 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index 3e706bb850a8..4b916468540f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -27,6 +27,7 @@
>  
>  static void set_aux_backlight_enable(struct intel_dp *intel_dp, bool enable)
>  {
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	u8 reg_val = 0;
>  
>  	/* Early return when display use other mechanism to enable backlight. */
> @@ -35,8 +36,8 @@ static void set_aux_backlight_enable(struct intel_dp *intel_dp, bool enable)
>  
>  	if (drm_dp_dpcd_readb(&intel_dp->aux, DP_EDP_DISPLAY_CONTROL_REGISTER,
>  			      &reg_val) < 0) {
> -		DRM_DEBUG_KMS("Failed to read DPCD register 0x%x\n",
> -			      DP_EDP_DISPLAY_CONTROL_REGISTER);
> +		drm_dbg_kms(&i915->drm, "Failed to read DPCD register 0x%x\n",
> +			    DP_EDP_DISPLAY_CONTROL_REGISTER);
>  		return;
>  	}
>  	if (enable)
> @@ -46,8 +47,8 @@ static void set_aux_backlight_enable(struct intel_dp *intel_dp, bool enable)
>  
>  	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_EDP_DISPLAY_CONTROL_REGISTER,
>  			       reg_val) != 1) {
> -		DRM_DEBUG_KMS("Failed to %s aux backlight\n",
> -			      enable ? "enable" : "disable");
> +		drm_dbg_kms(&i915->drm, "Failed to %s aux backlight\n",
> +			    enable ? "enable" : "disable");
>  	}
>  }
>  
> @@ -58,6 +59,7 @@ static void set_aux_backlight_enable(struct intel_dp *intel_dp, bool enable)
>  static u32 intel_dp_aux_get_backlight(struct intel_connector *connector)
>  {
>  	struct intel_dp *intel_dp = intel_attached_dp(connector);
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	u8 read_val[2] = { 0x0 };
>  	u8 mode_reg;
>  	u16 level = 0;
> @@ -65,8 +67,9 @@ static u32 intel_dp_aux_get_backlight(struct intel_connector *connector)
>  	if (drm_dp_dpcd_readb(&intel_dp->aux,
>  			      DP_EDP_BACKLIGHT_MODE_SET_REGISTER,
>  			      &mode_reg) != 1) {
> -		DRM_DEBUG_KMS("Failed to read the DPCD register 0x%x\n",
> -			      DP_EDP_BACKLIGHT_MODE_SET_REGISTER);
> +		drm_dbg_kms(&i915->drm,
> +			    "Failed to read the DPCD register 0x%x\n",
> +			    DP_EDP_BACKLIGHT_MODE_SET_REGISTER);
>  		return 0;
>  	}
>  
> @@ -80,8 +83,8 @@ static u32 intel_dp_aux_get_backlight(struct intel_connector *connector)
>  
>  	if (drm_dp_dpcd_read(&intel_dp->aux, DP_EDP_BACKLIGHT_BRIGHTNESS_MSB,
>  			     &read_val, sizeof(read_val)) < 0) {
> -		DRM_DEBUG_KMS("Failed to read DPCD register 0x%x\n",
> -			      DP_EDP_BACKLIGHT_BRIGHTNESS_MSB);
> +		drm_dbg_kms(&i915->drm, "Failed to read DPCD register 0x%x\n",
> +			    DP_EDP_BACKLIGHT_BRIGHTNESS_MSB);
>  		return 0;
>  	}
>  	level = read_val[0];
> @@ -100,6 +103,7 @@ intel_dp_aux_set_backlight(const struct drm_connector_state *conn_state, u32 lev
>  {
>  	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>  	struct intel_dp *intel_dp = intel_attached_dp(connector);
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	u8 vals[2] = { 0x0 };
>  
>  	vals[0] = level;
> @@ -111,7 +115,8 @@ intel_dp_aux_set_backlight(const struct drm_connector_state *conn_state, u32 lev
>  	}
>  	if (drm_dp_dpcd_write(&intel_dp->aux, DP_EDP_BACKLIGHT_BRIGHTNESS_MSB,
>  			      vals, sizeof(vals)) < 0) {
> -		DRM_DEBUG_KMS("Failed to write aux backlight level\n");
> +		drm_dbg_kms(&i915->drm,
> +			    "Failed to write aux backlight level\n");
>  		return;
>  	}
>  }
> @@ -133,7 +138,8 @@ static bool intel_dp_aux_set_pwm_freq(struct intel_connector *connector)
>  
>  	freq = dev_priv->vbt.backlight.pwm_freq_hz;
>  	if (!freq) {
> -		DRM_DEBUG_KMS("Use panel default backlight frequency\n");
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Use panel default backlight frequency\n");
>  		return false;
>  	}
>  
> @@ -146,13 +152,14 @@ static bool intel_dp_aux_set_pwm_freq(struct intel_connector *connector)
>  	fxp_max = DIV_ROUND_CLOSEST(fxp * 5, 4);
>  
>  	if (fxp_min > fxp_actual || fxp_actual > fxp_max) {
> -		DRM_DEBUG_KMS("Actual frequency out of range\n");
> +		drm_dbg_kms(&dev_priv->drm, "Actual frequency out of range\n");
>  		return false;
>  	}
>  
>  	if (drm_dp_dpcd_writeb(&intel_dp->aux,
>  			       DP_EDP_BACKLIGHT_FREQ_SET, (u8) f) < 0) {
> -		DRM_DEBUG_KMS("Failed to write aux backlight freq\n");
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Failed to write aux backlight freq\n");
>  		return false;
>  	}
>  	return true;
> @@ -163,13 +170,14 @@ static void intel_dp_aux_enable_backlight(const struct intel_crtc_state *crtc_st
>  {
>  	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>  	struct intel_dp *intel_dp = intel_attached_dp(connector);
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	struct intel_panel *panel = &connector->panel;
>  	u8 dpcd_buf, new_dpcd_buf, edp_backlight_mode;
>  
>  	if (drm_dp_dpcd_readb(&intel_dp->aux,
>  			DP_EDP_BACKLIGHT_MODE_SET_REGISTER, &dpcd_buf) != 1) {
> -		DRM_DEBUG_KMS("Failed to read DPCD register 0x%x\n",
> -			      DP_EDP_BACKLIGHT_MODE_SET_REGISTER);
> +		drm_dbg_kms(&i915->drm, "Failed to read DPCD register 0x%x\n",
> +			    DP_EDP_BACKLIGHT_MODE_SET_REGISTER);
>  		return;
>  	}
>  
> @@ -186,7 +194,8 @@ static void intel_dp_aux_enable_backlight(const struct intel_crtc_state *crtc_st
>  		if (drm_dp_dpcd_writeb(&intel_dp->aux,
>  				       DP_EDP_PWMGEN_BIT_COUNT,
>  				       panel->backlight.pwmgen_bit_count) < 0)
> -			DRM_DEBUG_KMS("Failed to write aux pwmgen bit count\n");
> +			drm_dbg_kms(&i915->drm,
> +				    "Failed to write aux pwmgen bit count\n");
>  
>  		break;
>  
> @@ -203,7 +212,8 @@ static void intel_dp_aux_enable_backlight(const struct intel_crtc_state *crtc_st
>  	if (new_dpcd_buf != dpcd_buf) {
>  		if (drm_dp_dpcd_writeb(&intel_dp->aux,
>  			DP_EDP_BACKLIGHT_MODE_SET_REGISTER, new_dpcd_buf) < 0) {
> -			DRM_DEBUG_KMS("Failed to write aux backlight mode\n");
> +			drm_dbg_kms(&i915->drm,
> +				    "Failed to write aux backlight mode\n");
>  		}
>  	}
>  
> @@ -237,9 +247,11 @@ static u32 intel_dp_aux_calc_max_backlight(struct intel_connector *connector)
>  	 * minimum value will applied automatically. So no need to check that.
>  	 */
>  	freq = i915->vbt.backlight.pwm_freq_hz;
> -	DRM_DEBUG_KMS("VBT defined backlight frequency %u Hz\n", freq);
> +	drm_dbg_kms(&i915->drm, "VBT defined backlight frequency %u Hz\n",
> +		    freq);
>  	if (!freq) {
> -		DRM_DEBUG_KMS("Use panel default backlight frequency\n");
> +		drm_dbg_kms(&i915->drm,
> +			    "Use panel default backlight frequency\n");
>  		return max_backlight;
>  	}
>  
> @@ -254,12 +266,14 @@ static u32 intel_dp_aux_calc_max_backlight(struct intel_connector *connector)
>  	 */
>  	if (drm_dp_dpcd_readb(&intel_dp->aux,
>  			      DP_EDP_PWMGEN_BIT_COUNT_CAP_MIN, &pn_min) != 1) {
> -		DRM_DEBUG_KMS("Failed to read pwmgen bit count cap min\n");
> +		drm_dbg_kms(&i915->drm,
> +			    "Failed to read pwmgen bit count cap min\n");
>  		return max_backlight;
>  	}
>  	if (drm_dp_dpcd_readb(&intel_dp->aux,
>  			      DP_EDP_PWMGEN_BIT_COUNT_CAP_MAX, &pn_max) != 1) {
> -		DRM_DEBUG_KMS("Failed to read pwmgen bit count cap max\n");
> +		drm_dbg_kms(&i915->drm,
> +			    "Failed to read pwmgen bit count cap max\n");
>  		return max_backlight;
>  	}
>  	pn_min &= DP_EDP_PWMGEN_BIT_COUNT_MASK;
> @@ -268,7 +282,8 @@ static u32 intel_dp_aux_calc_max_backlight(struct intel_connector *connector)
>  	fxp_min = DIV_ROUND_CLOSEST(fxp * 3, 4);
>  	fxp_max = DIV_ROUND_CLOSEST(fxp * 5, 4);
>  	if (fxp_min < (1 << pn_min) || (255 << pn_max) < fxp_max) {
> -		DRM_DEBUG_KMS("VBT defined backlight frequency out of range\n");
> +		drm_dbg_kms(&i915->drm,
> +			    "VBT defined backlight frequency out of range\n");
>  		return max_backlight;
>  	}
>  
> @@ -279,10 +294,11 @@ static u32 intel_dp_aux_calc_max_backlight(struct intel_connector *connector)
>  			break;
>  	}
>  
> -	DRM_DEBUG_KMS("Using eDP pwmgen bit count of %d\n", pn);
> +	drm_dbg_kms(&i915->drm, "Using eDP pwmgen bit count of %d\n", pn);
>  	if (drm_dp_dpcd_writeb(&intel_dp->aux,
>  			       DP_EDP_PWMGEN_BIT_COUNT, pn) < 0) {
> -		DRM_DEBUG_KMS("Failed to write aux pwmgen bit count\n");
> +		drm_dbg_kms(&i915->drm,
> +			    "Failed to write aux pwmgen bit count\n");
>  		return max_backlight;
>  	}
>  	panel->backlight.pwmgen_bit_count = pn;
> @@ -312,6 +328,7 @@ static bool
>  intel_dp_aux_display_control_capable(struct intel_connector *connector)
>  {
>  	struct intel_dp *intel_dp = intel_attached_dp(connector);
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  
>  	/* Check the eDP Display control capabilities registers to determine if
>  	 * the panel can support backlight control over the aux channel
> @@ -319,7 +336,7 @@ intel_dp_aux_display_control_capable(struct intel_connector *connector)
>  	if (intel_dp->edp_dpcd[1] & DP_EDP_TCON_BACKLIGHT_ADJUSTMENT_CAP &&
>  	    (intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP) &&
>  	    !(intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_PWM_PIN_CAP)) {
> -		DRM_DEBUG_KMS("AUX Backlight Control Supported!\n");
> +		drm_dbg_kms(&i915->drm, "AUX Backlight Control Supported!\n");
>  		return true;
>  	}
>  	return false;
> @@ -329,8 +346,7 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *intel_connector)
>  {
>  	struct intel_panel *panel = &intel_connector->panel;
>  	struct intel_dp *intel_dp = enc_to_intel_dp(intel_connector->encoder);
> -	struct drm_device *dev = intel_connector->base.dev;
> -	struct drm_i915_private *dev_priv = to_i915(dev);
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  
>  	if (i915_modparams.enable_dpcd_backlight == 0 ||
>  	    !intel_dp_aux_display_control_capable(intel_connector))
> @@ -340,17 +356,17 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *intel_connector)
>  	 * There are a lot of machines that don't advertise the backlight
>  	 * control interface to use properly in their VBIOS, :\
>  	 */
> -	if (dev_priv->vbt.backlight.type !=
> +	if (i915->vbt.backlight.type !=
>  	    INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE &&
>  	    !drm_dp_has_quirk(&intel_dp->desc, intel_dp->edid_quirks,
>  			      DP_QUIRK_FORCE_DPCD_BACKLIGHT)) {
> -		DRM_DEV_INFO(dev->dev,
> -			     "Panel advertises DPCD backlight support, but "
> -			     "VBT disagrees. If your backlight controls "
> -			     "don't work try booting with "
> -			     "i915.enable_dpcd_backlight=1. If your machine "
> -			     "needs this, please file a _new_ bug report on "
> -			     "drm/i915, see " FDO_BUG_URL " for details.\n");
> +		drm_info(&i915->drm,
> +			 "Panel advertises DPCD backlight support, but "
> +			 "VBT disagrees. If your backlight controls "
> +			 "don't work try booting with "
> +			 "i915.enable_dpcd_backlight=1. If your machine "
> +			 "needs this, please file a _new_ bug report on "
> +			 "drm/i915, see " FDO_BUG_URL " for details.\n");
>  		return -ENODEV;
>  	}

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

>  
> -- 
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
