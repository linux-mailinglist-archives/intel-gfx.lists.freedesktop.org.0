Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1486470FE
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 14:45:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17F3010E49F;
	Thu,  8 Dec 2022 13:45:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D58C710E4BF
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 13:45:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670507145; x=1702043145;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=V8JWgoQTMucm4/FtTn9Ync9or3BX89H+bqnKrawgulw=;
 b=fpc01y4VE75guGp+77dqV4KB4SLUF730HBOTh4OFwzRYOIiBG2+/nlNB
 G4QUqKdmsh3oaXmwi0hril5/xdkm3XiIimHHS5svPLUT5xQD+avo350mQ
 8RFHlGyO0crzVRj1fVgQAzvZgXxON44KdHAvJESpeel7pv8wkG3CPl2Qq
 2SbYFjmzg5A3z54rgctn3n/GE2ysUYP6xaF0dpxEsd0bEziNIixaK7B5V
 99+iiT8ZtTr69pUNwTB4J0MP3N1/rP2dKaVz/+uGvpnRd9UGw62jKepxP
 kF756nUozheOE8yZCyKH2Qv74xZLbCx2qAJTK/zYeFV+hVg8JUxRNi37O g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="319023046"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="319023046"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 05:45:45 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="710465876"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="710465876"
Received: from danyang-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.18.245])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 05:45:43 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221207225219.29060-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221207225219.29060-1-ville.syrjala@linux.intel.com>
Date: Thu, 08 Dec 2022 15:45:41 +0200
Message-ID: <87wn72ypoa.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix VLV/CHV HDMI/DP audio enable
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

On Thu, 08 Dec 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Despite what I claimed in commit c3c5dc1d9224
> ("drm/i915/audio: Do the vblank waits") the vblank
> interrupts are in fact not enabled yet when we do the
> audio enable sequence on VLV/CHV (all other platforms are
> fine).
>
> Reorder the enable sequence on VLV/CHV to match that of the
> other platforms so that the audio enable happens after the
> pipe has been enabled.
>
> Fixes: c3c5dc1d9224 ("drm/i915/audio: Do the vblank waits")
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c   |  4 +--
>  drivers/gpu/drm/i915/display/g4x_hdmi.c | 41 ++++++++++++++++---------
>  2 files changed, 29 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915=
/display/g4x_dp.c
> index 3593938dcd87..24ef36ec2d3d 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -673,8 +673,6 @@ static void intel_enable_dp(struct intel_atomic_state=
 *state,
>  	intel_dp_pcon_dsc_configure(intel_dp, pipe_config);
>  	intel_dp_start_link_train(intel_dp, pipe_config);
>  	intel_dp_stop_link_train(intel_dp, pipe_config);
> -
> -	intel_audio_codec_enable(encoder, pipe_config, conn_state);
>  }
>=20=20
>  static void g4x_enable_dp(struct intel_atomic_state *state,
> @@ -683,6 +681,7 @@ static void g4x_enable_dp(struct intel_atomic_state *=
state,
>  			  const struct drm_connector_state *conn_state)
>  {
>  	intel_enable_dp(state, encoder, pipe_config, conn_state);
> +	intel_audio_codec_enable(encoder, pipe_config, conn_state);
>  	intel_edp_backlight_on(pipe_config, conn_state);
>  }
>=20=20
> @@ -691,6 +690,7 @@ static void vlv_enable_dp(struct intel_atomic_state *=
state,
>  			  const struct intel_crtc_state *pipe_config,
>  			  const struct drm_connector_state *conn_state)
>  {
> +	intel_audio_codec_enable(encoder, pipe_config, conn_state);
>  	intel_edp_backlight_on(pipe_config, conn_state);
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i9=
15/display/g4x_hdmi.c
> index 121caeaa409b..c3580d96765c 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -157,24 +157,32 @@ static void intel_hdmi_get_config(struct intel_enco=
der *encoder,
>  			     &pipe_config->infoframes.hdmi);
>  }
>=20=20
> +static void g4x_hdmi_enable_port(struct intel_encoder *encoder,
> +				 const struct intel_crtc_state *pipe_config)
> +{
> +	struct drm_device *dev =3D encoder->base.dev;
> +	struct drm_i915_private *dev_priv =3D to_i915(dev);

Could clean up some of the drm_device and dev_priv on top.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +	struct intel_hdmi *intel_hdmi =3D enc_to_intel_hdmi(encoder);
> +	u32 temp;
> +
> +	temp =3D intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
> +
> +	temp |=3D SDVO_ENABLE;
> +	if (pipe_config->has_audio)
> +		temp |=3D HDMI_AUDIO_ENABLE;
> +
> +	intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
> +	intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
> +}
> +
>  static void g4x_enable_hdmi(struct intel_atomic_state *state,
>  			    struct intel_encoder *encoder,
>  			    const struct intel_crtc_state *pipe_config,
>  			    const struct drm_connector_state *conn_state)
>  {
> -	struct drm_device *dev =3D encoder->base.dev;
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> -	struct intel_hdmi *intel_hdmi =3D enc_to_intel_hdmi(encoder);
> -	u32 temp;
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>=20=20
> -	temp =3D intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
> -
> -	temp |=3D SDVO_ENABLE;
> -	if (pipe_config->has_audio)
> -		temp |=3D HDMI_AUDIO_ENABLE;
> -
> -	intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
> -	intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
> +	g4x_hdmi_enable_port(encoder, pipe_config);
>=20=20
>  	drm_WARN_ON(&dev_priv->drm, pipe_config->has_audio &&
>  		    !pipe_config->has_hdmi_sink);
> @@ -294,6 +302,11 @@ static void vlv_enable_hdmi(struct intel_atomic_stat=
e *state,
>  			    const struct intel_crtc_state *pipe_config,
>  			    const struct drm_connector_state *conn_state)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +
> +	drm_WARN_ON(&dev_priv->drm, pipe_config->has_audio &&
> +		    !pipe_config->has_hdmi_sink);
> +	intel_audio_codec_enable(encoder, pipe_config, conn_state);
>  }
>=20=20
>  static void intel_disable_hdmi(struct intel_atomic_state *state,
> @@ -415,7 +428,7 @@ static void vlv_hdmi_pre_enable(struct intel_atomic_s=
tate *state,
>  			      pipe_config->has_infoframe,
>  			      pipe_config, conn_state);
>=20=20
> -	g4x_enable_hdmi(state, encoder, pipe_config, conn_state);
> +	g4x_hdmi_enable_port(encoder, pipe_config);
>=20=20
>  	vlv_wait_port_ready(dev_priv, dig_port, 0x0);
>  }
> @@ -492,7 +505,7 @@ static void chv_hdmi_pre_enable(struct intel_atomic_s=
tate *state,
>  			      pipe_config->has_infoframe,
>  			      pipe_config, conn_state);
>=20=20
> -	g4x_enable_hdmi(state, encoder, pipe_config, conn_state);
> +	g4x_hdmi_enable_port(encoder, pipe_config);
>=20=20
>  	vlv_wait_port_ready(dev_priv, dig_port, 0x0);

--=20
Jani Nikula, Intel Open Source Graphics Center
