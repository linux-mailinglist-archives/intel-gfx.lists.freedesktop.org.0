Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 014E4348D78
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 10:56:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F4CA6ED01;
	Thu, 25 Mar 2021 09:56:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A9466ED03
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 09:56:18 +0000 (UTC)
IronPort-SDR: DXpklNr/LkFVHjrIfdXwNnkm//ErxWNnptx08T8ZJrngli5BrL0oGCxjuQxl7pgK1QO3QkZNVY
 rXAfJv0uRSkw==
X-IronPort-AV: E=McAfee;i="6000,8403,9933"; a="188597426"
X-IronPort-AV: E=Sophos;i="5.81,277,1610438400"; d="scan'208";a="188597426"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 02:56:18 -0700
IronPort-SDR: 7uplAYxIZahmou7VigKZbT2998YQrKwZaJ9VP+HC69vC+6BxSI/YJNp6WxrME2ZiMRobHb8Wtw
 3WFkVLJMenDQ==
X-IronPort-AV: E=Sophos;i="5.81,277,1610438400"; d="scan'208";a="415922451"
Received: from ssettalu-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.209.123.151])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 02:56:17 -0700
Date: Thu, 25 Mar 2021 05:56:15 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <YFxePx9O6EMAlsWP@intel.com>
References: <20210325093213.20794-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210325093213.20794-1-anshuman.gupta@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Tweaked Wa_14010685332 for all
 PCHs
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
Cc: david.e.box@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 25, 2021 at 03:02:13PM +0530, Anshuman Gupta wrote:
> dispcnlunit1_cp_xosc_clkreq clock observed to be active on TGL-H platform
> despite Wa_14010685332 original sequence thus blocks entry to deeper s0ix state.
> 
> The Tweaked Wa_14010685332 sequence fixes this issue, therefore use tweaked
> Wa_14010685332 sequence for every PCH since PCH_CNP.
> 
> Fixes: b896898c7369 ("drm/i915: Tweaked Wa_14010685332 for PCHs used on gen11 platforms")
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  .../drm/i915/display/intel_display_power.c    | 18 +++++++++-------
>  drivers/gpu/drm/i915/i915_irq.c               | 21 -------------------
>  2 files changed, 10 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 7e0eaa872350..4e970be36487 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -5910,13 +5910,14 @@ void intel_display_power_suspend_late(struct drm_i915_private *i915)
>  {
>  	if (INTEL_GEN(i915) >= 11 || IS_GEN9_LP(i915)) {
>  		bxt_enable_dc9(i915);
> -		/* Tweaked Wa_14010685332:icp,jsp,mcc */
> -		if (INTEL_PCH_TYPE(i915) >= PCH_ICP && INTEL_PCH_TYPE(i915) <= PCH_MCC)
> -			intel_de_rmw(i915, SOUTH_CHICKEN1,
> -				     SBCLK_RUN_REFCLK_DIS, SBCLK_RUN_REFCLK_DIS);
>  	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
>  		hsw_enable_pc8(i915);
>  	}
> +
> +	/* Tweaked Wa_14010685332:cnp,icp,jsp,mcc,tgp,rkl,adp */

why are you adding "rkl"?
I don't like mixing gpu with pch names...


> +	if (INTEL_PCH_TYPE(i915) == PCH_CNP ||
> +	    (INTEL_PCH_TYPE(i915) >= PCH_ICP && INTEL_PCH_TYPE(i915) < PCH_DG1))

why can't we simply use

if (INTEL_PCH_TYPE(i915) >= PCH_CNP)

?

> +		intel_de_rmw(i915, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS, SBCLK_RUN_REFCLK_DIS);
>  }
>  
>  void intel_display_power_resume_early(struct drm_i915_private *i915)
> @@ -5924,13 +5925,14 @@ void intel_display_power_resume_early(struct drm_i915_private *i915)
>  	if (INTEL_GEN(i915) >= 11 || IS_GEN9_LP(i915)) {
>  		gen9_sanitize_dc_state(i915);
>  		bxt_disable_dc9(i915);
> -		/* Tweaked Wa_14010685332:icp,jsp,mcc */
> -		if (INTEL_PCH_TYPE(i915) >= PCH_ICP && INTEL_PCH_TYPE(i915) <= PCH_MCC)
> -			intel_de_rmw(i915, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS, 0);
> -
>  	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
>  		hsw_disable_pc8(i915);
>  	}
> +
> +	/* Tweaked Wa_14010685332:cnp,icp,jsp,mcc,tgp,rkl,adp */
> +	if (INTEL_PCH_TYPE(i915) == PCH_CNP ||
> +	    (INTEL_PCH_TYPE(i915) >= PCH_ICP && INTEL_PCH_TYPE(i915) < PCH_DG1))
> +		intel_de_rmw(i915, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS, 0);
>  }
>  
>  void intel_display_power_suspend(struct drm_i915_private *i915)
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 44aed4cbf894..8abcd35df926 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -3040,24 +3040,6 @@ static void valleyview_irq_reset(struct drm_i915_private *dev_priv)
>  	spin_unlock_irq(&dev_priv->irq_lock);
>  }
>  
> -static void cnp_display_clock_wa(struct drm_i915_private *dev_priv)
> -{
> -	struct intel_uncore *uncore = &dev_priv->uncore;
> -
> -	/*
> -	 * Wa_14010685332:cnp/cmp,tgp,adp
> -	 * TODO: Clarify which platforms this applies to
> -	 * TODO: Figure out if this workaround can be applied in the s0ix suspend/resume handlers as
> -	 * on earlier platforms and whether the workaround is also needed for runtime suspend/resume
> -	 */
> -	if (INTEL_PCH_TYPE(dev_priv) == PCH_CNP ||
> -	    (INTEL_PCH_TYPE(dev_priv) >= PCH_TGP && INTEL_PCH_TYPE(dev_priv) < PCH_DG1)) {
> -		intel_uncore_rmw(uncore, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS,
> -				 SBCLK_RUN_REFCLK_DIS);
> -		intel_uncore_rmw(uncore, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS, 0);
> -	}
> -}
> -
>  static void gen8_irq_reset(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_uncore *uncore = &dev_priv->uncore;
> @@ -3082,7 +3064,6 @@ static void gen8_irq_reset(struct drm_i915_private *dev_priv)
>  	if (HAS_PCH_SPLIT(dev_priv))
>  		ibx_irq_reset(dev_priv);
>  
> -	cnp_display_clock_wa(dev_priv);
>  }
>  
>  static void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
> @@ -3123,8 +3104,6 @@ static void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
>  
>  	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
>  		GEN3_IRQ_RESET(uncore, SDE);
> -
> -	cnp_display_clock_wa(dev_priv);
>  }
>  
>  static void gen11_irq_reset(struct drm_i915_private *dev_priv)
> -- 
> 2.26.2
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
