Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F18F85FC843
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 17:19:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72B8A10E52A;
	Wed, 12 Oct 2022 15:19:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4B9310E52A
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 15:19:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665587964; x=1697123964;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=oI/dw9xPRdfJkpQXffDAwbnKf/27bmMDbfkZLEYVjpw=;
 b=O2W9oDNRORFn0zxsWOzD8eEPn58t1dpxnMqST7W6qeH4ab3wQ08SILiK
 r5IjMnBbA59kYWYP4Mmt5nEjDjDD1vSITnhYpa2zSqB6m11El/bG/31eG
 ZS0LBA/Kf6vAdyY4si3pNM2RfldAX9wO+8eJ7u7Bs7L9WFnNBWFSiBpRv
 jbgHvFgeaDkZvutPh7j8hX8LcJFJyTphIZBlSE6l1SVq3L3oOHZgMkJAt
 Cgf9Z6AEypWYkAHKMZ955vvs4117rtYsMguCD0GPz4LggslrHJ5ARC1S3
 Q8AZGpgU1XyqlbWBkuYw9lLy0ApJ9ET/h7E7UwXRGigPN4Ty0nl95Z7K3 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="284547935"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="284547935"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 08:19:23 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="801876859"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="801876859"
Received: from jhpuonti-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.226])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 08:19:22 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221011170011.17198-17-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
 <20221011170011.17198-17-ville.syrjala@linux.intel.com>
