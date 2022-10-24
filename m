Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FF660B5AE
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 20:37:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A110910E094;
	Mon, 24 Oct 2022 18:37:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8926510E094
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 18:37:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666636627; x=1698172627;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=9GGfDx1GkpPWwVaWDvySIPLJ8dKOMGcULXZ50cflxas=;
 b=NoVk2j/JnSFoJQYV8W2pFRqWHtxVH8yPVFEFpgDb6+FqfKm4FThywtMr
 jJjWfMvV+slHSWe4ah4H7o/BxWs7Ft8F7ukbxBQggWrAG8wQramau9RZj
 0lK1TPopHpAIi9KTVWeTdv1kQCJ5elhLsvltA4z5nt4k8KfjK30U23HYl
 oBfyR6qxThI53Gtqmwu5kDEPO7XzpdFY4+CQMBdjr09mHqqCNjaHSqi32
 Hjmz+sMwmmdHUr6LQkbx1AV3mTaKnErqHNHH5l9WWm9cDGsl5LR+RPyFt
 oWnd0kfJsdhzrshkXyWONVwPq3/U60Um0nsMk6VVKHwRABmel+Q+yUBQ5 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="290797819"
X-IronPort-AV: E=Sophos;i="5.95,210,1661842800"; d="scan'208";a="290797819"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 11:37:06 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="700261183"
X-IronPort-AV: E=Sophos;i="5.95,210,1661842800"; d="scan'208";a="700261183"
Received: from scsudhak-mobl5.gar.corp.intel.com (HELO intel.com)
 ([10.251.215.22])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 11:37:03 -0700
Date: Mon, 24 Oct 2022 20:37:01 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y1bbTbF6pzKjKbqC@ashyti-mobl2.lan>
References: <20221019143818.244339-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221019143818.244339-1-andrzej.hajda@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: use intel_uncore_rmw when
 appropriate
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Wed, Oct 19, 2022 at 04:38:17PM +0200, Andrzej Hajda wrote:
> This patch replaces all occurences of the form
> intel_uncore_write(reg, intel_uncore_read(reg) OP val)
> with intel_uncore_rmw.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

both the patches pushed in drm-intel-gt-next.

Thanks,
Andi

