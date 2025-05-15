Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9DD3AB7EBD
	for <lists+intel-gfx@lfdr.de>; Thu, 15 May 2025 09:24:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E4D110E791;
	Thu, 15 May 2025 07:24:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k3SLN/gb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BCF910E791;
 Thu, 15 May 2025 07:24:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747293858; x=1778829858;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Z1fWsHBk5llFg2R3syyXoAnXGtYu8ALTldYTNsc/Rfs=;
 b=k3SLN/gb2SkAdsQzMDOS1psPQtQ8cwkEF4taWDJUCXLGJGw/+B8fx7CE
 hkppINV8Bv65EY1bZ72mRyr4eooW0CL4+YIRGhAUgUCqju8p0iXEYtJuV
 HXDtmtS7yuoNZlMCs4EFoTbpwb0RIX5njiTnWYSdCOSISBWdZSUIuwMxI
 /Y3BxY6emWmx1vxtJ25UlronJO7J3qX08cjnI7AaE712WkXFQnEg75TtZ
 xm8T7JigK+k6QYOko2IiAzPWRZMfDeon+vuXY95QURXlXdU/ewkZ5QoFR
 32ZsXibUhZ1hVStyOSUdC3e2PnkhwSGDAQRhYGULvk0rlNKrCXriyHagr A==;
X-CSE-ConnectionGUID: 6+cEKOgrStaiE9Gn+Tg+/g==
X-CSE-MsgGUID: tipuDyZ2R3WS4p9mgtnkBg==
X-IronPort-AV: E=McAfee;i="6700,10204,11433"; a="66767604"
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="66767604"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2025 00:24:18 -0700
X-CSE-ConnectionGUID: G1grgDerR/S1LESFl7oK8g==
X-CSE-MsgGUID: i7GKNm2vQzWjJaMe15KF1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="138820853"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.244.143])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2025 00:24:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 mika.kahola@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH 06/14] drm/i915/dpll: Rename intel_shared_dpll
In-Reply-To: <20250515071801.2221120-7-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250515071801.2221120-1-suraj.kandpal@intel.com>
 <20250515071801.2221120-7-suraj.kandpal@intel.com>
Date: Thu, 15 May 2025 10:24:11 +0300
Message-ID: <87ikm2gwv8.fsf@intel.com>
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

