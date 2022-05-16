Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2582C528450
	for <lists+intel-gfx@lfdr.de>; Mon, 16 May 2022 14:39:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DD3010E39D;
	Mon, 16 May 2022 12:39:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14EED10E39D
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 May 2022 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652704793; x=1684240793;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=uXCmHxopgj4VBx/N9qUm0u2+4BNHlmafYAorVxij2xk=;
 b=Y9qY1MYLtQ04ptRUh7TACERUxKd0brvAV3esRnfCkEDgdeVnK9pp1+GM
 1otn4ObvQSiiarFp++ef1ogY34nkBMpBWYRJKG3c/8/C1UIPkxuI36tkO
 1OkVL6MwlT+DTr8WB+1vJXRZLHW/XWMnWXWF81AO4v+UEWWtGMDaC51td
 hfykDuqjJ1XVq9meNhJDtcpzcQZ/HVZavOLl8sWfukebLrwWsMpxt3b4V
 za/b3lZEhcqyUUYNmaLgrxHMme8EyMfxo7soSmVBE0YteU3EiveVtfOcL
 5kn+Y409OnlPoIdOxDch9lR2pY3udVdkjkMlAY28gDf5/iQ3rWENRkOXS w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10348"; a="296080665"
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="296080665"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 05:39:52 -0700
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="568296903"
Received: from akuriata-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.145.127])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 05:39:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220503182242.18797-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
 <20220503182242.18797-9-ville.syrjala@linux.intel.com>
Date: Mon, 16 May 2022 15:39:48 +0300
Message-ID: <87sfp9fy7f.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 08/26] drm/i915: s/pipe_config/crtc_state/
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

