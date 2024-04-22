Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6A88ACA10
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 11:59:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 442C210F505;
	Mon, 22 Apr 2024 09:59:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gxyg60vS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B62310F19C
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 09:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713779982; x=1745315982;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=kwBBL5wnvLxTHPSMVZOJUm6d5uImRJanZGK3Q5Sac1o=;
 b=Gxyg60vSjDP2eE85A5eDk6LK0ln8Ilkjz75KG/nj+aliR2tGPZW1XwgJ
 7HKa3LPLzwFyPFzU2Qadq+sZTOifbqQ/sN4BpMIKh0iENjW3Ba19JMtbz
 OqJfcY04fWPuiCFars4HkEGNkHRtncWNoBuMIxVYLOUbN+xltyQ/7GZVl
 zIm+owC90C23V88uvN2g++UTBF/EZfZESvj6Hp3x/yx4PVE4y0vtu9W2L
 tMQBgttsz+KNS2YKigpmIhmUaJ3zsoXEQYPjLCJmvwPwXoVUSGjSVQpcB
 GYMmhP07q4JLoS4x3GWDuzYuHEoCY6ihvEC00cZEIpGTlPzRAQGTK9pvl A==;
X-CSE-ConnectionGUID: 4/e6z9dgQ2iLysAp62f9Ug==
X-CSE-MsgGUID: 8e9mTKq9QVSTrUrm6UU3gg==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="13145281"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="13145281"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 02:59:42 -0700
X-CSE-ConnectionGUID: YqSGjFsJQK2I5EH4ICAzHA==
X-CSE-MsgGUID: WmRf0OtUSmmZ1R8y4sFzOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="55175819"
Received: from ralbanes-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.63.128])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 02:59:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 07/14] drm/i915/dpio: s/port/ch/
In-Reply-To: <20240422083457.23815-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
 <20240422083457.23815-8-ville.syrjala@linux.intel.com>
