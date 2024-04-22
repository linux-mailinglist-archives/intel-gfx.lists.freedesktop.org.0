Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 691BC8ACA64
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 12:16:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC71511296E;
	Mon, 22 Apr 2024 10:16:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XDwKEJ3n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B63E11296E
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 10:16:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713780981; x=1745316981;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=R3Uh8HHhNPHt/4IHh75UjmddC+0i3W20rcMoYcHXP/M=;
 b=XDwKEJ3n3CwW1MCup4jmkYZGNdqyD4ME65AlJxE34J0COM/UZnqxLeKN
 ewnN085Bm2ZCUJb2uXvezt9WuJZRxtX2Pz+j4tUPP9sUwupX0zDyaJlLQ
 x8ybSW+LusBg06yseGnZgoTJdv7pKwLdQlLDIXUK0HxgOTFihg7JnFAlX
 4LivAiH7lgLRnDeeCbvWUdzki7jMDX36aZa68q8fm8/Nt8no7zx6slLlu
 6znDWEcA7u+kOQtvNX18tHXuoizYT/lHfDU4oejY1bNsR6mw6Bfgk0knQ
 YKGNPi01Rfaw+qGJT2blTkpUQ2dm8nVLo69VEoDSH9D4EQmL042P8FZsW w==;
X-CSE-ConnectionGUID: 5y84MrTbTcCHtNjeCbtFzw==
X-CSE-MsgGUID: saNHMWlhSZ+Q/d+Sj4cWPg==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="19916191"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="19916191"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 03:16:21 -0700
X-CSE-ConnectionGUID: M1YjgjjzSzGYiPFqv9w3IQ==
X-CSE-MsgGUID: /D0E36tITeKfm83o6zbb+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="28636435"
Received: from ralbanes-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.63.128])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 03:16:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 11/14] drm/i915/dpio: Rename a few CHV DPIO PHY registers
In-Reply-To: <20240422083457.23815-12-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
 <20240422083457.23815-12-ville.syrjala@linux.intel.com>
Date: Mon, 22 Apr 2024 13:16:17 +0300
Message-ID: <87sezdu2ha.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Mon, 22 Apr 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Drop the leading underscore from the CHV PHY common lane
> register definitons. We use these directly from actual

*definitions

> code so the underscore here is misleading as usually it indicates
> an intermediate define that shouldn't be used directly.

I could go either this way, or to using the parametrized definitions and
passing the channel.

