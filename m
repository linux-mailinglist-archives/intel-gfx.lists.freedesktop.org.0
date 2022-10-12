Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6191A5FC77B
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 16:37:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E99110E2EA;
	Wed, 12 Oct 2022 14:36:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B0B810E2EA
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 14:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665585416; x=1697121416;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=tMBKdacaf6H1a92rO/kaaqHSINqQIdVswtXdbtTMc+k=;
 b=luQULq1czVGyVuwT0c2trrRH8y/ioIB6jsuYH0EALg0Yld5BqzJjLXBv
 Irz1tMJSxwjVkuLtSKXB5AOxD6A8e/7XgZvr45ux2E4dhtx1oGqqUMcVa
 nJTer1PJ09aSk1FcrmMLohhyyWa67mFlGqQ45m8OMXPi9gE0RnhF9hRzN
 5eMMz3AnbXGUB1nP6za28vayAJd2l5I+TpFdFSRiGnXY/s3utZShnhpZK
 mKGibFIZwxcjxZEnbPwDdB8bypKcotCYivtGilnx8cUQRVFMeLpAj7ykR
 68qqS42c9uwV3TEe4woDVgdQQ2UUmf0xoujkwSSUurniHPrlN0QvqzdXA Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="331302692"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="331302692"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 07:36:56 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="577849108"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="577849108"
Received: from jhpuonti-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.226])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 07:36:53 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221011170011.17198-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
 <20221011170011.17198-5-ville.syrjala@linux.intel.com>
Date: Wed, 12 Oct 2022 17:36:56 +0300
Message-ID: <87wn95un07.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 04/22] drm/i915/audio: Exract struct
 ilk_audio_regs
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
> The "ilk" audio codec codepaths have some duplicated code
> to figure out the correct registers to use on each platform.
> Extrat that into a single place.

