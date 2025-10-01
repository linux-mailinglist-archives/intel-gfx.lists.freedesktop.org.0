Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C938BBAFD3F
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 11:14:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C51110E062;
	Wed,  1 Oct 2025 09:14:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mcNQO1Gz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 547FA10E062;
 Wed,  1 Oct 2025 09:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759310047; x=1790846047;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=v/kgXJvoaGxHcD7mNf4ivLbq9NHg7KUY9RNtz8mcgLg=;
 b=mcNQO1GzyFV9zkY07g+EfrM7denXk+SUyOw4+AndUoqLbhjwBvxlLmxw
 Hc0eXLHJXdfXaY2cWx6+TwUbXeCB7Fz4oVIGMvemNnwd/MGB/6P4a4tYn
 K7J6Hnqrvd8dqChJdBB9YE5pEbmkl/wQtWBoFBz6tn1DpQywCnXpktbNH
 lTkc6goX6Al6HkQokSZHzb5fR7Y5DjuFKGivxW8lFh0SkoJgeVeyvrarI
 wX49JGj/7JR1eLxuzvqYF0h4sHy84FxVVtzjp2MTbvFAu49ulgH7ItsoJ
 rS7pYjt5Vb1fqbfZ/6oqzmn3b8aXw16Og0REKS+7iWRwoNfXg4FkAZvdA g==;
X-CSE-ConnectionGUID: Z4kr74+FQWOtLk8EwkNRbQ==
X-CSE-MsgGUID: tBrVvV6DRTO94eAwxaDyhw==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61472704"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61472704"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 02:14:05 -0700
X-CSE-ConnectionGUID: eta4tc4nSw6vxwLuN1ngpQ==
X-CSE-MsgGUID: ml+hqiNnTwSuW4MIvtpsEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="178348211"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.217])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 02:14:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>, Mika Kahola <mika.kahola@intel.com>
Subject: Re: [RFC PATCH 15/39] drm/i915/display: Track the Cx0 PHY enabled
 lane count in the PLL state
In-Reply-To: <20251001082839.2585559-16-mika.kahola@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251001082839.2585559-1-mika.kahola@intel.com>
 <20251001082839.2585559-16-mika.kahola@intel.com>
Date: Wed, 01 Oct 2025 12:13:59 +0300
Message-ID: <dd6a361fd448b6629dadb4476b8d4d94ff93fe30@intel.com>
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

