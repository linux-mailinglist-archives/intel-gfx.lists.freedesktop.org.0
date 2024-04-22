Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0782A8AC9EB
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 11:54:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D39910F51E;
	Mon, 22 Apr 2024 09:54:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JrniHCN0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2B1110F51E
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 09:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713779670; x=1745315670;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=C+acYP1OrsYei1kyLyMa23f+wKyK6mJQ0xlnzN5VFgw=;
 b=JrniHCN0fMUzkOSzb+3gUxCJNNeHvn6IGj24peaxbvGyFpuI9uZ8dnCg
 jowjlBPB1fhoKSyqdz0/xxAalSpNiOVAmGA4Hgn9/Ovnm57vjyucHZX6p
 KzeqoLPxMhrKKprLyKnPRl64Lv3YQRPyK1wiTb9E+/UDTgL1q5+VCUyTY
 KFWAlWfTHTvHY0tGSQxQuRqE9tS41Wurs+EIiCwNpV1LCEtV6ENKeKkXE
 4+eabGbYbZVTGgSHWvGlXiEoCt9LE0OUyj2NtEMC9QwFKJSvYmZX1de3l
 sDY/qeOcn8Tae1IRroGG8HnmGOYt/WqfhSn58g5Hwai4+mclHJplf/7kI g==;
X-CSE-ConnectionGUID: UEuDPCz+RiKnrG9XYiVfOg==
X-CSE-MsgGUID: ROKNxy9UQwa5uBnm4CCqhQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9462186"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9462186"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 02:54:29 -0700
X-CSE-ConnectionGUID: cg3UUpq5Toi1KkK/gjhgOA==
X-CSE-MsgGUID: WDoxt3UBTdKpTljNwTgV1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="24413355"
Received: from ralbanes-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.63.128])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 02:54:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 05/14] drm/i915/dpio: Remove pointless variables from
 vlv/chv DPLL code
In-Reply-To: <20240422083457.23815-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
 <20240422083457.23815-6-ville.syrjala@linux.intel.com>
