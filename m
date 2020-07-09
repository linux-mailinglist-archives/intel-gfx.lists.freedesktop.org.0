Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54556219E3C
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 12:51:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AD116E271;
	Thu,  9 Jul 2020 10:51:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0AFA6E04B
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 10:51:49 +0000 (UTC)
IronPort-SDR: W03B6g3eiZ90t9Qd3iRAu6pyjIQGe0+E3WfFd2eTULsYzJQ5FOVIn/ZiRvf2Dd57VHp0pNsSg/
 gQma1tEtIXFg==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="209505793"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="209505793"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 03:51:49 -0700
IronPort-SDR: C+33o/b9Ek3697FdQltVg8a5Z+U1eUa79dYvO1t8EDXTOJLVmZQ2EIxcTamw3GUMhxQpTu6tz6
 79J8roQRbJ3A==
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="484230986"
Received: from ideak-desk.fi.intel.com ([10.237.68.147])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 03:51:48 -0700
Date: Thu, 9 Jul 2020 13:51:44 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200709105144.GB16776@ideak-desk.fi.intel.com>
References: <20200108181242.13650-1-ville.syrjala@linux.intel.com>
 <20200108181242.13650-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200108181242.13650-5-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 5/9] drm/i915/sdvo: Implement limited color
 range for SDVO HDMI properly
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 08, 2020 at 08:12:38PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> The SDVO/HDMI port register limited color range bit can only be used
> with TMDS encoding and not SDVO encoding, ie. to be used only when
> using the port as a HDMI port as opposed to a SDVO port. The SDVO
> spec does have a note that some GMCHs might allow that, but gen4
> bspec vehemently disagrees. I suppose on ILK+ it might work since
> the color range handling is on the CPU side rather than on the PCH
> side, so there is no clear linkage between the TMDS vs. SDVO
> encoding and color range. Alas, I have no hardware to test that
> theory.
> =

> To implement limited color range support for SDVO->HDMI we need to
> ask the SDVO device to do the range compression. Do so, but first
> check if the device even supports the colorimetry selection.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  3 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c    |  4 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.h    |  2 +
>  drivers/gpu/drm/i915/display/intel_sdvo.c    | 62 ++++++++++++--------
>  4 files changed, 45 insertions(+), 26 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 59c375879186..7ef1f209acc4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -9888,7 +9888,8 @@ static void ilk_set_pipeconf(const struct intel_crt=
c_state *crtc_state)
>  	WARN_ON(crtc_state->limited_color_range &&
>  		crtc_state->output_format !=3D INTEL_OUTPUT_FORMAT_RGB);
>  =

> -	if (crtc_state->limited_color_range)
> +	if (crtc_state->limited_color_range &&
> +	    !intel_crtc_has_type(crtc_state, INTEL_OUTPUT_SDVO))
>  		val |=3D PIPECONF_COLOR_RANGE_SELECT;
>  =

>  	if (crtc_state->output_format !=3D INTEL_OUTPUT_FORMAT_RGB)
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index 1659cff91426..85c5f840a0fc 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2375,8 +2375,8 @@ static int intel_hdmi_compute_clock(struct intel_en=
coder *encoder,
>  	return 0;
>  }
>  =

