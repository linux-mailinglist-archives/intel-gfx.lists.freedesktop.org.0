Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1B25FC77C
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 16:37:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0919B10E2E3;
	Wed, 12 Oct 2022 14:37:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D63CA10E2E3
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 14:37:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665585434; x=1697121434;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=oxQii/nQZjf80yBkYBzVB18S4SKebLfgQ3Uomb1j5N0=;
 b=LaCvitviu2FFhquMgOoeyqU/Mz2qfGdtfuGDKmfGoSvfKA7ijoUYKRWm
 z4+/rAmEr9KUOlXQDX9UtJndkbVXZf5xmKCNGgq4h26kowupTkoJztq1u
 0kzE3AQ6OsEUS7HZP2nnfcx8Vj0jmkNFENx7w2X8+rsRUOPymU8TBv9M9
 51BZkPoGS1SpOP8XlrhS+11wH+P6Q8wylloYFiK51DOFOR1+XY7m8NBC2
 jvYBk9Vw1hef4aWG65ld/iZ7DSQcFLi6GOyrPu5Rsk8yBD/SwblUZ98qk
 zUKOqiNY5Xc8yFRppumnxa510vNVCnRqpFp6sCMusQcRJzXeelflIgqIS Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="292134139"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="292134139"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 07:37:14 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="577849212"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="577849212"
Received: from jhpuonti-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.226])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 07:37:12 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221011170011.17198-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
 <20221011170011.17198-6-ville.syrjala@linux.intel.com>
