Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B9D533B03
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 12:53:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5269510E6D8;
	Wed, 25 May 2022 10:53:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1D6210EA17
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 May 2022 10:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653476023; x=1685012023;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=IKnMBjq1HE2eqwiHTlknvohX/YvRcVvimKe9RY7S+/w=;
 b=MM+uAOMn2Fi8RHJHFwiIUG4TD+UtyUAeoZvwKAC36CAFJ/BiapOXfDDQ
 rMRnvyTIKles1TEMuvDlm+qHH1ZhuusYLlJAh6bhzJ3/y6yBY8izWkYnD
 Pvcm+IlYNF3ja2mIVGCJejqfeZbZ+u+Qnr4643KaKq7FP1saSr/QCcPlo
 KaVOy+WoKF2K3LhNB9EDuH+fFXQ4GSKjSC12SVkYtZeVqCgJDJVYFl4Sv
 tc6xYw9fRS/F9lQG0AwZcG6f1NSkf4TzK74LNMe/C5MDOMOdN0j83Jv0y
 L91eW+sWVw0FdO5IJv5/3G7PJ0fKiZlBCmUBYRerarQkXU/hJWv+wVZ6I w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10357"; a="273509594"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="273509594"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 03:53:43 -0700
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="573178675"
Received: from mwardyn-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.149.191])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 03:53:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220503182242.18797-13-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
 <20220503182242.18797-13-ville.syrjala@linux.intel.com>
Date: Wed, 25 May 2022 13:53:38 +0300
Message-ID: <87ee0hvq6l.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 12/26] drm/i915: Feed the DPLL output freq
 back into crtc_state
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
> Fill port_clock and hw.adjusted_mode.crtc_clock with the actual
> frequency we're going to be getting from the hardware. This will
> let us accurately compute all derived state that depends on those.

This patch (and to be honest, quite a few of the subsequent ones too)
make my brain hurt. So I can't spot anything obviously wrong here, it's
just that my confidence is low. And that makes me feel dumb. It's either
that, or the existing code base is overly complex. I'm 50-50, could lean
either way.

Anyway.

Why haven't we set .crtc_clock before?

Should we remove the "Set default port clock if not overwritten by the
encoder. Needs to be done afterwards in case the encoder adjusts the
mode." bit in intel_modeset_pipe_config(), and require encoder needs to
do it?

