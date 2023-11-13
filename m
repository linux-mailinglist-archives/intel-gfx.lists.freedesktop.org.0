Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BEA37EA073
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 16:47:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE9E610E3C1;
	Mon, 13 Nov 2023 15:47:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E877510E3C1
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Nov 2023 15:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699890441; x=1731426441;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=DlSPyJ6MDWkBDZlqDntdQrmthyec3xq5BIt6HSnjjaw=;
 b=l9WzFQc6DFuDgwo5nqh94fFDi6GxOeKn19uUIaDdx6nr4rbscwKvHXoa
 QbP5KYUxxbDhKttyrENTtwGAT8j5WVN9gbOyy/kBMRIziuQKD/c+QBN8G
 x/rTfQReXXNPG0TdxOzwoBQ2qNtVLrnNLUQ+qydj/FTJ8maDAwCvSKQV2
 VHiiHe6ORQTKZvm8PBSzF0k/KGCGQUqlqKwQCeZ76jGs59lOVppq6xb3L
 Wl8Ps1W/SlMFLx533cCGfbw2g7/KpY3idErEzVK1wF1kwoxPEOswdHiv/
 +XSY2/syQjxWXCJ5hBUzs5ORQQRpvjbtnCN68OgxtTjP3NyPhuVoZ9dLZ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="375483084"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="375483084"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 07:47:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="1011572918"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="1011572918"
Received: from cgheban-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.92])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 07:47:19 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231106211915.13406-10-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231106211915.13406-1-ville.syrjala@linux.intel.com>
 <20231106211915.13406-10-ville.syrjala@linux.intel.com>
Date: Mon, 13 Nov 2023 17:47:17 +0200
Message-ID: <87o7fxu03e.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 09/11] drm/i915: Hoist the
 encoder->audio_{enable, disable}() calls higher up
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
> Push he encoder->audio_{enable,disable}() calls out from the

*the