> -static bool intel_hdmi_limited_color_range(const struct intel_crtc_state=
 *crtc_state,
> -					   const struct drm_connector_state *conn_state)
> +bool intel_hdmi_limited_color_range(const struct intel_crtc_state *crtc_=
state,
> +				    const struct drm_connector_state *conn_state)
>  {
>  	const struct intel_digital_connector_state *intel_conn_state =3D
>  		to_intel_digital_connector_state(conn_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/=
i915/display/intel_hdmi.h
> index cf1ea5427639..c5f59c20f1e8 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
> @@ -48,5 +48,7 @@ void intel_read_infoframe(struct intel_encoder *encoder,
>  			  const struct intel_crtc_state *crtc_state,
>  			  enum hdmi_infoframe_type type,
>  			  union hdmi_infoframe *frame);
> +bool intel_hdmi_limited_color_range(const struct intel_crtc_state *crtc_=
state,
> +				    const struct drm_connector_state *conn_state);
>  =

>  #endif /* __INTEL_HDMI_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index 2d2c5e1c7e7c..a0bbd728aa54 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -95,6 +95,8 @@ struct intel_sdvo {
>  	 */
>  	struct intel_sdvo_caps caps;
>  =

> +	u8 colorimetry_cap;
> +
>  	/* Pixel clock limitations reported by the SDVO device, in kHz */
>  	int pixel_clock_min, pixel_clock_max;
>  =

> @@ -1271,6 +1273,18 @@ static bool intel_has_hdmi_sink(struct intel_sdvo =
*sdvo,
>  		READ_ONCE(to_intel_digital_connector_state(conn_state)->force_audio) !=
=3D HDMI_AUDIO_OFF_DVI;
>  }
>  =

> +static bool intel_sdvo_limited_color_range(struct intel_encoder *encoder,
> +					   const struct intel_crtc_state *crtc_state,
> +					   const struct drm_connector_state *conn_state)
> +{
> +	struct intel_sdvo *intel_sdvo =3D to_sdvo(encoder);
> +
> +	if ((intel_sdvo->colorimetry_cap & SDVO_COLORIMETRY_RGB220) =3D=3D 0)
> +		return false;
> +
> +	return intel_hdmi_limited_color_range(crtc_state, conn_state);
> +}
> +
>  static int intel_sdvo_compute_config(struct intel_encoder *encoder,
>  				     struct intel_crtc_state *pipe_config,
>  				     struct drm_connector_state *conn_state)
> @@ -1336,21 +1350,9 @@ static int intel_sdvo_compute_config(struct intel_=
encoder *encoder,
>  				intel_sdvo_state->base.force_audio =3D=3D HDMI_AUDIO_ON;
>  	}
>  =

> -	if (intel_sdvo_state->base.broadcast_rgb =3D=3D INTEL_BROADCAST_RGB_AUT=
O) {
> -		/*
> -		 * See CEA-861-E - 5.1 Default Encoding Parameters
> -		 *
> -		 * FIXME: This bit is only valid when using TMDS encoding and 8
> -		 * bit per color mode.
> -		 */
> -		if (pipe_config->has_hdmi_sink &&
> -		    drm_match_cea_mode(adjusted_mode) > 1)
> -			pipe_config->limited_color_range =3D true;
> -	} else {
> -		if (pipe_config->has_hdmi_sink &&
> -		    intel_sdvo_state->base.broadcast_rgb =3D=3D INTEL_BROADCAST_RGB_LI=
MITED)
> -			pipe_config->limited_color_range =3D true;
> -	}
> +	pipe_config->limited_color_range =3D
> +		intel_sdvo_limited_color_range(encoder, pipe_config,
> +					       conn_state);
>  =

>  	/* Clock computation needs to happen after pixel multiplier. */
>  	if (IS_TV(intel_sdvo_connector))
> @@ -1487,6 +1489,8 @@ static void intel_sdvo_pre_enable(struct intel_enco=
der *intel_encoder,
>  	if (crtc_state->has_hdmi_sink) {
>  		intel_sdvo_set_encode(intel_sdvo, SDVO_ENCODE_HDMI);
>  		intel_sdvo_set_colorimetry(intel_sdvo,
> +					   crtc_state->limited_color_range ?
> +					   SDVO_COLORIMETRY_RGB220 :
>  					   SDVO_COLORIMETRY_RGB256);
>  		intel_sdvo_set_avi_infoframe(intel_sdvo, crtc_state);
>  	} else
> @@ -1520,8 +1524,6 @@ static void intel_sdvo_pre_enable(struct intel_enco=
der *intel_encoder,
>  		/* The real mode polarity is set by the SDVO commands, using
>  		 * struct intel_sdvo_dtd. */
>  		sdvox =3D SDVO_VSYNC_ACTIVE_HIGH | SDVO_HSYNC_ACTIVE_HIGH;
> -		if (!HAS_PCH_SPLIT(dev_priv) && crtc_state->limited_color_range)
> -			sdvox |=3D HDMI_COLOR_RANGE_16_235;
>  		if (INTEL_GEN(dev_priv) < 5)
>  			sdvox |=3D SDVO_BORDER_ENABLE;
>  	} else {
> @@ -1678,8 +1680,11 @@ static void intel_sdvo_get_config(struct intel_enc=
oder *encoder,
>  	     "SDVO pixel multiplier mismatch, port: %i, encoder: %i\n",
>  	     pipe_config->pixel_multiplier, encoder_pixel_multiplier);
>  =

> -	if (sdvox & HDMI_COLOR_RANGE_16_235)
> -		pipe_config->limited_color_range =3D true;
> +	if (intel_sdvo_get_value(intel_sdvo, SDVO_CMD_GET_COLORIMETRY,
> +				 &val, 1)) {
> +		if (val =3D=3D SDVO_COLORIMETRY_RGB220)
> +			pipe_config->limited_color_range =3D true;
> +	}
>  =

>  	if (intel_sdvo_get_value(intel_sdvo, SDVO_CMD_GET_AUDIO_STAT,
>  				 &val, 1)) {
> @@ -1898,6 +1903,17 @@ static bool intel_sdvo_get_capabilities(struct int=
el_sdvo *intel_sdvo, struct in
>  	return true;
>  }
>  =

> +static u8 intel_sdvo_get_colorimetry_cap(struct intel_sdvo *intel_sdvo)
> +{
> +	u8 cap;
> +
> +	if (!intel_sdvo_get_value(intel_sdvo, SDVO_CMD_GET_COLORIMETRY_CAP,
> +				  &cap, sizeof(cap)))
> +		return SDVO_COLORIMETRY_RGB256;
> +
> +	return cap;
> +}
> +
>  static u16 intel_sdvo_get_hotplug_support(struct intel_sdvo *intel_sdvo)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(intel_sdvo->base.base.dev=
);
> @@ -2654,12 +2670,9 @@ static void
>  intel_sdvo_add_hdmi_properties(struct intel_sdvo *intel_sdvo,
>  			       struct intel_sdvo_connector *connector)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.base.dev);
> -
>  	intel_attach_force_audio_property(&connector->base.base);
> -	if (INTEL_GEN(dev_priv) >=3D 4 && IS_MOBILE(dev_priv)) {
> +	if (intel_sdvo->colorimetry_cap & SDVO_COLORIMETRY_RGB220)
>  		intel_attach_broadcast_rgb_property(&connector->base.base);
> -	}
>  	intel_attach_aspect_ratio_property(&connector->base.base);
>  }
>  =

> @@ -3298,6 +3311,9 @@ bool intel_sdvo_init(struct drm_i915_private *dev_p=
riv,
>  	if (!intel_sdvo_get_capabilities(intel_sdvo, &intel_sdvo->caps))
>  		goto err;
>  =

> +	intel_sdvo->colorimetry_cap =3D
> +		intel_sdvo_get_colorimetry_cap(intel_sdvo);
> +
>  	if (intel_sdvo_output_setup(intel_sdvo,
>  				    intel_sdvo->caps.output_flags) !=3D true) {
>  		DRM_DEBUG_KMS("SDVO output failed to setup on %s\n",
> -- =

> 2.24.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
