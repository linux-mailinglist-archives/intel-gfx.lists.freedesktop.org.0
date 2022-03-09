Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7764D2BBE
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 10:23:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C43F10E402;
	Wed,  9 Mar 2022 09:23:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCABE10E3DD
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 09:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646817778; x=1678353778;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=DuiQYre3Zm0U/IDuKgPrSFYqrdkG6hg3JXgWE4R3eHI=;
 b=YcHu/Hm6WMNQSAkqsebSqEdjdb3yJM0Mr6LBhUf+O8d2vIe5I8tRwZjR
 qZL+AJUPI1t+PKKyCXYgHkai/GWNftVwKXgAPxqxcPgGX4Fcm7ZYDq8Y9
 2sBkKg//D+1SSnqSes2gRJ4kjhHBlrJK1znpebjWWhElaQAvo0lDSm3FA
 yBGjP0jaeyjh2OKYGrPC7tHC8JRooRfk/1YRpmpSFDyu1NRiCWAXDm8xI
 46B/s1f33iwXPaLMPqwnUsAV3mJr9MopyEpAYfC8MTzuCX1Lc7TvfaFIy
 wJewuy73jcFvvUt3jsfNwCdozB3HQR0Dqdb7Xd3vjf9OqLu+WSeLC2h6J A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="279654895"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="279654895"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 01:22:58 -0800
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="554042333"
Received: from byrnec1x-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.29.235])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 01:22:56 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220307233940.4161-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220307233940.4161-1-ville.syrjala@linux.intel.com>
 <20220307233940.4161-4-ville.syrjala@linux.intel.com>
Date: Wed, 09 Mar 2022 11:22:54 +0200
Message-ID: <877d931nv5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 3/8] drm/i915: Clean up bxt/glk PLL
 registers
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

