Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8738BAB107D
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 12:24:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1782510EA1F;
	Fri,  9 May 2025 10:24:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RqknJUgh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7162E10EA12;
 Fri,  9 May 2025 10:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746786260; x=1778322260;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=V+5IIHPhka/df11gizJllqFO75UIQQuf3Y7o7oLDvZA=;
 b=RqknJUghdfcQur37WRUMFVeDjuL1Yqb0OGRWKJ8PYe2WL9A8xzgzcIIF
 EgosfwFDRGeV+i2QoOBL/SeUfo0v0LkuSq4q+qegfQLN0dyuQ/b2imjGI
 wSN47vbeLlE4beEcXf5JHZV+1JC8TVl2at0Jw3TlU+MfbY7rnztrCs6rj
 MoewK9EWIS1hyUt7SgO8MxHQlC8QbZlaPlgDtyjfesUVyCesbgHiHi6QY
 IQBvHHpVeQj6sNhSuupX3GfYCT8xag3apv5mUM3mb+cM3lUNAilI/cJBN
 vJp60pnc8P5AfkHZQoqMTRFFFVJz9JBp32+ki++FrtiQk6DUJR4GH7h+A Q==;
X-CSE-ConnectionGUID: H6errG0LR8OAoDsFu+6K6Q==
X-CSE-MsgGUID: HMbDYQ2ZSrC2FaIIWq1hCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="59605347"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="59605347"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:24:19 -0700
X-CSE-ConnectionGUID: +svJp3lwRSS6jghUwWONYg==
X-CSE-MsgGUID: MO/d2L5TQ1+Oc46xBheeDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="137100119"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.201])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:24:16 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH 10/18] drm/i915/drm: Rename disable hook in
 intel_dpll_global_func
In-Reply-To: <20250509042729.1152004-11-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250509042729.1152004-1-suraj.kandpal@intel.com>
 <20250509042729.1152004-11-suraj.kandpal@intel.com>
Date: Fri, 09 May 2025 13:24:14 +0300
Message-ID: <87jz6qkrox.fsf@intel.com>
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
> Rename the disable hook to disable_shared_dpll since it will be used
> only to disable shared dpll and not individual PLL going forward.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

