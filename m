Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A808AF8E0
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Apr 2024 23:21:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FF821136F1;
	Tue, 23 Apr 2024 21:21:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="H7O6gV7I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B74811136F0
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Apr 2024 21:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713907298;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=y6QC1EfDOyIKj7BujpeH20eyri18YoJfhCrha0Hhs5I=;
 b=H7O6gV7It6DFhwuwRHRpBA1SJirDbNXL0fr3D/bn9e4BPo/YdYGC77RhEC0E7y/fjURpnh
 kQslI7m5rOPFY94KWDKHwZcezHIP6rFiyVoPtBF83kyfVpe5lhaDhtf/sn16rp1LZWQ3B9
 XJMJ7XzL0YygNcR/EgaoYj4sDuCiZjg=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-422-VsMdcIP5P9G8zZKRFMgntA-1; Tue, 23 Apr 2024 17:21:35 -0400
X-MC-Unique: VsMdcIP5P9G8zZKRFMgntA-1
Received: by mail-qv1-f71.google.com with SMTP id
 6a1803df08f44-6a050ad456fso5912106d6.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Apr 2024 14:21:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713907294; x=1714512094;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=y6QC1EfDOyIKj7BujpeH20eyri18YoJfhCrha0Hhs5I=;
 b=gSvQRfKaMIqiGRtfkhOAXXTZP3+OIocz6lLuB+gcXXYIFfLPq2Q+sz1azerTIHaMOA
 trkOvBy88S/lCQFVDSCTFryDD09ILM+FRhxnIbOHJsARkZQyyA25KAdp/f6YH/+pV6mL
 zO8Ay1ymhiixrCSN4GJn2owyRMhyCSCLpGnp1vUg/c2S7N1nGaNNxne3yRhAiqk4L0jn
 wNl+5X0Ey+HnCJhzR09G7ePWC0/nBL+fh1ux40m64EWoSC/P0I7houFYPk3S23Wqro1i
 ket9bTPjz0JN5bXw7/tr7MO1e+JK36/4xivAi83bV839SdHeDjuDZA7ccObKyJUUl1YZ
 RZjg==
X-Gm-Message-State: AOJu0Yza21Vcy3dtDA9fJBwkIaKbPBFzwnQxVLjgrwSf5Op1audDlCeF
 Kwi5mehW9UUvsLJFl8P1nJrlsUEvJzIUNQ7d6YMdc8b1QvFEuaeKX6tTEBmAmi76ugle/szsR9P
 KYPvBsygKc6D74vsXbQEUMgzGa2UqMpzu8Kq5gdnxk2dR9hqOZiTKKpi1qIqMXmeajA==
X-Received: by 2002:ad4:5fc6:0:b0:6a0:88df:fd54 with SMTP id
 jq6-20020ad45fc6000000b006a088dffd54mr5476581qvb.11.1713907294612; 
 Tue, 23 Apr 2024 14:21:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFkrNHSSckNRkx+Wz6i334oxas8Wet3swPxoe4IQUnUD9/P1P3uTttgUBRRNwn2DzZpW9OO6w==
X-Received: by 2002:ad4:5fc6:0:b0:6a0:88df:fd54 with SMTP id
 jq6-20020ad45fc6000000b006a088dffd54mr5476545qvb.11.1713907294114; 
 Tue, 23 Apr 2024 14:21:34 -0700 (PDT)
Received: from toolbox ([2001:9e8:8989:800:177e:6441:9217:4c07])
 by smtp.gmail.com with ESMTPSA id
 m3-20020ad44a03000000b006a05646d5e3sm5333456qvz.15.2024.04.23.14.21.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Apr 2024 14:21:33 -0700 (PDT)
Date: Tue, 23 Apr 2024 23:21:29 +0200
From: Sebastian Wick <sebastian.wick@redhat.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, chaitanya.kumar.borah@intel.com,
 uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 arun.r.murthy@intel.com, naveen1.kumar@intel.com
Subject: Re: [5/6] drm/i915/dp: Enable AUX based backlight for HDR
Message-ID: <20240423212129.GA99376@toolbox>
References: <20240422033256.713902-6-suraj.kandpal@intel.com>
MIME-Version: 1.0
In-Reply-To: <20240422033256.713902-6-suraj.kandpal@intel.com>
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

