Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31AF02AD7C5
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Nov 2020 14:38:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D65189B00;
	Tue, 10 Nov 2020 13:38:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F408E89B00
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Nov 2020 13:38:05 +0000 (UTC)
IronPort-SDR: AJZ8oeo9aY4nkD2jvr2S0DxKv5j5AJIgYqMsTjQErrq0OBCSPdJVxwBGdByR3FEf2R0nMk2p9W
 yUUurI+NbEXQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9800"; a="167388310"
X-IronPort-AV: E=Sophos;i="5.77,466,1596524400"; d="scan'208";a="167388310"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 05:38:05 -0800
IronPort-SDR: mIh/feUJuMBEbpFk6fN7TQ1J0r271NHHTa1RZcgSC4jhG+DQoqbV5zmiu5SICP5TsuFhkiHYF8
 0AmoqYLFWCCQ==
X-IronPort-AV: E=Sophos;i="5.77,466,1596524400"; d="scan'208";a="473421792"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 05:38:04 -0800
Date: Tue, 10 Nov 2020 15:38:00 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201110133800.GF425411@ideak-desk.fi.intel.com>
References: <20201109231239.17002-1-ville.syrjala@linux.intel.com>
 <20201109231239.17002-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201109231239.17002-3-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Use actual readout results
 for .get_freq()
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 10, 2020 at 01:12:38AM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Currently the DPLL .get_freq() uses pll->state.hw_state which
> is not the thing we actually read out (except during driver
> load/resume). Outside of that pll->state.hw_state is just the
> thing we committed last time around. During state check we
> just read the thing into crtc_state->dpll_hw_state, so that
> is what we should use for calculating the DPLL output frequency.
> =

> I think we used to do this so that the results of the readout
> were actually used, but somehow it got changed when the
> .get_freq() refactoring happened.
> =

> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Makes sense:
Reviewed-by: Imre Deak <imre.deak@intel.com>

We do actually check if pll->state.hw_state matches the actual HW state
in verify_single_dpll_state().

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c        |  3 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  3 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 78 +++++++++++--------
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  8 +-
>  4 files changed, 54 insertions(+), 38 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index 096652921453..769bb1b0d543 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1496,7 +1496,8 @@ static void gen11_dsi_get_config(struct intel_encod=
er *encoder,
>  =

>  	/* FIXME: adapt icl_ddi_clock_get() for DSI and use that? */
>  	pipe_config->port_clock =3D intel_dpll_get_freq(i915,
> -						      pipe_config->shared_dpll);
> +						      pipe_config->shared_dpll,
> +						      &pipe_config->dpll_hw_state);
>  =

>  	pipe_config->hw.adjusted_mode.crtc_clock =3D intel_dsi->pclk;
>  	if (intel_dsi->dual_link)
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index d4b1b73c7aab..9d80e47e9558 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -1755,7 +1755,8 @@ static void intel_ddi_clock_get(struct intel_encode=
r *encoder,
>  								encoder->port);
>  	else
>  		pipe_config->port_clock =3D
> -			intel_dpll_get_freq(dev_priv, pipe_config->shared_dpll);
> +			intel_dpll_get_freq(dev_priv, pipe_config->shared_dpll,
> +					    &pipe_config->dpll_hw_state);
>  =

>  	ddi_dotclock_get(pipe_config);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index 1604c20bac33..0f14c4dee02c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -891,11 +891,12 @@ hsw_ddi_wrpll_get_dpll(struct intel_atomic_state *s=
tate,
>  }
>  =

