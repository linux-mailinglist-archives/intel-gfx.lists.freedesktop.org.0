Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8F58ACA2D
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 12:02:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 139F211294F;
	Mon, 22 Apr 2024 10:02:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m/VHU+Cr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 726A6112950
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 10:02:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713780172; x=1745316172;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=utnIIIo+cXLndyojGoH8syTzgWZoWk03JC2VP25t7iE=;
 b=m/VHU+CrfffQh1wwVR5YriBShbZaXG7uz+GQPfum3uUeHZ4jIWUEODCb
 GhEGJ4GcNCSNqktWNkrO3g4WhdToHdruqQvcORKG0Oi/S1PNm/gDRajyh
 3lgtnGdmh/vvFKr6dB/eddQtWdeRcQoen4TyuCW/+MZ6q/lOshCfkd/cd
 uUyzKf2EURBL27yAT6/6STx/Fw5y3onmqhPp7nR3Izq7X+OSjfGK9xvVv
 4+arDkqekozVPCIVW8XR7js4lRqzMz/yQijKeYLncTHcQYjNrQCjzO9RD
 zXWAz/BdSDh8YtxJcpt2KzXXDWPgQDYOD12Eu0EwAKOAhT5cnQgAYa8cg w==;
X-CSE-ConnectionGUID: Gvp4V8KkQFSci2u5j+T3wQ==
X-CSE-MsgGUID: lLH+fO+4RISJRpKxgGvPzA==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9420759"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9420759"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 03:02:51 -0700
X-CSE-ConnectionGUID: K84oSU2pTM+D6Xdr/TuaMw==
X-CSE-MsgGUID: jsmzkU1ST1ilK9fulhWRXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="24038017"
Received: from ralbanes-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.63.128])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 03:02:50 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 08/14] drm/i915/dpio: s/pipe/ch/
In-Reply-To: <20240422083457.23815-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
 <20240422083457.23815-9-ville.syrjala@linux.intel.com>