Date: Mon, 22 Apr 2024 12:54:25 +0300
Message-ID: <87a5llvi26.fsf@intel.com>
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
> Drop all the local variables for the DPLL dividers for vlv/chv
> and just consult the state directly.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll.c | 62 ++++++++++-------------
>  1 file changed, 27 insertions(+), 35 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/=
i915/display/intel_dpll.c
> index b95032651da0..01f800b6b30e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1899,20 +1899,13 @@ static void vlv_prepare_pll(const struct intel_cr=
tc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	const struct dpll *clock =3D &crtc_state->dpll;
>  	enum dpio_phy phy =3D vlv_pipe_to_phy(crtc->pipe);
>  	enum pipe pipe =3D crtc->pipe;
> -	u32 mdiv;
> -	u32 bestn, bestm1, bestm2, bestp1, bestp2;
> -	u32 coreclk, reg_val;
> +	u32 mdiv, coreclk, reg_val;
>=20=20
>  	vlv_dpio_get(dev_priv);
>=20=20
> -	bestn =3D crtc_state->dpll.n;
> -	bestm1 =3D crtc_state->dpll.m1;
> -	bestm2 =3D crtc_state->dpll.m2;
> -	bestp1 =3D crtc_state->dpll.p1;
> -	bestp2 =3D crtc_state->dpll.p2;
> -
>  	/* See eDP HDMI DPIO driver vbios notes doc */
>=20=20
>  	/* PLL B needs special handling */
> @@ -1931,10 +1924,12 @@ static void vlv_prepare_pll(const struct intel_cr=
tc_state *crtc_state)
>  	vlv_dpio_write(dev_priv, phy, VLV_CMN_DW0, 0x610);
>=20=20
>  	/* Set idtafcrecal before PLL is enabled */
> -	mdiv =3D ((bestm1 << DPIO_M1DIV_SHIFT) | (bestm2 & DPIO_M2DIV_MASK));
> -	mdiv |=3D ((bestp1 << DPIO_P1_SHIFT) | (bestp2 << DPIO_P2_SHIFT));
> -	mdiv |=3D ((bestn << DPIO_N_SHIFT));
> -	mdiv |=3D (1 << DPIO_K_SHIFT);
> +	mdiv =3D (clock->m1 << DPIO_M1DIV_SHIFT) |
> +		(clock->m2 & DPIO_M2DIV_MASK) |
> +		(clock->p1 << DPIO_P1_SHIFT) |
> +		(clock->p2 << DPIO_P2_SHIFT) |
> +		(clock->n << DPIO_N_SHIFT) |
> +		(1 << DPIO_K_SHIFT);
>=20=20
>  	/*
>  	 * Post divider depends on pixel clock rate, DAC vs digital (and LVDS,
> @@ -2030,19 +2025,14 @@ static void chv_prepare_pll(const struct intel_cr=
tc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	const struct dpll *clock =3D &crtc_state->dpll;
>  	enum pipe pipe =3D crtc->pipe;
>  	enum dpio_channel port =3D vlv_pipe_to_channel(pipe);
>  	enum dpio_phy phy =3D vlv_pipe_to_phy(crtc->pipe);
> -	u32 loopfilter, tribuf_calcntr;
> -	u32 bestm2, bestp1, bestp2, bestm2_frac;
> -	u32 dpio_val;
> -	int vco;
> +	u32 dpio_val, loopfilter, tribuf_calcntr;
> +	u32 m2_frac;
>=20=20
> -	bestm2_frac =3D crtc_state->dpll.m2 & 0x3fffff;
> -	bestm2 =3D crtc_state->dpll.m2 >> 22;
> -	bestp1 =3D crtc_state->dpll.p1;
> -	bestp2 =3D crtc_state->dpll.p2;
> -	vco =3D crtc_state->dpll.vco;
> +	m2_frac =3D clock->m2 & 0x3fffff;
>  	dpio_val =3D 0;
>  	loopfilter =3D 0;
>=20=20
> @@ -2050,27 +2040,29 @@ static void chv_prepare_pll(const struct intel_cr=
tc_state *crtc_state)
>=20=20
>  	/* p1 and p2 divider */
>  	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW13(port),
> -			5 << DPIO_CHV_S1_DIV_SHIFT |
> -			bestp1 << DPIO_CHV_P1_DIV_SHIFT |
> -			bestp2 << DPIO_CHV_P2_DIV_SHIFT |
> -			1 << DPIO_CHV_K_DIV_SHIFT);
> +		       5 << DPIO_CHV_S1_DIV_SHIFT |
> +		       clock->p1 << DPIO_CHV_P1_DIV_SHIFT |
> +		       clock->p2 << DPIO_CHV_P2_DIV_SHIFT |
> +		       1 << DPIO_CHV_K_DIV_SHIFT);
>=20=20
>  	/* Feedback post-divider - m2 */
> -	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW0(port), bestm2);
> +	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW0(port),
> +		       clock->m2 >> 22);
>=20=20
>  	/* Feedback refclk divider - n and m1 */
>  	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW1(port),
> -			DPIO_CHV_M1_DIV_BY_2 |
> -			1 << DPIO_CHV_N_DIV_SHIFT);
> +		       DPIO_CHV_M1_DIV_BY_2 |
> +		       1 << DPIO_CHV_N_DIV_SHIFT);
>=20=20
>  	/* M2 fraction division */
> -	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW2(port), bestm2_frac);
> +	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW2(port),
> +		       m2_frac);
>=20=20
>  	/* M2 fraction division enable */
>  	dpio_val =3D vlv_dpio_read(dev_priv, phy, CHV_PLL_DW3(port));
>  	dpio_val &=3D ~(DPIO_CHV_FEEDFWD_GAIN_MASK | DPIO_CHV_FRAC_DIV_EN);
>  	dpio_val |=3D (2 << DPIO_CHV_FEEDFWD_GAIN_SHIFT);
> -	if (bestm2_frac)
> +	if (m2_frac)
>  		dpio_val |=3D DPIO_CHV_FRAC_DIV_EN;
>  	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW3(port), dpio_val);
>=20=20
> @@ -2079,22 +2071,22 @@ static void chv_prepare_pll(const struct intel_cr=
tc_state *crtc_state)
>  	dpio_val &=3D ~(DPIO_CHV_INT_LOCK_THRESHOLD_MASK |
>  					DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE);
>  	dpio_val |=3D (0x5 << DPIO_CHV_INT_LOCK_THRESHOLD_SHIFT);
> -	if (!bestm2_frac)
> +	if (!m2_frac)
>  		dpio_val |=3D DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE;
>  	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW9(port), dpio_val);
>=20=20
>  	/* Loop filter */
> -	if (vco =3D=3D 5400000) {
> +	if (clock->vco =3D=3D 5400000) {
>  		loopfilter |=3D (0x3 << DPIO_CHV_PROP_COEFF_SHIFT);
>  		loopfilter |=3D (0x8 << DPIO_CHV_INT_COEFF_SHIFT);
>  		loopfilter |=3D (0x1 << DPIO_CHV_GAIN_CTRL_SHIFT);
>  		tribuf_calcntr =3D 0x9;
> -	} else if (vco <=3D 6200000) {
> +	} else if (clock->vco <=3D 6200000) {
>  		loopfilter |=3D (0x5 << DPIO_CHV_PROP_COEFF_SHIFT);
>  		loopfilter |=3D (0xB << DPIO_CHV_INT_COEFF_SHIFT);
>  		loopfilter |=3D (0x3 << DPIO_CHV_GAIN_CTRL_SHIFT);
>  		tribuf_calcntr =3D 0x9;
> -	} else if (vco <=3D 6480000) {
> +	} else if (clock->vco <=3D 6480000) {
>  		loopfilter |=3D (0x4 << DPIO_CHV_PROP_COEFF_SHIFT);
>  		loopfilter |=3D (0x9 << DPIO_CHV_INT_COEFF_SHIFT);
>  		loopfilter |=3D (0x3 << DPIO_CHV_GAIN_CTRL_SHIFT);

--=20
Jani Nikula, Intel