*shrug*

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  .../i915/display/intel_display_power_well.c   |  8 +++----
>  drivers/gpu/drm/i915/display/intel_dpio_phy.c | 16 ++++++-------
>  drivers/gpu/drm/i915/i915_reg.h               | 23 +++++++++----------
>  3 files changed, 23 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/dr=
ivers/gpu/drm/i915/display/intel_display_power_well.c
> index e8a6e53fd551..49114afc9a61 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -1442,9 +1442,9 @@ static void chv_dpio_cmn_power_well_enable(struct d=
rm_i915_private *dev_priv,
>  	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW28, tmp);
>=20=20
>  	if (id =3D=3D VLV_DISP_PW_DPIO_CMN_BC) {
> -		tmp =3D vlv_dpio_read(dev_priv, phy, _CHV_CMN_DW6_CH1);
> +		tmp =3D vlv_dpio_read(dev_priv, phy, CHV_CMN_DW6_CH1);
>  		tmp |=3D DPIO_DYNPWRDOWNEN_CH1;
> -		vlv_dpio_write(dev_priv, phy, _CHV_CMN_DW6_CH1, tmp);
> +		vlv_dpio_write(dev_priv, phy, CHV_CMN_DW6_CH1, tmp);
>  	} else {
>  		/*
>  		 * Force the non-existing CL2 off. BXT does this
> @@ -1520,9 +1520,9 @@ static void assert_chv_phy_powergate(struct drm_i91=
5_private *dev_priv, enum dpi
>  		return;
>=20=20
>  	if (ch =3D=3D DPIO_CH0)
> -		reg =3D _CHV_CMN_DW0_CH0;
> +		reg =3D CHV_CMN_DW0_CH0;
>  	else
> -		reg =3D _CHV_CMN_DW6_CH1;
> +		reg =3D CHV_CMN_DW6_CH1;
>=20=20
>  	vlv_dpio_get(dev_priv);
>  	val =3D vlv_dpio_read(dev_priv, phy, reg);
> diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/=
drm/i915/display/intel_dpio_phy.c
> index 791902ba729c..89a51b420075 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> @@ -883,21 +883,21 @@ void chv_phy_pre_pll_enable(struct intel_encoder *e=
ncoder,
>=20=20
>  	/* program left/right clock distribution */
>  	if (pipe !=3D PIPE_B) {
> -		val =3D vlv_dpio_read(dev_priv, phy, _CHV_CMN_DW5_CH0);
> +		val =3D vlv_dpio_read(dev_priv, phy, CHV_CMN_DW5_CH0);
>  		val &=3D ~(CHV_BUFLEFTENA1_MASK | CHV_BUFRIGHTENA1_MASK);
>  		if (ch =3D=3D DPIO_CH0)
>  			val |=3D CHV_BUFLEFTENA1_FORCE;
>  		if (ch =3D=3D DPIO_CH1)
>  			val |=3D CHV_BUFRIGHTENA1_FORCE;
> -		vlv_dpio_write(dev_priv, phy, _CHV_CMN_DW5_CH0, val);
> +		vlv_dpio_write(dev_priv, phy, CHV_CMN_DW5_CH0, val);
>  	} else {
> -		val =3D vlv_dpio_read(dev_priv, phy, _CHV_CMN_DW1_CH1);
> +		val =3D vlv_dpio_read(dev_priv, phy, CHV_CMN_DW1_CH1);
>  		val &=3D ~(CHV_BUFLEFTENA2_MASK | CHV_BUFRIGHTENA2_MASK);
>  		if (ch =3D=3D DPIO_CH0)
>  			val |=3D CHV_BUFLEFTENA2_FORCE;
>  		if (ch =3D=3D DPIO_CH1)
>  			val |=3D CHV_BUFRIGHTENA2_FORCE;
> -		vlv_dpio_write(dev_priv, phy, _CHV_CMN_DW1_CH1, val);
> +		vlv_dpio_write(dev_priv, phy, CHV_CMN_DW1_CH1, val);
>  	}
>=20=20
>  	/* program clock channel usage */
> @@ -1036,13 +1036,13 @@ void chv_phy_post_pll_disable(struct intel_encode=
r *encoder,
>=20=20
>  	/* disable left/right clock distribution */
>  	if (pipe !=3D PIPE_B) {
> -		val =3D vlv_dpio_read(dev_priv, phy, _CHV_CMN_DW5_CH0);
> +		val =3D vlv_dpio_read(dev_priv, phy, CHV_CMN_DW5_CH0);
>  		val &=3D ~(CHV_BUFLEFTENA1_MASK | CHV_BUFRIGHTENA1_MASK);
> -		vlv_dpio_write(dev_priv, phy, _CHV_CMN_DW5_CH0, val);
> +		vlv_dpio_write(dev_priv, phy, CHV_CMN_DW5_CH0, val);
>  	} else {
> -		val =3D vlv_dpio_read(dev_priv, phy, _CHV_CMN_DW1_CH1);
> +		val =3D vlv_dpio_read(dev_priv, phy, CHV_CMN_DW1_CH1);
>  		val &=3D ~(CHV_BUFLEFTENA2_MASK | CHV_BUFRIGHTENA2_MASK);
> -		vlv_dpio_write(dev_priv, phy, _CHV_CMN_DW1_CH1, val);
> +		vlv_dpio_write(dev_priv, phy, CHV_CMN_DW1_CH1, val);
>  	}
>=20=20
>  	vlv_dpio_put(dev_priv);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 3804ef4697d5..b24ce3cff1a0 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -459,13 +459,13 @@
>  #define  DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE	1 /* 1: coarse & 0 : fin=
e  */
>  #define CHV_PLL_DW9(ch) _PIPE(ch, _CHV_PLL_DW9_CH0, _CHV_PLL_DW9_CH1)
>=20=20
> -#define _CHV_CMN_DW0_CH0               0x8100
> +#define CHV_CMN_DW0_CH0			0x8100
>  #define   DPIO_ALLDL_POWERDOWN_SHIFT_CH0	19
>  #define   DPIO_ANYDL_POWERDOWN_SHIFT_CH0	18
>  #define   DPIO_ALLDL_POWERDOWN			(1 << 1)
>  #define   DPIO_ANYDL_POWERDOWN			(1 << 0)
>=20=20
> -#define _CHV_CMN_DW5_CH0               0x8114
> +#define CHV_CMN_DW5_CH0			0x8114
>  #define   CHV_BUFRIGHTENA1_DISABLE	(0 << 20)
>  #define   CHV_BUFRIGHTENA1_NORMAL	(1 << 20)
>  #define   CHV_BUFRIGHTENA1_FORCE	(3 << 20)
> @@ -475,18 +475,18 @@
>  #define   CHV_BUFLEFTENA1_FORCE		(3 << 22)
>  #define   CHV_BUFLEFTENA1_MASK		(3 << 22)
>=20=20
> -#define _CHV_CMN_DW13_CH0		0x8134
> -#define _CHV_CMN_DW0_CH1		0x8080
> +#define CHV_CMN_DW13_CH0		0x8134
> +#define CHV_CMN_DW0_CH1			0x8080
>  #define   DPIO_CHV_S1_DIV_SHIFT		21
>  #define   DPIO_CHV_P1_DIV_SHIFT		13 /* 3 bits */
>  #define   DPIO_CHV_P2_DIV_SHIFT		8  /* 5 bits */
>  #define   DPIO_CHV_K_DIV_SHIFT		4
>  #define   DPIO_PLL_FREQLOCK		(1 << 1)
>  #define   DPIO_PLL_LOCK			(1 << 0)
> -#define CHV_CMN_DW13(ch) _PIPE(ch, _CHV_CMN_DW13_CH0, _CHV_CMN_DW0_CH1)
> +#define CHV_CMN_DW13(ch) _PIPE(ch, CHV_CMN_DW13_CH0, CHV_CMN_DW0_CH1)
>=20=20
> -#define _CHV_CMN_DW14_CH0		0x8138
> -#define _CHV_CMN_DW1_CH1		0x8084
> +#define CHV_CMN_DW14_CH0		0x8138
> +#define CHV_CMN_DW1_CH1			0x8084
>  #define   DPIO_AFC_RECAL		(1 << 14)
>  #define   DPIO_DCLKP_EN			(1 << 13)
>  #define   CHV_BUFLEFTENA2_DISABLE	(0 << 17) /* CL2 DW1 only */
> @@ -497,16 +497,15 @@
>  #define   CHV_BUFRIGHTENA2_NORMAL	(1 << 19) /* CL2 DW1 only */
>  #define   CHV_BUFRIGHTENA2_FORCE	(3 << 19) /* CL2 DW1 only */
>  #define   CHV_BUFRIGHTENA2_MASK		(3 << 19) /* CL2 DW1 only */
> -#define CHV_CMN_DW14(ch) _PIPE(ch, _CHV_CMN_DW14_CH0, _CHV_CMN_DW1_CH1)
> +#define CHV_CMN_DW14(ch) _PIPE(ch, CHV_CMN_DW14_CH0, CHV_CMN_DW1_CH1)
>=20=20
> -#define _CHV_CMN_DW19_CH0		0x814c
> -#define _CHV_CMN_DW6_CH1		0x8098
> +#define CHV_CMN_DW19_CH0		0x814c
> +#define CHV_CMN_DW6_CH1		0x8098
>  #define   DPIO_ALLDL_POWERDOWN_SHIFT_CH1	30 /* CL2 DW6 only */
>  #define   DPIO_ANYDL_POWERDOWN_SHIFT_CH1	29 /* CL2 DW6 only */
>  #define   DPIO_DYNPWRDOWNEN_CH1		(1 << 28) /* CL2 DW6 only */
>  #define   CHV_CMN_USEDCLKCHANNEL	(1 << 13)
> -
> -#define CHV_CMN_DW19(ch) _PIPE(ch, _CHV_CMN_DW19_CH0, _CHV_CMN_DW6_CH1)
> +#define CHV_CMN_DW19(ch) _PIPE(ch, CHV_CMN_DW19_CH0, CHV_CMN_DW6_CH1)
>=20=20
>  #define CHV_CMN_DW28			0x8170
>  #define   DPIO_CL1POWERDOWNEN		(1 << 23)

--=20
Jani Nikula, Intel
