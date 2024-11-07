Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB2D9C00FB
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 10:19:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E7CD10E7C8;
	Thu,  7 Nov 2024 09:19:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YtU6vbZh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A11510E7C8
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2024 09:19:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730971171; x=1762507171;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=mT/5Uytzn3rkqLOlEhZUV86IOu7muaS6E8jyKRJZqjI=;
 b=YtU6vbZh8BPp/3MfxawRAYhG1sc4I1Qi3nGYTxC+0c4p65f/q3RdZRew
 UjvYezTZtYPEgTDc3Gy+76NPyovt9a8pkl6ukA5Morn2t6hgvrc6rTBD+
 cJuETvqmuIFBJAMFrAvgrDjsQxZbymKtUHe6AWNRLaTRdh8teNTkN3n5J
 XBPoBH0xi4xOUnUkINLVquJCncVp0k/0YQ4qFD/zNgcFaDF5kosRRyL8R
 lVdXPinSahcY0QohiklD+LLQB6HjPNG/CPpi5CcrO/J7Qcbbv/4TTj/I2
 9ai2PKiW3lfM3XA13zBqRee8X9zdO2U1sLJNy3cTTfSin8pxZwY/k5djg g==;
X-CSE-ConnectionGUID: Cvq3e0E4TyqKWsQPYC8aVg==
X-CSE-MsgGUID: qdPMsySIRVe8SOYuvS5INQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="42182312"
X-IronPort-AV: E=Sophos;i="6.11,265,1725346800"; d="scan'208";a="42182312"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 01:19:31 -0800
X-CSE-ConnectionGUID: u/Lnwoo0Tz+5MQHdeAQ04A==
X-CSE-MsgGUID: n6VOpJr7ROWfE6UQ2IQbug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,265,1725346800"; d="scan'208";a="85344823"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 01:19:30 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 4/8] drm/i915/lvds: Use struct intel_pps_delays for LVDS
 power sequencing
In-Reply-To: <20241106215859.25446-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241106215859.25446-1-ville.syrjala@linux.intel.com>
 <20241106215859.25446-5-ville.syrjala@linux.intel.com>
Date: Thu, 07 Nov 2024 11:19:26 +0200
Message-ID: <87bjyrflk1.fsf@intel.com>
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

On Wed, 06 Nov 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Reuse struct intel_pps_delays for the LVDS power
> sequencing delays insteda of hand rolling it all.

*instead

