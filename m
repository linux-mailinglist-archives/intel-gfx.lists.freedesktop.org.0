Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8464E92E2
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 12:57:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF63B10E5A3;
	Mon, 28 Mar 2022 10:57:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EF4310E5A3
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 10:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648465066; x=1680001066;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=t3E3lWXFtdnuMigCFS5rQD/U3BOXydrWtHlOVHV0XP4=;
 b=EfmNKru6kpsPZ5XmEJboOHhq8MJMvHciJZHuCcmoelnN9n6TS22WRMPq
 36NGqodhFOw2QM/EtLY+KDnt+tGN46w5fv9PE/Fj4Cqa7hzaufgIkWC26
 zuyYYUY+YQYDQ6Xd+7EOqZQ5fKElwrjJ7Xps+XBfxT2gxzdaiO9t84h8r
 OxL8hNjdwPs5F/QzJJ4zPrsKBGXTvH03Fgm00ZGLphWhD9jd5uJ8JEsxm
 1h7MwnTRubY7xbQ4n3L0q/LMqIK2ijJ1/hgoMRtc1EzR9S3u0c4InWBQ+
 5tasbJYIkto8JEnxMu5pBIk4nLQ64Bw1BkvVojGwggprXzH8HTS+AcuJR A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="238902749"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="238902749"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 03:57:46 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="563546602"
Received: from aysivtso-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.62.56])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 03:57:44 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220325123205.22140-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
 <20220325123205.22140-2-ville.syrjala@linux.intel.com>
Date: Mon, 28 Mar 2022 13:57:35 +0300
Message-ID: <871qymgx9c.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 01/13] drm/i915: Make .get_dplls() return int
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

On Fri, 25 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Get rid of the confusing back and forth between bools and ints
> in the .get_dplls() stuff. Just make everything return an int.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

There was at least one call to bxt_ddi_hdmi_pll_dividers() where the
return value wasn't propagated, and perhaps should. That's a functional
change that's not part of this patch, however.


