Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50106AB108A
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 12:26:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E737C10EA0A;
	Fri,  9 May 2025 10:26:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZdbGMwIK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD09A10EA08;
 Fri,  9 May 2025 10:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746786364; x=1778322364;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=kmqUzXr0lSbuBZ92j2Nv+gX7cGV7xUO07xn9EjvQ1JM=;
 b=ZdbGMwIK5Z+88z9SWsf++Ouf3QIVQQpiD7FEwsvo68qEufK1mHMei4xh
 p5Y561zkpJ9KcKluafula8skKjU2D4fPvRkuHGUfjQSIbew/c0RjP5Xsm
 jwSrn3S2z/7CHmDDpSJMiL1oGoZOZ5i13HmYQ6erbZWYR8koIHyx8cCmm
 6L/ccClfl9qZSVwmdixevRfEXDTU1k3eHKI7sXRvSvlLi1BoTXP54110E
 lVmGECTlBzDSSz0DqW3PMjWsdgn5PAxCHsxk+o9d+Fz7wdlV8cl/EdKmN
 Vsz7edNPdS7eWdNOx9x6XCGFUUTwN71qqHYxP6QixAe/HjnUg/wRjdkZE Q==;
X-CSE-ConnectionGUID: 8+/7CajKRKCbYE4yIjDQZA==
X-CSE-MsgGUID: YguSV9gNQDa2A2CXoYOcQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="51266538"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="51266538"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:26:03 -0700
X-CSE-ConnectionGUID: wlPuH2GCTayMtbcYJsMm1A==
X-CSE-MsgGUID: Axcuaq27RFSgm2fm/0Vfzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="141686764"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.201])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:26:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH 12/18] drm/i915/dpll: Add intel_encoder argument to
 get_hw_state hook
In-Reply-To: <20250509042729.1152004-13-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250509042729.1152004-1-suraj.kandpal@intel.com>
 <20250509042729.1152004-13-suraj.kandpal@intel.com>
Date: Fri, 09 May 2025 13:25:57 +0300
Message-ID: <87ecwykrm2.fsf@intel.com>
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

On Fri, 09 May 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Add intel_encoder argument in the get_hw_state hook as encoders
> and the data stored within them are essential to read the hw state
> starting DISPLAY_VER() >= 14.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

This is hard to review with no user at hand.

