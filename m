Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B92CD2C53CE
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 13:17:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA5EE6E90A;
	Thu, 26 Nov 2020 12:17:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BCEF6E8EC;
 Thu, 26 Nov 2020 12:17:09 +0000 (UTC)
IronPort-SDR: WW9QJ0GKPXqpNrUzD693EPcRufcacYAiA7/M4NHyrFsaWpMgRdxl2SN9Q3vFcw4uIswsqlOq6I
 5Idst+1BIQTA==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="169718011"
X-IronPort-AV: E=Sophos;i="5.78,372,1599548400"; d="scan'208";a="169718011"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 04:17:09 -0800
IronPort-SDR: N8SzVTG5o/hdbJEhQ/z66C5VLKQAvzjH+B9owSQ9Mzu+TJ8SOvv53T3+0kgTrCwmNwTz0XSKCL
 3mj9bcD3vjpg==
X-IronPort-AV: E=Sophos;i="5.78,372,1599548400"; d="scan'208";a="547698328"
Received: from mpascu-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.41.186])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 04:17:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Lyude Paul <lyude@redhat.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200916171855.129511-7-lyude@redhat.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200916171855.129511-1-lyude@redhat.com>
 <20200916171855.129511-7-lyude@redhat.com>
Date: Thu, 26 Nov 2020 14:17:00 +0200
Message-ID: <87lfeol3cz.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC v2 6/8] drm/i915/dp: Enable Intel's HDR
 backlight interface (only SDR for now)
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
Cc: David Airlie <airlied@linux.ie>, Lucas De Marchi <lucas.demarchi@intel.com>,
 open list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Vasily Khoruzhick <anarsoul@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 16 Sep 2020, Lyude Paul <lyude@redhat.com> wrote:
