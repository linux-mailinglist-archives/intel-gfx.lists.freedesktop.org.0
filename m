Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3B55283E7
	for <lists+intel-gfx@lfdr.de>; Mon, 16 May 2022 14:11:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EACF810E591;
	Mon, 16 May 2022 12:11:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BC9810E591
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 May 2022 12:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652703113; x=1684239113;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=7Glc2A3D/iFZW/eAU8kHIPzP2sEwXvRmKhAF3OL2QPk=;
 b=YMIpj/FsQsvarpL4GksFpgk3/SYt+pmdQQspa8Rya5WkA0b5dIeTR38S
 I9J4wfMhngs2N1rCaSl/L1g1FZ7kac2NZ7CAoQgkUyXHvLw8vPXrrJWar
 BBZvcDlwz7vZ/gNBIu2Y5eqKWzeqNCgy9kba1NM1tTjprDWTTo5Kp13DQ
 0SrGyR4OJDtr74j0e9f7JlzeIxpPfzu9BR2asrvW02bYlN48c4xX5Vvo4
 eG/lYYeYCIJL5xKwpJvNbPSzAZO4d1tq08NdsGoQoqmqE00aMvgyszAcU
 b3TNCzjdb/3k/FwwD0jqpvnPUPSqsFaDV98YXbxfXazJpG9ykkGgulBDp Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10348"; a="270762943"
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="270762943"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 05:11:51 -0700
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="544329259"
Received: from akuriata-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.145.127])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 05:11:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220503182242.18797-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
 <20220503182242.18797-2-ville.syrjala@linux.intel.com>
Date: Mon, 16 May 2022 15:11:46 +0300
Message-ID: <87czgdhe2l.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 01/26] drm/i915: Split shared dpll
 .get_dplls() into compute and get phases
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

On Tue, 03 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Split the DPLL state computation into a separate function
> from the current .get_dplls() which currently serves a dual duty
> by also reserving the shared DPLLs.
>
> v2: s/false/-EINVAL/ (Jani)
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Sorry for the procrastination, for some reason this was a bit difficult
to follow.

