Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A47787CC60
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Mar 2024 12:34:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A022C10ED50;
	Fri, 15 Mar 2024 11:34:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="Of+eNrM4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF94F10ED50
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Mar 2024 11:33:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1710502436;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=qIHgtHXj+VffXnbgvJmmQ8I7ED/lIjfSNThx2t82xCk=;
 b=Of+eNrM4dUl+7DTeK0P7Bw2peKTO6JMH+WwAPHqmlIlDga3e7iM/M7Zq5nTks2aMyi6vw0
 y6dp8TpeSqBYrUMtfYH5WldOwNtFAFF5qDzAjwXT74lk2hJhcsjGGgTZXhrWM3POWA56wc
 9z99TWrI4dKk0RYbk2ZSqdLbIsWI1/E=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-81-9fPgK1teO2CypIjKFvRxAg-1; Fri, 15 Mar 2024 07:33:55 -0400
X-MC-Unique: 9fPgK1teO2CypIjKFvRxAg-1
Received: by mail-wr1-f72.google.com with SMTP id
 ffacd0b85a97d-33ed63f7437so62820f8f.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Mar 2024 04:33:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710502434; x=1711107234;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qIHgtHXj+VffXnbgvJmmQ8I7ED/lIjfSNThx2t82xCk=;
 b=Xhk+AYBvYToHfZS1OkScPCdwektjoMI8uxhWQQjwt69/jyssxADKv8KucZwfmPNQQJ
 LZuW+dT+Opq5m15dEnCFKXAgkiHGCEja2cl/H0M3Wu2cS53zLUUiuVKCet2yVuAoVcwh
 74ElWEikoe30YWOMK1kb18nSWsWLdN9g+LqjQFFob59bZp1hf4yQ4YW2Ej7oK/xpb9sd
 sdaH3G//NpEmGEZ+Ztr9rZ+jSTf7MF8XsI5qTjRZWVNH/bA/Wu12hSWD80/iRnXAgPp9
 16WBLAFUcNsl1H+pfnBv65IRsWT/IRhGH81Ok04/ozwwX8kO0GfLXVSVaj3CxDwPv6Yn
 BRgw==
X-Gm-Message-State: AOJu0Yw5YlRIeAEab6LrqYk4H93EmCezYi/JQrshOkiFJDiLBSVjptqJ
 zk84LJkpIGEzLfknQaMNj9gDAWAg9HB4fJL1EUeU2C720SP5k0nZmKjz0vJBJ5fWhBx7Xi5PLQf
 QUM6ICiZZ63fsHYBmumketZD13RWMayzuV31Xd3MjRXVqjxFAR3p0qiK86Dq1TN5rqQ==
X-Received: by 2002:a05:600c:4f54:b0:412:f5e9:3f6 with SMTP id
 m20-20020a05600c4f5400b00412f5e903f6mr3780568wmq.21.1710502434453; 
 Fri, 15 Mar 2024 04:33:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFhRLRkXw0kjNytsawEvGzqc9/PNHArL96YMWI6Ii0oZTXkqfZzfhCbp7lKNLzBHf5b7c/DoA==
X-Received: by 2002:a05:600c:4f54:b0:412:f5e9:3f6 with SMTP id
 m20-20020a05600c4f5400b00412f5e903f6mr3780558wmq.21.1710502434057; 
 Fri, 15 Mar 2024 04:33:54 -0700 (PDT)
Received: from toolbox ([2001:9e8:8993:2000:2177:ed26:a958:d71a])
 by smtp.gmail.com with ESMTPSA id
 t17-20020a5d49d1000000b0033ec91c9eadsm2996158wrs.53.2024.03.15.04.33.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Mar 2024 04:33:53 -0700 (PDT)
Date: Fri, 15 Mar 2024 12:33:52 +0100
From: Sebastian Wick <sebastian.wick@redhat.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com
Subject: Re: drm/i915/dp: Enable AUX based backlight for HDR
Message-ID: <20240315113352.GA820980@toolbox>
References: <20240315050529.1987425-2-suraj.kandpal@intel.com>
MIME-Version: 1.0
In-Reply-To: <20240315050529.1987425-2-suraj.kandpal@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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