> So-recently a bunch of laptops on the market have started using DPCD
> backlight controls instead of the traditional DDI backlight controls.
> Originally we thought we had this handled by adding VESA backlight
> control support to i915, but the story ended up being a lot more
> complicated then that.
>
> Simply put-there's two main backlight interfaces Intel can see in the
> wild. Intel's proprietary HDR backlight interface, and the standard VESA
> backlight interface. Note that many panels have been observed to report
> support for both backlight interfaces, but testing has shown far more
> panels work with the Intel HDR backlight interface at the moment.
> Additionally, the VBT appears to be capable of reporting support for the
> VESA backlight interface but not the Intel HDR interface which needs to
> be probed by setting the right magic OUI.
>
> On top of that however, there's also actually two different variants of
> the Intel HDR backlight interface. The first uses the AUX channel for
> controlling the brightness of the screen in both SDR and HDR mode, and
> the second only uses the AUX channel for setting the brightness level in
> HDR mode - relying on PWM for setting the brightness level in SDR mode.
>
> For the time being we've been using EDIDs to maintain a list of quirks
> for panels that safely do support the VESA backlight interface. Adding
> support for Intel's HDR backlight interface in addition however, should
> finally allow us to auto-detect eDP backlight controls properly so long
> as we probe like so:
>
> * If the panel's VBT reports VESA backlight support, assume it really
>   does support it
> * If the panel's VBT reports DDI backlight controls:
>   * First probe for Intel's HDR backlight interface
>   * If that fails, probe for VESA's backlight interface
>   * If that fails, assume no DPCD backlight control
> * If the panel's VBT reports any other backlight type: just assume it
>   doesn't have DPCD backlight controls
>
> Signed-off-by: Lyude Paul <lyude@redhat.com>
> Cc: thaytan@noraisin.net
> Cc: Vasily Khoruzhick <anarsoul@gmail.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |   9 +-
>  .../drm/i915/display/intel_dp_aux_backlight.c | 253 ++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_panel.c    |  34 ++-
>  drivers/gpu/drm/i915/display/intel_panel.h    |   4 +
>  4 files changed, 268 insertions(+), 32 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 52a6543df842a..9d540368bac89 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -230,7 +230,14 @@ struct intel_panel {
>  		struct pwm_state pwm_state;
>  
>  		/* DPCD backlight */
> -		u8 pwmgen_bit_count;
> +		union {
> +			struct {
> +				u8 pwmgen_bit_count;
> +			} vesa;
> +			struct {
> +				bool sdr_uses_aux;
> +			} intel;
> +		} edp;
>  
>  		struct {
>  			int (*setup)(struct intel_connector *connector, enum pipe pipe);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index c1e8e8b166267..376419ea3ae52 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -22,8 +22,26 @@
>   *
>   */
>  
> +/*
> + * Laptops with Intel GPUs which have panels that support controlling the
> + * backlight through DP AUX can actually use two different interfaces: Intel's
> + * proprietary DP AUX backlight interface, and the standard VESA backlight
> + * interface. Unfortunately, at the time of writing this a lot of laptops will
> + * advertise support for the standard VESA backlight interface when they
> + * don't properly support it. However, on these systems the Intel backlight
> + * interface generally does work properly. Additionally, these systems will
> + * usually just indicate that they use PWM backlight controls in their VBIOS
> + * for some reason.
> + */
> +
>  #include "intel_display_types.h"
>  #include "intel_dp_aux_backlight.h"
> +#include "intel_panel.h"
> +
> +/* TODO:
> + * Implement HDR, right now we just implement the bare minimum to bring us back into SDR mode so we
> + * can make people's backlights work in the mean time
> + */
>  
>  /*
>   * DP AUX registers for Intel's proprietary HDR backlight interface. We define
> @@ -77,6 +95,176 @@
>  
>  #define INTEL_EDP_BRIGHTNESS_OPTIMIZATION_1                            0x359
>  
> +/* Intel EDP backlight callbacks */
> +static bool
> +intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
> +{
> +	struct drm_device *dev = connector->base.dev;
> +	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
> +	struct drm_dp_aux *aux = &intel_dp->aux;
> +	struct intel_panel *panel = &connector->panel;
> +	int ret;
> +	u8 tcon_cap[4];
> +
> +	ret = drm_dp_dpcd_read(aux, INTEL_EDP_HDR_TCON_CAP0, tcon_cap, sizeof(tcon_cap));
> +	if (ret < 0)
> +		return false;
> +
> +	if (!(tcon_cap[1] & INTEL_EDP_HDR_TCON_BRIGHTNESS_NITS_CAP))
> +		return false;
> +
> +	if (tcon_cap[0] >= 1) {
> +		drm_dbg_kms(dev, "Detected Intel HDR backlight interface version %d\n",
> +			    tcon_cap[0]);
> +	} else {
> +		drm_dbg_kms(dev, "Detected unsupported HDR backlight interface version %d\n",
> +			    tcon_cap[0]);
> +		return false;
> +	}
> +
> +	panel->backlight.edp.intel.sdr_uses_aux =
> +		tcon_cap[2] & INTEL_EDP_SDR_TCON_BRIGHTNESS_AUX_CAP;
> +
> +	return true;
> +}
> +
> +static u32
> +intel_dp_aux_hdr_get_backlight(struct intel_connector *connector)
> +{
> +	struct drm_device *dev = connector->base.dev;
> +	struct intel_panel *panel = &connector->panel;
> +	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
> +	u8 tmp;
> +	u8 buf[2] = { 0 };
> +
> +	if (drm_dp_dpcd_readb(&intel_dp->aux, INTEL_EDP_HDR_GETSET_CTRL_PARAMS, &tmp) < 0)
> +		drm_err(dev, "Failed to read current backlight mode from DPCD\n");
> +
> +	if (!(tmp & INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE)) {
> +		if (panel->backlight.edp.intel.sdr_uses_aux) {
> +			/* Assume 100% brightness if backlight controls aren't enabled yet */
> +			return panel->backlight.max;
> +		} else {
> +			u32 pwm_level = panel->backlight.pwm_funcs.get(connector);
> +
> +			return intel_panel_backlight_level_from_pwm(connector, pwm_level);
> +		}
> +	}
> +
> +	if (drm_dp_dpcd_read(&intel_dp->aux, INTEL_EDP_BRIGHTNESS_NITS_LSB, buf, sizeof(buf)) < 0) {
> +		drm_err(dev, "Failed to read brightness from DPCD\n");
> +		return 0;
> +	}
> +
> +	return (buf[1] << 8 | buf[0]);
> +}
> +
> +static void
> +intel_dp_aux_hdr_set_aux_backlight(const struct drm_connector_state *conn_state, u32 level)
> +{
> +	struct intel_connector *connector = to_intel_connector(conn_state->connector);
> +	struct drm_device *dev = connector->base.dev;
> +	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
> +	uint8_t buf[4] = { 0 };
> +
> +	buf[0] = level & 0xFF;
> +	buf[1] = (level & 0xFF00) >> 8;
> +
> +	if (drm_dp_dpcd_write(&intel_dp->aux, INTEL_EDP_BRIGHTNESS_NITS_LSB, buf, 4) < 0)
> +		drm_err(dev, "Failed to write brightness level to DPCD\n");
> +}
> +
> +static void
> +intel_dp_aux_hdr_set_backlight(const struct drm_connector_state *conn_state, u32 level)
> +{
> +	struct intel_connector *connector = to_intel_connector(conn_state->connector);
> +	struct intel_panel *panel = &connector->panel;
> +
> +	if (panel->backlight.edp.intel.sdr_uses_aux) {
> +		intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
> +	} else {
> +		const u32 pwm_level = intel_panel_backlight_level_to_pwm(connector, level);
> +		intel_panel_set_pwm_level(conn_state, pwm_level);
> +	}
> +}
> +
> +static void
> +intel_dp_aux_hdr_enable_backlight(const struct intel_crtc_state *crtc_state,
> +				  const struct drm_connector_state *conn_state)
> +{
> +	struct intel_connector *connector = to_intel_connector(conn_state->connector);
> +	struct intel_panel *panel = &connector->panel;
> +	struct drm_device *dev = connector->base.dev;
> +	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
> +	int ret;
> +	u8 old_ctrl, ctrl;
> +
> +	ret = drm_dp_dpcd_readb(&intel_dp->aux, INTEL_EDP_HDR_GETSET_CTRL_PARAMS, &old_ctrl);
> +	if (ret < 0) {
> +		drm_err(dev, "Failed to read current backlight control mode: %d\n", ret);
> +		return;
> +	}
> +
> +	ctrl = old_ctrl;
> +	if (panel->backlight.edp.intel.sdr_uses_aux) {
> +		ctrl |= INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE;
> +		intel_dp_aux_hdr_set_aux_backlight(conn_state, panel->backlight.level);
> +	} else {
> +		u32 pwm_level = intel_panel_backlight_level_to_pwm(connector,
> +								   panel->backlight.level);
> +		panel->backlight.pwm_funcs.enable(crtc_state, conn_state, pwm_level);
> +
> +		ctrl &= ~(INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE);

This is what I was referring to in my reply to another patch, regarding
who calls what.

We can have a number of combinations with the standard VESA interface,
the proprietary interface and its modes, the eDP PWM pin control, and
the mixed modes.

In particular the mixed modes require the use of both. If we move the
VESA code to drm core as helpers, they can't have any i915 specific in
them.

So here's what I'm thinking. For eDP brightness control, could we
organize this under a higher level API, perhaps in the existing API in
intel_panel.c, that calls the DPCD brightness hooks (either VESA or
proprietary), *if* available, and according to return values from those
hooks, optionally *also* calls the eDP PWM hooks for mixed mode?

In pseudo code:

	bool call_pwm = true;

	if (backlight->aux_funcs->hook)
        	call_pwm = backlight->aux_funcs->hook();

	if (call_pwm)
        	backlight->pwm_funcs->hook();

Could we define the aux_funcs in a way that the interface could be
generic enough to have drm aux helpers assigned there? i.e. with the
current VESA code moved to core. Or, HDR hooks as the case may be.

I stress that I'm not requesting you do all of this now. But I really
would like to have a view into how we could make this work neatly in the
future, with a) standard VESA DPCD brightness code moved to drm core,
and b) the standard VESA + eDP PWM pin mixed mode working, c) the
proprietary DPCD + eDP PWM pin mixed mode working, in a way that aren't
wildly different from each other?

BR,
Jani.


> +	}
> +
> +	if (ctrl != old_ctrl)
> +		if (drm_dp_dpcd_writeb(&intel_dp->aux, INTEL_EDP_HDR_GETSET_CTRL_PARAMS, ctrl) < 0)
> +			drm_err(dev, "Failed to configure DPCD brightness controls\n");
> +}
> +
> +static void
> +intel_dp_aux_hdr_disable_backlight(const struct drm_connector_state *conn_state)
> +{
> +	struct intel_connector *connector = to_intel_connector(conn_state->connector);
> +	struct intel_panel *panel = &connector->panel;
> +
> +	/* Nothing to do for AUX based backlight controls */
> +	if (panel->backlight.edp.intel.sdr_uses_aux)
> +		return;
> +
> +	/* Note we want the actual pwm_level to be 0, regardless of pwm_min */
> +	panel->backlight.pwm_funcs.disable(conn_state,
> +					   intel_panel_sanitize_pwm_level(connector, 0));
> +}
> +
> +static int
> +intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pipe)
> +{
> +	struct drm_device *dev = connector->base.dev;
> +	struct intel_panel *panel = &connector->panel;
> +	int ret;
> +
> +	if (panel->backlight.edp.intel.sdr_uses_aux) {
> +		drm_dbg_kms(dev, "SDR backlight is controlled through DPCD\n");
> +	} else {
> +		drm_dbg_kms(dev, "SDR backlight is controlled through PWM\n");
> +
> +		ret = panel->backlight.pwm_funcs.setup(connector, pipe);
> +		if (ret < 0) {
> +			drm_err(dev, "Failed to setup SDR backlight controls through PWM: %d\n",
> +				ret);
> +			return ret;
> +		}
> +	}
> +
> +	panel->backlight.max = 512;
> +	panel->backlight.min = 0;
> +	panel->backlight.level = intel_dp_aux_hdr_get_backlight(connector);
> +	panel->backlight.enabled = panel->backlight.level != 0;
> +
> +	return 0;
> +}
> +
>  /* VESA backlight callbacks */
>  static void set_vesa_backlight_enable(struct intel_dp *intel_dp, bool enable)
>  {
> @@ -187,7 +375,7 @@ static bool intel_dp_aux_vesa_set_pwm_freq(struct intel_connector *connector)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
>  	struct intel_dp *intel_dp = intel_attached_dp(connector);
> -	const u8 pn = connector->panel.backlight.pwmgen_bit_count;
> +	const u8 pn = connector->panel.backlight.edp.vesa.pwmgen_bit_count;
>  	int freq, fxp, f, fxp_actual, fxp_min, fxp_max;
>  
>  	freq = dev_priv->vbt.backlight.pwm_freq_hz;
> @@ -227,6 +415,7 @@ static void intel_dp_aux_vesa_enable_backlight(const struct intel_crtc_state *cr
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	struct intel_panel *panel = &connector->panel;
>  	u8 dpcd_buf, new_dpcd_buf, edp_backlight_mode;
> +	u8 pwmgen_bit_count = panel->backlight.edp.vesa.pwmgen_bit_count;
>  
>  	if (drm_dp_dpcd_readb(&intel_dp->aux,
>  			DP_EDP_BACKLIGHT_MODE_SET_REGISTER, &dpcd_buf) != 1) {
> @@ -247,7 +436,7 @@ static void intel_dp_aux_vesa_enable_backlight(const struct intel_crtc_state *cr
>  
>  		if (drm_dp_dpcd_writeb(&intel_dp->aux,
>  				       DP_EDP_PWMGEN_BIT_COUNT,
> -				       panel->backlight.pwmgen_bit_count) < 0)
> +				       pwmgen_bit_count) < 0)
>  			drm_dbg_kms(&i915->drm,
>  				    "Failed to write aux pwmgen bit count\n");
>  
> @@ -355,7 +544,7 @@ static u32 intel_dp_aux_vesa_calc_max_backlight(struct intel_connector *connecto
>  			    "Failed to write aux pwmgen bit count\n");
>  		return max_backlight;
>  	}
> -	panel->backlight.pwmgen_bit_count = pn;
> +	panel->backlight.edp.vesa.pwmgen_bit_count = pn;
>  
>  	max_backlight = (1 << pn) - 1;
>  
> @@ -396,40 +585,46 @@ intel_dp_aux_supports_vesa_backlight(struct intel_connector *connector)
>  	return false;
>  }
>  
> -int intel_dp_aux_init_backlight_funcs(struct intel_connector *intel_connector)
> +int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
>  {
> -	struct intel_panel *panel = &intel_connector->panel;
> -	struct intel_dp *intel_dp = enc_to_intel_dp(intel_connector->encoder);
> +	struct drm_device *dev = connector->base.dev;
> +	struct intel_panel *panel = &connector->panel;
> +	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  
> -	if (i915->params.enable_dpcd_backlight == 0 ||
> -	    !intel_dp_aux_supports_vesa_backlight(intel_connector))
> +	if (i915->params.enable_dpcd_backlight == 0)
>  		return -ENODEV;
>  
>  	/*
> -	 * There are a lot of machines that don't advertise the backlight
> -	 * control interface to use properly in their VBIOS, :\
> +	 * A lot of eDP panels in the wild will report supporting both the
> +	 * Intel proprietary backlight control interface, and the VESA
> +	 * backlight control interface. Many of these panels are liars though,
> +	 * and will only work with the Intel interface. So, always probe for
> +	 * that first.
>  	 */
> -	if (i915->vbt.backlight.type !=
> -	    INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE &&
> -	    i915->params.enable_dpcd_backlight != 1 &&
> -	    !drm_dp_has_quirk(&intel_dp->desc, intel_dp->edid_quirks,
> -			      DP_QUIRK_FORCE_DPCD_BACKLIGHT)) {
> -		drm_info(&i915->drm,
> -			 "Panel advertises DPCD backlight support, but "
> -			 "VBT disagrees. If your backlight controls "
> -			 "don't work try booting with "
> -			 "i915.enable_dpcd_backlight=1. If your machine "
> -			 "needs this, please file a _new_ bug report on "
> -			 "drm/i915, see " FDO_BUG_URL " for details.\n");
> -		return -ENODEV;
> +	if (intel_dp_aux_supports_hdr_backlight(connector)) {
> +		drm_dbg(dev, "Using Intel proprietary eDP backlight controls\n");
> +
> +		panel->backlight.setup = intel_dp_aux_hdr_setup_backlight;
> +		panel->backlight.enable = intel_dp_aux_hdr_enable_backlight;
> +		panel->backlight.disable = intel_dp_aux_hdr_disable_backlight;
> +		panel->backlight.set = intel_dp_aux_hdr_set_backlight;
> +		panel->backlight.get = intel_dp_aux_hdr_get_backlight;
> +
> +		return 0;
>  	}
>  
> -	panel->backlight.setup = intel_dp_aux_vesa_setup_backlight;
> -	panel->backlight.enable = intel_dp_aux_vesa_enable_backlight;
> -	panel->backlight.disable = intel_dp_aux_vesa_disable_backlight;
> -	panel->backlight.set = intel_dp_aux_vesa_set_backlight;
> -	panel->backlight.get = intel_dp_aux_vesa_get_backlight;
> +	if (intel_dp_aux_supports_vesa_backlight(connector)) {
> +		drm_dbg(dev, "Using VESA eDP backlight controls\n");
>  
> -	return 0;
> +		panel->backlight.setup = intel_dp_aux_vesa_setup_backlight;
> +		panel->backlight.enable = intel_dp_aux_vesa_enable_backlight;
> +		panel->backlight.disable = intel_dp_aux_vesa_disable_backlight;
> +		panel->backlight.set = intel_dp_aux_vesa_set_backlight;
> +		panel->backlight.get = intel_dp_aux_vesa_get_backlight;
> +
> +		return 0;
> +	}
> +
> +	return -ENODEV;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
> index 6d3e9d51d069c..75aca9f2ffeb2 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -511,7 +511,7 @@ static u32 scale_hw_to_user(struct intel_connector *connector,
>  		     0, user_max);
>  }
>  
> -static u32 intel_panel_sanitize_pwm_level(struct intel_connector *connector, u32 val)
> +u32 intel_panel_sanitize_pwm_level(struct intel_connector *connector, u32 val)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
>  	struct intel_panel *panel = &connector->panel;
> @@ -529,7 +529,7 @@ static u32 intel_panel_sanitize_pwm_level(struct intel_connector *connector, u32
>  	return val;
>  }
>  
> -static void intel_panel_set_pwm_level(const struct drm_connector_state *conn_state, u32 val)
> +void intel_panel_set_pwm_level(const struct drm_connector_state *conn_state, u32 val)
>  {
>  	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>  	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> @@ -539,6 +539,36 @@ static void intel_panel_set_pwm_level(const struct drm_connector_state *conn_sta
>  	panel->backlight.pwm_funcs.set(conn_state, val);
>  }
>  
> +u32 intel_panel_backlight_level_to_pwm(struct intel_connector *connector, u32 val)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> +	struct intel_panel *panel = &connector->panel;
> +
> +	drm_WARN_ON_ONCE(&dev_priv->drm,
> +			 panel->backlight.max == 0 || panel->backlight.pwm_max == 0);
> +
> +	val = scale(val, panel->backlight.min, panel->backlight.max,
> +		    panel->backlight.pwm_min, panel->backlight.pwm_max);
> +
> +	return intel_panel_sanitize_pwm_level(connector, val);
> +}
> +
> +u32 intel_panel_backlight_level_from_pwm(struct intel_connector *connector, u32 val)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> +	struct intel_panel *panel = &connector->panel;
> +
> +	drm_WARN_ON_ONCE(&dev_priv->drm,
> +			 panel->backlight.max == 0 || panel->backlight.pwm_max == 0);
> +
> +	if (dev_priv->params.invert_brightness > 0 ||
> +	    (dev_priv->params.invert_brightness == 0 && dev_priv->quirks & QUIRK_INVERT_BRIGHTNESS))
> +		val = panel->backlight.pwm_max - (val - panel->backlight.pwm_min);
> +
> +	return scale(val, panel->backlight.pwm_min, panel->backlight.pwm_max,
> +		     panel->backlight.min, panel->backlight.max);
> +}
> +
>  static u32 lpt_get_backlight(struct intel_connector *connector)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
> index 5b813fe90557c..a548347a975f5 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.h
> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
> @@ -49,6 +49,10 @@ struct drm_display_mode *
>  intel_panel_edid_fixed_mode(struct intel_connector *connector);
>  struct drm_display_mode *
>  intel_panel_vbt_fixed_mode(struct intel_connector *connector);
> +void intel_panel_set_pwm_level(const struct drm_connector_state *conn_state, u32 level);
> +u32 intel_panel_sanitize_pwm_level(struct intel_connector *connector, u32 level);
> +u32 intel_panel_backlight_level_to_pwm(struct intel_connector *connector, u32 level);
> +u32 intel_panel_backlight_level_from_pwm(struct intel_connector *connector, u32 val);
>  
>  #if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
>  int intel_backlight_device_register(struct intel_connector *connector);

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
