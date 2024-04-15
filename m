Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBCCE8A534B
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 16:26:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74E7F11260A;
	Mon, 15 Apr 2024 14:26:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V7uiUq6W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A18351125FF
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Apr 2024 14:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713191184; x=1744727184;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=eMpym9nBsWJdtsrGPff1SQys4cU7Y+cth0asptYu2b4=;
 b=V7uiUq6W4XxhA/MiA+osDVhIrhkdVIZLZsG+5gJ5VxjXkThiOZT6oQ/T
 h5TPILocIA2llddvSrV8yAeiKSAmj6T99dMc3c2Ujeqpeyg3yEMEyM9Xo
 7KRDD+iBdjIAH4V+tVdI844DHET5bGA0tCWXDc7uL7U0rH3KQktbMTzhH
 lZHSxVq9tGh2sktVYCxk3l8iFN5sSU6fq7K5C54pPA2gHeNxnzq0mmgOF
 NB6ZW9IlX5Y5HumKdvl8m1MyMUxHiKa2FlHKYG56UhS3dQGgft+7c/mfR
 uq56+CODvqkPR0vOam2ZLwjMkMozmVWI9iVWAC3fQWynkSgw2goTZ9ozf w==;
X-CSE-ConnectionGUID: 1t5OGfkZT2eqaLXft6Iafg==
X-CSE-MsgGUID: eGX9R8IATDKnCUzsNWnZvw==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="19145384"
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="19145384"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 07:26:24 -0700
X-CSE-ConnectionGUID: nKry9gAuQ5y/rb0+jyQNbQ==
X-CSE-MsgGUID: VT0zodc3QRe0YXWT54dZ1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="26595176"
Received: from lcariou-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.61.121])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 07:26:22 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 18/18] drm/i915: Suck snps/cx0 PLL states into
 dpll_hw_state
In-Reply-To: <20240412182703.19916-19-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240412182703.19916-1-ville.syrjala@linux.intel.com>
 <20240412182703.19916-19-ville.syrjala@linux.intel.com>
Date: Mon, 15 Apr 2024 17:26:11 +0300
Message-ID: <87y19e1z3w.fsf@intel.com>
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

On Fri, 12 Apr 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> index d0ec6196d398..f09e513ce05b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -229,6 +229,43 @@ struct icl_dpll_hw_state {
>  	u32 mg_pll_tdc_coldst_bias_mask;
>  };
>  
> +struct intel_mpllb_state {
> +	u32 clock; /* in KHz */
> +	u32 ref_control;
> +	u32 mpllb_cp;
> +	u32 mpllb_div;
> +	u32 mpllb_div2;
> +	u32 mpllb_fracn1;
> +	u32 mpllb_fracn2;
> +	u32 mpllb_sscen;
> +	u32 mpllb_sscstep;
> +};
> +
> +struct intel_c10pll_state {
> +	u32 clock; /* in KHz */
> +	u8 tx;
> +	u8 cmn;
> +	u8 pll[20];
> +};
> +
> +struct intel_c20pll_state {
> +	u32 clock; /* in kHz */
> +	u16 tx[3];
> +	u16 cmn[4];
> +	union {
> +		u16 mplla[10];
> +		u16 mpllb[11];
> +	};
> +};
> +
> +struct intel_cx0pll_state {
> +	union {
> +		struct intel_c10pll_state c10;
> +		struct intel_c20pll_state c20;
> +	};
> +	bool ssc_enabled;
> +};

IMO struct intel_cx0pll_state should be dropped in follow-up, with
ssc_enabled moved to both intel_c10pll_state and intel_c20pll_state...

> +
>  struct intel_dpll_hw_state {
>  	union {
>  		struct i9xx_dpll_hw_state i9xx;
> @@ -236,6 +273,8 @@ struct intel_dpll_hw_state {
>  		struct skl_dpll_hw_state skl;
>  		struct bxt_dpll_hw_state bxt;
>  		struct icl_dpll_hw_state icl;
> +		struct intel_mpllb_state mpllb;
> +		struct intel_cx0pll_state cx0pll;

...and both added here i.e. the union at a step higher.

BR,
Jani.

>  	};
>  };
>  

-- 
Jani Nikula, Intel