On Tue, 03 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Rename some of the 'pipe_config's to the more modern
> 'crtc_state'.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 62 ++++++++++----------
>  1 file changed, 31 insertions(+), 31 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 4615cf3564eb..ac476976dc0b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5013,10 +5013,10 @@ static void intel_modeset_update_connector_atomic=
_state(struct drm_device *dev)
>=20=20
>  static int
>  compute_sink_pipe_bpp(const struct drm_connector_state *conn_state,
> -		      struct intel_crtc_state *pipe_config)
> +		      struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_connector *connector =3D conn_state->connector;
> -	struct drm_i915_private *i915 =3D to_i915(pipe_config->uapi.crtc->dev);
> +	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
>  	const struct drm_display_info *info =3D &connector->display_info;
>  	int bpp;
>=20=20
> @@ -5038,16 +5038,16 @@ compute_sink_pipe_bpp(const struct drm_connector_=
state *conn_state,
>  		return -EINVAL;
>  	}
>=20=20
> -	if (bpp < pipe_config->pipe_bpp) {
> +	if (bpp < crtc_state->pipe_bpp) {
>  		drm_dbg_kms(&i915->drm,
>  			    "[CONNECTOR:%d:%s] Limiting display bpp to %d instead of "
>  			    "EDID bpp %d, requested bpp %d, max platform bpp %d\n",
>  			    connector->base.id, connector->name,
>  			    bpp, 3 * info->bpc,
>  			    3 * conn_state->max_requested_bpc,
> -			    pipe_config->pipe_bpp);
> +			    crtc_state->pipe_bpp);
>=20=20
> -		pipe_config->pipe_bpp =3D bpp;
> +		crtc_state->pipe_bpp =3D bpp;
>  	}
>=20=20
>  	return 0;
> @@ -5058,7 +5058,7 @@ compute_baseline_pipe_bpp(struct intel_atomic_state=
 *state,
>  			  struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	struct intel_crtc_state *pipe_config =3D
> +	struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct drm_connector *connector;
>  	struct drm_connector_state *connector_state;
> @@ -5072,7 +5072,7 @@ compute_baseline_pipe_bpp(struct intel_atomic_state=
 *state,
>  	else
>  		bpp =3D 8*3;
>=20=20
> -	pipe_config->pipe_bpp =3D bpp;
> +	crtc_state->pipe_bpp =3D bpp;
>=20=20
>  	/* Clamp display bpp to connector max bpp */
>  	for_each_new_connector_in_state(&state->base, connector, connector_stat=
e, i) {
> @@ -5081,7 +5081,7 @@ compute_baseline_pipe_bpp(struct intel_atomic_state=
 *state,
>  		if (connector_state->crtc !=3D &crtc->base)
>  			continue;
>=20=20
> -		ret =3D compute_sink_pipe_bpp(connector_state, pipe_config);
> +		ret =3D compute_sink_pipe_bpp(connector_state, crtc_state);
>  		if (ret)
>  			return ret;
>  	}
> @@ -5638,7 +5638,7 @@ intel_modeset_pipe_config(struct intel_atomic_state=
 *state,
>  			  struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> -	struct intel_crtc_state *pipe_config =3D
> +	struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct drm_connector *connector;
>  	struct drm_connector_state *connector_state;
> @@ -5646,28 +5646,28 @@ intel_modeset_pipe_config(struct intel_atomic_sta=
te *state,
>  	int base_bpp, ret, i;
>  	bool retry =3D true;
>=20=20
> -	pipe_config->cpu_transcoder =3D (enum transcoder) crtc->pipe;
> +	crtc_state->cpu_transcoder =3D (enum transcoder) crtc->pipe;
>=20=20
> -	pipe_config->framestart_delay =3D 1;
> +	crtc_state->framestart_delay =3D 1;
>=20=20
>  	/*
>  	 * Sanitize sync polarity flags based on requested ones. If neither
>  	 * positive or negative polarity is requested, treat this as meaning
>  	 * negative polarity.
>  	 */
> -	if (!(pipe_config->hw.adjusted_mode.flags &
> +	if (!(crtc_state->hw.adjusted_mode.flags &
>  	      (DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NHSYNC)))
> -		pipe_config->hw.adjusted_mode.flags |=3D DRM_MODE_FLAG_NHSYNC;
> +		crtc_state->hw.adjusted_mode.flags |=3D DRM_MODE_FLAG_NHSYNC;
>=20=20
> -	if (!(pipe_config->hw.adjusted_mode.flags &
> +	if (!(crtc_state->hw.adjusted_mode.flags &
>  	      (DRM_MODE_FLAG_PVSYNC | DRM_MODE_FLAG_NVSYNC)))
> -		pipe_config->hw.adjusted_mode.flags |=3D DRM_MODE_FLAG_NVSYNC;
> +		crtc_state->hw.adjusted_mode.flags |=3D DRM_MODE_FLAG_NVSYNC;
>=20=20
>  	ret =3D compute_baseline_pipe_bpp(state, crtc);
>  	if (ret)
>  		return ret;
>=20=20
> -	base_bpp =3D pipe_config->pipe_bpp;
> +	base_bpp =3D crtc_state->pipe_bpp;
>=20=20
>  	/*
>  	 * Determine the real pipe dimensions. Note that stereo modes can
> @@ -5677,9 +5677,9 @@ intel_modeset_pipe_config(struct intel_atomic_state=
 *state,
>  	 * computation to clearly distinguish it from the adjusted mode, which
>  	 * can be changed by the connectors in the below retry loop.
>  	 */
> -	drm_mode_get_hv_timing(&pipe_config->hw.mode,
> +	drm_mode_get_hv_timing(&crtc_state->hw.mode,
>  			       &pipe_src_w, &pipe_src_h);
> -	drm_rect_init(&pipe_config->pipe_src, 0, 0,
> +	drm_rect_init(&crtc_state->pipe_src, 0, 0,
>  		      pipe_src_w, pipe_src_h);
>=20=20
>  	for_each_new_connector_in_state(&state->base, connector, connector_stat=
e, i) {
> @@ -5700,20 +5700,20 @@ intel_modeset_pipe_config(struct intel_atomic_sta=
te *state,
>  		 * hooks so that the hooks can use this information safely.
>  		 */
>  		if (encoder->compute_output_type)
> -			pipe_config->output_types |=3D
> -				BIT(encoder->compute_output_type(encoder, pipe_config,
> +			crtc_state->output_types |=3D
> +				BIT(encoder->compute_output_type(encoder, crtc_state,
>  								 connector_state));
>  		else
> -			pipe_config->output_types |=3D BIT(encoder->type);
> +			crtc_state->output_types |=3D BIT(encoder->type);
>  	}
>=20=20
>  encoder_retry:
>  	/* Ensure the port clock defaults are reset when retrying. */
> -	pipe_config->port_clock =3D 0;
> -	pipe_config->pixel_multiplier =3D 1;
> +	crtc_state->port_clock =3D 0;
> +	crtc_state->pixel_multiplier =3D 1;
>=20=20
>  	/* Fill in default crtc timings, allow encoders to overwrite them. */
> -	drm_mode_set_crtcinfo(&pipe_config->hw.adjusted_mode,
> +	drm_mode_set_crtcinfo(&crtc_state->hw.adjusted_mode,
>  			      CRTC_STEREO_DOUBLE);
>=20=20
>  	/* Pass our mode to the connectors and the CRTC to give them a chance to
> @@ -5727,7 +5727,7 @@ intel_modeset_pipe_config(struct intel_atomic_state=
 *state,
>  		if (connector_state->crtc !=3D &crtc->base)
>  			continue;
>=20=20
> -		ret =3D encoder->compute_config(encoder, pipe_config,
> +		ret =3D encoder->compute_config(encoder, crtc_state,
>  					      connector_state);
>  		if (ret =3D=3D -EDEADLK)
>  			return ret;
> @@ -5739,9 +5739,9 @@ intel_modeset_pipe_config(struct intel_atomic_state=
 *state,
>=20=20
>  	/* Set default port clock if not overwritten by the encoder. Needs to be
>  	 * done afterwards in case the encoder adjusts the mode. */
> -	if (!pipe_config->port_clock)
> -		pipe_config->port_clock =3D pipe_config->hw.adjusted_mode.crtc_clock
> -			* pipe_config->pixel_multiplier;
> +	if (!crtc_state->port_clock)
> +		crtc_state->port_clock =3D crtc_state->hw.adjusted_mode.crtc_clock
> +			* crtc_state->pixel_multiplier;
>=20=20
>  	ret =3D intel_crtc_compute_config(state, crtc);
>  	if (ret =3D=3D -EDEADLK)
> @@ -5764,11 +5764,11 @@ intel_modeset_pipe_config(struct intel_atomic_sta=
te *state,
>  	 * only enable it on 6bpc panels and when its not a compliance
>  	 * test requesting 6bpc video pattern.
>  	 */
> -	pipe_config->dither =3D (pipe_config->pipe_bpp =3D=3D 6*3) &&
> -		!pipe_config->dither_force_disable;
> +	crtc_state->dither =3D (crtc_state->pipe_bpp =3D=3D 6*3) &&
> +		!crtc_state->dither_force_disable;
>  	drm_dbg_kms(&i915->drm,
>  		    "hw max bpp: %i, pipe bpp: %i, dithering: %i\n",
> -		    base_bpp, pipe_config->pipe_bpp, pipe_config->dither);
> +		    base_bpp, crtc_state->pipe_bpp, crtc_state->dither);
>=20=20
>  	return 0;
>  }

--=20
Jani Nikula, Intel Open Source Graphics Center