On Thu, 15 May 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Rename intel_shared_dpll to intel_dpll to represent both
> shared and individual dplls. Since from MTL each PHY has it's
> own PLL making the shared PLL naming a little outdated. In an
> effort to make this framework accepting of future changes this
> needs to be done.
>
> --v2
> -Use intel_dpll_global to make sure names start with the filename
> [Jani/Ville]
> -Explain the need of this rename [Jani]
>
> --v3
> -Just keep it intel_dpll [Jani]
>
> --v4
> -Fix comment [Jani]
> -Use just num_dpll and dplls [Jani]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c        |   2 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  52 ++--
>  drivers/gpu/drm/i915/display/intel_ddi.h      |   6 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  12 +-
>  .../gpu/drm/i915/display/intel_display_core.h |   4 +-
>  .../drm/i915/display/intel_display_debugfs.c  |   2 +-
>  .../drm/i915/display/intel_display_types.h    |   6 +-
>  drivers/gpu/drm/i915/display/intel_dpll.c     |   4 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 228 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  18 +-
>  drivers/gpu/drm/i915/display/intel_fdi.c      |   2 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c     |   2 +-
>  .../drm/i915/display/intel_modeset_setup.c    |   8 +-
>  .../gpu/drm/i915/display/intel_pch_display.c  |  10 +-
>  .../gpu/drm/i915/display/intel_pch_refclk.c   |   2 +-
>  15 files changed, 179 insertions(+), 179 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index ca7033251e91..55f0a20e0874 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -658,7 +658,7 @@ static void gen11_dsi_map_pll(struct intel_encoder *encoder,
>  {
>  	struct intel_display *display = to_intel_display(encoder);
>  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> -	struct intel_shared_dpll *pll = crtc_state->shared_dpll;
> +	struct intel_dpll *pll = crtc_state->intel_dpll;

The rb was conditioned on the member not being named intel_dpll.

BR,
Jani.




>  	enum phy phy;
>  	u32 val;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 74132c1d6385..4d631cbc81d2 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -236,7 +236,7 @@ static void intel_wait_ddi_buf_active(struct intel_encoder *encoder)
>  			port_name(port));
>  }
>  
> -static u32 hsw_pll_to_ddi_pll_sel(const struct intel_shared_dpll *pll)
> +static u32 hsw_pll_to_ddi_pll_sel(const struct intel_dpll *pll)
>  {
>  	switch (pll->info->id) {
>  	case DPLL_ID_WRPLL1:
> @@ -260,7 +260,7 @@ static u32 hsw_pll_to_ddi_pll_sel(const struct intel_shared_dpll *pll)
>  static u32 icl_pll_to_ddi_clk_sel(struct intel_encoder *encoder,
>  				  const struct intel_crtc_state *crtc_state)
>  {
> -	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
> +	const struct intel_dpll *pll = crtc_state->intel_dpll;
>  	int clock = crtc_state->port_clock;
>  	const enum intel_dpll_id id = pll->info->id;
>  
> @@ -1561,7 +1561,7 @@ static bool _icl_ddi_is_clock_enabled(struct intel_display *display, i915_reg_t
>  	return !(intel_de_read(display, reg) & clk_off);
>  }
>  
> -static struct intel_shared_dpll *
> +static struct intel_dpll *
>  _icl_ddi_get_pll(struct intel_display *display, i915_reg_t reg,
>  		 u32 clk_sel_mask, u32 clk_sel_shift)
>  {
> @@ -1576,7 +1576,7 @@ static void adls_ddi_enable_clock(struct intel_encoder *encoder,
>  				  const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
> -	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
> +	const struct intel_dpll *pll = crtc_state->intel_dpll;
>  	enum phy phy = intel_encoder_to_phy(encoder);
>  
>  	if (drm_WARN_ON(display->drm, !pll))
> @@ -1606,7 +1606,7 @@ static bool adls_ddi_is_clock_enabled(struct intel_encoder *encoder)
>  					 ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
>  }
>  
> -static struct intel_shared_dpll *adls_ddi_get_pll(struct intel_encoder *encoder)
> +static struct intel_dpll *adls_ddi_get_pll(struct intel_encoder *encoder)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
>  	enum phy phy = intel_encoder_to_phy(encoder);
> @@ -1620,7 +1620,7 @@ static void rkl_ddi_enable_clock(struct intel_encoder *encoder,
>  				 const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
> -	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
> +	const struct intel_dpll *pll = crtc_state->intel_dpll;
>  	enum phy phy = intel_encoder_to_phy(encoder);
>  
>  	if (drm_WARN_ON(display->drm, !pll))
> @@ -1650,7 +1650,7 @@ static bool rkl_ddi_is_clock_enabled(struct intel_encoder *encoder)
>  					 RKL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
>  }
>  
> -static struct intel_shared_dpll *rkl_ddi_get_pll(struct intel_encoder *encoder)
> +static struct intel_dpll *rkl_ddi_get_pll(struct intel_encoder *encoder)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
>  	enum phy phy = intel_encoder_to_phy(encoder);
> @@ -1664,7 +1664,7 @@ static void dg1_ddi_enable_clock(struct intel_encoder *encoder,
>  				 const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
> -	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
> +	const struct intel_dpll *pll = crtc_state->intel_dpll;
>  	enum phy phy = intel_encoder_to_phy(encoder);
>  
>  	if (drm_WARN_ON(display->drm, !pll))
> @@ -1703,7 +1703,7 @@ static bool dg1_ddi_is_clock_enabled(struct intel_encoder *encoder)
>  					 DG1_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
>  }
>  
> -static struct intel_shared_dpll *dg1_ddi_get_pll(struct intel_encoder *encoder)
> +static struct intel_dpll *dg1_ddi_get_pll(struct intel_encoder *encoder)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
>  	enum phy phy = intel_encoder_to_phy(encoder);
> @@ -1730,7 +1730,7 @@ static void icl_ddi_combo_enable_clock(struct intel_encoder *encoder,
>  				       const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
> -	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
> +	const struct intel_dpll *pll = crtc_state->intel_dpll;
>  	enum phy phy = intel_encoder_to_phy(encoder);
>  
>  	if (drm_WARN_ON(display->drm, !pll))
> @@ -1760,7 +1760,7 @@ static bool icl_ddi_combo_is_clock_enabled(struct intel_encoder *encoder)
>  					 ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
>  }
>  
> -struct intel_shared_dpll *icl_ddi_combo_get_pll(struct intel_encoder *encoder)
> +struct intel_dpll *icl_ddi_combo_get_pll(struct intel_encoder *encoder)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
>  	enum phy phy = intel_encoder_to_phy(encoder);
> @@ -1774,7 +1774,7 @@ static void jsl_ddi_tc_enable_clock(struct intel_encoder *encoder,
>  				    const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
> -	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
> +	const struct intel_dpll *pll = crtc_state->intel_dpll;
>  	enum port port = encoder->port;
>  
>  	if (drm_WARN_ON(display->drm, !pll))
> @@ -1817,7 +1817,7 @@ static void icl_ddi_tc_enable_clock(struct intel_encoder *encoder,
>  				    const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
> -	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
> +	const struct intel_dpll *pll = crtc_state->intel_dpll;
>  	enum tc_port tc_port = intel_encoder_to_tc(encoder);
>  	enum port port = encoder->port;
>  
> @@ -1868,7 +1868,7 @@ static bool icl_ddi_tc_is_clock_enabled(struct intel_encoder *encoder)
>  	return !(tmp & ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port));
>  }
>  
> -static struct intel_shared_dpll *icl_ddi_tc_get_pll(struct intel_encoder *encoder)
> +static struct intel_dpll *icl_ddi_tc_get_pll(struct intel_encoder *encoder)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
>  	enum tc_port tc_port = intel_encoder_to_tc(encoder);
> @@ -1898,7 +1898,7 @@ static struct intel_shared_dpll *icl_ddi_tc_get_pll(struct intel_encoder *encode
>  	return intel_get_shared_dpll_by_id(display, id);
>  }
>  
> -static struct intel_shared_dpll *bxt_ddi_get_pll(struct intel_encoder *encoder)
> +static struct intel_dpll *bxt_ddi_get_pll(struct intel_encoder *encoder)
>  {
>  	struct intel_display *display = to_intel_display(encoder->base.dev);
>  	enum intel_dpll_id id;
> @@ -1925,7 +1925,7 @@ static void skl_ddi_enable_clock(struct intel_encoder *encoder,
>  				 const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
> -	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
> +	const struct intel_dpll *pll = crtc_state->intel_dpll;
>  	enum port port = encoder->port;
>  
>  	if (drm_WARN_ON(display->drm, !pll))
> @@ -1967,7 +1967,7 @@ static bool skl_ddi_is_clock_enabled(struct intel_encoder *encoder)
>  	return !(intel_de_read(display, DPLL_CTRL2) & DPLL_CTRL2_DDI_CLK_OFF(port));
>  }
>  
> -static struct intel_shared_dpll *skl_ddi_get_pll(struct intel_encoder *encoder)
> +static struct intel_dpll *skl_ddi_get_pll(struct intel_encoder *encoder)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
>  	enum port port = encoder->port;
> @@ -1993,7 +1993,7 @@ void hsw_ddi_enable_clock(struct intel_encoder *encoder,
>  			  const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
> -	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
> +	const struct intel_dpll *pll = crtc_state->intel_dpll;
>  	enum port port = encoder->port;
>  
>  	if (drm_WARN_ON(display->drm, !pll))
> @@ -2018,7 +2018,7 @@ bool hsw_ddi_is_clock_enabled(struct intel_encoder *encoder)
>  	return intel_de_read(display, PORT_CLK_SEL(port)) != PORT_CLK_SEL_NONE;
>  }
>  
> -static struct intel_shared_dpll *hsw_ddi_get_pll(struct intel_encoder *encoder)
> +static struct intel_dpll *hsw_ddi_get_pll(struct intel_encoder *encoder)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
>  	enum port port = encoder->port;
> @@ -4187,7 +4187,7 @@ static void intel_ddi_get_config(struct intel_encoder *encoder,
>  
>  void intel_ddi_get_clock(struct intel_encoder *encoder,
>  			 struct intel_crtc_state *crtc_state,
> -			 struct intel_shared_dpll *pll)
> +			 struct intel_dpll *pll)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
>  	enum icl_port_dpll_id port_dpll_id = ICL_PORT_DPLL_DEFAULT;
> @@ -4203,7 +4203,7 @@ void intel_ddi_get_clock(struct intel_encoder *encoder,
>  
>  	icl_set_active_port_dpll(crtc_state, port_dpll_id);
>  
> -	crtc_state->port_clock = intel_dpll_get_freq(display, crtc_state->shared_dpll,
> +	crtc_state->port_clock = intel_dpll_get_freq(display, crtc_state->intel_dpll,
>  						     &crtc_state->dpll_hw_state);
>  }
>  
> @@ -4257,7 +4257,7 @@ static void icl_ddi_combo_get_config(struct intel_encoder *encoder,
>  	intel_ddi_get_config(encoder, crtc_state);
>  }
>  
> -static bool icl_ddi_tc_pll_is_tbt(const struct intel_shared_dpll *pll)
> +static bool icl_ddi_tc_pll_is_tbt(const struct intel_dpll *pll)
>  {
>  	return pll->info->id == DPLL_ID_ICL_TBTPLL;
>  }
> @@ -4267,7 +4267,7 @@ icl_ddi_tc_port_pll_type(struct intel_encoder *encoder,
>  			 const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
> -	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
> +	const struct intel_dpll *pll = crtc_state->intel_dpll;
>  
>  	if (drm_WARN_ON(display->drm, !pll))
>  		return ICL_PORT_DPLL_DEFAULT;
> @@ -4290,7 +4290,7 @@ intel_ddi_port_pll_type(struct intel_encoder *encoder,
>  
>  static void icl_ddi_tc_get_clock(struct intel_encoder *encoder,
>  				 struct intel_crtc_state *crtc_state,
> -				 struct intel_shared_dpll *pll)
> +				 struct intel_dpll *pll)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
>  	enum icl_port_dpll_id port_dpll_id;
> @@ -4313,10 +4313,10 @@ static void icl_ddi_tc_get_clock(struct intel_encoder *encoder,
>  
>  	icl_set_active_port_dpll(crtc_state, port_dpll_id);
>  
> -	if (icl_ddi_tc_pll_is_tbt(crtc_state->shared_dpll))
> +	if (icl_ddi_tc_pll_is_tbt(crtc_state->intel_dpll))
>  		crtc_state->port_clock = icl_calc_tbt_pll_link(display, encoder->port);
>  	else
> -		crtc_state->port_clock = intel_dpll_get_freq(display, crtc_state->shared_dpll,
> +		crtc_state->port_clock = intel_dpll_get_freq(display, crtc_state->intel_dpll,
>  							     &crtc_state->dpll_hw_state);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
> index 353eb04079e9..f6f511bb0431 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> @@ -16,9 +16,9 @@ struct intel_crtc;
>  struct intel_crtc_state;
>  struct intel_display;
>  struct intel_dp;
> +struct intel_dpll;
>  struct intel_dpll_hw_state;
>  struct intel_encoder;
> -struct intel_shared_dpll;
>  enum pipe;
>  enum port;
>  enum transcoder;
> @@ -40,7 +40,7 @@ void intel_ddi_enable_clock(struct intel_encoder *encoder,
>  void intel_ddi_disable_clock(struct intel_encoder *encoder);
>  void intel_ddi_get_clock(struct intel_encoder *encoder,
>  			 struct intel_crtc_state *crtc_state,
> -			 struct intel_shared_dpll *pll);
> +			 struct intel_dpll *pll);
>  void hsw_ddi_enable_clock(struct intel_encoder *encoder,
>  			  const struct intel_crtc_state *crtc_state);
>  void hsw_ddi_disable_clock(struct intel_encoder *encoder);
> @@ -50,7 +50,7 @@ intel_ddi_port_pll_type(struct intel_encoder *encoder,
>  			const struct intel_crtc_state *crtc_state);
>  void hsw_ddi_get_config(struct intel_encoder *encoder,
>  			struct intel_crtc_state *crtc_state);
> -struct intel_shared_dpll *icl_ddi_combo_get_pll(struct intel_encoder *encoder);
> +struct intel_dpll *icl_ddi_combo_get_pll(struct intel_encoder *encoder);
>  void hsw_prepare_dp_ddi_buffers(struct intel_encoder *encoder,
>  				const struct intel_crtc_state *crtc_state);
>  void intel_wait_ddi_buf_idle(struct intel_display *display, enum port port);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 6f0a0bc71b06..dcfbd3d2df32 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1325,7 +1325,7 @@ static void intel_encoders_update_prepare(struct intel_atomic_state *state)
>  			if (intel_crtc_needs_modeset(new_crtc_state))
>  				continue;
>  
> -			new_crtc_state->shared_dpll = old_crtc_state->shared_dpll;
> +			new_crtc_state->intel_dpll = old_crtc_state->intel_dpll;
>  			new_crtc_state->dpll_hw_state = old_crtc_state->dpll_hw_state;
>  		}
>  	}
> @@ -1663,7 +1663,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  
>  	intel_encoders_pre_pll_enable(state, crtc);
>  
> -	if (new_crtc_state->shared_dpll)
> +	if (new_crtc_state->intel_dpll)
>  		intel_enable_shared_dpll(new_crtc_state);
>  
>  	intel_encoders_pre_enable(state, crtc);
> @@ -1959,7 +1959,7 @@ static void get_crtc_power_domains(struct intel_crtc_state *crtc_state,
>  	if (HAS_DDI(display) && crtc_state->has_audio)
>  		set_bit(POWER_DOMAIN_AUDIO_MMIO, mask->bits);
>  
> -	if (crtc_state->shared_dpll)
> +	if (crtc_state->intel_dpll)
>  		set_bit(POWER_DOMAIN_DISPLAY_CORE, mask->bits);
>  
>  	if (crtc_state->dsc.compression_enable)
> @@ -4501,7 +4501,7 @@ copy_joiner_crtc_state_modeset(struct intel_atomic_state *state,
>  	/* preserve some things from the slave's original crtc state */
>  	saved_state->uapi = secondary_crtc_state->uapi;
>  	saved_state->scaler_state = secondary_crtc_state->scaler_state;
> -	saved_state->shared_dpll = secondary_crtc_state->shared_dpll;
> +	saved_state->intel_dpll = secondary_crtc_state->intel_dpll;
>  	saved_state->crc_enabled = secondary_crtc_state->crc_enabled;
>  
>  	intel_crtc_free_hw_state(secondary_crtc_state);
> @@ -4564,7 +4564,7 @@ intel_crtc_prepare_cleared_state(struct intel_atomic_state *state,
>  	saved_state->uapi = crtc_state->uapi;
>  	saved_state->inherited = crtc_state->inherited;
>  	saved_state->scaler_state = crtc_state->scaler_state;
> -	saved_state->shared_dpll = crtc_state->shared_dpll;
> +	saved_state->intel_dpll = crtc_state->intel_dpll;
>  	saved_state->dpll_hw_state = crtc_state->dpll_hw_state;
>  	memcpy(saved_state->icl_port_dplls, crtc_state->icl_port_dplls,
>  	       sizeof(saved_state->icl_port_dplls));
> @@ -5318,7 +5318,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  	PIPE_CONF_CHECK_BOOL(double_wide);
>  
>  	if (display->dpll.mgr)
> -		PIPE_CONF_CHECK_P(shared_dpll);
> +		PIPE_CONF_CHECK_P(intel_dpll);
>  
>  	/* FIXME convert everything over the dpll_mgr */
>  	if (display->dpll.mgr || HAS_GMCH(display))
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index e0221e514326..5f5dd2722d99 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -125,8 +125,8 @@ struct intel_audio {
>  struct intel_dpll_global {
>  	struct mutex lock;
>  
> -	int num_shared_dpll;
> -	struct intel_shared_dpll shared_dplls[I915_NUM_PLLS];
> +	int num_dpll;
> +	struct intel_dpll dplls[I915_NUM_PLLS];
>  	const struct intel_dpll_mgr *mgr;
>  
>  	struct {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 3770ce9469d1..ea9e271bc6ee 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -618,7 +618,7 @@ static int i915_shared_dplls_info(struct seq_file *m, void *unused)
>  {
>  	struct intel_display *display = node_to_intel_display(m->private);
>  	struct drm_printer p = drm_seq_file_printer(m);
> -	struct intel_shared_dpll *pll;
> +	struct intel_dpll *pll;
>  	int i;
>  
>  	drm_modeset_lock_all(display->drm);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 1bdffaca153a..dbb07f05bfc6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1075,8 +1075,8 @@ struct intel_crtc_state {
>  	 * haswell. */
>  	struct dpll dpll;
>  
> -	/* Selected dpll when shared or NULL. */
> -	struct intel_shared_dpll *shared_dpll;
> +	/* Selected dpll or NULL. */
> +	struct intel_dpll *intel_dpll;
>  
>  	/* Actual register state of the dpll, for shared dpll cross-checking. */
>  	struct intel_dpll_hw_state dpll_hw_state;
> @@ -1086,7 +1086,7 @@ struct intel_crtc_state {
>  	 * setting shared_dpll and dpll_hw_state to one of these reserved ones.
>  	 */
>  	struct icl_port_dpll {
> -		struct intel_shared_dpll *pll;
> +		struct intel_dpll *pll;
>  		struct intel_dpll_hw_state hw_state;
>  	} icl_port_dplls[ICL_PORT_DPLL_COUNT];
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
> index 8db603d9c823..4d1f7fccd28a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1767,9 +1767,9 @@ int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
>  	int ret;
>  
>  	drm_WARN_ON(display->drm, !intel_crtc_needs_modeset(crtc_state));
> -	drm_WARN_ON(display->drm, !crtc_state->hw.enable && crtc_state->shared_dpll);
> +	drm_WARN_ON(display->drm, !crtc_state->hw.enable && crtc_state->intel_dpll);
>  
> -	if (!crtc_state->hw.enable || crtc_state->shared_dpll)
> +	if (!crtc_state->hw.enable || crtc_state->intel_dpll)
>  		return 0;
>  
>  	if (!display->funcs.dpll->crtc_get_shared_dpll)
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index bdad4d72cc01..6fbbc5e89f3c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -70,7 +70,7 @@ struct intel_dpll_funcs {
>  	 * the pll is not already enabled.
>  	 */
>  	void (*enable)(struct intel_display *display,
> -		       struct intel_shared_dpll *pll,
> +		       struct intel_dpll *pll,
>  		       const struct intel_dpll_hw_state *dpll_hw_state);
>  
>  	/*
> @@ -79,7 +79,7 @@ struct intel_dpll_funcs {
>  	 * tracked users for it.
>  	 */
>  	void (*disable)(struct intel_display *display,
> -			struct intel_shared_dpll *pll);
> +			struct intel_dpll *pll);
>  
>  	/*
>  	 * Hook for reading the values currently programmed to the DPLL
> @@ -87,7 +87,7 @@ struct intel_dpll_funcs {
>  	 * verification after a mode set.
>  	 */
>  	bool (*get_hw_state)(struct intel_display *display,
> -			     struct intel_shared_dpll *pll,
> +			     struct intel_dpll *pll,
>  			     struct intel_dpll_hw_state *dpll_hw_state);
>  
>  	/*
> @@ -95,7 +95,7 @@ struct intel_dpll_funcs {
>  	 * in state.
>  	 */
>  	int (*get_freq)(struct intel_display *i915,
> -			const struct intel_shared_dpll *pll,
> +			const struct intel_dpll *pll,
>  			const struct intel_dpll_hw_state *dpll_hw_state);
>  };
>  
> @@ -124,7 +124,7 @@ static void
>  intel_atomic_duplicate_dpll_state(struct intel_display *display,
>  				  struct intel_dpll_state *dpll_state)
>  {
> -	struct intel_shared_dpll *pll;
> +	struct intel_dpll *pll;
>  	int i;
>  
>  	/* Copy dpll state */
> @@ -158,11 +158,11 @@ intel_atomic_get_shared_dpll_state(struct drm_atomic_state *s)
>   * Returns:
>   * A pointer to the DPLL with @id
>   */
> -struct intel_shared_dpll *
> +struct intel_dpll *
>  intel_get_shared_dpll_by_id(struct intel_display *display,
>  			    enum intel_dpll_id id)
>  {
> -	struct intel_shared_dpll *pll;
> +	struct intel_dpll *pll;
>  	int i;
>  
>  	for_each_dpll(display, pll, i) {
> @@ -176,7 +176,7 @@ intel_get_shared_dpll_by_id(struct intel_display *display,
>  
>  /* For ILK+ */
>  void assert_shared_dpll(struct intel_display *display,
> -			struct intel_shared_dpll *pll,
> +			struct intel_dpll *pll,
>  			bool state)
>  {
>  	bool cur_state;
> @@ -205,7 +205,7 @@ enum intel_dpll_id icl_tc_port_to_pll_id(enum tc_port tc_port)
>  
>  static i915_reg_t
>  intel_combo_pll_enable_reg(struct intel_display *display,
> -			   struct intel_shared_dpll *pll)
> +			   struct intel_dpll *pll)
>  {
>  	if (display->platform.dg1)
>  		return DG1_DPLL_ENABLE(pll->info->id);
> @@ -218,7 +218,7 @@ intel_combo_pll_enable_reg(struct intel_display *display,
>  
>  static i915_reg_t
>  intel_tc_pll_enable_reg(struct intel_display *display,
> -			struct intel_shared_dpll *pll)
> +			struct intel_dpll *pll)
>  {
>  	const enum intel_dpll_id id = pll->info->id;
>  	enum tc_port tc_port = icl_pll_id_to_tc_port(id);
> @@ -230,7 +230,7 @@ intel_tc_pll_enable_reg(struct intel_display *display,
>  }
>  
>  static void _intel_enable_shared_dpll(struct intel_display *display,
> -				      struct intel_shared_dpll *pll)
> +				      struct intel_dpll *pll)
>  {
>  	if (pll->info->power_domain)
>  		pll->wakeref = intel_display_power_get(display, pll->info->power_domain);
> @@ -240,7 +240,7 @@ static void _intel_enable_shared_dpll(struct intel_display *display,
>  }
>  
>  static void _intel_disable_shared_dpll(struct intel_display *display,
> -				       struct intel_shared_dpll *pll)
> +				       struct intel_dpll *pll)
>  {
>  	pll->info->funcs->disable(display, pll);
>  	pll->on = false;
> @@ -259,7 +259,7 @@ void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct intel_shared_dpll *pll = crtc_state->shared_dpll;
> +	struct intel_dpll *pll = crtc_state->intel_dpll;
>  	unsigned int pipe_mask = intel_crtc_joined_pipe_mask(crtc_state);
>  	unsigned int old_mask;
>  
> @@ -305,7 +305,7 @@ void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct intel_shared_dpll *pll = crtc_state->shared_dpll;
> +	struct intel_dpll *pll = crtc_state->intel_dpll;
>  	unsigned int pipe_mask = intel_crtc_joined_pipe_mask(crtc_state);
>  
>  	/* PCH only available on ILK+ */
> @@ -344,7 +344,7 @@ void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
>  static unsigned long
>  intel_dpll_mask_all(struct intel_display *display)
>  {
> -	struct intel_shared_dpll *pll;
> +	struct intel_dpll *pll;
>  	unsigned long dpll_mask = 0;
>  	int i;
>  
> @@ -357,7 +357,7 @@ intel_dpll_mask_all(struct intel_display *display)
>  	return dpll_mask;
>  }
>  
> -static struct intel_shared_dpll *
> +static struct intel_dpll *
>  intel_find_shared_dpll(struct intel_atomic_state *state,
>  		       const struct intel_crtc *crtc,
>  		       const struct intel_dpll_hw_state *dpll_hw_state,
> @@ -366,7 +366,7 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
>  	struct intel_display *display = to_intel_display(crtc);
>  	unsigned long dpll_mask_all = intel_dpll_mask_all(display);
>  	struct intel_dpll_state *dpll_state;
> -	struct intel_shared_dpll *unused_pll = NULL;
> +	struct intel_dpll *unused_pll = NULL;
>  	enum intel_dpll_id id;
>  
>  	dpll_state = intel_atomic_get_shared_dpll_state(&state->base);
> @@ -374,7 +374,7 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
>  	drm_WARN_ON(display->drm, dpll_mask & ~dpll_mask_all);
>  
>  	for_each_set_bit(id, &dpll_mask, fls(dpll_mask_all)) {
> -		struct intel_shared_dpll *pll;
> +		struct intel_dpll *pll;
>  
>  		pll = intel_get_shared_dpll_by_id(display, id);
>  		if (!pll)
> @@ -421,7 +421,7 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
>   */
>  static void
>  intel_reference_shared_dpll_crtc(const struct intel_crtc *crtc,
> -				 const struct intel_shared_dpll *pll,
> +				 const struct intel_dpll *pll,
>  				 struct intel_dpll_state *dpll_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc);
> @@ -437,7 +437,7 @@ intel_reference_shared_dpll_crtc(const struct intel_crtc *crtc,
>  static void
>  intel_reference_shared_dpll(struct intel_atomic_state *state,
>  			    const struct intel_crtc *crtc,
> -			    const struct intel_shared_dpll *pll,
> +			    const struct intel_dpll *pll,
>  			    const struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	struct intel_dpll_state *dpll_state;
> @@ -460,7 +460,7 @@ intel_reference_shared_dpll(struct intel_atomic_state *state,
>   */
>  void
>  intel_unreference_shared_dpll_crtc(const struct intel_crtc *crtc,
> -				   const struct intel_shared_dpll *pll,
> +				   const struct intel_dpll *pll,
>  				   struct intel_dpll_state *dpll_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc);
> @@ -475,7 +475,7 @@ intel_unreference_shared_dpll_crtc(const struct intel_crtc *crtc,
>  
>  static void intel_unreference_shared_dpll(struct intel_atomic_state *state,
>  					  const struct intel_crtc *crtc,
> -					  const struct intel_shared_dpll *pll)
> +					  const struct intel_dpll *pll)
>  {
>  	struct intel_dpll_state *dpll_state;
>  
> @@ -492,12 +492,12 @@ static void intel_put_dpll(struct intel_atomic_state *state,
>  	struct intel_crtc_state *new_crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  
> -	new_crtc_state->shared_dpll = NULL;
> +	new_crtc_state->intel_dpll = NULL;
>  
> -	if (!old_crtc_state->shared_dpll)
> +	if (!old_crtc_state->intel_dpll)
>  		return;
>  
> -	intel_unreference_shared_dpll(state, crtc, old_crtc_state->shared_dpll);
> +	intel_unreference_shared_dpll(state, crtc, old_crtc_state->intel_dpll);
>  }
>  
>  /**
> @@ -515,7 +515,7 @@ void intel_shared_dpll_swap_state(struct intel_atomic_state *state)
>  {
>  	struct intel_display *display = to_intel_display(state);
>  	struct intel_dpll_state *dpll_state = state->dpll_state;
> -	struct intel_shared_dpll *pll;
> +	struct intel_dpll *pll;
>  	int i;
>  
>  	if (!state->dpll_set)
> @@ -526,7 +526,7 @@ void intel_shared_dpll_swap_state(struct intel_atomic_state *state)
>  }
>  
>  static bool ibx_pch_dpll_get_hw_state(struct intel_display *display,
> -				      struct intel_shared_dpll *pll,
> +				      struct intel_dpll *pll,
>  				      struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	struct i9xx_dpll_hw_state *hw_state = &dpll_hw_state->i9xx;
> @@ -562,7 +562,7 @@ static void ibx_assert_pch_refclk_enabled(struct intel_display *display)
>  }
>  
>  static void ibx_pch_dpll_enable(struct intel_display *display,
> -				struct intel_shared_dpll *pll,
> +				struct intel_dpll *pll,
>  				const struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	const struct i9xx_dpll_hw_state *hw_state = &dpll_hw_state->i9xx;
> @@ -591,7 +591,7 @@ static void ibx_pch_dpll_enable(struct intel_display *display,
>  }
>  
>  static void ibx_pch_dpll_disable(struct intel_display *display,
> -				 struct intel_shared_dpll *pll)
> +				 struct intel_dpll *pll)
>  {
>  	const enum intel_dpll_id id = pll->info->id;
>  
> @@ -614,7 +614,7 @@ static int ibx_get_dpll(struct intel_atomic_state *state,
>  	struct intel_display *display = to_intel_display(state);
>  	struct intel_crtc_state *crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
> -	struct intel_shared_dpll *pll;
> +	struct intel_dpll *pll;
>  	enum intel_dpll_id id;
>  
>  	if (HAS_PCH_IBX(display)) {
> @@ -640,7 +640,7 @@ static int ibx_get_dpll(struct intel_atomic_state *state,
>  	intel_reference_shared_dpll(state, crtc,
>  				    pll, &crtc_state->dpll_hw_state);
>  
> -	crtc_state->shared_dpll = pll;
> +	crtc_state->intel_dpll = pll;
>  
>  	return 0;
>  }
> @@ -692,7 +692,7 @@ static const struct intel_dpll_mgr pch_pll_mgr = {
>  };
>  
>  static void hsw_ddi_wrpll_enable(struct intel_display *display,
> -				 struct intel_shared_dpll *pll,
> +				 struct intel_dpll *pll,
>  				 const struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	const struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
> @@ -704,7 +704,7 @@ static void hsw_ddi_wrpll_enable(struct intel_display *display,
>  }
>  
>  static void hsw_ddi_spll_enable(struct intel_display *display,
> -				struct intel_shared_dpll *pll,
> +				struct intel_dpll *pll,
>  				const struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	const struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
> @@ -715,7 +715,7 @@ static void hsw_ddi_spll_enable(struct intel_display *display,
>  }
>  
>  static void hsw_ddi_wrpll_disable(struct intel_display *display,
> -				  struct intel_shared_dpll *pll)
> +				  struct intel_dpll *pll)
>  {
>  	const enum intel_dpll_id id = pll->info->id;
>  
> @@ -731,7 +731,7 @@ static void hsw_ddi_wrpll_disable(struct intel_display *display,
>  }
>  
>  static void hsw_ddi_spll_disable(struct intel_display *display,
> -				 struct intel_shared_dpll *pll)
> +				 struct intel_dpll *pll)
>  {
>  	enum intel_dpll_id id = pll->info->id;
>  
> @@ -747,7 +747,7 @@ static void hsw_ddi_spll_disable(struct intel_display *display,
>  }
>  
>  static bool hsw_ddi_wrpll_get_hw_state(struct intel_display *display,
> -				       struct intel_shared_dpll *pll,
> +				       struct intel_dpll *pll,
>  				       struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
> @@ -769,7 +769,7 @@ static bool hsw_ddi_wrpll_get_hw_state(struct intel_display *display,
>  }
>  
>  static bool hsw_ddi_spll_get_hw_state(struct intel_display *display,
> -				      struct intel_shared_dpll *pll,
> +				      struct intel_dpll *pll,
>  				      struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
> @@ -996,7 +996,7 @@ hsw_ddi_calculate_wrpll(int clock /* in Hz */,
>  }
>  
>  static int hsw_ddi_wrpll_get_freq(struct intel_display *display,
> -				  const struct intel_shared_dpll *pll,
> +				  const struct intel_dpll *pll,
>  				  const struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	const struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
> @@ -1059,7 +1059,7 @@ hsw_ddi_wrpll_compute_dpll(struct intel_atomic_state *state,
>  	return 0;
>  }
>  
> -static struct intel_shared_dpll *
> +static struct intel_dpll *
>  hsw_ddi_wrpll_get_dpll(struct intel_atomic_state *state,
>  		       struct intel_crtc *crtc)
>  {
> @@ -1090,11 +1090,11 @@ hsw_ddi_lcpll_compute_dpll(struct intel_crtc_state *crtc_state)
>  	}
>  }
>  
> -static struct intel_shared_dpll *
> +static struct intel_dpll *
>  hsw_ddi_lcpll_get_dpll(struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
> -	struct intel_shared_dpll *pll;
> +	struct intel_dpll *pll;
>  	enum intel_dpll_id pll_id;
>  	int clock = crtc_state->port_clock;
>  
> @@ -1122,7 +1122,7 @@ hsw_ddi_lcpll_get_dpll(struct intel_crtc_state *crtc_state)
>  }
>  
>  static int hsw_ddi_lcpll_get_freq(struct intel_display *display,
> -				  const struct intel_shared_dpll *pll,
> +				  const struct intel_dpll *pll,
>  				  const struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	int link_clock = 0;
> @@ -1162,7 +1162,7 @@ hsw_ddi_spll_compute_dpll(struct intel_atomic_state *state,
>  	return 0;
>  }
>  
> -static struct intel_shared_dpll *
> +static struct intel_dpll *
>  hsw_ddi_spll_get_dpll(struct intel_atomic_state *state,
>  		      struct intel_crtc *crtc)
>  {
> @@ -1174,7 +1174,7 @@ hsw_ddi_spll_get_dpll(struct intel_atomic_state *state,
>  }
>  
>  static int hsw_ddi_spll_get_freq(struct intel_display *display,
> -				 const struct intel_shared_dpll *pll,
> +				 const struct intel_dpll *pll,
>  				 const struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	const struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
> @@ -1221,7 +1221,7 @@ static int hsw_get_dpll(struct intel_atomic_state *state,
>  {
>  	struct intel_crtc_state *crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
> -	struct intel_shared_dpll *pll = NULL;
> +	struct intel_dpll *pll = NULL;
>  
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
>  		pll = hsw_ddi_wrpll_get_dpll(state, crtc);
> @@ -1236,7 +1236,7 @@ static int hsw_get_dpll(struct intel_atomic_state *state,
>  	intel_reference_shared_dpll(state, crtc,
>  				    pll, &crtc_state->dpll_hw_state);
>  
> -	crtc_state->shared_dpll = pll;
> +	crtc_state->intel_dpll = pll;
>  
>  	return 0;
>  }
> @@ -1285,18 +1285,18 @@ static const struct intel_dpll_funcs hsw_ddi_spll_funcs = {
>  };
>  
>  static void hsw_ddi_lcpll_enable(struct intel_display *display,
> -				 struct intel_shared_dpll *pll,
> +				 struct intel_dpll *pll,
>  				 const struct intel_dpll_hw_state *hw_state)
>  {
>  }
>  
>  static void hsw_ddi_lcpll_disable(struct intel_display *display,
> -				  struct intel_shared_dpll *pll)
> +				  struct intel_dpll *pll)
>  {
>  }
>  
>  static bool hsw_ddi_lcpll_get_hw_state(struct intel_display *display,
> -				       struct intel_shared_dpll *pll,
> +				       struct intel_dpll *pll,
>  				       struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	return true;
> @@ -1364,7 +1364,7 @@ static const struct skl_dpll_regs skl_dpll_regs[4] = {
>  };
>  
>  static void skl_ddi_pll_write_ctrl1(struct intel_display *display,
> -				    struct intel_shared_dpll *pll,
> +				    struct intel_dpll *pll,
>  				    const struct skl_dpll_hw_state *hw_state)
>  {
>  	const enum intel_dpll_id id = pll->info->id;
> @@ -1378,7 +1378,7 @@ static void skl_ddi_pll_write_ctrl1(struct intel_display *display,
>  }
>  
>  static void skl_ddi_pll_enable(struct intel_display *display,
> -			       struct intel_shared_dpll *pll,
> +			       struct intel_dpll *pll,
>  			       const struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	const struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
> @@ -1400,7 +1400,7 @@ static void skl_ddi_pll_enable(struct intel_display *display,
>  }
>  
>  static void skl_ddi_dpll0_enable(struct intel_display *display,
> -				 struct intel_shared_dpll *pll,
> +				 struct intel_dpll *pll,
>  				 const struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	const struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
> @@ -1409,7 +1409,7 @@ static void skl_ddi_dpll0_enable(struct intel_display *display,
>  }
>  
>  static void skl_ddi_pll_disable(struct intel_display *display,
> -				struct intel_shared_dpll *pll)
> +				struct intel_dpll *pll)
>  {
>  	const struct skl_dpll_regs *regs = skl_dpll_regs;
>  	const enum intel_dpll_id id = pll->info->id;
> @@ -1420,12 +1420,12 @@ static void skl_ddi_pll_disable(struct intel_display *display,
>  }
>  
>  static void skl_ddi_dpll0_disable(struct intel_display *display,
> -				  struct intel_shared_dpll *pll)
> +				  struct intel_dpll *pll)
>  {
>  }
>  
>  static bool skl_ddi_pll_get_hw_state(struct intel_display *display,
> -				     struct intel_shared_dpll *pll,
> +				     struct intel_dpll *pll,
>  				     struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
> @@ -1463,7 +1463,7 @@ static bool skl_ddi_pll_get_hw_state(struct intel_display *display,
>  }
>  
>  static bool skl_ddi_dpll0_get_hw_state(struct intel_display *display,
> -				       struct intel_shared_dpll *pll,
> +				       struct intel_dpll *pll,
>  				       struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
> @@ -1736,7 +1736,7 @@ skl_ddi_calculate_wrpll(int clock,
>  }
>  
>  static int skl_ddi_wrpll_get_freq(struct intel_display *display,
> -				  const struct intel_shared_dpll *pll,
> +				  const struct intel_dpll *pll,
>  				  const struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	const struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
> @@ -1884,7 +1884,7 @@ skl_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
>  }
>  
>  static int skl_ddi_lcpll_get_freq(struct intel_display *display,
> -				  const struct intel_shared_dpll *pll,
> +				  const struct intel_dpll *pll,
>  				  const struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	const struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
> @@ -1939,7 +1939,7 @@ static int skl_get_dpll(struct intel_atomic_state *state,
>  {
>  	struct intel_crtc_state *crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
> -	struct intel_shared_dpll *pll;
> +	struct intel_dpll *pll;
>  
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
>  		pll = intel_find_shared_dpll(state, crtc,
> @@ -1957,13 +1957,13 @@ static int skl_get_dpll(struct intel_atomic_state *state,
>  	intel_reference_shared_dpll(state, crtc,
>  				    pll, &crtc_state->dpll_hw_state);
>  
> -	crtc_state->shared_dpll = pll;
> +	crtc_state->intel_dpll = pll;
>  
>  	return 0;
>  }
>  
>  static int skl_ddi_pll_get_freq(struct intel_display *display,
> -				const struct intel_shared_dpll *pll,
> +				const struct intel_dpll *pll,
>  				const struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	const struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
> @@ -2038,7 +2038,7 @@ static const struct intel_dpll_mgr skl_pll_mgr = {
>  };
>  
>  static void bxt_ddi_pll_enable(struct intel_display *display,
> -			       struct intel_shared_dpll *pll,
> +			       struct intel_dpll *pll,
>  			       const struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	const struct bxt_dpll_hw_state *hw_state = &dpll_hw_state->bxt;
> @@ -2141,7 +2141,7 @@ static void bxt_ddi_pll_enable(struct intel_display *display,
>  }
>  
>  static void bxt_ddi_pll_disable(struct intel_display *display,
> -				struct intel_shared_dpll *pll)
> +				struct intel_dpll *pll)
>  {
>  	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
>  
> @@ -2160,7 +2160,7 @@ static void bxt_ddi_pll_disable(struct intel_display *display,
>  }
>  
>  static bool bxt_ddi_pll_get_hw_state(struct intel_display *display,
> -				     struct intel_shared_dpll *pll,
> +				     struct intel_dpll *pll,
>  				     struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	struct bxt_dpll_hw_state *hw_state = &dpll_hw_state->bxt;
> @@ -2360,7 +2360,7 @@ static int bxt_ddi_set_dpll_hw_state(struct intel_crtc_state *crtc_state,
>  }
>  
>  static int bxt_ddi_pll_get_freq(struct intel_display *display,
> -				const struct intel_shared_dpll *pll,
> +				const struct intel_dpll *pll,
>  				const struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	const struct bxt_dpll_hw_state *hw_state = &dpll_hw_state->bxt;
> @@ -2429,7 +2429,7 @@ static int bxt_get_dpll(struct intel_atomic_state *state,
>  	struct intel_display *display = to_intel_display(state);
>  	struct intel_crtc_state *crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
> -	struct intel_shared_dpll *pll;
> +	struct intel_dpll *pll;
>  	enum intel_dpll_id id;
>  
>  	/* 1:1 mapping between ports and PLLs */
> @@ -2442,7 +2442,7 @@ static int bxt_get_dpll(struct intel_atomic_state *state,
>  	intel_reference_shared_dpll(state, crtc,
>  				    pll, &crtc_state->dpll_hw_state);
>  
> -	crtc_state->shared_dpll = pll;
> +	crtc_state->intel_dpll = pll;
>  
>  	return 0;
>  }
> @@ -2755,7 +2755,7 @@ static int icl_calc_tbt_pll(struct intel_crtc_state *crtc_state,
>  }
>  
>  static int icl_ddi_tbt_pll_get_freq(struct intel_display *display,
> -				    const struct intel_shared_dpll *pll,
> +				    const struct intel_dpll *pll,
>  				    const struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	/*
> @@ -2826,7 +2826,7 @@ icl_calc_wrpll(struct intel_crtc_state *crtc_state,
>  }
>  
>  static int icl_ddi_combo_pll_get_freq(struct intel_display *display,
> -				      const struct intel_shared_dpll *pll,
> +				      const struct intel_dpll *pll,
>  				      const struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	const struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
> @@ -3199,7 +3199,7 @@ static int icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
>  }
>  
>  static int icl_ddi_mg_pll_get_freq(struct intel_display *display,
> -				   const struct intel_shared_dpll *pll,
> +				   const struct intel_dpll *pll,
>  				   const struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	const struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
> @@ -3285,7 +3285,7 @@ void icl_set_active_port_dpll(struct intel_crtc_state *crtc_state,
>  	struct icl_port_dpll *port_dpll =
>  		&crtc_state->icl_port_dplls[port_dpll_id];
>  
> -	crtc_state->shared_dpll = port_dpll->pll;
> +	crtc_state->intel_dpll = port_dpll->pll;
>  	crtc_state->dpll_hw_state = port_dpll->hw_state;
>  }
>  
> @@ -3428,8 +3428,8 @@ static int icl_compute_tc_phy_dplls(struct intel_atomic_state *state,
>  		return ret;
>  
>  	/* this is mainly for the fastset check */
> -	if (old_crtc_state->shared_dpll &&
> -	    old_crtc_state->shared_dpll->info->id == DPLL_ID_ICL_TBTPLL)
> +	if (old_crtc_state->intel_dpll &&
> +	    old_crtc_state->intel_dpll->info->id == DPLL_ID_ICL_TBTPLL)
>  		icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_DEFAULT);
>  	else
>  		icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_MG_PHY);
> @@ -3521,7 +3521,7 @@ static void icl_put_dplls(struct intel_atomic_state *state,
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	enum icl_port_dpll_id id;
>  
> -	new_crtc_state->shared_dpll = NULL;
> +	new_crtc_state->intel_dpll = NULL;
>  
>  	for (id = ICL_PORT_DPLL_DEFAULT; id < ICL_PORT_DPLL_COUNT; id++) {
>  		const struct icl_port_dpll *old_port_dpll =
> @@ -3539,7 +3539,7 @@ static void icl_put_dplls(struct intel_atomic_state *state,
>  }
>  
>  static bool mg_pll_get_hw_state(struct intel_display *display,
> -				struct intel_shared_dpll *pll,
> +				struct intel_dpll *pll,
>  				struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
> @@ -3606,7 +3606,7 @@ static bool mg_pll_get_hw_state(struct intel_display *display,
>  }
>  
>  static bool dkl_pll_get_hw_state(struct intel_display *display,
> -				 struct intel_shared_dpll *pll,
> +				 struct intel_dpll *pll,
>  				 struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
> @@ -3678,7 +3678,7 @@ static bool dkl_pll_get_hw_state(struct intel_display *display,
>  }
>  
>  static bool icl_pll_get_hw_state(struct intel_display *display,
> -				 struct intel_shared_dpll *pll,
> +				 struct intel_dpll *pll,
>  				 struct intel_dpll_hw_state *dpll_hw_state,
>  				 i915_reg_t enable_reg)
>  {
> @@ -3739,7 +3739,7 @@ static bool icl_pll_get_hw_state(struct intel_display *display,
>  }
>  
>  static bool combo_pll_get_hw_state(struct intel_display *display,
> -				   struct intel_shared_dpll *pll,
> +				   struct intel_dpll *pll,
>  				   struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	i915_reg_t enable_reg = intel_combo_pll_enable_reg(display, pll);
> @@ -3748,14 +3748,14 @@ static bool combo_pll_get_hw_state(struct intel_display *display,
>  }
>  
>  static bool tbt_pll_get_hw_state(struct intel_display *display,
> -				 struct intel_shared_dpll *pll,
> +				 struct intel_dpll *pll,
>  				 struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	return icl_pll_get_hw_state(display, pll, dpll_hw_state, TBT_PLL_ENABLE);
>  }
>  
>  static void icl_dpll_write(struct intel_display *display,
> -			   struct intel_shared_dpll *pll,
> +			   struct intel_dpll *pll,
>  			   const struct icl_dpll_hw_state *hw_state)
>  {
>  	const enum intel_dpll_id id = pll->info->id;
> @@ -3797,7 +3797,7 @@ static void icl_dpll_write(struct intel_display *display,
>  }
>  
>  static void icl_mg_pll_write(struct intel_display *display,
> -			     struct intel_shared_dpll *pll,
> +			     struct intel_dpll *pll,
>  			     const struct icl_dpll_hw_state *hw_state)
>  {
>  	enum tc_port tc_port = icl_pll_id_to_tc_port(pll->info->id);
> @@ -3840,7 +3840,7 @@ static void icl_mg_pll_write(struct intel_display *display,
>  }
>  
>  static void dkl_pll_write(struct intel_display *display,
> -			  struct intel_shared_dpll *pll,
> +			  struct intel_dpll *pll,
>  			  const struct icl_dpll_hw_state *hw_state)
>  {
>  	enum tc_port tc_port = icl_pll_id_to_tc_port(pll->info->id);
> @@ -3905,7 +3905,7 @@ static void dkl_pll_write(struct intel_display *display,
>  }
>  
>  static void icl_pll_power_enable(struct intel_display *display,
> -				 struct intel_shared_dpll *pll,
> +				 struct intel_dpll *pll,
>  				 i915_reg_t enable_reg)
>  {
>  	intel_de_rmw(display, enable_reg, 0, PLL_POWER_ENABLE);
> @@ -3920,7 +3920,7 @@ static void icl_pll_power_enable(struct intel_display *display,
>  }
>  
>  static void icl_pll_enable(struct intel_display *display,
> -			   struct intel_shared_dpll *pll,
> +			   struct intel_dpll *pll,
>  			   i915_reg_t enable_reg)
>  {
>  	intel_de_rmw(display, enable_reg, 0, PLL_ENABLE);
> @@ -3930,7 +3930,7 @@ static void icl_pll_enable(struct intel_display *display,
>  		drm_err(display->drm, "PLL %d not locked\n", pll->info->id);
>  }
>  
> -static void adlp_cmtg_clock_gating_wa(struct intel_display *display, struct intel_shared_dpll *pll)
> +static void adlp_cmtg_clock_gating_wa(struct intel_display *display, struct intel_dpll *pll)
>  {
>  	u32 val;
>  
> @@ -3955,7 +3955,7 @@ static void adlp_cmtg_clock_gating_wa(struct intel_display *display, struct inte
>  }
>  
>  static void combo_pll_enable(struct intel_display *display,
> -			     struct intel_shared_dpll *pll,
> +			     struct intel_dpll *pll,
>  			     const struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	const struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
> @@ -3979,7 +3979,7 @@ static void combo_pll_enable(struct intel_display *display,
>  }
>  
>  static void tbt_pll_enable(struct intel_display *display,
> -			   struct intel_shared_dpll *pll,
> +			   struct intel_dpll *pll,
>  			   const struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	const struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
> @@ -4000,7 +4000,7 @@ static void tbt_pll_enable(struct intel_display *display,
>  }
>  
>  static void mg_pll_enable(struct intel_display *display,
> -			  struct intel_shared_dpll *pll,
> +			  struct intel_dpll *pll,
>  			  const struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	const struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
> @@ -4025,7 +4025,7 @@ static void mg_pll_enable(struct intel_display *display,
>  }
>  
>  static void icl_pll_disable(struct intel_display *display,
> -			    struct intel_shared_dpll *pll,
> +			    struct intel_dpll *pll,
>  			    i915_reg_t enable_reg)
>  {
>  	/* The first steps are done by intel_ddi_post_disable(). */
> @@ -4056,7 +4056,7 @@ static void icl_pll_disable(struct intel_display *display,
>  }
>  
>  static void combo_pll_disable(struct intel_display *display,
> -			      struct intel_shared_dpll *pll)
> +			      struct intel_dpll *pll)
>  {
>  	i915_reg_t enable_reg = intel_combo_pll_enable_reg(display, pll);
>  
> @@ -4064,13 +4064,13 @@ static void combo_pll_disable(struct intel_display *display,
>  }
>  
>  static void tbt_pll_disable(struct intel_display *display,
> -			    struct intel_shared_dpll *pll)
> +			    struct intel_dpll *pll)
>  {
>  	icl_pll_disable(display, pll, TBT_PLL_ENABLE);
>  }
>  
>  static void mg_pll_disable(struct intel_display *display,
> -			   struct intel_shared_dpll *pll)
> +			   struct intel_dpll *pll)
>  {
>  	i915_reg_t enable_reg = intel_tc_pll_enable_reg(display, pll);
>  
> @@ -4346,19 +4346,19 @@ void intel_shared_dpll_init(struct intel_display *display)
>  
>  	for (i = 0; dpll_info[i].name; i++) {
>  		if (drm_WARN_ON(display->drm,
> -				i >= ARRAY_SIZE(display->dpll.shared_dplls)))
> +				i >= ARRAY_SIZE(display->dpll.dplls)))
>  			break;
>  
>  		/* must fit into unsigned long bitmask on 32bit */
>  		if (drm_WARN_ON(display->drm, dpll_info[i].id >= 32))
>  			break;
>  
> -		display->dpll.shared_dplls[i].info = &dpll_info[i];
> -		display->dpll.shared_dplls[i].index = i;
> +		display->dpll.dplls[i].info = &dpll_info[i];
> +		display->dpll.dplls[i].index = i;
>  	}
>  
>  	display->dpll.mgr = dpll_mgr;
> -	display->dpll.num_shared_dpll = i;
> +	display->dpll.num_dpll = i;
>  }
>  
>  /**
> @@ -4482,7 +4482,7 @@ void intel_update_active_dpll(struct intel_atomic_state *state,
>   * Return the output frequency corresponding to @pll's passed in @dpll_hw_state.
>   */
>  int intel_dpll_get_freq(struct intel_display *display,
> -			const struct intel_shared_dpll *pll,
> +			const struct intel_dpll *pll,
>  			const struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	if (drm_WARN_ON(display->drm, !pll->info->funcs->get_freq))
> @@ -4500,14 +4500,14 @@ int intel_dpll_get_freq(struct intel_display *display,
>   * Read out @pll's hardware state into @dpll_hw_state.
>   */
>  bool intel_dpll_get_hw_state(struct intel_display *display,
> -			     struct intel_shared_dpll *pll,
> +			     struct intel_dpll *pll,
>  			     struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	return pll->info->funcs->get_hw_state(display, pll, dpll_hw_state);
>  }
>  
>  static void readout_dpll_hw_state(struct intel_display *display,
> -				  struct intel_shared_dpll *pll)
> +				  struct intel_dpll *pll)
>  {
>  	struct intel_crtc *crtc;
>  
> @@ -4521,7 +4521,7 @@ static void readout_dpll_hw_state(struct intel_display *display,
>  		struct intel_crtc_state *crtc_state =
>  			to_intel_crtc_state(crtc->base.state);
>  
> -		if (crtc_state->hw.active && crtc_state->shared_dpll == pll)
> +		if (crtc_state->hw.active && crtc_state->intel_dpll == pll)
>  			intel_reference_shared_dpll_crtc(crtc, pll, &pll->state);
>  	}
>  	pll->active_mask = pll->state.pipe_mask;
> @@ -4539,7 +4539,7 @@ void intel_dpll_update_ref_clks(struct intel_display *display)
>  
>  void intel_dpll_readout_hw_state(struct intel_display *display)
>  {
> -	struct intel_shared_dpll *pll;
> +	struct intel_dpll *pll;
>  	int i;
>  
>  	for_each_dpll(display, pll, i)
> @@ -4547,7 +4547,7 @@ void intel_dpll_readout_hw_state(struct intel_display *display)
>  }
>  
>  static void sanitize_dpll_state(struct intel_display *display,
> -				struct intel_shared_dpll *pll)
> +				struct intel_dpll *pll)
>  {
>  	if (!pll->on)
>  		return;
> @@ -4566,7 +4566,7 @@ static void sanitize_dpll_state(struct intel_display *display,
>  
>  void intel_dpll_sanitize_state(struct intel_display *display)
>  {
> -	struct intel_shared_dpll *pll;
> +	struct intel_dpll *pll;
>  	int i;
>  
>  	intel_cx0_pll_power_save_wa(display);
> @@ -4623,7 +4623,7 @@ bool intel_dpll_compare_hw_state(struct intel_display *display,
>  
>  static void
>  verify_single_dpll_state(struct intel_display *display,
> -			 struct intel_shared_dpll *pll,
> +			 struct intel_dpll *pll,
>  			 struct intel_crtc *crtc,
>  			 const struct intel_crtc_state *new_crtc_state)
>  {
> @@ -4676,8 +4676,8 @@ verify_single_dpll_state(struct intel_display *display,
>  				 pll->info->name);
>  }
>  
> -static bool has_alt_port_dpll(const struct intel_shared_dpll *old_pll,
> -			      const struct intel_shared_dpll *new_pll)
> +static bool has_alt_port_dpll(const struct intel_dpll *old_pll,
> +			      const struct intel_dpll *new_pll)
>  {
>  	return old_pll && new_pll && old_pll != new_pll &&
>  		(old_pll->info->is_alt_port_dpll || new_pll->info->is_alt_port_dpll);
> @@ -4692,22 +4692,22 @@ void intel_shared_dpll_state_verify(struct intel_atomic_state *state,
>  	const struct intel_crtc_state *new_crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  
> -	if (new_crtc_state->shared_dpll)
> -		verify_single_dpll_state(display, new_crtc_state->shared_dpll,
> +	if (new_crtc_state->intel_dpll)
> +		verify_single_dpll_state(display, new_crtc_state->intel_dpll,
>  					 crtc, new_crtc_state);
>  
> -	if (old_crtc_state->shared_dpll &&
> -	    old_crtc_state->shared_dpll != new_crtc_state->shared_dpll) {
> +	if (old_crtc_state->intel_dpll &&
> +	    old_crtc_state->intel_dpll != new_crtc_state->intel_dpll) {
>  		u8 pipe_mask = BIT(crtc->pipe);
> -		struct intel_shared_dpll *pll = old_crtc_state->shared_dpll;
> +		struct intel_dpll *pll = old_crtc_state->intel_dpll;
>  
>  		INTEL_DISPLAY_STATE_WARN(display, pll->active_mask & pipe_mask,
>  					 "%s: pll active mismatch (didn't expect pipe %c in active mask (0x%x))\n",
>  					 pll->info->name, pipe_name(crtc->pipe), pll->active_mask);
>  
>  		/* TC ports have both MG/TC and TBT PLL referenced simultaneously */
> -		INTEL_DISPLAY_STATE_WARN(display, !has_alt_port_dpll(old_crtc_state->shared_dpll,
> -								     new_crtc_state->shared_dpll) &&
> +		INTEL_DISPLAY_STATE_WARN(display, !has_alt_port_dpll(old_crtc_state->intel_dpll,
> +								     new_crtc_state->intel_dpll) &&
>  					 pll->state.pipe_mask & pipe_mask,
>  					 "%s: pll enabled crtcs mismatch (found pipe %c in enabled mask (0x%x))\n",
>  					 pll->info->name, pipe_name(crtc->pipe), pll->state.pipe_mask);
> @@ -4717,7 +4717,7 @@ void intel_shared_dpll_state_verify(struct intel_atomic_state *state,
>  void intel_shared_dpll_verify_disabled(struct intel_atomic_state *state)
>  {
>  	struct intel_display *display = to_intel_display(state);
> -	struct intel_shared_dpll *pll;
> +	struct intel_dpll *pll;
>  	int i;
>  
>  	for_each_dpll(display, pll, i)
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> index 28f464d504fb..ea3fb7002e65 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -31,8 +31,8 @@
>  #include "intel_wakeref.h"
>  
>  #define for_each_dpll(__display, __pll, __i) \
> -	for ((__i) = 0; (__i) < (__display)->dpll.num_shared_dpll && \
> -		     ((__pll) = &(__display)->dpll.shared_dplls[(__i)]) ; (__i)++)
> +	for ((__i) = 0; (__i) < (__display)->dpll.num_dpll && \
> +		     ((__pll) = &(__display)->dpll.dplls[(__i)]) ; (__i)++)
>  
>  enum tc_port;
>  struct drm_printer;
> @@ -344,9 +344,9 @@ struct dpll_info {
>  };
>  
>  /**
> - * struct intel_shared_dpll - display PLL with tracked state and users
> + * struct intel_dpll - display PLL with tracked state and users
>   */
> -struct intel_shared_dpll {
> +struct intel_dpll {
>  	/**
>  	 * @state:
>  	 *
> @@ -388,11 +388,11 @@ struct intel_shared_dpll {
>  #define SKL_DPLL3 3
>  
>  /* shared dpll functions */
> -struct intel_shared_dpll *
> +struct intel_dpll *
>  intel_get_shared_dpll_by_id(struct intel_display *display,
>  			    enum intel_dpll_id id);
>  void assert_shared_dpll(struct intel_display *display,
> -			struct intel_shared_dpll *pll,
> +			struct intel_dpll *pll,
>  			bool state);
>  #define assert_shared_dpll_enabled(d, p) assert_shared_dpll(d, p, true)
>  #define assert_shared_dpll_disabled(d, p) assert_shared_dpll(d, p, false)
> @@ -405,7 +405,7 @@ int intel_reserve_shared_dplls(struct intel_atomic_state *state,
>  void intel_release_shared_dplls(struct intel_atomic_state *state,
>  				struct intel_crtc *crtc);
>  void intel_unreference_shared_dpll_crtc(const struct intel_crtc *crtc,
> -					const struct intel_shared_dpll *pll,
> +					const struct intel_dpll *pll,
>  					struct intel_dpll_state *shared_dpll_state);
>  void icl_set_active_port_dpll(struct intel_crtc_state *crtc_state,
>  			      enum icl_port_dpll_id port_dpll_id);
> @@ -413,10 +413,10 @@ void intel_update_active_dpll(struct intel_atomic_state *state,
>  			      struct intel_crtc *crtc,
>  			      struct intel_encoder *encoder);
>  int intel_dpll_get_freq(struct intel_display *display,
> -			const struct intel_shared_dpll *pll,
> +			const struct intel_dpll *pll,
>  			const struct intel_dpll_hw_state *dpll_hw_state);
>  bool intel_dpll_get_hw_state(struct intel_display *display,
> -			     struct intel_shared_dpll *pll,
> +			     struct intel_dpll *pll,
>  			     struct intel_dpll_hw_state *dpll_hw_state);
>  void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state);
>  void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
> index 169bbe154b5c..b1d2ba9b7295 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> @@ -910,7 +910,7 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
>  	intel_de_write(display, FDI_RX_CTL(PIPE_A), rx_ctl_val);
>  
>  	/* Configure Port Clock Select */
> -	drm_WARN_ON(display->drm, crtc_state->shared_dpll->info->id != DPLL_ID_SPLL);
> +	drm_WARN_ON(display->drm, crtc_state->intel_dpll->info->id != DPLL_ID_SPLL);
>  	intel_ddi_enable_clock(encoder, crtc_state);
>  
>  	/* Start the training iterating through available voltages and emphasis,
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
> index 8ce7c630da52..ec8f38fba178 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -249,7 +249,7 @@ static void intel_pre_enable_lvds(struct intel_atomic_state *state,
>  
>  	if (HAS_PCH_SPLIT(display)) {
>  		assert_fdi_rx_pll_disabled(display, pipe);
> -		assert_shared_dpll_disabled(display, crtc_state->shared_dpll);
> +		assert_shared_dpll_disabled(display, crtc_state->intel_dpll);
>  	} else {
>  		assert_pll_disabled(display, pipe);
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index 0325b0c9506d..46e0002a1358 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -92,10 +92,10 @@ static void intel_crtc_disable_noatomic_begin(struct intel_crtc *crtc,
>  	crtc->active = false;
>  	crtc->base.enabled = false;
>  
> -	if (crtc_state->shared_dpll)
> +	if (crtc_state->intel_dpll)
>  		intel_unreference_shared_dpll_crtc(crtc,
> -						   crtc_state->shared_dpll,
> -						   &crtc_state->shared_dpll->state);
> +						   crtc_state->intel_dpll,
> +						   &crtc_state->intel_dpll->state);
>  }
>  
>  static void set_encoder_for_connector(struct intel_connector *connector,
> @@ -565,7 +565,7 @@ static bool has_bogus_dpll_config(const struct intel_crtc_state *crtc_state)
>  	 */
>  	return display->platform.sandybridge &&
>  		crtc_state->hw.active &&
> -		crtc_state->shared_dpll &&
> +		crtc_state->intel_dpll &&
>  		crtc_state->port_clock == 0;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
> index 1743ebf551cb..b38305c16e77 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> @@ -251,7 +251,7 @@ static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
>  	u32 val, pipeconf_val;
>  
>  	/* Make sure PCH DPLL is enabled */
> -	assert_shared_dpll_enabled(display, crtc_state->shared_dpll);
> +	assert_shared_dpll_enabled(display, crtc_state->intel_dpll);
>  
>  	/* FDI must be feeding us bits for PCH ports */
>  	assert_fdi_tx_enabled(display, pipe);
> @@ -381,7 +381,7 @@ void ilk_pch_enable(struct intel_atomic_state *state,
>  		temp = intel_de_read(display, PCH_DPLL_SEL);
>  		temp |= TRANS_DPLL_ENABLE(pipe);
>  		sel = TRANS_DPLLB_SEL(pipe);
> -		if (crtc_state->shared_dpll ==
> +		if (crtc_state->intel_dpll ==
>  		    intel_get_shared_dpll_by_id(display, DPLL_ID_PCH_PLL_B))
>  			temp |= sel;
>  		else
> @@ -496,7 +496,7 @@ void ilk_pch_get_config(struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct intel_shared_dpll *pll;
> +	struct intel_dpll *pll;
>  	enum pipe pipe = crtc->pipe;
>  	enum intel_dpll_id pll_id;
>  	bool pll_active;
> @@ -528,8 +528,8 @@ void ilk_pch_get_config(struct intel_crtc_state *crtc_state)
>  			pll_id = DPLL_ID_PCH_PLL_A;
>  	}
>  
> -	crtc_state->shared_dpll = intel_get_shared_dpll_by_id(display, pll_id);
> -	pll = crtc_state->shared_dpll;
> +	crtc_state->intel_dpll = intel_get_shared_dpll_by_id(display, pll_id);
> +	pll = crtc_state->intel_dpll;
>  
>  	pll_active = intel_dpll_get_hw_state(display, pll,
>  					     &crtc_state->dpll_hw_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> index 8bec55deff9f..9f6102d7c7be 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> @@ -499,7 +499,7 @@ static void lpt_init_pch_refclk(struct intel_display *display)
>  static void ilk_init_pch_refclk(struct intel_display *display)
>  {
>  	struct intel_encoder *encoder;
> -	struct intel_shared_dpll *pll;
> +	struct intel_dpll *pll;
>  	int i;
>  	u32 val, final;
>  	bool has_lvds = false;

-- 
Jani Nikula, Intel
