Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B20F95FC76B
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 16:33:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D6F010E2E3;
	Wed, 12 Oct 2022 14:33:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12E6F10E2E3
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 14:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665585211; x=1697121211;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=rSDJW5TxupFfHzcbsrB7Ml3uZYcq0Pdam5TC2XFKhSE=;
 b=OH2uEri85ExPjzrEZykle+gyHFXUP5TvcyQCFEGvDWh12bqBT5oMxEtf
 O1MFx59mT0aL/2y8GnLGFTFk/LgakHL7i4smzBa6b80o84UenwjT9/dNp
 81owDr9yKoS75awnbk3gZhmujStau61EYqLSZQvbpafjqxc6RTfxKBLmV
 SeinJ40MtAAgLrRY8Qz3CsrEXnSEdnDM79A1dvZjOXVXch577Doc852Ms
 XLNRUHleuKpXRHXLI9VMYGPXHrYaZgZhtY5qhPzqS9TCnHnaN+UrN79k4
 aq6KnOJBNi78sZDTAWpiUP2KiWHc6IZPGZCQ2d71RwsD3mRBlSeoZwr7y Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="302420465"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="302420465"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 07:33:30 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="659950417"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="659950417"
Received: from jhpuonti-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.226])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 07:33:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221011170011.17198-13-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
 <20221011170011.17198-13-ville.syrjala@linux.intel.com>
Date: Wed, 12 Oct 2022 17:33:31 +0300
Message-ID: <87a661w1qc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 12/22] drm/i915/audio: Use intel_de_rmw()
 for most audio registers
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
> The audio code does a lot of RMW accesses. Utilize
> intel_de_rmw() to make that a bit less tedious.
>
> There are still some hand rolled RMW left, but those have
> a lot of code in between the read and write to calculate
> the new value, so would need some refactoring first.
>
> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Cc: Takashi Iwai <tiwai@suse.de>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