A self-doubting

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crt.c      |  2 +
>  drivers/gpu/drm/i915/display/intel_dpll.c     | 64 ++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 36 ++++++++++-
>  .../gpu/drm/i915/display/intel_pch_refclk.c   |  9 +++
>  .../gpu/drm/i915/display/intel_pch_refclk.h   |  1 +
>  5 files changed, 108 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i=
915/display/intel_crt.c
> index d746c85e7e8c..a225af030ad7 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -445,6 +445,8 @@ static int hsw_crt_compute_config(struct intel_encode=
r *encoder,
>  	/* FDI must always be 2.7 GHz */
>  	pipe_config->port_clock =3D 135000 * 2;
>=20=20
> +	adjusted_mode->crtc_clock =3D lpt_iclkip(pipe_config);
> +
>  	return 0;
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/=
i915/display/intel_dpll.c
> index afd30c6cc34c..4a9d7b6d16cc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -930,6 +930,8 @@ static void i8xx_compute_dpll(struct intel_crtc_state=
 *crtc_state,
>  	crtc_state->dpll_hw_state.dpll =3D dpll;
>  }
>=20=20
> +int intel_crtc_dotclock(const struct intel_crtc_state *crtc_state);
> +
>  static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
>  				  struct intel_crtc *crtc)
>  {
> @@ -938,12 +940,25 @@ static int hsw_crtc_compute_clock(struct intel_atom=
ic_state *state,
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct intel_encoder *encoder =3D
>  		intel_get_crtc_new_encoder(state, crtc_state);
> +	int ret;
>=20=20
>  	if (DISPLAY_VER(dev_priv) < 11 &&
>  	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
>  		return 0;
>=20=20
> -	return intel_compute_shared_dplls(state, crtc, encoder);
> +	ret =3D intel_compute_shared_dplls(state, crtc, encoder);
> +	if (ret)
> +		return ret;
> +
> +	/* FIXME this is a mess */
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
> +		return 0;
> +
> +	/* CRT dotclock is determined via other means */
> +	if (!crtc_state->has_pch_encoder)
> +		crtc_state->hw.adjusted_mode.crtc_clock =3D intel_crtc_dotclock(crtc_s=
tate);
> +
> +	return 0;
>  }
>=20=20
>  static int hsw_crtc_get_shared_dpll(struct intel_atomic_state *state,
> @@ -969,8 +984,15 @@ static int dg2_crtc_compute_clock(struct intel_atomi=
c_state *state,
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct intel_encoder *encoder =3D
>  		intel_get_crtc_new_encoder(state, crtc_state);
> +	int ret;
>=20=20
> -	return intel_mpllb_calc_state(crtc_state, encoder);
> +	ret =3D intel_mpllb_calc_state(crtc_state, encoder);
> +	if (ret)
> +		return ret;
> +
> +	crtc_state->hw.adjusted_mode.crtc_clock =3D intel_crtc_dotclock(crtc_st=
ate);
> +
> +	return 0;
>  }
>=20=20
>  static bool ilk_needs_fb_cb_tune(const struct dpll *dpll, int factor)
> @@ -1096,6 +1118,7 @@ static int ilk_crtc_compute_clock(struct intel_atom=
ic_state *state,
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	const struct intel_limit *limit;
>  	int refclk =3D 120000;
> +	int ret;
>=20=20
>  	/* CPU eDP is the only output that doesn't need a PCH PLL of its own. */
>  	if (!crtc_state->has_pch_encoder)
> @@ -1132,7 +1155,14 @@ static int ilk_crtc_compute_clock(struct intel_ato=
mic_state *state,
>  	ilk_compute_dpll(crtc_state, &crtc_state->dpll,
>  			 &crtc_state->dpll);
>=20=20
> -	return intel_compute_shared_dplls(state, crtc, NULL);
> +	ret =3D intel_compute_shared_dplls(state, crtc, NULL);
> +	if (ret)
> +		return ret;
> +
> +	crtc_state->port_clock =3D crtc_state->dpll.dot;
> +	crtc_state->hw.adjusted_mode.crtc_clock =3D intel_crtc_dotclock(crtc_st=
ate);
> +
> +	return ret;
>  }
>=20=20
>  static int ilk_crtc_get_shared_dpll(struct intel_atomic_state *state,
> @@ -1198,6 +1228,13 @@ static int chv_crtc_compute_clock(struct intel_ato=
mic_state *state,
>=20=20
>  	chv_compute_dpll(crtc_state);
>=20=20
> +	/* FIXME this is a mess */
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
> +		return 0;
> +
> +	crtc_state->port_clock =3D crtc_state->dpll.dot;
> +	crtc_state->hw.adjusted_mode.crtc_clock =3D intel_crtc_dotclock(crtc_st=
ate);
> +
>  	return 0;
>  }
>=20=20
> @@ -1217,6 +1254,13 @@ static int vlv_crtc_compute_clock(struct intel_ato=
mic_state *state,
>=20=20
>  	vlv_compute_dpll(crtc_state);
>=20=20
> +	/* FIXME this is a mess */
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
> +		return 0;
> +
> +	crtc_state->port_clock =3D crtc_state->dpll.dot;
> +	crtc_state->hw.adjusted_mode.crtc_clock =3D intel_crtc_dotclock(crtc_st=
ate);
> +
>  	return 0;
>  }
>=20=20
> @@ -1259,6 +1303,9 @@ static int g4x_crtc_compute_clock(struct intel_atom=
ic_state *state,
>  	i9xx_compute_dpll(crtc_state, &crtc_state->dpll,
>  			  &crtc_state->dpll);
>=20=20
> +	crtc_state->port_clock =3D crtc_state->dpll.dot;
> +	crtc_state->hw.adjusted_mode.crtc_clock =3D intel_crtc_dotclock(crtc_st=
ate);
> +
>  	return 0;
>  }
>=20=20
> @@ -1292,6 +1339,9 @@ static int pnv_crtc_compute_clock(struct intel_atom=
ic_state *state,
>  	i9xx_compute_dpll(crtc_state, &crtc_state->dpll,
>  			  &crtc_state->dpll);
>=20=20
> +	crtc_state->port_clock =3D crtc_state->dpll.dot;
> +	crtc_state->hw.adjusted_mode.crtc_clock =3D intel_crtc_dotclock(crtc_st=
ate);
> +
>  	return 0;
>  }
>=20=20
> @@ -1325,6 +1375,9 @@ static int i9xx_crtc_compute_clock(struct intel_ato=
mic_state *state,
>  	i9xx_compute_dpll(crtc_state, &crtc_state->dpll,
>  			  &crtc_state->dpll);
>=20=20
> +	crtc_state->port_clock =3D crtc_state->dpll.dot;
> +	crtc_state->hw.adjusted_mode.crtc_clock =3D intel_crtc_dotclock(crtc_st=
ate);
> +
>  	return 0;
>  }
>=20=20
> @@ -1360,6 +1413,9 @@ static int i8xx_crtc_compute_clock(struct intel_ato=
mic_state *state,
>  	i8xx_compute_dpll(crtc_state, &crtc_state->dpll,
>  			  &crtc_state->dpll);
>=20=20
> +	crtc_state->port_clock =3D crtc_state->dpll.dot;
> +	crtc_state->hw.adjusted_mode.crtc_clock =3D intel_crtc_dotclock(crtc_st=
ate);
> +
>  	return 0;
>  }
>=20=20
> @@ -1401,6 +1457,8 @@ static const struct intel_dpll_funcs i8xx_dpll_func=
s =3D {
>  	.crtc_compute_clock =3D i8xx_crtc_compute_clock,
>  };
>=20=20
> +int intel_calculate_dotclock(const struct intel_crtc_state *crtc_state);
> +
>  int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
>  				  struct intel_crtc *crtc)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index 64708e874b13..416d78f9e140 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -905,10 +905,15 @@ hsw_ddi_calculate_wrpll(int clock /* in Hz */,
>  	*r2_out =3D best.r2;
>  }
>=20=20
> +static int hsw_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
> +				  const struct intel_shared_dpll *pll,
> +				  const struct intel_dpll_hw_state *pll_state);
> +
>  static int
>  hsw_ddi_wrpll_compute_dpll(struct intel_atomic_state *state,
>  			   struct intel_crtc *crtc)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>  	struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	unsigned int p, n2, r2;
> @@ -920,6 +925,9 @@ hsw_ddi_wrpll_compute_dpll(struct intel_atomic_state =
*state,
>  		WRPLL_DIVIDER_REFERENCE(r2) | WRPLL_DIVIDER_FEEDBACK(n2) |
>  		WRPLL_DIVIDER_POST(p);
>=20=20
> +	crtc_state->port_clock =3D hsw_ddi_wrpll_get_freq(i915, NULL,
> +							&crtc_state->dpll_hw_state);
> +
>  	return 0;
>  }
>=20=20
> @@ -1618,6 +1626,10 @@ skl_ddi_calculate_wrpll(int clock /* in Hz */,
>  	return 0;
>  }
>=20=20
> +static int skl_ddi_wrpll_get_freq(struct drm_i915_private *i915,
> +				  const struct intel_shared_dpll *pll,
> +				  const struct intel_dpll_hw_state *pll_state);
> +
>  static int skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
> @@ -1652,6 +1664,9 @@ static int skl_ddi_hdmi_pll_dividers(struct intel_c=
rtc_state *crtc_state)
>  	crtc_state->dpll_hw_state.cfgcr1 =3D cfgcr1;
>  	crtc_state->dpll_hw_state.cfgcr2 =3D cfgcr2;
>=20=20
> +	crtc_state->port_clock =3D skl_ddi_wrpll_get_freq(i915, NULL,
> +							&crtc_state->dpll_hw_state);
> +
>  	return 0;
>  }
>=20=20
> @@ -2255,14 +2270,27 @@ bxt_ddi_dp_set_dpll_hw_state(struct intel_crtc_st=
ate *crtc_state)
>  	return bxt_ddi_set_dpll_hw_state(crtc_state, &clk_div);
>  }
>=20=20
> +static int bxt_ddi_pll_get_freq(struct drm_i915_private *i915,
> +				const struct intel_shared_dpll *pll,
> +				const struct intel_dpll_hw_state *pll_state);
> +
>  static int
>  bxt_ddi_hdmi_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
>  	struct dpll clk_div =3D {};
> +	int ret;
>=20=20
>  	bxt_ddi_hdmi_pll_dividers(crtc_state, &clk_div);
>=20=20
> -	return bxt_ddi_set_dpll_hw_state(crtc_state, &clk_div);
> +	ret =3D bxt_ddi_set_dpll_hw_state(crtc_state, &clk_div);
> +	if (ret)
> +		return ret;
> +
> +	crtc_state->port_clock =3D bxt_ddi_pll_get_freq(i915, NULL,
> +						      &crtc_state->dpll_hw_state);
> +
> +	return 0;
>  }
>=20=20
>  static int bxt_ddi_pll_get_freq(struct drm_i915_private *i915,
> @@ -3197,6 +3225,9 @@ static int icl_compute_combo_phy_dpll(struct intel_=
atomic_state *state,
>=20=20
>  	icl_calc_dpll_state(dev_priv, &pll_params, &port_dpll->hw_state);
>=20=20
> +	crtc_state->port_clock =3D icl_ddi_combo_pll_get_freq(dev_priv, NULL,
> +							    &port_dpll->hw_state);
> +
>  	return 0;
>  }
>=20=20
> @@ -3282,6 +3313,9 @@ static int icl_compute_tc_phy_dplls(struct intel_at=
omic_state *state,
>  	if (ret)
>  		return ret;
>=20=20
> +	crtc_state->port_clock =3D icl_ddi_mg_pll_get_freq(dev_priv, NULL,
> +							 &port_dpll->hw_state);
> +
>  	return 0;
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gp=
u/drm/i915/display/intel_pch_refclk.c
> index 6610160cf825..5fb7ead97c90 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> @@ -166,6 +166,15 @@ static void lpt_compute_iclkip(struct iclkip_params =
*p, int clock)
>  	}
>  }
>=20=20
> +int lpt_iclkip(const struct intel_crtc_state *crtc_state)
> +{
> +	struct iclkip_params p;
> +
> +	lpt_compute_iclkip(&p, crtc_state->hw.adjusted_mode.crtc_clock);
> +
> +	return lpt_iclkip_freq(&p);
> +}
> +
>  /* Program iCLKIP clock to the desired frequency */
>  void lpt_program_iclkip(const struct intel_crtc_state *crtc_state)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.h b/drivers/gp=
u/drm/i915/display/intel_pch_refclk.h
> index 12ab2c75a800..9bcf56629f24 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_refclk.h
> +++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.h
> @@ -14,6 +14,7 @@ struct intel_crtc_state;
>  void lpt_program_iclkip(const struct intel_crtc_state *crtc_state);
>  void lpt_disable_iclkip(struct drm_i915_private *dev_priv);
>  int lpt_get_iclkip(struct drm_i915_private *dev_priv);
> +int lpt_iclkip(const struct intel_crtc_state *crtc_state);
>=20=20
>  void intel_init_pch_refclk(struct drm_i915_private *dev_priv);
>  void lpt_disable_clkout_dp(struct drm_i915_private *dev_priv);

--=20
Jani Nikula, Intel Open Source Graphics Center
