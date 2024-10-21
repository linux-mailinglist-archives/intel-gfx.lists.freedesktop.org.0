Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB929A6868
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 14:29:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2833110E4B4;
	Mon, 21 Oct 2024 12:29:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iSvYLSvK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35BB410E4B4;
 Mon, 21 Oct 2024 12:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729513777; x=1761049777;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=YjSB3qDSgdemuJsrNfw2L2hRdz9fOB+QdNzSR6wbaAY=;
 b=iSvYLSvK+mbQeHPliESyVlLHtNLomFNvuHLvhWvZNkXX4/A+1fo8FdPa
 SuIfWrjh/QFHYGVaBqvLaSttsCIzbySEO9+417+1CZk2CeV5qioVNL6xQ
 LKP1dmWEh8wqdqg58UTp1SjN8sL8hs4HOKeVhsJI7u05jq6re2ywkQIVf
 a13UW01oWB4sX6XZcJ1GPiMBEf4EQHp3jM6VPr5JtNqspIPsqdalqoAuq
 OCepFhxj/jElR55+de+92z1G3PHrMliY2yqGRm7bB0JHEjKKbVE65wUON
 nIVk5YzaonRdaLzZ7M+MHs527k6BenGfAEQSOx68K9kPI9xlHhmcjcvjx A==;
X-CSE-ConnectionGUID: yYlMPaO6TWmOOTXVMx+40g==
X-CSE-MsgGUID: AhCUY4bMTxCcyxMRY7Fo4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="28447829"
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="28447829"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:29:36 -0700
X-CSE-ConnectionGUID: 335cs8bjSQaUq0T/PZm1Ow==
X-CSE-MsgGUID: iZT4cmkeSC2f7GfrOxSwiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="116955716"
Received: from lbogdanm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.222])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:29:34 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/xe2lpd: Update C20 HDMI TMDS algorithm to
 include tx_misc
In-Reply-To: <20241017205444.102979-2-gustavo.sousa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241017205444.102979-2-gustavo.sousa@intel.com>
Date: Mon, 21 Oct 2024 15:29:30 +0300
Message-ID: <8734kpzljp.fsf@intel.com>
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

On Thu, 17 Oct 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> There has been an update to the Bspec in which we need to set
> tx_misc=0x5 field for C20 TX Context programming for HDMI TMDS for
> Xe2_LPD and newer. That field is mapped to the bits 7:0 of
> SRAM_GENERIC_<A/B>_TX_CNTX_CFG_1, which in turn translates to tx[1] of
> our state struct. Update the algorithm to reflect this change.
>
> Bspec: 74489
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c    | 17 ++++++++++++++---
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h   |  2 ++
>  2 files changed, 16 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index f73d576fd99e..22184b2d5a11 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2142,8 +2142,12 @@ static void intel_c10pll_dump_hw_state(struct drm_i915_private *i915,
>  			    i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
>  }
>  
> -static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_c20pll_state *pll_state)
> +static int intel_c20_compute_hdmi_tmds_pll(struct intel_encoder *encoder,
> +					   u64 pixel_clock,
> +					   struct intel_c20pll_state *pll_state)
>  {
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);

No new struct drm_i915_private local variables or parameters, please.

struct intel_display *display = to_intel_display(encoder);

> +
>  	u64 datarate;
>  	u64 mpll_tx_clk_div;
>  	u64 vco_freq_shift;
> @@ -2154,6 +2158,7 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_c20pll_
>  	u64 mpll_fracn_rem;
>  	u8  mpllb_ana_freq_vco;
>  	u8  mpll_div_multiplier;
> +	u16  tx_misc;
>  
>  	if (pixel_clock < 25175 || pixel_clock > 600000)
>  		return -EINVAL;
> @@ -2171,6 +2176,11 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_c20pll_
>  	mpll_div_multiplier = min_t(u8, div64_u64((vco_freq * 16 + (datarate >> 1)),
>  						  datarate), 255);
>  
> +	if (DISPLAY_VER(i915) >= 20)
> +		tx_misc = 0x5;
> +	else
> +		tx_misc = 0x0;
> +
>  	if (vco_freq <= DATARATE_3000000000)
>  		mpllb_ana_freq_vco = MPLLB_ANA_FREQ_VCO_3;
>  	else if (vco_freq <= DATARATE_3500000000)
> @@ -2182,7 +2192,7 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_c20pll_
>  
>  	pll_state->clock	= pixel_clock;
>  	pll_state->tx[0]	= 0xbe88;
> -	pll_state->tx[1]	= 0x9800;
> +	pll_state->tx[1]	= 0x9800 | C20_PHY_TX_MISC(tx_misc);
>  	pll_state->tx[2]	= 0x0000;
>  	pll_state->cmn[0]	= 0x0500;
>  	pll_state->cmn[1]	= 0x0005;
> @@ -2266,7 +2276,8 @@ static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
>  
>  	/* try computed C20 HDMI tables before using consolidated tables */
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> -		if (intel_c20_compute_hdmi_tmds_pll(crtc_state->port_clock,
> +		if (intel_c20_compute_hdmi_tmds_pll(encoder,
> +						    crtc_state->port_clock,

Alternatively you could just pass crtc_state. *shrug*.

>  						    &crtc_state->dpll_hw_state.cx0pll.c20) == 0)
>  			return 0;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index ab3ae110b68f..c1949aa1b909 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -280,6 +280,8 @@
>  #define PHY_C20_B_TX_CNTX_CFG(i915, idx) \
>  		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_B_TX_CNTX_CFG : _MTL_C20_B_TX_CNTX_CFG) - (idx))
>  #define   C20_PHY_TX_RATE		REG_GENMASK(2, 0)
> +#define   C20_PHY_TX_MISC_MASK		REG_GENMASK(7, 0)
> +#define   C20_PHY_TX_MISC(val)		REG_FIELD_PREP16(C20_PHY_TX_MISC_MASK, (val))

REG_FIELD_PREP16 should have a mask of REG_GENMASK16, and all the masks
and fields and bits for a register should all use the same width.

BR,
Jani.


>  
>  #define PHY_C20_A_CMN_CNTX_CFG(i915, idx) \
>  		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_CMN_CNTX_CFG : _MTL_C20_A_CMN_CNTX_CFG) - (idx))

-- 
Jani Nikula, Intel
