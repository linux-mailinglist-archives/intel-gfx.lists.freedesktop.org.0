Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F50D4CD3AD
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 12:41:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 920B110EFF3;
	Fri,  4 Mar 2022 11:41:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E26DE10EFF3
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Mar 2022 11:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646394071; x=1677930071;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=8dTu3BczLenjikjKvXyWIt5cdaZGt6n7ghC7u8z8zgg=;
 b=YLYvaFidU1LAPszLM6kUvWHM3/H71xEdrsNeMmdii7NtdZNAw1AZAEOT
 5eW09zb8GkovrfQ32MFs5s5h4P8LBQeugQ8Qi1cCiLQQ9FPA93Wq4KCzK
 inmE7/Y/Nq2icutRXuqbSGJjpHRZ8zjz3I5LP55HgSCf3+Nkzz02i7Tj5
 Cx8bvVmRfgOO3NCa7awz3FGv9iO+qT5TNFPwv69gTgemuZNv8037w/YDD
 B05rvr/k36qBBYXAvMFPivsneJgSObr1pbwrhiNQ6sndbOwDSoxoVGeaw
 fUcxgirHUSTfzPIm1AaS04+Pe5wOaeuoH/Irq2F8B9tOUSEC9Tg/KNBcl A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="241381253"
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="241381253"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 03:41:11 -0800
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="508959574"
Received: from pruilobx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.28.174])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 03:41:10 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220301173128.6988-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220301173128.6988-1-ville.syrjala@linux.intel.com>
 <20220301173128.6988-9-ville.syrjala@linux.intel.com>
