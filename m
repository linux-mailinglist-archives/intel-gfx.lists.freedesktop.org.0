Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA8828042F
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Oct 2020 18:46:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B08DA6E8D4;
	Thu,  1 Oct 2020 16:46:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D22B36E8D4
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Oct 2020 16:46:03 +0000 (UTC)
IronPort-SDR: lmqcPVBG8Cf0U7kBHA18LNNTKUMOgDk5ZRj2qltNWNM48XklB5MjC9mafJK3FdT+51IkvzXJ4c
 6XfTEAaPFxwg==
X-IronPort-AV: E=McAfee;i="6000,8403,9761"; a="180931261"
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="180931261"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2020 09:46:01 -0700
IronPort-SDR: +TQlXFZaSTLqWitsA6WR527M/p3SQbzINp0zckpVMxg1YSZIRF3lLkN/NegSPYgiBmujfDRAjv
 8CByhFBGX0MQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="294497460"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 01 Oct 2020 09:45:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 01 Oct 2020 19:45:58 +0300
Date: Thu, 1 Oct 2020 19:45:58 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20201001164558.GW6112@intel.com>
References: <20200929002929.783620-1-imre.deak@intel.com>
 <20200929002929.783620-5-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200929002929.783620-5-imre.deak@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/tgl: Fix Combo PHY DPLL
 fractional divider for 38.4MHz ref clock
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 29, 2020 at 03:29:28AM +0300, Imre Deak wrote:
> Apply Display WA #22010492432 for combo PHY PLLs too. This should fix a
> problem where the PLL output frequency is slightly off with the current
> PLL fractional divider value.
> =

> I haven't seen an actual case where this causes a problem, but let's
> follow the spec. It's also needed on some EHL platforms, but for that we
> also need a way to distinguish the affected EHL SKUs, so I leave that
> for a follow-up.
> =

> v2:
> - Apply the WA at one place when calculating the PLL dividers from the
>   frequency and the frequency from the dividers for all the combo PLL
>   use cases (DP, HDMI, TBT). (Ville)
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 34 +++++++++++--------
>  1 file changed, 20 insertions(+), 14 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index ded2b2dfe319..e7b058340a1a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -2694,6 +2694,16 @@ static void cnl_wrpll_decode_divs(const struct skl=
_wrpll_params *wrpll_params,
>  	}
>  }
>  =

> +/*
> + * Display WA #22010492432: tgl
> + * Program half of the nominal DCO divider fraction value.
> + */
> +static bool
> +tgl_combo_pll_div_frac_wa_needed(struct drm_i915_private *i915)
> +{
> +	return IS_TIGERLAKE(i915) && i915->dpll.ref_clks.nssc =3D=3D 38400;
> +}
> +
>  static int __cnl_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
>  				    const struct intel_shared_dpll *pll,
>  				    int ref_clock)
> @@ -2719,6 +2729,9 @@ static int __cnl_ddi_wrpll_get_freq(struct drm_i915=
_private *dev_priv,
>  	dco_fraction =3D (pll_state->cfgcr0 & DPLL_CFGCR0_DCO_FRACTION_MASK) >>
>  		       DPLL_CFGCR0_DCO_FRACTION_SHIFT;
>  =

> +	if (tgl_combo_pll_div_frac_wa_needed(dev_priv))
> +		dco_fraction *=3D 2;
> +
>  	return skl_wrpll_calc_freq(ref_clock, dco_integer, dco_fraction, pdiv, =
qdiv, kdiv);
>  }
>  =

> @@ -2992,16 +3005,6 @@ static const struct skl_wrpll_params tgl_tbt_pll_2=
4MHz_values =3D {
>  	/* the following params are unused */
>  };
>  =

> -/*
> - * Display WA #22010492432: tgl
> - * Divide the nominal .dco_fraction value by 2.
> - */
> -static const struct skl_wrpll_params tgl_tbt_pll_38_4MHz_values =3D {
> -	.dco_integer =3D 0x54, .dco_fraction =3D 0x1800,
> -	/* the following params are unused */
> -	.pdiv =3D 0, .kdiv =3D 0, .qdiv_mode =3D 0, .qdiv_ratio =3D 0,
> -};
> -
>  static int icl_wrpll_ref_clock(struct drm_i915_private *i915);
>  =

>  static bool icl_dp_combo_pll_clock_match(struct drm_i915_private *i915, =
int clock,
> @@ -3059,14 +3062,12 @@ static bool icl_calc_tbt_pll(struct intel_crtc_st=
ate *crtc_state,
>  			MISSING_CASE(dev_priv->dpll.ref_clks.nssc);
>  			fallthrough;
>  		case 19200:
> +		case 38400:
>  			*pll_params =3D tgl_tbt_pll_19_2MHz_values;
>  			break;
>  		case 24000:
>  			*pll_params =3D tgl_tbt_pll_24MHz_values;
>  			break;
> -		case 38400:
> -			*pll_params =3D tgl_tbt_pll_38_4MHz_values;
> -			break;
>  		}
>  	} else {
>  		switch (dev_priv->dpll.ref_clks.nssc) {
> @@ -3133,9 +3134,14 @@ static void icl_calc_dpll_state(struct drm_i915_pr=
ivate *i915,
>  				const struct skl_wrpll_params *pll_params,
>  				struct intel_dpll_hw_state *pll_state)
>  {
> +	u32 dco_fraction =3D pll_params->dco_fraction;
> +
>  	memset(pll_state, 0, sizeof(*pll_state));
>  =

> -	pll_state->cfgcr0 =3D DPLL_CFGCR0_DCO_FRACTION(pll_params->dco_fraction=
) |
> +	if (tgl_combo_pll_div_frac_wa_needed(i915))
> +		dco_fraction =3D DIV_ROUND_CLOSEST(dco_fraction, 2);
> +
> +	pll_state->cfgcr0 =3D DPLL_CFGCR0_DCO_FRACTION(dco_fraction) |
>  			    pll_params->dco_integer;
>  =

>  	pll_state->cfgcr1 =3D DPLL_CFGCR1_QDIV_RATIO(pll_params->qdiv_ratio) |
> -- =

> 2.25.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