Date: Wed, 12 Oct 2022 18:19:25 +0300
Message-ID: <87sfjtt6gy.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 16/22] drm/i915/audio: Hardware ELD readout
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
Cc: Takashi Iwai <tiwai@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 11 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Read out the ELD from the hardware buffer so that we can
> hook up the state checker to validate it.
>
> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Cc: Takashi Iwai <tiwai@suse.de>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c      |  2 +
>  drivers/gpu/drm/i915/display/g4x_hdmi.c    |  2 +
>  drivers/gpu/drm/i915/display/intel_audio.c | 88 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_audio.h |  2 +
>  drivers/gpu/drm/i915/display/intel_ddi.c   |  2 +
>  5 files changed, 96 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915=
/display/g4x_dp.c
> index e3e3d27ffb53..4fc7153ad35a 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -397,6 +397,8 @@ static void intel_dp_get_config(struct intel_encoder =
*encoder,
>=20=20
>  	if (intel_dp_is_edp(intel_dp))
>  		intel_edp_fixup_vbt_bpp(encoder, pipe_config->pipe_bpp);
> +
> +	intel_audio_codec_get_config(encoder, pipe_config);
>  }
>=20=20
>  static void
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i9=
15/display/g4x_hdmi.c
> index 8aadf96fa5e9..478878abada6 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -142,6 +142,8 @@ static void intel_hdmi_get_config(struct intel_encode=
r *encoder,
>  	intel_read_infoframe(encoder, pipe_config,
>  			     HDMI_INFOFRAME_TYPE_VENDOR,
>  			     &pipe_config->infoframes.hdmi);
> +
> +	intel_audio_codec_get_config(encoder, pipe_config);
>  }
>=20=20
>  static void g4x_enable_hdmi(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index 39291e870635..328c47719fd8 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -71,6 +71,8 @@ struct intel_audio_funcs {
>  	void (*audio_codec_disable)(struct intel_encoder *encoder,
>  				    const struct intel_crtc_state *old_crtc_state,
>  				    const struct drm_connector_state *old_conn_state);
> +	void (*audio_codec_get_config)(struct intel_encoder *encoder,
> +				       struct intel_crtc_state *crtc_state);
>  };
>=20=20
>  /* DP N/M table */
> @@ -313,6 +315,27 @@ static int g4x_eld_buffer_size(struct drm_i915_priva=
te *i915)
>  	return REG_FIELD_GET(G4X_ELD_BUFFER_SIZE_MASK, tmp);
>  }
>=20=20
> +static void g4x_audio_codec_get_config(struct intel_encoder *encoder,
> +				       struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	u32 *eld =3D (u32 *)crtc_state->eld;
> +	int eld_buffer_size, len, i;
> +	u32 tmp;
> +
> +	tmp =3D intel_de_read(i915, G4X_AUD_CNTL_ST);
> +	if ((tmp & G4X_ELD_VALID) =3D=3D 0)
> +		return;
> +
> +	intel_de_rmw(i915, G4X_AUD_CNTL_ST, G4X_ELD_ADDRESS_MASK, 0);
> +
> +	eld_buffer_size =3D g4x_eld_buffer_size(i915);
> +	len =3D min_t(int, sizeof(crtc_state->eld) / 4, eld_buffer_size);
> +
> +	for (i =3D 0; i < len; i++)
> +		eld[i] =3D intel_de_read(i915, G4X_HDMIW_HDMIEDID);
> +}
> +
>  static void g4x_audio_codec_disable(struct intel_encoder *encoder,
>  				    const struct intel_crtc_state *old_crtc_state,
>  				    const struct drm_connector_state *old_conn_state)
> @@ -467,6 +490,29 @@ static int hsw_eld_buffer_size(struct drm_i915_priva=
te *i915,
>  	return REG_FIELD_GET(IBX_ELD_BUFFER_SIZE_MASK, tmp);
>  }
>=20=20
> +static void hsw_audio_codec_get_config(struct intel_encoder *encoder,
> +				       struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +	u32 *eld =3D (u32 *)crtc_state->eld;
> +	int eld_buffer_size, len, i;
> +	u32 tmp;
> +
> +	tmp =3D intel_de_read(i915, HSW_AUD_PIN_ELD_CP_VLD);
> +	if ((tmp & AUDIO_ELD_VALID(cpu_transcoder)) =3D=3D 0)
> +		return;
> +
> +	intel_de_rmw(i915, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder),
> +		     IBX_ELD_ADDRESS_MASK, 0);
> +
> +	eld_buffer_size =3D hsw_eld_buffer_size(i915, cpu_transcoder);
> +	len =3D min_t(int, sizeof(crtc_state->eld) / 4, eld_buffer_size);
> +
> +	for (i =3D 0; i < len; i++)
> +		eld[i] =3D intel_de_read(i915, HSW_AUD_EDID_DATA(cpu_transcoder));
> +}
> +
>  static void hsw_audio_codec_disable(struct intel_encoder *encoder,
>  				    const struct intel_crtc_state *old_crtc_state,
>  				    const struct drm_connector_state *old_conn_state)
> @@ -700,6 +746,33 @@ static int ilk_eld_buffer_size(struct drm_i915_priva=
te *i915,
>  	return REG_FIELD_GET(IBX_ELD_BUFFER_SIZE_MASK, tmp);
>  }
>=20=20
> +static void ilk_audio_codec_get_config(struct intel_encoder *encoder,
> +				       struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	u32 *eld =3D (u32 *)crtc_state->eld;
> +	enum port port =3D encoder->port;
> +	enum pipe pipe =3D crtc->pipe;
> +	int eld_buffer_size, len, i;
> +	struct ilk_audio_regs regs;
> +	u32 tmp;
> +
> +	ilk_audio_regs_init(i915, pipe, &regs);
> +
> +	tmp =3D intel_de_read(i915, regs.aud_cntrl_st2);
> +	if ((tmp & IBX_ELD_VALID(port)) =3D=3D 0)
> +		return;
> +
> +	intel_de_rmw(i915, regs.aud_cntl_st, IBX_ELD_ADDRESS_MASK, 0);
> +
> +	eld_buffer_size =3D ilk_eld_buffer_size(i915, pipe);
> +	len =3D min_t(int, sizeof(crtc_state->eld) / 4, eld_buffer_size);
> +
> +	for (i =3D 0; i < len; i++)
> +		eld[i] =3D intel_de_read(i915, regs.hdmiw_hdmiedid);
> +}
> +
>  static void ilk_audio_codec_disable(struct intel_encoder *encoder,
>  				    const struct intel_crtc_state *old_crtc_state,
>  				    const struct drm_connector_state *old_conn_state)
> @@ -919,19 +992,34 @@ void intel_audio_codec_disable(struct intel_encoder=
 *encoder,
>  	intel_lpe_audio_notify(i915, pipe, port, NULL, 0, false);
>  }
>=20=20
> +void intel_audio_codec_get_config(struct intel_encoder *encoder,
> +				  struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +
> +	if (!crtc_state->has_audio)
> +		return;
> +
> +	if (i915->display.funcs.audio)
> +		i915->display.funcs.audio->audio_codec_get_config(encoder, crtc_state);
> +}
> +
>  static const struct intel_audio_funcs g4x_audio_funcs =3D {
>  	.audio_codec_enable =3D g4x_audio_codec_enable,
>  	.audio_codec_disable =3D g4x_audio_codec_disable,
> +	.audio_codec_get_config =3D g4x_audio_codec_get_config,
>  };
>=20=20
>  static const struct intel_audio_funcs ilk_audio_funcs =3D {
>  	.audio_codec_enable =3D ilk_audio_codec_enable,
>  	.audio_codec_disable =3D ilk_audio_codec_disable,
> +	.audio_codec_get_config =3D ilk_audio_codec_get_config,
>  };
>=20=20
>  static const struct intel_audio_funcs hsw_audio_funcs =3D {
>  	.audio_codec_enable =3D hsw_audio_codec_enable,
>  	.audio_codec_disable =3D hsw_audio_codec_disable,
> +	.audio_codec_get_config =3D hsw_audio_codec_get_config,
>  };
>=20=20
>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm=
/i915/display/intel_audio.h
> index b9070f336bcf..e35108b7dbc0 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.h
> +++ b/drivers/gpu/drm/i915/display/intel_audio.h
> @@ -23,6 +23,8 @@ void intel_audio_codec_enable(struct intel_encoder *enc=
oder,
>  void intel_audio_codec_disable(struct intel_encoder *encoder,
>  			       const struct intel_crtc_state *old_crtc_state,
>  			       const struct drm_connector_state *old_conn_state);
> +void intel_audio_codec_get_config(struct intel_encoder *encoder,
> +				  struct intel_crtc_state *crtc_state);
>  void intel_audio_cdclk_change_pre(struct drm_i915_private *dev_priv);
>  void intel_audio_cdclk_change_post(struct drm_i915_private *dev_priv);
>  void intel_audio_init(struct drm_i915_private *dev_priv);
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 971356237eca..d7f1bc75cf26 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3463,6 +3463,8 @@ static void intel_ddi_get_config(struct intel_encod=
er *encoder,
>  	intel_read_dp_sdp(encoder, pipe_config, DP_SDP_VSC);
>=20=20
>  	intel_psr_get_config(encoder, pipe_config);
> +
> +	intel_audio_codec_get_config(encoder, pipe_config);
>  }
>=20=20
>  void intel_ddi_get_clock(struct intel_encoder *encoder,

--=20
Jani Nikula, Intel Open Source Graphics Center
