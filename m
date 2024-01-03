Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0CE82310D
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jan 2024 17:15:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D81C10E31C;
	Wed,  3 Jan 2024 16:15:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ABDF10E2DE
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jan 2024 16:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704298540; x=1735834540;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=pR3TNVBjw3SPPiGqjo0jd2TKlzLZOE4/I7g0O56Z56s=;
 b=c5iIrCyl0gQnaQcWrDwMDAtSB9NoGPZ459tuTuLJz3g6++X47Oc+quo7
 dS+FiU/UJJ4wvBnuL24wd2OCRdYq2j78kCsJG6ig2JgswqyNkA4P9cw32
 qEOSpDMNNfNo3Bj9rwIxXga2Y1hCzIvRcMnXVvEm7lTLGMLstGueNaQTh
 6KVfm+hfv7+IWoFCM43L9ZwAK2dm90Px00GervoilXgxBxjLh8mf+9cCa
 uX/NLpJxeSMDP2l7XNoypwYOu7ghhdWsK/KgfRPQl1sW2k9IxV1T6Ynx/
 9cnbnqm7jfuUsi+ZbhiT7CxyIv1f2m4q+ULfZ7G7aSp+YwFtnQeo9UMZD g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="400840265"
X-IronPort-AV: E=Sophos;i="6.04,328,1695711600"; d="scan'208";a="400840265"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 08:15:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="953259725"
X-IronPort-AV: E=Sophos;i="6.04,328,1695711600"; d="scan'208";a="953259725"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 08:15:38 -0800
Date: Wed, 3 Jan 2024 18:15:48 +0200
From: Imre Deak <imre.deak@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Subject: Re: [PATCH v2 3/3] drm/i915/display: Cleanup mplla/mpllb selection
Message-ID: <ZZWINHpXR/qVEsvn@ideak-desk.fi.intel.com>
References: <20240102115741.118525-1-mika.kahola@intel.com>
 <20240102115741.118525-4-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240102115741.118525-4-mika.kahola@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 02, 2024 at 01:57:41PM +0200, Mika Kahola wrote:
> The function intel_c20_use_mplla() is not really
> widely used and can be replaced with the more suitable
> 
> pll->tx[0] & C20_PHY_USE_MPLLB
> 
> expression. Let's remove the intel_c20_use_mplla()
> alltogether and replace mplla/mpllb selection by
> checking mpllb bit.
> 
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 39 ++++++++------------
>  1 file changed, 15 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index fc7211675b2f..d0b6b4e439e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2096,15 +2096,6 @@ int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state,
>  	return intel_c20pll_calc_state(crtc_state, encoder);
>  }
>  
> -static bool intel_c20_use_mplla(u32 clock)
> -{
> -	/* 10G and 20G rates use MPLLA */
> -	if (clock == 1000000 || clock == 2000000)
> -		return true;
> -
> -	return false;
> -}
> -
>  static int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
>  					const struct intel_c20pll_state *pll_state)
>  {
> @@ -2221,12 +2212,12 @@ void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
>  	drm_dbg_kms(&i915->drm, "cmn[0] = 0x%.4x, cmn[1] = 0x%.4x, cmn[2] = 0x%.4x, cmn[3] = 0x%.4x\n",
>  		    hw_state->cmn[0], hw_state->cmn[1], hw_state->cmn[2], hw_state->cmn[3]);
>  
> -	if (intel_c20_use_mplla(hw_state->clock)) {
> -		for (i = 0; i < ARRAY_SIZE(hw_state->mplla); i++)
> -			drm_dbg_kms(&i915->drm, "mplla[%d] = 0x%.4x\n", i, hw_state->mplla[i]);
> -	} else {
> +	if (hw_state->tx[0] & C20_PHY_USE_MPLLB) {

The above could be in a helper.

>  		for (i = 0; i < ARRAY_SIZE(hw_state->mpllb); i++)
>  			drm_dbg_kms(&i915->drm, "mpllb[%d] = 0x%.4x\n", i, hw_state->mpllb[i]);
> +	} else {
> +		for (i = 0; i < ARRAY_SIZE(hw_state->mplla); i++)
> +			drm_dbg_kms(&i915->drm, "mplla[%d] = 0x%.4x\n", i, hw_state->mplla[i]);
>  	}
>  }
>  
> @@ -2373,27 +2364,27 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
>  	}
>  
>  	/* 3.3 mpllb or mplla configuration */
> -	if (intel_c20_use_mplla(clock)) {
> -		for (i = 0; i < ARRAY_SIZE(pll_state->mplla); i++) {
> +	if (pll_state->tx[0] & C20_PHY_USE_MPLLB) {
> +		for (i = 0; i < ARRAY_SIZE(pll_state->mpllb); i++) {
>  			if (cntx)
>  				intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0,
> -						     PHY_C20_A_MPLLA_CNTX_CFG(i),
> -						     pll_state->mplla[i]);
> +						     PHY_C20_A_MPLLB_CNTX_CFG(i),
> +						     pll_state->mpllb[i]);

Imo, at one point intel_c20pll_state should be converted to use only one
mpll array instead of mplla/b and define a PHY_C20_MPLL_CNTX_CFG(cntx, pll, idx)
macro instead of the above ones.

The patchset looks ok:
Reviewed-by: Imre Deak <imre.deak@intel.com>

>  			else
>  				intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0,
> -						     PHY_C20_B_MPLLA_CNTX_CFG(i),
> -						     pll_state->mplla[i]);
> +						     PHY_C20_B_MPLLB_CNTX_CFG(i),
> +						     pll_state->mpllb[i]);
>  		}
>  	} else {
> -		for (i = 0; i < ARRAY_SIZE(pll_state->mpllb); i++) {
> +		for (i = 0; i < ARRAY_SIZE(pll_state->mplla); i++) {
>  			if (cntx)
>  				intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0,
> -						     PHY_C20_A_MPLLB_CNTX_CFG(i),
> -						     pll_state->mpllb[i]);
> +						     PHY_C20_A_MPLLA_CNTX_CFG(i),
> +						     pll_state->mplla[i]);
>  			else
>  				intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0,
> -						     PHY_C20_B_MPLLB_CNTX_CFG(i),
> -						     pll_state->mpllb[i]);
> +						     PHY_C20_B_MPLLA_CNTX_CFG(i),
> +						     pll_state->mplla[i]);
>  		}
>  	}
>  
> -- 
> 2.34.1
> 
