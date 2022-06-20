Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BD555139A
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 11:02:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 072F810EF8D;
	Mon, 20 Jun 2022 09:02:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62F6210F00A
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 09:02:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655715722; x=1687251722;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=uRVHifNTxHhdCY+iouSeLriBpM+9ucceVZWgckwWH7Q=;
 b=dLaCjrJsQu36p9E+hIwqDOoQhlDlPtfEbAmVwQcFA2dq53/M/3aHv44z
 EV4GRpIi45b1/VrFPfNFKDgS6IF/eJv3ny+xUBC8fpTIi6yzcm1jJPvXg
 0ZSAIYbH5nnej0Yck2skCNENj5Xy11AZgWcCZzYZV/f1AKSafIVCLOfJ2
 fa07E28RVa5CoaX++lnwcNvd9/wjNNUfff2vzwt3KMHkcWL8LuH5N2MWU
 RVPbEJEcIPL3EGZH67r72n9yPawc/a7VFIh3yNXgr3cWGYzJXkEYi2B89
 X5f36aIESFIhiKVBEeXgaPEX9cvM6dqhMH84ee0pMNrrJOr9046xQFCmv Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="366168632"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="366168632"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 02:02:01 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="591084215"
Received: from hkanchar-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.36.6])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 02:02:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220617160510.2082-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220617160510.2082-1-ville.syrjala@linux.intel.com>
 <20220617160510.2082-3-ville.syrjala@linux.intel.com>
Date: Mon, 20 Jun 2022 12:01:58 +0300
Message-ID: <87k09bu2rd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 02/16] drm/i915: Shuffle some PLL code
 around
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

