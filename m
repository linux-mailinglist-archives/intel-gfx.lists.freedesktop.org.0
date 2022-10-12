Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6AC5FC777
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 16:36:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E23310E2EA;
	Wed, 12 Oct 2022 14:35:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3FF410E2E3
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 14:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665585351; x=1697121351;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=RHGDspiEM4obv6yCJ0/RE93Bv/H+z9t2LvYxRg790zs=;
 b=Q9mNk/tUoVaW3V8beE+y6/+cACMqlAgXP9Sb06EE0HZL+QGT7kieMfNZ
 0NKK40BDkBePg4HcTzQFf0MSDLO//fV9eTPeGxmN4r0n45E73lemtEHOo
 6Cj6LekWLVtEwsdhpLO314NI+0dGUa/o4KGpX5jEFQsxCGxAjr8OVu4Lo
 g0oAltFtcJTenEw1guCYX9ADgZaq0Hcd2fgsvWi2E6rCJu9MLjSIzK3LG
 +1p69Ql09FPL7OEWiVeEc5R1jDd6+VF9jdOOZnf4dA30chtgNplI9JPk5
 j576qzXIOjeJP/O7+PpFzxOw119riHDBTwfBs0EJOCYmaJRQqmeEV4fDX A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="368976257"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="368976257"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 07:35:51 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="955775192"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="955775192"
Received: from jhpuonti-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.226])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 07:35:48 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221011170011.17198-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
 <20221011170011.17198-2-ville.syrjala@linux.intel.com>
