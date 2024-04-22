Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19EB58ACA01
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 11:56:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75C74112949;
	Mon, 22 Apr 2024 09:56:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Up1cNBvp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4207011294D
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 09:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713779799; x=1745315799;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=NY20tcQSTi7y9Q/PIFlcz5H3wp9k2OBQd98rUkvXeRQ=;
 b=Up1cNBvpOmWReLS3BTMCqPz20IknzwcO0prAp3NHaAvxULAyDM55ZIQ6
 Sq9DIL9qAbnIfnIpomCkeh+dd0JLA07sio7Rj5JrGWU/Jx9YaV/TtV6SJ
 MJipWxE55gwwhrywwJYCDuhEUcOXGZ76kIGWMJHmuiYUfKE/5+O5OjG+V
 UvYddGaES+lQbcOhGOyi/mVWc2FfVxt0DyRBCDqIOFbJlS8e1v9gPEvC9
 ISQEtpQptFnHOoucy6tK3pb44XpIU413RYvxrjCuq3cXMf7t0PCn3Uf78
 TD/GUM3PsUxgffvQl+ULgUS4Sl0L3m1OXYDGqC/MDo7iB+d/djeRsV69r A==;
X-CSE-ConnectionGUID: nk6qnALeSSm3FMnCIkO5Og==
X-CSE-MsgGUID: FKK5UGGzSBi90JIXSeoqZA==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="13144987"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="13144987"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 02:56:32 -0700
X-CSE-ConnectionGUID: MVPXJHQGTRqGcXzZeY7ONA==
X-CSE-MsgGUID: U0nmVGGNSPW/oYW5HphJxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="55175384"
Received: from ralbanes-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.63.128])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 02:56:30 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 06/14] drm/i915/dpio: Rename some variables
In-Reply-To: <20240422083457.23815-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
 <20240422083457.23815-7-ville.syrjala@linux.intel.com>
Date: Mon, 22 Apr 2024 12:56:27 +0300
Message-ID: <877cgpvhys.fsf@intel.com>
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
> Use a constent 'tmp' as the variable name for the register

*consistent

