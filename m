Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E52B4CD33C
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 12:19:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BBEE10E47E;
	Fri,  4 Mar 2022 11:19:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99E1610E47E
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Mar 2022 11:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646392752; x=1677928752;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=TaFXPZN0Cdl1PqOdoTpO+ov8CjAQRhvfW+ZAEnBh9p0=;
 b=l97TtlWZBHoEBQQ0gHuog0RmXdM0kS4xkFyXQJIa0E2ipuErc4+P/aHi
 u+gxwdZKnewnuMnpwjw1I7kHQICDboZSELyv7A6o5neL1fySlOUkFFi4X
 riXJXsAkOw6AI4jIEHnqwn6PPcmvB/Iwp5WlQNw9V9RsozlToOMQuGnyb
 MhIA5tJqBawNeYza3h9A9q9IX8+4CdF//vZ3h9RCTcXkcVYY4QwwM6+7j
 tmhMvRqIMLZSp303ejPFMphK1fsvjk86Zft084WjG0rvbLumgDX1lkl41
 OH/GR+dAuC23h1GZ18W4IKY5jamJ5CS6XdyYCZV8MmQ0Wzi1f3YHIWPi7 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="234563796"
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="234563796"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 03:19:12 -0800
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="511821018"
Received: from pruilobx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.28.174])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 03:19:10 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220301173128.6988-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220301173128.6988-1-ville.syrjala@linux.intel.com>
 <20220301173128.6988-6-ville.syrjala@linux.intel.com>
Date: Fri, 04 Mar 2022 13:19:08 +0200
Message-ID: <87y21q2cer.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 05/11] drm/i915: Remove bxt m2_frac_en
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
> Remove the pointless m2_frac_en from bxt_clk_div.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 18 ++++++++----------
>  1 file changed, 8 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index bc26ebacae12..8beec5ec72f8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -2087,7 +2087,6 @@ struct bxt_clk_div {
>  	u32 p2;
>  	u32 m2_int;
>  	u32 m2_frac;
> -	bool m2_frac_en;
>  	u32 n;
>=20=20
>  	int vco;
> @@ -2095,13 +2094,13 @@ struct bxt_clk_div {
>=20=20
>  /* pre-calculated values for DP linkrates */
>  static const struct bxt_clk_div bxt_dp_clk_val[] =3D {
> -	{ 162000, 4, 2, 32, 1677722, 1, 1 },
> -	{ 270000, 4, 1, 27,       0, 0, 1 },
> -	{ 540000, 2, 1, 27,       0, 0, 1 },
> -	{ 216000, 3, 2, 32, 1677722, 1, 1 },
> -	{ 243000, 4, 1, 24, 1258291, 1, 1 },
> -	{ 324000, 4, 1, 32, 1677722, 1, 1 },
> -	{ 432000, 3, 1, 32, 1677722, 1, 1 }
> +	{ 162000, 4, 2, 32, 1677722, 1 },
> +	{ 270000, 4, 1, 27,       0, 1 },
> +	{ 540000, 2, 1, 27,       0, 1 },
> +	{ 216000, 3, 2, 32, 1677722, 1 },
> +	{ 243000, 4, 1, 24, 1258291, 1 },
> +	{ 324000, 4, 1, 32, 1677722, 1 },
> +	{ 432000, 3, 1, 32, 1677722, 1 }
>  };
>=20=20
>  static bool
> @@ -2130,7 +2129,6 @@ bxt_ddi_hdmi_pll_dividers(struct intel_crtc_state *=
crtc_state,
>  	clk_div->n =3D best_clock.n;
>  	clk_div->m2_int =3D best_clock.m2 >> 22;
>  	clk_div->m2_frac =3D best_clock.m2 & ((1 << 22) - 1);
> -	clk_div->m2_frac_en =3D clk_div->m2_frac !=3D 0;
>=20=20
>  	clk_div->vco =3D best_clock.vco;
>=20=20
> @@ -2203,7 +2201,7 @@ static bool bxt_ddi_set_dpll_hw_state(struct intel_=
crtc_state *crtc_state,
>  	dpll_hw_state->pll1 =3D PORT_PLL_N(clk_div->n);
>  	dpll_hw_state->pll2 =3D clk_div->m2_frac;
>=20=20
> -	if (clk_div->m2_frac_en)
> +	if (clk_div->m2_frac)
>  		dpll_hw_state->pll3 =3D PORT_PLL_M2_FRAC_ENABLE;
>=20=20
>  	dpll_hw_state->pll6 =3D prop_coef | PORT_PLL_INT_COEFF(int_coef);

--=20
Jani Nikula, Intel Open Source Graphics Center