Date: Mon, 22 Apr 2024 13:02:45 +0300
Message-ID: <871q6xvhoa.fsf@intel.com>
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
> Stop using 'pipe' directly as the DPIO PHY channel. This
> does happen to work on VLV since it just has the one PHY
> with CH0=3D=3Dpipe A and CH1=3D=3Dpipe B. But explicitly converting
> the thing to the right enum makes the whole thing less
> confusing.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll.c | 49 ++++++++++++-----------
>  1 file changed, 25 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/=
i915/display/intel_dpll.c
> index 743cc466ee39..861f4a735251 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -512,6 +512,7 @@ void vlv_crtc_clock_get(struct intel_crtc_state *crtc=
_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	enum dpio_channel ch =3D vlv_pipe_to_channel(crtc->pipe);
>  	enum dpio_phy phy =3D vlv_pipe_to_phy(crtc->pipe);
>  	const struct i9xx_dpll_hw_state *hw_state =3D &crtc_state->dpll_hw_stat=
e.i9xx;
>  	int refclk =3D 100000;
> @@ -523,7 +524,7 @@ void vlv_crtc_clock_get(struct intel_crtc_state *crtc=
_state)
>  		return;
>=20=20
>  	vlv_dpio_get(dev_priv);
> -	tmp =3D vlv_dpio_read(dev_priv, phy, VLV_PLL_DW3(crtc->pipe));
> +	tmp =3D vlv_dpio_read(dev_priv, phy, VLV_PLL_DW3(ch));
>  	vlv_dpio_put(dev_priv);
>=20=20
>  	clock.m1 =3D (tmp >> DPIO_M1DIV_SHIFT) & 7;
> @@ -1867,7 +1868,7 @@ void i9xx_enable_pll(const struct intel_crtc_state =
*crtc_state)
>  }
>=20=20
>  static void vlv_pllb_recal_opamp(struct drm_i915_private *dev_priv,
> -				 enum dpio_phy phy)
> +				 enum dpio_phy phy, enum dpio_channel ch)
>  {
>  	u32 tmp;
>=20=20
> @@ -1875,19 +1876,19 @@ static void vlv_pllb_recal_opamp(struct drm_i915_=
private *dev_priv,
>  	 * PLLB opamp always calibrates to max value of 0x3f, force enable it
>  	 * and set it to a reasonable value instead.
>  	 */
> -	tmp =3D vlv_dpio_read(dev_priv, phy, VLV_PLL_DW17(1));
> +	tmp =3D vlv_dpio_read(dev_priv, phy, VLV_PLL_DW17(ch));
>  	tmp &=3D 0xffffff00;
>  	tmp |=3D 0x00000030;
> -	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW17(1), tmp);
> +	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW17(ch), tmp);
>=20=20
>  	tmp =3D vlv_dpio_read(dev_priv, phy, VLV_REF_DW11);
>  	tmp &=3D 0x00ffffff;
>  	tmp |=3D 0x8c000000;
>  	vlv_dpio_write(dev_priv, phy, VLV_REF_DW11, tmp);
>=20=20
> -	tmp =3D vlv_dpio_read(dev_priv, phy, VLV_PLL_DW17(1));
> +	tmp =3D vlv_dpio_read(dev_priv, phy, VLV_PLL_DW17(ch));
>  	tmp &=3D 0xffffff00;
> -	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW17(1), tmp);
> +	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW17(ch), tmp);
>=20=20
>  	tmp =3D vlv_dpio_read(dev_priv, phy, VLV_REF_DW11);
>  	tmp &=3D 0x00ffffff;
> @@ -1900,6 +1901,7 @@ static void vlv_prepare_pll(const struct intel_crtc=
_state *crtc_state)
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	const struct dpll *clock =3D &crtc_state->dpll;
> +	enum dpio_channel ch =3D vlv_pipe_to_channel(crtc->pipe);
>  	enum dpio_phy phy =3D vlv_pipe_to_phy(crtc->pipe);
>  	enum pipe pipe =3D crtc->pipe;
>  	u32 tmp, coreclk;
> @@ -1910,15 +1912,15 @@ static void vlv_prepare_pll(const struct intel_cr=
tc_state *crtc_state)
>=20=20
>  	/* PLL B needs special handling */
>  	if (pipe =3D=3D PIPE_B)
> -		vlv_pllb_recal_opamp(dev_priv, phy);
> +		vlv_pllb_recal_opamp(dev_priv, phy, ch);
>=20=20
>  	/* Set up Tx target for periodic Rcomp update */
>  	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW17_BCAST, 0x0100000f);
>=20=20
>  	/* Disable target IRef on PLL */
> -	tmp =3D vlv_dpio_read(dev_priv, phy, VLV_PLL_DW16(pipe));
> +	tmp =3D vlv_dpio_read(dev_priv, phy, VLV_PLL_DW16(ch));
>  	tmp &=3D 0x00ffffff;
> -	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW16(pipe), tmp);
> +	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW16(ch), tmp);
>=20=20
>  	/* Disable fast lock */
>  	vlv_dpio_write(dev_priv, phy, VLV_CMN_DW0, 0x610);
> @@ -1937,46 +1939,46 @@ static void vlv_prepare_pll(const struct intel_cr=
tc_state *crtc_state)
>  	 * Note: don't use the DAC post divider as it seems unstable.
>  	 */
>  	tmp |=3D (DPIO_POST_DIV_HDMIDP << DPIO_POST_DIV_SHIFT);
> -	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW3(pipe), tmp);
> +	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW3(ch), tmp);
>=20=20
>  	tmp |=3D DPIO_ENABLE_CALIBRATION;
> -	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW3(pipe), tmp);
> +	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW3(ch), tmp);
>=20=20
>  	/* Set HBR and RBR LPF coefficients */
>  	if (crtc_state->port_clock =3D=3D 162000 ||
>  	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_ANALOG) ||
>  	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> -		vlv_dpio_write(dev_priv, phy, VLV_PLL_DW18(pipe),
> +		vlv_dpio_write(dev_priv, phy, VLV_PLL_DW18(ch),
>  				 0x009f0003);
>  	else
> -		vlv_dpio_write(dev_priv, phy, VLV_PLL_DW18(pipe),
> +		vlv_dpio_write(dev_priv, phy, VLV_PLL_DW18(ch),
>  				 0x00d0000f);
>=20=20
>  	if (intel_crtc_has_dp_encoder(crtc_state)) {
>  		/* Use SSC source */
>  		if (pipe =3D=3D PIPE_A)
> -			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(pipe),
> +			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(ch),
>  					 0x0df40000);
>  		else
> -			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(pipe),
> +			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(ch),
>  					 0x0df70000);
>  	} else { /* HDMI or VGA */
>  		/* Use bend source */
>  		if (pipe =3D=3D PIPE_A)
> -			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(pipe),
> +			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(ch),
>  					 0x0df70000);
>  		else
> -			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(pipe),
> +			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(ch),
>  					 0x0df40000);
>  	}
>=20=20
> -	coreclk =3D vlv_dpio_read(dev_priv, phy, VLV_PLL_DW7(pipe));
> +	coreclk =3D vlv_dpio_read(dev_priv, phy, VLV_PLL_DW7(ch));
>  	coreclk =3D (coreclk & 0x0000ff00) | 0x01c00000;
>  	if (intel_crtc_has_dp_encoder(crtc_state))
>  		coreclk |=3D 0x01000000;
> -	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW7(pipe), coreclk);
> +	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW7(ch), coreclk);
>=20=20
> -	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW19(pipe), 0x87871000);
> +	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW19(ch), 0x87871000);
>=20=20
>  	vlv_dpio_put(dev_priv);
>  }
> @@ -2026,8 +2028,7 @@ static void chv_prepare_pll(const struct intel_crtc=
_state *crtc_state)
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	const struct dpll *clock =3D &crtc_state->dpll;
> -	enum pipe pipe =3D crtc->pipe;
> -	enum dpio_channel ch =3D vlv_pipe_to_channel(pipe);
> +	enum dpio_channel ch =3D vlv_pipe_to_channel(crtc->pipe);
>  	enum dpio_phy phy =3D vlv_pipe_to_phy(crtc->pipe);
>  	u32 tmp, loopfilter, tribuf_calcntr;
>  	u32 m2_frac;
> @@ -2117,9 +2118,9 @@ static void _chv_enable_pll(const struct intel_crtc=
_state *crtc_state)
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	const struct i9xx_dpll_hw_state *hw_state =3D &crtc_state->dpll_hw_stat=
e.i9xx;
> -	enum pipe pipe =3D crtc->pipe;
> -	enum dpio_channel ch =3D vlv_pipe_to_channel(pipe);
> +	enum dpio_channel ch =3D vlv_pipe_to_channel(crtc->pipe);
>  	enum dpio_phy phy =3D vlv_pipe_to_phy(crtc->pipe);
> +	enum pipe pipe =3D crtc->pipe;
>  	u32 tmp;
>=20=20
>  	vlv_dpio_get(dev_priv);

--=20
Jani Nikula, Intel
