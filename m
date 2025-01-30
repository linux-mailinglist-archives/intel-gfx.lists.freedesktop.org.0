Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2AFA22DB3
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 14:25:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C959E10E95A;
	Thu, 30 Jan 2025 13:25:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="emvQITv7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B17EC10E969;
 Thu, 30 Jan 2025 13:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738243557; x=1769779557;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=woojDbsAaA4hQ6KymL5IRDbFQATUzhxa55b4z07Tdd0=;
 b=emvQITv7+DGhNO0fYU6fIggtAJ9jCFZ3GsCnG+j/b+B5XnvSxKglQneh
 pWReN4xcc386PPqhb44R92CgHWnFgSLpyhPyyEi9TUgav52nt22jd7qPl
 fpyByOMtCAtx0hwGSr+h8GchMk5/zvBcGXF4ZIglB6zgYv1K3PHJeLo9k
 bethtexYLwiLLzAvXZ3qhRrPxBhS5ImEMBsqGSP9yVgjyTtdYEDTH35Cl
 MPXJy97RhCwgKJlTugaJBt4BRRvcSmdZiGOhOoVq8oXWOTW9JhOz859Ep
 jA1v6wSMDDkLb2m+FRO0foaPP9OdcJYeUH4jaGOTJcCE3i/qkCELO4rJr g==;
X-CSE-ConnectionGUID: gtiIUA6cSCKRBFaEGKAQGw==
X-CSE-MsgGUID: N3VpSIlEQ6uVcvkU47Z2rw==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="50168694"
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="50168694"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 05:25:57 -0800
X-CSE-ConnectionGUID: mwGfp10mSYSki+BXFlkZqw==
X-CSE-MsgGUID: LyhLScimS4y52fLOyl+b+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="109306062"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 05:25:55 -0800
Date: Thu, 30 Jan 2025 15:26:49 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Mika Kahola <mika.kahola@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/2] drm/i915/display: Drop crtc_state from C10/C20 pll
 programming
Message-ID: <Z5t-Gad161BGEs6U@ideak-desk.fi.intel.com>
References: <20250129130105.198817-1-mika.kahola@intel.com>
 <20250129130105.198817-2-mika.kahola@intel.com>
 <87tt9h8z0e.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87tt9h8z0e.fsf@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 29, 2025 at 04:40:01PM +0200, Jani Nikula wrote:
> On Wed, 29 Jan 2025, Mika Kahola <mika.kahola@intel.com> wrote:
> > For PLL programming for C10 and C20 we don't need to
> > carry crtc_state but instead use only necessary parts
> > of the crtc_state i.e. pll_state.
> 
> This is not a good enough justification alone. Usually we pass
> crtc_state around because we're going to need more stuff from there
> anyway. In that case, someone's going to have to reverse this, or pass a
> bunch more parameters than just "is_dp".
> 
> I see that you're doing this because you actually need this in a context
> that doens't have crtc_state. Then *that* needs to be the rationale.
> 
> Even so, there's a good chance this will bite us later.

The problem with the alternative to create a temporary CRTC state and
pass that around is that this state would not be fully initialized. If
passing more parameters to the PLL functions (besides is_dp, port_clock,
lane_count) would be impractical due to the long parameter list, the
parameters could be passed instead via a cx0_pll_params structure.

