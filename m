Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A0ECE7EA02C
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 16:38:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9D9C10E3AF;
	Mon, 13 Nov 2023 15:38:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0F6710E3AF
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Nov 2023 15:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699889915; x=1731425915;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=0SFktZwjTlVQ27ct06bLWeGBg+EK4AraaPvzPLwmE6M=;
 b=V3ypUPNQ2m0scb1rG5QUBRhh5dhqGfpRic+40Wd3ohWIjRBClGAWHyRV
 qSWN3PVeWtpefLdijvqxt2hNAWHnXMsKlxI9H4nHclJCr/QgEjsBLjPQY
 JFm2dOTpNzWWKSbLCdNj0MFojyvABOH17x3kTDWMrynWSBq7ZswioKax3
 sVYVXrDm/XsW9ZyIAJDDsPoY+xTasHDtzEjymSIdmot6EVDEKIRa74z7j
 +MGv9FHbRiVqHtBpzdHGvRSOJu84d14+brrhI+mlRis4lRyi6MrkHYZe+
 f0cWJaCHm/vy6EbFX46zCFI0XLJmtJDYuvMN8Btv4n/OtFLnSt+rLkbtM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="375481473"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="375481473"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 07:38:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="881706691"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="881706691"
Received: from cgheban-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.92])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 07:38:32 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231106211915.13406-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231106211915.13406-1-ville.syrjala@linux.intel.com>
 <20231106211915.13406-6-ville.syrjala@linux.intel.com>
Date: Mon, 13 Nov 2023 17:38:29 +0200
Message-ID: <8734x9vf2i.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 05/11] drm/i915: Wrap g4x+ DP/HDMI audio
 enable/disable
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

