Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B825FC798
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 16:41:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E59210E2F7;
	Wed, 12 Oct 2022 14:41:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 704E410E2E3
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 14:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665585670; x=1697121670;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=KPuGzhk2XJC/gyP1eroAjudsJZ8+Ta3tKoGnfPz0mXU=;
 b=SPXG2Vh0EZUCNW9X5HQ/uzNGJuDCkgCx0JUVE5T7ISHt5rz0vgv62aj1
 RBD38VWyhv3B3jaCYg86fdwkF2bTJ6rxMkpYN0TJOuSbXrlZVMcYPjEh4
 z/TDrrg5nSktsD/MLzlzhEhtCz5hx8a7pgSY2SSXLR61BdC2wex62ThoW
 FhTWf7epyF1B5z3L168Gac/GJJlXIemrW9J1/2gPjVuevZpYgp9xD2wvs
 C0xwPmlkkpHhoFnLJdmDBvjTYGY47Fp86x4GF7xAdnYizeJIOLAI7L071
 CFi7wS8dbqCaiVdyMHZGvd/S90EhCsfzV2SqSC12sjfWX0rxz7N6GlLLL A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="292135088"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="292135088"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 07:41:09 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="731449092"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="731449092"
Received: from jhpuonti-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.226])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 07:41:08 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221011170011.17198-10-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
 <20221011170011.17198-10-ville.syrjala@linux.intel.com>
Date: Wed, 12 Oct 2022 17:41:11 +0300
Message-ID: <87ilkpumt4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 09/22] drm/i915/audio: Read ELD buffer size
 from hardware
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
> We currently read the ELD buffer size from hardware on g4x,
> but on ilk+ we just hardcode it to 84 bytes. Let's unify
> this and just do the hardware readout on all platforms,
> in case the size changes in the future or something.
>
> TODO: should perhaps do the readout during driver init and
> stash the results somewhere so that we could check that the
> connector's ELD actually fits and not even try to enable audio
> in that case...
>
> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Cc: Takashi Iwai <tiwai@suse.de>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 49 ++++++++++++++++++----
>  1 file changed, 42 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index 3f328913fc90..abca5f23673a 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -304,6 +304,15 @@ static int audio_config_hdmi_get_n(const struct inte=
l_crtc_state *crtc_state,
>  	return 0;
>  }
>=20=20
> +static int g4x_eld_buffer_size(struct drm_i915_private *i915)
> +{
> +	u32 tmp;
> +
> +	tmp =3D intel_de_read(i915, G4X_AUD_CNTL_ST);
> +
> +	return REG_FIELD_GET(G4X_ELD_BUFFER_SIZE_MASK, tmp);
> +}
> +
>  static void g4x_audio_codec_disable(struct intel_encoder *encoder,
>  				    const struct intel_crtc_state *old_crtc_state,
>  				    const struct drm_connector_state *old_conn_state)
> @@ -329,10 +338,11 @@ static void g4x_audio_codec_enable(struct intel_enc=
oder *encoder,
>=20=20
>  	tmp =3D intel_de_read(i915, G4X_AUD_CNTL_ST);
>  	tmp &=3D ~(G4X_ELD_VALID | G4X_ELD_ADDRESS_MASK);
> -	len =3D REG_FIELD_GET(G4X_ELD_BUFFER_SIZE_MASK, tmp);
>  	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
>=20=20
> +	len =3D g4x_eld_buffer_size(i915);
>  	len =3D min(drm_eld_size(eld) / 4, len);
> +
>  	for (i =3D 0; i < len; i++)
>  		intel_de_write(i915, G4X_HDMIW_HDMIEDID,
>  			       *((const u32 *)eld + i));
> @@ -442,6 +452,16 @@ hsw_audio_config_update(struct intel_encoder *encode=
r,
>  		hsw_hdmi_audio_config_update(encoder, crtc_state);
>  }
>=20=20
> +static int hsw_eld_buffer_size(struct drm_i915_private *i915,
> +			       enum transcoder cpu_transcoder)
> +{
> +	u32 tmp;
> +
> +	tmp =3D intel_de_read(i915, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder));
> +
> +	return REG_FIELD_GET(IBX_ELD_BUFFER_SIZE_MASK, tmp);
> +}
> +
>  static void hsw_audio_codec_disable(struct intel_encoder *encoder,
>  				    const struct intel_crtc_state *old_crtc_state,
>  				    const struct drm_connector_state *old_conn_state)
> @@ -615,9 +635,10 @@ static void hsw_audio_codec_enable(struct intel_enco=
der *encoder,
>  	tmp &=3D ~IBX_ELD_ADDRESS_MASK;
>  	intel_de_write(i915, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder), tmp);
>=20=20
> -	/* Up to 84 bytes of hw ELD buffer */
> -	len =3D min(drm_eld_size(eld), 84);
> -	for (i =3D 0; i < len / 4; i++)
> +	len =3D hsw_eld_buffer_size(i915, cpu_transcoder);
> +	len =3D min(drm_eld_size(eld) / 4, len);
> +
> +	for (i =3D 0; i < len; i++)
>  		intel_de_write(i915, HSW_AUD_EDID_DATA(cpu_transcoder),
>  			       *((const u32 *)eld + i));
>=20=20
> @@ -658,6 +679,19 @@ static void ilk_audio_regs_init(struct drm_i915_priv=
ate *i915,
>  	}
>  }
>=20=20
> +static int ilk_eld_buffer_size(struct drm_i915_private *i915,
> +			       enum pipe pipe)
> +{
> +	struct ilk_audio_regs regs;
> +	u32 tmp;
> +
> +	ilk_audio_regs_init(i915, pipe, &regs);
> +
> +	tmp =3D intel_de_read(i915, regs.aud_cntl_st);
> +
> +	return REG_FIELD_GET(IBX_ELD_BUFFER_SIZE_MASK, tmp);
> +}
> +
>  static void ilk_audio_codec_disable(struct intel_encoder *encoder,
>  				    const struct intel_crtc_state *old_crtc_state,
>  				    const struct drm_connector_state *old_conn_state)
> @@ -732,9 +766,10 @@ static void ilk_audio_codec_enable(struct intel_enco=
der *encoder,
>  	tmp &=3D ~IBX_ELD_ADDRESS_MASK;
>  	intel_de_write(i915, regs.aud_cntl_st, tmp);
>=20=20
> -	/* Up to 84 bytes of hw ELD buffer */
> -	len =3D min(drm_eld_size(eld), 84);
> -	for (i =3D 0; i < len / 4; i++)
> +	len =3D ilk_eld_buffer_size(i915, pipe);
> +	len =3D min(drm_eld_size(eld) / 4, len);
> +
> +	for (i =3D 0; i < len; i++)
>  		intel_de_write(i915, regs.hdmiw_hdmiedid,
>  			       *((const u32 *)eld + i));

--=20
Jani Nikula, Intel Open Source Graphics Center
