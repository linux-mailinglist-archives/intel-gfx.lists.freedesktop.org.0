Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0632A8152
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 15:48:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2F416ED72;
	Thu,  5 Nov 2020 14:48:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDB936ED72
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Nov 2020 14:48:49 +0000 (UTC)
IronPort-SDR: uL1/XTpzYYmn4lBaGRxOt5j38vUDxyl3DHj+/sZoBoy1PQanaC7t1t+T3OZccxtcQZemYo3SeE
 VHnrPanE5mqA==
X-IronPort-AV: E=McAfee;i="6000,8403,9795"; a="187299493"
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="187299493"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 06:48:49 -0800
IronPort-SDR: Zb6Dt9yC5yiYzvTPmNH2KeG0I5vYrk2lJ5xuVE7yX2E8k/L0yTmENo5NiR6/9ioRgHSDH6i4wY
 ebOoqO5P4EPg==
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="539427443"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 06:48:47 -0800
Date: Thu, 5 Nov 2020 16:48:44 +0200
From: Imre Deak <imre.deak@intel.com>
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Message-ID: <20201105144844.GB177799@ideak-desk.fi.intel.com>
References: <20201104050655.171185-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201104050655.171185-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH V3] drm/i915/ehl: Implement W/A 22010492432
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
Cc: intel-gfx@lists.freedesktop.org, hariom.pandey@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 04, 2020 at 10:36:55AM +0530, Tejas Upadhyay wrote:
> As per W/A implemented for TGL to program half of the nominal
> DCO divider fraction value which is also applicable on EHL.
> 
> Changes since V2:
> 	- Apply stepping B0 till FOREVER
> 	- B0 - revid update as per Bspec 29153
> Changes since V1:
>         - ehl_ used as to keep earliest platform prefix
>         - WA required B0 stepping onwards
> 
> Cc: Deak Imre <imre.deak@intel.com>
> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 13 ++++++++-----
>  drivers/gpu/drm/i915/i915_drv.h               |  1 +
>  2 files changed, 9 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index eaef7a2d041f..a95e6a2ac698 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -2636,13 +2636,16 @@ static bool cnl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
>  }
>  
>  /*
> - * Display WA #22010492432: tgl
> + * Display WA #22010492432: ehl, tgl
>   * Program half of the nominal DCO divider fraction value.
>   */
>  static bool
> -tgl_combo_pll_div_frac_wa_needed(struct drm_i915_private *i915)
> +ehl_combo_pll_div_frac_wa_needed(struct drm_i915_private *i915)
>  {
> -	return IS_TIGERLAKE(i915) && i915->dpll.ref_clks.nssc == 38400;
> +	return ((IS_PLATFORM(i915, INTEL_ELKHARTLAKE) &&
> +		 IS_JSL_EHL_REVID(i915, EHL_REVID_B0, REVID_FOREVER)) ||
> +		 IS_TIGERLAKE(i915)) &&
> +		 i915->dpll.ref_clks.nssc == 38400;
>  }
>  
>  static int __cnl_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
> @@ -2696,7 +2699,7 @@ static int __cnl_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
>  	dco_fraction = (pll_state->cfgcr0 & DPLL_CFGCR0_DCO_FRACTION_MASK) >>
>  		       DPLL_CFGCR0_DCO_FRACTION_SHIFT;
>  
> -	if (tgl_combo_pll_div_frac_wa_needed(dev_priv))
> +	if (ehl_combo_pll_div_frac_wa_needed(dev_priv))
>  		dco_fraction *= 2;
>  
>  	dco_freq += (dco_fraction * ref_clock) / 0x8000;
> @@ -3086,7 +3089,7 @@ static void icl_calc_dpll_state(struct drm_i915_private *i915,
>  
>  	memset(pll_state, 0, sizeof(*pll_state));
>  
> -	if (tgl_combo_pll_div_frac_wa_needed(i915))
> +	if (ehl_combo_pll_div_frac_wa_needed(i915))
>  		dco_fraction = DIV_ROUND_CLOSEST(dco_fraction, 2);
>  
>  	pll_state->cfgcr0 = DPLL_CFGCR0_DCO_FRACTION(dco_fraction) |
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index d548e10e1600..1a5645498cb7 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1560,6 +1560,7 @@ extern const struct i915_rev_steppings kbl_revids[];
>  	(IS_ICELAKE(p) && IS_REVID(p, since, until))
>  
>  #define EHL_REVID_A0            0x0
> +#define EHL_REVID_B0            0x1
>  
>  #define IS_JSL_EHL_REVID(p, since, until) \
>  	(IS_JSL_EHL(p) && IS_REVID(p, since, until))
> -- 
> 2.28.0
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
