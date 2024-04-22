Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1883B8AC924
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 11:41:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8150911293D;
	Mon, 22 Apr 2024 09:41:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aRHwX0aS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 006A01128AC
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 09:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713778898; x=1745314898;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=U40y6/uvh0xOd/pVUrHPHhPErIAuskbAT+f/iBzKRCo=;
 b=aRHwX0aSIYZarwctczT8rGR8wiBT5PEaw3XMNRklNHMEfL0wxaBQTU6j
 NyWkQBE35z2p3+JxLvYZ7oxCCafoH14bClHgm41HGatmV9U/Uh8BZPP2Y
 ylFe4buR6SlXqDs7t00y7t6l5LAYIJMN36OB7BYLT5mdCEMvjslDwbvvl
 8SwW8XbbbhWa5S8OnTjQ5nJguTpO3jKSshfxO/Sn9t6kvpycpkgj1zNsH
 Xt2eWLbSBX0UaFjI6zKjAlOgpEzIm74g7DUmWKsbqEcxOsJIXIllCov9c
 uCqCJgjRpO2RrlDqTKfX7RzKWDpTeGKlVn8N2kV+UpjyXuJ9Q2O73J546 Q==;
X-CSE-ConnectionGUID: t0YofB6nQlOL7yKg4S2IWw==
X-CSE-MsgGUID: AKgj4xglQYGoVJ5dbRYNyw==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="13143579"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="13143579"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 02:41:37 -0700
X-CSE-ConnectionGUID: L9J2qI80SmOnXpNZwTN5YA==
X-CSE-MsgGUID: Fo5sLrbkTPGMsc7GIjI6xQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="55173917"
Received: from ralbanes-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.63.128])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 02:41:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 04/14] drm/i915/dpio: Fix VLV DPIO PLL register dword
 numbering
In-Reply-To: <20240422083457.23815-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
 <20240422083457.23815-5-ville.syrjala@linux.intel.com>
Date: Mon, 22 Apr 2024 12:41:32 +0300
Message-ID: <87cyqhvinn.fsf@intel.com>
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
> The spreadsheet defines the PLL register block as having
> the dwords in the following order:
>
> block   dwords    offsets
> PLL1    0x0-0x7   0x00-0x1f
> PLL2    0x0-0x7   0x20-0x2f
> PLL1ext 0x10-0x1f 0x40-0x5f
> PLL2ext 0x10-0x1f 0x60-0x7f
>
> So dword indexes 0x8-0xf don't even exist. Renumber
> our register defines to match.
>
> Note that the spreadsheet used hex numbering whereas our
> defiens are in decimal. Perhaps we should change that?
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