> ---
>  drivers/gpu/drm/i915/display/intel_dpll.c     |  14 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 291 +++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   3 +
>  3 files changed, 235 insertions(+), 73 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/=
i915/display/intel_dpll.c
> index 6eef0b8a91eb..c19fb075ee6e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -933,7 +933,17 @@ static void i8xx_compute_dpll(struct intel_crtc_stat=
e *crtc_state,
>  static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
>  				  struct intel_crtc *crtc)
>  {
> -	return 0;
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct intel_encoder *encoder =3D
> +		intel_get_crtc_new_encoder(state, crtc_state);
> +
> +	if (DISPLAY_VER(dev_priv) < 11 &&
> +	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
> +		return 0;
> +
> +	return intel_compute_shared_dplls(state, crtc, encoder);
>  }
>=20=20
>  static int hsw_crtc_get_shared_dpll(struct intel_atomic_state *state,
> @@ -1134,7 +1144,7 @@ static int ilk_crtc_compute_clock(struct intel_atom=
ic_state *state,
>  	ilk_compute_dpll(crtc_state, &crtc_state->dpll,
>  			 &crtc_state->dpll);
>=20=20
> -	return 0;
> +	return intel_compute_shared_dplls(state, crtc, NULL);
>  }
>=20=20
>  static int ilk_crtc_get_shared_dpll(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index 22f55574a35c..4c5c3439b745 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -90,6 +90,9 @@ struct intel_shared_dpll_funcs {
>  struct intel_dpll_mgr {
>  	const struct dpll_info *dpll_info;
>=20=20
> +	int (*compute_dplls)(struct intel_atomic_state *state,
> +			     struct intel_crtc *crtc,
> +			     struct intel_encoder *encoder);
>  	int (*get_dplls)(struct intel_atomic_state *state,
>  			 struct intel_crtc *crtc,
>  			 struct intel_encoder *encoder);
> @@ -514,6 +517,13 @@ static void ibx_pch_dpll_disable(struct drm_i915_pri=
vate *dev_priv,
>  	udelay(200);
>  }
>=20=20
> +static int ibx_compute_dpll(struct intel_atomic_state *state,
> +			    struct intel_crtc *crtc,
> +			    struct intel_encoder *encoder)
> +{
> +	return 0;
> +}
> +
>  static int ibx_get_dpll(struct intel_atomic_state *state,
>  			struct intel_crtc *crtc,
>  			struct intel_encoder *encoder)
> @@ -578,6 +588,7 @@ static const struct dpll_info pch_plls[] =3D {
>=20=20
>  static const struct intel_dpll_mgr pch_pll_mgr =3D {
>  	.dpll_info =3D pch_plls,
> +	.compute_dplls =3D ibx_compute_dpll,
>  	.get_dplls =3D ibx_get_dpll,
>  	.put_dplls =3D intel_put_dpll,
>  	.dump_hw_state =3D ibx_dump_hw_state,
> @@ -894,33 +905,35 @@ hsw_ddi_calculate_wrpll(int clock /* in Hz */,
>  	*r2_out =3D best.r2;
>  }
>=20=20
> -static struct intel_shared_dpll *
> -hsw_ddi_wrpll_get_dpll(struct intel_atomic_state *state,
> -		       struct intel_crtc *crtc)
> +static int
> +hsw_ddi_wrpll_compute_dpll(struct intel_atomic_state *state,
> +			   struct intel_crtc *crtc)
>  {
>  	struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
> -	struct intel_shared_dpll *pll;
> -	u32 val;
>  	unsigned int p, n2, r2;
>=20=20
>  	hsw_ddi_calculate_wrpll(crtc_state->port_clock * 1000, &r2, &n2, &p);
>=20=20
> -	val =3D WRPLL_PLL_ENABLE | WRPLL_REF_LCPLL |
> -	      WRPLL_DIVIDER_REFERENCE(r2) | WRPLL_DIVIDER_FEEDBACK(n2) |
> -	      WRPLL_DIVIDER_POST(p);
> +	crtc_state->dpll_hw_state.wrpll =3D
> +		WRPLL_PLL_ENABLE | WRPLL_REF_LCPLL |
> +		WRPLL_DIVIDER_REFERENCE(r2) | WRPLL_DIVIDER_FEEDBACK(n2) |
> +		WRPLL_DIVIDER_POST(p);
>=20=20
> -	crtc_state->dpll_hw_state.wrpll =3D val;
> +	return 0;
> +}
>=20=20
> -	pll =3D intel_find_shared_dpll(state, crtc,
> -				     &crtc_state->dpll_hw_state,
> -				     BIT(DPLL_ID_WRPLL2) |
> -				     BIT(DPLL_ID_WRPLL1));
> +static struct intel_shared_dpll *
> +hsw_ddi_wrpll_get_dpll(struct intel_atomic_state *state,
> +		       struct intel_crtc *crtc)
> +{
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
>=20=20
> -	if (!pll)
> -		return NULL;
> -
> -	return pll;
> +	return intel_find_shared_dpll(state, crtc,
> +				      &crtc_state->dpll_hw_state,
> +				      BIT(DPLL_ID_WRPLL2) |
> +				      BIT(DPLL_ID_WRPLL1));
>  }
>=20=20
>  static int hsw_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
> @@ -963,6 +976,24 @@ static int hsw_ddi_wrpll_get_freq(struct drm_i915_pr=
ivate *dev_priv,
>  	return (refclk * n / 10) / (p * r) * 2;
>  }
>=20=20
> +static int
> +hsw_ddi_lcpll_compute_dpll(struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> +	int clock =3D crtc_state->port_clock;
> +
> +	switch (clock / 2) {
> +	case 81000:
> +	case 135000:
> +	case 270000:
> +		return 0;
> +	default:
> +		drm_dbg_kms(&dev_priv->drm, "Invalid clock for DP: %d\n",
> +			    clock);
> +		return -EINVAL;
> +	}
> +}
> +
>  static struct intel_shared_dpll *
>  hsw_ddi_lcpll_get_dpll(struct intel_crtc_state *crtc_state)
>  {
> @@ -982,8 +1013,7 @@ hsw_ddi_lcpll_get_dpll(struct intel_crtc_state *crtc=
_state)
>  		pll_id =3D DPLL_ID_LCPLL_2700;
>  		break;
>  	default:
> -		drm_dbg_kms(&dev_priv->drm, "Invalid clock for DP: %d\n",
> -			    clock);
> +		MISSING_CASE(clock / 2);
>  		return NULL;
>  	}
>=20=20
> @@ -1019,6 +1049,22 @@ static int hsw_ddi_lcpll_get_freq(struct drm_i915_=
private *i915,
>  	return link_clock * 2;
>  }
>=20=20
> +static int
> +hsw_ddi_spll_compute_dpll(struct intel_atomic_state *state,
> +			  struct intel_crtc *crtc)
> +{
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +
> +	if (drm_WARN_ON(crtc->base.dev, crtc_state->port_clock / 2 !=3D 135000))
> +		return -EINVAL;
> +
> +	crtc_state->dpll_hw_state.spll =3D
> +		SPLL_PLL_ENABLE | SPLL_FREQ_1350MHz | SPLL_REF_MUXED_SSC;
> +
> +	return 0;
> +}
> +
>  static struct intel_shared_dpll *
>  hsw_ddi_spll_get_dpll(struct intel_atomic_state *state,
>  		      struct intel_crtc *crtc)
> @@ -1026,12 +1072,6 @@ hsw_ddi_spll_get_dpll(struct intel_atomic_state *s=
tate,
>  	struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
>=20=20
> -	if (drm_WARN_ON(crtc->base.dev, crtc_state->port_clock / 2 !=3D 135000))
> -		return NULL;
> -
> -	crtc_state->dpll_hw_state.spll =3D SPLL_PLL_ENABLE | SPLL_FREQ_1350MHz |
> -					 SPLL_REF_MUXED_SSC;
> -
>  	return intel_find_shared_dpll(state, crtc, &crtc_state->dpll_hw_state,
>  				      BIT(DPLL_ID_SPLL));
>  }
> @@ -1060,6 +1100,23 @@ static int hsw_ddi_spll_get_freq(struct drm_i915_p=
rivate *i915,
>  	return link_clock * 2;
>  }
>=20=20
> +static int hsw_compute_dpll(struct intel_atomic_state *state,
> +			    struct intel_crtc *crtc,
> +			    struct intel_encoder *encoder)
> +{
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> +		return hsw_ddi_wrpll_compute_dpll(state, crtc);
> +	else if (intel_crtc_has_dp_encoder(crtc_state))
> +		return hsw_ddi_lcpll_compute_dpll(crtc_state);
> +	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_ANALOG))
> +		return hsw_ddi_spll_compute_dpll(state, crtc);
> +	else
> +		return -EINVAL;
> +}
> +
>  static int hsw_get_dpll(struct intel_atomic_state *state,
>  			struct intel_crtc *crtc,
>  			struct intel_encoder *encoder)
> @@ -1153,6 +1210,7 @@ static const struct dpll_info hsw_plls[] =3D {
>=20=20
>  static const struct intel_dpll_mgr hsw_pll_mgr =3D {
>  	.dpll_info =3D hsw_plls,
> +	.compute_dplls =3D hsw_compute_dpll,
>  	.get_dplls =3D hsw_get_dpll,
>  	.put_dplls =3D intel_put_dpll,
>  	.update_ref_clks =3D hsw_update_dpll_ref_clks,
> @@ -1741,6 +1799,21 @@ static int skl_ddi_lcpll_get_freq(struct drm_i915_=
private *i915,
>  	return link_clock * 2;
>  }
>=20=20
> +static int skl_compute_dpll(struct intel_atomic_state *state,
> +			    struct intel_crtc *crtc,
> +			    struct intel_encoder *encoder)
> +{
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> +		return skl_ddi_hdmi_pll_dividers(crtc_state);
> +	else if (intel_crtc_has_dp_encoder(crtc_state))
> +		return skl_ddi_dp_set_dpll_hw_state(crtc_state);
> +	else
> +		return -EINVAL;
> +}
> +
>  static int skl_get_dpll(struct intel_atomic_state *state,
>  			struct intel_crtc *crtc,
>  			struct intel_encoder *encoder)
> @@ -1748,16 +1821,6 @@ static int skl_get_dpll(struct intel_atomic_state =
*state,
>  	struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct intel_shared_dpll *pll;
> -	int ret;
> -
> -	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> -		ret =3D skl_ddi_hdmi_pll_dividers(crtc_state);
> -	else if (intel_crtc_has_dp_encoder(crtc_state))
> -		ret =3D skl_ddi_dp_set_dpll_hw_state(crtc_state);
> -	else
> -		ret =3D -EINVAL;
> -	if (ret)
> -		return ret;
>=20=20
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
>  		pll =3D intel_find_shared_dpll(state, crtc,
> @@ -1834,6 +1897,7 @@ static const struct dpll_info skl_plls[] =3D {
>=20=20
>  static const struct intel_dpll_mgr skl_pll_mgr =3D {
>  	.dpll_info =3D skl_plls,
> +	.compute_dplls =3D skl_compute_dpll,
>  	.get_dplls =3D skl_get_dpll,
>  	.put_dplls =3D intel_put_dpll,
>  	.update_ref_clks =3D skl_update_dpll_ref_clks,
> @@ -2225,6 +2289,21 @@ static int bxt_ddi_pll_get_freq(struct drm_i915_pr=
ivate *i915,
>  	return chv_calc_dpll_params(i915->dpll.ref_clks.nssc, &clock);
>  }
>=20=20
> +static int bxt_compute_dpll(struct intel_atomic_state *state,
> +			    struct intel_crtc *crtc,
> +			    struct intel_encoder *encoder)
> +{
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> +		return bxt_ddi_hdmi_set_dpll_hw_state(crtc_state);
> +	else if (intel_crtc_has_dp_encoder(crtc_state))
> +		return bxt_ddi_dp_set_dpll_hw_state(crtc_state);
> +	else
> +		return -EINVAL;
> +}
> +
>  static int bxt_get_dpll(struct intel_atomic_state *state,
>  			struct intel_crtc *crtc,
>  			struct intel_encoder *encoder)
> @@ -2234,16 +2313,6 @@ static int bxt_get_dpll(struct intel_atomic_state =
*state,
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	struct intel_shared_dpll *pll;
>  	enum intel_dpll_id id;
> -	int ret;
> -
> -	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> -		ret =3D bxt_ddi_hdmi_set_dpll_hw_state(crtc_state);
> -	else if (intel_crtc_has_dp_encoder(crtc_state))
> -		ret =3D bxt_ddi_dp_set_dpll_hw_state(crtc_state);
> -	else
> -		ret =3D -EINVAL;
> -	if (ret)
> -		return ret;
>=20=20
>  	/* 1:1 mapping between ports and PLLs */
>  	id =3D (enum intel_dpll_id) encoder->port;
> @@ -2302,6 +2371,7 @@ static const struct dpll_info bxt_plls[] =3D {
>=20=20
>  static const struct intel_dpll_mgr bxt_pll_mgr =3D {
>  	.dpll_info =3D bxt_plls,
> +	.compute_dplls =3D bxt_compute_dpll,
>  	.get_dplls =3D bxt_get_dpll,
>  	.put_dplls =3D intel_put_dpll,
>  	.update_ref_clks =3D bxt_update_dpll_ref_clks,
> @@ -3119,19 +3189,16 @@ static u32 intel_get_hti_plls(struct drm_i915_pri=
vate *i915)
>  	return REG_FIELD_GET(HDPORT_DPLL_USED_MASK, i915->hti_state);
>  }
>=20=20
> -static int icl_get_combo_phy_dpll(struct intel_atomic_state *state,
> -				  struct intel_crtc *crtc,
> -				  struct intel_encoder *encoder)
> +static int icl_compute_combo_phy_dpll(struct intel_atomic_state *state,
> +				      struct intel_crtc *crtc)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
> -	struct skl_wrpll_params pll_params =3D { };
>  	struct icl_port_dpll *port_dpll =3D
>  		&crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	enum port port =3D encoder->port;
> -	unsigned long dpll_mask;
> -	int ret;
> +	struct skl_wrpll_params pll_params =3D {};
> +	bool ret;
>=20=20
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) ||
>  	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
> @@ -3147,6 +3214,21 @@ static int icl_get_combo_phy_dpll(struct intel_ato=
mic_state *state,
>=20=20
>  	icl_calc_dpll_state(dev_priv, &pll_params, &port_dpll->hw_state);
>=20=20
> +	return 0;
> +}
> +
> +static int icl_get_combo_phy_dpll(struct intel_atomic_state *state,
> +				  struct intel_crtc *crtc,
> +				  struct intel_encoder *encoder)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct icl_port_dpll *port_dpll =3D
> +		&crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
> +	enum port port =3D encoder->port;
> +	unsigned long dpll_mask;
> +
>  	if (IS_ALDERLAKE_S(dev_priv)) {
>  		dpll_mask =3D
>  			BIT(DPLL_ID_DG1_DPLL3) |
> @@ -3198,6 +3280,38 @@ static int icl_get_combo_phy_dpll(struct intel_ato=
mic_state *state,
>  	return 0;
>  }
>=20=20
> +static int icl_compute_tc_phy_dplls(struct intel_atomic_state *state,
> +				    struct intel_crtc *crtc)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct icl_port_dpll *port_dpll =3D
> +		&crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
> +	struct skl_wrpll_params pll_params =3D {};
> +	int ret;
> +
> +	port_dpll =3D &crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
> +	ret =3D icl_calc_tbt_pll(crtc_state, &pll_params);
> +	if (ret) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Could not calculate TBT PLL state.\n");
> +		return ret;
> +	}
> +
> +	icl_calc_dpll_state(dev_priv, &pll_params, &port_dpll->hw_state);
> +
> +	port_dpll =3D &crtc_state->icl_port_dplls[ICL_PORT_DPLL_MG_PHY];
> +	ret =3D icl_calc_mg_pll_state(crtc_state, &port_dpll->hw_state);
> +	if (ret) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Could not calculate MG PHY PLL state.\n");
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
>  static int icl_get_tc_phy_dplls(struct intel_atomic_state *state,
>  				struct intel_crtc *crtc,
>  				struct intel_encoder *encoder)
> @@ -3205,21 +3319,12 @@ static int icl_get_tc_phy_dplls(struct intel_atom=
ic_state *state,
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
> -	struct skl_wrpll_params pll_params =3D { };
> -	struct icl_port_dpll *port_dpll;
> +	struct icl_port_dpll *port_dpll =3D
> +		&crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
>  	enum intel_dpll_id dpll_id;
>  	int ret;
>=20=20
>  	port_dpll =3D &crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
> -	ret =3D icl_calc_tbt_pll(crtc_state, &pll_params);
> -	if (ret) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "Could not calculate TBT PLL state.\n");
> -		return ret;
> -	}
> -
> -	icl_calc_dpll_state(dev_priv, &pll_params, &port_dpll->hw_state);
> -
>  	port_dpll->pll =3D intel_find_shared_dpll(state, crtc,
>  						&port_dpll->hw_state,
>  						BIT(DPLL_ID_ICL_TBTPLL));
> @@ -3232,13 +3337,6 @@ static int icl_get_tc_phy_dplls(struct intel_atomi=
c_state *state,
>=20=20
>=20=20
>  	port_dpll =3D &crtc_state->icl_port_dplls[ICL_PORT_DPLL_MG_PHY];
> -	ret =3D icl_calc_mg_pll_state(crtc_state, &port_dpll->hw_state);
> -	if (ret) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "Could not calculate MG PHY PLL state.\n");
> -		goto err_unreference_tbt_pll;
> -	}
> -
>  	dpll_id =3D icl_tc_port_to_pll_id(intel_port_to_tc(dev_priv,
>  							 encoder->port));
>  	port_dpll->pll =3D intel_find_shared_dpll(state, crtc,
> @@ -3263,6 +3361,23 @@ static int icl_get_tc_phy_dplls(struct intel_atomi=
c_state *state,
>  	return ret;
>  }
>=20=20
> +static int icl_compute_dplls(struct intel_atomic_state *state,
> +			     struct intel_crtc *crtc,
> +			     struct intel_encoder *encoder)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
> +
> +	if (intel_phy_is_combo(dev_priv, phy))
> +		return icl_compute_combo_phy_dpll(state, crtc);
> +	else if (intel_phy_is_tc(dev_priv, phy))
> +		return icl_compute_tc_phy_dplls(state, crtc);
> +
> +	MISSING_CASE(phy);
> +
> +	return 0;
> +}
> +
>  static int icl_get_dplls(struct intel_atomic_state *state,
>  			 struct intel_crtc *crtc,
>  			 struct intel_encoder *encoder)
> @@ -3943,6 +4058,7 @@ static const struct dpll_info icl_plls[] =3D {
>=20=20
>  static const struct intel_dpll_mgr icl_pll_mgr =3D {
>  	.dpll_info =3D icl_plls,
> +	.compute_dplls =3D icl_compute_dplls,
>  	.get_dplls =3D icl_get_dplls,
>  	.put_dplls =3D icl_put_dplls,
>  	.update_active_dpll =3D icl_update_active_dpll,
> @@ -3959,6 +4075,7 @@ static const struct dpll_info ehl_plls[] =3D {
>=20=20
>  static const struct intel_dpll_mgr ehl_pll_mgr =3D {
>  	.dpll_info =3D ehl_plls,
> +	.compute_dplls =3D icl_compute_dplls,
>  	.get_dplls =3D icl_get_dplls,
>  	.put_dplls =3D icl_put_dplls,
>  	.update_ref_clks =3D icl_update_dpll_ref_clks,
> @@ -3987,6 +4104,7 @@ static const struct dpll_info tgl_plls[] =3D {
>=20=20
>  static const struct intel_dpll_mgr tgl_pll_mgr =3D {
>  	.dpll_info =3D tgl_plls,
> +	.compute_dplls =3D icl_compute_dplls,
>  	.get_dplls =3D icl_get_dplls,
>  	.put_dplls =3D icl_put_dplls,
>  	.update_active_dpll =3D icl_update_active_dpll,
> @@ -4003,6 +4121,7 @@ static const struct dpll_info rkl_plls[] =3D {
>=20=20
>  static const struct intel_dpll_mgr rkl_pll_mgr =3D {
>  	.dpll_info =3D rkl_plls,
> +	.compute_dplls =3D icl_compute_dplls,
>  	.get_dplls =3D icl_get_dplls,
>  	.put_dplls =3D icl_put_dplls,
>  	.update_ref_clks =3D icl_update_dpll_ref_clks,
> @@ -4019,6 +4138,7 @@ static const struct dpll_info dg1_plls[] =3D {
>=20=20
>  static const struct intel_dpll_mgr dg1_pll_mgr =3D {
>  	.dpll_info =3D dg1_plls,
> +	.compute_dplls =3D icl_compute_dplls,
>  	.get_dplls =3D icl_get_dplls,
>  	.put_dplls =3D icl_put_dplls,
>  	.update_ref_clks =3D icl_update_dpll_ref_clks,
> @@ -4035,6 +4155,7 @@ static const struct dpll_info adls_plls[] =3D {
>=20=20
>  static const struct intel_dpll_mgr adls_pll_mgr =3D {
>  	.dpll_info =3D adls_plls,
> +	.compute_dplls =3D icl_compute_dplls,
>  	.get_dplls =3D icl_get_dplls,
>  	.put_dplls =3D icl_put_dplls,
>  	.update_ref_clks =3D icl_update_dpll_ref_clks,
> @@ -4054,6 +4175,7 @@ static const struct dpll_info adlp_plls[] =3D {
>=20=20
>  static const struct intel_dpll_mgr adlp_pll_mgr =3D {
>  	.dpll_info =3D adlp_plls,
> +	.compute_dplls =3D icl_compute_dplls,
>  	.get_dplls =3D icl_get_dplls,
>  	.put_dplls =3D icl_put_dplls,
>  	.update_active_dpll =3D icl_update_active_dpll,
> @@ -4118,6 +4240,33 @@ void intel_shared_dpll_init(struct drm_i915_privat=
e *dev_priv)
>  	BUG_ON(dev_priv->dpll.num_shared_dpll > I915_NUM_PLLS);
>  }
>=20=20
> +/**
> + * intel_compute_shared_dplls - compute DPLL state CRTC and encoder comb=
ination
> + * @state: atomic state
> + * @crtc: CRTC to compute DPLLs for
> + * @encoder: encoder
> + *
> + * This function computes the DPLL state for the given CRTC and encoder.
> + *
> + * The new configuration in the atomic commit @state is made effective by
> + * calling intel_shared_dpll_swap_state().
> + *
> + * Returns:
> + * 0 on success, negative error code on falure.
> + */
> +int intel_compute_shared_dplls(struct intel_atomic_state *state,
> +			       struct intel_crtc *crtc,
> +			       struct intel_encoder *encoder)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	const struct intel_dpll_mgr *dpll_mgr =3D dev_priv->dpll.mgr;
> +
> +	if (drm_WARN_ON(&dev_priv->drm, !dpll_mgr))
> +		return -EINVAL;
> +
> +	return dpll_mgr->compute_dplls(state, crtc, encoder);
> +}
> +
>  /**
>   * intel_reserve_shared_dplls - reserve DPLLs for CRTC and encoder combi=
nation
>   * @state: atomic state
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.h
> index f7c96a1f13c8..02412bf7625c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -336,6 +336,9 @@ void assert_shared_dpll(struct drm_i915_private *dev_=
priv,
>  			bool state);
>  #define assert_shared_dpll_enabled(d, p) assert_shared_dpll(d, p, true)
>  #define assert_shared_dpll_disabled(d, p) assert_shared_dpll(d, p, false)
> +int intel_compute_shared_dplls(struct intel_atomic_state *state,
> +			       struct intel_crtc *crtc,
> +			       struct intel_encoder *encoder);
>  int intel_reserve_shared_dplls(struct intel_atomic_state *state,
>  			       struct intel_crtc *crtc,
>  			       struct intel_encoder *encoder);

--=20
Jani Nikula, Intel Open Source Graphics Center