On Tue, 08 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Use REG_BIT() & co. for bxt/glk PLL registers.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 32 +++++-----
>  drivers/gpu/drm/i915/gvt/handlers.c           | 15 +++--
>  drivers/gpu/drm/i915/i915_reg.h               | 61 ++++++++++---------
>  3 files changed, 57 insertions(+), 51 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index 4595795d694f..2a88c6fa1f34 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -1898,7 +1898,7 @@ static void bxt_ddi_pll_enable(struct drm_i915_priv=
ate *dev_priv,
>=20=20
>  	/* Write M2 integer */
>  	temp =3D intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 0));
> -	temp &=3D ~PORT_PLL_M2_MASK;
> +	temp &=3D ~PORT_PLL_M2_INT_MASK;
>  	temp |=3D pll->state.hw_state.pll0;
>  	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 0), temp);
>=20=20
> @@ -2034,7 +2034,7 @@ static bool bxt_ddi_pll_get_hw_state(struct drm_i91=
5_private *dev_priv,
>  	hw_state->ebb4 &=3D PORT_PLL_10BIT_CLK_ENABLE;
>=20=20
>  	hw_state->pll0 =3D intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 0));
> -	hw_state->pll0 &=3D PORT_PLL_M2_MASK;
> +	hw_state->pll0 &=3D PORT_PLL_M2_INT_MASK;
>=20=20
>  	hw_state->pll1 =3D intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 1));
>  	hw_state->pll1 &=3D PORT_PLL_N_MASK;
> @@ -2200,23 +2200,23 @@ static bool bxt_ddi_set_dpll_hw_state(struct inte=
l_crtc_state *crtc_state,
>  		lanestagger =3D 0x02;
>=20=20
>  	dpll_hw_state->ebb0 =3D PORT_PLL_P1(clk_div->p1) | PORT_PLL_P2(clk_div-=
>p2);
> -	dpll_hw_state->pll0 =3D clk_div->m2_int;
> +	dpll_hw_state->pll0 =3D PORT_PLL_M2_INT(clk_div->m2_int);
>  	dpll_hw_state->pll1 =3D PORT_PLL_N(clk_div->n);
> -	dpll_hw_state->pll2 =3D clk_div->m2_frac;
> +	dpll_hw_state->pll2 =3D PORT_PLL_M2_FRAC(clk_div->m2_frac);
>=20=20
>  	if (clk_div->m2_frac)
>  		dpll_hw_state->pll3 =3D PORT_PLL_M2_FRAC_ENABLE;
>=20=20
> -	dpll_hw_state->pll6 =3D prop_coef | PORT_PLL_INT_COEFF(int_coef);
> -	dpll_hw_state->pll6 |=3D PORT_PLL_GAIN_CTL(gain_ctl);
> +	dpll_hw_state->pll6 =3D PORT_PLL_PROP_COEFF(prop_coef) |
> +		PORT_PLL_INT_COEFF(int_coef) |
> +		PORT_PLL_GAIN_CTL(gain_ctl);
>=20=20
> -	dpll_hw_state->pll8 =3D targ_cnt;
> +	dpll_hw_state->pll8 =3D PORT_PLL_TARGET_CNT(targ_cnt);
>=20=20
> -	dpll_hw_state->pll9 =3D 5 << PORT_PLL_LOCK_THRESHOLD_SHIFT;
> +	dpll_hw_state->pll9 =3D PORT_PLL_LOCK_THRESHOLD(5);
>=20=20
> -	dpll_hw_state->pll10 =3D
> -		PORT_PLL_DCO_AMP(PORT_PLL_DCO_AMP_DEFAULT)
> -		| PORT_PLL_DCO_AMP_OVR_EN_H;
> +	dpll_hw_state->pll10 =3D PORT_PLL_DCO_AMP(15) |
> +		PORT_PLL_DCO_AMP_OVR_EN_H;
>=20=20
>  	dpll_hw_state->ebb4 =3D PORT_PLL_10BIT_CLK_ENABLE;
>=20=20
> @@ -2252,12 +2252,12 @@ static int bxt_ddi_pll_get_freq(struct drm_i915_p=
rivate *i915,
>  	struct dpll clock;
>=20=20
>  	clock.m1 =3D 2;
> -	clock.m2 =3D (pll_state->pll0 & PORT_PLL_M2_MASK) << 22;
> +	clock.m2 =3D REG_FIELD_GET(PORT_PLL_M2_INT_MASK, pll_state->pll0) << 22;
>  	if (pll_state->pll3 & PORT_PLL_M2_FRAC_ENABLE)
> -		clock.m2 |=3D pll_state->pll2 & PORT_PLL_M2_FRAC_MASK;
> -	clock.n =3D (pll_state->pll1 & PORT_PLL_N_MASK) >> PORT_PLL_N_SHIFT;
> -	clock.p1 =3D (pll_state->ebb0 & PORT_PLL_P1_MASK) >> PORT_PLL_P1_SHIFT;
> -	clock.p2 =3D (pll_state->ebb0 & PORT_PLL_P2_MASK) >> PORT_PLL_P2_SHIFT;
> +		clock.m2 |=3D REG_FIELD_GET(PORT_PLL_M2_FRAC_MASK, pll_state->pll2);
> +	clock.n =3D REG_FIELD_GET(PORT_PLL_N_MASK, pll_state->pll1);
> +	clock.p1 =3D REG_FIELD_GET(PORT_PLL_P1_MASK, pll_state->ebb0);
> +	clock.p2 =3D REG_FIELD_GET(PORT_PLL_P2_MASK, pll_state->ebb0);
>=20=20
>  	return chv_calc_dpll_params(i915->dpll.ref_clks.nssc, &clock);
>  }
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/g=
vt/handlers.c
> index efdd2f3f9d73..0ee3ecc83234 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -576,12 +576,17 @@ static u32 bxt_vgpu_get_dp_bitrate(struct intel_vgp=
u *vgpu, enum port port)
>  	}
>=20=20
>  	clock.m1 =3D 2;
> -	clock.m2 =3D (vgpu_vreg_t(vgpu, BXT_PORT_PLL(phy, ch, 0)) & PORT_PLL_M2=
_MASK) << 22;
> +	clock.m2 =3D REG_FIELD_GET(PORT_PLL_M2_INT_MASK,
> +				 vgpu_vreg_t(vgpu, BXT_PORT_PLL(phy, ch, 0))) << 22;
>  	if (vgpu_vreg_t(vgpu, BXT_PORT_PLL(phy, ch, 3)) & PORT_PLL_M2_FRAC_ENAB=
LE)
> -		clock.m2 |=3D vgpu_vreg_t(vgpu, BXT_PORT_PLL(phy, ch, 2)) & PORT_PLL_M=
2_FRAC_MASK;
> -	clock.n =3D (vgpu_vreg_t(vgpu, BXT_PORT_PLL(phy, ch, 1)) & PORT_PLL_N_M=
ASK) >> PORT_PLL_N_SHIFT;
> -	clock.p1 =3D (vgpu_vreg_t(vgpu, BXT_PORT_PLL_EBB_0(phy, ch)) & PORT_PLL=
_P1_MASK) >> PORT_PLL_P1_SHIFT;
> -	clock.p2 =3D (vgpu_vreg_t(vgpu, BXT_PORT_PLL_EBB_0(phy, ch)) & PORT_PLL=
_P2_MASK) >> PORT_PLL_P2_SHIFT;
> +		clock.m2 |=3D REG_FIELD_GET(PORT_PLL_M2_FRAC_MASK,
> +					  vgpu_vreg_t(vgpu, BXT_PORT_PLL(phy, ch, 2)));
> +	clock.n =3D REG_FIELD_GET(PORT_PLL_N_MASK,
> +				vgpu_vreg_t(vgpu, BXT_PORT_PLL(phy, ch, 1)));
> +	clock.p1 =3D REG_FIELD_GET(PORT_PLL_P1_MASK,
> +				 vgpu_vreg_t(vgpu, BXT_PORT_PLL_EBB_0(phy, ch)));
> +	clock.p2 =3D REG_FIELD_GET(PORT_PLL_P2_MASK,
> +				 vgpu_vreg_t(vgpu, BXT_PORT_PLL_EBB_0(phy, ch)));
>  	clock.m =3D clock.m1 * clock.m2;
>  	clock.p =3D clock.p1 * clock.p2 * 5;
>=20=20
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 70484f6f2b8b..80be197cd6eb 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -644,22 +644,20 @@
>  #define _PORT_PLL_A			0x46074
>  #define _PORT_PLL_B			0x46078
>  #define _PORT_PLL_C			0x4607c
> -#define   PORT_PLL_ENABLE		(1 << 31)
> -#define   PORT_PLL_LOCK			(1 << 30)
> -#define   PORT_PLL_REF_SEL		(1 << 27)
> -#define   PORT_PLL_POWER_ENABLE		(1 << 26)
> -#define   PORT_PLL_POWER_STATE		(1 << 25)
> +#define   PORT_PLL_ENABLE		REG_BIT(31)
> +#define   PORT_PLL_LOCK			REG_BIT(30)
> +#define   PORT_PLL_REF_SEL		REG_BIT(27)
> +#define   PORT_PLL_POWER_ENABLE		REG_BIT(26)
> +#define   PORT_PLL_POWER_STATE		REG_BIT(25)
>  #define BXT_PORT_PLL_ENABLE(port)	_MMIO_PORT(port, _PORT_PLL_A, _PORT_PL=
L_B)
>=20=20
>  #define _PORT_PLL_EBB_0_A		0x162034
>  #define _PORT_PLL_EBB_0_B		0x6C034
>  #define _PORT_PLL_EBB_0_C		0x6C340
> -#define   PORT_PLL_P1_SHIFT		13
> -#define   PORT_PLL_P1_MASK		(0x07 << PORT_PLL_P1_SHIFT)
> -#define   PORT_PLL_P1(x)		((x)  << PORT_PLL_P1_SHIFT)
> -#define   PORT_PLL_P2_SHIFT		8
> -#define   PORT_PLL_P2_MASK		(0x1f << PORT_PLL_P2_SHIFT)
> -#define   PORT_PLL_P2(x)		((x)  << PORT_PLL_P2_SHIFT)
> +#define   PORT_PLL_P1_MASK		REG_GENMASK(15, 13)
> +#define   PORT_PLL_P1(p1)		REG_FIELD_PREP(PORT_PLL_P1_MASK, (p1))
> +#define   PORT_PLL_P2_MASK		REG_GENMASK(12, 8)
> +#define   PORT_PLL_P2(p2)		REG_FIELD_PREP(PORT_PLL_P2_MASK, (p2))
>  #define BXT_PORT_PLL_EBB_0(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
>  							 _PORT_PLL_EBB_0_B, \
>  							 _PORT_PLL_EBB_0_C)
> @@ -667,8 +665,8 @@
>  #define _PORT_PLL_EBB_4_A		0x162038
>  #define _PORT_PLL_EBB_4_B		0x6C038
>  #define _PORT_PLL_EBB_4_C		0x6C344
> -#define   PORT_PLL_10BIT_CLK_ENABLE	(1 << 13)
> -#define   PORT_PLL_RECALIBRATE		(1 << 14)
> +#define   PORT_PLL_RECALIBRATE		REG_BIT(14)
> +#define   PORT_PLL_10BIT_CLK_ENABLE	REG_BIT(13)
>  #define BXT_PORT_PLL_EBB_4(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
>  							 _PORT_PLL_EBB_4_B, \
>  							 _PORT_PLL_EBB_4_C)
> @@ -677,31 +675,34 @@
>  #define _PORT_PLL_0_B			0x6C100
>  #define _PORT_PLL_0_C			0x6C380
>  /* PORT_PLL_0_A */
> -#define   PORT_PLL_M2_MASK		0xFF
> +#define   PORT_PLL_M2_INT_MASK		REG_GENMASK(7, 0)
> +#define   PORT_PLL_M2_INT(m2_int)	REG_FIELD_PREP(PORT_PLL_M2_INT_MASK, (=
m2_int))
>  /* PORT_PLL_1_A */
> -#define   PORT_PLL_N_SHIFT		8
> -#define   PORT_PLL_N_MASK		(0x0F << PORT_PLL_N_SHIFT)
> -#define   PORT_PLL_N(x)			((x) << PORT_PLL_N_SHIFT)
> +#define   PORT_PLL_N_MASK		REG_GENMASK(11, 8)
> +#define   PORT_PLL_N(n)			REG_FIELD_PREP(PORT_PLL_N_MASK, (n))
>  /* PORT_PLL_2_A */
> -#define   PORT_PLL_M2_FRAC_MASK		0x3FFFFF
> +#define   PORT_PLL_M2_FRAC_MASK		REG_GENMASK(21, 0)
> +#define   PORT_PLL_M2_FRAC(m2_frac)	REG_FIELD_PREP(PORT_PLL_M2_FRAC_MASK=
, (m2_frac))
>  /* PORT_PLL_3_A */
> -#define   PORT_PLL_M2_FRAC_ENABLE	(1 << 16)
> +#define   PORT_PLL_M2_FRAC_ENABLE	REG_BIT(16)
>  /* PORT_PLL_6_A */
> -#define   PORT_PLL_PROP_COEFF_MASK	0xF
> -#define   PORT_PLL_INT_COEFF_MASK	(0x1F << 8)
> -#define   PORT_PLL_INT_COEFF(x)		((x)  << 8)
> -#define   PORT_PLL_GAIN_CTL_MASK	(0x07 << 16)
> -#define   PORT_PLL_GAIN_CTL(x)		((x)  << 16)
> +#define   PORT_PLL_PROP_COEFF_MASK	REG_GENMASK(3, 0)
> +#define   PORT_PLL_PROP_COEFF(x)	REG_FIELD_PREP(PORT_PLL_PROP_COEFF_MASK=
, (x))
> +#define   PORT_PLL_INT_COEFF_MASK	REG_GENMASK(12, 8)
> +#define   PORT_PLL_INT_COEFF(x)		REG_FIELD_PREP(PORT_PLL_INT_COEFF_MASK,=
 (x))