Date: Wed, 12 Oct 2022 17:37:15 +0300
Message-ID: <87tu49umzo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 05/22] drm/i915/audio: Use REG_BIT() & co.
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
> Switch the audio registers to REG_BIT() & co. Also rename
> G4X_ELDV and G4X_ELD_ADDR_MASK a bit to match the IBX
> definitions.
>
> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Cc: Takashi Iwai <tiwai@suse.de>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_audio.c    | 15 ++--
>  .../gpu/drm/i915/display/intel_audio_regs.h   | 81 +++++++++----------
>  2 files changed, 45 insertions(+), 51 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index baa69151fc09..f79efc6e069c 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -362,7 +362,7 @@ static void g4x_audio_codec_enable(struct intel_encod=
er *encoder,
>=20=20
>  	tmp =3D intel_de_read(i915, G4X_AUD_CNTL_ST);
>  	tmp &=3D ~(G4X_ELDV | G4X_ELD_ADDR_MASK);
> -	len =3D (tmp >> 9) & 0x1f;		/* ELD buffer size */
> +	len =3D REG_FIELD_GET(G4X_ELD_BUFFER_SIZE_MASK, tmp);
>  	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
>=20=20
>  	len =3D min(drm_eld_size(eld) / 4, len);
> @@ -700,7 +700,7 @@ static void ilk_audio_codec_disable(struct intel_enco=
der *encoder,
>  	enum pipe pipe =3D crtc->pipe;
>  	enum port port =3D encoder->port;
>  	struct ilk_audio_regs regs;
> -	u32 tmp, eldv;
> +	u32 tmp;
>=20=20
>  	if (drm_WARN_ON(&i915->drm, port =3D=3D PORT_A))
>  		return;
> @@ -717,11 +717,9 @@ static void ilk_audio_codec_disable(struct intel_enc=
oder *encoder,
>  		tmp |=3D AUD_CONFIG_N_VALUE_INDEX;
>  	intel_de_write(i915, regs.aud_config, tmp);
>=20=20
> -	eldv =3D IBX_ELD_VALID(port);
> -
>  	/* Invalidate ELD */
>  	tmp =3D intel_de_read(i915, regs.aud_cntrl_st2);
> -	tmp &=3D ~eldv;
> +	tmp &=3D ~IBX_ELD_VALID(port);
>  	intel_de_write(i915, regs.aud_cntrl_st2, tmp);
>  }
>=20=20
> @@ -736,8 +734,8 @@ static void ilk_audio_codec_enable(struct intel_encod=
er *encoder,
>  	enum port port =3D encoder->port;
>  	const u8 *eld =3D connector->eld;
>  	struct ilk_audio_regs regs;
> -	u32 tmp, eldv;
>  	int len, i;
> +	u32 tmp;
>=20=20
>  	if (drm_WARN_ON(&i915->drm, port =3D=3D PORT_A))
>  		return;
> @@ -751,11 +749,10 @@ static void ilk_audio_codec_enable(struct intel_enc=
oder *encoder,
>=20=20
>  	ilk_audio_regs_init(i915, pipe, &regs);
>=20=20
> -	eldv =3D IBX_ELD_VALID(port);
>=20=20
>  	/* Invalidate ELD */
>  	tmp =3D intel_de_read(i915, regs.aud_cntrl_st2);
> -	tmp &=3D ~eldv;
> +	tmp &=3D ~IBX_ELD_VALID(port);
>  	intel_de_write(i915, regs.aud_cntrl_st2, tmp);
>=20=20
>  	/* Reset ELD write address */
> @@ -771,7 +768,7 @@ static void ilk_audio_codec_enable(struct intel_encod=
er *encoder,
>=20=20
>  	/* ELD valid */
>  	tmp =3D intel_de_read(i915, regs.aud_cntrl_st2);
> -	tmp |=3D eldv;
> +	tmp |=3D IBX_ELD_VALID(port);
>  	intel_de_write(i915, regs.aud_cntrl_st2, tmp);
>=20=20
>  	/* Enable timestamps */
> diff --git a/drivers/gpu/drm/i915/display/intel_audio_regs.h b/drivers/gp=
u/drm/i915/display/intel_audio_regs.h
> index ebbdd0654919..b5684ed839be 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_audio_regs.h
> @@ -9,9 +9,10 @@
>  #include "i915_reg_defs.h"
>=20=20
>  #define G4X_AUD_CNTL_ST			_MMIO(0x620B4)
> -#define   G4X_ELDV			(1 << 14)
> -#define   G4X_ELD_ADDR_MASK		(0xf << 5)
> -#define   G4X_ELD_ACK			(1 << 4)
> +#define   G4X_ELDV			REG_BIT(14)
> +#define   G4X_ELD_BUFFER_SIZE_MASK	REG_GENMASK(13, 9)
> +#define   G4X_ELD_ADDR_MASK		REG_GENMASK(8, 5)
> +#define   G4X_ELD_ACK			REG_BIT(4)
>  #define G4X_HDMIW_HDMIEDID		_MMIO(0x6210C)
>=20=20
>  #define _IBX_HDMIW_HDMIEDID_A		0xE2050
> @@ -22,12 +23,12 @@
>  #define _IBX_AUD_CNTL_ST_B		0xE21B4
>  #define IBX_AUD_CNTL_ST(pipe)		_MMIO_PIPE(pipe, _IBX_AUD_CNTL_ST_A, \
>  						  _IBX_AUD_CNTL_ST_B)
> -#define   IBX_ELD_BUFFER_SIZE_MASK	(0x1f << 10)
> -#define   IBX_ELD_ADDRESS_MASK		(0x1f << 5)
> -#define   IBX_ELD_ACK			(1 << 4)
> +#define   IBX_ELD_BUFFER_SIZE_MASK	REG_GENMASK(14, 10)
> +#define   IBX_ELD_ADDRESS_MASK		REG_GENMASK(9, 5)
> +#define   IBX_ELD_ACK			REG_BIT(4)
>  #define IBX_AUD_CNTL_ST2		_MMIO(0xE20C0)
> -#define   IBX_CP_READY(port)		((1 << 1) << (((port) - 1) * 4))
> -#define   IBX_ELD_VALID(port)		((1 << 0) << (((port) - 1) * 4))
> +#define   IBX_CP_READY(port)		REG_BIT(((port) - 1) * 4 + 1)
> +#define   IBX_ELD_VALID(port)		REG_BIT(((port) - 1) * 4 + 0)
>=20=20
>  #define _CPT_HDMIW_HDMIEDID_A		0xE5050
>  #define _CPT_HDMIW_HDMIEDID_B		0xE5150
> @@ -54,34 +55,30 @@
>  #define _VLV_AUD_CONFIG_A		(VLV_DISPLAY_BASE + 0x62000)
>  #define _VLV_AUD_CONFIG_B		(VLV_DISPLAY_BASE + 0x62100)
>  #define VLV_AUD_CFG(pipe)		_MMIO_PIPE(pipe, _VLV_AUD_CONFIG_A, _VLV_AUD_=
CONFIG_B)
> -
> -#define   AUD_CONFIG_N_VALUE_INDEX		(1 << 29)
> -#define   AUD_CONFIG_N_PROG_ENABLE		(1 << 28)
> -#define   AUD_CONFIG_UPPER_N_SHIFT		20
> -#define   AUD_CONFIG_UPPER_N_MASK		(0xff << 20)
> -#define   AUD_CONFIG_LOWER_N_SHIFT		4
> -#define   AUD_CONFIG_LOWER_N_MASK		(0xfff << 4)
> -#define   AUD_CONFIG_N_MASK			(AUD_CONFIG_UPPER_N_MASK | AUD_CONFIG_LOWE=
R_N_MASK)
> -#define   AUD_CONFIG_N(n) \
> -	(((((n) >> 12) & 0xff) << AUD_CONFIG_UPPER_N_SHIFT) |	\
> -	 (((n) & 0xfff) << AUD_CONFIG_LOWER_N_SHIFT))
> -#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_SHIFT	16
> -#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK	(0xf << 16)
> -#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_25175	(0 << 16)
> -#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_25200	(1 << 16)
> -#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_27000	(2 << 16)
> -#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_27027	(3 << 16)
> -#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_54000	(4 << 16)
> -#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_54054	(5 << 16)
> -#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_74176	(6 << 16)
> -#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_74250	(7 << 16)
> -#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_148352	(8 << 16)
> -#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_148500	(9 << 16)
> -#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_296703	(10 << 16)
> -#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_297000	(11 << 16)
> -#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_593407	(12 << 16)
> -#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_594000	(13 << 16)
> -#define   AUD_CONFIG_DISABLE_NCTS		(1 << 3)
> +#define   AUD_CONFIG_N_VALUE_INDEX		REG_BIT(29)
> +#define   AUD_CONFIG_N_PROG_ENABLE		REG_BIT(28)
> +#define   AUD_CONFIG_UPPER_N_MASK		REG_GENMASK(27, 20)
> +#define   AUD_CONFIG_LOWER_N_MASK		REG_GENMASK(15, 4)
> +#define   AUD_CONFIG_N_MASK			(AUD_CONFIG_UPPER_N_MASK | \
> +						 AUD_CONFIG_LOWER_N_MASK)
> +#define   AUD_CONFIG_N(n)			(REG_FIELD_PREP(AUD_CONFIG_UPPER_N_MASK, (n)=
 >> 12) | \