I am, again, taking your word for it, instead of going on a wild goose
chase trying to find all the specs. The patch matches the commit
message,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_dpll.c | 18 ++++++++---------
>  drivers/gpu/drm/i915/i915_reg.h           | 24 +++++++++++------------
>  2 files changed, 21 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/=
i915/display/intel_dpll.c
> index 7e8aca3c87ec..b95032651da0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1875,19 +1875,19 @@ static void vlv_pllb_recal_opamp(struct drm_i915_=
private *dev_priv,
>  	 * PLLB opamp always calibrates to max value of 0x3f, force enable it
>  	 * and set it to a reasonable value instead.
>  	 */
> -	reg_val =3D vlv_dpio_read(dev_priv, phy, VLV_PLL_DW9(1));
> +	reg_val =3D vlv_dpio_read(dev_priv, phy, VLV_PLL_DW17(1));
>  	reg_val &=3D 0xffffff00;
>  	reg_val |=3D 0x00000030;
> -	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW9(1), reg_val);
> +	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW17(1), reg_val);
>=20=20
>  	reg_val =3D vlv_dpio_read(dev_priv, phy, VLV_REF_DW11);
>  	reg_val &=3D 0x00ffffff;
>  	reg_val |=3D 0x8c000000;
>  	vlv_dpio_write(dev_priv, phy, VLV_REF_DW11, reg_val);
>=20=20
> -	reg_val =3D vlv_dpio_read(dev_priv, phy, VLV_PLL_DW9(1));
> +	reg_val =3D vlv_dpio_read(dev_priv, phy, VLV_PLL_DW17(1));
>  	reg_val &=3D 0xffffff00;
> -	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW9(1), reg_val);
> +	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW17(1), reg_val);
>=20=20
>  	reg_val =3D vlv_dpio_read(dev_priv, phy, VLV_REF_DW11);
>  	reg_val &=3D 0x00ffffff;
> @@ -1923,9 +1923,9 @@ static void vlv_prepare_pll(const struct intel_crtc=
_state *crtc_state)
>  	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW17_BCAST, 0x0100000f);
>=20=20
>  	/* Disable target IRef on PLL */
> -	reg_val =3D vlv_dpio_read(dev_priv, phy, VLV_PLL_DW8(pipe));
> +	reg_val =3D vlv_dpio_read(dev_priv, phy, VLV_PLL_DW16(pipe));
>  	reg_val &=3D 0x00ffffff;
> -	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW8(pipe), reg_val);
> +	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW16(pipe), reg_val);
>=20=20
>  	/* Disable fast lock */
>  	vlv_dpio_write(dev_priv, phy, VLV_CMN_DW0, 0x610);
> @@ -1951,10 +1951,10 @@ static void vlv_prepare_pll(const struct intel_cr=
tc_state *crtc_state)
>  	if (crtc_state->port_clock =3D=3D 162000 ||
>  	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_ANALOG) ||
>  	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> -		vlv_dpio_write(dev_priv, phy, VLV_PLL_DW10(pipe),
> +		vlv_dpio_write(dev_priv, phy, VLV_PLL_DW18(pipe),
>  				 0x009f0003);
>  	else
> -		vlv_dpio_write(dev_priv, phy, VLV_PLL_DW10(pipe),
> +		vlv_dpio_write(dev_priv, phy, VLV_PLL_DW18(pipe),
>  				 0x00d0000f);
>=20=20
>  	if (intel_crtc_has_dp_encoder(crtc_state)) {
> @@ -1981,7 +1981,7 @@ static void vlv_prepare_pll(const struct intel_crtc=
_state *crtc_state)
>  		coreclk |=3D 0x01000000;
>  	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW7(pipe), coreclk);
>=20=20
> -	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW11(pipe), 0x87871000);
> +	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW19(pipe), 0x87871000);
>=20=20
>  	vlv_dpio_put(dev_priv);
>  }
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 8f3c83d2ab8d..747221f8ac72 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -229,21 +229,21 @@
>  #define _VLV_PLL_DW7_CH1		0x803c
>  #define VLV_PLL_DW7(ch) _PIPE(ch, _VLV_PLL_DW7_CH0, _VLV_PLL_DW7_CH1)
>=20=20
> -#define _VLV_PLL_DW8_CH0		0x8040
> -#define _VLV_PLL_DW8_CH1		0x8060
> -#define VLV_PLL_DW8(ch) _PIPE(ch, _VLV_PLL_DW8_CH0, _VLV_PLL_DW8_CH1)
> +#define _VLV_PLL_DW16_CH0		0x8040
> +#define _VLV_PLL_DW16_CH1		0x8060
> +#define VLV_PLL_DW16(ch) _PIPE(ch, _VLV_PLL_DW16_CH0, _VLV_PLL_DW16_CH1)
>=20=20
> -#define _VLV_PLL_DW9_CH0		0x8044
> -#define _VLV_PLL_DW9_CH1		0x8064
> -#define VLV_PLL_DW9(ch) _PIPE(ch, _VLV_PLL_DW9_CH0, _VLV_PLL_DW9_CH1)
> +#define _VLV_PLL_DW17_CH0		0x8044
> +#define _VLV_PLL_DW17_CH1		0x8064
> +#define VLV_PLL_DW17(ch) _PIPE(ch, _VLV_PLL_DW17_CH0, _VLV_PLL_DW17_CH1)
>=20=20
> -#define _VLV_PLL_DW10_CH0		0x8048
> -#define _VLV_PLL_DW10_CH1		0x8068
> -#define VLV_PLL_DW10(ch) _PIPE(ch, _VLV_PLL_DW10_CH0, _VLV_PLL_DW10_CH1)
> +#define _VLV_PLL_DW18_CH0		0x8048
> +#define _VLV_PLL_DW18_CH1		0x8068
> +#define VLV_PLL_DW18(ch) _PIPE(ch, _VLV_PLL_DW18_CH0, _VLV_PLL_DW18_CH1)
>=20=20
> -#define _VLV_PLL_DW11_CH0		0x804c
> -#define _VLV_PLL_DW11_CH1		0x806c
> -#define VLV_PLL_DW11(ch) _PIPE(ch, _VLV_PLL_DW11_CH0, _VLV_PLL_DW11_CH1)
> +#define _VLV_PLL_DW19_CH0		0x804c
> +#define _VLV_PLL_DW19_CH1		0x806c
> +#define VLV_PLL_DW19(ch) _PIPE(ch, _VLV_PLL_DW19_CH0, _VLV_PLL_DW19_CH1)
>=20=20
>  /* Spec for ref block start counts at DW8 */
>  #define VLV_REF_DW11			0x80ac

--=20
Jani Nikula, Intel
