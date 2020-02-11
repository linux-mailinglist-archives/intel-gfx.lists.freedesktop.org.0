Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FB4159190
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 15:08:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 529556EA8B;
	Tue, 11 Feb 2020 14:08:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D8756EA66;
 Tue, 11 Feb 2020 14:08:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 06:08:36 -0800
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="405946412"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 06:08:32 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Wambui Karuga <wambui.karugax@gmail.com>, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
In-Reply-To: <20200206080014.13759-7-wambui.karugax@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200206080014.13759-1-wambui.karugax@gmail.com>
 <20200206080014.13759-7-wambui.karugax@gmail.com>
Date: Tue, 11 Feb 2020 16:08:28 +0200
Message-ID: <87imkdz06b.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 06/12] drm/i915/dp_aux_backlight: convert
 to drm_device based logging macros.
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 06 Feb 2020, Wambui Karuga <wambui.karugax@gmail.com> wrote:
> Conversion of the printk based drm logging macros to the struct
> drm_device based logging macros in display/intel_dp_aux_backlight.c.
> This also involves extracting the drm_i915_private device pointer from
> various intel types to use in the macros.
>
> Note that this converts DRM_DEBUG_DRIVER to drm_dbg().
>
> References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html
> Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>

I'm holding on with this one for a bit, as I'd probably like to get
other changes merged to this file first. Sorry.

BR,
Jani.