Date: Fri, 04 Mar 2022 13:41:07 +0200
Message-ID: <87pmn22be4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 08/11] drm/i915: Replace bxt_clk_div with
 struct dpll
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
> bxt_clk_div is basically the same as struct dpll. Just use the latter.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 50 ++++++-------------
>  1 file changed, 16 insertions(+), 34 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index 4a82e630cbec..58e9d5960bc6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -2080,75 +2080,57 @@ static bool bxt_ddi_pll_get_hw_state(struct drm_i=
915_private *dev_priv,
>  	return ret;
>  }
>=20=20
> -/* bxt clock parameters */
> -struct bxt_clk_div {
> -	int clock;
> -	u32 p1;
> -	u32 p2;
> -	u32 m2;
> -	u32 n;
> -
> -	int vco;
> -};
> -
>  /* pre-calculated values for DP linkrates */
> -static const struct bxt_clk_div bxt_dp_clk_val[] =3D {
> -	{ .clock =3D 162000, .p1 =3D 4, .p2 =3D 2, .n =3D 1,
> +static const struct dpll bxt_dp_clk_val[] =3D {
> +	{ .dot =3D 162000, .p1 =3D 4, .p2 =3D 2, .n =3D 1,
>  	  .m2 =3D 0x819999a /* .m2_int =3D 32, m2_frac =3D 1677722 */ },
> -	{ .clock =3D 270000, .p1 =3D 4, .p2 =3D 1, .n =3D 1,
> +	{ .dot =3D 270000, .p1 =3D 4, .p2 =3D 1, .n =3D 1,
>  	  .m2 =3D 0x6c00000 /* .m2_int =3D 27, m2_frac =3D       0 */ },
> -	{ .clock =3D 540000, .p1 =3D 2, .p2 =3D 1, .n =3D 1,
> +	{ .dot =3D 540000, .p1 =3D 2, .p2 =3D 1, .n =3D 1,
>  	  .m2 =3D 0x6c00000 /* .m2_int =3D 27, m2_frac =3D       0 */ },
> -	{ .clock =3D 216000, .p1 =3D 3, .p2 =3D 2, .n =3D 1,
> +	{ .dot =3D 216000, .p1 =3D 3, .p2 =3D 2, .n =3D 1,
>  	  .m2 =3D 0x819999a /* .m2_int =3D 32, m2_frac =3D 1677722 */ },
> -	{ .clock =3D 243000, .p1 =3D 4, .p2 =3D 1, .n =3D 1,
> +	{ .dot =3D 243000, .p1 =3D 4, .p2 =3D 1, .n =3D 1,
>  	  .m2 =3D 0x6133333 /* .m2_int =3D 24, m2_frac =3D 1258291 */ },
> -	{ .clock =3D 324000, .p1 =3D 4, .p2 =3D 1, .n =3D 1,
> +	{ .dot =3D 324000, .p1 =3D 4, .p2 =3D 1, .n =3D 1,
>  	  .m2 =3D 0x819999a /* .m2_int =3D 32, m2_frac =3D 1677722 */ },
> -	{ .clock =3D 432000, .p1 =3D 3, .p2 =3D 1, .n =3D 1,
> +	{ .dot =3D 432000, .p1 =3D 3, .p2 =3D 1, .n =3D 1,
>  	  .m2 =3D 0x819999a /* .m2_int =3D 32, m2_frac =3D 1677722 */ },
>  };
>=20=20
>  static bool
>  bxt_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state,
> -			  struct bxt_clk_div *clk_div)
> +			  struct dpll *clk_div)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct dpll best_clock;
>=20=20
>  	/* Calculate HDMI div */
>  	/*
>  	 * FIXME: tie the following calculation into
>  	 * i9xx_crtc_compute_clock
>  	 */
> -	if (!bxt_find_best_dpll(crtc_state, &best_clock)) {
> +	if (!bxt_find_best_dpll(crtc_state, clk_div)) {
>  		drm_dbg(&i915->drm, "no PLL dividers found for clock %d pipe %c\n",
>  			crtc_state->port_clock,
>  			pipe_name(crtc->pipe));
>  		return false;
>  	}
>=20=20
> -	clk_div->p1 =3D best_clock.p1;
> -	clk_div->p2 =3D best_clock.p2;
> -	drm_WARN_ON(&i915->drm, best_clock.m1 !=3D 2);
> -	clk_div->n =3D best_clock.n;
> -	clk_div->m2 =3D best_clock.m2;
> -
> -	clk_div->vco =3D best_clock.vco;
> +	drm_WARN_ON(&i915->drm, clk_div->m1 !=3D 2);
>=20=20
>  	return true;
>  }
>=20=20
>  static void bxt_ddi_dp_pll_dividers(struct intel_crtc_state *crtc_state,
> -				    struct bxt_clk_div *clk_div)
> +				    struct dpll *clk_div)
>  {
>  	int clock =3D crtc_state->port_clock;
>  	int i;
>=20=20
>  	*clk_div =3D bxt_dp_clk_val[0];
>  	for (i =3D 0; i < ARRAY_SIZE(bxt_dp_clk_val); ++i) {
> -		if (bxt_dp_clk_val[i].clock =3D=3D clock) {
> +		if (bxt_dp_clk_val[i].dot =3D=3D clock) {
>  			*clk_div =3D bxt_dp_clk_val[i];
>  			break;
>  		}
> @@ -2158,7 +2140,7 @@ static void bxt_ddi_dp_pll_dividers(struct intel_cr=
tc_state *crtc_state,
>  }
>=20=20
>  static bool bxt_ddi_set_dpll_hw_state(struct intel_crtc_state *crtc_stat=
e,
> -				      const struct bxt_clk_div *clk_div)
> +				      const struct dpll *clk_div)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
>  	struct intel_dpll_hw_state *dpll_hw_state =3D &crtc_state->dpll_hw_stat=
e;
> @@ -2230,7 +2212,7 @@ static bool bxt_ddi_set_dpll_hw_state(struct intel_=
crtc_state *crtc_state,
>  static bool
>  bxt_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
>  {
> -	struct bxt_clk_div clk_div =3D {};
> +	struct dpll clk_div =3D {};
>=20=20
>  	bxt_ddi_dp_pll_dividers(crtc_state, &clk_div);
>=20=20
> @@ -2240,7 +2222,7 @@ bxt_ddi_dp_set_dpll_hw_state(struct intel_crtc_stat=
e *crtc_state)
>  static bool
>  bxt_ddi_hdmi_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
>  {
> -	struct bxt_clk_div clk_div =3D {};
> +	struct dpll clk_div =3D {};
>=20=20
>  	bxt_ddi_hdmi_pll_dividers(crtc_state, &clk_div);

--=20
Jani Nikula, Intel Open Source Graphics Center
