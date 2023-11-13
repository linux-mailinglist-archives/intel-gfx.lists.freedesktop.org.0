Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A8D7EA05E
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 16:43:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CCDB10E3BE;
	Mon, 13 Nov 2023 15:43:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBC4B10E3BE
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Nov 2023 15:43:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699890229; x=1731426229;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=j7B+QRHWmQbtE1N/5puhq7xLPzgZAoCvUk3hc8XdvkY=;
 b=dOou5NMFUY9g18CBlW4b0tAyQtWHUCiHXXq0b9ClVy8tFwfHeBEkYJZr
 Yr/7Y6Nrk8mbUgPg8tsAlvEKi6s7WMPdNGsNvw87AI9I6vTgL9uM1xguB
 1Gv34+gISjK8ow0kHqdRbiHth3vsaCGKb/VtSAKCccr66YGOI0vd35hC8
 0vOOqz7fCgqzyofxACSRrNtoB3TDLTIUtwo8lGnqtlFwtCl9woolnXLpI
 PSRjzaKn67FcvYGmbpT/8fOSlXaiOtIaH22d04gU5GeJNd3thHE5/mXwE
 zFhywxOtG6Xo2w/bhTsdImxrQ2e/kKF6B2wd/AfeGygO/cj88ngRzzkOQ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="12007787"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="12007787"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 07:43:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="908077518"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="908077518"
Received: from cgheban-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.92])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 07:43:28 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231106211915.13406-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231106211915.13406-1-ville.syrjala@linux.intel.com>
 <20231106211915.13406-9-ville.syrjala@linux.intel.com>
Date: Mon, 13 Nov 2023 17:43:26 +0200
Message-ID: <87ttppu09t.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 08/11] drm/i915: Convert audio
 enable/disable into encoder vfuncs
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
> Add encoder vfuncs for audio enable/disable. This will enable
> audio to be enable/disabe during fastsets. An encoder hook

