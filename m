Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 313987EA01D
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 16:35:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7100410E3BA;
	Mon, 13 Nov 2023 15:35:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B684A10E3AF
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Nov 2023 15:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699889754; x=1731425754;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Ia/LmgxZwirTrZ+wlATknAmaHTZMq/h48LfPpRFhbVg=;
 b=VD7M/K1hhlVXxPzAJ6xc9bSHzFF7b4bsoN4BFX4o2I3KSlUyFh+zZJYQ
 fsG52kLpaFfs8BafoR0/7N7MCnT7hzAr7RXFX4fbGOL9dZldYz3Zc5KZJ
 S4lUdUpESgLOCpToseZyOVKwGK1Mw2EFIjZO1xLMjah9KceoqvhCpXVR8
 YZeuLSkK1TmsDCCM+7oFonxUqiv//ANZF/7xBlZ033yZQ5x/7wHj+KFzT
 1T8rw7gL5KDdIrhz3h2RnuAsR4yzi9cBzu7pHPegEKzP5YVxK+0Zl/KtW
 j2v7rMr9tFnlu7huC8nPM4IKgcduqA2qUa74y2OebNZMds0zbuS3++bER g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="375481026"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="375481026"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 07:35:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="881706112"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="881706112"
Received: from cgheban-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.92])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 07:35:50 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231106211915.13406-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231106211915.13406-1-ville.syrjala@linux.intel.com>
 <20231106211915.13406-5-ville.syrjala@linux.intel.com>
Date: Mon, 13 Nov 2023 17:35:48 +0200
Message-ID: <875y25vf6z.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 04/11] drm/i915: Push audio enable/disable
 further out
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
> Push the audio enable/disable to be the last/first thing
> respectively that is done in the encoder enable/disable hooks.
> The goal is to move it further out of these encoder hooks entirely.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c       |  8 ++++----
>  drivers/gpu/drm/i915/display/intel_ddi.c    | 12 ++++--------
>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  8 ++++----
>  3 files changed, 12 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915=
/display/g4x_dp.c
> index e8ee0a08947e..79ef2b435beb 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -482,10 +482,10 @@ static void intel_disable_dp(struct intel_atomic_st=
ate *state,
>  {
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>=20=20
> -	intel_dp->link_trained =3D false;
> -
>  	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
>=20=20
> +	intel_dp->link_trained =3D false;
> +
>  	/*
>  	 * Make sure the panel is off before trying to change the mode.
>  	 * But also ensure that we have vdd while we switch off the panel.
> @@ -686,8 +686,8 @@ static void g4x_enable_dp(struct intel_atomic_state *=
state,
>  			  const struct drm_connector_state *conn_state)
>  {
>  	intel_enable_dp(state, encoder, pipe_config, conn_state);
> -	intel_audio_codec_enable(encoder, pipe_config, conn_state);
>  	intel_edp_backlight_on(pipe_config, conn_state);
> +	intel_audio_codec_enable(encoder, pipe_config, conn_state);
>  }
>=20=20
>  static void vlv_enable_dp(struct intel_atomic_state *state,
> @@ -695,8 +695,8 @@ static void vlv_enable_dp(struct intel_atomic_state *=
state,
>  			  const struct intel_crtc_state *pipe_config,
>  			  const struct drm_connector_state *conn_state)
>  {
> -	intel_audio_codec_enable(encoder, pipe_config, conn_state);
>  	intel_edp_backlight_on(pipe_config, conn_state);
> +	intel_audio_codec_enable(encoder, pipe_config, conn_state);
>  }
>=20=20
>  static void g4x_pre_enable_dp(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index c75fd00e360a..3c2360e2fa43 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3110,8 +3110,6 @@ static void intel_enable_ddi_dp(struct intel_atomic=
_state *state,
>  	if (!dig_port->lspcon.active || intel_dp_has_hdmi_sink(&dig_port->dp))
>  		intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
>=20=20
> -	intel_audio_codec_enable(encoder, crtc_state, conn_state);
> -
>  	trans_port_sync_stop_link_train(state, encoder, crtc_state);
>  }
>=20=20
> @@ -3242,8 +3240,6 @@ static void intel_enable_ddi_hdmi(struct intel_atom=
ic_state *state,
>  	intel_de_write(dev_priv, DDI_BUF_CTL(port), buf_ctl);
>=20=20
>  	intel_wait_ddi_buf_active(dev_priv, port);
> -
> -	intel_audio_codec_enable(encoder, crtc_state, conn_state);
>  }
>=20=20
>  static void intel_enable_ddi(struct intel_atomic_state *state,
> @@ -3269,6 +3265,8 @@ static void intel_enable_ddi(struct intel_atomic_st=
ate *state,
>  		intel_enable_ddi_dp(state, encoder, crtc_state, conn_state);
>=20=20
>  	intel_hdcp_enable(state, encoder, crtc_state, conn_state);
> +
> +	intel_audio_codec_enable(encoder, crtc_state, conn_state);
>  }
>=20=20
>  static void intel_disable_ddi_dp(struct intel_atomic_state *state,
> @@ -3280,8 +3278,6 @@ static void intel_disable_ddi_dp(struct intel_atomi=
c_state *state,
>=20=20
>  	intel_dp->link_trained =3D false;
>=20=20
> -	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
> -
>  	intel_psr_disable(intel_dp, old_crtc_state);
>  	intel_edp_backlight_off(old_conn_state);
>  	/* Disable the decompression in DP Sink */
> @@ -3300,8 +3296,6 @@ static void intel_disable_ddi_hdmi(struct intel_ato=
mic_state *state,
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	struct drm_connector *connector =3D old_conn_state->connector;
>=20=20
> -	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
> -
>  	if (!intel_hdmi_handle_sink_scrambling(encoder, connector,
>  					       false, false))
>  		drm_dbg_kms(&i915->drm,
> @@ -3314,6 +3308,8 @@ static void intel_disable_ddi(struct intel_atomic_s=
tate *state,
>  			      const struct intel_crtc_state *old_crtc_state,
>  			      const struct drm_connector_state *old_conn_state)
>  {
> +	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
> +
>  	intel_tc_port_link_cancel_reset_work(enc_to_dig_port(encoder));
>=20=20
>  	intel_hdcp_disable(to_intel_connector(old_conn_state->connector));
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index de608c8ee7b9..7747f23fa957 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -608,9 +608,9 @@ static void intel_mst_disable_dp(struct intel_atomic_=
state *state,
>  	drm_dbg_kms(&i915->drm, "active links %d\n",
>  		    intel_dp->active_mst_links);
>=20=20
> -	intel_hdcp_disable(intel_mst->connector);
> -
>  	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
> +
> +	intel_hdcp_disable(intel_mst->connector);
>  }
>=20=20
>  static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
> @@ -844,9 +844,9 @@ static void intel_mst_enable_dp(struct intel_atomic_s=
tate *state,
>=20=20
>  	intel_crtc_vblank_on(pipe_config);
>=20=20
> -	intel_audio_codec_enable(encoder, pipe_config, conn_state);
> -
>  	intel_hdcp_enable(state, encoder, pipe_config, conn_state);
> +
> +	intel_audio_codec_enable(encoder, pipe_config, conn_state);
>  }
>=20=20
>  static bool intel_dp_mst_enc_get_hw_state(struct intel_encoder *encoder,

--=20
Jani Nikula, Intel