> ---
> v2:
> - removed spare parens and moved clear/set args to the same line (Ville)
> - split i915 and gt stuff (Ville)
> - rebased on the latest drm-tip
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 187 +++++++++++---------------------
>  1 file changed, 66 insertions(+), 121 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index f736b2181c12e0..ee34e278563603 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -60,25 +60,20 @@ static void gen9_init_clock_gating(struct drm_i915_private *dev_priv)
>  		 * Must match Sampler, Pixel Back End, and Media. See
>  		 * WaCompressedResourceSamplerPbeMediaNewHashMode.
>  		 */
> -		intel_uncore_write(&dev_priv->uncore, CHICKEN_PAR1_1,
> -			   intel_uncore_read(&dev_priv->uncore, CHICKEN_PAR1_1) |
> -			   SKL_DE_COMPRESSED_HASH_MODE);
> +		intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PAR1_1, 0, SKL_DE_COMPRESSED_HASH_MODE);
>  	}
>  
>  	/* See Bspec note for PSR2_CTL bit 31, Wa#828:skl,bxt,kbl,cfl */
> -	intel_uncore_write(&dev_priv->uncore, CHICKEN_PAR1_1,
> -		   intel_uncore_read(&dev_priv->uncore, CHICKEN_PAR1_1) | SKL_EDP_PSR_FIX_RDWRAP);
> +	intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PAR1_1, 0, SKL_EDP_PSR_FIX_RDWRAP);
>  
>  	/* WaEnableChickenDCPR:skl,bxt,kbl,glk,cfl */
> -	intel_uncore_write(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1,
> -		   intel_uncore_read(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1) | MASK_WAKEMEM);
> +	intel_uncore_rmw(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1, 0, MASK_WAKEMEM);
>  
>  	/*
>  	 * WaFbcWakeMemOn:skl,bxt,kbl,glk,cfl
>  	 * Display WA #0859: skl,bxt,kbl,glk,cfl
>  	 */
> -	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |
> -		   DISP_FBC_MEMORY_WAKE);
> +	intel_uncore_rmw(&dev_priv->uncore, DISP_ARB_CTL, 0, DISP_FBC_MEMORY_WAKE);
>  }
>  
>  static void bxt_init_clock_gating(struct drm_i915_private *dev_priv)
> @@ -86,15 +81,13 @@ static void bxt_init_clock_gating(struct drm_i915_private *dev_priv)
>  	gen9_init_clock_gating(dev_priv);
>  
>  	/* WaDisableSDEUnitClockGating:bxt */
> -	intel_uncore_write(&dev_priv->uncore, GEN8_UCGCTL6, intel_uncore_read(&dev_priv->uncore, GEN8_UCGCTL6) |
> -		   GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
> +	intel_uncore_rmw(&dev_priv->uncore, GEN8_UCGCTL6, 0, GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
>  
>  	/*
>  	 * FIXME:
>  	 * GEN8_HDCUNIT_CLOCK_GATE_DISABLE_HDCREQ applies on 3x6 GT SKUs only.
>  	 */
> -	intel_uncore_write(&dev_priv->uncore, GEN8_UCGCTL6, intel_uncore_read(&dev_priv->uncore, GEN8_UCGCTL6) |
> -		   GEN8_HDCUNIT_CLOCK_GATE_DISABLE_HDCREQ);
> +	intel_uncore_rmw(&dev_priv->uncore, GEN8_UCGCTL6, 0, GEN8_HDCUNIT_CLOCK_GATE_DISABLE_HDCREQ);
>  
>  	/*
>  	 * Wa: Backlight PWM may stop in the asserted state, causing backlight
> @@ -115,16 +108,13 @@ static void bxt_init_clock_gating(struct drm_i915_private *dev_priv)
>  	 * WaFbcTurnOffFbcWatermark:bxt
>  	 * Display WA #0562: bxt
>  	 */
> -	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |
> -		   DISP_FBC_WM_DIS);
> +	intel_uncore_rmw(&dev_priv->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
>  
>  	/*
>  	 * WaFbcHighMemBwCorruptionAvoidance:bxt
>  	 * Display WA #0883: bxt
>  	 */
> -	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
> -			   intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A)) |
> -			   DPFC_DISABLE_DUMMY0);
> +	intel_uncore_rmw(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A), 0, DPFC_DISABLE_DUMMY0);
>  }
>  
>  static void glk_init_clock_gating(struct drm_i915_private *dev_priv)
> @@ -4055,9 +4045,9 @@ void vlv_wm_sanitize(struct drm_i915_private *dev_priv)
>   */
>  static void ilk_init_lp_watermarks(struct drm_i915_private *dev_priv)
>  {
> -	intel_uncore_write(&dev_priv->uncore, WM3_LP_ILK, intel_uncore_read(&dev_priv->uncore, WM3_LP_ILK) & ~WM_LP_ENABLE);
> -	intel_uncore_write(&dev_priv->uncore, WM2_LP_ILK, intel_uncore_read(&dev_priv->uncore, WM2_LP_ILK) & ~WM_LP_ENABLE);
> -	intel_uncore_write(&dev_priv->uncore, WM1_LP_ILK, intel_uncore_read(&dev_priv->uncore, WM1_LP_ILK) & ~WM_LP_ENABLE);
> +	intel_uncore_rmw(&dev_priv->uncore, WM3_LP_ILK, WM_LP_ENABLE, 0);
> +	intel_uncore_rmw(&dev_priv->uncore, WM2_LP_ILK, WM_LP_ENABLE, 0);
> +	intel_uncore_rmw(&dev_priv->uncore, WM1_LP_ILK, WM_LP_ENABLE, 0);
>  
>  	/*
>  	 * Don't touch WM_LP_SPRITE_ENABLE here.
> @@ -4111,9 +4101,7 @@ static void g4x_disable_trickle_feed(struct drm_i915_private *dev_priv)
>  	enum pipe pipe;
>  
>  	for_each_pipe(dev_priv, pipe) {
> -		intel_uncore_write(&dev_priv->uncore, DSPCNTR(pipe),
> -			   intel_uncore_read(&dev_priv->uncore, DSPCNTR(pipe)) |
> -			   DISP_TRICKLE_FEED_DISABLE);
> +		intel_uncore_rmw(&dev_priv->uncore, DSPCNTR(pipe), 0, DISP_TRICKLE_FEED_DISABLE);
>  
>  		intel_uncore_rmw(&dev_priv->uncore, DSPSURF(pipe), 0, 0);
>  		intel_uncore_posting_read(&dev_priv->uncore, DSPSURF(pipe));
> @@ -4162,19 +4150,13 @@ static void ilk_init_clock_gating(struct drm_i915_private *dev_priv)
>  	 */
>  	if (IS_IRONLAKE_M(dev_priv)) {
>  		/* WaFbcAsynchFlipDisableFbcQueue:ilk */
> -		intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1,
> -			   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1) |
> -			   ILK_FBCQ_DIS);
> -		intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2,
> -			   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2) |
> -			   ILK_DPARB_GATE);
> +		intel_uncore_rmw(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1, 0, ILK_FBCQ_DIS);
> +		intel_uncore_rmw(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2, 0, ILK_DPARB_GATE);
>  	}
>  
>  	intel_uncore_write(&dev_priv->uncore, ILK_DSPCLK_GATE_D, dspclk_gate);
>  
> -	intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2,
> -		   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2) |
> -		   ILK_ELPIN_409_SELECT);
> +	intel_uncore_rmw(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2, 0, ILK_ELPIN_409_SELECT);
>  
>  	g4x_disable_trickle_feed(dev_priv);
>  
> @@ -4194,8 +4176,7 @@ static void cpt_init_clock_gating(struct drm_i915_private *dev_priv)
>  	intel_uncore_write(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D, PCH_DPLSUNIT_CLOCK_GATE_DISABLE |
>  		   PCH_DPLUNIT_CLOCK_GATE_DISABLE |
>  		   PCH_CPUNIT_CLOCK_GATE_DISABLE);
> -	intel_uncore_write(&dev_priv->uncore, SOUTH_CHICKEN2, intel_uncore_read(&dev_priv->uncore, SOUTH_CHICKEN2) |
> -		   DPLS_EDP_PPS_FIX_DIS);
> +	intel_uncore_rmw(&dev_priv->uncore, SOUTH_CHICKEN2, 0, DPLS_EDP_PPS_FIX_DIS);
>  	/* The below fixes the weird display corruption, a few pixels shifted
>  	 * downward, on (only) LVDS of some HP laptops with IVY.
>  	 */
> @@ -4233,9 +4214,7 @@ static void gen6_init_clock_gating(struct drm_i915_private *dev_priv)
>  
>  	intel_uncore_write(&dev_priv->uncore, ILK_DSPCLK_GATE_D, dspclk_gate);
>  
> -	intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2,
> -		   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2) |
> -		   ILK_ELPIN_409_SELECT);
> +	intel_uncore_rmw(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2, 0, ILK_ELPIN_409_SELECT);
>  
>  	intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL1,
>  		   intel_uncore_read(&dev_priv->uncore, GEN6_UCGCTL1) |
> @@ -4295,14 +4274,12 @@ static void lpt_init_clock_gating(struct drm_i915_private *dev_priv)
>  	 * disabled when not needed anymore in order to save power.
>  	 */
>  	if (HAS_PCH_LPT_LP(dev_priv))
> -		intel_uncore_write(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D,
> -			   intel_uncore_read(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D) |
> -			   PCH_LP_PARTITION_LEVEL_DISABLE);
> +		intel_uncore_rmw(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D,
> +				 0, PCH_LP_PARTITION_LEVEL_DISABLE);
>  
>  	/* WADPOClockGatingDisable:hsw */
> -	intel_uncore_write(&dev_priv->uncore, TRANS_CHICKEN1(PIPE_A),
> -		   intel_uncore_read(&dev_priv->uncore, TRANS_CHICKEN1(PIPE_A)) |
> -		   TRANS_CHICKEN1_DP0UNIT_GC_DISABLE);
> +	intel_uncore_rmw(&dev_priv->uncore, TRANS_CHICKEN1(PIPE_A),
> +			 0, TRANS_CHICKEN1_DP0UNIT_GC_DISABLE);
>  }
>  
>  static void lpt_suspend_hw(struct drm_i915_private *dev_priv)
> @@ -4361,8 +4338,7 @@ static void gen12lp_init_clock_gating(struct drm_i915_private *dev_priv)
>  
>  	/* Wa_1409825376:tgl (pre-prod)*/
>  	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0))
> -		intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, intel_uncore_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_3) |
> -			   TGL_VRH_GATING_DIS);
> +		intel_uncore_rmw(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, 0, TGL_VRH_GATING_DIS);
>  
>  	/* Wa_14013723622:tgl,rkl,dg1,adl-s */
>  	if (DISPLAY_VER(dev_priv) == 12)
> @@ -4387,8 +4363,7 @@ static void dg1_init_clock_gating(struct drm_i915_private *dev_priv)
>  
>  	/* Wa_1409836686:dg1[a0] */
>  	if (IS_DG1_GRAPHICS_STEP(dev_priv, STEP_A0, STEP_B0))
> -		intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, intel_uncore_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_3) |
> -			   DPT_GATING_DIS);
> +		intel_uncore_rmw(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, 0, DPT_GATING_DIS);
>  }
>  
>  static void xehpsdv_init_clock_gating(struct drm_i915_private *dev_priv)
> @@ -4430,8 +4405,7 @@ static void cnp_init_clock_gating(struct drm_i915_private *dev_priv)
>  		return;
>  
>  	/* Display WA #1181 WaSouthDisplayDisablePWMCGEGating: cnp */
> -	intel_uncore_write(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D, intel_uncore_read(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D) |
> -		   CNP_PWM_CGE_GATING_DISABLE);
> +	intel_uncore_rmw(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D, 0, CNP_PWM_CGE_GATING_DISABLE);
>  }
>  
>  static void cfl_init_clock_gating(struct drm_i915_private *dev_priv)
> @@ -4440,23 +4414,20 @@ static void cfl_init_clock_gating(struct drm_i915_private *dev_priv)
>  	gen9_init_clock_gating(dev_priv);
>  
>  	/* WAC6entrylatency:cfl */
> -	intel_uncore_write(&dev_priv->uncore, FBC_LLC_READ_CTRL, intel_uncore_read(&dev_priv->uncore, FBC_LLC_READ_CTRL) |
> -		   FBC_LLC_FULLY_OPEN);
> +	intel_uncore_rmw(&dev_priv->uncore, FBC_LLC_READ_CTRL, 0, FBC_LLC_FULLY_OPEN);
>  
>  	/*
>  	 * WaFbcTurnOffFbcWatermark:cfl
>  	 * Display WA #0562: cfl
>  	 */
> -	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |
> -		   DISP_FBC_WM_DIS);
> +	intel_uncore_rmw(&dev_priv->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
>  
>  	/*
>  	 * WaFbcNukeOnHostModify:cfl
>  	 * Display WA #0873: cfl
>  	 */
> -	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
> -			   intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A)) |
> -			   DPFC_NUKE_ON_ANY_MODIFICATION);
> +	intel_uncore_rmw(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
> +			 0, DPFC_NUKE_ON_ANY_MODIFICATION);
>  }
>  
>  static void kbl_init_clock_gating(struct drm_i915_private *dev_priv)
> @@ -4464,33 +4435,30 @@ static void kbl_init_clock_gating(struct drm_i915_private *dev_priv)
>  	gen9_init_clock_gating(dev_priv);
>  
>  	/* WAC6entrylatency:kbl */
> -	intel_uncore_write(&dev_priv->uncore, FBC_LLC_READ_CTRL, intel_uncore_read(&dev_priv->uncore, FBC_LLC_READ_CTRL) |
> -		   FBC_LLC_FULLY_OPEN);
> +	intel_uncore_rmw(&dev_priv->uncore, FBC_LLC_READ_CTRL, 0, FBC_LLC_FULLY_OPEN);
>  
>  	/* WaDisableSDEUnitClockGating:kbl */
>  	if (IS_KBL_GRAPHICS_STEP(dev_priv, 0, STEP_C0))
> -		intel_uncore_write(&dev_priv->uncore, GEN8_UCGCTL6, intel_uncore_read(&dev_priv->uncore, GEN8_UCGCTL6) |
> -			   GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
> +		intel_uncore_rmw(&dev_priv->uncore, GEN8_UCGCTL6,
> +				 0, GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
>  
>  	/* WaDisableGamClockGating:kbl */
>  	if (IS_KBL_GRAPHICS_STEP(dev_priv, 0, STEP_C0))
> -		intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL1, intel_uncore_read(&dev_priv->uncore, GEN6_UCGCTL1) |
> -			   GEN6_GAMUNIT_CLOCK_GATE_DISABLE);
> +		intel_uncore_rmw(&dev_priv->uncore, GEN6_UCGCTL1,
> +				 0, GEN6_GAMUNIT_CLOCK_GATE_DISABLE);
>  
>  	/*
>  	 * WaFbcTurnOffFbcWatermark:kbl
>  	 * Display WA #0562: kbl
>  	 */
> -	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |
> -		   DISP_FBC_WM_DIS);
> +	intel_uncore_rmw(&dev_priv->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
>  
>  	/*
>  	 * WaFbcNukeOnHostModify:kbl
>  	 * Display WA #0873: kbl
>  	 */
> -	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
> -			   intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A)) |
> -			   DPFC_NUKE_ON_ANY_MODIFICATION);
> +	intel_uncore_rmw(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
> +			 0, DPFC_NUKE_ON_ANY_MODIFICATION);
>  }
>  
>  static void skl_init_clock_gating(struct drm_i915_private *dev_priv)
> @@ -4502,31 +4470,26 @@ static void skl_init_clock_gating(struct drm_i915_private *dev_priv)
>  				   GEN8_DOP_CLOCK_GATE_ENABLE, 0);
>  
>  	/* WAC6entrylatency:skl */
> -	intel_uncore_write(&dev_priv->uncore, FBC_LLC_READ_CTRL, intel_uncore_read(&dev_priv->uncore, FBC_LLC_READ_CTRL) |
> -		   FBC_LLC_FULLY_OPEN);
> +	intel_uncore_rmw(&dev_priv->uncore, FBC_LLC_READ_CTRL, 0, FBC_LLC_FULLY_OPEN);
>  
>  	/*
>  	 * WaFbcTurnOffFbcWatermark:skl
>  	 * Display WA #0562: skl
>  	 */
> -	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |
> -		   DISP_FBC_WM_DIS);
> +	intel_uncore_rmw(&dev_priv->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
>  
>  	/*
>  	 * WaFbcNukeOnHostModify:skl
>  	 * Display WA #0873: skl
>  	 */
> -	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
> -			   intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A)) |
> -			   DPFC_NUKE_ON_ANY_MODIFICATION);
> +	intel_uncore_rmw(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
> +			 0, DPFC_NUKE_ON_ANY_MODIFICATION);
>  
>  	/*
>  	 * WaFbcHighMemBwCorruptionAvoidance:skl
>  	 * Display WA #0883: skl
>  	 */
> -	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
> -			   intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A)) |
> -			   DPFC_DISABLE_DUMMY0);
> +	intel_uncore_rmw(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A), 0, DPFC_DISABLE_DUMMY0);
>  }
>  
>  static void bdw_init_clock_gating(struct drm_i915_private *dev_priv)
> @@ -4534,43 +4497,37 @@ static void bdw_init_clock_gating(struct drm_i915_private *dev_priv)
>  	enum pipe pipe;
>  
>  	/* WaFbcAsynchFlipDisableFbcQueue:hsw,bdw */
> -	intel_uncore_write(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A),
> -		   intel_uncore_read(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A)) |
> -		   HSW_FBCQ_DIS);
> +	intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A), 0, HSW_FBCQ_DIS);
>  
>  	/* WaSwitchSolVfFArbitrationPriority:bdw */
> -	intel_uncore_write(&dev_priv->uncore, GAM_ECOCHK, intel_uncore_read(&dev_priv->uncore, GAM_ECOCHK) | HSW_ECOCHK_ARB_PRIO_SOL);
> +	intel_uncore_rmw(&dev_priv->uncore, GAM_ECOCHK, 0, HSW_ECOCHK_ARB_PRIO_SOL);
>  
>  	/* WaPsrDPAMaskVBlankInSRD:bdw */
> -	intel_uncore_write(&dev_priv->uncore, CHICKEN_PAR1_1,
> -		   intel_uncore_read(&dev_priv->uncore, CHICKEN_PAR1_1) | DPA_MASK_VBLANK_SRD);
> +	intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PAR1_1, 0, DPA_MASK_VBLANK_SRD);
>  
>  	for_each_pipe(dev_priv, pipe) {
>  		/* WaPsrDPRSUnmaskVBlankInSRD:bdw */
> -		intel_uncore_write(&dev_priv->uncore, CHICKEN_PIPESL_1(pipe),
> -			   intel_uncore_read(&dev_priv->uncore, CHICKEN_PIPESL_1(pipe)) |
> -			   BDW_DPRS_MASK_VBLANK_SRD);
> +		intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PIPESL_1(pipe),
> +				 0, BDW_DPRS_MASK_VBLANK_SRD);
>  	}
>  
>  	/* WaVSRefCountFullforceMissDisable:bdw */
>  	/* WaDSRefCountFullforceMissDisable:bdw */
> -	intel_uncore_write(&dev_priv->uncore, GEN7_FF_THREAD_MODE,
> -		   intel_uncore_read(&dev_priv->uncore, GEN7_FF_THREAD_MODE) &
> -		   ~(GEN8_FF_DS_REF_CNT_FFME | GEN7_FF_VS_REF_CNT_FFME));
> +	intel_uncore_rmw(&dev_priv->uncore, GEN7_FF_THREAD_MODE,
> +			 GEN8_FF_DS_REF_CNT_FFME | GEN7_FF_VS_REF_CNT_FFME, 0);
>  
>  	intel_uncore_write(&dev_priv->uncore, RING_PSMI_CTL(RENDER_RING_BASE),
>  		   _MASKED_BIT_ENABLE(GEN8_RC_SEMA_IDLE_MSG_DISABLE));
>  
>  	/* WaDisableSDEUnitClockGating:bdw */
> -	intel_uncore_write(&dev_priv->uncore, GEN8_UCGCTL6, intel_uncore_read(&dev_priv->uncore, GEN8_UCGCTL6) |
> -		   GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
> +	intel_uncore_rmw(&dev_priv->uncore, GEN8_UCGCTL6, 0, GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
>  
>  	/* WaProgramL3SqcReg1Default:bdw */
>  	gen8_set_l3sqc_credits(dev_priv, 30, 2);
>  
>  	/* WaKVMNotificationOnConfigChange:bdw */
> -	intel_uncore_write(&dev_priv->uncore, CHICKEN_PAR2_1, intel_uncore_read(&dev_priv->uncore, CHICKEN_PAR2_1)
> -		   | KVM_CONFIG_CHANGE_NOTIFICATION_SELECT);
> +	intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PAR2_1,
> +			 0, KVM_CONFIG_CHANGE_NOTIFICATION_SELECT);
>  
>  	lpt_init_clock_gating(dev_priv);
>  
> @@ -4579,24 +4536,20 @@ static void bdw_init_clock_gating(struct drm_i915_private *dev_priv)
>  	 * Also see the CHICKEN2 write in bdw_init_workarounds() to disable DOP
>  	 * clock gating.
>  	 */
> -	intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL1,
> -		   intel_uncore_read(&dev_priv->uncore, GEN6_UCGCTL1) | GEN6_EU_TCUNIT_CLOCK_GATE_DISABLE);
> +	intel_uncore_rmw(&dev_priv->uncore, GEN6_UCGCTL1, 0, GEN6_EU_TCUNIT_CLOCK_GATE_DISABLE);
>  }
>  
>  static void hsw_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
>  	/* WaFbcAsynchFlipDisableFbcQueue:hsw,bdw */
> -	intel_uncore_write(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A),
> -		   intel_uncore_read(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A)) |
> -		   HSW_FBCQ_DIS);
> +	intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A), 0, HSW_FBCQ_DIS);
>  
>  	/* This is required by WaCatErrorRejectionIssue:hsw */
> -	intel_uncore_write(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
> -		   intel_uncore_read(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG) |
> -		   GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);
> +	intel_uncore_rmw(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
> +			 0, GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);
>  
>  	/* WaSwitchSolVfFArbitrationPriority:hsw */
> -	intel_uncore_write(&dev_priv->uncore, GAM_ECOCHK, intel_uncore_read(&dev_priv->uncore, GAM_ECOCHK) | HSW_ECOCHK_ARB_PRIO_SOL);
> +	intel_uncore_rmw(&dev_priv->uncore, GAM_ECOCHK, 0, HSW_ECOCHK_ARB_PRIO_SOL);
>  
>  	lpt_init_clock_gating(dev_priv);
>  }
> @@ -4606,9 +4559,7 @@ static void ivb_init_clock_gating(struct drm_i915_private *dev_priv)
>  	intel_uncore_write(&dev_priv->uncore, ILK_DSPCLK_GATE_D, ILK_VRHUNIT_CLOCK_GATE_DISABLE);
>  
>  	/* WaFbcAsynchFlipDisableFbcQueue:ivb */
> -	intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1,
> -		   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1) |
> -		   ILK_FBCQ_DIS);
> +	intel_uncore_rmw(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1, 0, ILK_FBCQ_DIS);
>  
>  	/* WaDisableBackToBackFlipFix:ivb */
>  	intel_uncore_write(&dev_priv->uncore, IVB_CHICKEN3,
> @@ -4634,9 +4585,8 @@ static void ivb_init_clock_gating(struct drm_i915_private *dev_priv)
>  		   GEN6_RCZUNIT_CLOCK_GATE_DISABLE);
>  
>  	/* This is required by WaCatErrorRejectionIssue:ivb */
> -	intel_uncore_write(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
> -			intel_uncore_read(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG) |
> -			GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);
> +	intel_uncore_rmw(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
> +			 0, GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);
>  
>  	g4x_disable_trickle_feed(dev_priv);
>  
> @@ -4661,9 +4611,8 @@ static void vlv_init_clock_gating(struct drm_i915_private *dev_priv)
>  		   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));
>  
>  	/* This is required by WaCatErrorRejectionIssue:vlv */
> -	intel_uncore_write(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
> -		   intel_uncore_read(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG) |
> -		   GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);
> +	intel_uncore_rmw(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
> +			 0, GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);
>  
>  	/*
>  	 * According to the spec, bit 13 (RCZUNIT) must be set on IVB.
> @@ -4675,8 +4624,7 @@ static void vlv_init_clock_gating(struct drm_i915_private *dev_priv)
>  	/* WaDisableL3Bank2xClockGate:vlv
>  	 * Disabling L3 clock gating- MMIO 940c[25] = 1
>  	 * Set bit 25, to disable L3_BANK_2x_CLK_GATING */
> -	intel_uncore_write(&dev_priv->uncore, GEN7_UCGCTL4,
> -		   intel_uncore_read(&dev_priv->uncore, GEN7_UCGCTL4) | GEN7_L3BANK2X_CLOCK_GATE_DISABLE);
> +	intel_uncore_rmw(&dev_priv->uncore, GEN7_UCGCTL4, 0, GEN7_L3BANK2X_CLOCK_GATE_DISABLE);
>  
>  	/*
>  	 * WaDisableVLVClockGating_VBIIssue:vlv
> @@ -4690,21 +4638,18 @@ static void chv_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
>  	/* WaVSRefCountFullforceMissDisable:chv */
>  	/* WaDSRefCountFullforceMissDisable:chv */
> -	intel_uncore_write(&dev_priv->uncore, GEN7_FF_THREAD_MODE,
> -		   intel_uncore_read(&dev_priv->uncore, GEN7_FF_THREAD_MODE) &
> -		   ~(GEN8_FF_DS_REF_CNT_FFME | GEN7_FF_VS_REF_CNT_FFME));
> +	intel_uncore_rmw(&dev_priv->uncore, GEN7_FF_THREAD_MODE,
> +			 GEN8_FF_DS_REF_CNT_FFME | GEN7_FF_VS_REF_CNT_FFME, 0);
>  
>  	/* WaDisableSemaphoreAndSyncFlipWait:chv */
>  	intel_uncore_write(&dev_priv->uncore, RING_PSMI_CTL(RENDER_RING_BASE),
>  		   _MASKED_BIT_ENABLE(GEN8_RC_SEMA_IDLE_MSG_DISABLE));
>  
>  	/* WaDisableCSUnitClockGating:chv */
> -	intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL1, intel_uncore_read(&dev_priv->uncore, GEN6_UCGCTL1) |
> -		   GEN6_CSUNIT_CLOCK_GATE_DISABLE);
> +	intel_uncore_rmw(&dev_priv->uncore, GEN6_UCGCTL1, 0, GEN6_CSUNIT_CLOCK_GATE_DISABLE);
>  
>  	/* WaDisableSDEUnitClockGating:chv */
> -	intel_uncore_write(&dev_priv->uncore, GEN8_UCGCTL6, intel_uncore_read(&dev_priv->uncore, GEN8_UCGCTL6) |
> -		   GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
> +	intel_uncore_rmw(&dev_priv->uncore, GEN8_UCGCTL6, 0, GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
>  
>  	/*
>  	 * WaProgramL3SqcReg1Default:chv
> -- 
> 2.34.1
