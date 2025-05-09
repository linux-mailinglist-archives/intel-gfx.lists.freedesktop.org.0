Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C04DAB1099
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 12:27:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E256510EA08;
	Fri,  9 May 2025 10:27:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ennY7OMF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B15710EA08;
 Fri,  9 May 2025 10:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746786444; x=1778322444;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=vuZhT/b2utgegxfQWCs6TlZdpjAQ2mt5nm/dTDX7e9I=;
 b=ennY7OMFzNo4Y7QALSlQOvbpMbPsvux1ICqCV7jC6XGCriJCLoqmu+Dv
 9EowVGFpIAlGU4pmfM+qM56XIi/WaPLnoY0bvSVSkt3FfzVVDQkaC14Kc
 P4MocoOvs28L3/WiAfNJRCoIDDi8aFc0wpNij2jwXU7+cmc/NtUnQKihc
 JvADqvT0nq08oGeZ5LJ/rqEXivAR1X9y5uH2QW2Tac3auFEq03dF/6NPc
 vUYJVsf2A4evZsmcR1PoyPkK7YR23UL9iU4hrMY0TR+rmCKKgwxFyAdMC
 gBnHgzdN040SjsEtfc1326KbxVSNXwIOzr3YSJ2tQjW+XXFTOGBD3XMPP w==;
X-CSE-ConnectionGUID: MVDQQvT1Sf2PPAdbcn1R7w==
X-CSE-MsgGUID: eeAxmru8TWuk3sNZCJvM1w==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="52419317"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="52419317"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:27:24 -0700
X-CSE-ConnectionGUID: kC8oCkiiQfCLzmFXyvxCJw==
X-CSE-MsgGUID: Nh67Jj+xT2SbDt+DnIU7Kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="141357247"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.201])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:27:22 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH 13/18] drm/i915/dpll: Change arguments for get_freq hook
In-Reply-To: <20250509042729.1152004-14-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250509042729.1152004-1-suraj.kandpal@intel.com>
 <20250509042729.1152004-14-suraj.kandpal@intel.com>
Date: Fri, 09 May 2025 13:27:18 +0300
Message-ID: <87bjs2krjt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Fri, 09 May 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Change the arguments for get_freq hook in intel_dpll_funcs
> to use only intel_crtc_state and intel_encoder since that all we need
> and the rest can be derived from the above two.

Same as before, hard to review with no user, what does NULL mean.

It's generally not enough to say "we need" when you don't say why, and
there's no user to justify.

BR,
Jani.