Date: Wed, 12 Oct 2022 17:35:51 +0300
Message-ID: <877d15w1mg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 01/22] drm/i915/audio: s/dev_priv/i915/
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
> Rename the 'dev_priv' variables to 'i915' in the audio code
> to match modern style conventions.
>
> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Cc: Takashi Iwai <tiwai@suse.de>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_audio.c    | 390 +++++++++---------
>  .../gpu/drm/i915/display/intel_audio_regs.h   |   2 +-
>  2 files changed, 196 insertions(+), 196 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index aacbc6da84ef..b6220f767417 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -250,7 +250,7 @@ static const struct hdmi_aud_ncts hdmi_aud_ncts_36bpp=
[] =3D {
>  /* get AUD_CONFIG_PIXEL_CLOCK_HDMI_* value for mode */
>  static u32 audio_config_hdmi_pixel_clock(const struct intel_crtc_state *=
crtc_state)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> +	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
>  	const struct drm_display_mode *adjusted_mode =3D
>  		&crtc_state->hw.adjusted_mode;
>  	int i;
> @@ -260,17 +260,17 @@ static u32 audio_config_hdmi_pixel_clock(const stru=
ct intel_crtc_state *crtc_sta
>  			break;
>  	}
>=20=20
> -	if (DISPLAY_VER(dev_priv) < 12 && adjusted_mode->crtc_clock > 148500)
> +	if (DISPLAY_VER(i915) < 12 && adjusted_mode->crtc_clock > 148500)
>  		i =3D ARRAY_SIZE(hdmi_audio_clock);
>=20=20
>  	if (i =3D=3D ARRAY_SIZE(hdmi_audio_clock)) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "HDMI audio pixel clock setting for %d not found, falling back to=
 defaults\n",
>  			    adjusted_mode->crtc_clock);
>  		i =3D 1;
>  	}
>=20=20
> -	drm_dbg_kms(&dev_priv->drm,
> +	drm_dbg_kms(&i915->drm,
>  		    "Configuring HDMI audio for pixel clock %d (0x%08x)\n",
>  		    hdmi_audio_clock[i].clock,
>  		    hdmi_audio_clock[i].config);
> @@ -309,23 +309,23 @@ static bool intel_eld_uptodate(struct drm_connector=
 *connector,
>  			       i915_reg_t reg_elda, u32 bits_elda,
>  			       i915_reg_t reg_edid)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
> +	struct drm_i915_private *i915 =3D to_i915(connector->dev);
>  	const u8 *eld =3D connector->eld;
>  	u32 tmp;
>  	int i;
>=20=20
> -	tmp =3D intel_de_read(dev_priv, reg_eldv);
> +	tmp =3D intel_de_read(i915, reg_eldv);
>  	tmp &=3D bits_eldv;
>=20=20
>  	if (!tmp)
>  		return false;
>=20=20
> -	tmp =3D intel_de_read(dev_priv, reg_elda);
> +	tmp =3D intel_de_read(i915, reg_elda);
>  	tmp &=3D ~bits_elda;
> -	intel_de_write(dev_priv, reg_elda, tmp);
> +	intel_de_write(i915, reg_elda, tmp);
>=20=20
>  	for (i =3D 0; i < drm_eld_size(eld) / 4; i++)
> -		if (intel_de_read(dev_priv, reg_edid) !=3D *((const u32 *)eld + i))
> +		if (intel_de_read(i915, reg_edid) !=3D *((const u32 *)eld + i))
>  			return false;
>=20=20
>  	return true;
> @@ -335,33 +335,33 @@ static void g4x_audio_codec_disable(struct intel_en=
coder *encoder,
>  				    const struct intel_crtc_state *old_crtc_state,
>  				    const struct drm_connector_state *old_conn_state)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	u32 eldv, tmp;
>=20=20
> -	tmp =3D intel_de_read(dev_priv, G4X_AUD_VID_DID);
> +	tmp =3D intel_de_read(i915, G4X_AUD_VID_DID);
>  	if (tmp =3D=3D INTEL_AUDIO_DEVBLC || tmp =3D=3D INTEL_AUDIO_DEVCL)
>  		eldv =3D G4X_ELDV_DEVCL_DEVBLC;
>  	else
>  		eldv =3D G4X_ELDV_DEVCTG;
>=20=20
>  	/* Invalidate ELD */
> -	tmp =3D intel_de_read(dev_priv, G4X_AUD_CNTL_ST);
> +	tmp =3D intel_de_read(i915, G4X_AUD_CNTL_ST);
>  	tmp &=3D ~eldv;
> -	intel_de_write(dev_priv, G4X_AUD_CNTL_ST, tmp);
> +	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
>  }
>=20=20
>  static void g4x_audio_codec_enable(struct intel_encoder *encoder,
>  				   const struct intel_crtc_state *crtc_state,
>  				   const struct drm_connector_state *conn_state)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	struct drm_connector *connector =3D conn_state->connector;
>  	const u8 *eld =3D connector->eld;
>  	u32 eldv;
>  	u32 tmp;
>  	int len, i;
>=20=20
> -	tmp =3D intel_de_read(dev_priv, G4X_AUD_VID_DID);
> +	tmp =3D intel_de_read(i915, G4X_AUD_VID_DID);
>  	if (tmp =3D=3D INTEL_AUDIO_DEVBLC || tmp =3D=3D INTEL_AUDIO_DEVCL)
>  		eldv =3D G4X_ELDV_DEVCL_DEVBLC;
>  	else
> @@ -373,27 +373,27 @@ static void g4x_audio_codec_enable(struct intel_enc=
oder *encoder,
>  			       G4X_HDMIW_HDMIEDID))
>  		return;
>=20=20
> -	tmp =3D intel_de_read(dev_priv, G4X_AUD_CNTL_ST);
> +	tmp =3D intel_de_read(i915, G4X_AUD_CNTL_ST);
>  	tmp &=3D ~(eldv | G4X_ELD_ADDR_MASK);
>  	len =3D (tmp >> 9) & 0x1f;		/* ELD buffer size */
> -	intel_de_write(dev_priv, G4X_AUD_CNTL_ST, tmp);
> +	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
>=20=20
>  	len =3D min(drm_eld_size(eld) / 4, len);
>  	for (i =3D 0; i < len; i++)
> -		intel_de_write(dev_priv, G4X_HDMIW_HDMIEDID,
> +		intel_de_write(i915, G4X_HDMIW_HDMIEDID,
>  			       *((const u32 *)eld + i));
>=20=20
> -	tmp =3D intel_de_read(dev_priv, G4X_AUD_CNTL_ST);
> +	tmp =3D intel_de_read(i915, G4X_AUD_CNTL_ST);
>  	tmp |=3D eldv;
> -	intel_de_write(dev_priv, G4X_AUD_CNTL_ST, tmp);
> +	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
>  }
>=20=20
>  static void
>  hsw_dp_audio_config_update(struct intel_encoder *encoder,
>  			   const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	struct i915_audio_component *acomp =3D dev_priv->display.audio.componen=
t;
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct i915_audio_component *acomp =3D i915->display.audio.component;
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>  	enum port port =3D encoder->port;
>  	const struct dp_aud_n_m *nm;
> @@ -403,12 +403,12 @@ hsw_dp_audio_config_update(struct intel_encoder *en=
coder,
>  	rate =3D acomp ? acomp->aud_sample_rate[port] : 0;
>  	nm =3D audio_config_dp_get_n_m(crtc_state, rate);
>  	if (nm)
> -		drm_dbg_kms(&dev_priv->drm, "using Maud %u, Naud %u\n", nm->m,
> +		drm_dbg_kms(&i915->drm, "using Maud %u, Naud %u\n", nm->m,
>  			    nm->n);
>  	else
> -		drm_dbg_kms(&dev_priv->drm, "using automatic Maud, Naud\n");
> +		drm_dbg_kms(&i915->drm, "using automatic Maud, Naud\n");
>=20=20
> -	tmp =3D intel_de_read(dev_priv, HSW_AUD_CFG(cpu_transcoder));
> +	tmp =3D intel_de_read(i915, HSW_AUD_CFG(cpu_transcoder));
>  	tmp &=3D ~AUD_CONFIG_N_VALUE_INDEX;
>  	tmp &=3D ~AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK;
>  	tmp &=3D ~AUD_CONFIG_N_PROG_ENABLE;
> @@ -420,9 +420,9 @@ hsw_dp_audio_config_update(struct intel_encoder *enco=
der,
>  		tmp |=3D AUD_CONFIG_N_PROG_ENABLE;
>  	}
>=20=20
> -	intel_de_write(dev_priv, HSW_AUD_CFG(cpu_transcoder), tmp);
> +	intel_de_write(i915, HSW_AUD_CFG(cpu_transcoder), tmp);
>=20=20
> -	tmp =3D intel_de_read(dev_priv, HSW_AUD_M_CTS_ENABLE(cpu_transcoder));
> +	tmp =3D intel_de_read(i915, HSW_AUD_M_CTS_ENABLE(cpu_transcoder));
>  	tmp &=3D ~AUD_CONFIG_M_MASK;
>  	tmp &=3D ~AUD_M_CTS_M_VALUE_INDEX;
>  	tmp &=3D ~AUD_M_CTS_M_PROG_ENABLE;
> @@ -433,15 +433,15 @@ hsw_dp_audio_config_update(struct intel_encoder *en=
coder,
>  		tmp |=3D AUD_M_CTS_M_PROG_ENABLE;
>  	}
>=20=20
> -	intel_de_write(dev_priv, HSW_AUD_M_CTS_ENABLE(cpu_transcoder), tmp);
> +	intel_de_write(i915, HSW_AUD_M_CTS_ENABLE(cpu_transcoder), tmp);
>  }
>=20=20
>  static void
>  hsw_hdmi_audio_config_update(struct intel_encoder *encoder,
>  			     const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	struct i915_audio_component *acomp =3D dev_priv->display.audio.componen=
t;
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct i915_audio_component *acomp =3D i915->display.audio.component;
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>  	enum port port =3D encoder->port;
>  	int n, rate;
> @@ -449,7 +449,7 @@ hsw_hdmi_audio_config_update(struct intel_encoder *en=
coder,
>=20=20
>  	rate =3D acomp ? acomp->aud_sample_rate[port] : 0;
>=20=20
> -	tmp =3D intel_de_read(dev_priv, HSW_AUD_CFG(cpu_transcoder));
> +	tmp =3D intel_de_read(i915, HSW_AUD_CFG(cpu_transcoder));
>  	tmp &=3D ~AUD_CONFIG_N_VALUE_INDEX;
>  	tmp &=3D ~AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK;
>  	tmp &=3D ~AUD_CONFIG_N_PROG_ENABLE;
> @@ -457,25 +457,25 @@ hsw_hdmi_audio_config_update(struct intel_encoder *=
encoder,
>=20=20
>  	n =3D audio_config_hdmi_get_n(crtc_state, rate);
>  	if (n !=3D 0) {
> -		drm_dbg_kms(&dev_priv->drm, "using N %d\n", n);
> +		drm_dbg_kms(&i915->drm, "using N %d\n", n);
>=20=20
>  		tmp &=3D ~AUD_CONFIG_N_MASK;
>  		tmp |=3D AUD_CONFIG_N(n);
>  		tmp |=3D AUD_CONFIG_N_PROG_ENABLE;
>  	} else {
> -		drm_dbg_kms(&dev_priv->drm, "using automatic N\n");
> +		drm_dbg_kms(&i915->drm, "using automatic N\n");
>  	}
>=20=20
> -	intel_de_write(dev_priv, HSW_AUD_CFG(cpu_transcoder), tmp);
> +	intel_de_write(i915, HSW_AUD_CFG(cpu_transcoder), tmp);
>=20=20
>  	/*
>  	 * Let's disable "Enable CTS or M Prog bit"
>  	 * and let HW calculate the value
>  	 */
> -	tmp =3D intel_de_read(dev_priv, HSW_AUD_M_CTS_ENABLE(cpu_transcoder));
> +	tmp =3D intel_de_read(i915, HSW_AUD_M_CTS_ENABLE(cpu_transcoder));
>  	tmp &=3D ~AUD_M_CTS_M_PROG_ENABLE;
>  	tmp &=3D ~AUD_M_CTS_M_VALUE_INDEX;
> -	intel_de_write(dev_priv, HSW_AUD_M_CTS_ENABLE(cpu_transcoder), tmp);
> +	intel_de_write(i915, HSW_AUD_M_CTS_ENABLE(cpu_transcoder), tmp);
>  }
>=20=20
>  static void
> @@ -492,29 +492,29 @@ static void hsw_audio_codec_disable(struct intel_en=
coder *encoder,
>  				    const struct intel_crtc_state *old_crtc_state,
>  				    const struct drm_connector_state *old_conn_state)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	enum transcoder cpu_transcoder =3D old_crtc_state->cpu_transcoder;
>  	u32 tmp;
>=20=20
> -	mutex_lock(&dev_priv->display.audio.mutex);
> +	mutex_lock(&i915->display.audio.mutex);
>=20=20
>  	/* Disable timestamps */
> -	tmp =3D intel_de_read(dev_priv, HSW_AUD_CFG(cpu_transcoder));
> +	tmp =3D intel_de_read(i915, HSW_AUD_CFG(cpu_transcoder));
>  	tmp &=3D ~AUD_CONFIG_N_VALUE_INDEX;
>  	tmp |=3D AUD_CONFIG_N_PROG_ENABLE;
>  	tmp &=3D ~AUD_CONFIG_UPPER_N_MASK;
>  	tmp &=3D ~AUD_CONFIG_LOWER_N_MASK;
>  	if (intel_crtc_has_dp_encoder(old_crtc_state))
>  		tmp |=3D AUD_CONFIG_N_VALUE_INDEX;
> -	intel_de_write(dev_priv, HSW_AUD_CFG(cpu_transcoder), tmp);
> +	intel_de_write(i915, HSW_AUD_CFG(cpu_transcoder), tmp);
>=20=20
>  	/* Invalidate ELD */
> -	tmp =3D intel_de_read(dev_priv, HSW_AUD_PIN_ELD_CP_VLD);
> +	tmp =3D intel_de_read(i915, HSW_AUD_PIN_ELD_CP_VLD);
>  	tmp &=3D ~AUDIO_ELD_VALID(cpu_transcoder);
>  	tmp &=3D ~AUDIO_OUTPUT_ENABLE(cpu_transcoder);
> -	intel_de_write(dev_priv, HSW_AUD_PIN_ELD_CP_VLD, tmp);
> +	intel_de_write(i915, HSW_AUD_PIN_ELD_CP_VLD, tmp);
>=20=20
> -	mutex_unlock(&dev_priv->display.audio.mutex);
> +	mutex_unlock(&i915->display.audio.mutex);
>  }
>=20=20
>  static unsigned int calc_hblank_early_prog(struct intel_encoder *encoder,
> @@ -632,24 +632,24 @@ static void hsw_audio_codec_enable(struct intel_enc=
oder *encoder,
>  				   const struct intel_crtc_state *crtc_state,
>  				   const struct drm_connector_state *conn_state)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	struct drm_connector *connector =3D conn_state->connector;
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>  	const u8 *eld =3D connector->eld;
>  	u32 tmp;
>  	int len, i;
>=20=20
> -	mutex_lock(&dev_priv->display.audio.mutex);
> +	mutex_lock(&i915->display.audio.mutex);
>=20=20
>  	/* Enable Audio WA for 4k DSC usecases */
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP))
>  		enable_audio_dsc_wa(encoder, crtc_state);
>=20=20
>  	/* Enable audio presence detect, invalidate ELD */
> -	tmp =3D intel_de_read(dev_priv, HSW_AUD_PIN_ELD_CP_VLD);
> +	tmp =3D intel_de_read(i915, HSW_AUD_PIN_ELD_CP_VLD);
>  	tmp |=3D AUDIO_OUTPUT_ENABLE(cpu_transcoder);
>  	tmp &=3D ~AUDIO_ELD_VALID(cpu_transcoder);
> -	intel_de_write(dev_priv, HSW_AUD_PIN_ELD_CP_VLD, tmp);
> +	intel_de_write(i915, HSW_AUD_PIN_ELD_CP_VLD, tmp);
>=20=20
>  	/*
>  	 * FIXME: We're supposed to wait for vblank here, but we have vblanks
> @@ -659,45 +659,45 @@ static void hsw_audio_codec_enable(struct intel_enc=
oder *encoder,
>  	 */
>=20=20
>  	/* Reset ELD write address */
> -	tmp =3D intel_de_read(dev_priv, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder));
> +	tmp =3D intel_de_read(i915, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder));
>  	tmp &=3D ~IBX_ELD_ADDRESS_MASK;
> -	intel_de_write(dev_priv, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder), tmp);
> +	intel_de_write(i915, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder), tmp);
>=20=20
>  	/* Up to 84 bytes of hw ELD buffer */
>  	len =3D min(drm_eld_size(eld), 84);
>  	for (i =3D 0; i < len / 4; i++)
> -		intel_de_write(dev_priv, HSW_AUD_EDID_DATA(cpu_transcoder),
> +		intel_de_write(i915, HSW_AUD_EDID_DATA(cpu_transcoder),
>  			       *((const u32 *)eld + i));
>=20=20
>  	/* ELD valid */
> -	tmp =3D intel_de_read(dev_priv, HSW_AUD_PIN_ELD_CP_VLD);
> +	tmp =3D intel_de_read(i915, HSW_AUD_PIN_ELD_CP_VLD);
>  	tmp |=3D AUDIO_ELD_VALID(cpu_transcoder);
> -	intel_de_write(dev_priv, HSW_AUD_PIN_ELD_CP_VLD, tmp);
> +	intel_de_write(i915, HSW_AUD_PIN_ELD_CP_VLD, tmp);
>=20=20
>  	/* Enable timestamps */
>  	hsw_audio_config_update(encoder, crtc_state);
>=20=20
> -	mutex_unlock(&dev_priv->display.audio.mutex);
> +	mutex_unlock(&i915->display.audio.mutex);
>  }
>=20=20
>  static void ilk_audio_codec_disable(struct intel_encoder *encoder,
>  				    const struct intel_crtc_state *old_crtc_state,
>  				    const struct drm_connector_state *old_conn_state)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
>  	enum pipe pipe =3D crtc->pipe;
>  	enum port port =3D encoder->port;
>  	u32 tmp, eldv;
>  	i915_reg_t aud_config, aud_cntrl_st2;
>=20=20
> -	if (drm_WARN_ON(&dev_priv->drm, port =3D=3D PORT_A))
> +	if (drm_WARN_ON(&i915->drm, port =3D=3D PORT_A))
>  		return;
>=20=20
> -	if (HAS_PCH_IBX(dev_priv)) {
> +	if (HAS_PCH_IBX(i915)) {
>  		aud_config =3D IBX_AUD_CFG(pipe);
>  		aud_cntrl_st2 =3D IBX_AUD_CNTL_ST2;
> -	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> +	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
>  		aud_config =3D VLV_AUD_CFG(pipe);
>  		aud_cntrl_st2 =3D VLV_AUD_CNTL_ST2;
>  	} else {
> @@ -706,28 +706,28 @@ static void ilk_audio_codec_disable(struct intel_en=
coder *encoder,
>  	}
>=20=20
>  	/* Disable timestamps */
> -	tmp =3D intel_de_read(dev_priv, aud_config);
> +	tmp =3D intel_de_read(i915, aud_config);
>  	tmp &=3D ~AUD_CONFIG_N_VALUE_INDEX;
>  	tmp |=3D AUD_CONFIG_N_PROG_ENABLE;
>  	tmp &=3D ~AUD_CONFIG_UPPER_N_MASK;
>  	tmp &=3D ~AUD_CONFIG_LOWER_N_MASK;
>  	if (intel_crtc_has_dp_encoder(old_crtc_state))
>  		tmp |=3D AUD_CONFIG_N_VALUE_INDEX;
> -	intel_de_write(dev_priv, aud_config, tmp);
> +	intel_de_write(i915, aud_config, tmp);
>=20=20
>  	eldv =3D IBX_ELD_VALID(port);
>=20=20
>  	/* Invalidate ELD */
> -	tmp =3D intel_de_read(dev_priv, aud_cntrl_st2);
> +	tmp =3D intel_de_read(i915, aud_cntrl_st2);
>  	tmp &=3D ~eldv;
> -	intel_de_write(dev_priv, aud_cntrl_st2, tmp);
> +	intel_de_write(i915, aud_cntrl_st2, tmp);
>  }
>=20=20
>  static void ilk_audio_codec_enable(struct intel_encoder *encoder,
>  				   const struct intel_crtc_state *crtc_state,
>  				   const struct drm_connector_state *conn_state)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_connector *connector =3D conn_state->connector;
>  	enum pipe pipe =3D crtc->pipe;
> @@ -737,7 +737,7 @@ static void ilk_audio_codec_enable(struct intel_encod=
er *encoder,
>  	int len, i;
>  	i915_reg_t hdmiw_hdmiedid, aud_config, aud_cntl_st, aud_cntrl_st2;
>=20=20
> -	if (drm_WARN_ON(&dev_priv->drm, port =3D=3D PORT_A))
> +	if (drm_WARN_ON(&i915->drm, port =3D=3D PORT_A))
>  		return;
>=20=20
>  	/*
> @@ -747,13 +747,13 @@ static void ilk_audio_codec_enable(struct intel_enc=
oder *encoder,
>  	 * infrastructure is not there yet.
>  	 */
>=20=20
> -	if (HAS_PCH_IBX(dev_priv)) {
> +	if (HAS_PCH_IBX(i915)) {
>  		hdmiw_hdmiedid =3D IBX_HDMIW_HDMIEDID(pipe);
>  		aud_config =3D IBX_AUD_CFG(pipe);
>  		aud_cntl_st =3D IBX_AUD_CNTL_ST(pipe);
>  		aud_cntrl_st2 =3D IBX_AUD_CNTL_ST2;
> -	} else if (IS_VALLEYVIEW(dev_priv) ||
> -		   IS_CHERRYVIEW(dev_priv)) {
> +	} else if (IS_VALLEYVIEW(i915) ||
> +		   IS_CHERRYVIEW(i915)) {
>  		hdmiw_hdmiedid =3D VLV_HDMIW_HDMIEDID(pipe);
>  		aud_config =3D VLV_AUD_CFG(pipe);
>  		aud_cntl_st =3D VLV_AUD_CNTL_ST(pipe);
> @@ -768,28 +768,28 @@ static void ilk_audio_codec_enable(struct intel_enc=
oder *encoder,
>  	eldv =3D IBX_ELD_VALID(port);
>=20=20
>  	/* Invalidate ELD */
> -	tmp =3D intel_de_read(dev_priv, aud_cntrl_st2);
> +	tmp =3D intel_de_read(i915, aud_cntrl_st2);
>  	tmp &=3D ~eldv;
> -	intel_de_write(dev_priv, aud_cntrl_st2, tmp);
> +	intel_de_write(i915, aud_cntrl_st2, tmp);
>=20=20
>  	/* Reset ELD write address */
> -	tmp =3D intel_de_read(dev_priv, aud_cntl_st);
> +	tmp =3D intel_de_read(i915, aud_cntl_st);
>  	tmp &=3D ~IBX_ELD_ADDRESS_MASK;
> -	intel_de_write(dev_priv, aud_cntl_st, tmp);
> +	intel_de_write(i915, aud_cntl_st, tmp);
>=20=20
>  	/* Up to 84 bytes of hw ELD buffer */
>  	len =3D min(drm_eld_size(eld), 84);
>  	for (i =3D 0; i < len / 4; i++)
> -		intel_de_write(dev_priv, hdmiw_hdmiedid,
> +		intel_de_write(i915, hdmiw_hdmiedid,
>  			       *((const u32 *)eld + i));
>=20=20
>  	/* ELD valid */
> -	tmp =3D intel_de_read(dev_priv, aud_cntrl_st2);
> +	tmp =3D intel_de_read(i915, aud_cntrl_st2);
>  	tmp |=3D eldv;
> -	intel_de_write(dev_priv, aud_cntrl_st2, tmp);
> +	intel_de_write(i915, aud_cntrl_st2, tmp);
>=20=20
>  	/* Enable timestamps */
> -	tmp =3D intel_de_read(dev_priv, aud_config);
> +	tmp =3D intel_de_read(i915, aud_config);
>  	tmp &=3D ~AUD_CONFIG_N_VALUE_INDEX;
>  	tmp &=3D ~AUD_CONFIG_N_PROG_ENABLE;
>  	tmp &=3D ~AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK;
> @@ -797,7 +797,7 @@ static void ilk_audio_codec_enable(struct intel_encod=
er *encoder,
>  		tmp |=3D AUD_CONFIG_N_VALUE_INDEX;
>  	else
>  		tmp |=3D audio_config_hdmi_pixel_clock(crtc_state);
> -	intel_de_write(dev_priv, aud_config, tmp);
> +	intel_de_write(i915, aud_config, tmp);
>  }
>=20=20
>  /**
> @@ -813,8 +813,8 @@ void intel_audio_codec_enable(struct intel_encoder *e=
ncoder,
>  			      const struct intel_crtc_state *crtc_state,
>  			      const struct drm_connector_state *conn_state)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	struct i915_audio_component *acomp =3D dev_priv->display.audio.componen=
t;
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct i915_audio_component *acomp =3D i915->display.audio.component;
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_connector *connector =3D conn_state->connector;
>  	const struct drm_display_mode *adjusted_mode =3D
> @@ -825,30 +825,30 @@ void intel_audio_codec_enable(struct intel_encoder =
*encoder,
>  	if (!crtc_state->has_audio)
>  		return;
>=20=20
> -	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s] Enable au=
dio codec on pipe %c, %u bytes ELD\n",
> +	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s] Enable audio =
codec on pipe %c, %u bytes ELD\n",
>  		    connector->base.id, connector->name,
>  		    encoder->base.base.id, encoder->base.name,
>  		    pipe_name(pipe), drm_eld_size(connector->eld));
>=20=20
>  	/* FIXME precompute the ELD in .compute_config() */
>  	if (!connector->eld[0])
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "Bogus ELD on [CONNECTOR:%d:%s]\n",
>  			    connector->base.id, connector->name);
>=20=20
>  	connector->eld[6] =3D drm_av_sync_delay(connector, adjusted_mode) / 2;
>=20=20
> -	if (dev_priv->display.funcs.audio)
> -		dev_priv->display.funcs.audio->audio_codec_enable(encoder,
> +	if (i915->display.funcs.audio)
> +		i915->display.funcs.audio->audio_codec_enable(encoder,
>  								  crtc_state,
>  								  conn_state);
>=20=20
> -	mutex_lock(&dev_priv->display.audio.mutex);
> +	mutex_lock(&i915->display.audio.mutex);
>  	encoder->audio_connector =3D connector;
>=20=20
>  	/* referred in audio callbacks */
> -	dev_priv->display.audio.encoder_map[pipe] =3D encoder;
> -	mutex_unlock(&dev_priv->display.audio.mutex);
> +	i915->display.audio.encoder_map[pipe] =3D encoder;
> +	mutex_unlock(&i915->display.audio.mutex);
>=20=20
>  	if (acomp && acomp->base.audio_ops &&
>  	    acomp->base.audio_ops->pin_eld_notify) {
> @@ -859,7 +859,7 @@ void intel_audio_codec_enable(struct intel_encoder *e=
ncoder,
>  						 (int) port, (int) pipe);
>  	}
>=20=20
> -	intel_lpe_audio_notify(dev_priv, pipe, port, connector->eld,
> +	intel_lpe_audio_notify(i915, pipe, port, connector->eld,
>  			       crtc_state->port_clock,
>  			       intel_crtc_has_dp_encoder(crtc_state));
>  }
> @@ -877,8 +877,8 @@ void intel_audio_codec_disable(struct intel_encoder *=
encoder,
>  			       const struct intel_crtc_state *old_crtc_state,
>  			       const struct drm_connector_state *old_conn_state)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	struct i915_audio_component *acomp =3D dev_priv->display.audio.componen=
t;
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct i915_audio_component *acomp =3D i915->display.audio.component;
>  	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
>  	struct drm_connector *connector =3D old_conn_state->connector;
>  	enum port port =3D encoder->port;
> @@ -887,19 +887,19 @@ void intel_audio_codec_disable(struct intel_encoder=
 *encoder,
>  	if (!old_crtc_state->has_audio)
>  		return;
>=20=20
> -	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s] Disable a=
udio codec on pipe %c\n",
> +	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s] Disable audio=
 codec on pipe %c\n",
>  		    connector->base.id, connector->name,
>  		    encoder->base.base.id, encoder->base.name, pipe_name(pipe));
>=20=20
> -	if (dev_priv->display.funcs.audio)
> -		dev_priv->display.funcs.audio->audio_codec_disable(encoder,
> +	if (i915->display.funcs.audio)
> +		i915->display.funcs.audio->audio_codec_disable(encoder,
>  								   old_crtc_state,
>  								   old_conn_state);
>=20=20
> -	mutex_lock(&dev_priv->display.audio.mutex);
> +	mutex_lock(&i915->display.audio.mutex);
>  	encoder->audio_connector =3D NULL;
> -	dev_priv->display.audio.encoder_map[pipe] =3D NULL;
> -	mutex_unlock(&dev_priv->display.audio.mutex);
> +	i915->display.audio.encoder_map[pipe] =3D NULL;
> +	mutex_unlock(&i915->display.audio.mutex);
>=20=20
>  	if (acomp && acomp->base.audio_ops &&
>  	    acomp->base.audio_ops->pin_eld_notify) {
> @@ -910,7 +910,7 @@ void intel_audio_codec_disable(struct intel_encoder *=
encoder,
>  						 (int) port, (int) pipe);
>  	}
>=20=20
> -	intel_lpe_audio_notify(dev_priv, pipe, port, NULL, 0, false);
> +	intel_lpe_audio_notify(i915, pipe, port, NULL, 0, false);
>  }
>=20=20
>  static const struct intel_audio_funcs g4x_audio_funcs =3D {
> @@ -930,18 +930,18 @@ static const struct intel_audio_funcs hsw_audio_fun=
cs =3D {
>=20=20
>  /**
>   * intel_audio_hooks_init - Set up chip specific audio hooks
> - * @dev_priv: device private
> + * @i915: device private
>   */
> -void intel_audio_hooks_init(struct drm_i915_private *dev_priv)
> +void intel_audio_hooks_init(struct drm_i915_private *i915)
>  {
> -	if (IS_G4X(dev_priv)) {
> -		dev_priv->display.funcs.audio =3D &g4x_audio_funcs;
> -	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> -		dev_priv->display.funcs.audio =3D &ilk_audio_funcs;
> -	} else if (IS_HASWELL(dev_priv) || DISPLAY_VER(dev_priv) >=3D 8) {
> -		dev_priv->display.funcs.audio =3D &hsw_audio_funcs;
> -	} else if (HAS_PCH_SPLIT(dev_priv)) {
> -		dev_priv->display.funcs.audio =3D &ilk_audio_funcs;
> +	if (IS_G4X(i915)) {
> +		i915->display.funcs.audio =3D &g4x_audio_funcs;
> +	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
> +		i915->display.funcs.audio =3D &ilk_audio_funcs;
> +	} else if (IS_HASWELL(i915) || DISPLAY_VER(i915) >=3D 8) {
> +		i915->display.funcs.audio =3D &hsw_audio_funcs;
> +	} else if (HAS_PCH_SPLIT(i915)) {
> +		i915->display.funcs.audio =3D &ilk_audio_funcs;
>  	}
>  }
>=20=20
> @@ -1000,7 +1000,7 @@ static int glk_force_audio_cdclk_commit(struct inte=
l_atomic_state *state,
>  	return drm_atomic_commit(&state->base);
>  }
>=20=20
> -static void glk_force_audio_cdclk(struct drm_i915_private *dev_priv,
> +static void glk_force_audio_cdclk(struct drm_i915_private *i915,
>  				  bool enable)
>  {
>  	struct drm_modeset_acquire_ctx ctx;
> @@ -1008,13 +1008,13 @@ static void glk_force_audio_cdclk(struct drm_i915=
_private *dev_priv,
>  	struct intel_crtc *crtc;
>  	int ret;
>=20=20
> -	crtc =3D intel_first_crtc(dev_priv);
> +	crtc =3D intel_first_crtc(i915);
>  	if (!crtc)
>  		return;
>=20=20
>  	drm_modeset_acquire_init(&ctx, 0);
> -	state =3D drm_atomic_state_alloc(&dev_priv->drm);
> -	if (drm_WARN_ON(&dev_priv->drm, !state))
> +	state =3D drm_atomic_state_alloc(&i915->drm);
> +	if (drm_WARN_ON(&i915->drm, !state))
>  		return;
>=20=20
>  	state->acquire_ctx =3D &ctx;
> @@ -1028,7 +1028,7 @@ static void glk_force_audio_cdclk(struct drm_i915_p=
rivate *dev_priv,
>  		goto retry;
>  	}
>=20=20
> -	drm_WARN_ON(&dev_priv->drm, ret);
> +	drm_WARN_ON(&i915->drm, ret);
>=20=20
>  	drm_atomic_state_put(state);
>=20=20
> @@ -1038,30 +1038,30 @@ static void glk_force_audio_cdclk(struct drm_i915=
_private *dev_priv,
>=20=20
>  static unsigned long i915_audio_component_get_power(struct device *kdev)
>  {
> -	struct drm_i915_private *dev_priv =3D kdev_to_i915(kdev);
> +	struct drm_i915_private *i915 =3D kdev_to_i915(kdev);
>  	intel_wakeref_t ret;
>=20=20
>  	/* Catch potential impedance mismatches before they occur! */
>  	BUILD_BUG_ON(sizeof(intel_wakeref_t) > sizeof(unsigned long));
>=20=20
> -	ret =3D intel_display_power_get(dev_priv, POWER_DOMAIN_AUDIO_PLAYBACK);
> +	ret =3D intel_display_power_get(i915, POWER_DOMAIN_AUDIO_PLAYBACK);
>=20=20
> -	if (dev_priv->display.audio.power_refcount++ =3D=3D 0) {
> -		if (DISPLAY_VER(dev_priv) >=3D 9) {
> -			intel_de_write(dev_priv, AUD_FREQ_CNTRL,
> -				       dev_priv->display.audio.freq_cntrl);
> -			drm_dbg_kms(&dev_priv->drm,
> +	if (i915->display.audio.power_refcount++ =3D=3D 0) {
> +		if (DISPLAY_VER(i915) >=3D 9) {
> +			intel_de_write(i915, AUD_FREQ_CNTRL,
> +				       i915->display.audio.freq_cntrl);
> +			drm_dbg_kms(&i915->drm,
>  				    "restored AUD_FREQ_CNTRL to 0x%x\n",
> -				    dev_priv->display.audio.freq_cntrl);
> +				    i915->display.audio.freq_cntrl);
>  		}
>=20=20
>  		/* Force CDCLK to 2*BCLK as long as we need audio powered. */
> -		if (IS_GEMINILAKE(dev_priv))
> -			glk_force_audio_cdclk(dev_priv, true);
> +		if (IS_GEMINILAKE(i915))
> +			glk_force_audio_cdclk(i915, true);
>=20=20
> -		if (DISPLAY_VER(dev_priv) >=3D 10)
> -			intel_de_write(dev_priv, AUD_PIN_BUF_CTL,
> -				       (intel_de_read(dev_priv, AUD_PIN_BUF_CTL) | AUD_PIN_BUF_ENABL=
E));
> +		if (DISPLAY_VER(i915) >=3D 10)
> +			intel_de_write(i915, AUD_PIN_BUF_CTL,
> +				       (intel_de_read(i915, AUD_PIN_BUF_CTL) | AUD_PIN_BUF_ENABLE));
>  	}
>=20=20
>  	return ret;
> @@ -1070,24 +1070,24 @@ static unsigned long i915_audio_component_get_pow=
er(struct device *kdev)
>  static void i915_audio_component_put_power(struct device *kdev,
>  					   unsigned long cookie)
>  {
> -	struct drm_i915_private *dev_priv =3D kdev_to_i915(kdev);
> +	struct drm_i915_private *i915 =3D kdev_to_i915(kdev);
>=20=20
>  	/* Stop forcing CDCLK to 2*BCLK if no need for audio to be powered. */
> -	if (--dev_priv->display.audio.power_refcount =3D=3D 0)
> -		if (IS_GEMINILAKE(dev_priv))
> -			glk_force_audio_cdclk(dev_priv, false);
> +	if (--i915->display.audio.power_refcount =3D=3D 0)
> +		if (IS_GEMINILAKE(i915))
> +			glk_force_audio_cdclk(i915, false);
>=20=20
> -	intel_display_power_put(dev_priv, POWER_DOMAIN_AUDIO_PLAYBACK, cookie);
> +	intel_display_power_put(i915, POWER_DOMAIN_AUDIO_PLAYBACK, cookie);
>  }
>=20=20
>  static void i915_audio_component_codec_wake_override(struct device *kdev,
>  						     bool enable)
>  {
> -	struct drm_i915_private *dev_priv =3D kdev_to_i915(kdev);
> +	struct drm_i915_private *i915 =3D kdev_to_i915(kdev);
>  	unsigned long cookie;
>  	u32 tmp;
>=20=20
> -	if (DISPLAY_VER(dev_priv) < 9)
> +	if (DISPLAY_VER(i915) < 9)
>  		return;
>=20=20
>  	cookie =3D i915_audio_component_get_power(kdev);
> @@ -1096,15 +1096,15 @@ static void i915_audio_component_codec_wake_overr=
ide(struct device *kdev,
>  	 * Enable/disable generating the codec wake signal, overriding the
>  	 * internal logic to generate the codec wake to controller.
>  	 */
> -	tmp =3D intel_de_read(dev_priv, HSW_AUD_CHICKENBIT);
> +	tmp =3D intel_de_read(i915, HSW_AUD_CHICKENBIT);
>  	tmp &=3D ~SKL_AUD_CODEC_WAKE_SIGNAL;
> -	intel_de_write(dev_priv, HSW_AUD_CHICKENBIT, tmp);
> +	intel_de_write(i915, HSW_AUD_CHICKENBIT, tmp);
>  	usleep_range(1000, 1500);
>=20=20
>  	if (enable) {
> -		tmp =3D intel_de_read(dev_priv, HSW_AUD_CHICKENBIT);
> +		tmp =3D intel_de_read(i915, HSW_AUD_CHICKENBIT);
>  		tmp |=3D SKL_AUD_CODEC_WAKE_SIGNAL;
> -		intel_de_write(dev_priv, HSW_AUD_CHICKENBIT, tmp);
> +		intel_de_write(i915, HSW_AUD_CHICKENBIT, tmp);
>  		usleep_range(1000, 1500);
>  	}
>=20=20
> @@ -1114,12 +1114,12 @@ static void i915_audio_component_codec_wake_overr=
ide(struct device *kdev,
>  /* Get CDCLK in kHz  */
>  static int i915_audio_component_get_cdclk_freq(struct device *kdev)
>  {
> -	struct drm_i915_private *dev_priv =3D kdev_to_i915(kdev);
> +	struct drm_i915_private *i915 =3D kdev_to_i915(kdev);
>=20=20
> -	if (drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_DDI(dev_priv)))
> +	if (drm_WARN_ON_ONCE(&i915->drm, !HAS_DDI(i915)))
>  		return -ENODEV;
>=20=20
> -	return dev_priv->display.cdclk.hw.cdclk;
> +	return i915->display.cdclk.hw.cdclk;
>  }
>=20=20
>  /*
> @@ -1132,18 +1132,18 @@ static int i915_audio_component_get_cdclk_freq(st=
ruct device *kdev)
>   *   will get the right intel_encoder with port matched
>   * Non-MST & (pipe < 0): get the right intel_encoder with port matched
>   */
> -static struct intel_encoder *get_saved_enc(struct drm_i915_private *dev_=
priv,
> -					       int port, int pipe)
> +static struct intel_encoder *get_saved_enc(struct drm_i915_private *i915,
> +					   int port, int pipe)
>  {
>  	struct intel_encoder *encoder;
>=20=20
>  	/* MST */
>  	if (pipe >=3D 0) {
> -		if (drm_WARN_ON(&dev_priv->drm,
> -				pipe >=3D ARRAY_SIZE(dev_priv->display.audio.encoder_map)))
> +		if (drm_WARN_ON(&i915->drm,
> +				pipe >=3D ARRAY_SIZE(i915->display.audio.encoder_map)))
>  			return NULL;
>=20=20
> -		encoder =3D dev_priv->display.audio.encoder_map[pipe];
> +		encoder =3D i915->display.audio.encoder_map[pipe];
>  		/*
>  		 * when bootup, audio driver may not know it is
>  		 * MST or not. So it will poll all the port & pipe
> @@ -1158,8 +1158,8 @@ static struct intel_encoder *get_saved_enc(struct d=
rm_i915_private *dev_priv,
>  	if (pipe > 0)
>  		return NULL;
>=20=20
> -	for_each_pipe(dev_priv, pipe) {
> -		encoder =3D dev_priv->display.audio.encoder_map[pipe];
> +	for_each_pipe(i915, pipe) {
> +		encoder =3D i915->display.audio.encoder_map[pipe];
>  		if (encoder =3D=3D NULL)
>  			continue;
>=20=20
> @@ -1176,23 +1176,23 @@ static struct intel_encoder *get_saved_enc(struct=
 drm_i915_private *dev_priv,
>  static int i915_audio_component_sync_audio_rate(struct device *kdev, int=
 port,
>  						int pipe, int rate)
>  {
> -	struct drm_i915_private *dev_priv =3D kdev_to_i915(kdev);
> -	struct i915_audio_component *acomp =3D dev_priv->display.audio.componen=
t;
> +	struct drm_i915_private *i915 =3D kdev_to_i915(kdev);
> +	struct i915_audio_component *acomp =3D i915->display.audio.component;
>  	struct intel_encoder *encoder;
>  	struct intel_crtc *crtc;
>  	unsigned long cookie;
>  	int err =3D 0;
>=20=20
> -	if (!HAS_DDI(dev_priv))
> +	if (!HAS_DDI(i915))
>  		return 0;
>=20=20
>  	cookie =3D i915_audio_component_get_power(kdev);
> -	mutex_lock(&dev_priv->display.audio.mutex);
> +	mutex_lock(&i915->display.audio.mutex);
>=20=20
>  	/* 1. get the pipe */
> -	encoder =3D get_saved_enc(dev_priv, port, pipe);
> +	encoder =3D get_saved_enc(i915, port, pipe);
>  	if (!encoder || !encoder->base.crtc) {
> -		drm_dbg_kms(&dev_priv->drm, "Not valid for port %c\n",
> +		drm_dbg_kms(&i915->drm, "Not valid for port %c\n",
>  			    port_name(port));
>  		err =3D -ENODEV;
>  		goto unlock;
> @@ -1206,7 +1206,7 @@ static int i915_audio_component_sync_audio_rate(str=
uct device *kdev, int port,
>  	hsw_audio_config_update(encoder, crtc->config);
>=20=20
>   unlock:
> -	mutex_unlock(&dev_priv->display.audio.mutex);
> +	mutex_unlock(&i915->display.audio.mutex);
>  	i915_audio_component_put_power(kdev, cookie);
>  	return err;
>  }
> @@ -1215,18 +1215,18 @@ static int i915_audio_component_get_eld(struct de=
vice *kdev, int port,
>  					int pipe, bool *enabled,
>  					unsigned char *buf, int max_bytes)
>  {
> -	struct drm_i915_private *dev_priv =3D kdev_to_i915(kdev);
> +	struct drm_i915_private *i915 =3D kdev_to_i915(kdev);
>  	struct intel_encoder *intel_encoder;
>  	const u8 *eld;
>  	int ret =3D -EINVAL;
>=20=20
> -	mutex_lock(&dev_priv->display.audio.mutex);
> +	mutex_lock(&i915->display.audio.mutex);
>=20=20
> -	intel_encoder =3D get_saved_enc(dev_priv, port, pipe);
> +	intel_encoder =3D get_saved_enc(i915, port, pipe);
>  	if (!intel_encoder) {
> -		drm_dbg_kms(&dev_priv->drm, "Not valid for port %c\n",
> +		drm_dbg_kms(&i915->drm, "Not valid for port %c\n",
>  			    port_name(port));
> -		mutex_unlock(&dev_priv->display.audio.mutex);
> +		mutex_unlock(&i915->display.audio.mutex);
>  		return ret;
>  	}
>=20=20
> @@ -1238,7 +1238,7 @@ static int i915_audio_component_get_eld(struct devi=
ce *kdev, int port,
>  		memcpy(buf, eld, min(max_bytes, ret));
>  	}
>=20=20
> -	mutex_unlock(&dev_priv->display.audio.mutex);
> +	mutex_unlock(&i915->display.audio.mutex);
>  	return ret;
>  }
>=20=20
> @@ -1256,25 +1256,25 @@ static int i915_audio_component_bind(struct devic=
e *i915_kdev,
>  				     struct device *hda_kdev, void *data)
>  {
>  	struct i915_audio_component *acomp =3D data;
> -	struct drm_i915_private *dev_priv =3D kdev_to_i915(i915_kdev);
> +	struct drm_i915_private *i915 =3D kdev_to_i915(i915_kdev);
>  	int i;
>=20=20
> -	if (drm_WARN_ON(&dev_priv->drm, acomp->base.ops || acomp->base.dev))
> +	if (drm_WARN_ON(&i915->drm, acomp->base.ops || acomp->base.dev))
>  		return -EEXIST;
>=20=20
> -	if (drm_WARN_ON(&dev_priv->drm,
> +	if (drm_WARN_ON(&i915->drm,
>  			!device_link_add(hda_kdev, i915_kdev,
>  					 DL_FLAG_STATELESS)))
>  		return -ENOMEM;
>=20=20
> -	drm_modeset_lock_all(&dev_priv->drm);
> +	drm_modeset_lock_all(&i915->drm);
>  	acomp->base.ops =3D &i915_audio_component_ops;
>  	acomp->base.dev =3D i915_kdev;
>  	BUILD_BUG_ON(MAX_PORTS !=3D I915_MAX_PORTS);
>  	for (i =3D 0; i < ARRAY_SIZE(acomp->aud_sample_rate); i++)
>  		acomp->aud_sample_rate[i] =3D 0;
> -	dev_priv->display.audio.component =3D acomp;
> -	drm_modeset_unlock_all(&dev_priv->drm);
> +	i915->display.audio.component =3D acomp;
> +	drm_modeset_unlock_all(&i915->drm);
>=20=20
>  	return 0;
>  }
> @@ -1283,19 +1283,19 @@ static void i915_audio_component_unbind(struct de=
vice *i915_kdev,
>  					struct device *hda_kdev, void *data)
>  {
>  	struct i915_audio_component *acomp =3D data;
> -	struct drm_i915_private *dev_priv =3D kdev_to_i915(i915_kdev);
> +	struct drm_i915_private *i915 =3D kdev_to_i915(i915_kdev);
>=20=20
> -	drm_modeset_lock_all(&dev_priv->drm);
> +	drm_modeset_lock_all(&i915->drm);
>  	acomp->base.ops =3D NULL;
>  	acomp->base.dev =3D NULL;
> -	dev_priv->display.audio.component =3D NULL;
> -	drm_modeset_unlock_all(&dev_priv->drm);
> +	i915->display.audio.component =3D NULL;
> +	drm_modeset_unlock_all(&i915->drm);
>=20=20
>  	device_link_remove(hda_kdev, i915_kdev);
>=20=20
> -	if (dev_priv->display.audio.power_refcount)
> -		drm_err(&dev_priv->drm, "audio power refcount %d after unbind\n",
> -			dev_priv->display.audio.power_refcount);
> +	if (i915->display.audio.power_refcount)
> +		drm_err(&i915->drm, "audio power refcount %d after unbind\n",
> +			i915->display.audio.power_refcount);
>  }
>=20=20
>  static const struct component_ops i915_audio_component_bind_ops =3D {
> @@ -1314,7 +1314,7 @@ static const struct component_ops i915_audio_compon=
ent_bind_ops =3D {
>=20=20
>  /**
>   * i915_audio_component_init - initialize and register the audio compone=
nt
> - * @dev_priv: i915 device instance
> + * @i915: i915 device instance
>   *
>   * This will register with the component framework a child component whi=
ch
>   * will bind dynamically to the snd_hda_intel driver's corresponding mas=
ter
> @@ -1328,83 +1328,83 @@ static const struct component_ops i915_audio_comp=
onent_bind_ops =3D {
>   * We ignore any error during registration and continue with reduced
>   * functionality (i.e. without HDMI audio).
>   */
> -static void i915_audio_component_init(struct drm_i915_private *dev_priv)
> +static void i915_audio_component_init(struct drm_i915_private *i915)
>  {
>  	u32 aud_freq, aud_freq_init;
>  	int ret;
>=20=20
> -	ret =3D component_add_typed(dev_priv->drm.dev,
> +	ret =3D component_add_typed(i915->drm.dev,
>  				  &i915_audio_component_bind_ops,
>  				  I915_COMPONENT_AUDIO);
>  	if (ret < 0) {
> -		drm_err(&dev_priv->drm,
> +		drm_err(&i915->drm,
>  			"failed to add audio component (%d)\n", ret);
>  		/* continue with reduced functionality */
>  		return;
>  	}
>=20=20
> -	if (DISPLAY_VER(dev_priv) >=3D 9) {
> -		aud_freq_init =3D intel_de_read(dev_priv, AUD_FREQ_CNTRL);
> +	if (DISPLAY_VER(i915) >=3D 9) {
> +		aud_freq_init =3D intel_de_read(i915, AUD_FREQ_CNTRL);
>=20=20
> -		if (DISPLAY_VER(dev_priv) >=3D 12)
> +		if (DISPLAY_VER(i915) >=3D 12)
>  			aud_freq =3D AUD_FREQ_GEN12;
>  		else
>  			aud_freq =3D aud_freq_init;
>=20=20
>  		/* use BIOS provided value for TGL and RKL unless it is a known bad va=
lue */
> -		if ((IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv)) &&
> +		if ((IS_TIGERLAKE(i915) || IS_ROCKETLAKE(i915)) &&
>  		    aud_freq_init !=3D AUD_FREQ_TGL_BROKEN)
>  			aud_freq =3D aud_freq_init;
>=20=20
> -		drm_dbg_kms(&dev_priv->drm, "use AUD_FREQ_CNTRL of 0x%x (init value 0x=
%x)\n",
> +		drm_dbg_kms(&i915->drm, "use AUD_FREQ_CNTRL of 0x%x (init value 0x%x)\=
n",
>  			    aud_freq, aud_freq_init);
>=20=20
> -		dev_priv->display.audio.freq_cntrl =3D aud_freq;
> +		i915->display.audio.freq_cntrl =3D aud_freq;
>  	}
>=20=20
>  	/* init with current cdclk */
> -	intel_audio_cdclk_change_post(dev_priv);
> +	intel_audio_cdclk_change_post(i915);
>=20=20
> -	dev_priv->display.audio.component_registered =3D true;
> +	i915->display.audio.component_registered =3D true;
>  }
>=20=20
>  /**
>   * i915_audio_component_cleanup - deregister the audio component
> - * @dev_priv: i915 device instance
> + * @i915: i915 device instance
>   *
>   * Deregisters the audio component, breaking any existing binding to the
>   * corresponding snd_hda_intel driver's master component.
>   */
> -static void i915_audio_component_cleanup(struct drm_i915_private *dev_pr=
iv)
> +static void i915_audio_component_cleanup(struct drm_i915_private *i915)
>  {
> -	if (!dev_priv->display.audio.component_registered)
> +	if (!i915->display.audio.component_registered)
>  		return;
>=20=20
> -	component_del(dev_priv->drm.dev, &i915_audio_component_bind_ops);
> -	dev_priv->display.audio.component_registered =3D false;
> +	component_del(i915->drm.dev, &i915_audio_component_bind_ops);
> +	i915->display.audio.component_registered =3D false;
>  }
>=20=20
>  /**
>   * intel_audio_init() - Initialize the audio driver either using
>   * component framework or using lpe audio bridge
> - * @dev_priv: the i915 drm device private data
> + * @i915: the i915 drm device private data
>   *
>   */
> -void intel_audio_init(struct drm_i915_private *dev_priv)
> +void intel_audio_init(struct drm_i915_private *i915)
>  {
> -	if (intel_lpe_audio_init(dev_priv) < 0)
> -		i915_audio_component_init(dev_priv);
> +	if (intel_lpe_audio_init(i915) < 0)
> +		i915_audio_component_init(i915);
>  }
>=20=20
>  /**
>   * intel_audio_deinit() - deinitialize the audio driver
> - * @dev_priv: the i915 drm device private data
> + * @i915: the i915 drm device private data
>   *
>   */
> -void intel_audio_deinit(struct drm_i915_private *dev_priv)
> +void intel_audio_deinit(struct drm_i915_private *i915)
>  {
> -	if (dev_priv->display.audio.lpe.platdev !=3D NULL)
> -		intel_lpe_audio_teardown(dev_priv);
> +	if (i915->display.audio.lpe.platdev !=3D NULL)
> +		intel_lpe_audio_teardown(i915);
>  	else
> -		i915_audio_component_cleanup(dev_priv);
> +		i915_audio_component_cleanup(i915);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_audio_regs.h b/drivers/gp=
u/drm/i915/display/intel_audio_regs.h
> index d1e5844e3484..e25248cdac51 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_audio_regs.h
> @@ -8,7 +8,7 @@
>=20=20
>  #include "i915_reg_defs.h"
>=20=20
> -#define G4X_AUD_VID_DID			_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x62020)
> +#define G4X_AUD_VID_DID			_MMIO(DISPLAY_MMIO_BASE(i915) + 0x62020)
>  #define   INTEL_AUDIO_DEVCL		0x808629FB
>  #define   INTEL_AUDIO_DEVBLC		0x80862801
>  #define   INTEL_AUDIO_DEVCTG		0x80862802

--=20
Jani Nikula, Intel Open Source Graphics Center
