Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3ACB8720FB
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 14:58:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E407112B13;
	Tue,  5 Mar 2024 13:58:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X0ME9+kw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBBC2112B11
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 13:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709647094; x=1741183094;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=GeYV81mJyl0K6j2TU+yxJ72Mz6EPVdYInn1HqZNuZBw=;
 b=X0ME9+kwOODn2KUXCYyOfjj8xBJhKpgln7pa/I2anoyUa/XA9MMk/Sw4
 ycPLlL9H+t4iA10OoJZx9gXbjS/xInSNUMTHqnbAft1431lh4dmp0uOzx
 MagQ6vDLjsaY6PLMnSRNC5g7KWQm4C89qrMaHdTSg05qk4eIR/p0Y4ZlU
 QS+Jizp7CPQOBQiynL5d36ADsVT1srVDpq7VIDmbjGX1xUw+3RYDr77Uo
 /8pRHy7OS4cIu3jmNJtydbHBBagvti/5bGVvWmYWXKygG/e9nMziGl0BV
 ssg79tpMQM490vweic+Soxr3xsc8IbU78zaL4urJ7nDFQr00f/1dNtie6 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="26657762"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="26657762"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 05:58:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="32555220"
Received: from omakhlou-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.252.51.143])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 05:58:10 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915/dp: Enable AUX based backlight for HDR
In-Reply-To: <20240305103757.1856179-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240305103757.1856179-1-suraj.kandpal@intel.com>
Date: Tue, 05 Mar 2024 15:58:07 +0200
Message-ID: <87v860232o.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 05 Mar 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> As of now whenerver HDR is switched on we use the PWM to change the
> backlight as opposed to AUX based backlight changes in terms of nits.
> This patch writes to the appropriate DPCD registers to enable aux
> based backlight using values in nits.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../drm/i915/display/intel_dp_aux_backlight.c | 29 ++++++++++++++-----
>  1 file changed, 21 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index 4f58efdc688a..14144347f13f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -40,11 +40,6 @@
>  #include "intel_dp.h"
>  #include "intel_dp_aux_backlight.h"
>  
> -/* TODO:
> - * Implement HDR, right now we just implement the bare minimum to bring us back into SDR mode so we
> - * can make people's backlights work in the mean time
> - */
> -
>  /*
>   * DP AUX registers for Intel's proprietary HDR backlight interface. We define
>   * them here since we'll likely be the only driver to ever use these.
> @@ -221,7 +216,7 @@ intel_dp_aux_hdr_set_backlight(const struct drm_connector_state *conn_state, u32
>  	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>  	struct intel_panel *panel = &connector->panel;
>  
> -	if (panel->backlight.edp.intel.sdr_uses_aux) {
> +	if (panel->backlight.edp.intel.sdr_uses_aux || conn_state->hdr_output_metadata) {
>  		intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
>  	} else {
>  		const u32 pwm_level = intel_backlight_level_to_pwm(connector, level);
> @@ -251,8 +246,15 @@ intel_dp_aux_hdr_enable_backlight(const struct intel_crtc_state *crtc_state,
>  	}
>  
>  	ctrl = old_ctrl;
> -	if (panel->backlight.edp.intel.sdr_uses_aux) {
> +	if (panel->backlight.edp.intel.sdr_uses_aux || conn_state->hdr_output_metadata) {
>  		ctrl |= INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE;
> +
> +		if (conn_state->hdr_output_metadata) {
> +			ctrl |= INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_ENABLE;
> +			ctrl |= INTEL_EDP_HDR_TCON_2084_DECODE_ENABLE;
> +			ctrl |= INTEL_EDP_HDR_TCON_2020_GAMUT_ENABLE;
> +		}
> +
>  		intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
>  	} else {
>  		u32 pwm_level = intel_backlight_level_to_pwm(connector, level);
> @@ -292,9 +294,11 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pi
>  {
>  	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  	struct intel_panel *panel = &connector->panel;
> +	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
>  	struct drm_luminance_range_info *luminance_range =
>  		&connector->base.display_info.luminance_range;
>  	int ret;
> +	u8 buf[4];
>  
>  	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] SDR backlight is controlled through %s\n",
>  		    connector->base.base.id, connector->base.name,
> @@ -318,11 +322,20 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pi
>  		panel->backlight.min = 0;
>  	}
>  
> +	buf[0] = panel->backlight.max & 0xFF;
> +	buf[1] = (panel->backlight.max & 0xFF00) >> 8;
> +	buf[2] = (connector->base.hdr_sink_metadata.hdmi_type1.max_fall & 0xFF) >> 16;
> +	buf[3] = (connector->base.hdr_sink_metadata.hdmi_type1.max_fall & 0xFF00) >> 24;

These last two lines will always be 0, which, without looking at any
specs, is not right...

> +
> +	ret = drm_dp_dpcd_write(&intel_dp->aux, INTEL_EDP_HDR_CONTENT_LUMINANCE, buf,
> +				sizeof(buf) != sizeof(buf));

...but then this doesn't write it to the sink anyway, and it's unclear
to me what this actually ends up doing or returning. For certain it's
all wrong.

Someone(tm) will still need to properly review the rest of the patch,
these just caught my eye at a quick glance.


BR,
Jani.


> +	if (ret)
> +		drm_dbg_kms(&i915->drm, "Not able to write content luminence to DPCD register\n");
> +
>  	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Using AUX HDR interface for backlight control (range %d..%d)\n",
>  		    connector->base.base.id, connector->base.name,
>  		    panel->backlight.min, panel->backlight.max);
>  
> -
>  	panel->backlight.level = intel_dp_aux_hdr_get_backlight(connector, pipe);
>  	panel->backlight.enabled = panel->backlight.level != 0;

-- 
Jani Nikula, Intel