On Mon, Apr 22, 2024 at 09:02:54AM +0530, Suraj Kandpal wrote:
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
> --v6
> -Use intel_dp_has_gamut_dip to check if we have capability
> to send sdp [Ville]
> -Seprate filling of all hdr tcon related bits into it's
> own function.
> -Check eotf data to make sure we are in HDR mode [Sebastian]
> 
> --v7
> -Fix confusion function name for hdr mode check [Jani]
> -Fix the condition which tells us if we are in HDR mode or not
> [Sebastian]
> 
> --v8
> -Call fill_hdr_tcon_param unconditionally as some parameters may not
> be dependent on the fact if we are in hdr mode or not [Sebastian]
> -Fix some conditions after change in hdr mode check [Sebastian]
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../drm/i915/display/intel_dp_aux_backlight.c | 98 ++++++++++++++++---
>  1 file changed, 87 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index b61bad218994..e23694257ea5 100644
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
> @@ -127,9 +122,6 @@ intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
>  	if (ret != sizeof(tcon_cap))
>  		return false;
>  
> -	if (!(tcon_cap[1] & INTEL_EDP_HDR_TCON_BRIGHTNESS_NITS_CAP))
> -		return false;
> -
>  	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Detected %s HDR backlight interface version %d\n",
>  		    connector->base.base.id, connector->base.name,
>  		    is_intel_tcon_cap(tcon_cap) ? "Intel" : "unsupported", tcon_cap[0]);
> @@ -137,6 +129,9 @@ intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
>  	if (!is_intel_tcon_cap(tcon_cap))
>  		return false;
>  
> +	if (!(tcon_cap[1] & INTEL_EDP_HDR_TCON_BRIGHTNESS_NITS_CAP))
> +		return false;
> +
>  	/*
>  	 * If we don't have HDR static metadata there is no way to
>  	 * runtime detect used range for nits based control. For now
> @@ -225,13 +220,27 @@ intel_dp_aux_hdr_set_aux_backlight(const struct drm_connector_state *conn_state,
>  			connector->base.base.id, connector->base.name);
>  }
>  
> +static bool
> +intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state)
> +{
> +	struct hdr_output_metadata *hdr_metadata;
> +
> +	if (!conn_state->hdr_output_metadata)
> +		return false;
> +
> +	hdr_metadata = conn_state->hdr_output_metadata->data;
> +
> +	return hdr_metadata->hdmi_metadata_type1.eotf == HDMI_EOTF_SMPTE_ST2084;
> +}
> +
>  static void
>  intel_dp_aux_hdr_set_backlight(const struct drm_connector_state *conn_state, u32 level)
>  {
>  	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>  	struct intel_panel *panel = &connector->panel;
>  
> -	if (panel->backlight.edp.intel.sdr_uses_aux) {
> +	if (intel_dp_in_hdr_mode(conn_state) ||
> +	    panel->backlight.edp.intel.sdr_uses_aux) {
>  		intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
>  	} else {
>  		const u32 pwm_level = intel_backlight_level_to_pwm(connector, level);
> @@ -240,6 +249,64 @@ intel_dp_aux_hdr_set_backlight(const struct drm_connector_state *conn_state, u32
>  	}
>  }
>  
> +static void
> +intel_dp_aux_write_content_luminance(struct intel_connector *connector,
> +				     struct hdr_output_metadata *hdr_metadata)
> +{
> +	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	int ret;
> +	u8 buf[4];
> +
> +	if (!intel_dp_has_gamut_metadata_dip(connector->encoder))
> +		return;

The usage of intel_dp_has_gamut_metadata_dip is all over the place. You
happily set INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_ENABLE and
INTEL_EDP_HDR_TCON_2084_DECODE_ENABLE even when it doesn't have the dip
but you require it for INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX and
INTEL_EDP_HDR_CONTENT_LUMINANCE. Why?

Especially because when there is no gamut_metadata_dip, the KMS
properties for HDR is not exposed.

> +
> +	buf[0] = hdr_metadata->hdmi_metadata_type1.max_cll & 0xFF;
> +	buf[1] = (hdr_metadata->hdmi_metadata_type1.max_cll & 0xFF00) >> 8;
> +	buf[2] = hdr_metadata->hdmi_metadata_type1.max_fall & 0xFF;
> +	buf[3] = (hdr_metadata->hdmi_metadata_type1.max_fall & 0xFF00) >> 8;
> +
> +	ret = drm_dp_dpcd_write(&intel_dp->aux,
> +				INTEL_EDP_HDR_CONTENT_LUMINANCE,
> +				buf, sizeof(buf));
> +	if (ret < 0)
> +		drm_dbg_kms(&i915->drm,
> +			    "Content Luminance DPCD reg write failed, err:-%d\n",
> +			    ret);
> +}
> +
> +static void
> +intel_dp_aux_fill_hdr_tcon_params(const struct drm_connector_state *conn_state, u8 *ctrl)
> +{
> +	struct intel_connector *connector = to_intel_connector(conn_state->connector);
> +	struct intel_panel *panel = &connector->panel;
> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +
> +	/*
> +	 * According to spec segmented backlight needs to be set whenever panel is in
> +	 * HDR mode.
> +	 */
> +	if (intel_dp_in_hdr_mode(conn_state)) {
> +		*ctrl |= INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_ENABLE;
> +		*ctrl |= INTEL_EDP_HDR_TCON_2084_DECODE_ENABLE;
> +	}
> +
> +	if (DISPLAY_VER(i915) < 11)
> +		*ctrl &= ~INTEL_EDP_HDR_TCON_TONE_MAPPING_ENABLE;
> +
> +	if (panel->backlight.edp.intel.supports_2020_gamut &&
> +	    (conn_state->colorspace == DRM_MODE_COLORIMETRY_BT2020_RGB ||
> +	     conn_state->colorspace == DRM_MODE_COLORIMETRY_BT2020_YCC ||
> +	     conn_state->colorspace == DRM_MODE_COLORIMETRY_BT2020_CYCC))
> +		*ctrl |= INTEL_EDP_HDR_TCON_2020_GAMUT_ENABLE;
> +
> +	if (panel->backlight.edp.intel.supports_sdp_colorimetry &&
> +	    intel_dp_has_gamut_metadata_dip(connector->encoder))
> +		*ctrl |= INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX;
> +	else
> +		*ctrl &= ~INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX;
> +}
> +
>  static void
>  intel_dp_aux_hdr_enable_backlight(const struct intel_crtc_state *crtc_state,
>  				  const struct drm_connector_state *conn_state, u32 level)
> @@ -248,6 +315,7 @@ intel_dp_aux_hdr_enable_backlight(const struct intel_crtc_state *crtc_state,
>  	struct intel_panel *panel = &connector->panel;
>  	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
> +	struct hdr_output_metadata *hdr_metadata;
>  	int ret;
>  	u8 old_ctrl, ctrl;
>  
> @@ -261,8 +329,10 @@ intel_dp_aux_hdr_enable_backlight(const struct intel_crtc_state *crtc_state,
>  	}
>  
>  	ctrl = old_ctrl;
> -	if (panel->backlight.edp.intel.sdr_uses_aux) {
> +	if (intel_dp_in_hdr_mode(conn_state) ||
> +	    panel->backlight.edp.intel.sdr_uses_aux) {
>  		ctrl |= INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE;
> +
>  		intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
>  	} else {
>  		u32 pwm_level = intel_backlight_level_to_pwm(connector, level);
> @@ -272,10 +342,17 @@ intel_dp_aux_hdr_enable_backlight(const struct intel_crtc_state *crtc_state,
>  		ctrl &= ~INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE;
>  	}
>  
> +	intel_dp_aux_fill_hdr_tcon_params(conn_state, &ctrl);
> +
>  	if (ctrl != old_ctrl &&
>  	    drm_dp_dpcd_writeb(&intel_dp->aux, INTEL_EDP_HDR_GETSET_CTRL_PARAMS, ctrl) != 1)
>  		drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to configure DPCD brightness controls\n",
>  			connector->base.base.id, connector->base.name);

Unrelated to the changes here, but why is crtl based on the old value?
There is nothing else that sets it so the state is always entirely
determined here.

> +
> +	if (intel_dp_in_hdr_mode(conn_state)) {
> +		hdr_metadata = conn_state->hdr_output_metadata->data;
> +		intel_dp_aux_write_content_luminance(connector, hdr_metadata);
> +	}
>  }
>  
>  static void
> @@ -332,7 +409,6 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pi
>  		    connector->base.base.id, connector->base.name,
>  		    panel->backlight.min, panel->backlight.max);
>  
> -
>  	panel->backlight.level = intel_dp_aux_hdr_get_backlight(connector, pipe);
>  	panel->backlight.enabled = panel->backlight.level != 0;
>  