> +#define   PORT_PLL_GAIN_CTL_MASK	REG_GENMASK(18, 16)
> +#define   PORT_PLL_GAIN_CTL(x)		REG_FIELD_PREP(PORT_PLL_GAIN_CTL_MASK, (=
x))
>  /* PORT_PLL_8_A */
> -#define   PORT_PLL_TARGET_CNT_MASK	0x3FF
> +#define   PORT_PLL_TARGET_CNT_MASK	REG_GENMASK(9, 0)
> +#define   PORT_PLL_TARGET_CNT(x)	REG_FIELD_PREP(PORT_PLL_TARGET_CNT_MASK=
, (x))
>  /* PORT_PLL_9_A */
> -#define  PORT_PLL_LOCK_THRESHOLD_SHIFT	1
> -#define  PORT_PLL_LOCK_THRESHOLD_MASK	(0x7 << PORT_PLL_LOCK_THRESHOLD_SH=
IFT)
> +#define  PORT_PLL_LOCK_THRESHOLD_MASK	REG_GENMASK(3, 1)
> +#define  PORT_PLL_LOCK_THRESHOLD(x)	REG_FIELD_PREP(PORT_PLL_LOCK_THRESHO=
LD_MASK, (x))
>  /* PORT_PLL_10_A */
> -#define  PORT_PLL_DCO_AMP_OVR_EN_H	(1 << 27)
> +#define  PORT_PLL_DCO_AMP_OVR_EN_H	REG_BIT(27)
>  #define  PORT_PLL_DCO_AMP_DEFAULT	15
> -#define  PORT_PLL_DCO_AMP_MASK		0x3c00
> -#define  PORT_PLL_DCO_AMP(x)		((x) << 10)
> +#define  PORT_PLL_DCO_AMP_MASK		REG_GENMASK(13, 10)
> +#define  PORT_PLL_DCO_AMP(x)		REG_FIELD_PREP(PORT_PLL_DCO_AMP_MASK, (x))
>  #define _PORT_PLL_BASE(phy, ch)		_BXT_PHY_CH(phy, ch, \
>  						    _PORT_PLL_0_B, \
>  						    _PORT_PLL_0_C)

--=20
Jani Nikula, Intel Open Source Graphics Center