> BR,
> Jani.
> 
> 
> >
> > Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 109 +++++++++++--------
> >  1 file changed, 64 insertions(+), 45 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > index 48b0b9755b2b..bffe3d4bbe8b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > @@ -2021,13 +2021,12 @@ intel_c10pll_tables_get(struct intel_crtc_state *crtc_state,
> >  	return NULL;
> >  }
> >  
> > -static void intel_cx0pll_update_ssc(struct intel_crtc_state *crtc_state,
> > -				    struct intel_encoder *encoder)
> > +static void intel_cx0pll_update_ssc(struct intel_encoder *encoder,
> > +				    struct intel_cx0pll_state *pll_state, bool is_dp)
> >  {
> >  	struct intel_display *display = to_intel_display(encoder);
> > -	struct intel_cx0pll_state *pll_state = &crtc_state->dpll_hw_state.cx0pll;
> >  
> > -	if (intel_crtc_has_dp_encoder(crtc_state)) {
> > +	if (is_dp) {
> >  		if (intel_panel_use_ssc(display)) {
> >  			struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> >  			pll_state->ssc_enabled =
> > @@ -2036,11 +2035,10 @@ static void intel_cx0pll_update_ssc(struct intel_crtc_state *crtc_state,
> >  	}
> >  }
> >  
> > -static void intel_c10pll_update_pll(struct intel_crtc_state *crtc_state,
> > -				    struct intel_encoder *encoder)
> > +static void intel_c10pll_update_pll(struct intel_encoder *encoder,
> > +				    struct intel_cx0pll_state *pll_state, bool is_dp)
> >  {
> >  	struct intel_display *display = to_intel_display(encoder);
> > -	struct intel_cx0pll_state *pll_state = &crtc_state->dpll_hw_state.cx0pll;
> >  	int i;
> >  
> >  	if (pll_state->ssc_enabled)
> > @@ -2051,32 +2049,49 @@ static void intel_c10pll_update_pll(struct intel_crtc_state *crtc_state,
> >  		pll_state->c10.pll[i] = 0;
> >  }
> >  
> > +static int intel_c10pll_calc_state_from_table(struct intel_encoder *encoder,
> > +					      const struct intel_c10pll_state * const *tables, int port_clock, bool is_dp,
> > +					      struct intel_cx0pll_state *pll_state)
> > +{
> > +	int i;
> > +
> > +	for (i = 0; tables[i]; i++) {
> > +		if (port_clock == tables[i]->clock) {
> > +			pll_state->c10 = *tables[i];
> > +			intel_cx0pll_update_ssc(encoder, pll_state, is_dp);
> > +			intel_c10pll_update_pll(encoder, pll_state, is_dp);
> > +			pll_state->use_c10 = true;
> > +
> > +			return 0;
> > +		}
> > +	}
> > +
> > +	return -EINVAL;
> > +}
> > +
> >  static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
> >  				   struct intel_encoder *encoder)
> >  {
> >  	const struct intel_c10pll_state * const *tables;
> > -	int i;
> > +	int val;
> >  
> >  	tables = intel_c10pll_tables_get(crtc_state, encoder);
> >  	if (!tables)
> >  		return -EINVAL;
> >  
> > -	for (i = 0; tables[i]; i++) {
> > -		if (crtc_state->port_clock == tables[i]->clock) {
> > -			crtc_state->dpll_hw_state.cx0pll.c10 = *tables[i];
> > -			intel_cx0pll_update_ssc(crtc_state, encoder);
> > -			intel_c10pll_update_pll(crtc_state, encoder);
> > -			crtc_state->dpll_hw_state.cx0pll.use_c10 = true;
> > -
> > -			return 0;
> > -		}
> > -	}
> > +	val = intel_c10pll_calc_state_from_table(encoder, tables,
> > +						 crtc_state->port_clock, intel_crtc_has_dp_encoder(crtc_state),
> > +						 &crtc_state->dpll_hw_state.cx0pll);
> > +	if (val == 0)
> > +		return 0;
> >  
> >  	/* For HDMI PLLs try SNPS PHY algorithm, if there are no precomputed tables */
> >  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> >  		intel_snps_hdmi_pll_compute_c10pll(&crtc_state->dpll_hw_state.cx0pll.c10,
> >  						   crtc_state->port_clock);
> > -		intel_c10pll_update_pll(crtc_state, encoder);
> > +		intel_c10pll_update_pll(encoder,
> > +					&crtc_state->dpll_hw_state.cx0pll,
> > +					intel_crtc_has_dp_encoder(crtc_state));
> >  		crtc_state->dpll_hw_state.cx0pll.use_c10 = true;
> >  
> >  		return 0;
> > @@ -2112,10 +2127,9 @@ static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
> >  }
> >  
> >  static void intel_c10_pll_program(struct intel_display *display,
> > -				  const struct intel_crtc_state *crtc_state,
> > -				  struct intel_encoder *encoder)
> > +				  struct intel_encoder *encoder,
> > +				  const struct intel_c10pll_state *pll_state)
> >  {
> > -	const struct intel_c10pll_state *pll_state = &crtc_state->dpll_hw_state.cx0pll.c10;
> >  	int i;
> >  
> >  	intel_cx0_rmw(encoder, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
> > @@ -2334,7 +2348,9 @@ static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
> >  	for (i = 0; tables[i]; i++) {
> >  		if (crtc_state->port_clock == tables[i]->clock) {
> >  			crtc_state->dpll_hw_state.cx0pll.c20 = *tables[i];
> > -			intel_cx0pll_update_ssc(crtc_state, encoder);
> > +			intel_cx0pll_update_ssc(encoder,
> > +						&crtc_state->dpll_hw_state.cx0pll,
> > +						intel_crtc_has_dp_encoder(crtc_state));
> >  			crtc_state->dpll_hw_state.cx0pll.use_c10 = false;
> >  			return 0;
> >  		}
> > @@ -2600,19 +2616,14 @@ static int intel_get_c20_custom_width(u32 clock, bool dp)
> >  }
> >  
> >  static void intel_c20_pll_program(struct intel_display *display,
> > -				  const struct intel_crtc_state *crtc_state,
> > -				  struct intel_encoder *encoder)
> > +				  struct intel_encoder *encoder,
> > +				  const struct intel_c20pll_state *pll_state,
> > +				  int clock, bool dp)
> >  {
> > -	const struct intel_c20pll_state *pll_state = &crtc_state->dpll_hw_state.cx0pll.c20;
> > -	bool dp = false;
> >  	u8 owned_lane_mask = intel_cx0_get_owned_lane_mask(encoder);
> > -	u32 clock = crtc_state->port_clock;
> >  	bool cntx;
> >  	int i;
> >  
> > -	if (intel_crtc_has_dp_encoder(crtc_state))
> > -		dp = true;
> > -
> >  	/* 1. Read current context selection */
> >  	cntx = intel_cx0_read(encoder, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE) & BIT(0);
> >  
> > @@ -2736,7 +2747,8 @@ static int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
> >  }
> >  
> >  static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
> > -					 const struct intel_crtc_state *crtc_state,
> > +					 const struct intel_cx0pll_state *pll_state,
> > +					 bool is_dp, int port_clock,
> >  					 bool lane_reversal)
> >  {
> >  	struct intel_display *display = to_intel_display(encoder);
> > @@ -2751,18 +2763,17 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
> >  
> >  	val |= XELPDP_FORWARD_CLOCK_UNGATE;
> >  
> > -	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
> > -	    is_hdmi_frl(crtc_state->port_clock))
> > +	if (!is_dp && is_hdmi_frl(port_clock))
> >  		val |= XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_DIV18CLK);
> >  	else
> >  		val |= XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
> >  
> >  	/* TODO: HDMI FRL */
> >  	/* DP2.0 10G and 20G rates enable MPLLA*/
> > -	if (crtc_state->port_clock == 1000000 || crtc_state->port_clock == 2000000)
> > -		val |= crtc_state->dpll_hw_state.cx0pll.ssc_enabled ? XELPDP_SSC_ENABLE_PLLA : 0;
> > +	if (port_clock == 1000000 || port_clock == 2000000)
> > +		val |= pll_state->ssc_enabled ? XELPDP_SSC_ENABLE_PLLA : 0;
> >  	else
> > -		val |= crtc_state->dpll_hw_state.cx0pll.ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
> > +		val |= pll_state->ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
> >  
> >  	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
> >  		     XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK_UNGATE |
> > @@ -2992,8 +3003,9 @@ static u32 intel_cx0_get_pclk_pll_ack(u8 lane_mask)
> >  	return val;
> >  }
> >  
> > -static void intel_cx0pll_enable(struct intel_encoder *encoder,
> > -				const struct intel_crtc_state *crtc_state)
> > +static void __intel_cx0pll_enable(struct intel_encoder *encoder,
> > +				  const struct intel_cx0pll_state *pll_state,
> > +				  bool is_dp, int port_clock, int lane_count)
> >  {
> >  	struct intel_display *display = to_intel_display(encoder);
> >  	enum phy phy = intel_encoder_to_phy(encoder);
> > @@ -3007,7 +3019,7 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
> >  	 * 1. Program PORT_CLOCK_CTL REGISTER to configure
> >  	 * clock muxes, gating and SSC
> >  	 */
> > -	intel_program_port_clock_ctl(encoder, crtc_state, lane_reversal);
> > +	intel_program_port_clock_ctl(encoder, pll_state, is_dp, port_clock, lane_reversal);
> >  
> >  	/* 2. Bring PHY out of reset. */
> >  	intel_cx0_phy_lane_reset(encoder, lane_reversal);
> > @@ -3027,15 +3039,15 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
> >  
> >  	/* 5. Program PHY internal PLL internal registers. */
> >  	if (intel_encoder_is_c10phy(encoder))
> > -		intel_c10_pll_program(display, crtc_state, encoder);
> > +		intel_c10_pll_program(display, encoder, &pll_state->c10);
> >  	else
> > -		intel_c20_pll_program(display, crtc_state, encoder);
> > +		intel_c20_pll_program(display, encoder, &pll_state->c20, port_clock, is_dp);
> >  
> >  	/*
> >  	 * 6. Program the enabled and disabled owned PHY lane
> >  	 * transmitters over message bus
> >  	 */
> > -	intel_cx0_program_phy_lane(encoder, crtc_state->lane_count, lane_reversal);
> > +	intel_cx0_program_phy_lane(encoder, lane_count, lane_reversal);
> >  
> >  	/*
> >  	 * 7. Follow the Display Voltage Frequency Switching - Sequence
> > @@ -3046,8 +3058,7 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
> >  	 * 8. Program DDI_CLK_VALFREQ to match intended DDI
> >  	 * clock frequency.
> >  	 */
> > -	intel_de_write(display, DDI_CLK_VALFREQ(encoder->port),
> > -		       crtc_state->port_clock);
> > +	intel_de_write(display, DDI_CLK_VALFREQ(encoder->port), port_clock);
> >  
> >  	/*
> >  	 * 9. Set PORT_CLOCK_CTL register PCLK PLL Request
> > @@ -3074,6 +3085,14 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
> >  	intel_cx0_phy_transaction_end(encoder, wakeref);
> >  }
> >  
> > +static void intel_cx0pll_enable(struct intel_encoder *encoder,
> > +				const struct intel_crtc_state *crtc_state)
> > +{
> > +	__intel_cx0pll_enable(encoder, &crtc_state->dpll_hw_state.cx0pll,
> > +			      intel_crtc_has_dp_encoder(crtc_state), crtc_state->port_clock, crtc_state->lane_count);
> > +
> > +}
> > +
> >  int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder)
> >  {
> >  	struct intel_display *display = to_intel_display(encoder);
> 
> -- 
> Jani Nikula, Intel
