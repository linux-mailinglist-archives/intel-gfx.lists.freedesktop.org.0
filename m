Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29ACF29D15C
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 18:40:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75C7F6E2D7;
	Wed, 28 Oct 2020 17:40:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56C6A6E2DE
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Oct 2020 17:40:41 +0000 (UTC)
IronPort-SDR: D2muYFbMSgmz54/uUSx1Arc5Q63jukQNRFT3yPv7mkKNM6vAaqxz4DD1GQoJNRkbB1PtsODkBr
 GtR8NZ58K3PA==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="155273058"
X-IronPort-AV: E=Sophos;i="5.77,427,1596524400"; d="scan'208";a="155273058"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 10:40:40 -0700
IronPort-SDR: l3rpQJqvyvrjYLVJ5HmApNLBuQ8P0Sinwows9oNEwq2e20sC6kFDTm4ZyPtuNUrcQk7GzKdxmF
 QPY5TrL2tA9Q==
X-IronPort-AV: E=Sophos;i="5.77,427,1596524400"; d="scan'208";a="536321533"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 10:40:39 -0700
Date: Wed, 28 Oct 2020 19:40:35 +0200
From: Imre Deak <imre.deak@intel.com>
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Message-ID: <20201028174035.GD3693479@ideak-desk.fi.intel.com>
References: <20201028091641.137195-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201028091641.137195-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Implement W/A 22010492432
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

On Wed, Oct 28, 2020 at 02:46:41PM +0530, Tejas Upadhyay wrote:
> As per W/A implemented for TGL to program half of the nominal
> DCO divider fraction value which is also applicable on EHL.
> 
> Cc: Deak Imre <imre.deak@intel.com>
> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index eaef7a2d041f..0f3208d3c083 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -2636,13 +2636,15 @@ static bool cnl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
>  }
>  
>  /*
> - * Display WA #22010492432: tgl
> + * Display WA #22010492432: ehl, tgl
>   * Program half of the nominal DCO divider fraction value.
>   */
>  static bool
> -tgl_combo_pll_div_frac_wa_needed(struct drm_i915_private *i915)
> +combo_pll_div_frac_wa_needed(struct drm_i915_private *i915)

The usual way is to prefix such function names with the earliest
relevant platform, so I'd use ehl_ here.

>  {
> -	return IS_TIGERLAKE(i915) && i915->dpll.ref_clks.nssc == 38400;
> +	return (IS_PLATFORM(i915, INTEL_ELKHARTLAKE) ||

On EHL the WA is needed only B stepping onwards.

> +		IS_TIGERLAKE(i915)) &&
> +		i915->dpll.ref_clks.nssc == 38400;
>  }
>  
>  static int __cnl_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
> @@ -2696,7 +2698,7 @@ static int __cnl_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
>  	dco_fraction = (pll_state->cfgcr0 & DPLL_CFGCR0_DCO_FRACTION_MASK) >>
>  		       DPLL_CFGCR0_DCO_FRACTION_SHIFT;
>  
> -	if (tgl_combo_pll_div_frac_wa_needed(dev_priv))
> +	if (combo_pll_div_frac_wa_needed(dev_priv))
>  		dco_fraction *= 2;
>  
>  	dco_freq += (dco_fraction * ref_clock) / 0x8000;
> @@ -3086,7 +3088,7 @@ static void icl_calc_dpll_state(struct drm_i915_private *i915,
>  
>  	memset(pll_state, 0, sizeof(*pll_state));
>  
> -	if (tgl_combo_pll_div_frac_wa_needed(i915))
> +	if (combo_pll_div_frac_wa_needed(i915))
>  		dco_fraction = DIV_ROUND_CLOSEST(dco_fraction, 2);
>  
>  	pll_state->cfgcr0 = DPLL_CFGCR0_DCO_FRACTION(dco_fraction) |
> -- 
> 2.28.0
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
