Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0427D4D2BF4
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 10:29:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68A9510E11B;
	Wed,  9 Mar 2022 09:29:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F0E889AE6
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 09:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646818150; x=1678354150;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=cIX20HHQ33R0NcEGVST1nVsGUqCsXbdHCNtkcr0UdQg=;
 b=akIOCT+BIF7JBJtYbXIun+7gJAtqF6mxFVLAK4El+8Oz4cL4tWSyuU72
 gcFbcSOO6wWER9Gc330+hp1GKfBDZ/oAvDj9kAaZFUvDlA/pmV0vFFV/F
 oSSxP5EtraFbPSYNWPTzBzVUJrYWVcXmca8rmOysZSMIeBGS9grFrr+MN
 au/4ezWCB56qQhsLcuQKnD23jNa4Gcdaf1yxORTIXfQ1xdlfs5p1OQIs0
 YpO6bjU3dQRqheF2k8P0MKEEHvKunkxTxlVy4U5aimtrmSvvRXFCvG3v0
 +r/FWxtV4+QFuBSTxVmig1k+dTSHBSMnX/8I3BI803fCevsjkjI2VacrY w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="318158383"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="318158383"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 01:27:50 -0800
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="495778547"
Received: from byrnec1x-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.29.235])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 01:27:49 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220307233940.4161-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220307233940.4161-1-ville.syrjala@linux.intel.com>
 <20220307233940.4161-5-ville.syrjala@linux.intel.com>
Date: Wed, 09 Mar 2022 11:27:46 +0200
Message-ID: <874k471nn1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 4/8] drm/i915: Store the m2 divider as a
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

On Tue, 08 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Get rid of the pointless m2 int vs. frac split in bxt_clk_div
> and just store the whole divider as one.
>
> v2: Document the full divider as a proper decimal number
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 27 +++++++++----------
>  1 file changed, 13 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index 2a88c6fa1f34..ae3c07cc2eaa 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -2088,8 +2088,7 @@ struct bxt_clk_div {
>  	int clock;
>  	u32 p1;
>  	u32 p2;
> -	u32 m2_int;
> -	u32 m2_frac;
> +	u32 m2;
>  	u32 n;
>=20=20
>  	int vco;
> @@ -2097,13 +2096,14 @@ struct bxt_clk_div {
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
> +	/* m2 is .22 binary fixed point */
> +	{ .clock =3D 162000, .p1 =3D 4, .p2 =3D 2, .n =3D 1, .m2 =3D 0x819999a =
/* 32.4 */ },
> +	{ .clock =3D 270000, .p1 =3D 4, .p2 =3D 1, .n =3D 1, .m2 =3D 0x6c00000 =
/* 27.0 */ },
> +	{ .clock =3D 540000, .p1 =3D 2, .p2 =3D 1, .n =3D 1, .m2 =3D 0x6c00000 =
/* 27.0 */ },
> +	{ .clock =3D 216000, .p1 =3D 3, .p2 =3D 2, .n =3D 1, .m2 =3D 0x819999a =
/* 32.4 */ },
> +	{ .clock =3D 243000, .p1 =3D 4, .p2 =3D 1, .n =3D 1, .m2 =3D 0x6133333 =
/* 24.3 */ },
> +	{ .clock =3D 324000, .p1 =3D 4, .p2 =3D 1, .n =3D 1, .m2 =3D 0x819999a =
/* 32.4 */ },
> +	{ .clock =3D 432000, .p1 =3D 3, .p2 =3D 1, .n =3D 1, .m2 =3D 0x819999a =
/* 32.4 */ },
>  };
>=20=20
>  static bool
> @@ -2130,8 +2130,7 @@ bxt_ddi_hdmi_pll_dividers(struct intel_crtc_state *=
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
> @@ -2200,11 +2199,11 @@ static bool bxt_ddi_set_dpll_hw_state(struct inte=
l_crtc_state *crtc_state,
>  		lanestagger =3D 0x02;
>=20=20
>  	dpll_hw_state->ebb0 =3D PORT_PLL_P1(clk_div->p1) | PORT_PLL_P2(clk_div-=
>p2);
> -	dpll_hw_state->pll0 =3D PORT_PLL_M2_INT(clk_div->m2_int);
> +	dpll_hw_state->pll0 =3D PORT_PLL_M2_INT(clk_div->m2 >> 22);
>  	dpll_hw_state->pll1 =3D PORT_PLL_N(clk_div->n);
> -	dpll_hw_state->pll2 =3D PORT_PLL_M2_FRAC(clk_div->m2_frac);
> +	dpll_hw_state->pll2 =3D PORT_PLL_M2_FRAC(clk_div->m2 & 0x3fffff);
>=20=20
> -	if (clk_div->m2_frac)
> +	if (clk_div->m2 & 0x3fffff)
>  		dpll_hw_state->pll3 =3D PORT_PLL_M2_FRAC_ENABLE;
>=20=20
>  	dpll_hw_state->pll6 =3D PORT_PLL_PROP_COEFF(prop_coef) |

--=20
Jani Nikula, Intel Open Source Graphics Center