> +						 REG_FIELD_PREP(AUD_CONFIG_LOWER_N_MASK, (n) & 0xfff))
> +#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK	REG_GENMASK(19, 16)
> +#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_25175	REG_FIELD_PREP(AUD_CONFIG_PI=
XEL_CLOCK_HDMI_MASK, 0)
> +#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_25200	REG_FIELD_PREP(AUD_CONFIG_PI=
XEL_CLOCK_HDMI_MASK, 1)
> +#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_27000	REG_FIELD_PREP(AUD_CONFIG_PI=
XEL_CLOCK_HDMI_MASK, 2)
> +#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_27027	REG_FIELD_PREP(AUD_CONFIG_PI=
XEL_CLOCK_HDMI_MASK, 3)
> +#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_54000	REG_FIELD_PREP(AUD_CONFIG_PI=
XEL_CLOCK_HDMI_MASK, 4)
> +#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_54054	REG_FIELD_PREP(AUD_CONFIG_PI=
XEL_CLOCK_HDMI_MASK, 5)
> +#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_74176	REG_FIELD_PREP(AUD_CONFIG_PI=
XEL_CLOCK_HDMI_MASK, 6)
> +#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_74250	REG_FIELD_PREP(AUD_CONFIG_PI=
XEL_CLOCK_HDMI_MASK, 7)
> +#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_148352	REG_FIELD_PREP(AUD_CONFIG_P=
IXEL_CLOCK_HDMI_MASK, 8)
> +#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_148500	REG_FIELD_PREP(AUD_CONFIG_P=
IXEL_CLOCK_HDMI_MASK, 9)
> +#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_296703	REG_FIELD_PREP(AUD_CONFIG_P=
IXEL_CLOCK_HDMI_MASK, 10)
> +#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_297000	REG_FIELD_PREP(AUD_CONFIG_P=
IXEL_CLOCK_HDMI_MASK, 11)
> +#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_593407	REG_FIELD_PREP(AUD_CONFIG_P=
IXEL_CLOCK_HDMI_MASK, 12)
> +#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_594000	REG_FIELD_PREP(AUD_CONFIG_P=
IXEL_CLOCK_HDMI_MASK, 13)
> +#define   AUD_CONFIG_DISABLE_NCTS		REG_BIT(3)
>=20=20
>  #define _HSW_AUD_CONFIG_A		0x65000
>  #define _HSW_AUD_CONFIG_B		0x65100
> @@ -94,9 +91,9 @@
>  #define _HSW_AUD_M_CTS_ENABLE_A		0x65028
>  #define _HSW_AUD_M_CTS_ENABLE_B		0x65128
>  #define HSW_AUD_M_CTS_ENABLE(trans)	_MMIO_TRANS(trans, _HSW_AUD_M_CTS_EN=
ABLE_A, _HSW_AUD_M_CTS_ENABLE_B)
> -#define   AUD_M_CTS_M_VALUE_INDEX	(1 << 21)
> -#define   AUD_M_CTS_M_PROG_ENABLE	(1 << 20)
> -#define   AUD_CONFIG_M_MASK		0xfffff
> +#define   AUD_M_CTS_M_VALUE_INDEX	REG_BIT(21)
> +#define   AUD_M_CTS_M_PROG_ENABLE	REG_BIT(20)
> +#define   AUD_CONFIG_M_MASK		REG_GENMASK(19, 0)
>=20=20
>  #define _HSW_AUD_DIP_ELD_CTRL_ST_A	0x650b4
>  #define _HSW_AUD_DIP_ELD_CTRL_ST_B	0x651b4
> @@ -124,11 +121,11 @@
>  #define AUD_DP_2DOT0_CTRL(trans)	_MMIO_TRANS(trans, _AUD_TCA_DP_2DOT0_CT=
RL, _AUD_TCB_DP_2DOT0_CTRL)
>  #define  AUD_ENABLE_SDP_SPLIT		REG_BIT(31)
>=20=20
> -#define HSW_AUD_CHICKENBIT			_MMIO(0x65f10)
> -#define   SKL_AUD_CODEC_WAKE_SIGNAL		(1 << 15)
> +#define HSW_AUD_CHICKENBIT		_MMIO(0x65f10)
> +#define   SKL_AUD_CODEC_WAKE_SIGNAL	REG_BIT(15)
>=20=20
>  #define AUD_FREQ_CNTRL			_MMIO(0x65900)
> -#define AUD_PIN_BUF_CTL		_MMIO(0x48414)
> +#define AUD_PIN_BUF_CTL			_MMIO(0x48414)
>  #define   AUD_PIN_BUF_ENABLE		REG_BIT(31)
>=20=20
>  #define AUD_TS_CDCLK_M			_MMIO(0x65ea0)

--=20
Jani Nikula, Intel Open Source Graphics Center