On Wed, 01 Oct 2025, Mika Kahola <mika.kahola@intel.com> wrote:
> From: Imre Deak <imre.deak@intel.com>
>
> The Cx0 PLL enable programming requires the enabled lane count. The PLL
> manager framework doesn't pass the CRTC state to the PLL's enable hook,
> so prepare here for the conversion to use the PLL manager, by tracking
> the enabled lane count in the PLL state as well. This has the advantage,
> that the enabled lane count can be verified against the PHY/PLL's
> enabled TX lanes.
>
> This also allows dropping the lane count param from the
> __intel_cx0pll_enable() function, since it can retrieve this now from
> the PLL state.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 55 ++++++++++++++++---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  1 +
>  2 files changed, 49 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 2aba1ebae428..d69ff9115659 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -12,6 +12,7 @@
>  #include "intel_alpm.h"
>  #include "intel_cx0_phy.h"
>  #include "intel_cx0_phy_regs.h"
> +#include "intel_display_regs.h"
>  #include "intel_ddi.h"
>  #include "intel_ddi_buf_trans.h"
>  #include "intel_de.h"
> @@ -2083,7 +2084,7 @@ static void intel_c10pll_update_pll(struct intel_encoder *encoder,
>   */
>  static int intel_c10pll_calc_state_from_table(struct intel_encoder *encoder,
>  					      const struct intel_c10pll_state * const *tables,
> -					      bool is_dp, int port_clock,
> +					      bool is_dp, int port_clock, int lane_count,
>  					      struct intel_cx0pll_state *pll_state)
>  {
>  	int i;
> @@ -2093,7 +2094,9 @@ static int intel_c10pll_calc_state_from_table(struct intel_encoder *encoder,
>  			pll_state->c10 = *tables[i];
>  			intel_cx0pll_update_ssc(encoder, pll_state, is_dp);
>  			intel_c10pll_update_pll(encoder, pll_state);
> +
>  			pll_state->use_c10 = true;
> +			pll_state->lane_count = lane_count;
>  
>  			return 0;
>  		}
> @@ -2114,7 +2117,7 @@ static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
>  
>  	err = intel_c10pll_calc_state_from_table(encoder, tables,
>  						 intel_crtc_has_dp_encoder(crtc_state),
> -						 crtc_state->port_clock,
> +						 crtc_state->port_clock, crtc_state->lane_count,
>  						 &crtc_state->dpll_hw_state.cx0pll);
>  
>  	if (err == 0 || !intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> @@ -2126,6 +2129,7 @@ static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
>  	intel_c10pll_update_pll(encoder,
>  				&crtc_state->dpll_hw_state.cx0pll);
>  	crtc_state->dpll_hw_state.cx0pll.use_c10 = true;
> +	crtc_state->dpll_hw_state.cx0pll.lane_count = crtc_state->lane_count;
>  
>  	return 0;
>  }
> @@ -2157,6 +2161,37 @@ static int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
>  	return tmpclk;
>  }
>  
> +static int readout_enabled_lane_count(struct intel_encoder *encoder)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +	u8 enabled_tx_lane_count = 0;
> +	int max_tx_lane_count;
> +	int tx_lane;
> +
> +	/*
> +	 * TODO: also check inactive TX lanes in all PHY lanes owned by the
> +	 * display. For now checking only those PHY lane(s) which are owned
> +	 * based on the active TX lane count (i.e.
> +	 *   1,2 active TX lanes -> PHY lane#0
> +	 *   3,4 active TX lanes -> PHY lane#0 and PHY lane#1).
> +	 */
> +	max_tx_lane_count = DDI_PORT_WIDTH_GET(intel_de_read(display, DDI_BUF_CTL(encoder->port)));

Hmm, feels slightly wrong to be touching DDI_BUF_CTL() here. I think
it's already being used in too many places. But I'm not sure what the
clean alternative should be either.

> +	if (!drm_WARN_ON(display->drm, max_tx_lane_count == 0))
> +		max_tx_lane_count = roundup_pow_of_two(max_tx_lane_count);

So I don't want to see WARN and the happy day scenario mixed like this.

This is fine, and common:

	if (WARN_ON(something that should not happen))
		handle_the_error_case();

But not:

	if (!WARN_ON(something_that_should_not_happen))
		handle_the_normal_case();

Looks like this could be just:
	
	if (drm_WARN_ON(display->drm, max_tx_lane_count == 0))
		return 0;

	max_tx_lane_count = roundup_pow_of_two(max_tx_lane_count);

And it reads like it should.

> +
> +	for (tx_lane = 0; tx_lane < max_tx_lane_count; tx_lane++) {
> +		u8 phy_lane_mask = tx_lane < 2 ? INTEL_CX0_LANE0 : INTEL_CX0_LANE1;
> +		int tx = tx_lane % 2 + 1;
> +		u8 val;
> +
> +		val = intel_cx0_read(encoder, phy_lane_mask, PHY_CX0_TX_CONTROL(tx, 2));
> +		if (!(val & CONTROL2_DISABLE_SINGLE_TX))
> +			enabled_tx_lane_count++;
> +	}
> +
> +	return enabled_tx_lane_count;
> +}
> +
>  static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
>  					  struct intel_cx0pll_state *cx0pll_state)
>  {
> @@ -2175,6 +2210,8 @@ static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
>  	 */
>  	intel_c10_msgbus_access_begin(encoder, lane);
>  
> +	cx0pll_state->lane_count = readout_enabled_lane_count(encoder);
> +
>  	for (i = 0; i < ARRAY_SIZE(pll_state->pll); i++)
>  		pll_state->pll[i] = intel_cx0_read(encoder, lane, PHY_C10_VDR_PLL(i));
>  
> @@ -2581,6 +2618,7 @@ static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
>  	int err = -ENOENT;
>  
>  	crtc_state->dpll_hw_state.cx0pll.use_c10 = false;
> +	crtc_state->dpll_hw_state.cx0pll.lane_count = crtc_state->lane_count;
>  
>  	/* try computed C20 HDMI tables before using consolidated tables */
>  	if (!is_dp)
> @@ -2670,6 +2708,8 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
>  
>  	wakeref = intel_cx0_phy_transaction_begin(encoder);
>  
> +	cx0pll_state->lane_count = readout_enabled_lane_count(encoder);
> +
>  	/* 1. Read VDR params and current context selection */
>  	intel_c20_readout_vdr_params(encoder, &pll_state->vdr, &cntx);
>  
> @@ -3107,7 +3147,7 @@ static u32 intel_cx0_get_pclk_pll_ack(u8 lane_mask)
>  
>  static void __intel_cx0pll_enable(struct intel_encoder *encoder,
>  				  const struct intel_cx0pll_state *pll_state,
> -				  bool is_dp, int port_clock, int lane_count)
> +				  bool is_dp, int port_clock)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
>  	enum phy phy = intel_encoder_to_phy(encoder);
> @@ -3149,7 +3189,7 @@ static void __intel_cx0pll_enable(struct intel_encoder *encoder,
>  	 * 6. Program the enabled and disabled owned PHY lane
>  	 * transmitters over message bus
>  	 */
> -	intel_cx0_program_phy_lane(encoder, lane_count, lane_reversal);
> +	intel_cx0_program_phy_lane(encoder, pll_state->lane_count, lane_reversal);
>  
>  	/*
>  	 * 7. Follow the Display Voltage Frequency Switching - Sequence
> @@ -3192,7 +3232,7 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
>  {
>  	__intel_cx0pll_enable(encoder, &crtc_state->dpll_hw_state.cx0pll,
>  			      intel_crtc_has_dp_encoder(crtc_state),
> -			      crtc_state->port_clock, crtc_state->lane_count);
> +			      crtc_state->port_clock);
>  }
>  
>  int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder)
> @@ -3723,6 +3763,7 @@ void intel_cx0_pll_power_save_wa(struct intel_display *display)
>  	for_each_intel_encoder(display->drm, encoder) {
>  		struct intel_cx0pll_state pll_state = {};
>  		int port_clock = 162000;
> +		int lane_count = 4;
>  
>  		if (!intel_encoder_is_dig_port(encoder))
>  			continue;
> @@ -3735,7 +3776,7 @@ void intel_cx0_pll_power_save_wa(struct intel_display *display)
>  
>  		if (intel_c10pll_calc_state_from_table(encoder,
>  						       mtl_c10_edp_tables,
> -						       true, port_clock,
> +						       true, port_clock, lane_count,
>  						       &pll_state) < 0) {
>  			drm_WARN_ON(display->drm,
>  				    "Unable to calc C10 state from the tables\n");
> @@ -3746,7 +3787,7 @@ void intel_cx0_pll_power_save_wa(struct intel_display *display)
>  			    "[ENCODER:%d:%s] Applying power saving workaround on disabled PLL\n",
>  			    encoder->base.base.id, encoder->base.name);
>  
> -		__intel_cx0pll_enable(encoder, &pll_state, true, port_clock, 4);
> +		__intel_cx0pll_enable(encoder, &pll_state, true, port_clock);
>  		intel_cx0pll_disable(encoder);
>  	}
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> index 43c7200050e9..839b1a98534f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -267,6 +267,7 @@ struct intel_cx0pll_state {
>  		struct intel_c10pll_state c10;
>  		struct intel_c20pll_state c20;
>  	};
> +	int lane_count;
>  	bool ssc_enabled;
>  	bool use_c10;
>  	bool tbt_mode;

-- 
Jani Nikula, Intel
