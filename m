Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D494D2C6E
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 10:46:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 325E310E11B;
	Wed,  9 Mar 2022 09:46:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F9D910E11B
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 09:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646819175; x=1678355175;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=iJEKe5ulua311J0J9yBxRjAs7SBasNy1z2RJzatcPPc=;
 b=GgCR82WyL16CIIvoDB+0RA5YBVMmQ+GHCmrUZDKZfvLP21mx5obHYbat
 5Vz/LuIvhC8E59ol45S+x8q/+rzMGvmHp1ZRkmg29JByrhxAAecRZLqm4
 atg3ZEyKcCor0RYdXTIP6Yihr1ICRXe3i6baXXRFKQ1gZI0rK3ezeEnfy
 PmxD9DH3lK86kjysotHqxtQ65XTDMmRw4wlAmN0bFAuA747TU5OBcL734
 rUs12zrBuig0dC2I7Dvb1dN9WwFML13ixh9wf77idY4di+Qlgg+gvtQQ2
 B0SQzAGQcCLUok0aFYoR2Usd5a/8ugE3lRr0faaN8y8Alxey9BEhmx1Rr A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="234886025"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="234886025"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 01:46:14 -0800
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="513466298"
Received: from byrnec1x-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.29.235])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 01:46:11 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220307233940.4161-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220307233940.4161-1-ville.syrjala@linux.intel.com>
 <20220307233940.4161-7-ville.syrjala@linux.intel.com>
Date: Wed, 09 Mar 2022 11:46:09 +0200
Message-ID: <87v8wnzcf2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 6/8] drm/i915: Replace hand rolled bxt
 vco calculation with chv_calc_dpll_params()
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
> Use chv_calc_dpll_params() to calculate the BXT DP DPLL VCO
> frequency.
>
> We need to add the m1 divider into bxt_dp_clk_val[] for this to work.
>
> v2: Make the WARN_ON() sensible
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

I admit I didn't check all the computations, but the drm_WARN_ON()
should catch any functional changes AFAICT.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 23 +++++++++++--------
>  1 file changed, 13 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index 4b52086aa9e9..b7071da4b7e5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -2086,13 +2086,13 @@ static bool bxt_ddi_pll_get_hw_state(struct drm_i=
915_private *dev_priv,
>  /* pre-calculated values for DP linkrates */
>  static const struct dpll bxt_dp_clk_val[] =3D {
>  	/* m2 is .22 binary fixed point */
> -	{ .dot =3D 162000, .p1 =3D 4, .p2 =3D 2, .n =3D 1, .m2 =3D 0x819999a /*=
 32.4 */ },
> -	{ .dot =3D 270000, .p1 =3D 4, .p2 =3D 1, .n =3D 1, .m2 =3D 0x6c00000 /*=
 27.0 */ },
> -	{ .dot =3D 540000, .p1 =3D 2, .p2 =3D 1, .n =3D 1, .m2 =3D 0x6c00000 /*=
 27.0 */ },
> -	{ .dot =3D 216000, .p1 =3D 3, .p2 =3D 2, .n =3D 1, .m2 =3D 0x819999a /*=
 32.4 */ },
> -	{ .dot =3D 243000, .p1 =3D 4, .p2 =3D 1, .n =3D 1, .m2 =3D 0x6133333 /*=
 24.3 */ },
> -	{ .dot =3D 324000, .p1 =3D 4, .p2 =3D 1, .n =3D 1, .m2 =3D 0x819999a /*=
 32.4 */ },
> -	{ .dot =3D 432000, .p1 =3D 3, .p2 =3D 1, .n =3D 1, .m2 =3D 0x819999a /*=
 32.4 */ },
> +	{ .dot =3D 162000, .p1 =3D 4, .p2 =3D 2, .n =3D 1, .m1 =3D 2, .m2 =3D 0=
x819999a /* 32.4 */ },
> +	{ .dot =3D 270000, .p1 =3D 4, .p2 =3D 1, .n =3D 1, .m1 =3D 2, .m2 =3D 0=
x6c00000 /* 27.0 */ },
> +	{ .dot =3D 540000, .p1 =3D 2, .p2 =3D 1, .n =3D 1, .m1 =3D 2, .m2 =3D 0=
x6c00000 /* 27.0 */ },
> +	{ .dot =3D 216000, .p1 =3D 3, .p2 =3D 2, .n =3D 1, .m1 =3D 2, .m2 =3D 0=
x819999a /* 32.4 */ },
> +	{ .dot =3D 243000, .p1 =3D 4, .p2 =3D 1, .n =3D 1, .m1 =3D 2, .m2 =3D 0=
x6133333 /* 24.3 */ },
> +	{ .dot =3D 324000, .p1 =3D 4, .p2 =3D 1, .n =3D 1, .m1 =3D 2, .m2 =3D 0=
x819999a /* 32.4 */ },
> +	{ .dot =3D 432000, .p1 =3D 3, .p2 =3D 1, .n =3D 1, .m1 =3D 2, .m2 =3D 0=
x819999a /* 32.4 */ },
>  };
>=20=20
>  static bool
> @@ -2122,18 +2122,21 @@ bxt_ddi_hdmi_pll_dividers(struct intel_crtc_state=
 *crtc_state,
>  static void bxt_ddi_dp_pll_dividers(struct intel_crtc_state *crtc_state,
>  				    struct dpll *clk_div)
>  {
> -	int clock =3D crtc_state->port_clock;
> +	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
>  	int i;
>=20=20
>  	*clk_div =3D bxt_dp_clk_val[0];
>  	for (i =3D 0; i < ARRAY_SIZE(bxt_dp_clk_val); ++i) {
> -		if (bxt_dp_clk_val[i].dot =3D=3D clock) {
> +		if (crtc_state->port_clock =3D=3D bxt_dp_clk_val[i].dot) {
>  			*clk_div =3D bxt_dp_clk_val[i];
>  			break;
>  		}
>  	}
>=20=20
> -	clk_div->vco =3D clock * 10 / 2 * clk_div->p1 * clk_div->p2;
> +	chv_calc_dpll_params(i915->dpll.ref_clks.nssc, clk_div);
> +
> +	drm_WARN_ON(&i915->drm, clk_div->vco =3D=3D 0 ||
> +		    clk_div->dot !=3D crtc_state->port_clock);
>  }
>=20=20
>  static bool bxt_ddi_set_dpll_hw_state(struct intel_crtc_state *crtc_stat=
e,

--=20
Jani Nikula, Intel Open Source Graphics Center