>  static int hsw_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
> -				  const struct intel_shared_dpll *pll)
> +				  const struct intel_shared_dpll *pll,
> +				  const struct intel_dpll_hw_state *pll_state)
>  {
>  	int refclk;
>  	int n, p, r;
> -	u32 wrpll =3D pll->state.hw_state.wrpll;
> +	u32 wrpll =3D pll_state->wrpll;
>  =

>  	switch (wrpll & WRPLL_REF_MASK) {
>  	case WRPLL_REF_SPECIAL_HSW:
> @@ -962,7 +963,8 @@ hsw_ddi_lcpll_get_dpll(struct intel_crtc_state *crtc_=
state)
>  }
>  =

>  static int hsw_ddi_lcpll_get_freq(struct drm_i915_private *i915,
> -				  const struct intel_shared_dpll *pll)
> +				  const struct intel_shared_dpll *pll,
> +				  const struct intel_dpll_hw_state *pll_state)
>  {
>  	int link_clock =3D 0;
>  =

> @@ -1002,11 +1004,12 @@ hsw_ddi_spll_get_dpll(struct intel_atomic_state *=
state,
>  }
>  =

>  static int hsw_ddi_spll_get_freq(struct drm_i915_private *i915,
> -				 const struct intel_shared_dpll *pll)
> +				 const struct intel_shared_dpll *pll,
> +				 const struct intel_dpll_hw_state *pll_state)
>  {
>  	int link_clock =3D 0;
>  =

> -	switch (pll->state.hw_state.spll & SPLL_FREQ_MASK) {
> +	switch (pll_state->spll & SPLL_FREQ_MASK) {
>  	case SPLL_FREQ_810MHz:
>  		link_clock =3D 81000;
>  		break;
> @@ -1577,9 +1580,9 @@ static bool skl_ddi_hdmi_pll_dividers(struct intel_=
crtc_state *crtc_state)
>  }
>  =

>  static int skl_ddi_wrpll_get_freq(struct drm_i915_private *i915,
> -				  const struct intel_shared_dpll *pll)
> +				  const struct intel_shared_dpll *pll,
> +				  const struct intel_dpll_hw_state *pll_state)
>  {
> -	const struct intel_dpll_hw_state *pll_state =3D &pll->state.hw_state;
>  	int ref_clock =3D i915->dpll.ref_clks.nssc;
>  	u32 p0, p1, p2, dco_freq;
>  =

> @@ -1688,12 +1691,12 @@ skl_ddi_dp_set_dpll_hw_state(struct intel_crtc_st=
ate *crtc_state)
>  }
>  =

>  static int skl_ddi_lcpll_get_freq(struct drm_i915_private *i915,
> -				  const struct intel_shared_dpll *pll)
> +				  const struct intel_shared_dpll *pll,
> +				  const struct intel_dpll_hw_state *pll_state)
>  {
>  	int link_clock =3D 0;
>  =

> -	switch ((pll->state.hw_state.ctrl1 &
> -		 DPLL_CTRL1_LINK_RATE_MASK(0)) >>
> +	switch ((pll_state->ctrl1 & DPLL_CTRL1_LINK_RATE_MASK(0)) >>
>  		DPLL_CTRL1_LINK_RATE_SHIFT(0)) {
>  	case DPLL_CTRL1_LINK_RATE_810:
>  		link_clock =3D 81000;
> @@ -1771,16 +1774,17 @@ static bool skl_get_dpll(struct intel_atomic_stat=
e *state,
>  }
>  =

>  static int skl_ddi_pll_get_freq(struct drm_i915_private *i915,
> -				const struct intel_shared_dpll *pll)
> +				const struct intel_shared_dpll *pll,
> +				const struct intel_dpll_hw_state *pll_state)
>  {
>  	/*
>  	 * ctrl1 register is already shifted for each pll, just use 0 to get
>  	 * the internal shift for each field
>  	 */
> -	if (pll->state.hw_state.ctrl1 & DPLL_CTRL1_HDMI_MODE(0))
> -		return skl_ddi_wrpll_get_freq(i915, pll);
> +	if (pll_state->ctrl1 & DPLL_CTRL1_HDMI_MODE(0))
> +		return skl_ddi_wrpll_get_freq(i915, pll, pll_state);
>  	else
> -		return skl_ddi_lcpll_get_freq(i915, pll);
> +		return skl_ddi_lcpll_get_freq(i915, pll, pll_state);
>  }
>  =

>  static void skl_update_dpll_ref_clks(struct drm_i915_private *i915)
> @@ -2218,9 +2222,9 @@ bxt_ddi_hdmi_set_dpll_hw_state(struct intel_crtc_st=
ate *crtc_state)
>  }
>  =

>  static int bxt_ddi_pll_get_freq(struct drm_i915_private *i915,
> -				const struct intel_shared_dpll *pll)
> +				const struct intel_shared_dpll *pll,
> +				const struct intel_dpll_hw_state *pll_state)
>  {
> -	const struct intel_dpll_hw_state *pll_state =3D &pll->state.hw_state;
>  	struct dpll clock;
>  =

>  	clock.m1 =3D 2;
> @@ -2650,9 +2654,9 @@ ehl_combo_pll_div_frac_wa_needed(struct drm_i915_pr=
ivate *i915)
>  =

>  static int __cnl_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
>  				    const struct intel_shared_dpll *pll,
> +				    const struct intel_dpll_hw_state *pll_state,
>  				    int ref_clock)
>  {
> -	const struct intel_dpll_hw_state *pll_state =3D &pll->state.hw_state;
>  	u32 dco_fraction;
>  	u32 p0, p1, p2, dco_freq;
>  =

> @@ -2711,9 +2715,11 @@ static int __cnl_ddi_wrpll_get_freq(struct drm_i91=
5_private *dev_priv,
>  }
>  =

>  static int cnl_ddi_wrpll_get_freq(struct drm_i915_private *i915,
> -				  const struct intel_shared_dpll *pll)
> +				  const struct intel_shared_dpll *pll,
> +				  const struct intel_dpll_hw_state *pll_state)
>  {
> -	return __cnl_ddi_wrpll_get_freq(i915, pll, i915->dpll.ref_clks.nssc);
> +	return __cnl_ddi_wrpll_get_freq(i915, pll, pll_state,
> +					i915->dpll.ref_clks.nssc);
>  }
>  =