> Perhaps in the future we could reuse some of the
> same PPS code for both LVDS and eDP (assuming we
> can decouple the PPS code from intel_dp...).
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  .../drm/i915/display/intel_display_types.h    | 10 ++--
>  drivers/gpu/drm/i915/display/intel_lvds.c     | 49 ++++++++++---------
>  2 files changed, 30 insertions(+), 29 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 4af40315b410..961c81681d6f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -303,11 +303,11 @@ struct intel_panel_bl_funcs {
>=20=20
>  /* in 100us units */
>  struct intel_pps_delays {
> -	u16 power_up;      /* eDP: T1+T3 */
> -	u16 backlight_on;  /* eDP: T8 */
> -	u16 backlight_off; /* eDP: T9 */
> -	u16 power_down;    /* eDP: T10 */
> -	u16 power_cycle;   /* eDP: T11+T12 */
> +	u16 power_up;      /* eDP: T1+T3,   LVDS: T1+T2 */
> +	u16 backlight_on;  /* eDP: T8,      LVDS: T5 */
> +	u16 backlight_off; /* eDP: T9,      LVDS: T6/TX */
> +	u16 power_down;    /* eDP: T10,     LVDS: T3 */
> +	u16 power_cycle;   /* eDP: T11+T12, LVDS: T7+T4 */
>  };
>=20=20
>  enum drrs_type {
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/=
i915/display/intel_lvds.c
> index 6d7637ad980a..6ffd55c17445 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -57,12 +57,7 @@
>=20=20
>  /* Private structure for the integrated LVDS support */
>  struct intel_lvds_pps {
> -	/* 100us units */
> -	int t1_t2;
> -	int t3;
> -	int t4;
> -	int t5;
> -	int tx;
> +	struct intel_pps_delays delays;
>=20=20
>  	int divider;
>=20=20
> @@ -168,12 +163,12 @@ static void intel_lvds_pps_get_hw_state(struct drm_=
i915_private *dev_priv,
>=20=20
>  	val =3D intel_de_read(dev_priv, PP_ON_DELAYS(dev_priv, 0));
>  	pps->port =3D REG_FIELD_GET(PANEL_PORT_SELECT_MASK, val);
> -	pps->t1_t2 =3D REG_FIELD_GET(PANEL_POWER_UP_DELAY_MASK, val);
> -	pps->t5 =3D REG_FIELD_GET(PANEL_LIGHT_ON_DELAY_MASK, val);
> +	pps->delays.power_up =3D REG_FIELD_GET(PANEL_POWER_UP_DELAY_MASK, val);
> +	pps->delays.backlight_on =3D REG_FIELD_GET(PANEL_LIGHT_ON_DELAY_MASK, v=
al);
>=20=20
>  	val =3D intel_de_read(dev_priv, PP_OFF_DELAYS(dev_priv, 0));
> -	pps->t3 =3D REG_FIELD_GET(PANEL_POWER_DOWN_DELAY_MASK, val);
> -	pps->tx =3D REG_FIELD_GET(PANEL_LIGHT_OFF_DELAY_MASK, val);
> +	pps->delays.power_down =3D REG_FIELD_GET(PANEL_POWER_DOWN_DELAY_MASK, v=
al);
> +	pps->delays.backlight_off =3D REG_FIELD_GET(PANEL_LIGHT_OFF_DELAY_MASK,=
 val);
>=20=20
>  	val =3D intel_de_read(dev_priv, PP_DIVISOR(dev_priv, 0));
>  	pps->divider =3D REG_FIELD_GET(PP_REFERENCE_DIVIDER_MASK, val);
> @@ -186,25 +181,30 @@ static void intel_lvds_pps_get_hw_state(struct drm_=
i915_private *dev_priv,
>  	if (val)
>  		val--;
>  	/* Convert from 100ms to 100us units */
> -	pps->t4 =3D val * 1000;
> +	pps->delays.power_cycle =3D val * 1000;
>=20=20
>  	if (DISPLAY_VER(dev_priv) < 5 &&
> -	    pps->t1_t2 =3D=3D 0 && pps->t5 =3D=3D 0 && pps->t3 =3D=3D 0 && pps-=
>tx =3D=3D 0) {
> +	    pps->delays.power_up =3D=3D 0 &&
> +	    pps->delays.backlight_on =3D=3D 0 &&
> +	    pps->delays.power_down =3D=3D 0 &&
> +	    pps->delays.backlight_off =3D=3D 0) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Panel power timings uninitialized, "
>  			    "setting defaults\n");
>  		/* Set T2 to 40ms and T5 to 200ms in 100 usec units */
> -		pps->t1_t2 =3D 40 * 10;
> -		pps->t5 =3D 200 * 10;
> +		pps->delays.power_up =3D 40 * 10;
> +		pps->delays.backlight_on =3D 200 * 10;
>  		/* Set T3 to 35ms and Tx to 200ms in 100 usec units */
> -		pps->t3 =3D 35 * 10;
> -		pps->tx =3D 200 * 10;
> +		pps->delays.power_down =3D 35 * 10;
> +		pps->delays.backlight_off =3D 200 * 10;
>  	}
>=20=20
> -	drm_dbg(&dev_priv->drm, "LVDS PPS:t1+t2 %d t3 %d t4 %d t5 %d tx %d "
> +	drm_dbg(&dev_priv->drm, "LVDS PPS:power_up %d power_down %d power_cycle=
 %d backlight_on %d backlight_off %d "
>  		"divider %d port %d powerdown_on_reset %d\n",
> -		pps->t1_t2, pps->t3, pps->t4, pps->t5, pps->tx,
> -		pps->divider, pps->port, pps->powerdown_on_reset);
> +		pps->delays.power_up, pps->delays.power_down,
> +		pps->delays.power_cycle, pps->delays.backlight_on,
> +		pps->delays.backlight_off, pps->divider,
> +		pps->port, pps->powerdown_on_reset);
>  }
>=20=20
>  static void intel_lvds_pps_init_hw(struct drm_i915_private *dev_priv,
> @@ -221,16 +221,17 @@ static void intel_lvds_pps_init_hw(struct drm_i915_=
private *dev_priv,
>=20=20
>  	intel_de_write(dev_priv, PP_ON_DELAYS(dev_priv, 0),
>  		       REG_FIELD_PREP(PANEL_PORT_SELECT_MASK, pps->port) |
> -		       REG_FIELD_PREP(PANEL_POWER_UP_DELAY_MASK, pps->t1_t2) |
> -		       REG_FIELD_PREP(PANEL_LIGHT_ON_DELAY_MASK, pps->t5));
> +		       REG_FIELD_PREP(PANEL_POWER_UP_DELAY_MASK, pps->delays.power_up)=
 |
> +		       REG_FIELD_PREP(PANEL_LIGHT_ON_DELAY_MASK, pps->delays.backlight=
_on));
>=20=20
>  	intel_de_write(dev_priv, PP_OFF_DELAYS(dev_priv, 0),
> -		       REG_FIELD_PREP(PANEL_POWER_DOWN_DELAY_MASK, pps->t3) |
> -		       REG_FIELD_PREP(PANEL_LIGHT_OFF_DELAY_MASK, pps->tx));
> +		       REG_FIELD_PREP(PANEL_POWER_DOWN_DELAY_MASK, pps->delays.power_d=
own) |
> +		       REG_FIELD_PREP(PANEL_LIGHT_OFF_DELAY_MASK, pps->delays.backligh=
t_off));
>=20=20
>  	intel_de_write(dev_priv, PP_DIVISOR(dev_priv, 0),
>  		       REG_FIELD_PREP(PP_REFERENCE_DIVIDER_MASK, pps->divider) |
> -		       REG_FIELD_PREP(PANEL_POWER_CYCLE_DELAY_MASK, DIV_ROUND_UP(pps->=
t4, 1000) + 1));
> +		       REG_FIELD_PREP(PANEL_POWER_CYCLE_DELAY_MASK,
> +				      DIV_ROUND_UP(pps->delays.power_cycle, 1000) + 1));
>  }
>=20=20
>  static void intel_pre_enable_lvds(struct intel_atomic_state *state,

--=20
Jani Nikula, Intel
