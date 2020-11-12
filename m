Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E682B0FB5
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Nov 2020 21:59:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A855A6E440;
	Thu, 12 Nov 2020 20:59:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 112336E439
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Nov 2020 20:59:35 +0000 (UTC)
IronPort-SDR: iJR8+6bENDpdu2WMGNsi1ZFmcsIoLi1APZdovo0bJY+J8+HvOoyrbu0algq/uVJnoHU7nK+zKl
 6Ko21ISuM4yg==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="166872688"
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="166872688"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 12:59:34 -0800
IronPort-SDR: mepBPcaha1xbLKkYfqoccxlopZw3MPzUVqa0mzKfKHJNi/o9U8qT53bjvEs2R5CTKPFcGw97Qh
 Y+a2R5M0WYng==
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="361116440"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.201])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 12:59:34 -0800
Date: Thu, 12 Nov 2020 16:00:48 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20201112210048.GH1198919@intel.com>
References: <cover.1605181350.git.jani.nikula@intel.com>
 <8958ee8e04ed16503b35f236fb6bb92a428358e8.1605181350.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8958ee8e04ed16503b35f236fb6bb92a428358e8.1605181350.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915/pm: replace
 I915_READ()/WRITE() with intel_uncore_read()/write()
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

On Thu, Nov 12, 2020 at 01:44:40PM +0200, Jani Nikula wrote:
> Arguably some of these should use intel_de_read() or intel_de_write(),
> however not all. Prioritize I915_READ() and I915_WRITE() removal in
> general over migrating to the pedantically correct replacements right
> away.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 552 ++++++++++++++++----------------
>  1 file changed, 276 insertions(+), 276 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index bbec56f97832..c0ed82665706 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -81,24 +81,24 @@ static void gen9_init_clock_gating(struct drm_i915_private *dev_priv)
>  		 * Must match Sampler, Pixel Back End, and Media. See
>  		 * WaCompressedResourceSamplerPbeMediaNewHashMode.
>  		 */
> -		I915_WRITE(CHICKEN_PAR1_1,
> -			   I915_READ(CHICKEN_PAR1_1) |
> +		intel_uncore_write(&dev_priv->uncore, CHICKEN_PAR1_1,
> +			   intel_uncore_read(&dev_priv->uncore, CHICKEN_PAR1_1) |

why not converting them to rmw?

>  			   SKL_DE_COMPRESSED_HASH_MODE);
>  	}
>  
>  	/* See Bspec note for PSR2_CTL bit 31, Wa#828:skl,bxt,kbl,cfl */
> -	I915_WRITE(CHICKEN_PAR1_1,
> -		   I915_READ(CHICKEN_PAR1_1) | SKL_EDP_PSR_FIX_RDWRAP);
> +	intel_uncore_write(&dev_priv->uncore, CHICKEN_PAR1_1,
> +		   intel_uncore_read(&dev_priv->uncore, CHICKEN_PAR1_1) | SKL_EDP_PSR_FIX_RDWRAP);
>  
>  	/* WaEnableChickenDCPR:skl,bxt,kbl,glk,cfl */
> -	I915_WRITE(GEN8_CHICKEN_DCPR_1,
> -		   I915_READ(GEN8_CHICKEN_DCPR_1) | MASK_WAKEMEM);
> +	intel_uncore_write(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1,
> +		   intel_uncore_read(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1) | MASK_WAKEMEM);
>  
>  	/*
>  	 * WaFbcWakeMemOn:skl,bxt,kbl,glk,cfl
>  	 * Display WA #0859: skl,bxt,kbl,glk,cfl
>  	 */
> -	I915_WRITE(DISP_ARB_CTL, I915_READ(DISP_ARB_CTL) |
> +	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |
>  		   DISP_FBC_MEMORY_WAKE);
>  }
>  
> @@ -107,21 +107,21 @@ static void bxt_init_clock_gating(struct drm_i915_private *dev_priv)
>  	gen9_init_clock_gating(dev_priv);
>  
>  	/* WaDisableSDEUnitClockGating:bxt */
> -	I915_WRITE(GEN8_UCGCTL6, I915_READ(GEN8_UCGCTL6) |
> +	intel_uncore_write(&dev_priv->uncore, GEN8_UCGCTL6, intel_uncore_read(&dev_priv->uncore, GEN8_UCGCTL6) |
>  		   GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
>  
>  	/*
>  	 * FIXME:
>  	 * GEN8_HDCUNIT_CLOCK_GATE_DISABLE_HDCREQ applies on 3x6 GT SKUs only.
>  	 */
> -	I915_WRITE(GEN8_UCGCTL6, I915_READ(GEN8_UCGCTL6) |
> +	intel_uncore_write(&dev_priv->uncore, GEN8_UCGCTL6, intel_uncore_read(&dev_priv->uncore, GEN8_UCGCTL6) |
>  		   GEN8_HDCUNIT_CLOCK_GATE_DISABLE_HDCREQ);
>  
>  	/*
>  	 * Wa: Backlight PWM may stop in the asserted state, causing backlight
>  	 * to stay fully on.
>  	 */
> -	I915_WRITE(GEN9_CLKGATE_DIS_0, I915_READ(GEN9_CLKGATE_DIS_0) |
> +	intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_0, intel_uncore_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_0) |
>  		   PWM1_GATING_DIS | PWM2_GATING_DIS);
>  
>  	/*
> @@ -130,20 +130,20 @@ static void bxt_init_clock_gating(struct drm_i915_private *dev_priv)
>  	 * is off and a MMIO access is attempted by any privilege
>  	 * application, using batch buffers or any other means.
>  	 */
> -	I915_WRITE(RM_TIMEOUT, MMIO_TIMEOUT_US(950));
> +	intel_uncore_write(&dev_priv->uncore, RM_TIMEOUT, MMIO_TIMEOUT_US(950));
>  
>  	/*
>  	 * WaFbcTurnOffFbcWatermark:bxt
>  	 * Display WA #0562: bxt
>  	 */
> -	I915_WRITE(DISP_ARB_CTL, I915_READ(DISP_ARB_CTL) |
> +	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |
>  		   DISP_FBC_WM_DIS);
>  
>  	/*
>  	 * WaFbcHighMemBwCorruptionAvoidance:bxt
>  	 * Display WA #0883: bxt
>  	 */
> -	I915_WRITE(ILK_DPFC_CHICKEN, I915_READ(ILK_DPFC_CHICKEN) |
> +	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN, intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN) |
>  		   ILK_DPFC_DISABLE_DUMMY0);
>  }
>  
> @@ -156,7 +156,7 @@ static void glk_init_clock_gating(struct drm_i915_private *dev_priv)
>  	 * Backlight PWM may stop in the asserted state, causing backlight
>  	 * to stay fully on.
>  	 */
> -	I915_WRITE(GEN9_CLKGATE_DIS_0, I915_READ(GEN9_CLKGATE_DIS_0) |
> +	intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_0, intel_uncore_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_0) |
>  		   PWM1_GATING_DIS | PWM2_GATING_DIS);
>  }
>  
> @@ -164,7 +164,7 @@ static void pnv_get_mem_freq(struct drm_i915_private *dev_priv)
>  {
>  	u32 tmp;
>  
> -	tmp = I915_READ(CLKCFG);
> +	tmp = intel_uncore_read(&dev_priv->uncore, CLKCFG);
>  
>  	switch (tmp & CLKCFG_FSB_MASK) {
>  	case CLKCFG_FSB_533:
> @@ -194,7 +194,7 @@ static void pnv_get_mem_freq(struct drm_i915_private *dev_priv)
>  	}
>  
>  	/* detect pineview DDR3 setting */
> -	tmp = I915_READ(CSHRDDR3CTL);
> +	tmp = intel_uncore_read(&dev_priv->uncore, CSHRDDR3CTL);
>  	dev_priv->is_ddr3 = (tmp & CSHRDDR3CTL_DDR3) ? 1 : 0;
>  }
>  
> @@ -365,39 +365,39 @@ static bool _intel_set_memory_cxsr(struct drm_i915_private *dev_priv, bool enabl
>  	u32 val;
>  
>  	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> -		was_enabled = I915_READ(FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
> -		I915_WRITE(FW_BLC_SELF_VLV, enable ? FW_CSPWRDWNEN : 0);
> -		POSTING_READ(FW_BLC_SELF_VLV);
> +		was_enabled = intel_uncore_read(&dev_priv->uncore, FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
> +		intel_uncore_write(&dev_priv->uncore, FW_BLC_SELF_VLV, enable ? FW_CSPWRDWNEN : 0);
> +		intel_uncore_posting_read(&dev_priv->uncore, FW_BLC_SELF_VLV);
>  	} else if (IS_G4X(dev_priv) || IS_I965GM(dev_priv)) {
> -		was_enabled = I915_READ(FW_BLC_SELF) & FW_BLC_SELF_EN;
> -		I915_WRITE(FW_BLC_SELF, enable ? FW_BLC_SELF_EN : 0);
> -		POSTING_READ(FW_BLC_SELF);
> +		was_enabled = intel_uncore_read(&dev_priv->uncore, FW_BLC_SELF) & FW_BLC_SELF_EN;
> +		intel_uncore_write(&dev_priv->uncore, FW_BLC_SELF, enable ? FW_BLC_SELF_EN : 0);
> +		intel_uncore_posting_read(&dev_priv->uncore, FW_BLC_SELF);
>  	} else if (IS_PINEVIEW(dev_priv)) {
> -		val = I915_READ(DSPFW3);
> +		val = intel_uncore_read(&dev_priv->uncore, DSPFW3);
>  		was_enabled = val & PINEVIEW_SELF_REFRESH_EN;
>  		if (enable)
>  			val |= PINEVIEW_SELF_REFRESH_EN;
>  		else
>  			val &= ~PINEVIEW_SELF_REFRESH_EN;
> -		I915_WRITE(DSPFW3, val);
> -		POSTING_READ(DSPFW3);
> +		intel_uncore_write(&dev_priv->uncore, DSPFW3, val);
> +		intel_uncore_posting_read(&dev_priv->uncore, DSPFW3);
>  	} else if (IS_I945G(dev_priv) || IS_I945GM(dev_priv)) {
> -		was_enabled = I915_READ(FW_BLC_SELF) & FW_BLC_SELF_EN;
> +		was_enabled = intel_uncore_read(&dev_priv->uncore, FW_BLC_SELF) & FW_BLC_SELF_EN;
>  		val = enable ? _MASKED_BIT_ENABLE(FW_BLC_SELF_EN) :
>  			       _MASKED_BIT_DISABLE(FW_BLC_SELF_EN);
> -		I915_WRITE(FW_BLC_SELF, val);
> -		POSTING_READ(FW_BLC_SELF);
> +		intel_uncore_write(&dev_priv->uncore, FW_BLC_SELF, val);
> +		intel_uncore_posting_read(&dev_priv->uncore, FW_BLC_SELF);
>  	} else if (IS_I915GM(dev_priv)) {
>  		/*
>  		 * FIXME can't find a bit like this for 915G, and
>  		 * and yet it does have the related watermark in
>  		 * FW_BLC_SELF. What's going on?
>  		 */
> -		was_enabled = I915_READ(INSTPM) & INSTPM_SELF_EN;
> +		was_enabled = intel_uncore_read(&dev_priv->uncore, INSTPM) & INSTPM_SELF_EN;
>  		val = enable ? _MASKED_BIT_ENABLE(INSTPM_SELF_EN) :
>  			       _MASKED_BIT_DISABLE(INSTPM_SELF_EN);
> -		I915_WRITE(INSTPM, val);
> -		POSTING_READ(INSTPM);
> +		intel_uncore_write(&dev_priv->uncore, INSTPM, val);
> +		intel_uncore_posting_read(&dev_priv->uncore, INSTPM);
>  	} else {
>  		return false;
>  	}
> @@ -493,20 +493,20 @@ static void vlv_get_fifo_size(struct intel_crtc_state *crtc_state)
>  
>  	switch (pipe) {
>  	case PIPE_A:
> -		dsparb = I915_READ(DSPARB);
> -		dsparb2 = I915_READ(DSPARB2);
> +		dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB);
> +		dsparb2 = intel_uncore_read(&dev_priv->uncore, DSPARB2);
>  		sprite0_start = VLV_FIFO_START(dsparb, dsparb2, 0, 0);
>  		sprite1_start = VLV_FIFO_START(dsparb, dsparb2, 8, 4);
>  		break;
>  	case PIPE_B:
> -		dsparb = I915_READ(DSPARB);
> -		dsparb2 = I915_READ(DSPARB2);
> +		dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB);
> +		dsparb2 = intel_uncore_read(&dev_priv->uncore, DSPARB2);
>  		sprite0_start = VLV_FIFO_START(dsparb, dsparb2, 16, 8);
>  		sprite1_start = VLV_FIFO_START(dsparb, dsparb2, 24, 12);
>  		break;
>  	case PIPE_C:
> -		dsparb2 = I915_READ(DSPARB2);
> -		dsparb3 = I915_READ(DSPARB3);
> +		dsparb2 = intel_uncore_read(&dev_priv->uncore, DSPARB2);
> +		dsparb3 = intel_uncore_read(&dev_priv->uncore, DSPARB3);
>  		sprite0_start = VLV_FIFO_START(dsparb3, dsparb2, 0, 16);
>  		sprite1_start = VLV_FIFO_START(dsparb3, dsparb2, 8, 20);
>  		break;
> @@ -524,7 +524,7 @@ static void vlv_get_fifo_size(struct intel_crtc_state *crtc_state)
>  static int i9xx_get_fifo_size(struct drm_i915_private *dev_priv,
>  			      enum i9xx_plane_id i9xx_plane)
>  {
> -	u32 dsparb = I915_READ(DSPARB);
> +	u32 dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB);
>  	int size;
>  
>  	size = dsparb & 0x7f;
> @@ -540,7 +540,7 @@ static int i9xx_get_fifo_size(struct drm_i915_private *dev_priv,
>  static int i830_get_fifo_size(struct drm_i915_private *dev_priv,
>  			      enum i9xx_plane_id i9xx_plane)
>  {
> -	u32 dsparb = I915_READ(DSPARB);
> +	u32 dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB);
>  	int size;
>  
>  	size = dsparb & 0x1ff;
> @@ -557,7 +557,7 @@ static int i830_get_fifo_size(struct drm_i915_private *dev_priv,
>  static int i845_get_fifo_size(struct drm_i915_private *dev_priv,
>  			      enum i9xx_plane_id i9xx_plane)
>  {
> -	u32 dsparb = I915_READ(DSPARB);
> +	u32 dsparb = intel_uncore_read(&dev_priv->uncore, DSPARB);
>  	int size;
>  
>  	size = dsparb & 0x7f;
> @@ -910,38 +910,38 @@ static void pnv_update_wm(struct intel_crtc *unused_crtc)
>  		wm = intel_calculate_wm(clock, &pnv_display_wm,
>  					pnv_display_wm.fifo_size,
>  					cpp, latency->display_sr);
> -		reg = I915_READ(DSPFW1);
> +		reg = intel_uncore_read(&dev_priv->uncore, DSPFW1);
>  		reg &= ~DSPFW_SR_MASK;
>  		reg |= FW_WM(wm, SR);
> -		I915_WRITE(DSPFW1, reg);
> +		intel_uncore_write(&dev_priv->uncore, DSPFW1, reg);
>  		drm_dbg_kms(&dev_priv->drm, "DSPFW1 register is %x\n", reg);
>  
>  		/* cursor SR */
>  		wm = intel_calculate_wm(clock, &pnv_cursor_wm,
>  					pnv_display_wm.fifo_size,
>  					4, latency->cursor_sr);
> -		reg = I915_READ(DSPFW3);
> +		reg = intel_uncore_read(&dev_priv->uncore, DSPFW3);
>  		reg &= ~DSPFW_CURSOR_SR_MASK;
>  		reg |= FW_WM(wm, CURSOR_SR);
> -		I915_WRITE(DSPFW3, reg);
> +		intel_uncore_write(&dev_priv->uncore, DSPFW3, reg);
>  
>  		/* Display HPLL off SR */
>  		wm = intel_calculate_wm(clock, &pnv_display_hplloff_wm,
>  					pnv_display_hplloff_wm.fifo_size,
>  					cpp, latency->display_hpll_disable);
> -		reg = I915_READ(DSPFW3);
> +		reg = intel_uncore_read(&dev_priv->uncore, DSPFW3);
>  		reg &= ~DSPFW_HPLL_SR_MASK;
>  		reg |= FW_WM(wm, HPLL_SR);
> -		I915_WRITE(DSPFW3, reg);
> +		intel_uncore_write(&dev_priv->uncore, DSPFW3, reg);
>  
>  		/* cursor HPLL off SR */
>  		wm = intel_calculate_wm(clock, &pnv_cursor_hplloff_wm,
>  					pnv_display_hplloff_wm.fifo_size,
>  					4, latency->cursor_hpll_disable);
> -		reg = I915_READ(DSPFW3);
> +		reg = intel_uncore_read(&dev_priv->uncore, DSPFW3);
>  		reg &= ~DSPFW_HPLL_CURSOR_MASK;
>  		reg |= FW_WM(wm, HPLL_CURSOR);
> -		I915_WRITE(DSPFW3, reg);
> +		intel_uncore_write(&dev_priv->uncore, DSPFW3, reg);
>  		drm_dbg_kms(&dev_priv->drm, "DSPFW3 register is %x\n", reg);
>  
>  		intel_set_memory_cxsr(dev_priv, true);
> @@ -975,25 +975,25 @@ static void g4x_write_wm_values(struct drm_i915_private *dev_priv,
>  	for_each_pipe(dev_priv, pipe)
>  		trace_g4x_wm(intel_get_crtc_for_pipe(dev_priv, pipe), wm);
>  
> -	I915_WRITE(DSPFW1,
> +	intel_uncore_write(&dev_priv->uncore, DSPFW1,
>  		   FW_WM(wm->sr.plane, SR) |
>  		   FW_WM(wm->pipe[PIPE_B].plane[PLANE_CURSOR], CURSORB) |
>  		   FW_WM(wm->pipe[PIPE_B].plane[PLANE_PRIMARY], PLANEB) |
>  		   FW_WM(wm->pipe[PIPE_A].plane[PLANE_PRIMARY], PLANEA));
> -	I915_WRITE(DSPFW2,
> +	intel_uncore_write(&dev_priv->uncore, DSPFW2,
>  		   (wm->fbc_en ? DSPFW_FBC_SR_EN : 0) |
>  		   FW_WM(wm->sr.fbc, FBC_SR) |
>  		   FW_WM(wm->hpll.fbc, FBC_HPLL_SR) |
>  		   FW_WM(wm->pipe[PIPE_B].plane[PLANE_SPRITE0], SPRITEB) |
>  		   FW_WM(wm->pipe[PIPE_A].plane[PLANE_CURSOR], CURSORA) |
>  		   FW_WM(wm->pipe[PIPE_A].plane[PLANE_SPRITE0], SPRITEA));
> -	I915_WRITE(DSPFW3,
> +	intel_uncore_write(&dev_priv->uncore, DSPFW3,
>  		   (wm->hpll_en ? DSPFW_HPLL_SR_EN : 0) |
>  		   FW_WM(wm->sr.cursor, CURSOR_SR) |
>  		   FW_WM(wm->hpll.cursor, HPLL_CURSOR) |
>  		   FW_WM(wm->hpll.plane, HPLL_SR));
>  
> -	POSTING_READ(DSPFW1);
> +	intel_uncore_posting_read(&dev_priv->uncore, DSPFW1);
>  }
>  
>  #define FW_WM_VLV(value, plane) \
> @@ -1007,7 +1007,7 @@ static void vlv_write_wm_values(struct drm_i915_private *dev_priv,
>  	for_each_pipe(dev_priv, pipe) {
>  		trace_vlv_wm(intel_get_crtc_for_pipe(dev_priv, pipe), wm);
>  
> -		I915_WRITE(VLV_DDL(pipe),
> +		intel_uncore_write(&dev_priv->uncore, VLV_DDL(pipe),
>  			   (wm->ddl[pipe].plane[PLANE_CURSOR] << DDL_CURSOR_SHIFT) |
>  			   (wm->ddl[pipe].plane[PLANE_SPRITE1] << DDL_SPRITE_SHIFT(1)) |
>  			   (wm->ddl[pipe].plane[PLANE_SPRITE0] << DDL_SPRITE_SHIFT(0)) |
> @@ -1019,35 +1019,35 @@ static void vlv_write_wm_values(struct drm_i915_private *dev_priv,
>  	 * high order bits so that there are no out of bounds values
>  	 * present in the registers during the reprogramming.
>  	 */
> -	I915_WRITE(DSPHOWM, 0);
> -	I915_WRITE(DSPHOWM1, 0);
> -	I915_WRITE(DSPFW4, 0);
> -	I915_WRITE(DSPFW5, 0);
> -	I915_WRITE(DSPFW6, 0);
> +	intel_uncore_write(&dev_priv->uncore, DSPHOWM, 0);
> +	intel_uncore_write(&dev_priv->uncore, DSPHOWM1, 0);
> +	intel_uncore_write(&dev_priv->uncore, DSPFW4, 0);
> +	intel_uncore_write(&dev_priv->uncore, DSPFW5, 0);
> +	intel_uncore_write(&dev_priv->uncore, DSPFW6, 0);
>  
> -	I915_WRITE(DSPFW1,
> +	intel_uncore_write(&dev_priv->uncore, DSPFW1,
>  		   FW_WM(wm->sr.plane, SR) |
>  		   FW_WM(wm->pipe[PIPE_B].plane[PLANE_CURSOR], CURSORB) |
>  		   FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_PRIMARY], PLANEB) |
>  		   FW_WM_VLV(wm->pipe[PIPE_A].plane[PLANE_PRIMARY], PLANEA));
> -	I915_WRITE(DSPFW2,
> +	intel_uncore_write(&dev_priv->uncore, DSPFW2,
>  		   FW_WM_VLV(wm->pipe[PIPE_A].plane[PLANE_SPRITE1], SPRITEB) |
>  		   FW_WM(wm->pipe[PIPE_A].plane[PLANE_CURSOR], CURSORA) |
>  		   FW_WM_VLV(wm->pipe[PIPE_A].plane[PLANE_SPRITE0], SPRITEA));
> -	I915_WRITE(DSPFW3,
> +	intel_uncore_write(&dev_priv->uncore, DSPFW3,
>  		   FW_WM(wm->sr.cursor, CURSOR_SR));
>  
>  	if (IS_CHERRYVIEW(dev_priv)) {
> -		I915_WRITE(DSPFW7_CHV,
> +		intel_uncore_write(&dev_priv->uncore, DSPFW7_CHV,
>  			   FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_SPRITE1], SPRITED) |
>  			   FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_SPRITE0], SPRITEC));
> -		I915_WRITE(DSPFW8_CHV,
> +		intel_uncore_write(&dev_priv->uncore, DSPFW8_CHV,
>  			   FW_WM_VLV(wm->pipe[PIPE_C].plane[PLANE_SPRITE1], SPRITEF) |
>  			   FW_WM_VLV(wm->pipe[PIPE_C].plane[PLANE_SPRITE0], SPRITEE));
> -		I915_WRITE(DSPFW9_CHV,
> +		intel_uncore_write(&dev_priv->uncore, DSPFW9_CHV,
>  			   FW_WM_VLV(wm->pipe[PIPE_C].plane[PLANE_PRIMARY], PLANEC) |
>  			   FW_WM(wm->pipe[PIPE_C].plane[PLANE_CURSOR], CURSORC));
> -		I915_WRITE(DSPHOWM,
> +		intel_uncore_write(&dev_priv->uncore, DSPHOWM,
>  			   FW_WM(wm->sr.plane >> 9, SR_HI) |
>  			   FW_WM(wm->pipe[PIPE_C].plane[PLANE_SPRITE1] >> 8, SPRITEF_HI) |
>  			   FW_WM(wm->pipe[PIPE_C].plane[PLANE_SPRITE0] >> 8, SPRITEE_HI) |
> @@ -1059,10 +1059,10 @@ static void vlv_write_wm_values(struct drm_i915_private *dev_priv,
>  			   FW_WM(wm->pipe[PIPE_A].plane[PLANE_SPRITE0] >> 8, SPRITEA_HI) |
>  			   FW_WM(wm->pipe[PIPE_A].plane[PLANE_PRIMARY] >> 8, PLANEA_HI));
>  	} else {
> -		I915_WRITE(DSPFW7,
> +		intel_uncore_write(&dev_priv->uncore, DSPFW7,
>  			   FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_SPRITE1], SPRITED) |
>  			   FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_SPRITE0], SPRITEC));
> -		I915_WRITE(DSPHOWM,
> +		intel_uncore_write(&dev_priv->uncore, DSPHOWM,
>  			   FW_WM(wm->sr.plane >> 9, SR_HI) |
>  			   FW_WM(wm->pipe[PIPE_B].plane[PLANE_SPRITE1] >> 8, SPRITED_HI) |
>  			   FW_WM(wm->pipe[PIPE_B].plane[PLANE_SPRITE0] >> 8, SPRITEC_HI) |
> @@ -1072,7 +1072,7 @@ static void vlv_write_wm_values(struct drm_i915_private *dev_priv,
>  			   FW_WM(wm->pipe[PIPE_A].plane[PLANE_PRIMARY] >> 8, PLANEA_HI));
>  	}
>  
> -	POSTING_READ(DSPFW1);
> +	intel_uncore_posting_read(&dev_priv->uncore, DSPFW1);
>  }
>  
>  #undef FW_WM_VLV
> @@ -2309,14 +2309,14 @@ static void i965_update_wm(struct intel_crtc *unused_crtc)
>  		    srwm);
>  
>  	/* 965 has limitations... */
> -	I915_WRITE(DSPFW1, FW_WM(srwm, SR) |
> +	intel_uncore_write(&dev_priv->uncore, DSPFW1, FW_WM(srwm, SR) |
>  		   FW_WM(8, CURSORB) |
>  		   FW_WM(8, PLANEB) |
>  		   FW_WM(8, PLANEA));
> -	I915_WRITE(DSPFW2, FW_WM(8, CURSORA) |
> +	intel_uncore_write(&dev_priv->uncore, DSPFW2, FW_WM(8, CURSORA) |
>  		   FW_WM(8, PLANEC_OLD));
>  	/* update cursor SR watermark */
> -	I915_WRITE(DSPFW3, FW_WM(cursor_sr, CURSOR_SR));
> +	intel_uncore_write(&dev_priv->uncore, DSPFW3, FW_WM(cursor_sr, CURSOR_SR));
>  
>  	if (cxsr_enabled)
>  		intel_set_memory_cxsr(dev_priv, true);
> @@ -2446,10 +2446,10 @@ static void i9xx_update_wm(struct intel_crtc *unused_crtc)
>  			srwm = 1;
>  
>  		if (IS_I945G(dev_priv) || IS_I945GM(dev_priv))
> -			I915_WRITE(FW_BLC_SELF,
> +			intel_uncore_write(&dev_priv->uncore, FW_BLC_SELF,
>  				   FW_BLC_SELF_FIFO_MASK | (srwm & 0xff));
>  		else
> -			I915_WRITE(FW_BLC_SELF, srwm & 0x3f);
> +			intel_uncore_write(&dev_priv->uncore, FW_BLC_SELF, srwm & 0x3f);
>  	}
>  
>  	drm_dbg_kms(&dev_priv->drm,
> @@ -2463,8 +2463,8 @@ static void i9xx_update_wm(struct intel_crtc *unused_crtc)
>  	fwater_lo = fwater_lo | (1 << 24) | (1 << 8);
>  	fwater_hi = fwater_hi | (1 << 8);
>  
> -	I915_WRITE(FW_BLC, fwater_lo);
> -	I915_WRITE(FW_BLC2, fwater_hi);
> +	intel_uncore_write(&dev_priv->uncore, FW_BLC, fwater_lo);
> +	intel_uncore_write(&dev_priv->uncore, FW_BLC2, fwater_hi);
>  
>  	if (enabled)
>  		intel_set_memory_cxsr(dev_priv, true);
> @@ -2487,13 +2487,13 @@ static void i845_update_wm(struct intel_crtc *unused_crtc)
>  				       &i845_wm_info,
>  				       dev_priv->display.get_fifo_size(dev_priv, PLANE_A),
>  				       4, pessimal_latency_ns);
> -	fwater_lo = I915_READ(FW_BLC) & ~0xfff;
> +	fwater_lo = intel_uncore_read(&dev_priv->uncore, FW_BLC) & ~0xfff;
>  	fwater_lo |= (3<<8) | planea_wm;
>  
>  	drm_dbg_kms(&dev_priv->drm,
>  		    "Setting FIFO watermarks - A: %d\n", planea_wm);
>  
> -	I915_WRITE(FW_BLC, fwater_lo);
> +	intel_uncore_write(&dev_priv->uncore, FW_BLC, fwater_lo);
>  }
>  
>  /* latency must be in 0.1us units. */
> @@ -3533,17 +3533,17 @@ static bool _ilk_disable_lp_wm(struct drm_i915_private *dev_priv,
>  
>  	if (dirty & WM_DIRTY_LP(3) && previous->wm_lp[2] & WM1_LP_SR_EN) {
>  		previous->wm_lp[2] &= ~WM1_LP_SR_EN;
> -		I915_WRITE(WM3_LP_ILK, previous->wm_lp[2]);
> +		intel_uncore_write(&dev_priv->uncore, WM3_LP_ILK, previous->wm_lp[2]);
>  		changed = true;
>  	}
>  	if (dirty & WM_DIRTY_LP(2) && previous->wm_lp[1] & WM1_LP_SR_EN) {
>  		previous->wm_lp[1] &= ~WM1_LP_SR_EN;
> -		I915_WRITE(WM2_LP_ILK, previous->wm_lp[1]);
> +		intel_uncore_write(&dev_priv->uncore, WM2_LP_ILK, previous->wm_lp[1]);
>  		changed = true;
>  	}
>  	if (dirty & WM_DIRTY_LP(1) && previous->wm_lp[0] & WM1_LP_SR_EN) {
>  		previous->wm_lp[0] &= ~WM1_LP_SR_EN;
> -		I915_WRITE(WM1_LP_ILK, previous->wm_lp[0]);
> +		intel_uncore_write(&dev_priv->uncore, WM1_LP_ILK, previous->wm_lp[0]);
>  		changed = true;
>  	}
>  
> @@ -3573,56 +3573,56 @@ static void ilk_write_wm_values(struct drm_i915_private *dev_priv,
>  	_ilk_disable_lp_wm(dev_priv, dirty);
>  
>  	if (dirty & WM_DIRTY_PIPE(PIPE_A))
> -		I915_WRITE(WM0_PIPE_ILK(PIPE_A), results->wm_pipe[0]);
> +		intel_uncore_write(&dev_priv->uncore, WM0_PIPE_ILK(PIPE_A), results->wm_pipe[0]);
>  	if (dirty & WM_DIRTY_PIPE(PIPE_B))
> -		I915_WRITE(WM0_PIPE_ILK(PIPE_B), results->wm_pipe[1]);
> +		intel_uncore_write(&dev_priv->uncore, WM0_PIPE_ILK(PIPE_B), results->wm_pipe[1]);
>  	if (dirty & WM_DIRTY_PIPE(PIPE_C))
> -		I915_WRITE(WM0_PIPE_ILK(PIPE_C), results->wm_pipe[2]);
> +		intel_uncore_write(&dev_priv->uncore, WM0_PIPE_ILK(PIPE_C), results->wm_pipe[2]);
>  
>  	if (dirty & WM_DIRTY_DDB) {
>  		if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
> -			val = I915_READ(WM_MISC);
> +			val = intel_uncore_read(&dev_priv->uncore, WM_MISC);
>  			if (results->partitioning == INTEL_DDB_PART_1_2)
>  				val &= ~WM_MISC_DATA_PARTITION_5_6;
>  			else
>  				val |= WM_MISC_DATA_PARTITION_5_6;
> -			I915_WRITE(WM_MISC, val);
> +			intel_uncore_write(&dev_priv->uncore, WM_MISC, val);
>  		} else {
> -			val = I915_READ(DISP_ARB_CTL2);
> +			val = intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL2);
>  			if (results->partitioning == INTEL_DDB_PART_1_2)
>  				val &= ~DISP_DATA_PARTITION_5_6;
>  			else
>  				val |= DISP_DATA_PARTITION_5_6;
> -			I915_WRITE(DISP_ARB_CTL2, val);
> +			intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL2, val);
>  		}
>  	}
>  
>  	if (dirty & WM_DIRTY_FBC) {
> -		val = I915_READ(DISP_ARB_CTL);
> +		val = intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL);
>  		if (results->enable_fbc_wm)
>  			val &= ~DISP_FBC_WM_DIS;
>  		else
>  			val |= DISP_FBC_WM_DIS;
> -		I915_WRITE(DISP_ARB_CTL, val);
> +		intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, val);
>  	}
>  
>  	if (dirty & WM_DIRTY_LP(1) &&
>  	    previous->wm_lp_spr[0] != results->wm_lp_spr[0])
> -		I915_WRITE(WM1S_LP_ILK, results->wm_lp_spr[0]);
> +		intel_uncore_write(&dev_priv->uncore, WM1S_LP_ILK, results->wm_lp_spr[0]);
>  
>  	if (INTEL_GEN(dev_priv) >= 7) {
>  		if (dirty & WM_DIRTY_LP(2) && previous->wm_lp_spr[1] != results->wm_lp_spr[1])
> -			I915_WRITE(WM2S_LP_IVB, results->wm_lp_spr[1]);
> +			intel_uncore_write(&dev_priv->uncore, WM2S_LP_IVB, results->wm_lp_spr[1]);
>  		if (dirty & WM_DIRTY_LP(3) && previous->wm_lp_spr[2] != results->wm_lp_spr[2])
> -			I915_WRITE(WM3S_LP_IVB, results->wm_lp_spr[2]);
> +			intel_uncore_write(&dev_priv->uncore, WM3S_LP_IVB, results->wm_lp_spr[2]);
>  	}
>  
>  	if (dirty & WM_DIRTY_LP(1) && previous->wm_lp[0] != results->wm_lp[0])
> -		I915_WRITE(WM1_LP_ILK, results->wm_lp[0]);
> +		intel_uncore_write(&dev_priv->uncore, WM1_LP_ILK, results->wm_lp[0]);
>  	if (dirty & WM_DIRTY_LP(2) && previous->wm_lp[1] != results->wm_lp[1])
> -		I915_WRITE(WM2_LP_ILK, results->wm_lp[1]);
> +		intel_uncore_write(&dev_priv->uncore, WM2_LP_ILK, results->wm_lp[1]);
>  	if (dirty & WM_DIRTY_LP(3) && previous->wm_lp[2] != results->wm_lp[2])
> -		I915_WRITE(WM3_LP_ILK, results->wm_lp[2]);
> +		intel_uncore_write(&dev_priv->uncore, WM3_LP_ILK, results->wm_lp[2]);
>  
>  	dev_priv->wm.hw = *results;
>  }
> @@ -3639,7 +3639,7 @@ u8 intel_enabled_dbuf_slices_mask(struct drm_i915_private *dev_priv)
>  	u8 enabled_slices_mask = 0;
>  
>  	for (i = 0; i < max_slices; i++) {
> -		if (I915_READ(DBUF_CTL_S(i)) & DBUF_POWER_STATE)
> +		if (intel_uncore_read(&dev_priv->uncore, DBUF_CTL_S(i)) & DBUF_POWER_STATE)
>  			enabled_slices_mask |= BIT(i);
>  	}
>  
> @@ -4307,12 +4307,12 @@ skl_ddb_get_hw_plane_state(struct drm_i915_private *dev_priv,
>  
>  	/* Cursor doesn't support NV12/planar, so no extra calculation needed */
>  	if (plane_id == PLANE_CURSOR) {
> -		val = I915_READ(CUR_BUF_CFG(pipe));
> +		val = intel_uncore_read(&dev_priv->uncore, CUR_BUF_CFG(pipe));
>  		skl_ddb_entry_init_from_hw(dev_priv, ddb_y, val);
>  		return;
>  	}
>  
> -	val = I915_READ(PLANE_CTL(pipe, plane_id));
> +	val = intel_uncore_read(&dev_priv->uncore, PLANE_CTL(pipe, plane_id));
>  
>  	/* No DDB allocated for disabled planes */
>  	if (val & PLANE_CTL_ENABLE)
> @@ -4321,11 +4321,11 @@ skl_ddb_get_hw_plane_state(struct drm_i915_private *dev_priv,
>  					      val & PLANE_CTL_ALPHA_MASK);
>  
>  	if (INTEL_GEN(dev_priv) >= 11) {
> -		val = I915_READ(PLANE_BUF_CFG(pipe, plane_id));
> +		val = intel_uncore_read(&dev_priv->uncore, PLANE_BUF_CFG(pipe, plane_id));
>  		skl_ddb_entry_init_from_hw(dev_priv, ddb_y, val);
>  	} else {
> -		val = I915_READ(PLANE_BUF_CFG(pipe, plane_id));
> -		val2 = I915_READ(PLANE_NV12_BUF_CFG(pipe, plane_id));
> +		val = intel_uncore_read(&dev_priv->uncore, PLANE_BUF_CFG(pipe, plane_id));
> +		val2 = intel_uncore_read(&dev_priv->uncore, PLANE_NV12_BUF_CFG(pipe, plane_id));
>  
>  		if (fourcc &&
>  		    drm_format_info_is_yuv_semiplanar(drm_format_info(fourcc)))
> @@ -6240,9 +6240,9 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
>  
>  		for (level = 0; level <= max_level; level++) {
>  			if (plane_id != PLANE_CURSOR)
> -				val = I915_READ(PLANE_WM(pipe, plane_id, level));
> +				val = intel_uncore_read(&dev_priv->uncore, PLANE_WM(pipe, plane_id, level));
>  			else
> -				val = I915_READ(CUR_WM(pipe, level));
> +				val = intel_uncore_read(&dev_priv->uncore, CUR_WM(pipe, level));
>  
>  			skl_wm_level_from_reg_val(val, &wm->wm[level]);
>  		}
> @@ -6251,9 +6251,9 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
>  			wm->sagv_wm0 = wm->wm[0];
>  
>  		if (plane_id != PLANE_CURSOR)
> -			val = I915_READ(PLANE_WM_TRANS(pipe, plane_id));
> +			val = intel_uncore_read(&dev_priv->uncore, PLANE_WM_TRANS(pipe, plane_id));
>  		else
> -			val = I915_READ(CUR_WM_TRANS(pipe));
> +			val = intel_uncore_read(&dev_priv->uncore, CUR_WM_TRANS(pipe));
>  
>  		skl_wm_level_from_reg_val(val, &wm->trans_wm);
>  	}
> @@ -6288,7 +6288,7 @@ static void ilk_pipe_wm_get_hw_state(struct intel_crtc *crtc)
>  	struct intel_pipe_wm *active = &crtc_state->wm.ilk.optimal;
>  	enum pipe pipe = crtc->pipe;
>  
> -	hw->wm_pipe[pipe] = I915_READ(WM0_PIPE_ILK(pipe));
> +	hw->wm_pipe[pipe] = intel_uncore_read(&dev_priv->uncore, WM0_PIPE_ILK(pipe));
>  
>  	memset(active, 0, sizeof(*active));
>  
> @@ -6332,13 +6332,13 @@ static void g4x_read_wm_values(struct drm_i915_private *dev_priv,
>  {
>  	u32 tmp;
>  
> -	tmp = I915_READ(DSPFW1);
> +	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW1);
>  	wm->sr.plane = _FW_WM(tmp, SR);
>  	wm->pipe[PIPE_B].plane[PLANE_CURSOR] = _FW_WM(tmp, CURSORB);
>  	wm->pipe[PIPE_B].plane[PLANE_PRIMARY] = _FW_WM(tmp, PLANEB);
>  	wm->pipe[PIPE_A].plane[PLANE_PRIMARY] = _FW_WM(tmp, PLANEA);
>  
> -	tmp = I915_READ(DSPFW2);
> +	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW2);
>  	wm->fbc_en = tmp & DSPFW_FBC_SR_EN;
>  	wm->sr.fbc = _FW_WM(tmp, FBC_SR);
>  	wm->hpll.fbc = _FW_WM(tmp, FBC_HPLL_SR);
> @@ -6346,7 +6346,7 @@ static void g4x_read_wm_values(struct drm_i915_private *dev_priv,
>  	wm->pipe[PIPE_A].plane[PLANE_CURSOR] = _FW_WM(tmp, CURSORA);
>  	wm->pipe[PIPE_A].plane[PLANE_SPRITE0] = _FW_WM(tmp, SPRITEA);
>  
> -	tmp = I915_READ(DSPFW3);
> +	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW3);
>  	wm->hpll_en = tmp & DSPFW_HPLL_SR_EN;
>  	wm->sr.cursor = _FW_WM(tmp, CURSOR_SR);
>  	wm->hpll.cursor = _FW_WM(tmp, HPLL_CURSOR);
> @@ -6360,7 +6360,7 @@ static void vlv_read_wm_values(struct drm_i915_private *dev_priv,
>  	u32 tmp;
>  
>  	for_each_pipe(dev_priv, pipe) {
> -		tmp = I915_READ(VLV_DDL(pipe));
> +		tmp = intel_uncore_read(&dev_priv->uncore, VLV_DDL(pipe));
>  
>  		wm->ddl[pipe].plane[PLANE_PRIMARY] =
>  			(tmp >> DDL_PLANE_SHIFT) & (DDL_PRECISION_HIGH | DRAIN_LATENCY_MASK);
> @@ -6372,34 +6372,34 @@ static void vlv_read_wm_values(struct drm_i915_private *dev_priv,
>  			(tmp >> DDL_SPRITE_SHIFT(1)) & (DDL_PRECISION_HIGH | DRAIN_LATENCY_MASK);
>  	}
>  
> -	tmp = I915_READ(DSPFW1);
> +	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW1);
>  	wm->sr.plane = _FW_WM(tmp, SR);
>  	wm->pipe[PIPE_B].plane[PLANE_CURSOR] = _FW_WM(tmp, CURSORB);
>  	wm->pipe[PIPE_B].plane[PLANE_PRIMARY] = _FW_WM_VLV(tmp, PLANEB);
>  	wm->pipe[PIPE_A].plane[PLANE_PRIMARY] = _FW_WM_VLV(tmp, PLANEA);
>  
> -	tmp = I915_READ(DSPFW2);
> +	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW2);
>  	wm->pipe[PIPE_A].plane[PLANE_SPRITE1] = _FW_WM_VLV(tmp, SPRITEB);
>  	wm->pipe[PIPE_A].plane[PLANE_CURSOR] = _FW_WM(tmp, CURSORA);
>  	wm->pipe[PIPE_A].plane[PLANE_SPRITE0] = _FW_WM_VLV(tmp, SPRITEA);
>  
> -	tmp = I915_READ(DSPFW3);
> +	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW3);
>  	wm->sr.cursor = _FW_WM(tmp, CURSOR_SR);
>  
>  	if (IS_CHERRYVIEW(dev_priv)) {
> -		tmp = I915_READ(DSPFW7_CHV);
> +		tmp = intel_uncore_read(&dev_priv->uncore, DSPFW7_CHV);
>  		wm->pipe[PIPE_B].plane[PLANE_SPRITE1] = _FW_WM_VLV(tmp, SPRITED);
>  		wm->pipe[PIPE_B].plane[PLANE_SPRITE0] = _FW_WM_VLV(tmp, SPRITEC);
>  
> -		tmp = I915_READ(DSPFW8_CHV);
> +		tmp = intel_uncore_read(&dev_priv->uncore, DSPFW8_CHV);
>  		wm->pipe[PIPE_C].plane[PLANE_SPRITE1] = _FW_WM_VLV(tmp, SPRITEF);
>  		wm->pipe[PIPE_C].plane[PLANE_SPRITE0] = _FW_WM_VLV(tmp, SPRITEE);
>  
> -		tmp = I915_READ(DSPFW9_CHV);
> +		tmp = intel_uncore_read(&dev_priv->uncore, DSPFW9_CHV);
>  		wm->pipe[PIPE_C].plane[PLANE_PRIMARY] = _FW_WM_VLV(tmp, PLANEC);
>  		wm->pipe[PIPE_C].plane[PLANE_CURSOR] = _FW_WM(tmp, CURSORC);
>  
> -		tmp = I915_READ(DSPHOWM);
> +		tmp = intel_uncore_read(&dev_priv->uncore, DSPHOWM);
>  		wm->sr.plane |= _FW_WM(tmp, SR_HI) << 9;
>  		wm->pipe[PIPE_C].plane[PLANE_SPRITE1] |= _FW_WM(tmp, SPRITEF_HI) << 8;
>  		wm->pipe[PIPE_C].plane[PLANE_SPRITE0] |= _FW_WM(tmp, SPRITEE_HI) << 8;
> @@ -6411,11 +6411,11 @@ static void vlv_read_wm_values(struct drm_i915_private *dev_priv,
>  		wm->pipe[PIPE_A].plane[PLANE_SPRITE0] |= _FW_WM(tmp, SPRITEA_HI) << 8;
>  		wm->pipe[PIPE_A].plane[PLANE_PRIMARY] |= _FW_WM(tmp, PLANEA_HI) << 8;
>  	} else {
> -		tmp = I915_READ(DSPFW7);
> +		tmp = intel_uncore_read(&dev_priv->uncore, DSPFW7);
>  		wm->pipe[PIPE_B].plane[PLANE_SPRITE1] = _FW_WM_VLV(tmp, SPRITED);
>  		wm->pipe[PIPE_B].plane[PLANE_SPRITE0] = _FW_WM_VLV(tmp, SPRITEC);
>  
> -		tmp = I915_READ(DSPHOWM);
> +		tmp = intel_uncore_read(&dev_priv->uncore, DSPHOWM);
>  		wm->sr.plane |= _FW_WM(tmp, SR_HI) << 9;
>  		wm->pipe[PIPE_B].plane[PLANE_SPRITE1] |= _FW_WM(tmp, SPRITED_HI) << 8;
>  		wm->pipe[PIPE_B].plane[PLANE_SPRITE0] |= _FW_WM(tmp, SPRITEC_HI) << 8;
> @@ -6436,7 +6436,7 @@ void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv)
>  
>  	g4x_read_wm_values(dev_priv, wm);
>  
> -	wm->cxsr = I915_READ(FW_BLC_SELF) & FW_BLC_SELF_EN;
> +	wm->cxsr = intel_uncore_read(&dev_priv->uncore, FW_BLC_SELF) & FW_BLC_SELF_EN;
>  
>  	for_each_intel_crtc(&dev_priv->drm, crtc) {
>  		struct intel_crtc_state *crtc_state =
> @@ -6580,7 +6580,7 @@ void vlv_wm_get_hw_state(struct drm_i915_private *dev_priv)
>  
>  	vlv_read_wm_values(dev_priv, wm);
>  
> -	wm->cxsr = I915_READ(FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
> +	wm->cxsr = intel_uncore_read(&dev_priv->uncore, FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
>  	wm->level = VLV_WM_LEVEL_PM2;
>  
>  	if (IS_CHERRYVIEW(dev_priv)) {
> @@ -6727,9 +6727,9 @@ void vlv_wm_sanitize(struct drm_i915_private *dev_priv)
>   */
>  static void ilk_init_lp_watermarks(struct drm_i915_private *dev_priv)
>  {
> -	I915_WRITE(WM3_LP_ILK, I915_READ(WM3_LP_ILK) & ~WM1_LP_SR_EN);
> -	I915_WRITE(WM2_LP_ILK, I915_READ(WM2_LP_ILK) & ~WM1_LP_SR_EN);
> -	I915_WRITE(WM1_LP_ILK, I915_READ(WM1_LP_ILK) & ~WM1_LP_SR_EN);
> +	intel_uncore_write(&dev_priv->uncore, WM3_LP_ILK, intel_uncore_read(&dev_priv->uncore, WM3_LP_ILK) & ~WM1_LP_SR_EN);
> +	intel_uncore_write(&dev_priv->uncore, WM2_LP_ILK, intel_uncore_read(&dev_priv->uncore, WM2_LP_ILK) & ~WM1_LP_SR_EN);
> +	intel_uncore_write(&dev_priv->uncore, WM1_LP_ILK, intel_uncore_read(&dev_priv->uncore, WM1_LP_ILK) & ~WM1_LP_SR_EN);
>  
>  	/*
>  	 * Don't touch WM1S_LP_EN here.
> @@ -6747,25 +6747,25 @@ void ilk_wm_get_hw_state(struct drm_i915_private *dev_priv)
>  	for_each_intel_crtc(&dev_priv->drm, crtc)
>  		ilk_pipe_wm_get_hw_state(crtc);
>  
> -	hw->wm_lp[0] = I915_READ(WM1_LP_ILK);
> -	hw->wm_lp[1] = I915_READ(WM2_LP_ILK);
> -	hw->wm_lp[2] = I915_READ(WM3_LP_ILK);
> +	hw->wm_lp[0] = intel_uncore_read(&dev_priv->uncore, WM1_LP_ILK);
> +	hw->wm_lp[1] = intel_uncore_read(&dev_priv->uncore, WM2_LP_ILK);
> +	hw->wm_lp[2] = intel_uncore_read(&dev_priv->uncore, WM3_LP_ILK);
>  
> -	hw->wm_lp_spr[0] = I915_READ(WM1S_LP_ILK);
> +	hw->wm_lp_spr[0] = intel_uncore_read(&dev_priv->uncore, WM1S_LP_ILK);
>  	if (INTEL_GEN(dev_priv) >= 7) {
> -		hw->wm_lp_spr[1] = I915_READ(WM2S_LP_IVB);
> -		hw->wm_lp_spr[2] = I915_READ(WM3S_LP_IVB);
> +		hw->wm_lp_spr[1] = intel_uncore_read(&dev_priv->uncore, WM2S_LP_IVB);
> +		hw->wm_lp_spr[2] = intel_uncore_read(&dev_priv->uncore, WM3S_LP_IVB);
>  	}
>  
>  	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
> -		hw->partitioning = (I915_READ(WM_MISC) & WM_MISC_DATA_PARTITION_5_6) ?
> +		hw->partitioning = (intel_uncore_read(&dev_priv->uncore, WM_MISC) & WM_MISC_DATA_PARTITION_5_6) ?
>  			INTEL_DDB_PART_5_6 : INTEL_DDB_PART_1_2;
>  	else if (IS_IVYBRIDGE(dev_priv))
> -		hw->partitioning = (I915_READ(DISP_ARB_CTL2) & DISP_DATA_PARTITION_5_6) ?
> +		hw->partitioning = (intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL2) & DISP_DATA_PARTITION_5_6) ?
>  			INTEL_DDB_PART_5_6 : INTEL_DDB_PART_1_2;
>  
>  	hw->enable_fbc_wm =
> -		!(I915_READ(DISP_ARB_CTL) & DISP_FBC_WM_DIS);
> +		!(intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) & DISP_FBC_WM_DIS);
>  }
>  
>  /**
> @@ -6816,14 +6816,14 @@ void intel_enable_ipc(struct drm_i915_private *dev_priv)
>  	if (!HAS_IPC(dev_priv))
>  		return;
>  
> -	val = I915_READ(DISP_ARB_CTL2);
> +	val = intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL2);
>  
>  	if (dev_priv->ipc_enabled)
>  		val |= DISP_IPC_ENABLE;
>  	else
>  		val &= ~DISP_IPC_ENABLE;
>  
> -	I915_WRITE(DISP_ARB_CTL2, val);
> +	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL2, val);
>  }
>  
>  static bool intel_can_enable_ipc(struct drm_i915_private *dev_priv)
> @@ -6858,7 +6858,7 @@ static void ibx_init_clock_gating(struct drm_i915_private *dev_priv)
>  	 * gating for the panel power sequencer or it will fail to
>  	 * start up when no ports are active.
>  	 */
> -	I915_WRITE(SOUTH_DSPCLK_GATE_D, PCH_DPLSUNIT_CLOCK_GATE_DISABLE);
> +	intel_uncore_write(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D, PCH_DPLSUNIT_CLOCK_GATE_DISABLE);
>  }
>  
>  static void g4x_disable_trickle_feed(struct drm_i915_private *dev_priv)
> @@ -6866,12 +6866,12 @@ static void g4x_disable_trickle_feed(struct drm_i915_private *dev_priv)
>  	enum pipe pipe;
>  
>  	for_each_pipe(dev_priv, pipe) {
> -		I915_WRITE(DSPCNTR(pipe),
> -			   I915_READ(DSPCNTR(pipe)) |
> +		intel_uncore_write(&dev_priv->uncore, DSPCNTR(pipe),
> +			   intel_uncore_read(&dev_priv->uncore, DSPCNTR(pipe)) |
>  			   DISPPLANE_TRICKLE_FEED_DISABLE);
>  
> -		I915_WRITE(DSPSURF(pipe), I915_READ(DSPSURF(pipe)));
> -		POSTING_READ(DSPSURF(pipe));
> +		intel_uncore_write(&dev_priv->uncore, DSPSURF(pipe), intel_uncore_read(&dev_priv->uncore, DSPSURF(pipe)));
> +		intel_uncore_posting_read(&dev_priv->uncore, DSPSURF(pipe));
>  	}
>  }
>  
> @@ -6887,10 +6887,10 @@ static void ilk_init_clock_gating(struct drm_i915_private *dev_priv)
>  		   ILK_DPFCUNIT_CLOCK_GATE_DISABLE |
>  		   ILK_DPFDUNIT_CLOCK_GATE_ENABLE;
>  
> -	I915_WRITE(PCH_3DCGDIS0,
> +	intel_uncore_write(&dev_priv->uncore, PCH_3DCGDIS0,
>  		   MARIUNIT_CLOCK_GATE_DISABLE |
>  		   SVSMUNIT_CLOCK_GATE_DISABLE);
> -	I915_WRITE(PCH_3DCGDIS1,
> +	intel_uncore_write(&dev_priv->uncore, PCH_3DCGDIS1,
>  		   VFMUNIT_CLOCK_GATE_DISABLE);
>  
>  	/*
> @@ -6900,12 +6900,12 @@ static void ilk_init_clock_gating(struct drm_i915_private *dev_priv)
>  	 * The bit 5 of 0x42020
>  	 * The bit 15 of 0x45000
>  	 */
> -	I915_WRITE(ILK_DISPLAY_CHICKEN2,
> -		   (I915_READ(ILK_DISPLAY_CHICKEN2) |
> +	intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2,
> +		   (intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2) |
>  		    ILK_DPARB_GATE | ILK_VSDPFD_FULL));
>  	dspclk_gate |= ILK_DPARBUNIT_CLOCK_GATE_ENABLE;
> -	I915_WRITE(DISP_ARB_CTL,
> -		   (I915_READ(DISP_ARB_CTL) |
> +	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL,
> +		   (intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |
>  		    DISP_FBC_WM_DIS));
>  
>  	/*
> @@ -6917,18 +6917,18 @@ static void ilk_init_clock_gating(struct drm_i915_private *dev_priv)
>  	 */
>  	if (IS_IRONLAKE_M(dev_priv)) {
>  		/* WaFbcAsynchFlipDisableFbcQueue:ilk */
> -		I915_WRITE(ILK_DISPLAY_CHICKEN1,
> -			   I915_READ(ILK_DISPLAY_CHICKEN1) |
> +		intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1,
> +			   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1) |
>  			   ILK_FBCQ_DIS);
> -		I915_WRITE(ILK_DISPLAY_CHICKEN2,
> -			   I915_READ(ILK_DISPLAY_CHICKEN2) |
> +		intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2,
> +			   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2) |
>  			   ILK_DPARB_GATE);
>  	}
>  
> -	I915_WRITE(ILK_DSPCLK_GATE_D, dspclk_gate);
> +	intel_uncore_write(&dev_priv->uncore, ILK_DSPCLK_GATE_D, dspclk_gate);
>  
> -	I915_WRITE(ILK_DISPLAY_CHICKEN2,
> -		   I915_READ(ILK_DISPLAY_CHICKEN2) |
> +	intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2,
> +		   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2) |
>  		   ILK_ELPIN_409_SELECT);
>  
>  	g4x_disable_trickle_feed(dev_priv);
> @@ -6946,27 +6946,27 @@ static void cpt_init_clock_gating(struct drm_i915_private *dev_priv)
>  	 * gating for the panel power sequencer or it will fail to
>  	 * start up when no ports are active.
>  	 */
> -	I915_WRITE(SOUTH_DSPCLK_GATE_D, PCH_DPLSUNIT_CLOCK_GATE_DISABLE |
> +	intel_uncore_write(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D, PCH_DPLSUNIT_CLOCK_GATE_DISABLE |
>  		   PCH_DPLUNIT_CLOCK_GATE_DISABLE |
>  		   PCH_CPUNIT_CLOCK_GATE_DISABLE);
> -	I915_WRITE(SOUTH_CHICKEN2, I915_READ(SOUTH_CHICKEN2) |
> +	intel_uncore_write(&dev_priv->uncore, SOUTH_CHICKEN2, intel_uncore_read(&dev_priv->uncore, SOUTH_CHICKEN2) |
>  		   DPLS_EDP_PPS_FIX_DIS);
>  	/* The below fixes the weird display corruption, a few pixels shifted
>  	 * downward, on (only) LVDS of some HP laptops with IVY.
>  	 */
>  	for_each_pipe(dev_priv, pipe) {
> -		val = I915_READ(TRANS_CHICKEN2(pipe));
> +		val = intel_uncore_read(&dev_priv->uncore, TRANS_CHICKEN2(pipe));
>  		val |= TRANS_CHICKEN2_TIMING_OVERRIDE;
>  		val &= ~TRANS_CHICKEN2_FDI_POLARITY_REVERSED;
>  		if (dev_priv->vbt.fdi_rx_polarity_inverted)
>  			val |= TRANS_CHICKEN2_FDI_POLARITY_REVERSED;
>  		val &= ~TRANS_CHICKEN2_DISABLE_DEEP_COLOR_COUNTER;
>  		val &= ~TRANS_CHICKEN2_DISABLE_DEEP_COLOR_MODESWITCH;
> -		I915_WRITE(TRANS_CHICKEN2(pipe), val);
> +		intel_uncore_write(&dev_priv->uncore, TRANS_CHICKEN2(pipe), val);
>  	}
>  	/* WADP0ClockGatingDisable */
>  	for_each_pipe(dev_priv, pipe) {
> -		I915_WRITE(TRANS_CHICKEN1(pipe),
> +		intel_uncore_write(&dev_priv->uncore, TRANS_CHICKEN1(pipe),
>  			   TRANS_CHICKEN1_DP0UNIT_GC_DISABLE);
>  	}
>  }
> @@ -6975,7 +6975,7 @@ static void gen6_check_mch_setup(struct drm_i915_private *dev_priv)
>  {
>  	u32 tmp;
>  
> -	tmp = I915_READ(MCH_SSKPD);
> +	tmp = intel_uncore_read(&dev_priv->uncore, MCH_SSKPD);
>  	if ((tmp & MCH_SSKPD_WM0_MASK) != MCH_SSKPD_WM0_VAL)
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Wrong MCH_SSKPD value: 0x%08x This can cause underruns.\n",
> @@ -6986,14 +6986,14 @@ static void gen6_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
>  	u32 dspclk_gate = ILK_VRHUNIT_CLOCK_GATE_DISABLE;
>  
> -	I915_WRITE(ILK_DSPCLK_GATE_D, dspclk_gate);
> +	intel_uncore_write(&dev_priv->uncore, ILK_DSPCLK_GATE_D, dspclk_gate);
>  
> -	I915_WRITE(ILK_DISPLAY_CHICKEN2,
> -		   I915_READ(ILK_DISPLAY_CHICKEN2) |
> +	intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2,
> +		   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2) |
>  		   ILK_ELPIN_409_SELECT);
>  
> -	I915_WRITE(GEN6_UCGCTL1,
> -		   I915_READ(GEN6_UCGCTL1) |
> +	intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL1,
> +		   intel_uncore_read(&dev_priv->uncore, GEN6_UCGCTL1) |
>  		   GEN6_BLBUNIT_CLOCK_GATE_DISABLE |
>  		   GEN6_CSUNIT_CLOCK_GATE_DISABLE);
>  
> @@ -7010,7 +7010,7 @@ static void gen6_init_clock_gating(struct drm_i915_private *dev_priv)
>  	 * WaDisableRCCUnitClockGating:snb
>  	 * WaDisableRCPBUnitClockGating:snb
>  	 */
> -	I915_WRITE(GEN6_UCGCTL2,
> +	intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL2,
>  		   GEN6_RCPBUNIT_CLOCK_GATE_DISABLE |
>  		   GEN6_RCCUNIT_CLOCK_GATE_DISABLE);
>  
> @@ -7025,14 +7025,14 @@ static void gen6_init_clock_gating(struct drm_i915_private *dev_priv)
>  	 *
>  	 * WaFbcAsynchFlipDisableFbcQueue:snb
>  	 */
> -	I915_WRITE(ILK_DISPLAY_CHICKEN1,
> -		   I915_READ(ILK_DISPLAY_CHICKEN1) |
> +	intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1,
> +		   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1) |
>  		   ILK_FBCQ_DIS | ILK_PABSTRETCH_DIS);
> -	I915_WRITE(ILK_DISPLAY_CHICKEN2,
> -		   I915_READ(ILK_DISPLAY_CHICKEN2) |
> +	intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2,
> +		   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2) |
>  		   ILK_DPARB_GATE | ILK_VSDPFD_FULL);
> -	I915_WRITE(ILK_DSPCLK_GATE_D,
> -		   I915_READ(ILK_DSPCLK_GATE_D) |
> +	intel_uncore_write(&dev_priv->uncore, ILK_DSPCLK_GATE_D,
> +		   intel_uncore_read(&dev_priv->uncore, ILK_DSPCLK_GATE_D) |
>  		   ILK_DPARBUNIT_CLOCK_GATE_ENABLE  |
>  		   ILK_DPFDUNIT_CLOCK_GATE_ENABLE);
>  
> @@ -7050,23 +7050,23 @@ static void lpt_init_clock_gating(struct drm_i915_private *dev_priv)
>  	 * disabled when not needed anymore in order to save power.
>  	 */
>  	if (HAS_PCH_LPT_LP(dev_priv))
> -		I915_WRITE(SOUTH_DSPCLK_GATE_D,
> -			   I915_READ(SOUTH_DSPCLK_GATE_D) |
> +		intel_uncore_write(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D,
> +			   intel_uncore_read(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D) |
>  			   PCH_LP_PARTITION_LEVEL_DISABLE);
>  
>  	/* WADPOClockGatingDisable:hsw */
> -	I915_WRITE(TRANS_CHICKEN1(PIPE_A),
> -		   I915_READ(TRANS_CHICKEN1(PIPE_A)) |
> +	intel_uncore_write(&dev_priv->uncore, TRANS_CHICKEN1(PIPE_A),
> +		   intel_uncore_read(&dev_priv->uncore, TRANS_CHICKEN1(PIPE_A)) |
>  		   TRANS_CHICKEN1_DP0UNIT_GC_DISABLE);
>  }
>  
>  static void lpt_suspend_hw(struct drm_i915_private *dev_priv)
>  {
>  	if (HAS_PCH_LPT_LP(dev_priv)) {
> -		u32 val = I915_READ(SOUTH_DSPCLK_GATE_D);
> +		u32 val = intel_uncore_read(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D);
>  
>  		val &= ~PCH_LP_PARTITION_LEVEL_DISABLE;
> -		I915_WRITE(SOUTH_DSPCLK_GATE_D, val);
> +		intel_uncore_write(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D, val);
>  	}
>  }
>  
> @@ -7078,33 +7078,33 @@ static void gen8_set_l3sqc_credits(struct drm_i915_private *dev_priv,
>  	u32 val;
>  
>  	/* WaTempDisableDOPClkGating:bdw */
> -	misccpctl = I915_READ(GEN7_MISCCPCTL);
> -	I915_WRITE(GEN7_MISCCPCTL, misccpctl & ~GEN7_DOP_CLOCK_GATE_ENABLE);
> +	misccpctl = intel_uncore_read(&dev_priv->uncore, GEN7_MISCCPCTL);
> +	intel_uncore_write(&dev_priv->uncore, GEN7_MISCCPCTL, misccpctl & ~GEN7_DOP_CLOCK_GATE_ENABLE);
>  
> -	val = I915_READ(GEN8_L3SQCREG1);
> +	val = intel_uncore_read(&dev_priv->uncore, GEN8_L3SQCREG1);
>  	val &= ~L3_PRIO_CREDITS_MASK;
>  	val |= L3_GENERAL_PRIO_CREDITS(general_prio_credits);
>  	val |= L3_HIGH_PRIO_CREDITS(high_prio_credits);
> -	I915_WRITE(GEN8_L3SQCREG1, val);
> +	intel_uncore_write(&dev_priv->uncore, GEN8_L3SQCREG1, val);
>  
>  	/*
>  	 * Wait at least 100 clocks before re-enabling clock gating.
>  	 * See the definition of L3SQCREG1 in BSpec.
>  	 */
> -	POSTING_READ(GEN8_L3SQCREG1);
> +	intel_uncore_posting_read(&dev_priv->uncore, GEN8_L3SQCREG1);
>  	udelay(1);
> -	I915_WRITE(GEN7_MISCCPCTL, misccpctl);
> +	intel_uncore_write(&dev_priv->uncore, GEN7_MISCCPCTL, misccpctl);
>  }
>  
>  static void icl_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
>  	/* Wa_1409120013:icl,ehl */
> -	I915_WRITE(ILK_DPFC_CHICKEN,
> +	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN,
>  		   ILK_DPFC_CHICKEN_COMP_DUMMY_PIXEL);
>  
>  	/* This is not an Wa. Enable to reduce Sampler power */
> -	I915_WRITE(GEN10_DFR_RATIO_EN_AND_CHICKEN,
> -		   I915_READ(GEN10_DFR_RATIO_EN_AND_CHICKEN) & ~DFR_DISABLE);
> +	intel_uncore_write(&dev_priv->uncore, GEN10_DFR_RATIO_EN_AND_CHICKEN,
> +		   intel_uncore_read(&dev_priv->uncore, GEN10_DFR_RATIO_EN_AND_CHICKEN) & ~DFR_DISABLE);
>  
>  	/*Wa_14010594013:icl, ehl */
>  	intel_uncore_rmw(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1,
> @@ -7114,12 +7114,12 @@ static void icl_init_clock_gating(struct drm_i915_private *dev_priv)
>  static void tgl_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
>  	/* Wa_1409120013:tgl */
> -	I915_WRITE(ILK_DPFC_CHICKEN,
> +	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN,
>  		   ILK_DPFC_CHICKEN_COMP_DUMMY_PIXEL);
>  
>  	/* Wa_1409825376:tgl (pre-prod)*/
>  	if (IS_TGL_DISP_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_B1))
> -		I915_WRITE(GEN9_CLKGATE_DIS_3, I915_READ(GEN9_CLKGATE_DIS_3) |
> +		intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, intel_uncore_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_3) |
>  			   TGL_VRH_GATING_DIS);
>  
>  	/* Wa_14011059788:tgl */
> @@ -7131,7 +7131,7 @@ static void dg1_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
>  	/* Wa_1409836686:dg1[a0] */
>  	if (IS_DG1_REVID(dev_priv, DG1_REVID_A0, DG1_REVID_A0))
> -		I915_WRITE(GEN9_CLKGATE_DIS_3, I915_READ(GEN9_CLKGATE_DIS_3) |
> +		intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, intel_uncore_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_3) |
>  			   DPT_GATING_DIS);
>  }
>  
> @@ -7141,7 +7141,7 @@ static void cnp_init_clock_gating(struct drm_i915_private *dev_priv)
>  		return;
>  
>  	/* Display WA #1181 WaSouthDisplayDisablePWMCGEGating: cnp */
> -	I915_WRITE(SOUTH_DSPCLK_GATE_D, I915_READ(SOUTH_DSPCLK_GATE_D) |
> +	intel_uncore_write(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D, intel_uncore_read(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D) |
>  		   CNP_PWM_CGE_GATING_DISABLE);
>  }
>  
> @@ -7151,35 +7151,35 @@ static void cnl_init_clock_gating(struct drm_i915_private *dev_priv)
>  	cnp_init_clock_gating(dev_priv);
>  
>  	/* This is not an Wa. Enable for better image quality */
> -	I915_WRITE(_3D_CHICKEN3,
> +	intel_uncore_write(&dev_priv->uncore, _3D_CHICKEN3,
>  		   _MASKED_BIT_ENABLE(_3D_CHICKEN3_AA_LINE_QUALITY_FIX_ENABLE));
>  
>  	/* WaEnableChickenDCPR:cnl */
> -	I915_WRITE(GEN8_CHICKEN_DCPR_1,
> -		   I915_READ(GEN8_CHICKEN_DCPR_1) | MASK_WAKEMEM);
> +	intel_uncore_write(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1,
> +		   intel_uncore_read(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1) | MASK_WAKEMEM);
>  
>  	/*
>  	 * WaFbcWakeMemOn:cnl
>  	 * Display WA #0859: cnl
>  	 */
> -	I915_WRITE(DISP_ARB_CTL, I915_READ(DISP_ARB_CTL) |
> +	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |
>  		   DISP_FBC_MEMORY_WAKE);
>  
> -	val = I915_READ(SLICE_UNIT_LEVEL_CLKGATE);
> +	val = intel_uncore_read(&dev_priv->uncore, SLICE_UNIT_LEVEL_CLKGATE);
>  	/* ReadHitWriteOnlyDisable:cnl */
>  	val |= RCCUNIT_CLKGATE_DIS;
> -	I915_WRITE(SLICE_UNIT_LEVEL_CLKGATE, val);
> +	intel_uncore_write(&dev_priv->uncore, SLICE_UNIT_LEVEL_CLKGATE, val);
>  
>  	/* Wa_2201832410:cnl */
> -	val = I915_READ(SUBSLICE_UNIT_LEVEL_CLKGATE);
> +	val = intel_uncore_read(&dev_priv->uncore, SUBSLICE_UNIT_LEVEL_CLKGATE);
>  	val |= GWUNIT_CLKGATE_DIS;
> -	I915_WRITE(SUBSLICE_UNIT_LEVEL_CLKGATE, val);
> +	intel_uncore_write(&dev_priv->uncore, SUBSLICE_UNIT_LEVEL_CLKGATE, val);
>  
>  	/* WaDisableVFclkgate:cnl */
>  	/* WaVFUnitClockGatingDisable:cnl */
> -	val = I915_READ(UNSLICE_UNIT_LEVEL_CLKGATE);
> +	val = intel_uncore_read(&dev_priv->uncore, UNSLICE_UNIT_LEVEL_CLKGATE);
>  	val |= VFUNIT_CLKGATE_DIS;
> -	I915_WRITE(UNSLICE_UNIT_LEVEL_CLKGATE, val);
> +	intel_uncore_write(&dev_priv->uncore, UNSLICE_UNIT_LEVEL_CLKGATE, val);
>  }
>  
>  static void cfl_init_clock_gating(struct drm_i915_private *dev_priv)
> @@ -7188,21 +7188,21 @@ static void cfl_init_clock_gating(struct drm_i915_private *dev_priv)
>  	gen9_init_clock_gating(dev_priv);
>  
>  	/* WAC6entrylatency:cfl */
> -	I915_WRITE(FBC_LLC_READ_CTRL, I915_READ(FBC_LLC_READ_CTRL) |
> +	intel_uncore_write(&dev_priv->uncore, FBC_LLC_READ_CTRL, intel_uncore_read(&dev_priv->uncore, FBC_LLC_READ_CTRL) |
>  		   FBC_LLC_FULLY_OPEN);
>  
>  	/*
>  	 * WaFbcTurnOffFbcWatermark:cfl
>  	 * Display WA #0562: cfl
>  	 */
> -	I915_WRITE(DISP_ARB_CTL, I915_READ(DISP_ARB_CTL) |
> +	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |
>  		   DISP_FBC_WM_DIS);
>  
>  	/*
>  	 * WaFbcNukeOnHostModify:cfl
>  	 * Display WA #0873: cfl
>  	 */
> -	I915_WRITE(ILK_DPFC_CHICKEN, I915_READ(ILK_DPFC_CHICKEN) |
> +	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN, intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN) |
>  		   ILK_DPFC_NUKE_ON_ANY_MODIFICATION);
>  }
>  
> @@ -7211,31 +7211,31 @@ static void kbl_init_clock_gating(struct drm_i915_private *dev_priv)
>  	gen9_init_clock_gating(dev_priv);
>  
>  	/* WAC6entrylatency:kbl */
> -	I915_WRITE(FBC_LLC_READ_CTRL, I915_READ(FBC_LLC_READ_CTRL) |
> +	intel_uncore_write(&dev_priv->uncore, FBC_LLC_READ_CTRL, intel_uncore_read(&dev_priv->uncore, FBC_LLC_READ_CTRL) |
>  		   FBC_LLC_FULLY_OPEN);
>  
>  	/* WaDisableSDEUnitClockGating:kbl */
>  	if (IS_KBL_GT_REVID(dev_priv, 0, KBL_REVID_B0))
> -		I915_WRITE(GEN8_UCGCTL6, I915_READ(GEN8_UCGCTL6) |
> +		intel_uncore_write(&dev_priv->uncore, GEN8_UCGCTL6, intel_uncore_read(&dev_priv->uncore, GEN8_UCGCTL6) |
>  			   GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
>  
>  	/* WaDisableGamClockGating:kbl */
>  	if (IS_KBL_GT_REVID(dev_priv, 0, KBL_REVID_B0))
> -		I915_WRITE(GEN6_UCGCTL1, I915_READ(GEN6_UCGCTL1) |
> +		intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL1, intel_uncore_read(&dev_priv->uncore, GEN6_UCGCTL1) |
>  			   GEN6_GAMUNIT_CLOCK_GATE_DISABLE);
>  
>  	/*
>  	 * WaFbcTurnOffFbcWatermark:kbl
>  	 * Display WA #0562: kbl
>  	 */
> -	I915_WRITE(DISP_ARB_CTL, I915_READ(DISP_ARB_CTL) |
> +	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |
>  		   DISP_FBC_WM_DIS);
>  
>  	/*
>  	 * WaFbcNukeOnHostModify:kbl
>  	 * Display WA #0873: kbl
>  	 */
> -	I915_WRITE(ILK_DPFC_CHICKEN, I915_READ(ILK_DPFC_CHICKEN) |
> +	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN, intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN) |
>  		   ILK_DPFC_NUKE_ON_ANY_MODIFICATION);
>  }
>  
> @@ -7244,32 +7244,32 @@ static void skl_init_clock_gating(struct drm_i915_private *dev_priv)
>  	gen9_init_clock_gating(dev_priv);
>  
>  	/* WaDisableDopClockGating:skl */
> -	I915_WRITE(GEN7_MISCCPCTL, I915_READ(GEN7_MISCCPCTL) &
> +	intel_uncore_write(&dev_priv->uncore, GEN7_MISCCPCTL, intel_uncore_read(&dev_priv->uncore, GEN7_MISCCPCTL) &
>  		   ~GEN7_DOP_CLOCK_GATE_ENABLE);
>  
>  	/* WAC6entrylatency:skl */
> -	I915_WRITE(FBC_LLC_READ_CTRL, I915_READ(FBC_LLC_READ_CTRL) |
> +	intel_uncore_write(&dev_priv->uncore, FBC_LLC_READ_CTRL, intel_uncore_read(&dev_priv->uncore, FBC_LLC_READ_CTRL) |
>  		   FBC_LLC_FULLY_OPEN);
>  
>  	/*
>  	 * WaFbcTurnOffFbcWatermark:skl
>  	 * Display WA #0562: skl
>  	 */
> -	I915_WRITE(DISP_ARB_CTL, I915_READ(DISP_ARB_CTL) |
> +	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |
>  		   DISP_FBC_WM_DIS);
>  
>  	/*
>  	 * WaFbcNukeOnHostModify:skl
>  	 * Display WA #0873: skl
>  	 */
> -	I915_WRITE(ILK_DPFC_CHICKEN, I915_READ(ILK_DPFC_CHICKEN) |
> +	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN, intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN) |
>  		   ILK_DPFC_NUKE_ON_ANY_MODIFICATION);
>  
>  	/*
>  	 * WaFbcHighMemBwCorruptionAvoidance:skl
>  	 * Display WA #0883: skl
>  	 */
> -	I915_WRITE(ILK_DPFC_CHICKEN, I915_READ(ILK_DPFC_CHICKEN) |
> +	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN, intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN) |
>  		   ILK_DPFC_DISABLE_DUMMY0);
>  }
>  
> @@ -7278,42 +7278,42 @@ static void bdw_init_clock_gating(struct drm_i915_private *dev_priv)
>  	enum pipe pipe;
>  
>  	/* WaFbcAsynchFlipDisableFbcQueue:hsw,bdw */
> -	I915_WRITE(CHICKEN_PIPESL_1(PIPE_A),
> -		   I915_READ(CHICKEN_PIPESL_1(PIPE_A)) |
> +	intel_uncore_write(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A),
> +		   intel_uncore_read(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A)) |
>  		   HSW_FBCQ_DIS);
>  
>  	/* WaSwitchSolVfFArbitrationPriority:bdw */
> -	I915_WRITE(GAM_ECOCHK, I915_READ(GAM_ECOCHK) | HSW_ECOCHK_ARB_PRIO_SOL);
> +	intel_uncore_write(&dev_priv->uncore, GAM_ECOCHK, intel_uncore_read(&dev_priv->uncore, GAM_ECOCHK) | HSW_ECOCHK_ARB_PRIO_SOL);
>  
>  	/* WaPsrDPAMaskVBlankInSRD:bdw */
> -	I915_WRITE(CHICKEN_PAR1_1,
> -		   I915_READ(CHICKEN_PAR1_1) | DPA_MASK_VBLANK_SRD);
> +	intel_uncore_write(&dev_priv->uncore, CHICKEN_PAR1_1,
> +		   intel_uncore_read(&dev_priv->uncore, CHICKEN_PAR1_1) | DPA_MASK_VBLANK_SRD);
>  
>  	/* WaPsrDPRSUnmaskVBlankInSRD:bdw */
>  	for_each_pipe(dev_priv, pipe) {
> -		I915_WRITE(CHICKEN_PIPESL_1(pipe),
> -			   I915_READ(CHICKEN_PIPESL_1(pipe)) |
> +		intel_uncore_write(&dev_priv->uncore, CHICKEN_PIPESL_1(pipe),
> +			   intel_uncore_read(&dev_priv->uncore, CHICKEN_PIPESL_1(pipe)) |
>  			   BDW_DPRS_MASK_VBLANK_SRD);
>  	}
>  
>  	/* WaVSRefCountFullforceMissDisable:bdw */
>  	/* WaDSRefCountFullforceMissDisable:bdw */
> -	I915_WRITE(GEN7_FF_THREAD_MODE,
> -		   I915_READ(GEN7_FF_THREAD_MODE) &
> +	intel_uncore_write(&dev_priv->uncore, GEN7_FF_THREAD_MODE,
> +		   intel_uncore_read(&dev_priv->uncore, GEN7_FF_THREAD_MODE) &
>  		   ~(GEN8_FF_DS_REF_CNT_FFME | GEN7_FF_VS_REF_CNT_FFME));
>  
> -	I915_WRITE(GEN6_RC_SLEEP_PSMI_CONTROL,
> +	intel_uncore_write(&dev_priv->uncore, GEN6_RC_SLEEP_PSMI_CONTROL,
>  		   _MASKED_BIT_ENABLE(GEN8_RC_SEMA_IDLE_MSG_DISABLE));
>  
>  	/* WaDisableSDEUnitClockGating:bdw */
> -	I915_WRITE(GEN8_UCGCTL6, I915_READ(GEN8_UCGCTL6) |
> +	intel_uncore_write(&dev_priv->uncore, GEN8_UCGCTL6, intel_uncore_read(&dev_priv->uncore, GEN8_UCGCTL6) |
>  		   GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
>  
>  	/* WaProgramL3SqcReg1Default:bdw */
>  	gen8_set_l3sqc_credits(dev_priv, 30, 2);
>  
>  	/* WaKVMNotificationOnConfigChange:bdw */
> -	I915_WRITE(CHICKEN_PAR2_1, I915_READ(CHICKEN_PAR2_1)
> +	intel_uncore_write(&dev_priv->uncore, CHICKEN_PAR2_1, intel_uncore_read(&dev_priv->uncore, CHICKEN_PAR2_1)
>  		   | KVM_CONFIG_CHANGE_NOTIFICATION_SELECT);
>  
>  	lpt_init_clock_gating(dev_priv);
> @@ -7323,24 +7323,24 @@ static void bdw_init_clock_gating(struct drm_i915_private *dev_priv)
>  	 * Also see the CHICKEN2 write in bdw_init_workarounds() to disable DOP
>  	 * clock gating.
>  	 */
> -	I915_WRITE(GEN6_UCGCTL1,
> -		   I915_READ(GEN6_UCGCTL1) | GEN6_EU_TCUNIT_CLOCK_GATE_DISABLE);
> +	intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL1,
> +		   intel_uncore_read(&dev_priv->uncore, GEN6_UCGCTL1) | GEN6_EU_TCUNIT_CLOCK_GATE_DISABLE);
>  }
>  
>  static void hsw_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
>  	/* WaFbcAsynchFlipDisableFbcQueue:hsw,bdw */
> -	I915_WRITE(CHICKEN_PIPESL_1(PIPE_A),
> -		   I915_READ(CHICKEN_PIPESL_1(PIPE_A)) |
> +	intel_uncore_write(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A),
> +		   intel_uncore_read(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A)) |
>  		   HSW_FBCQ_DIS);
>  
>  	/* This is required by WaCatErrorRejectionIssue:hsw */
> -	I915_WRITE(GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
> -		   I915_READ(GEN7_SQ_CHICKEN_MBCUNIT_CONFIG) |
> +	intel_uncore_write(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
> +		   intel_uncore_read(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG) |
>  		   GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);
>  
>  	/* WaSwitchSolVfFArbitrationPriority:hsw */
> -	I915_WRITE(GAM_ECOCHK, I915_READ(GAM_ECOCHK) | HSW_ECOCHK_ARB_PRIO_SOL);
> +	intel_uncore_write(&dev_priv->uncore, GAM_ECOCHK, intel_uncore_read(&dev_priv->uncore, GAM_ECOCHK) | HSW_ECOCHK_ARB_PRIO_SOL);
>  
>  	lpt_init_clock_gating(dev_priv);
>  }
> @@ -7349,26 +7349,26 @@ static void ivb_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
>  	u32 snpcr;
>  
> -	I915_WRITE(ILK_DSPCLK_GATE_D, ILK_VRHUNIT_CLOCK_GATE_DISABLE);
> +	intel_uncore_write(&dev_priv->uncore, ILK_DSPCLK_GATE_D, ILK_VRHUNIT_CLOCK_GATE_DISABLE);
>  
>  	/* WaFbcAsynchFlipDisableFbcQueue:ivb */
> -	I915_WRITE(ILK_DISPLAY_CHICKEN1,
> -		   I915_READ(ILK_DISPLAY_CHICKEN1) |
> +	intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1,
> +		   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1) |
>  		   ILK_FBCQ_DIS);
>  
>  	/* WaDisableBackToBackFlipFix:ivb */
> -	I915_WRITE(IVB_CHICKEN3,
> +	intel_uncore_write(&dev_priv->uncore, IVB_CHICKEN3,
>  		   CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE |
>  		   CHICKEN3_DGMG_DONE_FIX_DISABLE);
>  
>  	if (IS_IVB_GT1(dev_priv))
> -		I915_WRITE(GEN7_ROW_CHICKEN2,
> +		intel_uncore_write(&dev_priv->uncore, GEN7_ROW_CHICKEN2,
>  			   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));
>  	else {
>  		/* must write both registers */
> -		I915_WRITE(GEN7_ROW_CHICKEN2,
> +		intel_uncore_write(&dev_priv->uncore, GEN7_ROW_CHICKEN2,
>  			   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));
> -		I915_WRITE(GEN7_ROW_CHICKEN2_GT2,
> +		intel_uncore_write(&dev_priv->uncore, GEN7_ROW_CHICKEN2_GT2,
>  			   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));
>  	}
>  
> @@ -7376,20 +7376,20 @@ static void ivb_init_clock_gating(struct drm_i915_private *dev_priv)
>  	 * According to the spec, bit 13 (RCZUNIT) must be set on IVB.
>  	 * This implements the WaDisableRCZUnitClockGating:ivb workaround.
>  	 */
> -	I915_WRITE(GEN6_UCGCTL2,
> +	intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL2,
>  		   GEN6_RCZUNIT_CLOCK_GATE_DISABLE);
>  
>  	/* This is required by WaCatErrorRejectionIssue:ivb */
> -	I915_WRITE(GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
> -			I915_READ(GEN7_SQ_CHICKEN_MBCUNIT_CONFIG) |
> +	intel_uncore_write(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
> +			intel_uncore_read(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG) |
>  			GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);
>  
>  	g4x_disable_trickle_feed(dev_priv);
>  
> -	snpcr = I915_READ(GEN6_MBCUNIT_SNPCR);
> +	snpcr = intel_uncore_read(&dev_priv->uncore, GEN6_MBCUNIT_SNPCR);
>  	snpcr &= ~GEN6_MBC_SNPCR_MASK;
>  	snpcr |= GEN6_MBC_SNPCR_MED;
> -	I915_WRITE(GEN6_MBCUNIT_SNPCR, snpcr);
> +	intel_uncore_write(&dev_priv->uncore, GEN6_MBCUNIT_SNPCR, snpcr);
>  
>  	if (!HAS_PCH_NOP(dev_priv))
>  		cpt_init_clock_gating(dev_priv);
> @@ -7400,58 +7400,58 @@ static void ivb_init_clock_gating(struct drm_i915_private *dev_priv)
>  static void vlv_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
>  	/* WaDisableBackToBackFlipFix:vlv */
> -	I915_WRITE(IVB_CHICKEN3,
> +	intel_uncore_write(&dev_priv->uncore, IVB_CHICKEN3,
>  		   CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE |
>  		   CHICKEN3_DGMG_DONE_FIX_DISABLE);
>  
>  	/* WaDisableDopClockGating:vlv */
> -	I915_WRITE(GEN7_ROW_CHICKEN2,
> +	intel_uncore_write(&dev_priv->uncore, GEN7_ROW_CHICKEN2,
>  		   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));
>  
>  	/* This is required by WaCatErrorRejectionIssue:vlv */
> -	I915_WRITE(GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
> -		   I915_READ(GEN7_SQ_CHICKEN_MBCUNIT_CONFIG) |
> +	intel_uncore_write(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
> +		   intel_uncore_read(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG) |
>  		   GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);
>  
>  	/*
>  	 * According to the spec, bit 13 (RCZUNIT) must be set on IVB.
>  	 * This implements the WaDisableRCZUnitClockGating:vlv workaround.
>  	 */
> -	I915_WRITE(GEN6_UCGCTL2,
> +	intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL2,
>  		   GEN6_RCZUNIT_CLOCK_GATE_DISABLE);
>  
>  	/* WaDisableL3Bank2xClockGate:vlv
>  	 * Disabling L3 clock gating- MMIO 940c[25] = 1
>  	 * Set bit 25, to disable L3_BANK_2x_CLK_GATING */
> -	I915_WRITE(GEN7_UCGCTL4,
> -		   I915_READ(GEN7_UCGCTL4) | GEN7_L3BANK2X_CLOCK_GATE_DISABLE);
> +	intel_uncore_write(&dev_priv->uncore, GEN7_UCGCTL4,
> +		   intel_uncore_read(&dev_priv->uncore, GEN7_UCGCTL4) | GEN7_L3BANK2X_CLOCK_GATE_DISABLE);
>  
>  	/*
>  	 * WaDisableVLVClockGating_VBIIssue:vlv
>  	 * Disable clock gating on th GCFG unit to prevent a delay
>  	 * in the reporting of vblank events.
>  	 */
> -	I915_WRITE(VLV_GUNIT_CLOCK_GATE, GCFG_DIS);
> +	intel_uncore_write(&dev_priv->uncore, VLV_GUNIT_CLOCK_GATE, GCFG_DIS);
>  }
>  
>  static void chv_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
>  	/* WaVSRefCountFullforceMissDisable:chv */
>  	/* WaDSRefCountFullforceMissDisable:chv */
> -	I915_WRITE(GEN7_FF_THREAD_MODE,
> -		   I915_READ(GEN7_FF_THREAD_MODE) &
> +	intel_uncore_write(&dev_priv->uncore, GEN7_FF_THREAD_MODE,
> +		   intel_uncore_read(&dev_priv->uncore, GEN7_FF_THREAD_MODE) &
>  		   ~(GEN8_FF_DS_REF_CNT_FFME | GEN7_FF_VS_REF_CNT_FFME));
>  
>  	/* WaDisableSemaphoreAndSyncFlipWait:chv */
> -	I915_WRITE(GEN6_RC_SLEEP_PSMI_CONTROL,
> +	intel_uncore_write(&dev_priv->uncore, GEN6_RC_SLEEP_PSMI_CONTROL,
>  		   _MASKED_BIT_ENABLE(GEN8_RC_SEMA_IDLE_MSG_DISABLE));
>  
>  	/* WaDisableCSUnitClockGating:chv */
> -	I915_WRITE(GEN6_UCGCTL1, I915_READ(GEN6_UCGCTL1) |
> +	intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL1, intel_uncore_read(&dev_priv->uncore, GEN6_UCGCTL1) |
>  		   GEN6_CSUNIT_CLOCK_GATE_DISABLE);
>  
>  	/* WaDisableSDEUnitClockGating:chv */
> -	I915_WRITE(GEN8_UCGCTL6, I915_READ(GEN8_UCGCTL6) |
> +	intel_uncore_write(&dev_priv->uncore, GEN8_UCGCTL6, intel_uncore_read(&dev_priv->uncore, GEN8_UCGCTL6) |
>  		   GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
>  
>  	/*
> @@ -7466,17 +7466,17 @@ static void g4x_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
>  	u32 dspclk_gate;
>  
> -	I915_WRITE(RENCLK_GATE_D1, 0);
> -	I915_WRITE(RENCLK_GATE_D2, VF_UNIT_CLOCK_GATE_DISABLE |
> +	intel_uncore_write(&dev_priv->uncore, RENCLK_GATE_D1, 0);
> +	intel_uncore_write(&dev_priv->uncore, RENCLK_GATE_D2, VF_UNIT_CLOCK_GATE_DISABLE |
>  		   GS_UNIT_CLOCK_GATE_DISABLE |
>  		   CL_UNIT_CLOCK_GATE_DISABLE);
> -	I915_WRITE(RAMCLK_GATE_D, 0);
> +	intel_uncore_write(&dev_priv->uncore, RAMCLK_GATE_D, 0);
>  	dspclk_gate = VRHUNIT_CLOCK_GATE_DISABLE |
>  		OVRUNIT_CLOCK_GATE_DISABLE |
>  		OVCUNIT_CLOCK_GATE_DISABLE;
>  	if (IS_GM45(dev_priv))
>  		dspclk_gate |= DSSUNIT_CLOCK_GATE_DISABLE;
> -	I915_WRITE(DSPCLK_GATE_D, dspclk_gate);
> +	intel_uncore_write(&dev_priv->uncore, DSPCLK_GATE_D, dspclk_gate);
>  
>  	g4x_disable_trickle_feed(dev_priv);
>  }
> @@ -7497,49 +7497,49 @@ static void i965gm_init_clock_gating(struct drm_i915_private *dev_priv)
>  
>  static void i965g_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
> -	I915_WRITE(RENCLK_GATE_D1, I965_RCZ_CLOCK_GATE_DISABLE |
> +	intel_uncore_write(&dev_priv->uncore, RENCLK_GATE_D1, I965_RCZ_CLOCK_GATE_DISABLE |
>  		   I965_RCC_CLOCK_GATE_DISABLE |
>  		   I965_RCPB_CLOCK_GATE_DISABLE |
>  		   I965_ISC_CLOCK_GATE_DISABLE |
>  		   I965_FBC_CLOCK_GATE_DISABLE);
> -	I915_WRITE(RENCLK_GATE_D2, 0);
> -	I915_WRITE(MI_ARB_STATE,
> +	intel_uncore_write(&dev_priv->uncore, RENCLK_GATE_D2, 0);
> +	intel_uncore_write(&dev_priv->uncore, MI_ARB_STATE,
>  		   _MASKED_BIT_ENABLE(MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE));
>  }
>  
>  static void gen3_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
> -	u32 dstate = I915_READ(D_STATE);
> +	u32 dstate = intel_uncore_read(&dev_priv->uncore, D_STATE);
>  
>  	dstate |= DSTATE_PLL_D3_OFF | DSTATE_GFX_CLOCK_GATING |
>  		DSTATE_DOT_CLOCK_GATING;
> -	I915_WRITE(D_STATE, dstate);
> +	intel_uncore_write(&dev_priv->uncore, D_STATE, dstate);
>  
>  	if (IS_PINEVIEW(dev_priv))
> -		I915_WRITE(ECOSKPD, _MASKED_BIT_ENABLE(ECO_GATING_CX_ONLY));
> +		intel_uncore_write(&dev_priv->uncore, ECOSKPD, _MASKED_BIT_ENABLE(ECO_GATING_CX_ONLY));
>  
>  	/* IIR "flip pending" means done if this bit is set */
> -	I915_WRITE(ECOSKPD, _MASKED_BIT_DISABLE(ECO_FLIP_DONE));
> +	intel_uncore_write(&dev_priv->uncore, ECOSKPD, _MASKED_BIT_DISABLE(ECO_FLIP_DONE));
>  
>  	/* interrupts should cause a wake up from C3 */
> -	I915_WRITE(INSTPM, _MASKED_BIT_ENABLE(INSTPM_AGPBUSY_INT_EN));
> +	intel_uncore_write(&dev_priv->uncore, INSTPM, _MASKED_BIT_ENABLE(INSTPM_AGPBUSY_INT_EN));
>  
>  	/* On GEN3 we really need to make sure the ARB C3 LP bit is set */
> -	I915_WRITE(MI_ARB_STATE, _MASKED_BIT_ENABLE(MI_ARB_C3_LP_WRITE_ENABLE));
> +	intel_uncore_write(&dev_priv->uncore, MI_ARB_STATE, _MASKED_BIT_ENABLE(MI_ARB_C3_LP_WRITE_ENABLE));
>  
> -	I915_WRITE(MI_ARB_STATE,
> +	intel_uncore_write(&dev_priv->uncore, MI_ARB_STATE,
>  		   _MASKED_BIT_ENABLE(MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE));
>  }
>  
>  static void i85x_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
> -	I915_WRITE(RENCLK_GATE_D1, SV_CLOCK_GATE_DISABLE);
> +	intel_uncore_write(&dev_priv->uncore, RENCLK_GATE_D1, SV_CLOCK_GATE_DISABLE);
>  
>  	/* interrupts should cause a wake up from C3 */
> -	I915_WRITE(MI_STATE, _MASKED_BIT_ENABLE(MI_AGPBUSY_INT_EN) |
> +	intel_uncore_write(&dev_priv->uncore, MI_STATE, _MASKED_BIT_ENABLE(MI_AGPBUSY_INT_EN) |
>  		   _MASKED_BIT_DISABLE(MI_AGPBUSY_830_MODE));
>  
> -	I915_WRITE(MEM_MODE,
> +	intel_uncore_write(&dev_priv->uncore, MEM_MODE,
>  		   _MASKED_BIT_ENABLE(MEM_DISPLAY_TRICKLE_FEED_DISABLE));
>  
>  	/*
> @@ -7549,13 +7549,13 @@ static void i85x_init_clock_gating(struct drm_i915_private *dev_priv)
>  	 * abosultely nothing) would not allow FBC to recompress
>  	 * until a 2D blit occurs.
>  	 */
> -	I915_WRITE(SCPD0,
> +	intel_uncore_write(&dev_priv->uncore, SCPD0,
>  		   _MASKED_BIT_ENABLE(SCPD_FBC_IGNORE_3D));
>  }
>  
>  static void i830_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
> -	I915_WRITE(MEM_MODE,
> +	intel_uncore_write(&dev_priv->uncore, MEM_MODE,
>  		   _MASKED_BIT_ENABLE(MEM_DISPLAY_A_TRICKLE_FEED_DISABLE) |
>  		   _MASKED_BIT_ENABLE(MEM_DISPLAY_B_TRICKLE_FEED_DISABLE));
>  }
> -- 
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
