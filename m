Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 409ED52844E
	for <lists+intel-gfx@lfdr.de>; Mon, 16 May 2022 14:39:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F57510E151;
	Mon, 16 May 2022 12:39:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37D4010E151
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 May 2022 12:39:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652704753; x=1684240753;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=BlDZf8KUwMtDt5ZQ11vZ8tyICbC0T78lrEd4Q00Eww4=;
 b=QOXp9zvnOGrv/kr853Ebnhi/q4IfnfL15bhB81+9kmtVAClEVaq26wN9
 jprJOlsbuqTMIAM2x7EnRk6TIhNaQ6/qw7U2W7rWzF/LLqI4CWxVxk7TB
 L9m3DooOA7PZSize+TnqM5/qzu01A8kL0HNEDq4Nmx9dZ4Qtz91lFhMzw
 ugXt8PsN0bzGQXNEDwmMEwv/xjjC/dcV+oYE3ELUDGSE/PwNtOEd5cprk
 rs4MvDtg0sn2Lec8WQGtYxUD1DYJSgX/htC4zDIyasIDanQ2SMIYX8dOB
 c/61/Zs8JRSrOsE6YRZamHGscbiIekOX9CLiUxPZJRnpLXAnFT0pgQaV8 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10348"; a="251332296"
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="251332296"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 05:39:12 -0700
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="596499545"
Received: from akuriata-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.145.127])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 05:39:11 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220503182242.18797-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
 <20220503182242.18797-8-ville.syrjala@linux.intel.com>
