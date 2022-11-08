Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C13E620FD0
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 13:06:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 624CC10E406;
	Tue,  8 Nov 2022 12:06:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFD7B10E406
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 12:06:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667909192; x=1699445192;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=zPROeL6/3B6xu2qnav/tDXOAT0k8zFxffwZWVasOjv8=;
 b=HD1VQ1cDPIK9pWKv42T7nsNsKWOmc3CznXX5D62OG4Osfp1eKsl2hVNu
 Gx6BO2uOGuXicuXW1dp4mHAvwIDNjwI8zkwZIA1FmLFA2UKOfmNBXVpT7
 E+jA/ZEPPMa0ZQlwTMLp8JeESupeo87E5+uCIGuAXwlVWPZZ9zwICokEo
 7HQd7ynL+Jb7QSzkRtL6nTCINyctewiZYdZui974HhGwyBUE12/zdHvyt
 gRh6I/2h/0BNWIiXo7IX8HsbKpBTfLBWS6o+uxIbYVEemyfRCI2fsOhA3
 GtxM2zW3kLfxoHUizO4FkRliuU6eyfBF5iFmIre6TUBO/bw4lEplWY6vK A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="294047370"
X-IronPort-AV: E=Sophos;i="5.96,147,1665471600"; d="scan'208";a="294047370"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 04:06:32 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="778902879"
X-IronPort-AV: E=Sophos;i="5.96,147,1665471600"; d="scan'208";a="778902879"
Received: from smoriord-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.16.110])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 04:06:29 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221107194604.15227-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221107194604.15227-1-ville.syrjala@linux.intel.com>
 <20221107194604.15227-5-ville.syrjala@linux.intel.com>
Date: Tue, 08 Nov 2022 14:06:27 +0200
Message-ID: <87o7th8xbw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: Move has_hdmi_sink out from
 intel_hdmi_compute_config()
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

On Mon, 07 Nov 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We'll be wanting to compute has_hdmi_sink a bit differently
> for some platforms. To that end compute it in the encoder
> .compute_config_hook() before we call intel_hdmi_compute_config().
> intel_hdmi_compute_has_hdmi_sink() will do the basic lifting
> beyond any platform specific stuff.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

But, uh, I don't want to dig into patch 5 right now, and this one
doesn't really make sense without that... in the mean time the first
three look like could be merged.

BR,
Jani.


> ---
>  drivers/gpu/drm/i915/display/g4x_hdmi.c   |  3 +++
>  drivers/gpu/drm/i915/display/intel_ddi.c  |  3 +++
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 14 ++++++++++----
>  drivers/gpu/drm/i915/display/intel_hdmi.h |  3 +++
>  4 files changed, 19 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i9=
15/display/g4x_hdmi.c
> index 3d09359d7337..fd23aa03cdc4 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -87,6 +87,9 @@ static int g4x_hdmi_compute_config(struct intel_encoder=
 *encoder,
>  	if (HAS_PCH_SPLIT(i915))
>  		crtc_state->has_pch_encoder =3D true;
>=20=20
> +	crtc_state->has_hdmi_sink =3D
> +		intel_hdmi_compute_has_hdmi_sink(encoder, crtc_state, conn_state);
> +
>  	return intel_hdmi_compute_config(encoder, crtc_state, conn_state);
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index e95bde5cf060..5ebfbe7b81b4 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3638,6 +3638,9 @@ static int intel_ddi_compute_config(struct intel_en=
coder *encoder,
>  		pipe_config->cpu_transcoder =3D TRANSCODER_EDP;
>=20=20
>  	if (intel_crtc_has_type(pipe_config, INTEL_OUTPUT_HDMI)) {
> +		pipe_config->has_hdmi_sink =3D
> +			intel_hdmi_compute_has_hdmi_sink(encoder, pipe_config, conn_state);
> +
>  		ret =3D intel_hdmi_compute_config(encoder, pipe_config, conn_state);
>  	} else {
>  		ret =3D intel_dp_compute_config(encoder, pipe_config, conn_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index 31927f8238d1..2425a9f59b90 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2237,11 +2237,20 @@ static bool intel_hdmi_is_cloned(const struct int=
el_crtc_state *crtc_state)
>  		!is_power_of_2(crtc_state->uapi.encoder_mask);
>  }
>=20=20
> +bool intel_hdmi_compute_has_hdmi_sink(struct intel_encoder *encoder,
> +				      const struct intel_crtc_state *crtc_state,
> +				      const struct drm_connector_state *conn_state)
> +{
> +	struct intel_hdmi *hdmi =3D enc_to_intel_hdmi(encoder);
> +
> +	return intel_has_hdmi_sink(hdmi, conn_state) &&
> +		!intel_hdmi_is_cloned(crtc_state);
> +}
> +
>  int intel_hdmi_compute_config(struct intel_encoder *encoder,
>  			      struct intel_crtc_state *pipe_config,
>  			      struct drm_connector_state *conn_state)
>  {
> -	struct intel_hdmi *intel_hdmi =3D enc_to_intel_hdmi(encoder);
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct drm_display_mode *adjusted_mode =3D &pipe_config->hw.adjusted_mo=
de;
>  	struct drm_connector *connector =3D conn_state->connector;
> @@ -2252,9 +2261,6 @@ int intel_hdmi_compute_config(struct intel_encoder =
*encoder,
>  		return -EINVAL;
>=20=20
>  	pipe_config->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
> -	pipe_config->has_hdmi_sink =3D
> -		intel_has_hdmi_sink(intel_hdmi, conn_state) &&
> -		!intel_hdmi_is_cloned(pipe_config);
>=20=20
>  	if (pipe_config->has_hdmi_sink)
>  		pipe_config->has_infoframe =3D true;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/=
i915/display/intel_hdmi.h
> index 774dda2376ed..dd08b4004c59 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
> @@ -23,6 +23,9 @@ union hdmi_infoframe;
>=20=20
>  void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
>  			       struct intel_connector *intel_connector);
> +bool intel_hdmi_compute_has_hdmi_sink(struct intel_encoder *encoder,
> +				      const struct intel_crtc_state *crtc_state,
> +				      const struct drm_connector_state *conn_state);
>  int intel_hdmi_compute_config(struct intel_encoder *encoder,
>  			      struct intel_crtc_state *pipe_config,
>  			      struct drm_connector_state *conn_state);

--=20
Jani Nikula, Intel Open Source Graphics Center