Also, what does it mean to pass NULL for the encoder?

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 38 ++++++++++++-------
>  1 file changed, 25 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 85f726b1c5c8..4a184d1e83a3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -93,7 +93,8 @@ struct intel_dpll_funcs {
>  	 */
>  	bool (*get_hw_state)(struct intel_display *display,
>  			     struct intel_dpll *pll,
> -			     struct intel_dpll_hw_state *dpll_hw_state);
> +			     struct intel_dpll_hw_state *dpll_hw_state,
> +			     struct intel_encoder *encoder);
>  
>  	/*
>  	 * Hook for calculating the pll's output frequency based on its passed
> @@ -534,7 +535,8 @@ void intel_dpll_swap_state(struct intel_atomic_state *state)
>  
>  static bool ibx_pch_dpll_get_hw_state(struct intel_display *display,
>  				      struct intel_dpll *pll,
> -				      struct intel_dpll_hw_state *dpll_hw_state)
> +				      struct intel_dpll_hw_state *dpll_hw_state,
> +				      struct intel_encoder *encoder)
>  {
>  	struct i9xx_dpll_hw_state *hw_state = &dpll_hw_state->i9xx;
>  	const enum intel_dpll_id id = pll->info->id;
> @@ -757,7 +759,8 @@ static void hsw_ddi_spll_disable(struct intel_display *display,
>  
>  static bool hsw_ddi_wrpll_get_hw_state(struct intel_display *display,
>  				       struct intel_dpll *pll,
> -				       struct intel_dpll_hw_state *dpll_hw_state)
> +				       struct intel_dpll_hw_state *dpll_hw_state,
> +				       struct intel_encoder *encoder)
>  {
>  	struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
>  	const enum intel_dpll_id id = pll->info->id;
> @@ -779,7 +782,8 @@ static bool hsw_ddi_wrpll_get_hw_state(struct intel_display *display,
>  
>  static bool hsw_ddi_spll_get_hw_state(struct intel_display *display,
>  				      struct intel_dpll *pll,
> -				      struct intel_dpll_hw_state *dpll_hw_state)
> +				      struct intel_dpll_hw_state *dpll_hw_state,
> +				      struct intel_encoder *encoder)
>  {
>  	struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
>  	intel_wakeref_t wakeref;
> @@ -1305,7 +1309,8 @@ static void hsw_ddi_lcpll_disable(struct intel_display *display,
>  
>  static bool hsw_ddi_lcpll_get_hw_state(struct intel_display *display,
>  				       struct intel_dpll *pll,
> -				       struct intel_dpll_hw_state *dpll_hw_state)
> +				       struct intel_dpll_hw_state *dpll_hw_state,
> +				       struct intel_encoder *encoder)
>  {
>  	return true;
>  }
> @@ -1436,7 +1441,8 @@ static void skl_ddi_dpll0_disable(struct intel_display *display,
>  
>  static bool skl_ddi_pll_get_hw_state(struct intel_display *display,
>  				     struct intel_dpll *pll,
> -				     struct intel_dpll_hw_state *dpll_hw_state)
> +				     struct intel_dpll_hw_state *dpll_hw_state,
> +				     struct intel_encoder *encoder)
>  {
>  	struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
>  	const struct skl_dpll_regs *regs = skl_dpll_regs;
> @@ -1474,7 +1480,8 @@ static bool skl_ddi_pll_get_hw_state(struct intel_display *display,
>  
>  static bool skl_ddi_dpll0_get_hw_state(struct intel_display *display,
>  				       struct intel_dpll *pll,
> -				       struct intel_dpll_hw_state *dpll_hw_state)
> +				       struct intel_dpll_hw_state *dpll_hw_state,
> +				       struct intel_encoder *encoder)
>  {
>  	struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
>  	const struct skl_dpll_regs *regs = skl_dpll_regs;
> @@ -2172,7 +2179,8 @@ static void bxt_ddi_pll_disable(struct intel_display *display,
>  
>  static bool bxt_ddi_pll_get_hw_state(struct intel_display *display,
>  				     struct intel_dpll *pll,
> -				     struct intel_dpll_hw_state *dpll_hw_state)
> +				     struct intel_dpll_hw_state *dpll_hw_state,
> +				     struct intel_encoder *encoder)
>  {
>  	struct bxt_dpll_hw_state *hw_state = &dpll_hw_state->bxt;
>  	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
> @@ -3550,7 +3558,8 @@ static void icl_put_dplls(struct intel_atomic_state *state,
>  
>  static bool mg_pll_get_hw_state(struct intel_display *display,
>  				struct intel_dpll *pll,
> -				struct intel_dpll_hw_state *dpll_hw_state)
> +				struct intel_dpll_hw_state *dpll_hw_state,
> +				struct intel_encoder *encoder)
>  {
>  	struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
>  	const enum intel_dpll_id id = pll->info->id;
> @@ -3617,7 +3626,8 @@ static bool mg_pll_get_hw_state(struct intel_display *display,
>  
>  static bool dkl_pll_get_hw_state(struct intel_display *display,
>  				 struct intel_dpll *pll,
> -				 struct intel_dpll_hw_state *dpll_hw_state)
> +				 struct intel_dpll_hw_state *dpll_hw_state,
> +				 struct intel_encoder *encoder)
>  {
>  	struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
>  	const enum intel_dpll_id id = pll->info->id;
> @@ -3750,7 +3760,8 @@ static bool icl_pll_get_hw_state(struct intel_display *display,
>  
>  static bool combo_pll_get_hw_state(struct intel_display *display,
>  				   struct intel_dpll *pll,
> -				   struct intel_dpll_hw_state *dpll_hw_state)
> +				   struct intel_dpll_hw_state *dpll_hw_state,
> +				   struct intel_encoder *encoder)
>  {
>  	i915_reg_t enable_reg = intel_combo_pll_enable_reg(display, pll);
>  
> @@ -3759,7 +3770,8 @@ static bool combo_pll_get_hw_state(struct intel_display *display,
>  
>  static bool tbt_pll_get_hw_state(struct intel_display *display,
>  				 struct intel_dpll *pll,
> -				 struct intel_dpll_hw_state *dpll_hw_state)
> +				 struct intel_dpll_hw_state *dpll_hw_state,
> +				 struct intel_encoder *encoder)
>  {
>  	return icl_pll_get_hw_state(display, pll, dpll_hw_state, TBT_PLL_ENABLE);
>  }
> @@ -4516,7 +4528,7 @@ bool intel_dpll_get_hw_state(struct intel_display *display,
>  			     struct intel_dpll *pll,
>  			     struct intel_dpll_hw_state *dpll_hw_state)
>  {
> -	return pll->info->funcs->get_hw_state(display, pll, dpll_hw_state);
> +	return pll->info->funcs->get_hw_state(display, pll, dpll_hw_state, NULL);
>  }
>  
>  static void readout_dpll_hw_state(struct intel_display *display,

-- 
Jani Nikula, Intel