>  static bool
> @@ -2762,11 +2768,12 @@ cnl_ddi_dp_set_dpll_hw_state(struct intel_crtc_st=
ate *crtc_state)
>  }
>  =

>  static int cnl_ddi_lcpll_get_freq(struct drm_i915_private *i915,
> -				  const struct intel_shared_dpll *pll)
> +				  const struct intel_shared_dpll *pll,
> +				  const struct intel_dpll_hw_state *pll_state)
>  {
>  	int link_clock =3D 0;
>  =

> -	switch (pll->state.hw_state.cfgcr0 & DPLL_CFGCR0_LINK_RATE_MASK) {
> +	switch (pll_state->cfgcr0 & DPLL_CFGCR0_LINK_RATE_MASK) {
>  	case DPLL_CFGCR0_LINK_RATE_810:
>  		link_clock =3D 81000;
>  		break;
> @@ -2849,12 +2856,13 @@ static bool cnl_get_dpll(struct intel_atomic_stat=
e *state,
>  }
>  =

>  static int cnl_ddi_pll_get_freq(struct drm_i915_private *i915,
> -				const struct intel_shared_dpll *pll)
> +				const struct intel_shared_dpll *pll,
> +				const struct intel_dpll_hw_state *pll_state)
>  {
> -	if (pll->state.hw_state.cfgcr0 & DPLL_CFGCR0_HDMI_MODE)
> -		return cnl_ddi_wrpll_get_freq(i915, pll);
> +	if (pll_state->cfgcr0 & DPLL_CFGCR0_HDMI_MODE)
> +		return cnl_ddi_wrpll_get_freq(i915, pll, pll_state);
>  	else
> -		return cnl_ddi_lcpll_get_freq(i915, pll);
> +		return cnl_ddi_lcpll_get_freq(i915, pll, pll_state);
>  }
>  =

>  static void cnl_update_dpll_ref_clks(struct drm_i915_private *i915)
> @@ -3039,7 +3047,8 @@ static bool icl_calc_tbt_pll(struct intel_crtc_stat=
e *crtc_state,
>  }
>  =

>  static int icl_ddi_tbt_pll_get_freq(struct drm_i915_private *i915,
> -				    const struct intel_shared_dpll *pll)
> +				    const struct intel_shared_dpll *pll,
> +				    const struct intel_dpll_hw_state *pll_state)
>  {
>  	/*
>  	 * The PLL outputs multiple frequencies at the same time, selection is
> @@ -3075,9 +3084,10 @@ icl_calc_wrpll(struct intel_crtc_state *crtc_state,
>  }
>  =

>  static int icl_ddi_combo_pll_get_freq(struct drm_i915_private *i915,
> -				      const struct intel_shared_dpll *pll)
> +				      const struct intel_shared_dpll *pll,
> +				      const struct intel_dpll_hw_state *pll_state)
>  {
> -	return __cnl_ddi_wrpll_get_freq(i915, pll,
> +	return __cnl_ddi_wrpll_get_freq(i915, pll, pll_state,
>  					icl_wrpll_ref_clock(i915));
>  }
>  =

> @@ -3402,9 +3412,9 @@ static bool icl_calc_mg_pll_state(struct intel_crtc=
_state *crtc_state,
>  }
>  =

>  static int icl_ddi_mg_pll_get_freq(struct drm_i915_private *dev_priv,
> -				   const struct intel_shared_dpll *pll)
> +				   const struct intel_shared_dpll *pll,
> +				   const struct intel_dpll_hw_state *pll_state)
>  {
> -	const struct intel_dpll_hw_state *pll_state =3D &pll->state.hw_state;
>  	u32 m1, m2_int, m2_frac, div1, div2, ref_clock;
>  	u64 tmp;
>  =

> @@ -4515,16 +4525,18 @@ void intel_update_active_dpll(struct intel_atomic=
_state *state,
>   * intel_dpll_get_freq - calculate the DPLL's output frequency
>   * @i915: i915 device
>   * @pll: DPLL for which to calculate the output frequency
> + * @pll_state: DPLL state from which to calculate the output frequency
>   *
> - * Return the output frequency corresponding to @pll's current state.
> + * Return the output frequency corresponding to @pll's passed in @pll_st=
ate.
>   */
>  int intel_dpll_get_freq(struct drm_i915_private *i915,
> -			const struct intel_shared_dpll *pll)
> +			const struct intel_shared_dpll *pll,
> +			const struct intel_dpll_hw_state *pll_state)
>  {
>  	if (drm_WARN_ON(&i915->drm, !pll->info->funcs->get_freq))
>  		return 0;
>  =

> -	return pll->info->funcs->get_freq(i915, pll);
> +	return pll->info->funcs->get_freq(i915, pll, pll_state);
>  }
>  =

>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.h
> index 4357f92eafd6..2eb7618ef957 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -300,10 +300,11 @@ struct intel_shared_dpll_funcs {
>  	 * @get_freq:
>  	 *
>  	 * Hook for calculating the pll's output frequency based on its
> -	 * current state.
> +	 * passed in state.
>  	 */
>  	int (*get_freq)(struct drm_i915_private *i915,
> -			const struct intel_shared_dpll *pll);
> +			const struct intel_shared_dpll *pll,
> +			const struct intel_dpll_hw_state *pll_state);
>  };
>  =

>  /**
> @@ -399,7 +400,8 @@ void intel_update_active_dpll(struct intel_atomic_sta=
te *state,
>  			      struct intel_crtc *crtc,
>  			      struct intel_encoder *encoder);
>  int intel_dpll_get_freq(struct drm_i915_private *i915,
> -			const struct intel_shared_dpll *pll);
> +			const struct intel_shared_dpll *pll,
> +			const struct intel_dpll_hw_state *pll_state);
>  bool intel_dpll_get_hw_state(struct drm_i915_private *i915,
>  			     struct intel_shared_dpll *pll,
>  			     struct intel_dpll_hw_state *hw_state);
> -- =

> 2.26.2
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