>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   6 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 107 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   5 +-
>  3 files changed, 57 insertions(+), 61 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 11ebcb40c91f..66dea34ebcd3 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4203,8 +4203,7 @@ void intel_ddi_get_clock(struct intel_encoder *encoder,
>  
>  	icl_set_active_port_dpll(crtc_state, port_dpll_id);
>  
> -	crtc_state->port_clock = intel_dpll_get_freq(display, crtc_state->intel_dpll,
> -						     &crtc_state->dpll_hw_state);
> +	crtc_state->port_clock = intel_dpll_get_freq(crtc_state, encoder);
>  }
>  
>  static void mtl_ddi_get_config(struct intel_encoder *encoder,
> @@ -4316,8 +4315,7 @@ static void icl_ddi_tc_get_clock(struct intel_encoder *encoder,
>  	if (icl_ddi_tc_pll_is_tbt(crtc_state->intel_dpll))
>  		crtc_state->port_clock = icl_calc_tbt_pll_link(display, encoder->port);
>  	else
> -		crtc_state->port_clock = intel_dpll_get_freq(display, crtc_state->intel_dpll,
> -							     &crtc_state->dpll_hw_state);
> +		crtc_state->port_clock = intel_dpll_get_freq(crtc_state, encoder);
>  }
>  
>  static void icl_ddi_tc_get_config(struct intel_encoder *encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 4a184d1e83a3..3a724d84861b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -79,7 +79,7 @@ struct intel_dpll_funcs {
>  			struct intel_dpll *pll);
>  
>  	/*
> -	 * Hook for disabling the shared pll, called from intel_disable_global_dpll()
> +	 * Hook for disabling the shared pll, called from intel_disable_dpll()
>  	 * only when it is safe to disable the pll, i.e., there are no more
>  	 * tracked users for it.
>  	 */
> @@ -100,9 +100,8 @@ struct intel_dpll_funcs {
>  	 * Hook for calculating the pll's output frequency based on its passed
>  	 * in state.
>  	 */
> -	int (*get_freq)(struct intel_display *i915,
> -			const struct intel_dpll *pll,
> -			const struct intel_dpll_hw_state *dpll_hw_state);
> +	int (*get_freq)(struct intel_crtc_state *crtc_state,
> +			struct intel_encoder *encoder);
>  };
>  
>  struct intel_dpll_mgr {
> @@ -1008,11 +1007,11 @@ hsw_ddi_calculate_wrpll(int clock /* in Hz */,
>  	*r2_out = best.r2;
>  }
>  
> -static int hsw_ddi_wrpll_get_freq(struct intel_display *display,
> -				  const struct intel_dpll *pll,
> -				  const struct intel_dpll_hw_state *dpll_hw_state)
> +static int hsw_ddi_wrpll_get_freq(struct intel_crtc_state *crtc_state,
> +				  struct intel_encoder *encoder)
>  {
> -	const struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	const struct hsw_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.hsw;
>  	int refclk;
>  	int n, p, r;
>  	u32 wrpll = hw_state->wrpll;
> @@ -1053,7 +1052,6 @@ static int
>  hsw_ddi_wrpll_compute_dpll(struct intel_atomic_state *state,
>  			   struct intel_crtc *crtc)
>  {
> -	struct intel_display *display = to_intel_display(state);
>  	struct intel_crtc_state *crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct hsw_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.hsw;
> @@ -1066,8 +1064,7 @@ hsw_ddi_wrpll_compute_dpll(struct intel_atomic_state *state,
>  		WRPLL_DIVIDER_REFERENCE(r2) | WRPLL_DIVIDER_FEEDBACK(n2) |
>  		WRPLL_DIVIDER_POST(p);
>  
> -	crtc_state->port_clock = hsw_ddi_wrpll_get_freq(display, NULL,
> -							&crtc_state->dpll_hw_state);
> +	crtc_state->port_clock = hsw_ddi_wrpll_get_freq(crtc_state, NULL);
>  
>  	return 0;
>  }
> @@ -1134,10 +1131,11 @@ hsw_ddi_lcpll_get_dpll(struct intel_crtc_state *crtc_state)
>  	return pll;
>  }
>  
> -static int hsw_ddi_lcpll_get_freq(struct intel_display *display,
> -				  const struct intel_dpll *pll,
> -				  const struct intel_dpll_hw_state *dpll_hw_state)
> +static int hsw_ddi_lcpll_get_freq(struct intel_crtc_state *crtc_state,
> +				  struct intel_encoder *encoder)
>  {
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	struct intel_dpll *pll = crtc_state->intel_dpll;
>  	int link_clock = 0;
>  
>  	switch (pll->info->id) {
> @@ -1186,11 +1184,11 @@ hsw_ddi_spll_get_dpll(struct intel_atomic_state *state,
>  				      BIT(DPLL_ID_SPLL));
>  }
>  
> -static int hsw_ddi_spll_get_freq(struct intel_display *display,
> -				 const struct intel_dpll *pll,
> -				 const struct intel_dpll_hw_state *dpll_hw_state)
> +static int hsw_ddi_spll_get_freq(struct intel_crtc_state *crtc_state,
> +				 struct intel_encoder *encoder)
>  {
> -	const struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	const struct hsw_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.hsw;
>  	int link_clock = 0;
>  
>  	switch (hw_state->spll & SPLL_FREQ_MASK) {
> @@ -1979,20 +1977,21 @@ static int skl_get_dpll(struct intel_atomic_state *state,
>  	return 0;
>  }
>  
> -static int skl_ddi_pll_get_freq(struct intel_display *display,
> -				const struct intel_dpll *pll,
> -				const struct intel_dpll_hw_state *dpll_hw_state)
> +static int skl_ddi_pll_get_freq(struct intel_crtc_state *crtc_state,
> +				struct intel_encoder *encoder)
>  {
> -	const struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	struct intel_dpll *pll = crtc_state->intel_dpll;
> +	const struct skl_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.skl;
>  
>  	/*
>  	 * ctrl1 register is already shifted for each pll, just use 0 to get
>  	 * the internal shift for each field
>  	 */
>  	if (hw_state->ctrl1 & DPLL_CTRL1_HDMI_MODE(0))
> -		return skl_ddi_wrpll_get_freq(display, pll, dpll_hw_state);
> +		return skl_ddi_wrpll_get_freq(display, pll, &crtc_state->dpll_hw_state);
>  	else
> -		return skl_ddi_lcpll_get_freq(display, pll, dpll_hw_state);
> +		return skl_ddi_lcpll_get_freq(display, pll, &crtc_state->dpll_hw_state);
>  }
>  
>  static void skl_update_dpll_ref_clks(struct intel_display *display)
> @@ -2378,11 +2377,11 @@ static int bxt_ddi_set_dpll_hw_state(struct intel_crtc_state *crtc_state,
>  	return 0;
>  }
>  
> -static int bxt_ddi_pll_get_freq(struct intel_display *display,
> -				const struct intel_dpll *pll,
> -				const struct intel_dpll_hw_state *dpll_hw_state)
> +static int bxt_ddi_pll_get_freq(struct intel_crtc_state *crtc_state,
> +				struct intel_encoder *encoder)
>  {
> -	const struct bxt_dpll_hw_state *hw_state = &dpll_hw_state->bxt;
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	const struct bxt_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.bxt;
>  	struct dpll clock;
>  
>  	clock.m1 = 2;
> @@ -2410,7 +2409,6 @@ bxt_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
>  static int
>  bxt_ddi_hdmi_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
>  {
> -	struct intel_display *display = to_intel_display(crtc_state);
>  	struct dpll clk_div = {};
>  	int ret;
>  
> @@ -2420,8 +2418,7 @@ bxt_ddi_hdmi_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
>  	if (ret)
>  		return ret;
>  
> -	crtc_state->port_clock = bxt_ddi_pll_get_freq(display, NULL,
> -						      &crtc_state->dpll_hw_state);
> +	crtc_state->port_clock = bxt_ddi_pll_get_freq(crtc_state, NULL);
>  
>  	return 0;
>  }
> @@ -2773,10 +2770,11 @@ static int icl_calc_tbt_pll(struct intel_crtc_state *crtc_state,
>  	return 0;
>  }
>  
> -static int icl_ddi_tbt_pll_get_freq(struct intel_display *display,
> -				    const struct intel_dpll *pll,
> -				    const struct intel_dpll_hw_state *dpll_hw_state)
> +static int icl_ddi_tbt_pll_get_freq(struct intel_crtc_state *crtc_state,
> +				    struct intel_encoder *encoder)
>  {
> +	struct intel_display *display = to_intel_display(crtc_state);
> +
>  	/*
>  	 * The PLL outputs multiple frequencies at the same time, selection is
>  	 * made at DDI clock mux level.
> @@ -2844,11 +2842,11 @@ icl_calc_wrpll(struct intel_crtc_state *crtc_state,
>  	return 0;
>  }
>  
> -static int icl_ddi_combo_pll_get_freq(struct intel_display *display,
> -				      const struct intel_dpll *pll,
> -				      const struct intel_dpll_hw_state *dpll_hw_state)
> +static int icl_ddi_combo_pll_get_freq(struct intel_crtc_state *crtc_state,
> +				      struct intel_encoder *encoder)
>  {
> -	const struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	const struct icl_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.icl;
>  	int ref_clock = icl_wrpll_ref_clock(display);
>  	u32 dco_fraction;
>  	u32 p0, p1, p2, dco_freq;
> @@ -3217,11 +3215,11 @@ static int icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
>  	return 0;
>  }
>  
> -static int icl_ddi_mg_pll_get_freq(struct intel_display *display,
> -				   const struct intel_dpll *pll,
> -				   const struct intel_dpll_hw_state *dpll_hw_state)
> +static int icl_ddi_mg_pll_get_freq(struct intel_crtc_state *crtc_state,
> +				   struct intel_encoder *encoder)
>  {
> -	const struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	const struct icl_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.icl;
>  	u32 m1, m2_int, m2_frac, div1, div2, ref_clock;
>  	u64 tmp;
>  
> @@ -3354,8 +3352,7 @@ static int icl_compute_combo_phy_dpll(struct intel_atomic_state *state,
>  	/* this is mainly for the fastset check */
>  	icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_DEFAULT);
>  
> -	crtc_state->port_clock = icl_ddi_combo_pll_get_freq(display, NULL,
> -							    &port_dpll->hw_state);
> +	crtc_state->port_clock = icl_ddi_combo_pll_get_freq(crtc_state, NULL);
>  
>  	return 0;
>  }
> @@ -3453,8 +3450,7 @@ static int icl_compute_tc_phy_dplls(struct intel_atomic_state *state,
>  	else
>  		icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_MG_PHY);
>  
> -	crtc_state->port_clock = icl_ddi_mg_pll_get_freq(display, NULL,
> -							 &port_dpll->hw_state);
> +	crtc_state->port_clock = icl_ddi_mg_pll_get_freq(crtc_state, NULL);
>  
>  	return 0;
>  }
> @@ -4500,20 +4496,23 @@ void intel_update_active_dpll(struct intel_atomic_state *state,
>  
>  /**
>   * intel_dpll_get_freq - calculate the DPLL's output frequency
> - * @display: intel_display device
> - * @pll: DPLL for which to calculate the output frequency
> - * @dpll_hw_state: DPLL state from which to calculate the output frequency
> + * @crtc_state: crtc_state which contains the DPLL state from which we
> + * calculate frequency
> + * @encoder: Encoder for which the freq is calculated
>   *
> - * Return the output frequency corresponding to @pll's passed in @dpll_hw_state.
> + * Return the output frequency corresponding to @pll's passed in
> + * @crtc_state->dpll_hw_state.
>   */
> -int intel_dpll_get_freq(struct intel_display *display,
> -			const struct intel_dpll *pll,
> -			const struct intel_dpll_hw_state *dpll_hw_state)
> +int intel_dpll_get_freq(struct intel_crtc_state *crtc_state,
> +			struct intel_encoder *encoder)
>  {
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	struct intel_dpll *pll = crtc_state->intel_dpll;
> +
>  	if (drm_WARN_ON(display->drm, !pll->info->funcs->get_freq))
>  		return 0;
>  
> -	return pll->info->funcs->get_freq(display, pll, dpll_hw_state);
> +	return pll->info->funcs->get_freq(crtc_state, encoder);
>  }
>  
>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> index 99a058deaeda..49eb02d72f44 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -412,9 +412,8 @@ void icl_set_active_port_dpll(struct intel_crtc_state *crtc_state,
>  void intel_update_active_dpll(struct intel_atomic_state *state,
>  			      struct intel_crtc *crtc,
>  			      struct intel_encoder *encoder);
> -int intel_dpll_get_freq(struct intel_display *display,
> -			const struct intel_dpll *pll,
> -			const struct intel_dpll_hw_state *dpll_hw_state);
> +int intel_dpll_get_freq(struct intel_crtc_state *crtc_state,
> +			struct intel_encoder *encoder);
>  bool intel_dpll_get_hw_state(struct intel_display *display,
>  			     struct intel_dpll *pll,
>  			     struct intel_dpll_hw_state *dpll_hw_state);

-- 
Jani Nikula, Intel