On Fri, Mar 15, 2024 at 10:35:30AM +0530, Suraj Kandpal wrote:
> As of now whenerver HDR is switched on we use the PWM to change the
> backlight as opposed to AUX based backlight changes in terms of nits.
> This patch writes to the appropriate DPCD registers to enable aux
> based backlight using values in nits.
> 
> --v2
> -Fix max_cll and max_fall assignment [Jani]
> -Fix the size sent in drm_dpcd_write [Jani]
> 
> --v3
> -Content Luminance needs to be sent only for pre-ICL after that
> it is directly picked up from hdr metadata [Ville]
> 
> --v4
> -Add checks for HDR TCON cap bits [Ville]
> -Check eotf of hdr_output_data and sets bits base of that value.
> 
> --v5
> -Fix capability check bits.
> -Check colorspace before setting BT2020
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  3 +
>  .../drm/i915/display/intel_dp_aux_backlight.c | 57 ++++++++++++++++---
>  2 files changed, 52 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index e67cd5b02e84..271bb609106d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -401,6 +401,9 @@ struct intel_panel {
>  			} vesa;
>  			struct {
>  				bool sdr_uses_aux;
> +				bool supports_2084_decode;
> +				bool supports_2020_gamut;
> +				bool supports_segmented_backlight;
>  			} intel;
>  		} edp;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index 4f58efdc688a..f927e259b540 100644
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
> @@ -158,6 +153,12 @@ intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
>  
>  	panel->backlight.edp.intel.sdr_uses_aux =
>  		tcon_cap[2] & INTEL_EDP_SDR_TCON_BRIGHTNESS_AUX_CAP;
> +	panel->backlight.edp.intel.supports_2084_decode =
> +		tcon_cap[1] & INTEL_EDP_HDR_TCON_2084_DECODE_CAP;
> +	panel->backlight.edp.intel.supports_2020_gamut =
> +		tcon_cap[1] & INTEL_EDP_HDR_TCON_2020_GAMUT_CAP;
> +	panel->backlight.edp.intel.supports_segmented_backlight =
> +		tcon_cap[1] & INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_CAP;
>  
>  	return true;
>  }
> @@ -206,6 +207,9 @@ intel_dp_aux_hdr_set_aux_backlight(const struct drm_connector_state *conn_state,
>  	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
>  	u8 buf[4] = {};
>  
> +	if (level < 20)
> +		level = 20;
> +

Why are you limiting this to at least 20?

>  	buf[0] = level & 0xFF;
>  	buf[1] = (level & 0xFF00) >> 8;
>  
> @@ -221,7 +225,7 @@ intel_dp_aux_hdr_set_backlight(const struct drm_connector_state *conn_state, u32
>  	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>  	struct intel_panel *panel = &connector->panel;
>  
> -	if (panel->backlight.edp.intel.sdr_uses_aux) {
> +	if (panel->backlight.edp.intel.sdr_uses_aux || conn_state->hdr_output_metadata) {

Just because there is a HDR Static Metadata blob on the connector
doesn't mean an HDR mode is set. The TCON seems to consider itself in
HDR mode when either INTEL_EDP_HDR_TCON_SDP_COLORIMETRY_ENABLE or
INTEL_EDP_HDR_TCON_2084_DECODE_ENABLE are set.

If you don't match this up properly, the backlight will be all wrong and
the user has an (almost) black screen!

>  		intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
>  	} else {
>  		const u32 pwm_level = intel_backlight_level_to_pwm(connector, level);
> @@ -251,8 +255,30 @@ intel_dp_aux_hdr_enable_backlight(const struct intel_crtc_state *crtc_state,
>  	}
>  
>  	ctrl = old_ctrl;
> -	if (panel->backlight.edp.intel.sdr_uses_aux) {
> +	if (panel->backlight.edp.intel.sdr_uses_aux || conn_state->hdr_output_metadata) {
>  		ctrl |= INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE;

Same problem as before.

> +
> +		if (conn_state->hdr_output_metadata) {
> +			struct hdr_output_metadata *hdr_metadata =
> +				conn_state->hdr_output_metadata->data;
> +
> +			if (panel->backlight.edp.intel.supports_segmented_backlight &&
> +			    hdr_metadata->hdmi_metadata_type1.eotf >=
> +			    HDMI_EOTF_TRADITIONAL_GAMMA_HDR)
> +				ctrl |= INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_ENABLE;

You cannot enable HLG or any mode other than PQ. Why would you want to
enable the segmented backlight in those cases?

Also, you said in a gitlab issue that segmented backlight has to be
enabled for HDR. This is just entirely wrong. It's a tradeoff between
more dynamic range and picture fidelity that ultimately should not be
made by a driver but user space.

> +			if (panel->backlight.edp.intel.supports_2084_decode &&
> +			    hdr_metadata->hdmi_metadata_type1.eotf ==
> +			    HDMI_EOTF_SMPTE_ST2084)
> +				ctrl |= INTEL_EDP_HDR_TCON_2084_DECODE_ENABLE;
> +			if (panel->backlight.edp.intel.supports_2020_gamut &&
> +			    hdr_metadata->hdmi_metadata_type1.eotf >=
> +			    HDMI_EOTF_TRADITIONAL_GAMMA_HDR &&

Why is this checking for something completely unrelated?

This means when we use the Colorspace prop to get BT2020 gamut we don't
get the gamut we requested!

> +			    (conn_state->colorspace == DRM_MODE_COLORIMETRY_BT2020_RGB ||
> +			    conn_state->colorspace == DRM_MODE_COLORIMETRY_BT2020_YCC ||
> +			    conn_state->colorspace == DRM_MODE_COLORIMETRY_BT2020_CYCC))
> +				ctrl |= INTEL_EDP_HDR_TCON_2020_GAMUT_ENABLE;
> +		}
> +
>  		intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
>  	} else {
>  		u32 pwm_level = intel_backlight_level_to_pwm(connector, level);
> @@ -292,9 +318,11 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pi
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
> @@ -318,11 +346,24 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pi
>  		panel->backlight.min = 0;
>  	}
>  
> +	if (DISPLAY_VER(i915) < 11) {

This should check for INTEL_EDP_HDR_TCON_SDP_COLORIMETRY_CAP instead!
There is no reason to bind this to any hardware version if the hardware
itself can tell you if it supports SDP signalling or needs to set it via
AUX.

Even worse, for DISPLAY_VER(i915) >= 11 you're not setting
INTEL_EDP_HDR_TCON_SDP_COLORIMETRY_ENABLE which means the SDP might not
get picked up by the TCON and we end up with empty metadata!

> +		buf[0] = connector->base.hdr_sink_metadata.hdmi_type1.max_cll & 0xFF;
> +		buf[1] = (connector->base.hdr_sink_metadata.hdmi_type1.max_cll & 0xFF00) >> 8;
> +		buf[2] = connector->base.hdr_sink_metadata.hdmi_type1.max_fall & 0xFF;
> +		buf[3] = (connector->base.hdr_sink_metadata.hdmi_type1.max_fall & 0xFF00) >> 8;

This is the wrong set of metadata. You have to send it what user space
set on the connector.

> +
> +		ret = drm_dp_dpcd_write(&intel_dp->aux, INTEL_EDP_HDR_CONTENT_LUMINANCE, buf,
> +					sizeof(buf));
> +		if (ret < 0)
> +			drm_dbg_kms(&i915->drm,
> +				    "Content Luminance DPCD reg write failed, err:-%d\n",
> +				    ret);
> +	}
> +
>  	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Using AUX HDR interface for backlight control (range %d..%d)\n",
>  		    connector->base.base.id, connector->base.name,
>  		    panel->backlight.min, panel->backlight.max);
>  
> -
>  	panel->backlight.level = intel_dp_aux_hdr_get_backlight(connector, pipe);
>  	panel->backlight.enabled = panel->backlight.level != 0;
>  

Pretty much all of this is wrong or broken. I already pointed you to a
fixed up version:
https://gitlab.freedesktop.org/swick/linux/-/commits/wip/intel-aux-hdr-backlight

We verified that it works as well.

