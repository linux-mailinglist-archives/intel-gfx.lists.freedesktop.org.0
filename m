Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E034CD395
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 12:36:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 794CA10EFFC;
	Fri,  4 Mar 2022 11:36:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2595410EFFC
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Mar 2022 11:36:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646393791; x=1677929791;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=DI2Yvm5v0IhMpxvYFgqr66V5roEaPwdaffpgWpSTmng=;
 b=NrA1/Pwkp063Ufvtt7YL9PhWE7n6JB17UhXUpBDf5yr/R8bk4b6ygO2U
 mR3QtjQ6HrP7NaecHL6dFwZULbUd5vogmofc4uOZdFzkMzSUS4kFZSd0w
 PfZs21kcdujR0GcPXpMpzLIT0OURw7jkssRpja9UOoehfJE6iujDOTU/V
 2wFhPmbvAhod0gkDjt6lHZQyMS4Qkq0AwX25oOXkCYEtYGpJZmqyOomiE
 TpAa51dm11CoGGMZnM72TwI4Y/Dv/2FKgmPvQARsrNWBYDJpYQu+DhJeG
 UDXikpf3qexReEaVYp5UPcGEe26prIPlDSNddsgJop7yrAdy+cFTnSMUX w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="253688194"
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="253688194"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 03:36:30 -0800
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="710310025"
Received: from pruilobx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.28.174])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 03:36:29 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220301173128.6988-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220301173128.6988-1-ville.syrjala@linux.intel.com>
 <20220301173128.6988-8-ville.syrjala@linux.intel.com>
Date: Fri, 04 Mar 2022 13:36:27 +0200
Message-ID: <87sfry2blw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 07/11] drm/i915: Store the m2 divider as a
 whole in bxt_clk_div
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