This is hard to review with no actual user at hand.

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 30 +++++++++----------
>  1 file changed, 15 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 21080abc6d42..51dab49d4fc1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -73,12 +73,12 @@ struct intel_dpll_funcs {
>  		       struct intel_encoder *encoder);
>  
>  	/*
> -	 * Hook for disabling the pll, called from intel_disable_dpll()
> +	 * Hook for disabling the shared pll, called from _intel_disable_shared_dpll()
>  	 * only when it is safe to disable the pll, i.e., there are no more
>  	 * tracked users for it.
>  	 */
> -	void (*disable)(struct intel_display *display,
> -			struct intel_dpll *pll);
> +	void (*shared_dpll_disable)(struct intel_display *display,
> +				    struct intel_dpll *pll);
>  
>  	/*
>  	 * Hook for reading the values currently programmed to the DPLL
> @@ -243,7 +243,7 @@ static void _intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
>  static void _intel_disable_shared_dpll(struct intel_display *display,
>  				       struct intel_dpll *pll)
>  {
> -	pll->info->funcs->disable(display, pll);
> +	pll->info->funcs->shared_dpll_disable(display, pll);
>  	pll->on = false;
>  
>  	if (pll->info->power_domain)
> @@ -674,7 +674,7 @@ static bool ibx_compare_hw_state(const struct intel_dpll_hw_state *_a,
>  
>  static const struct intel_dpll_funcs ibx_pch_dpll_funcs = {
>  	.enable = ibx_pch_dpll_enable,
> -	.disable = ibx_pch_dpll_disable,
> +	.shared_dpll_disable = ibx_pch_dpll_disable,
>  	.get_hw_state = ibx_pch_dpll_get_hw_state,
>  };
>  
> @@ -1275,14 +1275,14 @@ static bool hsw_compare_hw_state(const struct intel_dpll_hw_state *_a,
>  
>  static const struct intel_dpll_funcs hsw_ddi_wrpll_funcs = {
>  	.enable = hsw_ddi_wrpll_enable,
> -	.disable = hsw_ddi_wrpll_disable,
> +	.shared_dpll_disable = hsw_ddi_wrpll_disable,
>  	.get_hw_state = hsw_ddi_wrpll_get_hw_state,
>  	.get_freq = hsw_ddi_wrpll_get_freq,
>  };
>  
>  static const struct intel_dpll_funcs hsw_ddi_spll_funcs = {
>  	.enable = hsw_ddi_spll_enable,
> -	.disable = hsw_ddi_spll_disable,
> +	.shared_dpll_disable = hsw_ddi_spll_disable,
>  	.get_hw_state = hsw_ddi_spll_get_hw_state,
>  	.get_freq = hsw_ddi_spll_get_freq,
>  };
> @@ -1306,7 +1306,7 @@ static bool hsw_ddi_lcpll_get_hw_state(struct intel_display *display,
>  
>  static const struct intel_dpll_funcs hsw_ddi_lcpll_funcs = {
>  	.enable = hsw_ddi_lcpll_enable,
> -	.disable = hsw_ddi_lcpll_disable,
> +	.shared_dpll_disable = hsw_ddi_lcpll_disable,
>  	.get_hw_state = hsw_ddi_lcpll_get_hw_state,
>  	.get_freq = hsw_ddi_lcpll_get_freq,
>  };
> @@ -2010,14 +2010,14 @@ static bool skl_compare_hw_state(const struct intel_dpll_hw_state *_a,
>  
>  static const struct intel_dpll_funcs skl_ddi_pll_funcs = {
>  	.enable = skl_ddi_pll_enable,
> -	.disable = skl_ddi_pll_disable,
> +	.shared_dpll_disable = skl_ddi_pll_disable,
>  	.get_hw_state = skl_ddi_pll_get_hw_state,
>  	.get_freq = skl_ddi_pll_get_freq,
>  };
>  
>  static const struct intel_dpll_funcs skl_ddi_dpll0_funcs = {
>  	.enable = skl_ddi_dpll0_enable,
> -	.disable = skl_ddi_dpll0_disable,
> +	.shared_dpll_disable = skl_ddi_dpll0_disable,
>  	.get_hw_state = skl_ddi_dpll0_get_hw_state,
>  	.get_freq = skl_ddi_pll_get_freq,
>  };
> @@ -2493,7 +2493,7 @@ static bool bxt_compare_hw_state(const struct intel_dpll_hw_state *_a,
>  
>  static const struct intel_dpll_funcs bxt_ddi_pll_funcs = {
>  	.enable = bxt_ddi_pll_enable,
> -	.disable = bxt_ddi_pll_disable,
> +	.shared_dpll_disable = bxt_ddi_pll_disable,
>  	.get_hw_state = bxt_ddi_pll_get_hw_state,
>  	.get_freq = bxt_ddi_pll_get_freq,
>  };
> @@ -4138,21 +4138,21 @@ static bool icl_compare_hw_state(const struct intel_dpll_hw_state *_a,
>  
>  static const struct intel_dpll_funcs combo_pll_funcs = {
>  	.enable = combo_pll_enable,
> -	.disable = combo_pll_disable,
> +	.shared_dpll_disable = combo_pll_disable,
>  	.get_hw_state = combo_pll_get_hw_state,
>  	.get_freq = icl_ddi_combo_pll_get_freq,
>  };
>  
>  static const struct intel_dpll_funcs tbt_pll_funcs = {
>  	.enable = tbt_pll_enable,
> -	.disable = tbt_pll_disable,
> +	.shared_dpll_disable = tbt_pll_disable,
>  	.get_hw_state = tbt_pll_get_hw_state,
>  	.get_freq = icl_ddi_tbt_pll_get_freq,
>  };
>  
>  static const struct intel_dpll_funcs mg_pll_funcs = {
>  	.enable = mg_pll_enable,
> -	.disable = mg_pll_disable,
> +	.shared_dpll_disable = mg_pll_disable,
>  	.get_hw_state = mg_pll_get_hw_state,
>  	.get_freq = icl_ddi_mg_pll_get_freq,
>  };
> @@ -4200,7 +4200,7 @@ static const struct intel_dpll_mgr ehl_pll_mgr = {
>  
>  static const struct intel_dpll_funcs dkl_pll_funcs = {
>  	.enable = mg_pll_enable,
> -	.disable = mg_pll_disable,
> +	.shared_dpll_disable = mg_pll_disable,
>  	.get_hw_state = dkl_pll_get_hw_state,
>  	.get_freq = icl_ddi_mg_pll_get_freq,
>  };

-- 
Jani Nikula, Intel
