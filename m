Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6E6917D56
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 12:10:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E2A410E825;
	Wed, 26 Jun 2024 10:10:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cLAJ7Uki";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74F7610E0A1;
 Wed, 26 Jun 2024 10:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719396642; x=1750932642;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=sSL/1eW1tk7RUw/i97keXX3AiWtLL8Uc7tHOYgoO1as=;
 b=cLAJ7UkizkddrxRQvKBr3QFMx9sFE4oem7ASs3y9H1DBZhuJydi6LlY0
 oAsZ7evxeEhfmXeVcSFyS3CNnq6wvxV9Vzm9l2SWk8pS78MnSezn9R7ej
 de8H+Mpzywg0xnoZFvjIwysGMFjflhtv765OBDl5KWuhBDeqAmULQUAtZ
 896nYPNz16PGWFv72zrMkVDKQakMSv4bi10BMEYI0rOm18thID4XeO8ky
 EUkDYqToDPS4rbSsjL8reuN8f/Rxy/n122AFOftJ459WwZmY7cPkxSYRW
 UoBuTUqoPun1lmwZUwyWHEAFZ6X8RqQRHAKhOZ8LzVsC1vJEwBTDDzo9k g==;
X-CSE-ConnectionGUID: gQg0CFrCT/SxW6m6x9qExA==
X-CSE-MsgGUID: Kh9DnPamRki4gPo5wxMn/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11114"; a="27081290"
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="27081290"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 03:10:42 -0700
X-CSE-ConnectionGUID: Sc/UrNrNTOWa0ZV0aIBsgA==
X-CSE-MsgGUID: PQZauYo3QvaSWKZI07aGGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="44065328"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.95])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 03:10:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, mika.kahola@intel.com,
 matthew.d.roper@intel.com
Subject: Re: [PATCH 4/5] drm/i915/pll_algorithm: Compute C10 HDMI PLLs with
 algorithm
In-Reply-To: <20240626050056.3996349-5-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240626050056.3996349-1-ankit.k.nautiyal@intel.com>
 <20240626050056.3996349-5-ankit.k.nautiyal@intel.com>
Date: Wed, 26 Jun 2024 13:10:32 +0300
Message-ID: <87sex0c8vb.fsf@intel.com>
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

On Wed, 26 Jun 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Add support for computing C10 HDMI PLLS using the HDMI PLL algorithm.
> Try C10 HDMI tables computed with the algorithm, before using the
> consolidated tables.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 15 +++++
>  .../drm/i915/display/intel_pll_algorithm.c    | 65 +++++++++++++++++++
>  .../drm/i915/display/intel_pll_algorithm.h    |  2 +
>  3 files changed, 82 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 41f684c970dc..ebd2ec4023d6 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -15,6 +15,7 @@
>  #include "intel_dp.h"
>  #include "intel_hdmi.h"
>  #include "intel_panel.h"
> +#include "intel_pll_algorithm.h"
>  #include "intel_psr.h"
>  #include "intel_tc.h"
>  
> @@ -1980,6 +1981,9 @@ static int intel_c10_phy_check_hdmi_link_rate(int clock)
>  			return MODE_OK;
>  	}
>  
> +	if (clock >= 25175 && clock <= 594000)
> +		return MODE_OK;
> +

Again, seems like an unrelated change.

>  	return MODE_CLOCK_RANGE;
>  }
>  
> @@ -2030,6 +2034,17 @@ static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
>  	const struct intel_c10pll_state * const *tables;
>  	int i;
>  
> +	/* try computed C10 HDMI tables before using consolidated tables */

IMO it's not "tables" if it's computed.

And again, same thing as before, either go all in with the computed
values, or try fixed tables first and fall back to computed values. Not
the other way round.

> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> +		if (intel_c10_phy_compute_hdmi_tmds_pll(crtc_state->port_clock,
> +							&crtc_state->dpll_hw_state.cx0pll.c10) == 0) {
> +			intel_c10pll_update_pll(crtc_state, encoder);
> +			crtc_state->dpll_hw_state.cx0pll.use_c10 = true;
> +		}
> +
> +			return 0;
> +	}
> +
>  	tables = intel_c10pll_tables_get(crtc_state, encoder);
>  	if (!tables)
>  		return -EINVAL;
> diff --git a/drivers/gpu/drm/i915/display/intel_pll_algorithm.c b/drivers/gpu/drm/i915/display/intel_pll_algorithm.c
> index d935715bd3ab..07b712cc0d6f 100644
> --- a/drivers/gpu/drm/i915/display/intel_pll_algorithm.c
> +++ b/drivers/gpu/drm/i915/display/intel_pll_algorithm.c
> @@ -5,6 +5,7 @@
>  
>  #include <linux/math.h>
>  #include "i915_reg.h"
> +#include "intel_cx0_phy_regs.h"
>  #include "intel_ddi.h"
>  #include "intel_ddi_buf_trans.h"
>  #include "intel_de.h"
> @@ -250,3 +251,67 @@ int intel_snps_phy_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_mpllb_sta
>  
>  	return 0;
>  }
> +
> +int intel_c10_phy_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_c10pll_state *pll_state)
> +{
> +	struct pll_output_params pll_params;
> +	u32 refclk = 38400000;
> +	u32 prescaler_divider = 0;
> +	u32 ref_range = 1;
> +	u32 ana_cp_int_gs = 30;
> +	u32 ana_cp_prop_gs = 28;
> +	int ret;
> +	/* x axis frequencies. One curve in each array per v2i point */
> +	const u64 c10_curve_freq_hz[2][8] = {
> +		{2500000000, 3000000000, 3000000000, 3500000000, 3500000000, 4000000000, 4000000000, 5000000000},
> +		{4000000000, 4600000000, 4601000000, 5400000000, 5401000000, 6600000000, 6601000000, 8001000000}};
> +	/* y axis heights multiplied with 1000000000 */
> +
> +	const u64 c10_curve_0[2][8] = {
> +		{41174500, 48605500, 42973700, 49433100, 42408600, 47681900, 40297400, 49131400},
> +		{82056800, 94420700, 82323400, 96370600, 81273300, 98630100, 81728700, 99105700}};
> +
> +	const u64 c10_curve_1[2][8] = {
> +		{73300000000000, 66000000000000, 83100000000000, 75300000000000, 99700000000000, 92300000000000, 125000000000000, 110000000000000},
> +		{53700000000000, 47700000000000, 62200000000000, 54400000000000, 75100000000000, 63400000000000, 90600000000000, 76300000000000}};
> +
> +	/* Multiplied with 1000000000000 */
> +	const u64 c10_curve_2[2][8] = {
> +		{2415790000, 3136460000, 2581990000, 3222670000, 2529330000, 3042020000, 2336970000, 3191460000},
> +		{4808390000, 5994250000, 4832730000, 6193730000, 4737700000, 6428750000, 4779200000, 6479340000}};

Static const. Please fix the style.

> +
> +	ret = _intel_phy_compute_hdmi_tmds_pll(pixel_clock, refclk, ref_range,
> +					       ana_cp_int_gs, ana_cp_prop_gs,
> +					       c10_curve_freq_hz, c10_curve_0,
> +					       c10_curve_1, c10_curve_2, prescaler_divider,
> +					       &pll_params);
> +	if (ret)
> +		return ret;
> +
> +	pll_state->tx = 0x10;
> +	pll_state->cmn = 0x1;
> +	pll_state->pll[0] = REG_FIELD_PREP(C10_PLL0_DIV5CLK_EN, pll_params.mpll_div5_en) |
> +			    REG_FIELD_PREP(C10_PLL0_FRACEN, pll_params.fracn_en) |
> +			    REG_FIELD_PREP(C10_PLL0_PMIX_EN, pll_params.pmix_en) |
> +			    REG_FIELD_PREP(C10_PLL0_ANA_FREQ_VCO_MASK, pll_params.ana_freq_vco);
> +	pll_state->pll[2] = REG_FIELD_PREP(C10_PLL2_MULTIPLIERL_MASK, pll_params.multiplier);
> +	pll_state->pll[3] = REG_FIELD_PREP(C10_PLL3_MULTIPLIERH_MASK, pll_params.multiplier >> 8);
> +	pll_state->pll[8] = REG_FIELD_PREP(C10_PLL8_SSC_UP_SPREAD, pll_params.ssc_up_spread);
> +	pll_state->pll[9] = REG_FIELD_PREP(C10_PLL9_FRACN_DENL_MASK, pll_params.fracn_den);
> +	pll_state->pll[10] = REG_FIELD_PREP(C10_PLL10_FRACN_DENH_MASK, pll_params.fracn_den >> 8);
> +	pll_state->pll[11] = REG_FIELD_PREP(C10_PLL11_FRACN_QUOT_L_MASK, pll_params.fracn_quot);
> +	pll_state->pll[12] = REG_FIELD_PREP(C10_PLL12_FRACN_QUOT_H_MASK, pll_params.fracn_quot >> 8);
> +	pll_state->pll[13] = REG_FIELD_PREP(C10_PLL13_FRACN_REM_L_MASK, pll_params.fracn_rem);
> +	pll_state->pll[14] = REG_FIELD_PREP(C10_PLL14_FRACN_REM_H_MASK, pll_params.fracn_rem >> 8);
> +	pll_state->pll[15] = REG_FIELD_PREP(C10_PLL15_TXCLKDIV_MASK, pll_params.tx_clk_div) |
> +			     REG_FIELD_PREP(C10_PLL15_HDMIDIV_MASK, pll_params.hdmi_div);
> +	pll_state->pll[16] = REG_FIELD_PREP(C10_PLL16_ANA_CPINT, pll_params.ana_cp_int) |
> +			     REG_FIELD_PREP(C10_PLL16_ANA_CPINTGS_L, ana_cp_int_gs);
> +	pll_state->pll[17] = REG_FIELD_PREP(C10_PLL17_ANA_CPINTGS_H_MASK, ana_cp_int_gs >> 1) |
> +			     REG_FIELD_PREP(C10_PLL17_ANA_CPPROP_L_MASK, pll_params.ana_cp_prop);
> +	pll_state->pll[18] = REG_FIELD_PREP(C10_PLL18_ANA_CPPROP_H_MASK, pll_params.ana_cp_prop >> 2) |
> +			     REG_FIELD_PREP(C10_PLL18_ANA_CPPROPGS_L_MASK, ana_cp_prop_gs);
> +	pll_state->pll[19] = REG_FIELD_PREP(C10_PLL19_ANA_CPPROPGS_H_MASK, ana_cp_prop_gs >> 3) |
> +			     REG_FIELD_PREP(C10_PLL19_ANA_V2I_MASK, pll_params.mpll_ana_v2i);
> +	return 0;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_pll_algorithm.h b/drivers/gpu/drm/i915/display/intel_pll_algorithm.h
> index 83a620fb3db2..aafbf158403b 100644
> --- a/drivers/gpu/drm/i915/display/intel_pll_algorithm.h
> +++ b/drivers/gpu/drm/i915/display/intel_pll_algorithm.h
> @@ -10,6 +10,7 @@
>  
>  struct drm_i915_private;
>  struct intel_atomic_state;
> +struct intel_c10pll_state;
>  struct intel_crtc;
>  struct intel_crtc_state;
>  struct intel_encoder;
> @@ -35,5 +36,6 @@ struct pll_output_params {
>  };
>  
>  int intel_snps_phy_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_mpllb_state *pll_state);
> +int intel_c10_phy_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_c10pll_state *pll_state);
>  
>  #endif /* __INTEL_PLL_ALGORITHM_H__ */

-- 
Jani Nikula, Intel