*enabled/disabled

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> is necessary as on pre-hsw platforms different encoder types
> implement audio in different ways.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c         |  8 ++++---
>  drivers/gpu/drm/i915/display/g4x_hdmi.c       | 14 ++++++-----
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  6 +++--
>  .../drm/i915/display/intel_display_types.h    |  6 +++++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  6 +++--
>  drivers/gpu/drm/i915/display/intel_sdvo.c     | 23 ++++++++++++++-----
>  6 files changed, 44 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915=
/display/g4x_dp.c
> index 266cb594d793..96232af42db2 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -516,7 +516,7 @@ static void intel_disable_dp(struct intel_atomic_stat=
e *state,
>  {
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>=20=20
> -	g4x_dp_audio_disable(encoder, old_crtc_state, old_conn_state);
> +	encoder->audio_disable(encoder, old_crtc_state, old_conn_state);
>=20=20
>  	intel_dp->link_trained =3D false;
>=20=20
> @@ -719,7 +719,7 @@ static void g4x_enable_dp(struct intel_atomic_state *=
state,
>  {
>  	intel_enable_dp(state, encoder, pipe_config, conn_state);
>  	intel_edp_backlight_on(pipe_config, conn_state);
> -	g4x_dp_audio_enable(encoder, pipe_config, conn_state);
> +	encoder->audio_enable(encoder, pipe_config, conn_state);
>  }
>=20=20
>  static void vlv_enable_dp(struct intel_atomic_state *state,
> @@ -728,7 +728,7 @@ static void vlv_enable_dp(struct intel_atomic_state *=
state,
>  			  const struct drm_connector_state *conn_state)
>  {
>  	intel_edp_backlight_on(pipe_config, conn_state);
> -	g4x_dp_audio_enable(encoder, pipe_config, conn_state);
> +	encoder->audio_enable(encoder, pipe_config, conn_state);
>  }
>=20=20
>  static void g4x_pre_enable_dp(struct intel_atomic_state *state,
> @@ -1357,6 +1357,8 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
>  		intel_encoder->disable =3D g4x_disable_dp;
>  		intel_encoder->post_disable =3D g4x_post_disable_dp;
>  	}
> +	intel_encoder->audio_enable =3D g4x_dp_audio_enable;
> +	intel_encoder->audio_disable =3D g4x_dp_audio_disable;
>=20=20
>  	if ((IS_IVYBRIDGE(dev_priv) && port =3D=3D PORT_A) ||
>  	    (HAS_PCH_CPT(dev_priv) && port !=3D PORT_A))
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i9=
15/display/g4x_hdmi.c
> index beda6b480bf1..26a0981102ff 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -274,7 +274,7 @@ static void g4x_enable_hdmi(struct intel_atomic_state=
 *state,
>  {
>  	g4x_hdmi_enable_port(encoder, pipe_config);
>=20=20
> -	g4x_hdmi_audio_enable(encoder, pipe_config, conn_state);
> +	encoder->audio_enable(encoder, pipe_config, conn_state);
>  }
>=20=20
>  static void ibx_enable_hdmi(struct intel_atomic_state *state,
> @@ -323,7 +323,7 @@ static void ibx_enable_hdmi(struct intel_atomic_state=
 *state,
>  		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
>  	}
>=20=20
> -	g4x_hdmi_audio_enable(encoder, pipe_config, conn_state);
> +	encoder->audio_enable(encoder, pipe_config, conn_state);
>  }
>=20=20
>  static void cpt_enable_hdmi(struct intel_atomic_state *state,
> @@ -374,7 +374,7 @@ static void cpt_enable_hdmi(struct intel_atomic_state=
 *state,
>  			     TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE, 0);
>  	}
>=20=20
> -	g4x_hdmi_audio_enable(encoder, pipe_config, conn_state);
> +	encoder->audio_enable(encoder, pipe_config, conn_state);
>  }
>=20=20
>  static void vlv_enable_hdmi(struct intel_atomic_state *state,
> @@ -382,7 +382,7 @@ static void vlv_enable_hdmi(struct intel_atomic_state=
 *state,
>  			    const struct intel_crtc_state *pipe_config,
>  			    const struct drm_connector_state *conn_state)
>  {
> -	g4x_hdmi_audio_enable(encoder, pipe_config, conn_state);
> +	encoder->audio_enable(encoder, pipe_config, conn_state);
>  }
>=20=20
>  static void intel_disable_hdmi(struct intel_atomic_state *state,
> @@ -449,7 +449,7 @@ static void g4x_disable_hdmi(struct intel_atomic_stat=
e *state,
>  			     const struct intel_crtc_state *old_crtc_state,
>  			     const struct drm_connector_state *old_conn_state)
>  {
> -	g4x_hdmi_audio_disable(encoder, old_crtc_state, old_conn_state);
> +	encoder->audio_disable(encoder, old_crtc_state, old_conn_state);
>=20=20
>  	intel_disable_hdmi(state, encoder, old_crtc_state, old_conn_state);
>  }
> @@ -459,7 +459,7 @@ static void pch_disable_hdmi(struct intel_atomic_stat=
e *state,
>  			     const struct intel_crtc_state *old_crtc_state,
>  			     const struct drm_connector_state *old_conn_state)
>  {
> -	g4x_hdmi_audio_disable(encoder, old_crtc_state, old_conn_state);
> +	encoder->audio_disable(encoder, old_crtc_state, old_conn_state);
>  }
>=20=20
>  static void pch_post_disable_hdmi(struct intel_atomic_state *state,
> @@ -766,6 +766,8 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
>  		else
>  			intel_encoder->enable =3D g4x_enable_hdmi;
>  	}
> +	intel_encoder->audio_enable =3D g4x_hdmi_audio_enable;
> +	intel_encoder->audio_disable =3D g4x_hdmi_audio_disable;
>  	intel_encoder->shutdown =3D intel_hdmi_encoder_shutdown;
>=20=20
>  	intel_encoder->type =3D INTEL_OUTPUT_HDMI;
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 3c2360e2fa43..2e4920d70105 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3266,7 +3266,7 @@ static void intel_enable_ddi(struct intel_atomic_st=
ate *state,
>=20=20
>  	intel_hdcp_enable(state, encoder, crtc_state, conn_state);
>=20=20
> -	intel_audio_codec_enable(encoder, crtc_state, conn_state);
> +	encoder->audio_enable(encoder, crtc_state, conn_state);
>  }
>=20=20
>  static void intel_disable_ddi_dp(struct intel_atomic_state *state,
> @@ -3308,7 +3308,7 @@ static void intel_disable_ddi(struct intel_atomic_s=
tate *state,
>  			      const struct intel_crtc_state *old_crtc_state,
>  			      const struct drm_connector_state *old_conn_state)
>  {
> -	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
> +	encoder->audio_disable(encoder, old_crtc_state, old_conn_state);
>=20=20
>  	intel_tc_port_link_cancel_reset_work(enc_to_dig_port(encoder));
>=20=20
> @@ -4841,6 +4841,8 @@ void intel_ddi_init(struct drm_i915_private *dev_pr=
iv,
>  	encoder->post_pll_disable =3D intel_ddi_post_pll_disable;
>  	encoder->post_disable =3D intel_ddi_post_disable;
>  	encoder->update_pipe =3D intel_ddi_update_pipe;
> +	encoder->audio_enable =3D intel_audio_codec_enable;
> +	encoder->audio_disable =3D intel_audio_codec_disable;
>  	encoder->get_hw_state =3D intel_ddi_get_hw_state;
>  	encoder->sync_state =3D intel_ddi_sync_state;
>  	encoder->initial_fastset_check =3D intel_ddi_initial_fastset_check;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 047fe3f8905a..5e62e8ae6326 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -198,6 +198,12 @@ struct intel_encoder {
>  			    struct intel_encoder *,
>  			    const struct intel_crtc_state *,
>  			    const struct drm_connector_state *);
> +	void (*audio_enable)(struct intel_encoder *encoder,
> +			     const struct intel_crtc_state *crtc_state,
> +			     const struct drm_connector_state *conn_state);
> +	void (*audio_disable)(struct intel_encoder *encoder,
> +			      const struct intel_crtc_state *old_crtc_state,
> +			      const struct drm_connector_state *old_conn_state);
>  	/* Read out the current hw state of this connector, returning true if
>  	 * the encoder is active. If the encoder is enabled it also set the pipe
>  	 * it is connected to in the pipe parameter. */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 7747f23fa957..5f0ccab5ab1f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -608,7 +608,7 @@ static void intel_mst_disable_dp(struct intel_atomic_=
state *state,
>  	drm_dbg_kms(&i915->drm, "active links %d\n",
>  		    intel_dp->active_mst_links);
>=20=20
> -	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
> +	encoder->audio_disable(encoder, old_crtc_state, old_conn_state);
>=20=20
>  	intel_hdcp_disable(intel_mst->connector);
>  }
> @@ -846,7 +846,7 @@ static void intel_mst_enable_dp(struct intel_atomic_s=
tate *state,
>=20=20
>  	intel_hdcp_enable(state, encoder, pipe_config, conn_state);
>=20=20
> -	intel_audio_codec_enable(encoder, pipe_config, conn_state);
> +	encoder->audio_enable(encoder, pipe_config, conn_state);
>  }
>=20=20
>  static bool intel_dp_mst_enc_get_hw_state(struct intel_encoder *encoder,
> @@ -1267,6 +1267,8 @@ intel_dp_create_fake_mst_encoder(struct intel_digit=
al_port *dig_port, enum pipe
>  	intel_encoder->pre_pll_enable =3D intel_mst_pre_pll_enable_dp;
>  	intel_encoder->pre_enable =3D intel_mst_pre_enable_dp;
>  	intel_encoder->enable =3D intel_mst_enable_dp;
> +	intel_encoder->audio_enable =3D intel_audio_codec_enable;
> +	intel_encoder->audio_disable =3D intel_audio_codec_disable;
>  	intel_encoder->get_hw_state =3D intel_dp_mst_enc_get_hw_state;
>  	intel_encoder->get_config =3D intel_dp_mst_enc_get_config;
>  	intel_encoder->initial_fastset_check =3D intel_dp_mst_initial_fastset_c=
heck;
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index a636f42ceae5..c7af7e046188 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -1787,17 +1787,28 @@ static void intel_sdvo_get_config(struct intel_en=
coder *encoder,
>  	intel_sdvo_get_eld(intel_sdvo, pipe_config);
>  }
>=20=20
> -static void intel_sdvo_disable_audio(struct intel_sdvo *intel_sdvo)
> +static void intel_sdvo_disable_audio(struct intel_encoder *encoder,
> +				     const struct intel_crtc_state *old_crtc_state,
> +				     const struct drm_connector_state *old_conn_state)
>  {
> +	struct intel_sdvo *intel_sdvo =3D to_sdvo(encoder);
> +
> +	if (!old_crtc_state->has_audio)
> +		return;
> +
>  	intel_sdvo_set_audio_state(intel_sdvo, 0);
>  }
>=20=20
> -static void intel_sdvo_enable_audio(struct intel_sdvo *intel_sdvo,
> +static void intel_sdvo_enable_audio(struct intel_encoder *encoder,
>  				    const struct intel_crtc_state *crtc_state,
>  				    const struct drm_connector_state *conn_state)
>  {
> +	struct intel_sdvo *intel_sdvo =3D to_sdvo(encoder);
>  	const u8 *eld =3D crtc_state->eld;
>=20=20
> +	if (!crtc_state->has_audio)
> +		return;
> +
>  	intel_sdvo_set_audio_state(intel_sdvo, 0);
>=20=20
>  	intel_sdvo_write_infoframe(intel_sdvo, SDVO_HBUF_INDEX_ELD,
> @@ -1818,8 +1829,7 @@ static void intel_disable_sdvo(struct intel_atomic_=
state *state,
>  	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
>  	u32 temp;
>=20=20
> -	if (old_crtc_state->has_audio)
> -		intel_sdvo_disable_audio(intel_sdvo);
> +	encoder->audio_disable(encoder, old_crtc_state, conn_state);
>=20=20
>  	intel_sdvo_set_active_outputs(intel_sdvo, 0);
>  	if (0)
> @@ -1913,8 +1923,7 @@ static void intel_enable_sdvo(struct intel_atomic_s=
tate *state,
>  						   DRM_MODE_DPMS_ON);
>  	intel_sdvo_set_active_outputs(intel_sdvo, intel_sdvo_connector->output_=
flag);
>=20=20
> -	if (pipe_config->has_audio)
> -		intel_sdvo_enable_audio(intel_sdvo, pipe_config, conn_state);
> +	encoder->audio_enable(encoder, pipe_config, conn_state);
>  }
>=20=20
>  static enum drm_mode_status
> @@ -3390,6 +3399,8 @@ bool intel_sdvo_init(struct drm_i915_private *dev_p=
riv,
>  	}
>  	intel_encoder->pre_enable =3D intel_sdvo_pre_enable;
>  	intel_encoder->enable =3D intel_enable_sdvo;
> +	intel_encoder->audio_enable =3D intel_sdvo_enable_audio;
> +	intel_encoder->audio_disable =3D intel_sdvo_disable_audio;
>  	intel_encoder->get_hw_state =3D intel_sdvo_get_hw_state;
>  	intel_encoder->get_config =3D intel_sdvo_get_config;

--=20
Jani Nikula, Intel