> values during rmw when we don't deal with multiple registers
> in parallel.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll.c | 97 +++++++++++------------
>  1 file changed, 48 insertions(+), 49 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/=
i915/display/intel_dpll.c
> index 01f800b6b30e..0a738b491c40 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -514,23 +514,23 @@ void vlv_crtc_clock_get(struct intel_crtc_state *cr=
tc_state)
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	enum dpio_phy phy =3D vlv_pipe_to_phy(crtc->pipe);
>  	const struct i9xx_dpll_hw_state *hw_state =3D &crtc_state->dpll_hw_stat=
e.i9xx;
> -	struct dpll clock;
> -	u32 mdiv;
>  	int refclk =3D 100000;
> +	struct dpll clock;
> +	u32 tmp;
>=20=20
>  	/* In case of DSI, DPLL will not be used */
>  	if ((hw_state->dpll & DPLL_VCO_ENABLE) =3D=3D 0)
>  		return;
>=20=20
>  	vlv_dpio_get(dev_priv);
> -	mdiv =3D vlv_dpio_read(dev_priv, phy, VLV_PLL_DW3(crtc->pipe));
> +	tmp =3D vlv_dpio_read(dev_priv, phy, VLV_PLL_DW3(crtc->pipe));
>  	vlv_dpio_put(dev_priv);
>=20=20
> -	clock.m1 =3D (mdiv >> DPIO_M1DIV_SHIFT) & 7;
> -	clock.m2 =3D mdiv & DPIO_M2DIV_MASK;
> -	clock.n =3D (mdiv >> DPIO_N_SHIFT) & 0xf;
> -	clock.p1 =3D (mdiv >> DPIO_P1_SHIFT) & 7;
> -	clock.p2 =3D (mdiv >> DPIO_P2_SHIFT) & 0x1f;
> +	clock.m1 =3D (tmp >> DPIO_M1DIV_SHIFT) & 7;
> +	clock.m2 =3D tmp & DPIO_M2DIV_MASK;
> +	clock.n =3D (tmp >> DPIO_N_SHIFT) & 0xf;
> +	clock.p1 =3D (tmp >> DPIO_P1_SHIFT) & 7;
> +	clock.p2 =3D (tmp >> DPIO_P2_SHIFT) & 0x1f;
>=20=20
>  	crtc_state->port_clock =3D vlv_calc_dpll_params(refclk, &clock);
>  }
> @@ -1869,30 +1869,30 @@ void i9xx_enable_pll(const struct intel_crtc_stat=
e *crtc_state)
>  static void vlv_pllb_recal_opamp(struct drm_i915_private *dev_priv,
>  				 enum dpio_phy phy)
>  {
> -	u32 reg_val;
> +	u32 tmp;
>=20=20
>  	/*
>  	 * PLLB opamp always calibrates to max value of 0x3f, force enable it
>  	 * and set it to a reasonable value instead.
>  	 */
> -	reg_val =3D vlv_dpio_read(dev_priv, phy, VLV_PLL_DW17(1));
> -	reg_val &=3D 0xffffff00;
> -	reg_val |=3D 0x00000030;
> -	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW17(1), reg_val);
> +	tmp =3D vlv_dpio_read(dev_priv, phy, VLV_PLL_DW17(1));
> +	tmp &=3D 0xffffff00;
> +	tmp |=3D 0x00000030;
> +	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW17(1), tmp);
>=20=20
> -	reg_val =3D vlv_dpio_read(dev_priv, phy, VLV_REF_DW11);
> -	reg_val &=3D 0x00ffffff;
> -	reg_val |=3D 0x8c000000;
> -	vlv_dpio_write(dev_priv, phy, VLV_REF_DW11, reg_val);
> +	tmp =3D vlv_dpio_read(dev_priv, phy, VLV_REF_DW11);
> +	tmp &=3D 0x00ffffff;
> +	tmp |=3D 0x8c000000;
> +	vlv_dpio_write(dev_priv, phy, VLV_REF_DW11, tmp);
>=20=20
> -	reg_val =3D vlv_dpio_read(dev_priv, phy, VLV_PLL_DW17(1));
> -	reg_val &=3D 0xffffff00;
> -	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW17(1), reg_val);
> +	tmp =3D vlv_dpio_read(dev_priv, phy, VLV_PLL_DW17(1));
> +	tmp &=3D 0xffffff00;
> +	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW17(1), tmp);
>=20=20
> -	reg_val =3D vlv_dpio_read(dev_priv, phy, VLV_REF_DW11);
> -	reg_val &=3D 0x00ffffff;
> -	reg_val |=3D 0xb0000000;
> -	vlv_dpio_write(dev_priv, phy, VLV_REF_DW11, reg_val);
> +	tmp =3D vlv_dpio_read(dev_priv, phy, VLV_REF_DW11);
> +	tmp &=3D 0x00ffffff;
> +	tmp |=3D 0xb0000000;
> +	vlv_dpio_write(dev_priv, phy, VLV_REF_DW11, tmp);
>  }
>=20=20
>  static void vlv_prepare_pll(const struct intel_crtc_state *crtc_state)
> @@ -1902,7 +1902,7 @@ static void vlv_prepare_pll(const struct intel_crtc=
_state *crtc_state)
>  	const struct dpll *clock =3D &crtc_state->dpll;
>  	enum dpio_phy phy =3D vlv_pipe_to_phy(crtc->pipe);
>  	enum pipe pipe =3D crtc->pipe;
> -	u32 mdiv, coreclk, reg_val;
> +	u32 tmp, coreclk;
>=20=20
>  	vlv_dpio_get(dev_priv);
>=20=20
> @@ -1916,15 +1916,15 @@ static void vlv_prepare_pll(const struct intel_cr=
tc_state *crtc_state)
>  	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW17_BCAST, 0x0100000f);
>=20=20
>  	/* Disable target IRef on PLL */
> -	reg_val =3D vlv_dpio_read(dev_priv, phy, VLV_PLL_DW16(pipe));
> -	reg_val &=3D 0x00ffffff;
> -	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW16(pipe), reg_val);
> +	tmp =3D vlv_dpio_read(dev_priv, phy, VLV_PLL_DW16(pipe));
> +	tmp &=3D 0x00ffffff;
> +	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW16(pipe), tmp);
>=20=20
>  	/* Disable fast lock */
>  	vlv_dpio_write(dev_priv, phy, VLV_CMN_DW0, 0x610);
>=20=20
>  	/* Set idtafcrecal before PLL is enabled */
> -	mdiv =3D (clock->m1 << DPIO_M1DIV_SHIFT) |
> +	tmp =3D (clock->m1 << DPIO_M1DIV_SHIFT) |
>  		(clock->m2 & DPIO_M2DIV_MASK) |
>  		(clock->p1 << DPIO_P1_SHIFT) |
>  		(clock->p2 << DPIO_P2_SHIFT) |
> @@ -1936,11 +1936,11 @@ static void vlv_prepare_pll(const struct intel_cr=
tc_state *crtc_state)
>  	 * but we don't support that).
>  	 * Note: don't use the DAC post divider as it seems unstable.
>  	 */
> -	mdiv |=3D (DPIO_POST_DIV_HDMIDP << DPIO_POST_DIV_SHIFT);
> -	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW3(pipe), mdiv);
> +	tmp |=3D (DPIO_POST_DIV_HDMIDP << DPIO_POST_DIV_SHIFT);
> +	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW3(pipe), tmp);
>=20=20
> -	mdiv |=3D DPIO_ENABLE_CALIBRATION;
> -	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW3(pipe), mdiv);
> +	tmp |=3D DPIO_ENABLE_CALIBRATION;
> +	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW3(pipe), tmp);
>=20=20
>  	/* Set HBR and RBR LPF coefficients */
>  	if (crtc_state->port_clock =3D=3D 162000 ||
> @@ -2029,11 +2029,10 @@ static void chv_prepare_pll(const struct intel_cr=
tc_state *crtc_state)
>  	enum pipe pipe =3D crtc->pipe;
>  	enum dpio_channel port =3D vlv_pipe_to_channel(pipe);
>  	enum dpio_phy phy =3D vlv_pipe_to_phy(crtc->pipe);
> -	u32 dpio_val, loopfilter, tribuf_calcntr;
> +	u32 tmp, loopfilter, tribuf_calcntr;
>  	u32 m2_frac;
>=20=20
>  	m2_frac =3D clock->m2 & 0x3fffff;
> -	dpio_val =3D 0;
>  	loopfilter =3D 0;
>=20=20
>  	vlv_dpio_get(dev_priv);
> @@ -2059,21 +2058,21 @@ static void chv_prepare_pll(const struct intel_cr=
tc_state *crtc_state)
>  		       m2_frac);
>=20=20
>  	/* M2 fraction division enable */
> -	dpio_val =3D vlv_dpio_read(dev_priv, phy, CHV_PLL_DW3(port));
> -	dpio_val &=3D ~(DPIO_CHV_FEEDFWD_GAIN_MASK | DPIO_CHV_FRAC_DIV_EN);
> -	dpio_val |=3D (2 << DPIO_CHV_FEEDFWD_GAIN_SHIFT);
> +	tmp =3D vlv_dpio_read(dev_priv, phy, CHV_PLL_DW3(port));
> +	tmp &=3D ~(DPIO_CHV_FEEDFWD_GAIN_MASK | DPIO_CHV_FRAC_DIV_EN);
> +	tmp |=3D (2 << DPIO_CHV_FEEDFWD_GAIN_SHIFT);
>  	if (m2_frac)
> -		dpio_val |=3D DPIO_CHV_FRAC_DIV_EN;
> -	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW3(port), dpio_val);
> +		tmp |=3D DPIO_CHV_FRAC_DIV_EN;
> +	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW3(port), tmp);
>=20=20
>  	/* Program digital lock detect threshold */
> -	dpio_val =3D vlv_dpio_read(dev_priv, phy, CHV_PLL_DW9(port));
> -	dpio_val &=3D ~(DPIO_CHV_INT_LOCK_THRESHOLD_MASK |
> +	tmp =3D vlv_dpio_read(dev_priv, phy, CHV_PLL_DW9(port));
> +	tmp &=3D ~(DPIO_CHV_INT_LOCK_THRESHOLD_MASK |
>  					DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE);
> -	dpio_val |=3D (0x5 << DPIO_CHV_INT_LOCK_THRESHOLD_SHIFT);
> +	tmp |=3D (0x5 << DPIO_CHV_INT_LOCK_THRESHOLD_SHIFT);
>  	if (!m2_frac)
> -		dpio_val |=3D DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE;
> -	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW9(port), dpio_val);
> +		tmp |=3D DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE;
> +	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW9(port), tmp);
>=20=20
>  	/* Loop filter */
>  	if (clock->vco =3D=3D 5400000) {
> @@ -2100,10 +2099,10 @@ static void chv_prepare_pll(const struct intel_cr=
tc_state *crtc_state)
>  	}
>  	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW6(port), loopfilter);
>=20=20
> -	dpio_val =3D vlv_dpio_read(dev_priv, phy, CHV_PLL_DW8(port));
> -	dpio_val &=3D ~DPIO_CHV_TDC_TARGET_CNT_MASK;
> -	dpio_val |=3D (tribuf_calcntr << DPIO_CHV_TDC_TARGET_CNT_SHIFT);
> -	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW8(port), dpio_val);
> +	tmp =3D vlv_dpio_read(dev_priv, phy, CHV_PLL_DW8(port));
> +	tmp &=3D ~DPIO_CHV_TDC_TARGET_CNT_MASK;
> +	tmp |=3D (tribuf_calcntr << DPIO_CHV_TDC_TARGET_CNT_SHIFT);
> +	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW8(port), tmp);
>=20=20
>  	/* AFC Recal */
>  	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW14(port),

--=20
Jani Nikula, Intel