> ---
>  .../drm/i915/display/intel_dp_aux_backlight.c | 72 ++++++++++++-------
>  1 file changed, 45 insertions(+), 27 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index e86feebef299..83d9c76e4da9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -35,8 +35,9 @@ static void set_aux_backlight_enable(struct intel_dp *intel_dp, bool enable)
>  
>  	if (drm_dp_dpcd_readb(&intel_dp->aux, DP_EDP_DISPLAY_CONTROL_REGISTER,
>  			      &reg_val) < 0) {
> -		DRM_DEBUG_KMS("Failed to read DPCD register 0x%x\n",
> -			      DP_EDP_DISPLAY_CONTROL_REGISTER);
> +		drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
> +			    "Failed to read DPCD register 0x%x\n",
> +			    DP_EDP_DISPLAY_CONTROL_REGISTER);
>  		return;
>  	}
>  	if (enable)
> @@ -46,8 +47,9 @@ static void set_aux_backlight_enable(struct intel_dp *intel_dp, bool enable)
>  
>  	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_EDP_DISPLAY_CONTROL_REGISTER,
>  			       reg_val) != 1) {
> -		DRM_DEBUG_KMS("Failed to %s aux backlight\n",
> -			      enable ? "enable" : "disable");
> +		drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
> +			    "Failed to %s aux backlight\n",
> +			    enable ? "enable" : "disable");
>  	}
>  }
>  
> @@ -65,8 +67,9 @@ static u32 intel_dp_aux_get_backlight(struct intel_connector *connector)
>  	if (drm_dp_dpcd_readb(&intel_dp->aux,
>  			      DP_EDP_BACKLIGHT_MODE_SET_REGISTER,
>  			      &mode_reg) != 1) {
> -		DRM_DEBUG_KMS("Failed to read the DPCD register 0x%x\n",
> -			      DP_EDP_BACKLIGHT_MODE_SET_REGISTER);
> +		drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
> +			    "Failed to read the DPCD register 0x%x\n",
> +			    DP_EDP_BACKLIGHT_MODE_SET_REGISTER);
>  		return 0;
>  	}
>  
> @@ -80,8 +83,9 @@ static u32 intel_dp_aux_get_backlight(struct intel_connector *connector)
>  
>  	if (drm_dp_dpcd_read(&intel_dp->aux, DP_EDP_BACKLIGHT_BRIGHTNESS_MSB,
>  			     &read_val, sizeof(read_val)) < 0) {
> -		DRM_DEBUG_KMS("Failed to read DPCD register 0x%x\n",
> -			      DP_EDP_BACKLIGHT_BRIGHTNESS_MSB);
> +		drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
> +			    "Failed to read DPCD register 0x%x\n",
> +			    DP_EDP_BACKLIGHT_BRIGHTNESS_MSB);
>  		return 0;
>  	}
>  	level = read_val[0];
> @@ -111,7 +115,8 @@ intel_dp_aux_set_backlight(const struct drm_connector_state *conn_state, u32 lev
>  	}
>  	if (drm_dp_dpcd_write(&intel_dp->aux, DP_EDP_BACKLIGHT_BRIGHTNESS_MSB,
>  			      vals, sizeof(vals)) < 0) {
> -		DRM_DEBUG_KMS("Failed to write aux backlight level\n");
> +		drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
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
> @@ -162,14 +169,16 @@ static void intel_dp_aux_enable_backlight(const struct intel_crtc_state *crtc_st
>  					  const struct drm_connector_state *conn_state)
>  {
>  	struct intel_connector *connector = to_intel_connector(conn_state->connector);
> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  	struct intel_dp *intel_dp = intel_attached_dp(connector);
>  	struct intel_panel *panel = &connector->panel;
>  	u8 dpcd_buf, new_dpcd_buf, edp_backlight_mode;
>  
>  	if (drm_dp_dpcd_readb(&intel_dp->aux,
>  			DP_EDP_BACKLIGHT_MODE_SET_REGISTER, &dpcd_buf) != 1) {
> -		DRM_DEBUG_KMS("Failed to read DPCD register 0x%x\n",
> -			      DP_EDP_BACKLIGHT_MODE_SET_REGISTER);
> +		drm_dbg_kms(&i915->drm,
> +			    "Failed to read DPCD register 0x%x\n",
> +			    DP_EDP_BACKLIGHT_MODE_SET_REGISTER);
>  		return;
>  	}
>  
> @@ -186,7 +195,8 @@ static void intel_dp_aux_enable_backlight(const struct intel_crtc_state *crtc_st
>  		if (drm_dp_dpcd_writeb(&intel_dp->aux,
>  				       DP_EDP_PWMGEN_BIT_COUNT,
>  				       panel->backlight.pwmgen_bit_count) < 0)
> -			DRM_DEBUG_KMS("Failed to write aux pwmgen bit count\n");
> +			drm_dbg_kms(&i915->drm,
> +				    "Failed to write aux pwmgen bit count\n");
>  
>  		break;
>  
> @@ -203,7 +213,8 @@ static void intel_dp_aux_enable_backlight(const struct intel_crtc_state *crtc_st
>  	if (new_dpcd_buf != dpcd_buf) {
>  		if (drm_dp_dpcd_writeb(&intel_dp->aux,
>  			DP_EDP_BACKLIGHT_MODE_SET_REGISTER, new_dpcd_buf) < 0) {
> -			DRM_DEBUG_KMS("Failed to write aux backlight mode\n");
> +			drm_dbg_kms(&i915->drm,
> +				    "Failed to write aux backlight mode\n");
>  		}
>  	}
>  
> @@ -237,9 +248,11 @@ static u32 intel_dp_aux_calc_max_backlight(struct intel_connector *connector)
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
> @@ -254,12 +267,14 @@ static u32 intel_dp_aux_calc_max_backlight(struct intel_connector *connector)
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
> @@ -268,7 +283,8 @@ static u32 intel_dp_aux_calc_max_backlight(struct intel_connector *connector)
>  	fxp_min = DIV_ROUND_CLOSEST(fxp * 3, 4);
>  	fxp_max = DIV_ROUND_CLOSEST(fxp * 5, 4);
>  	if (fxp_min < (1 << pn_min) || (255 << pn_max) < fxp_max) {
> -		DRM_DEBUG_KMS("VBT defined backlight frequency out of range\n");
> +		drm_dbg_kms(&i915->drm,
> +			    "VBT defined backlight frequency out of range\n");
>  		return max_backlight;
>  	}
>  
> @@ -279,10 +295,11 @@ static u32 intel_dp_aux_calc_max_backlight(struct intel_connector *connector)
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
> @@ -319,7 +336,8 @@ intel_dp_aux_display_control_capable(struct intel_connector *connector)
>  	if (intel_dp->edp_dpcd[1] & DP_EDP_TCON_BACKLIGHT_ADJUSTMENT_CAP &&
>  	    (intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP) &&
>  	    !(intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_PWM_PIN_CAP)) {
> -		DRM_DEBUG_KMS("AUX Backlight Control Supported!\n");
> +		drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
> +			    "AUX Backlight Control Supported!\n");
>  		return true;
>  	}
>  	return false;
> @@ -328,8 +346,8 @@ intel_dp_aux_display_control_capable(struct intel_connector *connector)
>  int intel_dp_aux_init_backlight_funcs(struct intel_connector *intel_connector)
>  {
>  	struct intel_panel *panel = &intel_connector->panel;
> -	enum intel_backlight_type type =
> -		to_i915(intel_connector->base.dev)->vbt.backlight.type;
> +	struct drm_i915_private *i915 = to_i915(intel_connector->base.dev);
> +	enum intel_backlight_type type = i915->vbt.backlight.type;
>  
>  	if (i915_modparams.enable_dpcd_backlight == 0 ||
>  	    (i915_modparams.enable_dpcd_backlight == -1 &&
> @@ -337,7 +355,7 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *intel_connector)
>  		return -ENODEV;
>  
>  	if (type != INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE)
> -		DRM_DEBUG_DRIVER("Ignoring VBT backlight type\n");
> +		drm_dbg(&i915->drm, "Ignoring VBT backlight type\n");
>  
>  	panel->backlight.setup = intel_dp_aux_setup_backlight;
>  	panel->backlight.enable = intel_dp_aux_enable_backlight;

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