> encoder->{enable,disable}() hooks. Moving towards audio fastset.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c        |  2 -
>  drivers/gpu/drm/i915/display/g4x_hdmi.c      | 10 ----
>  drivers/gpu/drm/i915/display/intel_ddi.c     |  3 --
>  drivers/gpu/drm/i915/display/intel_display.c | 49 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c  |  4 --
>  5 files changed, 49 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915=
/display/g4x_dp.c
> index 96232af42db2..dfe0b07a122d 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -516,8 +516,6 @@ static void intel_disable_dp(struct intel_atomic_stat=
e *state,
>  {
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>=20=20
> -	encoder->audio_disable(encoder, old_crtc_state, old_conn_state);
> -
>  	intel_dp->link_trained =3D false;
>=20=20
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i9=
15/display/g4x_hdmi.c
> index 26a0981102ff..8096492b3fad 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -273,8 +273,6 @@ static void g4x_enable_hdmi(struct intel_atomic_state=
 *state,
>  			    const struct drm_connector_state *conn_state)
>  {
>  	g4x_hdmi_enable_port(encoder, pipe_config);
> -
> -	encoder->audio_enable(encoder, pipe_config, conn_state);
>  }
>=20=20
>  static void ibx_enable_hdmi(struct intel_atomic_state *state,
> @@ -322,8 +320,6 @@ static void ibx_enable_hdmi(struct intel_atomic_state=
 *state,
>  		intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
>  		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
>  	}
> -
> -	encoder->audio_enable(encoder, pipe_config, conn_state);
>  }
>=20=20
>  static void cpt_enable_hdmi(struct intel_atomic_state *state,
> @@ -373,8 +369,6 @@ static void cpt_enable_hdmi(struct intel_atomic_state=
 *state,
>  		intel_de_rmw(dev_priv, TRANS_CHICKEN1(pipe),
>  			     TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE, 0);
>  	}
> -
> -	encoder->audio_enable(encoder, pipe_config, conn_state);
>  }
>=20=20
>  static void vlv_enable_hdmi(struct intel_atomic_state *state,
> @@ -382,7 +376,6 @@ static void vlv_enable_hdmi(struct intel_atomic_state=
 *state,
>  			    const struct intel_crtc_state *pipe_config,
>  			    const struct drm_connector_state *conn_state)
>  {
> -	encoder->audio_enable(encoder, pipe_config, conn_state);
>  }
>=20=20
>  static void intel_disable_hdmi(struct intel_atomic_state *state,
> @@ -449,8 +442,6 @@ static void g4x_disable_hdmi(struct intel_atomic_stat=
e *state,
>  			     const struct intel_crtc_state *old_crtc_state,
>  			     const struct drm_connector_state *old_conn_state)
>  {
> -	encoder->audio_disable(encoder, old_crtc_state, old_conn_state);
> -
>  	intel_disable_hdmi(state, encoder, old_crtc_state, old_conn_state);
>  }
>=20=20
> @@ -459,7 +450,6 @@ static void pch_disable_hdmi(struct intel_atomic_stat=
e *state,
>  			     const struct intel_crtc_state *old_crtc_state,
>  			     const struct drm_connector_state *old_conn_state)
>  {
> -	encoder->audio_disable(encoder, old_crtc_state, old_conn_state);
>  }
>=20=20
>  static void pch_post_disable_hdmi(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 2e4920d70105..97569423f430 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3266,7 +3266,6 @@ static void intel_enable_ddi(struct intel_atomic_st=
ate *state,
>=20=20
>  	intel_hdcp_enable(state, encoder, crtc_state, conn_state);
>=20=20
> -	encoder->audio_enable(encoder, crtc_state, conn_state);
>  }
>=20=20
>  static void intel_disable_ddi_dp(struct intel_atomic_state *state,
> @@ -3308,8 +3307,6 @@ static void intel_disable_ddi(struct intel_atomic_s=
tate *state,
>  			      const struct intel_crtc_state *old_crtc_state,
>  			      const struct drm_connector_state *old_conn_state)
>  {
> -	encoder->audio_disable(encoder, old_crtc_state, old_conn_state);
> -
>  	intel_tc_port_link_cancel_reset_work(enc_to_dig_port(encoder));
>=20=20
>  	intel_hdcp_disable(to_intel_connector(old_conn_state->connector));
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index ec76006b1756..d606befa007c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -889,6 +889,48 @@ static bool needs_async_flip_vtd_wa(const struct int=
el_crtc_state *crtc_state)
>  		(DISPLAY_VER(i915) =3D=3D 9 || IS_BROADWELL(i915) || IS_HASWELL(i915));
>  }
>=20=20
> +static void intel_encoders_audio_enable(struct intel_atomic_state *state,
> +					struct intel_crtc *crtc)
> +{
> +	const struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	const struct drm_connector_state *conn_state;
> +	struct drm_connector *conn;
> +	int i;
> +
> +	for_each_new_connector_in_state(&state->base, conn, conn_state, i) {
> +		struct intel_encoder *encoder =3D
> +			to_intel_encoder(conn_state->best_encoder);
> +
> +		if (conn_state->crtc !=3D &crtc->base)
> +			continue;
> +
> +		if (encoder->audio_enable)
> +			encoder->audio_enable(encoder, crtc_state, conn_state);
> +	}
> +}
> +
> +static void intel_encoders_audio_disable(struct intel_atomic_state *stat=
e,
> +					 struct intel_crtc *crtc)
> +{
> +	const struct intel_crtc_state *old_crtc_state =3D
> +		intel_atomic_get_old_crtc_state(state, crtc);
> +	const struct drm_connector_state *old_conn_state;
> +	struct drm_connector *conn;
> +	int i;
> +
> +	for_each_old_connector_in_state(&state->base, conn, old_conn_state, i) {
> +		struct intel_encoder *encoder =3D
> +			to_intel_encoder(old_conn_state->best_encoder);
> +
> +		if (old_conn_state->crtc !=3D &crtc->base)
> +			continue;
> +
> +		if (encoder->audio_disable)
> +			encoder->audio_disable(encoder, old_crtc_state, old_conn_state);
> +	}
> +}
> +
>  #define is_enabling(feature, old_crtc_state, new_crtc_state) \
>  	((!(old_crtc_state)->feature || intel_crtc_needs_modeset(new_crtc_state=
)) && \
>  	 (new_crtc_state)->feature)
> @@ -1461,6 +1503,7 @@ static void ilk_crtc_enable(struct intel_atomic_sta=
te *state,
>  	intel_crtc_vblank_on(new_crtc_state);
>=20=20
>  	intel_encoders_enable(state, crtc);
> +	intel_encoders_audio_enable(state, crtc);
>=20=20
>  	if (HAS_PCH_CPT(dev_priv))
>  		intel_wait_for_pipe_scanline_moving(crtc);
> @@ -1634,6 +1677,7 @@ static void hsw_crtc_enable(struct intel_atomic_sta=
te *state,
>  		intel_crtc_vblank_on(new_crtc_state);
>=20=20
>  	intel_encoders_enable(state, crtc);
> +	intel_encoders_audio_enable(state, crtc);
>=20=20
>  	if (psl_clkgate_wa) {
>  		intel_crtc_wait_for_next_vblank(crtc);
> @@ -1685,6 +1729,7 @@ static void ilk_crtc_disable(struct intel_atomic_st=
ate *state,
>  	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
>  	intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, false);
>=20=20
> +	intel_encoders_audio_disable(state, crtc);
>  	intel_encoders_disable(state, crtc);
>=20=20
>  	intel_crtc_vblank_off(old_crtc_state);
> @@ -1719,6 +1764,7 @@ static void hsw_crtc_disable(struct intel_atomic_st=
ate *state,
>  	 * Need care with mst->ddi interactions.
>  	 */
>  	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state)) {
> +		intel_encoders_audio_disable(state, crtc);
>  		intel_encoders_disable(state, crtc);
>  		intel_encoders_post_disable(state, crtc);
>  	}
> @@ -1988,6 +2034,7 @@ static void valleyview_crtc_enable(struct intel_ato=
mic_state *state,
>  	intel_crtc_vblank_on(new_crtc_state);
>=20=20
>  	intel_encoders_enable(state, crtc);
> +	intel_encoders_audio_enable(state, crtc);
>  }
>=20=20
>  static void i9xx_crtc_enable(struct intel_atomic_state *state,
> @@ -2029,6 +2076,7 @@ static void i9xx_crtc_enable(struct intel_atomic_st=
ate *state,
>  	intel_crtc_vblank_on(new_crtc_state);
>=20=20
>  	intel_encoders_enable(state, crtc);
> +	intel_encoders_audio_enable(state, crtc);
>=20=20
>  	/* prevents spurious underruns */
>  	if (DISPLAY_VER(dev_priv) =3D=3D 2)
> @@ -2065,6 +2113,7 @@ static void i9xx_crtc_disable(struct intel_atomic_s=
tate *state,
>  	if (DISPLAY_VER(dev_priv) =3D=3D 2)
>  		intel_crtc_wait_for_next_vblank(crtc);
>=20=20
> +	intel_encoders_audio_disable(state, crtc);
>  	intel_encoders_disable(state, crtc);
>=20=20
>  	intel_crtc_vblank_off(old_crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 5f0ccab5ab1f..70ab93b3f141 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -608,8 +608,6 @@ static void intel_mst_disable_dp(struct intel_atomic_=
state *state,
>  	drm_dbg_kms(&i915->drm, "active links %d\n",
>  		    intel_dp->active_mst_links);
>=20=20
> -	encoder->audio_disable(encoder, old_crtc_state, old_conn_state);
> -
>  	intel_hdcp_disable(intel_mst->connector);
>  }
>=20=20
> @@ -845,8 +843,6 @@ static void intel_mst_enable_dp(struct intel_atomic_s=
tate *state,
>  	intel_crtc_vblank_on(pipe_config);
>=20=20
>  	intel_hdcp_enable(state, encoder, pipe_config, conn_state);
> -
> -	encoder->audio_enable(encoder, pipe_config, conn_state);
>  }
>=20=20
>  static bool intel_dp_mst_enc_get_hw_state(struct intel_encoder *encoder,

--=20
Jani Nikula, Intel