With commit 06b975d58fd6 ("drm/i915: make intel_uncore_rmw() write
unconditionally") I feel much more comfortable doing these changes.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>



> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 136 +++++++++------------
>  1 file changed, 56 insertions(+), 80 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index 9f64f52f895f..1b928d283b8d 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -318,12 +318,10 @@ static void g4x_audio_codec_disable(struct intel_en=
coder *encoder,
>  				    const struct drm_connector_state *old_conn_state)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> -	u32 tmp;
>=20=20
>  	/* Invalidate ELD */
> -	tmp =3D intel_de_read(i915, G4X_AUD_CNTL_ST);
> -	tmp &=3D ~G4X_ELD_VALID;
> -	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
> +	intel_de_rmw(i915, G4X_AUD_CNTL_ST,
> +		     G4X_ELD_VALID, 0);
>  }
>=20=20
>  static void g4x_audio_codec_enable(struct intel_encoder *encoder,
> @@ -334,11 +332,9 @@ static void g4x_audio_codec_enable(struct intel_enco=
der *encoder,
>  	struct drm_connector *connector =3D conn_state->connector;
>  	const u32 *eld =3D (const u32 *)connector->eld;
>  	int eld_buffer_size, len, i;
> -	u32 tmp;
>=20=20
> -	tmp =3D intel_de_read(i915, G4X_AUD_CNTL_ST);
> -	tmp &=3D ~(G4X_ELD_VALID | G4X_ELD_ADDRESS_MASK);
> -	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
> +	intel_de_rmw(i915, G4X_AUD_CNTL_ST,
> +		     G4X_ELD_VALID | G4X_ELD_ADDRESS_MASK, 0);
>=20=20
>  	eld_buffer_size =3D g4x_eld_buffer_size(i915);
>  	len =3D min(drm_eld_size(connector->eld) / 4, eld_buffer_size);
> @@ -351,9 +347,8 @@ static void g4x_audio_codec_enable(struct intel_encod=
er *encoder,
>  	drm_WARN_ON(&i915->drm,
>  		    (intel_de_read(i915, G4X_AUD_CNTL_ST) & G4X_ELD_ADDRESS_MASK) !=3D=
 0);
>=20=20
> -	tmp =3D intel_de_read(i915, G4X_AUD_CNTL_ST);
> -	tmp |=3D G4X_ELD_VALID;
> -	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
> +	intel_de_rmw(i915, G4X_AUD_CNTL_ST,
> +		     0, G4X_ELD_VALID);
>  }
>=20=20
>  static void
> @@ -472,25 +467,22 @@ static void hsw_audio_codec_disable(struct intel_en=
coder *encoder,
>  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	enum transcoder cpu_transcoder =3D old_crtc_state->cpu_transcoder;
> -	u32 tmp;
>=20=20
>  	mutex_lock(&i915->display.audio.mutex);
>=20=20
>  	/* Disable timestamps */
> -	tmp =3D intel_de_read(i915, HSW_AUD_CFG(cpu_transcoder));
> -	tmp &=3D ~AUD_CONFIG_N_VALUE_INDEX;
> -	tmp |=3D AUD_CONFIG_N_PROG_ENABLE;
> -	tmp &=3D ~AUD_CONFIG_UPPER_N_MASK;
> -	tmp &=3D ~AUD_CONFIG_LOWER_N_MASK;
> -	if (intel_crtc_has_dp_encoder(old_crtc_state))
> -		tmp |=3D AUD_CONFIG_N_VALUE_INDEX;
> -	intel_de_write(i915, HSW_AUD_CFG(cpu_transcoder), tmp);
> +	intel_de_rmw(i915, HSW_AUD_CFG(cpu_transcoder),
> +		     AUD_CONFIG_N_VALUE_INDEX |
> +		     AUD_CONFIG_UPPER_N_MASK |
> +		     AUD_CONFIG_LOWER_N_MASK,
> +		     AUD_CONFIG_N_PROG_ENABLE |
> +		     intel_crtc_has_dp_encoder(old_crtc_state) ?
> +		     AUD_CONFIG_N_VALUE_INDEX : 0);
>=20=20
> -	/* Invalidate ELD */
> -	tmp =3D intel_de_read(i915, HSW_AUD_PIN_ELD_CP_VLD);
> -	tmp &=3D ~AUDIO_ELD_VALID(cpu_transcoder);
> -	tmp &=3D ~AUDIO_OUTPUT_ENABLE(cpu_transcoder);
> -	intel_de_write(i915, HSW_AUD_PIN_ELD_CP_VLD, tmp);
> +	/* Disable audio presence detect, invalidate ELD */
> +	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
> +		     AUDIO_ELD_VALID(cpu_transcoder) |
> +		     AUDIO_OUTPUT_ENABLE(cpu_transcoder), 0);
>=20=20
>  	mutex_unlock(&i915->display.audio.mutex);
>  }
> @@ -613,7 +605,6 @@ static void hsw_audio_codec_enable(struct intel_encod=
er *encoder,
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>  	const u32 *eld =3D (const u32 *)connector->eld;
>  	int eld_buffer_size, len, i;
> -	u32 tmp;
>=20=20
>  	mutex_lock(&i915->display.audio.mutex);
>=20=20
> @@ -622,10 +613,9 @@ static void hsw_audio_codec_enable(struct intel_enco=
der *encoder,
>  		enable_audio_dsc_wa(encoder, crtc_state);
>=20=20
>  	/* Enable audio presence detect, invalidate ELD */
> -	tmp =3D intel_de_read(i915, HSW_AUD_PIN_ELD_CP_VLD);
> -	tmp |=3D AUDIO_OUTPUT_ENABLE(cpu_transcoder);
> -	tmp &=3D ~AUDIO_ELD_VALID(cpu_transcoder);
> -	intel_de_write(i915, HSW_AUD_PIN_ELD_CP_VLD, tmp);
> +	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
> +		     AUDIO_ELD_VALID(cpu_transcoder),
> +		     AUDIO_OUTPUT_ENABLE(cpu_transcoder));
>=20=20
>  	/*
>  	 * FIXME: We're supposed to wait for vblank here, but we have vblanks
> @@ -634,10 +624,9 @@ static void hsw_audio_codec_enable(struct intel_enco=
der *encoder,
>  	 * infrastructure is not there yet.
>  	 */
>=20=20
> -	/* Reset ELD write address */
> -	tmp =3D intel_de_read(i915, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder));
> -	tmp &=3D ~IBX_ELD_ADDRESS_MASK;
> -	intel_de_write(i915, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder), tmp);
> +	/* Reset ELD address */
> +	intel_de_rmw(i915, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder),
> +		     IBX_ELD_ADDRESS_MASK, 0);
>=20=20
>  	eld_buffer_size =3D hsw_eld_buffer_size(i915, cpu_transcoder);
>  	len =3D min(drm_eld_size(connector->eld) / 4, eld_buffer_size);
> @@ -652,9 +641,8 @@ static void hsw_audio_codec_enable(struct intel_encod=
er *encoder,
>  		     IBX_ELD_ADDRESS_MASK) !=3D 0);
>=20=20
>  	/* ELD valid */
> -	tmp =3D intel_de_read(i915, HSW_AUD_PIN_ELD_CP_VLD);
> -	tmp |=3D AUDIO_ELD_VALID(cpu_transcoder);
> -	intel_de_write(i915, HSW_AUD_PIN_ELD_CP_VLD, tmp);
> +	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
> +		     0, AUDIO_ELD_VALID(cpu_transcoder));
>=20=20
>  	/* Enable timestamps */
>  	hsw_audio_config_update(encoder, crtc_state);
> @@ -707,10 +695,9 @@ static void ilk_audio_codec_disable(struct intel_enc=
oder *encoder,
>  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
> -	enum pipe pipe =3D crtc->pipe;
>  	enum port port =3D encoder->port;
> +	enum pipe pipe =3D crtc->pipe;
>  	struct ilk_audio_regs regs;
> -	u32 tmp;
>=20=20
>  	if (drm_WARN_ON(&i915->drm, port =3D=3D PORT_A))
>  		return;
> @@ -720,19 +707,17 @@ static void ilk_audio_codec_disable(struct intel_en=
coder *encoder,
>  	mutex_lock(&i915->display.audio.mutex);
>=20=20
>  	/* Disable timestamps */
> -	tmp =3D intel_de_read(i915, regs.aud_config);
> -	tmp &=3D ~AUD_CONFIG_N_VALUE_INDEX;
> -	tmp |=3D AUD_CONFIG_N_PROG_ENABLE;
> -	tmp &=3D ~AUD_CONFIG_UPPER_N_MASK;
> -	tmp &=3D ~AUD_CONFIG_LOWER_N_MASK;
> -	if (intel_crtc_has_dp_encoder(old_crtc_state))
> -		tmp |=3D AUD_CONFIG_N_VALUE_INDEX;
> -	intel_de_write(i915, regs.aud_config, tmp);
> +	intel_de_rmw(i915, regs.aud_config,
> +		     AUD_CONFIG_N_VALUE_INDEX |
> +		     AUD_CONFIG_UPPER_N_MASK |
> +		     AUD_CONFIG_LOWER_N_MASK,
> +		     AUD_CONFIG_N_PROG_ENABLE |
> +		     intel_crtc_has_dp_encoder(old_crtc_state) ?
> +		     AUD_CONFIG_N_VALUE_INDEX : 0);
>=20=20
>  	/* Invalidate ELD */
> -	tmp =3D intel_de_read(i915, regs.aud_cntrl_st2);
> -	tmp &=3D ~IBX_ELD_VALID(port);
> -	intel_de_write(i915, regs.aud_cntrl_st2, tmp);
> +	intel_de_rmw(i915, regs.aud_cntrl_st2,
> +		     IBX_ELD_VALID(port), 0);
>=20=20
>  	mutex_unlock(&i915->display.audio.mutex);
>  }
> @@ -745,11 +730,10 @@ static void ilk_audio_codec_enable(struct intel_enc=
oder *encoder,
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_connector *connector =3D conn_state->connector;
>  	const u32 *eld =3D (const u32 *)connector->eld;
> -	enum pipe pipe =3D crtc->pipe;
>  	enum port port =3D encoder->port;
> +	enum pipe pipe =3D crtc->pipe;
>  	int eld_buffer_size, len, i;
>  	struct ilk_audio_regs regs;
> -	u32 tmp;
>=20=20
>  	if (drm_WARN_ON(&i915->drm, port =3D=3D PORT_A))
>  		return;
> @@ -766,14 +750,12 @@ static void ilk_audio_codec_enable(struct intel_enc=
oder *encoder,
>  	mutex_lock(&i915->display.audio.mutex);
>=20=20
>  	/* Invalidate ELD */
> -	tmp =3D intel_de_read(i915, regs.aud_cntrl_st2);
> -	tmp &=3D ~IBX_ELD_VALID(port);
> -	intel_de_write(i915, regs.aud_cntrl_st2, tmp);
> +	intel_de_rmw(i915, regs.aud_cntrl_st2,
> +		     IBX_ELD_VALID(port), 0);
>=20=20
> -	/* Reset ELD write address */
> -	tmp =3D intel_de_read(i915, regs.aud_cntl_st);
> -	tmp &=3D ~IBX_ELD_ADDRESS_MASK;
> -	intel_de_write(i915, regs.aud_cntl_st, tmp);
> +	/* Reset ELD address */
> +	intel_de_rmw(i915, regs.aud_cntl_st,
> +		     IBX_ELD_ADDRESS_MASK, 0);
>=20=20
>  	eld_buffer_size =3D ilk_eld_buffer_size(i915, pipe);
>  	len =3D min(drm_eld_size(connector->eld) / 4, eld_buffer_size);
> @@ -787,20 +769,17 @@ static void ilk_audio_codec_enable(struct intel_enc=
oder *encoder,
>  		    (intel_de_read(i915, regs.aud_cntl_st) & IBX_ELD_ADDRESS_MASK) !=
=3D 0);
>=20=20
>  	/* ELD valid */
> -	tmp =3D intel_de_read(i915, regs.aud_cntrl_st2);
> -	tmp |=3D IBX_ELD_VALID(port);
> -	intel_de_write(i915, regs.aud_cntrl_st2, tmp);
> +	intel_de_rmw(i915, regs.aud_cntrl_st2,
> +		     0, IBX_ELD_VALID(port));
>=20=20
>  	/* Enable timestamps */
> -	tmp =3D intel_de_read(i915, regs.aud_config);
> -	tmp &=3D ~AUD_CONFIG_N_VALUE_INDEX;
> -	tmp &=3D ~AUD_CONFIG_N_PROG_ENABLE;
> -	tmp &=3D ~AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK;
> -	if (intel_crtc_has_dp_encoder(crtc_state))
> -		tmp |=3D AUD_CONFIG_N_VALUE_INDEX;
> -	else
> -		tmp |=3D audio_config_hdmi_pixel_clock(crtc_state);
> -	intel_de_write(i915, regs.aud_config, tmp);
> +	intel_de_rmw(i915, regs.aud_config,
> +		     AUD_CONFIG_N_VALUE_INDEX |
> +		     AUD_CONFIG_N_PROG_ENABLE |
> +		     AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK,
> +		     intel_crtc_has_dp_encoder(crtc_state) ?
> +		     AUD_CONFIG_N_VALUE_INDEX :
> +		     audio_config_hdmi_pixel_clock(crtc_state));
>=20=20
>  	mutex_unlock(&i915->display.audio.mutex);
>  }
> @@ -1065,8 +1044,8 @@ static unsigned long i915_audio_component_get_power=
(struct device *kdev)
>  			glk_force_audio_cdclk(i915, true);
>=20=20
>  		if (DISPLAY_VER(i915) >=3D 10)
> -			intel_de_write(i915, AUD_PIN_BUF_CTL,
> -				       (intel_de_read(i915, AUD_PIN_BUF_CTL) | AUD_PIN_BUF_ENABLE));
> +			intel_de_rmw(i915, AUD_PIN_BUF_CTL,
> +				     0, AUD_PIN_BUF_ENABLE);
>  	}
>=20=20
>  	return ret;
> @@ -1090,7 +1069,6 @@ static void i915_audio_component_codec_wake_overrid=
e(struct device *kdev,
>  {
>  	struct drm_i915_private *i915 =3D kdev_to_i915(kdev);
>  	unsigned long cookie;
> -	u32 tmp;
>=20=20
>  	if (DISPLAY_VER(i915) < 9)
>  		return;
> @@ -1101,15 +1079,13 @@ static void i915_audio_component_codec_wake_overr=
ide(struct device *kdev,
>  	 * Enable/disable generating the codec wake signal, overriding the
>  	 * internal logic to generate the codec wake to controller.
>  	 */
> -	tmp =3D intel_de_read(i915, HSW_AUD_CHICKENBIT);
> -	tmp &=3D ~SKL_AUD_CODEC_WAKE_SIGNAL;
> -	intel_de_write(i915, HSW_AUD_CHICKENBIT, tmp);
> +	intel_de_rmw(i915, HSW_AUD_CHICKENBIT,
> +		     SKL_AUD_CODEC_WAKE_SIGNAL, 0);
>  	usleep_range(1000, 1500);
>=20=20
>  	if (enable) {
> -		tmp =3D intel_de_read(i915, HSW_AUD_CHICKENBIT);
> -		tmp |=3D SKL_AUD_CODEC_WAKE_SIGNAL;
> -		intel_de_write(i915, HSW_AUD_CHICKENBIT, tmp);
> +		intel_de_rmw(i915, HSW_AUD_CHICKENBIT,
> +			     0, SKL_AUD_CODEC_WAKE_SIGNAL);
>  		usleep_range(1000, 1500);
>  	}

--=20
Jani Nikula, Intel Open Source Graphics Center