On Tue, 01 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Get rid of the pointless m2 int vs. frac split in bxt_clk_div
> and just store the whole divider as one.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 33 +++++++++++--------
>  1 file changed, 19 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index 899aa42a858f..4a82e630cbec 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -2085,8 +2085,7 @@ struct bxt_clk_div {
>  	int clock;
>  	u32 p1;
>  	u32 p2;
> -	u32 m2_int;
> -	u32 m2_frac;
> +	u32 m2;
>  	u32 n;
>=20=20
>  	int vco;
> @@ -2094,13 +2093,20 @@ struct bxt_clk_div {
>=20=20
>  /* pre-calculated values for DP linkrates */
>  static const struct bxt_clk_div bxt_dp_clk_val[] =3D {
> -	{ .clock =3D 162000, .p1 =3D 4, .p2 =3D 2, .m2_int =3D 32, .m2_frac =3D=
 1677722, .n =3D 1, },
> -	{ .clock =3D 270000, .p1 =3D 4, .p2 =3D 1, .m2_int =3D 27, .m2_frac =3D=
       0, .n =3D 1, },
> -	{ .clock =3D 540000, .p1 =3D 2, .p2 =3D 1, .m2_int =3D 27, .m2_frac =3D=
       0, .n =3D 1, },
> -	{ .clock =3D 216000, .p1 =3D 3, .p2 =3D 2, .m2_int =3D 32, .m2_frac =3D=
 1677722, .n =3D 1, },
> -	{ .clock =3D 243000, .p1 =3D 4, .p2 =3D 1, .m2_int =3D 24, .m2_frac =3D=
 1258291, .n =3D 1, },
> -	{ .clock =3D 324000, .p1 =3D 4, .p2 =3D 1, .m2_int =3D 32, .m2_frac =3D=
 1677722, .n =3D 1, },
> -	{ .clock =3D 432000, .p1 =3D 3, .p2 =3D 1, .m2_int =3D 32, .m2_frac =3D=
 1677722, .n =3D 1, },
> +	{ .clock =3D 162000, .p1 =3D 4, .p2 =3D 2, .n =3D 1,
> +	  .m2 =3D 0x819999a /* .m2_int =3D 32, m2_frac =3D 1677722 */ },
> +	{ .clock =3D 270000, .p1 =3D 4, .p2 =3D 1, .n =3D 1,
> +	  .m2 =3D 0x6c00000 /* .m2_int =3D 27, m2_frac =3D       0 */ },
> +	{ .clock =3D 540000, .p1 =3D 2, .p2 =3D 1, .n =3D 1,
> +	  .m2 =3D 0x6c00000 /* .m2_int =3D 27, m2_frac =3D       0 */ },
> +	{ .clock =3D 216000, .p1 =3D 3, .p2 =3D 2, .n =3D 1,
> +	  .m2 =3D 0x819999a /* .m2_int =3D 32, m2_frac =3D 1677722 */ },
> +	{ .clock =3D 243000, .p1 =3D 4, .p2 =3D 1, .n =3D 1,
> +	  .m2 =3D 0x6133333 /* .m2_int =3D 24, m2_frac =3D 1258291 */ },
> +	{ .clock =3D 324000, .p1 =3D 4, .p2 =3D 1, .n =3D 1,
> +	  .m2 =3D 0x819999a /* .m2_int =3D 32, m2_frac =3D 1677722 */ },
> +	{ .clock =3D 432000, .p1 =3D 3, .p2 =3D 1, .n =3D 1,
> +	  .m2 =3D 0x819999a /* .m2_int =3D 32, m2_frac =3D 1677722 */ },

Mmh, I guess here I would've added some macros to construct m2 from
m2_int and m2_frac.

#define M2_INT_SHIFT	22
#define M2_FRAC_MASK	0x3fffff

#define M2(int, frac) ((int) << M2_INT_SHIFT) | (frac))

And you get this:

	{ .clock =3D 432000, .p1 =3D 3, .p2 =3D 1, .m2 =3D M2(32, 1677722), .n =3D=
 1, },

No need to retain the int/frac in comments. Can also use
REG_FIELD_PREP/GET if you want to over-engineer...

>  };
>=20=20
>  static bool
> @@ -2127,8 +2133,7 @@ bxt_ddi_hdmi_pll_dividers(struct intel_crtc_state *=
crtc_state,
>  	clk_div->p2 =3D best_clock.p2;
>  	drm_WARN_ON(&i915->drm, best_clock.m1 !=3D 2);
>  	clk_div->n =3D best_clock.n;
> -	clk_div->m2_int =3D best_clock.m2 >> 22;
> -	clk_div->m2_frac =3D best_clock.m2 & ((1 << 22) - 1);
> +	clk_div->m2 =3D best_clock.m2;
>=20=20
>  	clk_div->vco =3D best_clock.vco;
>=20=20
> @@ -2197,11 +2202,11 @@ static bool bxt_ddi_set_dpll_hw_state(struct inte=
l_crtc_state *crtc_state,
>  		lanestagger =3D 0x02;
>=20=20
>  	dpll_hw_state->ebb0 =3D PORT_PLL_P1(clk_div->p1) | PORT_PLL_P2(clk_div-=
>p2);
> -	dpll_hw_state->pll0 =3D clk_div->m2_int;
> +	dpll_hw_state->pll0 =3D clk_div->m2 >> 22;
>  	dpll_hw_state->pll1 =3D PORT_PLL_N(clk_div->n);
> -	dpll_hw_state->pll2 =3D clk_div->m2_frac;
> +	dpll_hw_state->pll2 =3D clk_div->m2 & 0x3fffff;
>=20=20
> -	if (clk_div->m2_frac)
> +	if (clk_div->m2 & 0x3fffff)
>  		dpll_hw_state->pll3 =3D PORT_PLL_M2_FRAC_ENABLE;

Also could reuse the shift and mask macros here.

Other than that, the direction seems good.

BR,
Jani.


>=20=20
>  	dpll_hw_state->pll6 =3D prop_coef | PORT_PLL_INT_COEFF(int_coef);

--=20
Jani Nikula, Intel Open Source Graphics Center