Date: Mon, 16 May 2022 15:39:08 +0300
Message-ID: <87v8u5fy8j.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 07/26] drm/i915: Adjust
 intel_modeset_pipe_config() & co. calling convention
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
> Use the state+crtc calling convention for intel_modeset_pipe_config()
> and othere related functions. Many of these need the full atomic state
> anyway so passing it all the way through is just nicer than having to
> worry about whether it can actually be extracted from eg. the crtc
> state passed in.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 48 ++++++++++----------
>  1 file changed, 25 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 1093665122a4..4615cf3564eb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2811,9 +2811,11 @@ static int intel_crtc_compute_pipe_mode(struct int=
el_crtc_state *crtc_state)
>  	return 0;
>  }
>=20=20
> -static int intel_crtc_compute_config(struct intel_crtc *crtc,
> -				     struct intel_crtc_state *crtc_state)
> +static int intel_crtc_compute_config(struct intel_atomic_state *state,
> +				     struct intel_crtc *crtc)
>  {
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
>  	int ret;
>=20=20
>  	ret =3D intel_crtc_compute_pipe_src(crtc_state);
> @@ -5052,11 +5054,12 @@ compute_sink_pipe_bpp(const struct drm_connector_=
state *conn_state,
>  }
>=20=20
>  static int
> -compute_baseline_pipe_bpp(struct intel_crtc *crtc,
> -			  struct intel_crtc_state *pipe_config)
> +compute_baseline_pipe_bpp(struct intel_atomic_state *state,
> +			  struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	struct drm_atomic_state *state =3D pipe_config->uapi.state;
> +	struct intel_crtc_state *pipe_config =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct drm_connector *connector;
>  	struct drm_connector_state *connector_state;
>  	int bpp, i;
> @@ -5072,7 +5075,7 @@ compute_baseline_pipe_bpp(struct intel_crtc *crtc,
>  	pipe_config->pipe_bpp =3D bpp;
>=20=20
>  	/* Clamp display bpp to connector max bpp */
> -	for_each_new_connector_in_state(state, connector, connector_state, i) {
> +	for_each_new_connector_in_state(&state->base, connector, connector_stat=
e, i) {
>  		int ret;
>=20=20
>  		if (connector_state->crtc !=3D &crtc->base)
> @@ -5632,18 +5635,18 @@ intel_crtc_prepare_cleared_state(struct intel_ato=
mic_state *state,
>=20=20
>  static int
>  intel_modeset_pipe_config(struct intel_atomic_state *state,
> -			  struct intel_crtc_state *pipe_config)
> +			  struct intel_crtc *crtc)
>  {
> -	struct drm_crtc *crtc =3D pipe_config->uapi.crtc;
> -	struct drm_i915_private *i915 =3D to_i915(pipe_config->uapi.crtc->dev);
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	struct intel_crtc_state *pipe_config =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct drm_connector *connector;
>  	struct drm_connector_state *connector_state;
>  	int pipe_src_w, pipe_src_h;
>  	int base_bpp, ret, i;
>  	bool retry =3D true;
>=20=20
> -	pipe_config->cpu_transcoder =3D
> -		(enum transcoder) to_intel_crtc(crtc)->pipe;
> +	pipe_config->cpu_transcoder =3D (enum transcoder) crtc->pipe;
>=20=20
>  	pipe_config->framestart_delay =3D 1;
>=20=20
> @@ -5660,8 +5663,7 @@ intel_modeset_pipe_config(struct intel_atomic_state=
 *state,
>  	      (DRM_MODE_FLAG_PVSYNC | DRM_MODE_FLAG_NVSYNC)))
>  		pipe_config->hw.adjusted_mode.flags |=3D DRM_MODE_FLAG_NVSYNC;
>=20=20
> -	ret =3D compute_baseline_pipe_bpp(to_intel_crtc(crtc),
> -					pipe_config);
> +	ret =3D compute_baseline_pipe_bpp(state, crtc);
>  	if (ret)
>  		return ret;
>=20=20
> @@ -5684,10 +5686,10 @@ intel_modeset_pipe_config(struct intel_atomic_sta=
te *state,
>  		struct intel_encoder *encoder =3D
>  			to_intel_encoder(connector_state->best_encoder);
>=20=20
> -		if (connector_state->crtc !=3D crtc)
> +		if (connector_state->crtc !=3D &crtc->base)
>  			continue;
>=20=20
> -		if (!check_single_encoder_cloning(state, to_intel_crtc(crtc), encoder)=
) {
> +		if (!check_single_encoder_cloning(state, crtc, encoder)) {
>  			drm_dbg_kms(&i915->drm,
>  				    "rejecting invalid cloning configuration\n");
>  			return -EINVAL;
> @@ -5722,7 +5724,7 @@ intel_modeset_pipe_config(struct intel_atomic_state=
 *state,
>  		struct intel_encoder *encoder =3D
>  			to_intel_encoder(connector_state->best_encoder);
>=20=20
> -		if (connector_state->crtc !=3D crtc)
> +		if (connector_state->crtc !=3D &crtc->base)
>  			continue;
>=20=20
>  		ret =3D encoder->compute_config(encoder, pipe_config,
> @@ -5741,7 +5743,7 @@ intel_modeset_pipe_config(struct intel_atomic_state=
 *state,
>  		pipe_config->port_clock =3D pipe_config->hw.adjusted_mode.crtc_clock
>  			* pipe_config->pixel_multiplier;
>=20=20
> -	ret =3D intel_crtc_compute_config(to_intel_crtc(crtc), pipe_config);
> +	ret =3D intel_crtc_compute_config(state, crtc);
>  	if (ret =3D=3D -EDEADLK)
>  		return ret;
>  	if (ret =3D=3D -EAGAIN) {
> @@ -5772,11 +5774,11 @@ intel_modeset_pipe_config(struct intel_atomic_sta=
te *state,
>  }
>=20=20
>  static int
> -intel_modeset_pipe_config_late(struct intel_crtc_state *crtc_state)
> +intel_modeset_pipe_config_late(struct intel_atomic_state *state,
> +			       struct intel_crtc *crtc)
>  {
> -	struct intel_atomic_state *state =3D
> -		to_intel_atomic_state(crtc_state->uapi.state);
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct drm_connector_state *conn_state;
>  	struct drm_connector *connector;
>  	int i;
> @@ -7705,7 +7707,7 @@ static int intel_atomic_check(struct drm_device *de=
v,
>  		if (!new_crtc_state->hw.enable)
>  			continue;
>=20=20
> -		ret =3D intel_modeset_pipe_config(state, new_crtc_state);
> +		ret =3D intel_modeset_pipe_config(state, crtc);
>  		if (ret)
>  			goto fail;
>=20=20
> @@ -7719,7 +7721,7 @@ static int intel_atomic_check(struct drm_device *de=
v,
>  		if (!intel_crtc_needs_modeset(new_crtc_state))
>  			continue;
>=20=20
> -		ret =3D intel_modeset_pipe_config_late(new_crtc_state);
> +		ret =3D intel_modeset_pipe_config_late(state, crtc);
>  		if (ret)
>  			goto fail;

--=20
Jani Nikula, Intel Open Source Graphics Center