*extract

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Cc: Takashi Iwai <tiwai@suse.de>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 85 +++++++++++-----------
>  1 file changed, 43 insertions(+), 42 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index 5517e0a6d868..baa69151fc09 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -665,6 +665,32 @@ static void hsw_audio_codec_enable(struct intel_enco=
der *encoder,
>  	mutex_unlock(&i915->display.audio.mutex);
>  }
>=20=20
> +struct ilk_audio_regs {
> +	i915_reg_t hdmiw_hdmiedid, aud_config, aud_cntl_st, aud_cntrl_st2;
> +};
> +
> +static void ilk_audio_regs_init(struct drm_i915_private *i915,
> +				enum pipe pipe,
> +				struct ilk_audio_regs *regs)
> +{
> +	if (HAS_PCH_IBX(i915)) {
> +		regs->hdmiw_hdmiedid =3D IBX_HDMIW_HDMIEDID(pipe);
> +		regs->aud_config =3D IBX_AUD_CFG(pipe);
> +		regs->aud_cntl_st =3D IBX_AUD_CNTL_ST(pipe);
> +		regs->aud_cntrl_st2 =3D IBX_AUD_CNTL_ST2;
> +	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
> +		regs->hdmiw_hdmiedid =3D VLV_HDMIW_HDMIEDID(pipe);
> +		regs->aud_config =3D VLV_AUD_CFG(pipe);
> +		regs->aud_cntl_st =3D VLV_AUD_CNTL_ST(pipe);
> +		regs->aud_cntrl_st2 =3D VLV_AUD_CNTL_ST2;
> +	} else {
> +		regs->hdmiw_hdmiedid =3D CPT_HDMIW_HDMIEDID(pipe);
> +		regs->aud_config =3D CPT_AUD_CFG(pipe);
> +		regs->aud_cntl_st =3D CPT_AUD_CNTL_ST(pipe);
> +		regs->aud_cntrl_st2 =3D CPT_AUD_CNTRL_ST2;
> +	}
> +}
> +
>  static void ilk_audio_codec_disable(struct intel_encoder *encoder,
>  				    const struct intel_crtc_state *old_crtc_state,
>  				    const struct drm_connector_state *old_conn_state)
> @@ -673,39 +699,30 @@ static void ilk_audio_codec_disable(struct intel_en=
coder *encoder,
>  	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
>  	enum pipe pipe =3D crtc->pipe;
>  	enum port port =3D encoder->port;
> +	struct ilk_audio_regs regs;
>  	u32 tmp, eldv;
> -	i915_reg_t aud_config, aud_cntrl_st2;
>=20=20
>  	if (drm_WARN_ON(&i915->drm, port =3D=3D PORT_A))
>  		return;
>=20=20
> -	if (HAS_PCH_IBX(i915)) {
> -		aud_config =3D IBX_AUD_CFG(pipe);
> -		aud_cntrl_st2 =3D IBX_AUD_CNTL_ST2;
> -	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
> -		aud_config =3D VLV_AUD_CFG(pipe);
> -		aud_cntrl_st2 =3D VLV_AUD_CNTL_ST2;
> -	} else {
> -		aud_config =3D CPT_AUD_CFG(pipe);
> -		aud_cntrl_st2 =3D CPT_AUD_CNTRL_ST2;
> -	}
> +	ilk_audio_regs_init(i915, pipe, &regs);
>=20=20
>  	/* Disable timestamps */
> -	tmp =3D intel_de_read(i915, aud_config);
> +	tmp =3D intel_de_read(i915, regs.aud_config);
>  	tmp &=3D ~AUD_CONFIG_N_VALUE_INDEX;
>  	tmp |=3D AUD_CONFIG_N_PROG_ENABLE;
>  	tmp &=3D ~AUD_CONFIG_UPPER_N_MASK;
>  	tmp &=3D ~AUD_CONFIG_LOWER_N_MASK;
>  	if (intel_crtc_has_dp_encoder(old_crtc_state))
>  		tmp |=3D AUD_CONFIG_N_VALUE_INDEX;
> -	intel_de_write(i915, aud_config, tmp);
> +	intel_de_write(i915, regs.aud_config, tmp);
>=20=20
>  	eldv =3D IBX_ELD_VALID(port);
>=20=20
>  	/* Invalidate ELD */
> -	tmp =3D intel_de_read(i915, aud_cntrl_st2);
> +	tmp =3D intel_de_read(i915, regs.aud_cntrl_st2);
>  	tmp &=3D ~eldv;
> -	intel_de_write(i915, aud_cntrl_st2, tmp);
> +	intel_de_write(i915, regs.aud_cntrl_st2, tmp);
>  }
>=20=20
>  static void ilk_audio_codec_enable(struct intel_encoder *encoder,
> @@ -718,9 +735,9 @@ static void ilk_audio_codec_enable(struct intel_encod=
er *encoder,
>  	enum pipe pipe =3D crtc->pipe;
>  	enum port port =3D encoder->port;
>  	const u8 *eld =3D connector->eld;
> +	struct ilk_audio_regs regs;
>  	u32 tmp, eldv;
>  	int len, i;
> -	i915_reg_t hdmiw_hdmiedid, aud_config, aud_cntl_st, aud_cntrl_st2;
>=20=20
>  	if (drm_WARN_ON(&i915->drm, port =3D=3D PORT_A))
>  		return;
> @@ -732,49 +749,33 @@ static void ilk_audio_codec_enable(struct intel_enc=
oder *encoder,
>  	 * infrastructure is not there yet.
>  	 */
>=20=20
> -	if (HAS_PCH_IBX(i915)) {
> -		hdmiw_hdmiedid =3D IBX_HDMIW_HDMIEDID(pipe);
> -		aud_config =3D IBX_AUD_CFG(pipe);
> -		aud_cntl_st =3D IBX_AUD_CNTL_ST(pipe);
> -		aud_cntrl_st2 =3D IBX_AUD_CNTL_ST2;
> -	} else if (IS_VALLEYVIEW(i915) ||
> -		   IS_CHERRYVIEW(i915)) {
> -		hdmiw_hdmiedid =3D VLV_HDMIW_HDMIEDID(pipe);
> -		aud_config =3D VLV_AUD_CFG(pipe);
> -		aud_cntl_st =3D VLV_AUD_CNTL_ST(pipe);
> -		aud_cntrl_st2 =3D VLV_AUD_CNTL_ST2;
> -	} else {
> -		hdmiw_hdmiedid =3D CPT_HDMIW_HDMIEDID(pipe);
> -		aud_config =3D CPT_AUD_CFG(pipe);
> -		aud_cntl_st =3D CPT_AUD_CNTL_ST(pipe);
> -		aud_cntrl_st2 =3D CPT_AUD_CNTRL_ST2;
> -	}
> +	ilk_audio_regs_init(i915, pipe, &regs);
>=20=20
>  	eldv =3D IBX_ELD_VALID(port);
>=20=20
>  	/* Invalidate ELD */
> -	tmp =3D intel_de_read(i915, aud_cntrl_st2);
> +	tmp =3D intel_de_read(i915, regs.aud_cntrl_st2);
>  	tmp &=3D ~eldv;
> -	intel_de_write(i915, aud_cntrl_st2, tmp);
> +	intel_de_write(i915, regs.aud_cntrl_st2, tmp);
>=20=20
>  	/* Reset ELD write address */
> -	tmp =3D intel_de_read(i915, aud_cntl_st);
> +	tmp =3D intel_de_read(i915, regs.aud_cntl_st);
>  	tmp &=3D ~IBX_ELD_ADDRESS_MASK;
> -	intel_de_write(i915, aud_cntl_st, tmp);
> +	intel_de_write(i915, regs.aud_cntl_st, tmp);
>=20=20
>  	/* Up to 84 bytes of hw ELD buffer */
>  	len =3D min(drm_eld_size(eld), 84);
>  	for (i =3D 0; i < len / 4; i++)
> -		intel_de_write(i915, hdmiw_hdmiedid,
> +		intel_de_write(i915, regs.hdmiw_hdmiedid,
>  			       *((const u32 *)eld + i));
>=20=20
>  	/* ELD valid */
> -	tmp =3D intel_de_read(i915, aud_cntrl_st2);
> +	tmp =3D intel_de_read(i915, regs.aud_cntrl_st2);
>  	tmp |=3D eldv;
> -	intel_de_write(i915, aud_cntrl_st2, tmp);
> +	intel_de_write(i915, regs.aud_cntrl_st2, tmp);
>=20=20
>  	/* Enable timestamps */
> -	tmp =3D intel_de_read(i915, aud_config);
> +	tmp =3D intel_de_read(i915, regs.aud_config);
>  	tmp &=3D ~AUD_CONFIG_N_VALUE_INDEX;
>  	tmp &=3D ~AUD_CONFIG_N_PROG_ENABLE;
>  	tmp &=3D ~AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK;
> @@ -782,7 +783,7 @@ static void ilk_audio_codec_enable(struct intel_encod=
er *encoder,
>  		tmp |=3D AUD_CONFIG_N_VALUE_INDEX;
>  	else
>  		tmp |=3D audio_config_hdmi_pixel_clock(crtc_state);
> -	intel_de_write(i915, aud_config, tmp);
> +	intel_de_write(i915, regs.aud_config, tmp);
>  }
>=20=20
>  /**

--=20
Jani Nikula, Intel Open Source Graphics Center