On Fri, 17 Jun 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Shuffle some PLL functions around a bit to avoid ugle
> forward declarations later on. No functional changes.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 176 +++++++++---------
>  1 file changed, 88 insertions(+), 88 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index ddae7e42ac46..bfccc96f16fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -905,37 +905,6 @@ hsw_ddi_calculate_wrpll(int clock /* in Hz */,
>  	*r2_out =3D best.r2;
>  }
>=20=20
> -static int
> -hsw_ddi_wrpll_compute_dpll(struct intel_atomic_state *state,
> -			   struct intel_crtc *crtc)
> -{
> -	struct intel_crtc_state *crtc_state =3D
> -		intel_atomic_get_new_crtc_state(state, crtc);
> -	unsigned int p, n2, r2;
> -
> -	hsw_ddi_calculate_wrpll(crtc_state->port_clock * 1000, &r2, &n2, &p);
> -
> -	crtc_state->dpll_hw_state.wrpll =3D
> -		WRPLL_PLL_ENABLE | WRPLL_REF_LCPLL |
> -		WRPLL_DIVIDER_REFERENCE(r2) | WRPLL_DIVIDER_FEEDBACK(n2) |
> -		WRPLL_DIVIDER_POST(p);
> -
> -	return 0;
> -}
> -
> -static struct intel_shared_dpll *
> -hsw_ddi_wrpll_get_dpll(struct intel_atomic_state *state,
> -		       struct intel_crtc *crtc)
> -{
> -	struct intel_crtc_state *crtc_state =3D
> -		intel_atomic_get_new_crtc_state(state, crtc);
> -
> -	return intel_find_shared_dpll(state, crtc,
> -				      &crtc_state->dpll_hw_state,
> -				      BIT(DPLL_ID_WRPLL2) |
> -				      BIT(DPLL_ID_WRPLL1));
> -}
> -
>  static int hsw_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
>  				  const struct intel_shared_dpll *pll,
>  				  const struct intel_dpll_hw_state *pll_state)
> @@ -976,6 +945,37 @@ static int hsw_ddi_wrpll_get_freq(struct drm_i915_pr=
ivate *dev_priv,
>  	return (refclk * n / 10) / (p * r) * 2;
>  }
>=20=20
> +static int
> +hsw_ddi_wrpll_compute_dpll(struct intel_atomic_state *state,
> +			   struct intel_crtc *crtc)
> +{
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	unsigned int p, n2, r2;
> +
> +	hsw_ddi_calculate_wrpll(crtc_state->port_clock * 1000, &r2, &n2, &p);
> +
> +	crtc_state->dpll_hw_state.wrpll =3D
> +		WRPLL_PLL_ENABLE | WRPLL_REF_LCPLL |
> +		WRPLL_DIVIDER_REFERENCE(r2) | WRPLL_DIVIDER_FEEDBACK(n2) |
> +		WRPLL_DIVIDER_POST(p);
> +
> +	return 0;
> +}
> +
> +static struct intel_shared_dpll *
> +hsw_ddi_wrpll_get_dpll(struct intel_atomic_state *state,
> +		       struct intel_crtc *crtc)
> +{
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +
> +	return intel_find_shared_dpll(state, crtc,
> +				      &crtc_state->dpll_hw_state,
> +				      BIT(DPLL_ID_WRPLL2) |
> +				      BIT(DPLL_ID_WRPLL1));
> +}
> +
>  static int
>  hsw_ddi_lcpll_compute_dpll(struct intel_crtc_state *crtc_state)
>  {
> @@ -1618,43 +1618,6 @@ skl_ddi_calculate_wrpll(int clock /* in Hz */,
>  	return 0;
>  }
>=20=20
> -static int skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
> -{
> -	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
> -	struct skl_wrpll_params wrpll_params =3D {};
> -	u32 ctrl1, cfgcr1, cfgcr2;
> -	int ret;
> -
> -	/*
> -	 * See comment in intel_dpll_hw_state to understand why we always use 0
> -	 * as the DPLL id in this function.
> -	 */
> -	ctrl1 =3D DPLL_CTRL1_OVERRIDE(0);
> -
> -	ctrl1 |=3D DPLL_CTRL1_HDMI_MODE(0);
> -
> -	ret =3D skl_ddi_calculate_wrpll(crtc_state->port_clock * 1000,
> -				      i915->dpll.ref_clks.nssc, &wrpll_params);
> -	if (ret)
> -		return ret;
> -
> -	cfgcr1 =3D DPLL_CFGCR1_FREQ_ENABLE |
> -		DPLL_CFGCR1_DCO_FRACTION(wrpll_params.dco_fraction) |
> -		wrpll_params.dco_integer;
> -
> -	cfgcr2 =3D DPLL_CFGCR2_QDIV_RATIO(wrpll_params.qdiv_ratio) |
> -		DPLL_CFGCR2_QDIV_MODE(wrpll_params.qdiv_mode) |
> -		DPLL_CFGCR2_KDIV(wrpll_params.kdiv) |
> -		DPLL_CFGCR2_PDIV(wrpll_params.pdiv) |
> -		wrpll_params.central_freq;
> -
> -	crtc_state->dpll_hw_state.ctrl1 =3D ctrl1;
> -	crtc_state->dpll_hw_state.cfgcr1 =3D cfgcr1;
> -	crtc_state->dpll_hw_state.cfgcr2 =3D cfgcr2;
> -
> -	return 0;
> -}
> -
>  static int skl_ddi_wrpll_get_freq(struct drm_i915_private *i915,
>  				  const struct intel_shared_dpll *pll,
>  				  const struct intel_dpll_hw_state *pll_state)
> @@ -1726,6 +1689,43 @@ static int skl_ddi_wrpll_get_freq(struct drm_i915_=
private *i915,
>  	return dco_freq / (p0 * p1 * p2 * 5);
>  }
>=20=20
> +static int skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
> +	struct skl_wrpll_params wrpll_params =3D {};
> +	u32 ctrl1, cfgcr1, cfgcr2;
> +	int ret;
> +
> +	/*
> +	 * See comment in intel_dpll_hw_state to understand why we always use 0
> +	 * as the DPLL id in this function.
> +	 */
> +	ctrl1 =3D DPLL_CTRL1_OVERRIDE(0);
> +
> +	ctrl1 |=3D DPLL_CTRL1_HDMI_MODE(0);
> +
> +	ret =3D skl_ddi_calculate_wrpll(crtc_state->port_clock * 1000,
> +				      i915->dpll.ref_clks.nssc, &wrpll_params);
> +	if (ret)
> +		return ret;
> +
> +	cfgcr1 =3D DPLL_CFGCR1_FREQ_ENABLE |
> +		DPLL_CFGCR1_DCO_FRACTION(wrpll_params.dco_fraction) |
> +		wrpll_params.dco_integer;
> +
> +	cfgcr2 =3D DPLL_CFGCR2_QDIV_RATIO(wrpll_params.qdiv_ratio) |
> +		DPLL_CFGCR2_QDIV_MODE(wrpll_params.qdiv_mode) |
> +		DPLL_CFGCR2_KDIV(wrpll_params.kdiv) |
> +		DPLL_CFGCR2_PDIV(wrpll_params.pdiv) |
> +		wrpll_params.central_freq;
> +
> +	crtc_state->dpll_hw_state.ctrl1 =3D ctrl1;
> +	crtc_state->dpll_hw_state.cfgcr1 =3D cfgcr1;
> +	crtc_state->dpll_hw_state.cfgcr2 =3D cfgcr2;
> +
> +	return 0;
> +}
> +
>  static int
>  skl_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
>  {
> @@ -2245,26 +2245,6 @@ static int bxt_ddi_set_dpll_hw_state(struct intel_=
crtc_state *crtc_state,
>  	return 0;
>  }
>=20=20
> -static int
> -bxt_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
> -{
> -	struct dpll clk_div =3D {};
> -
> -	bxt_ddi_dp_pll_dividers(crtc_state, &clk_div);
> -
> -	return bxt_ddi_set_dpll_hw_state(crtc_state, &clk_div);
> -}
> -
> -static int
> -bxt_ddi_hdmi_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
> -{
> -	struct dpll clk_div =3D {};
> -
> -	bxt_ddi_hdmi_pll_dividers(crtc_state, &clk_div);
> -
> -	return bxt_ddi_set_dpll_hw_state(crtc_state, &clk_div);
> -}
> -
>  static int bxt_ddi_pll_get_freq(struct drm_i915_private *i915,
>  				const struct intel_shared_dpll *pll,
>  				const struct intel_dpll_hw_state *pll_state)
> @@ -2282,6 +2262,26 @@ static int bxt_ddi_pll_get_freq(struct drm_i915_pr=
ivate *i915,
>  	return chv_calc_dpll_params(i915->dpll.ref_clks.nssc, &clock);
>  }
>=20=20
> +static int
> +bxt_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
> +{
> +	struct dpll clk_div =3D {};
> +
> +	bxt_ddi_dp_pll_dividers(crtc_state, &clk_div);
> +
> +	return bxt_ddi_set_dpll_hw_state(crtc_state, &clk_div);
> +}
> +
> +static int
> +bxt_ddi_hdmi_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
> +{
> +	struct dpll clk_div =3D {};
> +
> +	bxt_ddi_hdmi_pll_dividers(crtc_state, &clk_div);
> +
> +	return bxt_ddi_set_dpll_hw_state(crtc_state, &clk_div);
> +}
> +
>  static int bxt_compute_dpll(struct intel_atomic_state *state,
>  			    struct intel_crtc *crtc,
>  			    struct intel_encoder *encoder)

--=20
Jani Nikula, Intel Open Source Graphics Center
