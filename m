Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2519B493966
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jan 2022 12:19:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A77710E6D7;
	Wed, 19 Jan 2022 11:19:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B3C810E3F6
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jan 2022 11:19:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642591196; x=1674127196;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lzj2L2m68F7S7sKkeZZs7i/lyMJ8gySYiX3mnXK5/qA=;
 b=n1bXpaDnZH3Rtft+mBAycS2HLvTPwrJcXp5fN5TjzCI5ATgoITuQM6Al
 UE0h8SaTenZF+PaPBR2Pk4QvkFjMhzqwKtLuQbliiPLZ2juBUp2bMzMTs
 oUWnOQ/9sfOUcv8fRbYkaOQcQ3EcZShg/PmLmMt1iQ2vvoSH15GlIB0fP
 HAonC4B1BzZtOkZOuoMis4YEZ3TpnDcCfkUHRXOoMDq+FMmzZYuBTM8nS
 y5hDZj2GVoCwagU3iTnyfnWT2G26YnudBwuSTby+u/cOqz2K0rBqWH1Rz
 ccUYkbAwsGw2cQYlb6nHhiFPI16gBzUiAdSvrDUhYl3DJLADVVQ2POf3j g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="245240163"
X-IronPort-AV: E=Sophos;i="5.88,299,1635231600"; d="scan'208";a="245240163"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 03:19:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,299,1635231600"; d="scan'208";a="578788667"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga008.fm.intel.com with SMTP; 19 Jan 2022 03:19:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Jan 2022 13:19:49 +0200
Date: Wed, 19 Jan 2022 13:19:49 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Yefz1QhQ+FswtECE@intel.com>
References: <20220119110528.2377899-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220119110528.2377899-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dpll: make intel_shared_dpll_funcs
 internal to intel_dpll_mgr.c
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 19, 2022 at 01:05:28PM +0200, Jani Nikula wrote:
> Move struct intel_shared_dpll_funcs to intel_dpll_mgr.c, as no other
> place needs to have access to it. We also don't need to have kernel-doc
> documentation for file internal structures, so drop them while at it.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 35 ++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h | 46 +------------------
>  2 files changed, 36 insertions(+), 45 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 3f7357123a6d..6723c3de5a80 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -50,6 +50,41 @@
>   * commit phase.
>   */
>  
> +/* platform specific hooks for managing DPLLs */
> +struct intel_shared_dpll_funcs {
> +	/*
> +	 * Hook for enabling the pll, called from intel_enable_shared_dpll() if
> +	 * the pll is not already enabled.
> +	 */
> +	void (*enable)(struct drm_i915_private *i915,
> +		       struct intel_shared_dpll *pll);
> +
> +	/*
> +	 * Hook for disabling the pll, called from intel_disable_shared_dpll()
> +	 * only when it is safe to disable the pll, i.e., there are no more
> +	 * tracked users for it.
> +	 */
> +	void (*disable)(struct drm_i915_private *i915,
> +			struct intel_shared_dpll *pll);
> +
> +	/*
> +	 * Hook for reading the values currently programmed to the DPLL
> +	 * registers. This is used for initial hw state readout and state
> +	 * verification after a mode set.
> +	 */
> +	bool (*get_hw_state)(struct drm_i915_private *i915,
> +			     struct intel_shared_dpll *pll,
> +			     struct intel_dpll_hw_state *hw_state);
> +
> +	/*
> +	 * Hook for calculating the pll's output frequency based on its passed
> +	 * in state.
> +	 */
> +	int (*get_freq)(struct drm_i915_private *i915,
> +			const struct intel_shared_dpll *pll,
> +			const struct intel_dpll_hw_state *pll_state);
> +};
> +
>  struct intel_dpll_mgr {
>  	const struct dpll_info *dpll_info;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> index ef2889753807..91fe181462b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -44,6 +44,7 @@ struct intel_crtc;
>  struct intel_crtc_state;
>  struct intel_encoder;
>  struct intel_shared_dpll;
> +struct intel_shared_dpll_funcs;
>  
>  /**
>   * enum intel_dpll_id - possible DPLL ids
> @@ -251,51 +252,6 @@ struct intel_shared_dpll_state {
>  	struct intel_dpll_hw_state hw_state;
>  };
>  
> -/**
> - * struct intel_shared_dpll_funcs - platform specific hooks for managing DPLLs
> - */
> -struct intel_shared_dpll_funcs {
> -	/**
> -	 * @enable:
> -	 *
> -	 * Hook for enabling the pll, called from intel_enable_shared_dpll()
> -	 * if the pll is not already enabled.
> -	 */
> -	void (*enable)(struct drm_i915_private *dev_priv,
> -		       struct intel_shared_dpll *pll);
> -
> -	/**
> -	 * @disable:
> -	 *
> -	 * Hook for disabling the pll, called from intel_disable_shared_dpll()
> -	 * only when it is safe to disable the pll, i.e., there are no more
> -	 * tracked users for it.
> -	 */
> -	void (*disable)(struct drm_i915_private *dev_priv,
> -			struct intel_shared_dpll *pll);
> -
> -	/**
> -	 * @get_hw_state:
> -	 *
> -	 * Hook for reading the values currently programmed to the DPLL
> -	 * registers. This is used for initial hw state readout and state
> -	 * verification after a mode set.
> -	 */
> -	bool (*get_hw_state)(struct drm_i915_private *dev_priv,
> -			     struct intel_shared_dpll *pll,
> -			     struct intel_dpll_hw_state *hw_state);
> -
> -	/**
> -	 * @get_freq:
> -	 *
> -	 * Hook for calculating the pll's output frequency based on its
> -	 * passed in state.
> -	 */
> -	int (*get_freq)(struct drm_i915_private *i915,
> -			const struct intel_shared_dpll *pll,
> -			const struct intel_dpll_hw_state *pll_state);
> -};
> -
>  /**
>   * struct dpll_info - display PLL platform specific info
>   */
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
