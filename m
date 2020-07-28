Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B39723156E
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jul 2020 00:14:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFEBC6E116;
	Tue, 28 Jul 2020 22:14:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F18F6E116
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 22:14:48 +0000 (UTC)
IronPort-SDR: bTgNQiR6lwcXSs3grWR0hPz3B3VHtsc2W9Su6/vjGJVYXDwmIPsnfgsKllLwfhe7oylFPPWYD4
 mw9KxofamPxg==
X-IronPort-AV: E=McAfee;i="6000,8403,9696"; a="169441333"
X-IronPort-AV: E=Sophos;i="5.75,408,1589266800"; d="scan'208";a="169441333"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2020 15:14:47 -0700
IronPort-SDR: 0zO3j3Y2ZqBJqvFoUOPhdBu4nkIvdJn/XNj55iY3spLqXM0+1OMQSOQwOuwRVPRlwcz8QhQTit
 Y1jaI+vknpXA==
X-IronPort-AV: E=Sophos;i="5.75,408,1589266800"; d="scan'208";a="490533066"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2020 15:14:47 -0700
Date: Tue, 28 Jul 2020 15:14:46 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20200728221446.GG35208@mdroper-desk1.amr.corp.intel.com>
References: <20200724213918.27424-1-lucas.demarchi@intel.com>
 <20200724213918.27424-8-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200724213918.27424-8-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 07/22] drm/i915/dg1: Add and setup DPLLs
 for DG1
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 24, 2020 at 02:39:03PM -0700, Lucas De Marchi wrote:
> From: Aditya Swarup <aditya.swarup@intel.com>
> 
> Add entries for dg1 plls and setup dg1_pll_mgr to reuse icl callbacks.
> Initial setup for shared dplls DPLL0/1 for DDIA/B and DPLL2/3 for
> DDIC/D. Configure dpll cfgcrx registers to drive the plls on DG1.

As on the previous patch, let's use the DG1 "DDI-TC1" and "DDI-TC2"
terminology to avoid confusion (especially since the C/D here aren't
even the same as the PORT_D/PORT_E that they index as in the driver).

> 
> Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 41 +++++++++++++++++--
>  1 file changed, 37 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 81ab975fe4f0..39a53aa0b233 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -3512,7 +3512,17 @@ static bool icl_get_combo_phy_dpll(struct intel_atomic_state *state,
>  
>  	icl_calc_dpll_state(dev_priv, &pll_params, &port_dpll->hw_state);
>  
> -	if (IS_ROCKETLAKE(dev_priv)) {
> +	if (IS_DG1(dev_priv)) {
> +		if (port == PORT_D || port == PORT_E) {
> +			dpll_mask =
> +				BIT(DPLL_ID_DG1_DPLL2) |
> +				BIT(DPLL_ID_DG1_DPLL3);
> +		} else {
> +			dpll_mask =
> +				BIT(DPLL_ID_DG1_DPLL0) |
> +				BIT(DPLL_ID_DG1_DPLL1);
> +		}
> +	} else if (IS_ROCKETLAKE(dev_priv)) {
>  		dpll_mask =
>  			BIT(DPLL_ID_EHL_DPLL4) |
>  			BIT(DPLL_ID_ICL_DPLL1) |
> @@ -3808,7 +3818,10 @@ static bool icl_pll_get_hw_state(struct drm_i915_private *dev_priv,
>  	if (!(val & PLL_ENABLE))
>  		goto out;
>  
> -	if (IS_ROCKETLAKE(dev_priv)) {
> +	if (IS_DG1(dev_priv)) {
> +		hw_state->cfgcr0 = intel_de_read(dev_priv, DG1_DPLL_CFGCR0(id));
> +		hw_state->cfgcr1 = intel_de_read(dev_priv, DG1_DPLL_CFGCR1(id));
> +	} else if (IS_ROCKETLAKE(dev_priv)) {
>  		hw_state->cfgcr0 = intel_de_read(dev_priv,
>  						 RKL_DPLL_CFGCR0(id));
>  		hw_state->cfgcr1 = intel_de_read(dev_priv,
> @@ -3866,7 +3879,10 @@ static void icl_dpll_write(struct drm_i915_private *dev_priv,
>  	const enum intel_dpll_id id = pll->info->id;
>  	i915_reg_t cfgcr0_reg, cfgcr1_reg;
>  
> -	if (IS_ROCKETLAKE(dev_priv)) {
> +	if (IS_DG1(dev_priv)) {
> +		cfgcr0_reg = DG1_DPLL_CFGCR0(id);
> +		cfgcr1_reg = DG1_DPLL_CFGCR1(id);
> +	} else if (IS_ROCKETLAKE(dev_priv)) {
>  		cfgcr0_reg = RKL_DPLL_CFGCR0(id);
>  		cfgcr1_reg = RKL_DPLL_CFGCR1(id);
>  	} else if (INTEL_GEN(dev_priv) >= 12) {
> @@ -4316,6 +4332,21 @@ static const struct intel_dpll_mgr rkl_pll_mgr = {
>  	.dump_hw_state = icl_dump_hw_state,
>  };
>  
> +static const struct dpll_info dg1_plls[] = {
> +	{ "DPLL 0", &combo_pll_funcs, DPLL_ID_DG1_DPLL0, 0 },
> +	{ "DPLL 1", &combo_pll_funcs, DPLL_ID_DG1_DPLL1, 0 },
> +	{ "DPLL 2", &combo_pll_funcs, DPLL_ID_DG1_DPLL2, 0 },
> +	{ "DPLL 3", &combo_pll_funcs, DPLL_ID_DG1_DPLL3, 0 },
> +	{ },
> +};
> +
> +static const struct intel_dpll_mgr dg1_pll_mgr = {
> +	.dpll_info = dg1_plls,
> +	.get_dplls = icl_get_dplls,
> +	.put_dplls = icl_put_dplls,
> +	.dump_hw_state = icl_dump_hw_state,

Do we also need a

        .update_ref_clks = icl_update_dpll_ref_clks,

here?  That's a new hook as of ccc495fd7ac3 ("drm/i915: Unify the DPLL
ref clock frequency tracking").


Matt

> +};
> +
>  /**
>   * intel_shared_dpll_init - Initialize shared DPLLs
>   * @dev: drm device
> @@ -4329,7 +4360,9 @@ void intel_shared_dpll_init(struct drm_device *dev)
>  	const struct dpll_info *dpll_info;
>  	int i;
>  
> -	if (IS_ROCKETLAKE(dev_priv))
> +	if (IS_DG1(dev_priv))
> +		dpll_mgr = &dg1_pll_mgr;
> +	else if (IS_ROCKETLAKE(dev_priv))
>  		dpll_mgr = &rkl_pll_mgr;
>  	else if (INTEL_GEN(dev_priv) >= 12)
>  		dpll_mgr = &tgl_pll_mgr;
> -- 
> 2.26.2
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