Date: Mon, 22 Apr 2024 12:59:37 +0300
Message-ID: <874jbtvhti.fsf@intel.com>
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
> Stop calling the DPIO PHY channel "port". Just say "ch", which
> is already used in a bunch of places.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpio_phy.c | 44 +++++++--------
>  drivers/gpu/drm/i915/display/intel_dpll.c     | 54 +++++++++----------
>  2 files changed, 49 insertions(+), 49 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/=
drm/i915/display/intel_dpio_phy.c
> index 6cbee88e608f..e4a04c9b5b19 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> @@ -1069,23 +1069,23 @@ void vlv_set_phy_signal_level(struct intel_encode=
r *encoder,
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	enum dpio_channel port =3D vlv_dig_port_to_channel(dig_port);
> +	enum dpio_channel ch =3D vlv_dig_port_to_channel(dig_port);
>  	enum dpio_phy phy =3D vlv_pipe_to_phy(crtc->pipe);
>=20=20
>  	vlv_dpio_get(dev_priv);
>=20=20
> -	vlv_dpio_write(dev_priv, phy, VLV_TX_DW5(port), 0x00000000);
> -	vlv_dpio_write(dev_priv, phy, VLV_TX_DW4(port), demph_reg_value);
> -	vlv_dpio_write(dev_priv, phy, VLV_TX_DW2(port),
> +	vlv_dpio_write(dev_priv, phy, VLV_TX_DW5(ch), 0x00000000);
> +	vlv_dpio_write(dev_priv, phy, VLV_TX_DW4(ch), demph_reg_value);
> +	vlv_dpio_write(dev_priv, phy, VLV_TX_DW2(ch),
>  			 uniqtranscale_reg_value);
> -	vlv_dpio_write(dev_priv, phy, VLV_TX_DW3(port), 0x0C782040);
> +	vlv_dpio_write(dev_priv, phy, VLV_TX_DW3(ch), 0x0C782040);
>=20=20
>  	if (tx3_demph)
> -		vlv_dpio_write(dev_priv, phy, VLV_TX3_DW4(port), tx3_demph);
> +		vlv_dpio_write(dev_priv, phy, VLV_TX3_DW4(ch), tx3_demph);
>=20=20
> -	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW11(port), 0x00030000);
> -	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW9(port), preemph_reg_value);
> -	vlv_dpio_write(dev_priv, phy, VLV_TX_DW5(port), DPIO_TX_OCALINIT_EN);
> +	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW11(ch), 0x00030000);
> +	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW9(ch), preemph_reg_value);
> +	vlv_dpio_write(dev_priv, phy, VLV_TX_DW5(ch), DPIO_TX_OCALINIT_EN);
>=20=20
>  	vlv_dpio_put(dev_priv);
>  }
> @@ -1096,25 +1096,25 @@ void vlv_phy_pre_pll_enable(struct intel_encoder =
*encoder,
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	enum dpio_channel port =3D vlv_dig_port_to_channel(dig_port);
> +	enum dpio_channel ch =3D vlv_dig_port_to_channel(dig_port);
>  	enum dpio_phy phy =3D vlv_pipe_to_phy(crtc->pipe);
>=20=20
>  	/* Program Tx lane resets to default */
>  	vlv_dpio_get(dev_priv);
>=20=20
> -	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW0(port),
> +	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW0(ch),
>  			 DPIO_PCS_TX_LANE2_RESET |
>  			 DPIO_PCS_TX_LANE1_RESET);
> -	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW1(port),
> +	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW1(ch),
>  			 DPIO_PCS_CLK_CRI_RXEB_EIOS_EN |
>  			 DPIO_PCS_CLK_CRI_RXDIGFILTSG_EN |
>  			 (1<<DPIO_PCS_CLK_DATAWIDTH_SHIFT) |
>  				 DPIO_PCS_CLK_SOFT_RESET);
>=20=20
>  	/* Fix up inter-pair skew failure */
> -	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW12(port), 0x00750f00);
> -	vlv_dpio_write(dev_priv, phy, VLV_TX_DW11(port), 0x00001500);
> -	vlv_dpio_write(dev_priv, phy, VLV_TX_DW14(port), 0x40400000);
> +	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW12(ch), 0x00750f00);
> +	vlv_dpio_write(dev_priv, phy, VLV_TX_DW11(ch), 0x00001500);
> +	vlv_dpio_write(dev_priv, phy, VLV_TX_DW14(ch), 0x40400000);
>=20=20
>  	vlv_dpio_put(dev_priv);
>  }
> @@ -1126,7 +1126,7 @@ void vlv_phy_pre_encoder_enable(struct intel_encode=
r *encoder,
>  	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	enum dpio_channel port =3D vlv_dig_port_to_channel(dig_port);
> +	enum dpio_channel ch =3D vlv_dig_port_to_channel(dig_port);
>  	enum pipe pipe =3D crtc->pipe;
>  	enum dpio_phy phy =3D vlv_pipe_to_phy(pipe);
>  	u32 val;
> @@ -1140,11 +1140,11 @@ void vlv_phy_pre_encoder_enable(struct intel_enco=
der *encoder,
>  	else
>  		val &=3D ~(1<<21);
>  	val |=3D 0x001000c4;
> -	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW8(port), val);
> +	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW8(ch), val);
>=20=20
>  	/* Program lane clock */
> -	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW14(port), 0x00760018);
> -	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW23(port), 0x00400888);
> +	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW14(ch), 0x00760018);
> +	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW23(ch), 0x00400888);
>=20=20
>  	vlv_dpio_put(dev_priv);
>  }
> @@ -1155,11 +1155,11 @@ void vlv_phy_reset_lanes(struct intel_encoder *en=
coder,
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
> -	enum dpio_channel port =3D vlv_dig_port_to_channel(dig_port);
> +	enum dpio_channel ch =3D vlv_dig_port_to_channel(dig_port);
>  	enum dpio_phy phy =3D vlv_pipe_to_phy(crtc->pipe);
>=20=20
>  	vlv_dpio_get(dev_priv);
> -	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW0(port), 0x00000000);
> -	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW1(port), 0x00e00060);
> +	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW0(ch), 0x00000000);
> +	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW1(ch), 0x00e00060);
>  	vlv_dpio_put(dev_priv);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/=
i915/display/intel_dpll.c
> index 0a738b491c40..743cc466ee39 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -539,7 +539,7 @@ void chv_crtc_clock_get(struct intel_crtc_state *crtc=
_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	enum dpio_channel port =3D vlv_pipe_to_channel(crtc->pipe);
> +	enum dpio_channel ch =3D vlv_pipe_to_channel(crtc->pipe);
>  	enum dpio_phy phy =3D vlv_pipe_to_phy(crtc->pipe);
>  	const struct i9xx_dpll_hw_state *hw_state =3D &crtc_state->dpll_hw_stat=
e.i9xx;
>  	struct dpll clock;
> @@ -551,11 +551,11 @@ void chv_crtc_clock_get(struct intel_crtc_state *cr=
tc_state)
>  		return;
>=20=20
>  	vlv_dpio_get(dev_priv);
> -	cmn_dw13 =3D vlv_dpio_read(dev_priv, phy, CHV_CMN_DW13(port));
> -	pll_dw0 =3D vlv_dpio_read(dev_priv, phy, CHV_PLL_DW0(port));
> -	pll_dw1 =3D vlv_dpio_read(dev_priv, phy, CHV_PLL_DW1(port));
> -	pll_dw2 =3D vlv_dpio_read(dev_priv, phy, CHV_PLL_DW2(port));
> -	pll_dw3 =3D vlv_dpio_read(dev_priv, phy, CHV_PLL_DW3(port));
> +	cmn_dw13 =3D vlv_dpio_read(dev_priv, phy, CHV_CMN_DW13(ch));
> +	pll_dw0 =3D vlv_dpio_read(dev_priv, phy, CHV_PLL_DW0(ch));
> +	pll_dw1 =3D vlv_dpio_read(dev_priv, phy, CHV_PLL_DW1(ch));
> +	pll_dw2 =3D vlv_dpio_read(dev_priv, phy, CHV_PLL_DW2(ch));
> +	pll_dw3 =3D vlv_dpio_read(dev_priv, phy, CHV_PLL_DW3(ch));
>  	vlv_dpio_put(dev_priv);
>=20=20
>  	clock.m1 =3D (pll_dw1 & 0x7) =3D=3D DPIO_CHV_M1_DIV_BY_2 ? 2 : 0;
> @@ -2027,7 +2027,7 @@ static void chv_prepare_pll(const struct intel_crtc=
_state *crtc_state)
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	const struct dpll *clock =3D &crtc_state->dpll;
>  	enum pipe pipe =3D crtc->pipe;
> -	enum dpio_channel port =3D vlv_pipe_to_channel(pipe);
> +	enum dpio_channel ch =3D vlv_pipe_to_channel(pipe);
>  	enum dpio_phy phy =3D vlv_pipe_to_phy(crtc->pipe);
>  	u32 tmp, loopfilter, tribuf_calcntr;
>  	u32 m2_frac;
> @@ -2038,41 +2038,41 @@ static void chv_prepare_pll(const struct intel_cr=
tc_state *crtc_state)
>  	vlv_dpio_get(dev_priv);
>=20=20
>  	/* p1 and p2 divider */
> -	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW13(port),
> +	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW13(ch),
>  		       5 << DPIO_CHV_S1_DIV_SHIFT |
>  		       clock->p1 << DPIO_CHV_P1_DIV_SHIFT |
>  		       clock->p2 << DPIO_CHV_P2_DIV_SHIFT |
>  		       1 << DPIO_CHV_K_DIV_SHIFT);
>=20=20
>  	/* Feedback post-divider - m2 */
> -	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW0(port),
> +	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW0(ch),
>  		       clock->m2 >> 22);
>=20=20
>  	/* Feedback refclk divider - n and m1 */
> -	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW1(port),
> +	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW1(ch),
>  		       DPIO_CHV_M1_DIV_BY_2 |
>  		       1 << DPIO_CHV_N_DIV_SHIFT);
>=20=20
>  	/* M2 fraction division */
> -	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW2(port),
> +	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW2(ch),
>  		       m2_frac);
>=20=20
>  	/* M2 fraction division enable */
> -	tmp =3D vlv_dpio_read(dev_priv, phy, CHV_PLL_DW3(port));
> +	tmp =3D vlv_dpio_read(dev_priv, phy, CHV_PLL_DW3(ch));
>  	tmp &=3D ~(DPIO_CHV_FEEDFWD_GAIN_MASK | DPIO_CHV_FRAC_DIV_EN);
>  	tmp |=3D (2 << DPIO_CHV_FEEDFWD_GAIN_SHIFT);
>  	if (m2_frac)
>  		tmp |=3D DPIO_CHV_FRAC_DIV_EN;
> -	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW3(port), tmp);
> +	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW3(ch), tmp);
>=20=20
>  	/* Program digital lock detect threshold */
> -	tmp =3D vlv_dpio_read(dev_priv, phy, CHV_PLL_DW9(port));
> +	tmp =3D vlv_dpio_read(dev_priv, phy, CHV_PLL_DW9(ch));
>  	tmp &=3D ~(DPIO_CHV_INT_LOCK_THRESHOLD_MASK |
>  					DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE);
>  	tmp |=3D (0x5 << DPIO_CHV_INT_LOCK_THRESHOLD_SHIFT);
>  	if (!m2_frac)
>  		tmp |=3D DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE;
> -	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW9(port), tmp);
> +	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW9(ch), tmp);
>=20=20
>  	/* Loop filter */
>  	if (clock->vco =3D=3D 5400000) {
> @@ -2097,17 +2097,17 @@ static void chv_prepare_pll(const struct intel_cr=
tc_state *crtc_state)
>  		loopfilter |=3D (0x3 << DPIO_CHV_GAIN_CTRL_SHIFT);
>  		tribuf_calcntr =3D 0;
>  	}
> -	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW6(port), loopfilter);
> +	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW6(ch), loopfilter);
>=20=20
> -	tmp =3D vlv_dpio_read(dev_priv, phy, CHV_PLL_DW8(port));
> +	tmp =3D vlv_dpio_read(dev_priv, phy, CHV_PLL_DW8(ch));
>  	tmp &=3D ~DPIO_CHV_TDC_TARGET_CNT_MASK;
>  	tmp |=3D (tribuf_calcntr << DPIO_CHV_TDC_TARGET_CNT_SHIFT);
> -	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW8(port), tmp);
> +	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW8(ch), tmp);
>=20=20
>  	/* AFC Recal */
> -	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW14(port),
> -			vlv_dpio_read(dev_priv, phy, CHV_CMN_DW14(port)) |
> -			DPIO_AFC_RECAL);
> +	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW14(ch),
> +		       vlv_dpio_read(dev_priv, phy, CHV_CMN_DW14(ch)) |
> +		       DPIO_AFC_RECAL);
>=20=20
>  	vlv_dpio_put(dev_priv);
>  }
> @@ -2118,16 +2118,16 @@ static void _chv_enable_pll(const struct intel_cr=
tc_state *crtc_state)
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	const struct i9xx_dpll_hw_state *hw_state =3D &crtc_state->dpll_hw_stat=
e.i9xx;
>  	enum pipe pipe =3D crtc->pipe;
> -	enum dpio_channel port =3D vlv_pipe_to_channel(pipe);
> +	enum dpio_channel ch =3D vlv_pipe_to_channel(pipe);
>  	enum dpio_phy phy =3D vlv_pipe_to_phy(crtc->pipe);
>  	u32 tmp;
>=20=20
>  	vlv_dpio_get(dev_priv);
>=20=20
>  	/* Enable back the 10bit clock to display controller */
> -	tmp =3D vlv_dpio_read(dev_priv, phy, CHV_CMN_DW14(port));
> +	tmp =3D vlv_dpio_read(dev_priv, phy, CHV_CMN_DW14(ch));
>  	tmp |=3D DPIO_DCLKP_EN;
> -	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW14(port), tmp);
> +	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW14(ch), tmp);
>=20=20
>  	vlv_dpio_put(dev_priv);
>=20=20
> @@ -2246,7 +2246,7 @@ void vlv_disable_pll(struct drm_i915_private *dev_p=
riv, enum pipe pipe)
>=20=20
>  void chv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
>  {
> -	enum dpio_channel port =3D vlv_pipe_to_channel(pipe);
> +	enum dpio_channel ch =3D vlv_pipe_to_channel(pipe);
>  	enum dpio_phy phy =3D vlv_pipe_to_phy(pipe);
>  	u32 val;
>=20=20
> @@ -2264,9 +2264,9 @@ void chv_disable_pll(struct drm_i915_private *dev_p=
riv, enum pipe pipe)
>  	vlv_dpio_get(dev_priv);
>=20=20
>  	/* Disable 10bit clock to display controller */
> -	val =3D vlv_dpio_read(dev_priv, phy, CHV_CMN_DW14(port));
> +	val =3D vlv_dpio_read(dev_priv, phy, CHV_CMN_DW14(ch));
>  	val &=3D ~DPIO_DCLKP_EN;
> -	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW14(port), val);
> +	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW14(ch), val);
>=20=20
>  	vlv_dpio_put(dev_priv);
>  }

--=20
Jani Nikula, Intel