>
> Initial conversion done with cocci, with some manual fixups on top:
> @find@
> identifier func !~ "get_hw_state|_is_|needed";
> typedef bool;
> parameter list[N] P;
> @@
> - bool
> + int
>  func(P)
> {
> <...
> (
> - return true;
> + return 0;
> |
> - return false;
> + return -EINVAL;
> )
> ...>
> }
>
> @@
> identifier find.func;
> expression list[find.N] E;
> expression X;
> @@
> - if (!func(E))
> + ret =3D func(E);
> + if (ret)
>   {
>   ...
> - return X;
> + return ret;
>   }
>
> @@
> identifier find.func;
> expression X;
> expression list[find.N] E;
> @@
> - if (!func(E))
> + ret =3D func(E);
> + if (ret)
> - return X;
> + return ret;
>
> @@
> identifier find.func;
> expression list[find.N] E;
> expression O, X;
> typedef bool;
> bool B;
> @@
> - B =3D func(E);
> - if (O && !B)
> + if (O) {
> + ret =3D func(E);
> + if (ret)
> - return X;
> + return ret;
> + }
>
> @@
> identifier find.func;
> expression list[find.N] E;
> expression O, X;
> @@
> - if (O && !func(E))
> + if (O) {
> + ret =3D func(E);
> + if (ret)
> - return X;
> + return ret;
> + }
>
> @@
> identifier find.func;
> expression list[find.N] E;
> expression X;
> typedef bool;
> bool B;
> @@
> - B =3D func(E);
> - if (!B)
> + ret =3D func(E);
> + if (ret)
>   {
>   ...
> - return X;
> + return ret;
>   }
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll.c     |  12 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 242 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   6 +-
>  3 files changed, 131 insertions(+), 129 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/=
i915/display/intel_dpll.c
> index 95b9d327ed4d..1bd4a05dff7c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -935,6 +935,7 @@ static int hsw_crtc_compute_clock(struct intel_crtc_s=
tate *crtc_state)
>  		to_intel_atomic_state(crtc_state->uapi.state);
>  	struct intel_encoder *encoder =3D
>  		intel_get_crtc_new_encoder(state, crtc_state);
> +	int ret;
>=20=20
>  	if (IS_DG2(dev_priv))
>  		return intel_mpllb_calc_state(crtc_state, encoder);
> @@ -943,11 +944,12 @@ static int hsw_crtc_compute_clock(struct intel_crtc=
_state *crtc_state)
>  	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
>  		return 0;
>=20=20
> -	if (!intel_reserve_shared_dplls(state, crtc, encoder)) {
> +	ret =3D intel_reserve_shared_dplls(state, crtc, encoder);
> +	if (ret) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "failed to find PLL for pipe %c\n",
>  			    pipe_name(crtc->pipe));
> -		return -EINVAL;
> +		return ret;
>  	}
>=20=20
>  	return 0;
> @@ -1076,6 +1078,7 @@ static int ilk_crtc_compute_clock(struct intel_crtc=
_state *crtc_state)
>  		to_intel_atomic_state(crtc_state->uapi.state);
>  	const struct intel_limit *limit;
>  	int refclk =3D 120000;
> +	int ret;
>=20=20
>  	memset(&crtc_state->dpll_hw_state, 0,
>  	       sizeof(crtc_state->dpll_hw_state));
> @@ -1118,11 +1121,12 @@ static int ilk_crtc_compute_clock(struct intel_cr=
tc_state *crtc_state)
>  	ilk_compute_dpll(crtc_state, &crtc_state->dpll,
>  			 &crtc_state->dpll);
>=20=20
> -	if (!intel_reserve_shared_dplls(state, crtc, NULL)) {
> +	ret =3D intel_reserve_shared_dplls(state, crtc, NULL);
> +	if (ret) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "failed to find PLL for pipe %c\n",
>  			    pipe_name(crtc->pipe));
> -		return -EINVAL;
> +		return ret;
>  	}
>=20=20
>  	return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index b7071da4b7e5..1d52796333ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -90,9 +90,9 @@ struct intel_shared_dpll_funcs {
>  struct intel_dpll_mgr {
>  	const struct dpll_info *dpll_info;
>=20=20
> -	bool (*get_dplls)(struct intel_atomic_state *state,
> -			  struct intel_crtc *crtc,
> -			  struct intel_encoder *encoder);
> +	int (*get_dplls)(struct intel_atomic_state *state,
> +			 struct intel_crtc *crtc,
> +			 struct intel_encoder *encoder);
>  	void (*put_dplls)(struct intel_atomic_state *state,
>  			  struct intel_crtc *crtc);
>  	void (*update_active_dpll)(struct intel_atomic_state *state,
> @@ -514,9 +514,9 @@ static void ibx_pch_dpll_disable(struct drm_i915_priv=
ate *dev_priv,
>  	udelay(200);
>  }
>=20=20
> -static bool ibx_get_dpll(struct intel_atomic_state *state,
> -			 struct intel_crtc *crtc,
> -			 struct intel_encoder *encoder)
> +static int ibx_get_dpll(struct intel_atomic_state *state,
> +			struct intel_crtc *crtc,
> +			struct intel_encoder *encoder)
>  {
>  	struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
> @@ -541,7 +541,7 @@ static bool ibx_get_dpll(struct intel_atomic_state *s=
tate,
>  	}
>=20=20
>  	if (!pll)
> -		return false;
> +		return -EINVAL;
>=20=20
>  	/* reference the pll */
>  	intel_reference_shared_dpll(state, crtc,
> @@ -549,7 +549,7 @@ static bool ibx_get_dpll(struct intel_atomic_state *s=
tate,
>=20=20
>  	crtc_state->shared_dpll =3D pll;
>=20=20
> -	return true;
> +	return 0;
>  }
>=20=20
>  static void ibx_dump_hw_state(struct drm_i915_private *dev_priv,
> @@ -584,7 +584,7 @@ static const struct intel_dpll_mgr pch_pll_mgr =3D {
>  };
>=20=20
>  static void hsw_ddi_wrpll_enable(struct drm_i915_private *dev_priv,
> -			       struct intel_shared_dpll *pll)
> +				 struct intel_shared_dpll *pll)
>  {
>  	const enum intel_dpll_id id =3D pll->info->id;
>=20=20
> @@ -1060,13 +1060,13 @@ static int hsw_ddi_spll_get_freq(struct drm_i915_=
private *i915,
>  	return link_clock * 2;
>  }
>=20=20
> -static bool hsw_get_dpll(struct intel_atomic_state *state,
> -			 struct intel_crtc *crtc,
> -			 struct intel_encoder *encoder)
> +static int hsw_get_dpll(struct intel_atomic_state *state,
> +			struct intel_crtc *crtc,
> +			struct intel_encoder *encoder)
>  {
>  	struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
> -	struct intel_shared_dpll *pll;
> +	struct intel_shared_dpll *pll =3D NULL;
>=20=20
>  	memset(&crtc_state->dpll_hw_state, 0,
>  	       sizeof(crtc_state->dpll_hw_state));
> @@ -1077,18 +1077,16 @@ static bool hsw_get_dpll(struct intel_atomic_stat=
e *state,
>  		pll =3D hsw_ddi_lcpll_get_dpll(crtc_state);
>  	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_ANALOG))
>  		pll =3D hsw_ddi_spll_get_dpll(state, crtc);
> -	else
> -		return false;
>=20=20
>  	if (!pll)
> -		return false;
> +		return -EINVAL;
>=20=20
>  	intel_reference_shared_dpll(state, crtc,
>  				    pll, &crtc_state->dpll_hw_state);
>=20=20
>  	crtc_state->shared_dpll =3D pll;
>=20=20
> -	return true;
> +	return 0;
>  }
>=20=20
>  static void hsw_update_dpll_ref_clks(struct drm_i915_private *i915)
> @@ -1493,7 +1491,7 @@ static void skl_wrpll_params_populate(struct skl_wr=
pll_params *params,
>  			 params->dco_integer * MHz(1)) * 0x8000, MHz(1));
>  }
>=20=20
> -static bool
> +static int
>  skl_ddi_calculate_wrpll(int clock /* in Hz */,
>  			int ref_clock,
>  			struct skl_wrpll_params *wrpll_params)
> @@ -1552,7 +1550,7 @@ skl_ddi_calculate_wrpll(int clock /* in Hz */,
>=20=20
>  	if (!ctx.p) {
>  		DRM_DEBUG_DRIVER("No valid divider found for %dHz\n", clock);
> -		return false;
> +		return -EINVAL;
>  	}
>=20=20
>  	/*
> @@ -1564,14 +1562,15 @@ skl_ddi_calculate_wrpll(int clock /* in Hz */,
>  	skl_wrpll_params_populate(wrpll_params, afe_clock, ref_clock,
>  				  ctx.central_freq, p0, p1, p2);
>=20=20
> -	return true;
> +	return 0;
>  }
>=20=20
> -static bool skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_stat=
e)
> +static int skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
>  	struct skl_wrpll_params wrpll_params =3D {};
>  	u32 ctrl1, cfgcr1, cfgcr2;
> +	int ret;
>=20=20
>  	/*
>  	 * See comment in intel_dpll_hw_state to understand why we always use 0
> @@ -1581,10 +1580,10 @@ static bool skl_ddi_hdmi_pll_dividers(struct inte=
l_crtc_state *crtc_state)
>=20=20
>  	ctrl1 |=3D DPLL_CTRL1_HDMI_MODE(0);
>=20=20
> -	if (!skl_ddi_calculate_wrpll(crtc_state->port_clock * 1000,
> -				     i915->dpll.ref_clks.nssc,
> -				     &wrpll_params))
> -		return false;
> +	ret =3D skl_ddi_calculate_wrpll(crtc_state->port_clock * 1000,
> +				      i915->dpll.ref_clks.nssc, &wrpll_params);
> +	if (ret)
> +		return ret;
>=20=20
>  	cfgcr1 =3D DPLL_CFGCR1_FREQ_ENABLE |
>  		DPLL_CFGCR1_DCO_FRACTION(wrpll_params.dco_fraction) |
> @@ -1602,7 +1601,8 @@ static bool skl_ddi_hdmi_pll_dividers(struct intel_=
crtc_state *crtc_state)
>  	crtc_state->dpll_hw_state.ctrl1 =3D ctrl1;
>  	crtc_state->dpll_hw_state.cfgcr1 =3D cfgcr1;
>  	crtc_state->dpll_hw_state.cfgcr2 =3D cfgcr2;
> -	return true;
> +
> +	return 0;
>  }
>=20=20
>  static int skl_ddi_wrpll_get_freq(struct drm_i915_private *i915,
> @@ -1676,7 +1676,7 @@ static int skl_ddi_wrpll_get_freq(struct drm_i915_p=
rivate *i915,
>  	return dco_freq / (p0 * p1 * p2 * 5);
>  }
>=20=20
> -static bool
> +static int
>  skl_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
>  {
>  	u32 ctrl1;
> @@ -1713,7 +1713,7 @@ skl_ddi_dp_set_dpll_hw_state(struct intel_crtc_stat=
e *crtc_state)
>=20=20
>  	crtc_state->dpll_hw_state.ctrl1 =3D ctrl1;
>=20=20
> -	return true;
> +	return 0;
>  }
>=20=20
>  static int skl_ddi_lcpll_get_freq(struct drm_i915_private *i915,
> @@ -1750,33 +1750,23 @@ static int skl_ddi_lcpll_get_freq(struct drm_i915=
_private *i915,
>  	return link_clock * 2;
>  }
>=20=20
> -static bool skl_get_dpll(struct intel_atomic_state *state,
> -			 struct intel_crtc *crtc,
> -			 struct intel_encoder *encoder)
> +static int skl_get_dpll(struct intel_atomic_state *state,
> +			struct intel_crtc *crtc,
> +			struct intel_encoder *encoder)
>  {
>  	struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
> -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>  	struct intel_shared_dpll *pll;
> -	bool bret;
> +	int ret;
>=20=20
> -	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> -		bret =3D skl_ddi_hdmi_pll_dividers(crtc_state);
> -		if (!bret) {
> -			drm_dbg_kms(&i915->drm,
> -				    "Could not get HDMI pll dividers.\n");
> -			return false;
> -		}
> -	} else if (intel_crtc_has_dp_encoder(crtc_state)) {
> -		bret =3D skl_ddi_dp_set_dpll_hw_state(crtc_state);
> -		if (!bret) {
> -			drm_dbg_kms(&i915->drm,
> -				    "Could not set DP dpll HW state.\n");
> -			return false;
> -		}
> -	} else {
> -		return false;
> -	}
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> +		ret =3D skl_ddi_hdmi_pll_dividers(crtc_state);
> +	else if (intel_crtc_has_dp_encoder(crtc_state))
> +		ret =3D skl_ddi_dp_set_dpll_hw_state(crtc_state);
> +	else
> +		ret =3D -EINVAL;
> +	if (ret)
> +		return ret;
>=20=20
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
>  		pll =3D intel_find_shared_dpll(state, crtc,
> @@ -1789,14 +1779,14 @@ static bool skl_get_dpll(struct intel_atomic_stat=
e *state,
>  					     BIT(DPLL_ID_SKL_DPLL2) |
>  					     BIT(DPLL_ID_SKL_DPLL1));
>  	if (!pll)
> -		return false;
> +		return -EINVAL;
>=20=20
>  	intel_reference_shared_dpll(state, crtc,
>  				    pll, &crtc_state->dpll_hw_state);
>=20=20
>  	crtc_state->shared_dpll =3D pll;
>=20=20
> -	return true;
> +	return 0;
>  }
>=20=20
>  static int skl_ddi_pll_get_freq(struct drm_i915_private *i915,
> @@ -2095,7 +2085,7 @@ static const struct dpll bxt_dp_clk_val[] =3D {
>  	{ .dot =3D 432000, .p1 =3D 3, .p2 =3D 1, .n =3D 1, .m1 =3D 2, .m2 =3D 0=
x819999a /* 32.4 */ },
>  };
>=20=20
> -static bool
> +static int
>  bxt_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state,
>  			  struct dpll *clk_div)
>  {
> @@ -2111,12 +2101,12 @@ bxt_ddi_hdmi_pll_dividers(struct intel_crtc_state=
 *crtc_state,
>  		drm_dbg(&i915->drm, "no PLL dividers found for clock %d pipe %c\n",
>  			crtc_state->port_clock,
>  			pipe_name(crtc->pipe));
> -		return false;
> +		return -EINVAL;
>  	}
>=20=20
>  	drm_WARN_ON(&i915->drm, clk_div->m1 !=3D 2);
>=20=20
> -	return true;
> +	return 0;
>  }
>=20=20
>  static void bxt_ddi_dp_pll_dividers(struct intel_crtc_state *crtc_state,
> @@ -2139,8 +2129,8 @@ static void bxt_ddi_dp_pll_dividers(struct intel_cr=
tc_state *crtc_state,
>  		    clk_div->dot !=3D crtc_state->port_clock);
>  }
>=20=20
> -static bool bxt_ddi_set_dpll_hw_state(struct intel_crtc_state *crtc_stat=
e,
> -				      const struct dpll *clk_div)
> +static int bxt_ddi_set_dpll_hw_state(struct intel_crtc_state *crtc_state,
> +				     const struct dpll *clk_div)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
>  	struct intel_dpll_hw_state *dpll_hw_state =3D &crtc_state->dpll_hw_stat=
e;
> @@ -2169,7 +2159,7 @@ static bool bxt_ddi_set_dpll_hw_state(struct intel_=
crtc_state *crtc_state,
>  		targ_cnt =3D 9;
>  	} else {
>  		drm_err(&i915->drm, "Invalid VCO\n");
> -		return false;
> +		return -EINVAL;
>  	}
>=20=20
>  	if (clock > 270000)
> @@ -2206,10 +2196,10 @@ static bool bxt_ddi_set_dpll_hw_state(struct inte=
l_crtc_state *crtc_state,
>=20=20
>  	dpll_hw_state->pcsdw12 =3D LANESTAGGER_STRAP_OVRD | lanestagger;
>=20=20
> -	return true;
> +	return 0;
>  }
>=20=20
> -static bool
> +static int
>  bxt_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
>  {
>  	struct dpll clk_div =3D {};
> @@ -2219,7 +2209,7 @@ bxt_ddi_dp_set_dpll_hw_state(struct intel_crtc_stat=
e *crtc_state)
>  	return bxt_ddi_set_dpll_hw_state(crtc_state, &clk_div);
>  }
>=20=20
> -static bool
> +static int
>  bxt_ddi_hdmi_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
>  {
>  	struct dpll clk_div =3D {};
> @@ -2246,23 +2236,25 @@ static int bxt_ddi_pll_get_freq(struct drm_i915_p=
rivate *i915,
>  	return chv_calc_dpll_params(i915->dpll.ref_clks.nssc, &clock);
>  }
>=20=20
> -static bool bxt_get_dpll(struct intel_atomic_state *state,
> -			 struct intel_crtc *crtc,
> -			 struct intel_encoder *encoder)
> +static int bxt_get_dpll(struct intel_atomic_state *state,
> +			struct intel_crtc *crtc,
> +			struct intel_encoder *encoder)
>  {
>  	struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	struct intel_shared_dpll *pll;
>  	enum intel_dpll_id id;
> +	int ret;
>=20=20
> -	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
> -	    !bxt_ddi_hdmi_set_dpll_hw_state(crtc_state))
> -		return false;
> -
> -	if (intel_crtc_has_dp_encoder(crtc_state) &&
> -	    !bxt_ddi_dp_set_dpll_hw_state(crtc_state))
> -		return false;
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> +		ret =3D bxt_ddi_hdmi_set_dpll_hw_state(crtc_state);
> +	else if (intel_crtc_has_dp_encoder(crtc_state))
> +		ret =3D bxt_ddi_dp_set_dpll_hw_state(crtc_state);
> +	else
> +		ret =3D -EINVAL;
> +	if (ret)
> +		return ret;
>=20=20
>  	/* 1:1 mapping between ports and PLLs */
>  	id =3D (enum intel_dpll_id) encoder->port;
> @@ -2276,7 +2268,7 @@ static bool bxt_get_dpll(struct intel_atomic_state =
*state,
>=20=20
>  	crtc_state->shared_dpll =3D pll;
>=20=20
> -	return true;
> +	return 0;
>  }
>=20=20
>  static void bxt_update_dpll_ref_clks(struct drm_i915_private *i915)
> @@ -2513,8 +2505,8 @@ static const struct skl_wrpll_params tgl_tbt_pll_24=
MHz_values =3D {
>  	/* the following params are unused */
>  };
>=20=20
> -static bool icl_calc_dp_combo_pll(struct intel_crtc_state *crtc_state,
> -				  struct skl_wrpll_params *pll_params)
> +static int icl_calc_dp_combo_pll(struct intel_crtc_state *crtc_state,
> +				 struct skl_wrpll_params *pll_params)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
>  	const struct icl_combo_pll_params *params =3D
> @@ -2527,16 +2519,16 @@ static bool icl_calc_dp_combo_pll(struct intel_cr=
tc_state *crtc_state,
>  	for (i =3D 0; i < ARRAY_SIZE(icl_dp_combo_pll_24MHz_values); i++) {
>  		if (clock =3D=3D params[i].clock) {
>  			*pll_params =3D params[i].wrpll;
> -			return true;
> +			return 0;
>  		}
>  	}
>=20=20
>  	MISSING_CASE(clock);
> -	return false;
> +	return -EINVAL;
>  }
>=20=20
> -static bool icl_calc_tbt_pll(struct intel_crtc_state *crtc_state,
> -			     struct skl_wrpll_params *pll_params)
> +static int icl_calc_tbt_pll(struct intel_crtc_state *crtc_state,
> +			    struct skl_wrpll_params *pll_params)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
>=20=20
> @@ -2568,7 +2560,7 @@ static bool icl_calc_tbt_pll(struct intel_crtc_stat=
e *crtc_state,
>  		}
>  	}
>=20=20
> -	return true;
> +	return 0;
>  }
>=20=20
>  static int icl_ddi_tbt_pll_get_freq(struct drm_i915_private *i915,
> @@ -2598,7 +2590,7 @@ static int icl_wrpll_ref_clock(struct drm_i915_priv=
ate *i915)
>  	return ref_clock;
>  }
>=20=20
> -static bool
> +static int
>  icl_calc_wrpll(struct intel_crtc_state *crtc_state,
>  	       struct skl_wrpll_params *wrpll_params)
>  {
> @@ -2633,13 +2625,13 @@ icl_calc_wrpll(struct intel_crtc_state *crtc_stat=
e,
>  	}
>=20=20
>  	if (best_div =3D=3D 0)
> -		return false;
> +		return -EINVAL;
>=20=20
>  	icl_wrpll_get_multipliers(best_div, &pdiv, &qdiv, &kdiv);
>  	icl_wrpll_params_populate(wrpll_params, best_dco, ref_clock,
>  				  pdiv, qdiv, kdiv);
>=20=20
> -	return true;
> +	return 0;
>  }
>=20=20
>  static int icl_ddi_combo_pll_get_freq(struct drm_i915_private *i915,
> @@ -2731,10 +2723,10 @@ static void icl_calc_dpll_state(struct drm_i915_p=
rivate *i915,
>  		pll_state->div0 =3D TGL_DPLL0_DIV0_AFC_STARTUP(i915->vbt.override_afc_=
startup_val);
>  }
>=20=20
> -static bool icl_mg_pll_find_divisors(int clock_khz, bool is_dp, bool use=
_ssc,
> -				     u32 *target_dco_khz,
> -				     struct intel_dpll_hw_state *state,
> -				     bool is_dkl)
> +static int icl_mg_pll_find_divisors(int clock_khz, bool is_dp, bool use_=
ssc,
> +				    u32 *target_dco_khz,
> +				    struct intel_dpll_hw_state *state,
> +				    bool is_dkl)
>  {
>  	static const u8 div1_vals[] =3D { 7, 5, 3, 2 };
>  	u32 dco_min_freq, dco_max_freq;
> @@ -2800,19 +2792,19 @@ static bool icl_mg_pll_find_divisors(int clock_kh=
z, bool is_dp, bool use_ssc,
>  				hsdiv |
>  				MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO(div2);
>=20=20
> -			return true;
> +			return 0;
>  		}
>  	}
>=20=20
> -	return false;
> +	return -EINVAL;
>  }
>=20=20
>  /*
>   * The specification for this function uses real numbers, so the math ha=
d to be
>   * adapted to integer-only calculation, that's why it looks so different.
>   */
> -static bool icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
> -				  struct intel_dpll_hw_state *pll_state)
> +static int icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
> +				 struct intel_dpll_hw_state *pll_state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
>  	int refclk_khz =3D dev_priv->dpll.ref_clks.nssc;
> @@ -2826,14 +2818,16 @@ static bool icl_calc_mg_pll_state(struct intel_cr=
tc_state *crtc_state,
>  	bool use_ssc =3D false;
>  	bool is_dp =3D !intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI);
>  	bool is_dkl =3D DISPLAY_VER(dev_priv) >=3D 12;
> +	int ret;
>=20=20
>  	memset(pll_state, 0, sizeof(*pll_state));
>=20=20
> -	if (!icl_mg_pll_find_divisors(clock, is_dp, use_ssc, &dco_khz,
> -				      pll_state, is_dkl)) {
> +	ret =3D icl_mg_pll_find_divisors(clock, is_dp, use_ssc, &dco_khz,
> +				       pll_state, is_dkl);
> +	if (ret) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Failed to find divisors for clock %d\n", clock);
> -		return false;
> +		return ret;
>  	}
>=20=20
>  	m1div =3D 2;
> @@ -2848,7 +2842,7 @@ static bool icl_calc_mg_pll_state(struct intel_crtc=
_state *crtc_state,
>  			drm_dbg_kms(&dev_priv->drm,
>  				    "Failed to find mdiv for clock %d\n",
>  				    clock);
> -			return false;
> +			return -EINVAL;
>  		}
>  	}
>  	m2div_rem =3D dco_khz % (refclk_khz * m1div);
> @@ -2875,7 +2869,7 @@ static bool icl_calc_mg_pll_state(struct intel_crtc=
_state *crtc_state,
>  		break;
>  	default:
>  		MISSING_CASE(refclk_khz);
> -		return false;
> +		return -EINVAL;
>  	}
>=20=20
>  	/*
> @@ -3018,7 +3012,7 @@ static bool icl_calc_mg_pll_state(struct intel_crtc=
_state *crtc_state,
>  		pll_state->mg_pll_bias &=3D pll_state->mg_pll_bias_mask;
>  	}
>=20=20
> -	return true;
> +	return 0;
>  }
>=20=20
>  static int icl_ddi_mg_pll_get_freq(struct drm_i915_private *dev_priv,
> @@ -3140,9 +3134,9 @@ static u32 intel_get_hti_plls(struct drm_i915_priva=
te *i915)
>  	return REG_FIELD_GET(HDPORT_DPLL_USED_MASK, i915->hti_state);
>  }
>=20=20
> -static bool icl_get_combo_phy_dpll(struct intel_atomic_state *state,
> -				   struct intel_crtc *crtc,
> -				   struct intel_encoder *encoder)
> +static int icl_get_combo_phy_dpll(struct intel_atomic_state *state,
> +				  struct intel_crtc *crtc,
> +				  struct intel_encoder *encoder)
>  {
>  	struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
> @@ -3160,11 +3154,10 @@ static bool icl_get_combo_phy_dpll(struct intel_a=
tomic_state *state,
>  	else
>  		ret =3D icl_calc_dp_combo_pll(crtc_state, &pll_params);
>=20=20
> -	if (!ret) {
> +	if (ret) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Could not calculate combo PHY PLL state.\n");
> -
> -		return false;
> +		return ret;
>  	}
>=20=20
>  	icl_calc_dpll_state(dev_priv, &pll_params, &port_dpll->hw_state);
> @@ -3209,7 +3202,7 @@ static bool icl_get_combo_phy_dpll(struct intel_ato=
mic_state *state,
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "No combo PHY PLL found for [ENCODER:%d:%s]\n",
>  			    encoder->base.base.id, encoder->base.name);
> -		return false;
> +		return -EINVAL;
>  	}
>=20=20
>  	intel_reference_shared_dpll(state, crtc,
> @@ -3217,12 +3210,12 @@ static bool icl_get_combo_phy_dpll(struct intel_a=
tomic_state *state,
>=20=20
>  	icl_update_active_dpll(state, crtc, encoder);
>=20=20
> -	return true;
> +	return 0;
>  }
>=20=20
> -static bool icl_get_tc_phy_dplls(struct intel_atomic_state *state,
> -				 struct intel_crtc *crtc,
> -				 struct intel_encoder *encoder)
> +static int icl_get_tc_phy_dplls(struct intel_atomic_state *state,
> +				struct intel_crtc *crtc,
> +				struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	struct intel_crtc_state *crtc_state =3D
> @@ -3230,12 +3223,14 @@ static bool icl_get_tc_phy_dplls(struct intel_ato=
mic_state *state,
>  	struct skl_wrpll_params pll_params =3D { };
>  	struct icl_port_dpll *port_dpll;
>  	enum intel_dpll_id dpll_id;
> +	int ret;
>=20=20
>  	port_dpll =3D &crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
> -	if (!icl_calc_tbt_pll(crtc_state, &pll_params)) {
> +	ret =3D icl_calc_tbt_pll(crtc_state, &pll_params);
> +	if (ret) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Could not calculate TBT PLL state.\n");
> -		return false;
> +		return ret;
>  	}
>=20=20
>  	icl_calc_dpll_state(dev_priv, &pll_params, &port_dpll->hw_state);
> @@ -3245,14 +3240,15 @@ static bool icl_get_tc_phy_dplls(struct intel_ato=
mic_state *state,
>  						BIT(DPLL_ID_ICL_TBTPLL));
>  	if (!port_dpll->pll) {
>  		drm_dbg_kms(&dev_priv->drm, "No TBT-ALT PLL found\n");
> -		return false;
> +		return -EINVAL;
>  	}
>  	intel_reference_shared_dpll(state, crtc,
>  				    port_dpll->pll, &port_dpll->hw_state);
>=20=20
>=20=20
>  	port_dpll =3D &crtc_state->icl_port_dplls[ICL_PORT_DPLL_MG_PHY];
> -	if (!icl_calc_mg_pll_state(crtc_state, &port_dpll->hw_state)) {
> +	ret =3D icl_calc_mg_pll_state(crtc_state, &port_dpll->hw_state);
> +	if (ret) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Could not calculate MG PHY PLL state.\n");
>  		goto err_unreference_tbt_pll;
> @@ -3264,6 +3260,7 @@ static bool icl_get_tc_phy_dplls(struct intel_atomi=
c_state *state,
>  						&port_dpll->hw_state,
>  						BIT(dpll_id));
>  	if (!port_dpll->pll) {
> +		ret =3D -EINVAL;
>  		drm_dbg_kms(&dev_priv->drm, "No MG PHY PLL found\n");
>  		goto err_unreference_tbt_pll;
>  	}
> @@ -3272,18 +3269,18 @@ static bool icl_get_tc_phy_dplls(struct intel_ato=
mic_state *state,
>=20=20
>  	icl_update_active_dpll(state, crtc, encoder);
>=20=20
> -	return true;
> +	return 0;
>=20=20
>  err_unreference_tbt_pll:
>  	port_dpll =3D &crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
>  	intel_unreference_shared_dpll(state, crtc, port_dpll->pll);
>=20=20
> -	return false;
> +	return ret;
>  }
>=20=20
> -static bool icl_get_dplls(struct intel_atomic_state *state,
> -			  struct intel_crtc *crtc,
> -			  struct intel_encoder *encoder)
> +static int icl_get_dplls(struct intel_atomic_state *state,
> +			 struct intel_crtc *crtc,
> +			 struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
> @@ -3295,7 +3292,7 @@ static bool icl_get_dplls(struct intel_atomic_state=
 *state,
>=20=20
>  	MISSING_CASE(phy);
>=20=20
> -	return false;
> +	return -EINVAL;
>  }
>=20=20
>  static void icl_put_dplls(struct intel_atomic_state *state,
> @@ -4154,17 +4151,18 @@ void intel_shared_dpll_init(struct drm_device *de=
v)
>   * intel_release_shared_dplls().
>   *
>   * Returns:
> - * True if all required DPLLs were successfully reserved.
> + * 0 if all required DPLLs were successfully reserved,
> + * negative error code otherwise.
>   */
> -bool intel_reserve_shared_dplls(struct intel_atomic_state *state,
> -				struct intel_crtc *crtc,
> -				struct intel_encoder *encoder)
> +int intel_reserve_shared_dplls(struct intel_atomic_state *state,
> +			       struct intel_crtc *crtc,
> +			       struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	const struct intel_dpll_mgr *dpll_mgr =3D dev_priv->dpll.mgr;
>=20=20
>  	if (drm_WARN_ON(&dev_priv->drm, !dpll_mgr))
> -		return false;
> +		return -EINVAL;
>=20=20
>  	return dpll_mgr->get_dplls(state, crtc, encoder);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.h
> index ba2fdfce1579..499a43e39123 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -337,9 +337,9 @@ void assert_shared_dpll(struct drm_i915_private *dev_=
priv,
>  			bool state);
>  #define assert_shared_dpll_enabled(d, p) assert_shared_dpll(d, p, true)
>  #define assert_shared_dpll_disabled(d, p) assert_shared_dpll(d, p, false)
> -bool intel_reserve_shared_dplls(struct intel_atomic_state *state,
> -				struct intel_crtc *crtc,
> -				struct intel_encoder *encoder);
> +int intel_reserve_shared_dplls(struct intel_atomic_state *state,
> +			       struct intel_crtc *crtc,
> +			       struct intel_encoder *encoder);
>  void intel_release_shared_dplls(struct intel_atomic_state *state,
>  				struct intel_crtc *crtc);
>  void icl_set_active_port_dpll(struct intel_crtc_state *crtc_state,

--=20
Jani Nikula, Intel Open Source Graphics Center