On Mon, 06 Nov 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Put a wrapper around the intel_audio_codec_{enable,disable}()
> calls in the g4x+ DP/HDMI code. We shall move the presence
> detect enable/disable into the wrappers later.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c   | 26 ++++++++++++--
>  drivers/gpu/drm/i915/display/g4x_hdmi.c | 48 +++++++++++++++----------
>  2 files changed, 53 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915=
/display/g4x_dp.c
> index 79ef2b435beb..ecc2ec866424 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -475,6 +475,26 @@ intel_dp_link_down(struct intel_encoder *encoder,
>  	}
>  }
>=20=20
> +static void g4x_dp_audio_enable(struct intel_encoder *encoder,
> +				const struct intel_crtc_state *crtc_state,
> +				const struct drm_connector_state *conn_state)
> +{
> +	if (!crtc_state->has_audio)
> +		return;
> +
> +	intel_audio_codec_enable(encoder, crtc_state, conn_state);
> +}
> +
> +static void g4x_dp_audio_disable(struct intel_encoder *encoder,
> +				 const struct intel_crtc_state *old_crtc_state,
> +				 const struct drm_connector_state *old_conn_state)
> +{
> +	if (!old_crtc_state->has_audio)
> +		return;
> +
> +	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
> +}
> +
>  static void intel_disable_dp(struct intel_atomic_state *state,
>  			     struct intel_encoder *encoder,
>  			     const struct intel_crtc_state *old_crtc_state,
> @@ -482,7 +502,7 @@ static void intel_disable_dp(struct intel_atomic_stat=
e *state,
>  {
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>=20=20
> -	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
> +	g4x_dp_audio_disable(encoder, old_crtc_state, old_conn_state);
>=20=20
>  	intel_dp->link_trained =3D false;
>=20=20
> @@ -687,7 +707,7 @@ static void g4x_enable_dp(struct intel_atomic_state *=
state,
>  {
>  	intel_enable_dp(state, encoder, pipe_config, conn_state);
>  	intel_edp_backlight_on(pipe_config, conn_state);
> -	intel_audio_codec_enable(encoder, pipe_config, conn_state);
> +	g4x_dp_audio_enable(encoder, pipe_config, conn_state);
>  }
>=20=20
>  static void vlv_enable_dp(struct intel_atomic_state *state,
> @@ -696,7 +716,7 @@ static void vlv_enable_dp(struct intel_atomic_state *=
state,
>  			  const struct drm_connector_state *conn_state)
>  {
>  	intel_edp_backlight_on(pipe_config, conn_state);
> -	intel_audio_codec_enable(encoder, pipe_config, conn_state);
> +	g4x_dp_audio_enable(encoder, pipe_config, conn_state);
>  }
>=20=20
>  static void g4x_pre_enable_dp(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i9=
15/display/g4x_hdmi.c
> index 45e044b4a88d..9c70245d8b0a 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -235,18 +235,38 @@ static void g4x_hdmi_enable_port(struct intel_encod=
er *encoder,
>  	intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
>  }
>=20=20
> +static void g4x_hdmi_audio_enable(struct intel_encoder *encoder,
> +				  const struct intel_crtc_state *crtc_state,
> +				  const struct drm_connector_state *conn_state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +
> +	if (!crtc_state->has_audio)
> +		return;
> +
> +	drm_WARN_ON(&i915->drm, !crtc_state->has_hdmi_sink);
> +
> +	intel_audio_codec_enable(encoder, crtc_state, conn_state);
> +}
> +
> +static void g4x_hdmi_audio_disable(struct intel_encoder *encoder,
> +				   const struct intel_crtc_state *old_crtc_state,
> +				   const struct drm_connector_state *old_conn_state)
> +{
> +	if (!old_crtc_state->has_audio)
> +		return;
> +
> +	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
> +}
> +
>  static void g4x_enable_hdmi(struct intel_atomic_state *state,
>  			    struct intel_encoder *encoder,
>  			    const struct intel_crtc_state *pipe_config,
>  			    const struct drm_connector_state *conn_state)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -
>  	g4x_hdmi_enable_port(encoder, pipe_config);
>=20=20
> -	drm_WARN_ON(&dev_priv->drm, pipe_config->has_audio &&
> -		    !pipe_config->has_hdmi_sink);
> -	intel_audio_codec_enable(encoder, pipe_config, conn_state);
> +	g4x_hdmi_audio_enable(encoder, pipe_config, conn_state);
>  }
>=20=20
>  static void ibx_enable_hdmi(struct intel_atomic_state *state,
> @@ -297,9 +317,7 @@ static void ibx_enable_hdmi(struct intel_atomic_state=
 *state,
>  		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
>  	}
>=20=20
> -	drm_WARN_ON(&dev_priv->drm, pipe_config->has_audio &&
> -		    !pipe_config->has_hdmi_sink);
> -	intel_audio_codec_enable(encoder, pipe_config, conn_state);
> +	g4x_hdmi_audio_enable(encoder, pipe_config, conn_state);
>  }
>=20=20
>  static void cpt_enable_hdmi(struct intel_atomic_state *state,
> @@ -352,9 +370,7 @@ static void cpt_enable_hdmi(struct intel_atomic_state=
 *state,
>  			     TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE, 0);
>  	}
>=20=20
> -	drm_WARN_ON(&dev_priv->drm, pipe_config->has_audio &&
> -		    !pipe_config->has_hdmi_sink);
> -	intel_audio_codec_enable(encoder, pipe_config, conn_state);
> +	g4x_hdmi_audio_enable(encoder, pipe_config, conn_state);
>  }
>=20=20
>  static void vlv_enable_hdmi(struct intel_atomic_state *state,
> @@ -362,11 +378,7 @@ static void vlv_enable_hdmi(struct intel_atomic_stat=
e *state,
>  			    const struct intel_crtc_state *pipe_config,
>  			    const struct drm_connector_state *conn_state)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -
> -	drm_WARN_ON(&dev_priv->drm, pipe_config->has_audio &&
> -		    !pipe_config->has_hdmi_sink);
> -	intel_audio_codec_enable(encoder, pipe_config, conn_state);
> +	g4x_hdmi_audio_enable(encoder, pipe_config, conn_state);
>  }
>=20=20
>  static void intel_disable_hdmi(struct intel_atomic_state *state,
> @@ -433,7 +445,7 @@ static void g4x_disable_hdmi(struct intel_atomic_stat=
e *state,
>  			     const struct intel_crtc_state *old_crtc_state,
>  			     const struct drm_connector_state *old_conn_state)
>  {
> -	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
> +	g4x_hdmi_audio_disable(encoder, old_crtc_state, old_conn_state);
>=20=20
>  	intel_disable_hdmi(state, encoder, old_crtc_state, old_conn_state);
>  }
> @@ -443,7 +455,7 @@ static void pch_disable_hdmi(struct intel_atomic_stat=
e *state,
>  			     const struct intel_crtc_state *old_crtc_state,
>  			     const struct drm_connector_state *old_conn_state)
>  {
> -	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
> +	g4x_hdmi_audio_disable(encoder, old_crtc_state, old_conn_state);
>  }
>=20=20
>  static void pch_post_disable_hdmi(struct intel_atomic_state *state,

--=20
Jani Nikula, Intel
