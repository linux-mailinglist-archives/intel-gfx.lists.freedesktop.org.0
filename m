Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F04642A4A1B
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 16:42:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E2696E8B2;
	Tue,  3 Nov 2020 15:42:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D03336E8B2
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Nov 2020 15:42:56 +0000 (UTC)
IronPort-SDR: iM+o1rbY93r/G95N++yUXnMb3i03TqravDdDZok/FlK9Z2puIMPxelxceRoGs7eKhsxjqySpkf
 GOZc0sMZXE5A==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="148925256"
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="148925256"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 07:42:56 -0800
IronPort-SDR: kNqgbH36p+BjNEPCa7OI29TR/wNmy5XtwaIquzfKFzmck9KyKtkBO7pW8OPtmj47QAf4A2hg/s
 22ohKQP/CEmQ==
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="538529868"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 07:42:54 -0800
Date: Tue, 3 Nov 2020 17:42:51 +0200
From: Imre Deak <imre.deak@intel.com>
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Message-ID: <20201103154251.GC3990501@ideak-desk.fi.intel.com>
References: <20201103134651.165527-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201103134651.165527-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/ehl: Implement W/A 22010492432
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

On Tue, Nov 03, 2020 at 07:16:51PM +0530, Tejas Upadhyay wrote:
> As per W/A implemented for TGL to program half of the nominal
> DCO divider fraction value which is also applicable on EHL.
> 
> Changes since V1:
> 	- ehl_ used as to keep earliest platform prefix
> 	- WA required B0 stepping onwards
> 
> Cc: Deak Imre <imre.deak@intel.com>
> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 13 ++++++++-----
>  drivers/gpu/drm/i915/i915_drv.h               |  1 +
>  2 files changed, 9 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index eaef7a2d041f..cb6ebf627c04 100644
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
> +		IS_JSL_EHL_REVID(i915, EHL_REVID_B0, EHL_REVID_B0)) ||

Imo, better to add a definition for IS_ELKHARTLAKE() and IS_EHL_REVID().

It also applies after B0, so it'd be
		IS_EHL_REVID(EHL_REVID_B0, REVID_FOREVER);

> +		IS_TIGERLAKE(i915)) &&
> +		i915->dpll.ref_clks.nssc == 38400;
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
> index d548e10e1600..8bf59b57efc9 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1560,6 +1560,7 @@ extern const struct i915_rev_steppings kbl_revids[];
>  	(IS_ICELAKE(p) && IS_REVID(p, since, until))
>  
>  #define EHL_REVID_A0            0x0
> +#define EHL_REVID_B0            0x2

Where are the steppings specified for EHL? At least on the BSpec/29153
page I see EHL/B0 being 1.

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
