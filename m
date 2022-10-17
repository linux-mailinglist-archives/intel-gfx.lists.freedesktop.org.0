Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D7F600C99
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 12:38:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B91D10ED33;
	Mon, 17 Oct 2022 10:38:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77AB689160
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 10:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666003103; x=1697539103;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YSXLmAjctbJTjDrXP6fx084Pj/zs7XGxuJ++5lvHBx0=;
 b=gfrYh6Nb8nSfGHsiukATcBwScNsVGaTywcneKIYEBvyaN3vl7LNyLK7+
 Rx1X2dkUqVVG2D/g9GaXFyDfexHagPGKiWbPgelM07nDlLi5j/NAtSEJT
 rR1vPFtWgVdXQb9664igpB9hk/Jt0x2aOmjX/CovB/V23bI9jpKnOydNH
 MD4MdgaTZfpoNcA7vH5x7niibkC6NaIufL2hJbQeyheSEl/EmtF44v+y8
 fHUeyD8NgVGvytrurwAlqFsYAg2PnVrt7caxP9GxWaoBHUhzB1yBAYA+g
 J5l4xmZlEd0uqmvF/RPakauQVIZ9hMKDDQ9dFmV4Svs0VS97LQcrmsneM g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="307419405"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="307419405"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 03:38:09 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="623182188"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="623182188"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 03:38:06 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Oct 2022 12:37:56 +0200
Message-Id: <20221017103756.3925176-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: use intel_uncore_rmw when appropriate
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch replaces all occurences of the form
intel_uncore_write(reg, intel_uncore_read(reg) OP val)
with intel_uncore_rmw.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
Apparently I have missed this pattern during refactoring.

Regards
Andrzej
---
 drivers/gpu/drm/i915/gt/intel_rps.c |   4 +-
 drivers/gpu/drm/i915/intel_pm.c     | 190 ++++++++++------------------
 2 files changed, 68 insertions(+), 126 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index fc23c562d9b2a7..070005dd0da476 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -625,9 +625,7 @@ static void gen5_rps_disable(struct intel_rps *rps)
 	rgvswctl = intel_uncore_read16(uncore, MEMSWCTL);
 
 	/* Ack interrupts, disable EFC interrupt */
-	intel_uncore_write(uncore, MEMINTREN,
-			   intel_uncore_read(uncore, MEMINTREN) &
-			   ~MEMINT_EVAL_CHG_EN);
+	intel_uncore_rmw(uncore, MEMINTREN, MEMINT_EVAL_CHG_EN, 0);
 	intel_uncore_write(uncore, MEMINTRSTS, MEMINT_EVAL_CHG);
 
 	/* Go back to the starting frequency */
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 19d4a88184d7a1..4d264147ada94b 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -58,25 +58,20 @@ static void gen9_init_clock_gating(struct drm_i915_private *dev_priv)
 		 * Must match Sampler, Pixel Back End, and Media. See
 		 * WaCompressedResourceSamplerPbeMediaNewHashMode.
 		 */
-		intel_uncore_write(&dev_priv->uncore, CHICKEN_PAR1_1,
-			   intel_uncore_read(&dev_priv->uncore, CHICKEN_PAR1_1) |
-			   SKL_DE_COMPRESSED_HASH_MODE);
+		intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PAR1_1, 0, SKL_DE_COMPRESSED_HASH_MODE);
 	}
 
 	/* See Bspec note for PSR2_CTL bit 31, Wa#828:skl,bxt,kbl,cfl */
-	intel_uncore_write(&dev_priv->uncore, CHICKEN_PAR1_1,
-		   intel_uncore_read(&dev_priv->uncore, CHICKEN_PAR1_1) | SKL_EDP_PSR_FIX_RDWRAP);
+	intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PAR1_1, 0, SKL_EDP_PSR_FIX_RDWRAP);
 
 	/* WaEnableChickenDCPR:skl,bxt,kbl,glk,cfl */
-	intel_uncore_write(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1,
-		   intel_uncore_read(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1) | MASK_WAKEMEM);
+	intel_uncore_rmw(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1, 0, MASK_WAKEMEM);
 
 	/*
 	 * WaFbcWakeMemOn:skl,bxt,kbl,glk,cfl
 	 * Display WA #0859: skl,bxt,kbl,glk,cfl
 	 */
-	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |
-		   DISP_FBC_MEMORY_WAKE);
+	intel_uncore_rmw(&dev_priv->uncore, DISP_ARB_CTL, 0, DISP_FBC_MEMORY_WAKE);
 }
 
 static void bxt_init_clock_gating(struct drm_i915_private *dev_priv)
@@ -84,15 +79,13 @@ static void bxt_init_clock_gating(struct drm_i915_private *dev_priv)
 	gen9_init_clock_gating(dev_priv);
 
 	/* WaDisableSDEUnitClockGating:bxt */
-	intel_uncore_write(&dev_priv->uncore, GEN8_UCGCTL6, intel_uncore_read(&dev_priv->uncore, GEN8_UCGCTL6) |
-		   GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
+	intel_uncore_rmw(&dev_priv->uncore, GEN8_UCGCTL6, 0, GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
 
 	/*
 	 * FIXME:
 	 * GEN8_HDCUNIT_CLOCK_GATE_DISABLE_HDCREQ applies on 3x6 GT SKUs only.
 	 */
-	intel_uncore_write(&dev_priv->uncore, GEN8_UCGCTL6, intel_uncore_read(&dev_priv->uncore, GEN8_UCGCTL6) |
-		   GEN8_HDCUNIT_CLOCK_GATE_DISABLE_HDCREQ);
+	intel_uncore_rmw(&dev_priv->uncore, GEN8_UCGCTL6, 0, GEN8_HDCUNIT_CLOCK_GATE_DISABLE_HDCREQ);
 
 	/*
 	 * Wa: Backlight PWM may stop in the asserted state, causing backlight
@@ -113,16 +106,13 @@ static void bxt_init_clock_gating(struct drm_i915_private *dev_priv)
 	 * WaFbcTurnOffFbcWatermark:bxt
 	 * Display WA #0562: bxt
 	 */
-	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |
-		   DISP_FBC_WM_DIS);
+	intel_uncore_rmw(&dev_priv->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
 
 	/*
 	 * WaFbcHighMemBwCorruptionAvoidance:bxt
 	 * Display WA #0883: bxt
 	 */
-	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
-			   intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A)) |
-			   DPFC_DISABLE_DUMMY0);
+	intel_uncore_rmw(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A), 0, DPFC_DISABLE_DUMMY0);
 }
 
 static void glk_init_clock_gating(struct drm_i915_private *dev_priv)
@@ -4053,9 +4043,9 @@ void vlv_wm_sanitize(struct drm_i915_private *dev_priv)
  */
 static void ilk_init_lp_watermarks(struct drm_i915_private *dev_priv)
 {
-	intel_uncore_write(&dev_priv->uncore, WM3_LP_ILK, intel_uncore_read(&dev_priv->uncore, WM3_LP_ILK) & ~WM_LP_ENABLE);
-	intel_uncore_write(&dev_priv->uncore, WM2_LP_ILK, intel_uncore_read(&dev_priv->uncore, WM2_LP_ILK) & ~WM_LP_ENABLE);
-	intel_uncore_write(&dev_priv->uncore, WM1_LP_ILK, intel_uncore_read(&dev_priv->uncore, WM1_LP_ILK) & ~WM_LP_ENABLE);
+	intel_uncore_rmw(&dev_priv->uncore, WM3_LP_ILK, WM_LP_ENABLE, 0);
+	intel_uncore_rmw(&dev_priv->uncore, WM2_LP_ILK, WM_LP_ENABLE, 0);
+	intel_uncore_rmw(&dev_priv->uncore, WM1_LP_ILK, WM_LP_ENABLE, 0);
 
 	/*
 	 * Don't touch WM_LP_SPRITE_ENABLE here.
@@ -4109,9 +4099,7 @@ static void g4x_disable_trickle_feed(struct drm_i915_private *dev_priv)
 	enum pipe pipe;
 
 	for_each_pipe(dev_priv, pipe) {
-		intel_uncore_write(&dev_priv->uncore, DSPCNTR(pipe),
-			   intel_uncore_read(&dev_priv->uncore, DSPCNTR(pipe)) |
-			   DISP_TRICKLE_FEED_DISABLE);
+		intel_uncore_rmw(&dev_priv->uncore, DSPCNTR(pipe), 0, DISP_TRICKLE_FEED_DISABLE);
 
 		intel_uncore_rmw(&dev_priv->uncore, DSPSURF(pipe), 0, 0);
 		intel_uncore_posting_read(&dev_priv->uncore, DSPSURF(pipe));
@@ -4160,19 +4148,13 @@ static void ilk_init_clock_gating(struct drm_i915_private *dev_priv)
 	 */
 	if (IS_IRONLAKE_M(dev_priv)) {
 		/* WaFbcAsynchFlipDisableFbcQueue:ilk */
-		intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1,
-			   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1) |
-			   ILK_FBCQ_DIS);
-		intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2,
-			   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2) |
-			   ILK_DPARB_GATE);
+		intel_uncore_rmw(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1, 0, ILK_FBCQ_DIS);
+		intel_uncore_rmw(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2, 0, ILK_DPARB_GATE);
 	}
 
 	intel_uncore_write(&dev_priv->uncore, ILK_DSPCLK_GATE_D, dspclk_gate);
 
-	intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2,
-		   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2) |
-		   ILK_ELPIN_409_SELECT);
+	intel_uncore_rmw(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2, 0, ILK_ELPIN_409_SELECT);
 
 	g4x_disable_trickle_feed(dev_priv);
 
@@ -4192,8 +4174,7 @@ static void cpt_init_clock_gating(struct drm_i915_private *dev_priv)
 	intel_uncore_write(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D, PCH_DPLSUNIT_CLOCK_GATE_DISABLE |
 		   PCH_DPLUNIT_CLOCK_GATE_DISABLE |
 		   PCH_CPUNIT_CLOCK_GATE_DISABLE);
-	intel_uncore_write(&dev_priv->uncore, SOUTH_CHICKEN2, intel_uncore_read(&dev_priv->uncore, SOUTH_CHICKEN2) |
-		   DPLS_EDP_PPS_FIX_DIS);
+	intel_uncore_rmw(&dev_priv->uncore, SOUTH_CHICKEN2, 0, DPLS_EDP_PPS_FIX_DIS);
 	/* The below fixes the weird display corruption, a few pixels shifted
 	 * downward, on (only) LVDS of some HP laptops with IVY.
 	 */
@@ -4231,9 +4212,7 @@ static void gen6_init_clock_gating(struct drm_i915_private *dev_priv)
 
 	intel_uncore_write(&dev_priv->uncore, ILK_DSPCLK_GATE_D, dspclk_gate);
 
-	intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2,
-		   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2) |
-		   ILK_ELPIN_409_SELECT);
+	intel_uncore_rmw(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2, 0, ILK_ELPIN_409_SELECT);
 
 	intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL1,
 		   intel_uncore_read(&dev_priv->uncore, GEN6_UCGCTL1) |
@@ -4293,14 +4272,12 @@ static void lpt_init_clock_gating(struct drm_i915_private *dev_priv)
 	 * disabled when not needed anymore in order to save power.
 	 */
 	if (HAS_PCH_LPT_LP(dev_priv))
-		intel_uncore_write(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D,
-			   intel_uncore_read(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D) |
-			   PCH_LP_PARTITION_LEVEL_DISABLE);
+		intel_uncore_rmw(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D, 0,
+				 PCH_LP_PARTITION_LEVEL_DISABLE);
 
 	/* WADPOClockGatingDisable:hsw */
-	intel_uncore_write(&dev_priv->uncore, TRANS_CHICKEN1(PIPE_A),
-		   intel_uncore_read(&dev_priv->uncore, TRANS_CHICKEN1(PIPE_A)) |
-		   TRANS_CHICKEN1_DP0UNIT_GC_DISABLE);
+	intel_uncore_rmw(&dev_priv->uncore, TRANS_CHICKEN1(PIPE_A), 0,
+			 TRANS_CHICKEN1_DP0UNIT_GC_DISABLE);
 }
 
 static void lpt_suspend_hw(struct drm_i915_private *dev_priv)
@@ -4359,8 +4336,7 @@ static void gen12lp_init_clock_gating(struct drm_i915_private *dev_priv)
 
 	/* Wa_1409825376:tgl (pre-prod)*/
 	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0))
-		intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, intel_uncore_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_3) |
-			   TGL_VRH_GATING_DIS);
+		intel_uncore_rmw(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, 0, TGL_VRH_GATING_DIS);
 
 	/* Wa_14013723622:tgl,rkl,dg1,adl-s */
 	if (DISPLAY_VER(dev_priv) == 12)
@@ -4385,8 +4361,7 @@ static void dg1_init_clock_gating(struct drm_i915_private *dev_priv)
 
 	/* Wa_1409836686:dg1[a0] */
 	if (IS_DG1_GRAPHICS_STEP(dev_priv, STEP_A0, STEP_B0))
-		intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, intel_uncore_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_3) |
-			   DPT_GATING_DIS);
+		intel_uncore_rmw(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, 0, DPT_GATING_DIS);
 }
 
 static void xehpsdv_init_clock_gating(struct drm_i915_private *dev_priv)
@@ -4428,8 +4403,7 @@ static void cnp_init_clock_gating(struct drm_i915_private *dev_priv)
 		return;
 
 	/* Display WA #1181 WaSouthDisplayDisablePWMCGEGating: cnp */
-	intel_uncore_write(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D, intel_uncore_read(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D) |
-		   CNP_PWM_CGE_GATING_DISABLE);
+	intel_uncore_rmw(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D, 0, CNP_PWM_CGE_GATING_DISABLE);
 }
 
 static void cfl_init_clock_gating(struct drm_i915_private *dev_priv)
@@ -4438,23 +4412,20 @@ static void cfl_init_clock_gating(struct drm_i915_private *dev_priv)
 	gen9_init_clock_gating(dev_priv);
 
 	/* WAC6entrylatency:cfl */
-	intel_uncore_write(&dev_priv->uncore, FBC_LLC_READ_CTRL, intel_uncore_read(&dev_priv->uncore, FBC_LLC_READ_CTRL) |
-		   FBC_LLC_FULLY_OPEN);
+	intel_uncore_rmw(&dev_priv->uncore, FBC_LLC_READ_CTRL, 0, FBC_LLC_FULLY_OPEN);
 
 	/*
 	 * WaFbcTurnOffFbcWatermark:cfl
 	 * Display WA #0562: cfl
 	 */
-	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |
-		   DISP_FBC_WM_DIS);
+	intel_uncore_rmw(&dev_priv->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
 
 	/*
 	 * WaFbcNukeOnHostModify:cfl
 	 * Display WA #0873: cfl
 	 */
-	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
-			   intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A)) |
-			   DPFC_NUKE_ON_ANY_MODIFICATION);
+	intel_uncore_rmw(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A), 0,
+			 DPFC_NUKE_ON_ANY_MODIFICATION);
 }
 
 static void kbl_init_clock_gating(struct drm_i915_private *dev_priv)
@@ -4462,33 +4433,30 @@ static void kbl_init_clock_gating(struct drm_i915_private *dev_priv)
 	gen9_init_clock_gating(dev_priv);
 
 	/* WAC6entrylatency:kbl */
-	intel_uncore_write(&dev_priv->uncore, FBC_LLC_READ_CTRL, intel_uncore_read(&dev_priv->uncore, FBC_LLC_READ_CTRL) |
-		   FBC_LLC_FULLY_OPEN);
+	intel_uncore_rmw(&dev_priv->uncore, FBC_LLC_READ_CTRL, 0, FBC_LLC_FULLY_OPEN);
 
 	/* WaDisableSDEUnitClockGating:kbl */
 	if (IS_KBL_GRAPHICS_STEP(dev_priv, 0, STEP_C0))
-		intel_uncore_write(&dev_priv->uncore, GEN8_UCGCTL6, intel_uncore_read(&dev_priv->uncore, GEN8_UCGCTL6) |
-			   GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
+		intel_uncore_rmw(&dev_priv->uncore, GEN8_UCGCTL6, 0,
+				 GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
 
 	/* WaDisableGamClockGating:kbl */
 	if (IS_KBL_GRAPHICS_STEP(dev_priv, 0, STEP_C0))
-		intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL1, intel_uncore_read(&dev_priv->uncore, GEN6_UCGCTL1) |
-			   GEN6_GAMUNIT_CLOCK_GATE_DISABLE);
+		intel_uncore_rmw(&dev_priv->uncore, GEN6_UCGCTL1, 0,
+				 GEN6_GAMUNIT_CLOCK_GATE_DISABLE);
 
 	/*
 	 * WaFbcTurnOffFbcWatermark:kbl
 	 * Display WA #0562: kbl
 	 */
-	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |
-		   DISP_FBC_WM_DIS);
+	intel_uncore_rmw(&dev_priv->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
 
 	/*
 	 * WaFbcNukeOnHostModify:kbl
 	 * Display WA #0873: kbl
 	 */
-	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
-			   intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A)) |
-			   DPFC_NUKE_ON_ANY_MODIFICATION);
+	intel_uncore_rmw(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A), 0,
+			 DPFC_NUKE_ON_ANY_MODIFICATION);
 }
 
 static void skl_init_clock_gating(struct drm_i915_private *dev_priv)
@@ -4496,35 +4464,29 @@ static void skl_init_clock_gating(struct drm_i915_private *dev_priv)
 	gen9_init_clock_gating(dev_priv);
 
 	/* WaDisableDopClockGating:skl */
-	intel_uncore_write(&dev_priv->uncore, GEN7_MISCCPCTL, intel_uncore_read(&dev_priv->uncore, GEN7_MISCCPCTL) &
-		   ~GEN7_DOP_CLOCK_GATE_ENABLE);
+	intel_uncore_rmw(&dev_priv->uncore, GEN7_MISCCPCTL, GEN7_DOP_CLOCK_GATE_ENABLE, 0);
 
 	/* WAC6entrylatency:skl */
-	intel_uncore_write(&dev_priv->uncore, FBC_LLC_READ_CTRL, intel_uncore_read(&dev_priv->uncore, FBC_LLC_READ_CTRL) |
-		   FBC_LLC_FULLY_OPEN);
+	intel_uncore_rmw(&dev_priv->uncore, FBC_LLC_READ_CTRL, 0, FBC_LLC_FULLY_OPEN);
 
 	/*
 	 * WaFbcTurnOffFbcWatermark:skl
 	 * Display WA #0562: skl
 	 */
-	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |
-		   DISP_FBC_WM_DIS);
+	intel_uncore_rmw(&dev_priv->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
 
 	/*
 	 * WaFbcNukeOnHostModify:skl
 	 * Display WA #0873: skl
 	 */
-	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
-			   intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A)) |
-			   DPFC_NUKE_ON_ANY_MODIFICATION);
+	intel_uncore_rmw(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A), 0,
+			 DPFC_NUKE_ON_ANY_MODIFICATION);
 
 	/*
 	 * WaFbcHighMemBwCorruptionAvoidance:skl
 	 * Display WA #0883: skl
 	 */
-	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
-			   intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A)) |
-			   DPFC_DISABLE_DUMMY0);
+	intel_uncore_rmw(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A), 0, DPFC_DISABLE_DUMMY0);
 }
 
 static void bdw_init_clock_gating(struct drm_i915_private *dev_priv)
@@ -4532,43 +4494,37 @@ static void bdw_init_clock_gating(struct drm_i915_private *dev_priv)
 	enum pipe pipe;
 
 	/* WaFbcAsynchFlipDisableFbcQueue:hsw,bdw */
-	intel_uncore_write(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A),
-		   intel_uncore_read(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A)) |
-		   HSW_FBCQ_DIS);
+	intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A), 0, HSW_FBCQ_DIS);
 
 	/* WaSwitchSolVfFArbitrationPriority:bdw */
-	intel_uncore_write(&dev_priv->uncore, GAM_ECOCHK, intel_uncore_read(&dev_priv->uncore, GAM_ECOCHK) | HSW_ECOCHK_ARB_PRIO_SOL);
+	intel_uncore_rmw(&dev_priv->uncore, GAM_ECOCHK, 0, HSW_ECOCHK_ARB_PRIO_SOL);
 
 	/* WaPsrDPAMaskVBlankInSRD:bdw */
-	intel_uncore_write(&dev_priv->uncore, CHICKEN_PAR1_1,
-		   intel_uncore_read(&dev_priv->uncore, CHICKEN_PAR1_1) | DPA_MASK_VBLANK_SRD);
+	intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PAR1_1, 0, DPA_MASK_VBLANK_SRD);
 
 	for_each_pipe(dev_priv, pipe) {
 		/* WaPsrDPRSUnmaskVBlankInSRD:bdw */
-		intel_uncore_write(&dev_priv->uncore, CHICKEN_PIPESL_1(pipe),
-			   intel_uncore_read(&dev_priv->uncore, CHICKEN_PIPESL_1(pipe)) |
-			   BDW_DPRS_MASK_VBLANK_SRD);
+		intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PIPESL_1(pipe), 0,
+				 BDW_DPRS_MASK_VBLANK_SRD);
 	}
 
 	/* WaVSRefCountFullforceMissDisable:bdw */
 	/* WaDSRefCountFullforceMissDisable:bdw */
-	intel_uncore_write(&dev_priv->uncore, GEN7_FF_THREAD_MODE,
-		   intel_uncore_read(&dev_priv->uncore, GEN7_FF_THREAD_MODE) &
-		   ~(GEN8_FF_DS_REF_CNT_FFME | GEN7_FF_VS_REF_CNT_FFME));
+	intel_uncore_rmw(&dev_priv->uncore, GEN7_FF_THREAD_MODE,
+			 (GEN8_FF_DS_REF_CNT_FFME | GEN7_FF_VS_REF_CNT_FFME), 0);
 
 	intel_uncore_write(&dev_priv->uncore, RING_PSMI_CTL(RENDER_RING_BASE),
 		   _MASKED_BIT_ENABLE(GEN8_RC_SEMA_IDLE_MSG_DISABLE));
 
 	/* WaDisableSDEUnitClockGating:bdw */
-	intel_uncore_write(&dev_priv->uncore, GEN8_UCGCTL6, intel_uncore_read(&dev_priv->uncore, GEN8_UCGCTL6) |
-		   GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
+	intel_uncore_rmw(&dev_priv->uncore, GEN8_UCGCTL6, 0, GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
 
 	/* WaProgramL3SqcReg1Default:bdw */
 	gen8_set_l3sqc_credits(dev_priv, 30, 2);
 
 	/* WaKVMNotificationOnConfigChange:bdw */
-	intel_uncore_write(&dev_priv->uncore, CHICKEN_PAR2_1, intel_uncore_read(&dev_priv->uncore, CHICKEN_PAR2_1)
-		   | KVM_CONFIG_CHANGE_NOTIFICATION_SELECT);
+	intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PAR2_1, 0,
+			 KVM_CONFIG_CHANGE_NOTIFICATION_SELECT);
 
 	lpt_init_clock_gating(dev_priv);
 
@@ -4577,24 +4533,20 @@ static void bdw_init_clock_gating(struct drm_i915_private *dev_priv)
 	 * Also see the CHICKEN2 write in bdw_init_workarounds() to disable DOP
 	 * clock gating.
 	 */
-	intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL1,
-		   intel_uncore_read(&dev_priv->uncore, GEN6_UCGCTL1) | GEN6_EU_TCUNIT_CLOCK_GATE_DISABLE);
+	intel_uncore_rmw(&dev_priv->uncore, GEN6_UCGCTL1, 0, GEN6_EU_TCUNIT_CLOCK_GATE_DISABLE);
 }
 
 static void hsw_init_clock_gating(struct drm_i915_private *dev_priv)
 {
 	/* WaFbcAsynchFlipDisableFbcQueue:hsw,bdw */
-	intel_uncore_write(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A),
-		   intel_uncore_read(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A)) |
-		   HSW_FBCQ_DIS);
+	intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A), 0, HSW_FBCQ_DIS);
 
 	/* This is required by WaCatErrorRejectionIssue:hsw */
-	intel_uncore_write(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
-		   intel_uncore_read(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG) |
-		   GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);
+	intel_uncore_rmw(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG, 0,
+			 GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);
 
 	/* WaSwitchSolVfFArbitrationPriority:hsw */
-	intel_uncore_write(&dev_priv->uncore, GAM_ECOCHK, intel_uncore_read(&dev_priv->uncore, GAM_ECOCHK) | HSW_ECOCHK_ARB_PRIO_SOL);
+	intel_uncore_rmw(&dev_priv->uncore, GAM_ECOCHK, 0, HSW_ECOCHK_ARB_PRIO_SOL);
 
 	lpt_init_clock_gating(dev_priv);
 }
@@ -4604,9 +4556,7 @@ static void ivb_init_clock_gating(struct drm_i915_private *dev_priv)
 	intel_uncore_write(&dev_priv->uncore, ILK_DSPCLK_GATE_D, ILK_VRHUNIT_CLOCK_GATE_DISABLE);
 
 	/* WaFbcAsynchFlipDisableFbcQueue:ivb */
-	intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1,
-		   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1) |
-		   ILK_FBCQ_DIS);
+	intel_uncore_rmw(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1, 0, ILK_FBCQ_DIS);
 
 	/* WaDisableBackToBackFlipFix:ivb */
 	intel_uncore_write(&dev_priv->uncore, IVB_CHICKEN3,
@@ -4632,9 +4582,8 @@ static void ivb_init_clock_gating(struct drm_i915_private *dev_priv)
 		   GEN6_RCZUNIT_CLOCK_GATE_DISABLE);
 
 	/* This is required by WaCatErrorRejectionIssue:ivb */
-	intel_uncore_write(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
-			intel_uncore_read(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG) |
-			GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);
+	intel_uncore_rmw(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG, 0,
+			 GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);
 
 	g4x_disable_trickle_feed(dev_priv);
 
@@ -4659,9 +4608,8 @@ static void vlv_init_clock_gating(struct drm_i915_private *dev_priv)
 		   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));
 
 	/* This is required by WaCatErrorRejectionIssue:vlv */
-	intel_uncore_write(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
-		   intel_uncore_read(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG) |
-		   GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);
+	intel_uncore_rmw(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG, 0,
+			 GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);
 
 	/*
 	 * According to the spec, bit 13 (RCZUNIT) must be set on IVB.
@@ -4673,8 +4621,7 @@ static void vlv_init_clock_gating(struct drm_i915_private *dev_priv)
 	/* WaDisableL3Bank2xClockGate:vlv
 	 * Disabling L3 clock gating- MMIO 940c[25] = 1
 	 * Set bit 25, to disable L3_BANK_2x_CLK_GATING */
-	intel_uncore_write(&dev_priv->uncore, GEN7_UCGCTL4,
-		   intel_uncore_read(&dev_priv->uncore, GEN7_UCGCTL4) | GEN7_L3BANK2X_CLOCK_GATE_DISABLE);
+	intel_uncore_rmw(&dev_priv->uncore, GEN7_UCGCTL4, 0, GEN7_L3BANK2X_CLOCK_GATE_DISABLE);
 
 	/*
 	 * WaDisableVLVClockGating_VBIIssue:vlv
@@ -4688,21 +4635,18 @@ static void chv_init_clock_gating(struct drm_i915_private *dev_priv)
 {
 	/* WaVSRefCountFullforceMissDisable:chv */
 	/* WaDSRefCountFullforceMissDisable:chv */
-	intel_uncore_write(&dev_priv->uncore, GEN7_FF_THREAD_MODE,
-		   intel_uncore_read(&dev_priv->uncore, GEN7_FF_THREAD_MODE) &
-		   ~(GEN8_FF_DS_REF_CNT_FFME | GEN7_FF_VS_REF_CNT_FFME));
+	intel_uncore_rmw(&dev_priv->uncore, GEN7_FF_THREAD_MODE,
+			 (GEN8_FF_DS_REF_CNT_FFME | GEN7_FF_VS_REF_CNT_FFME), 0);
 
 	/* WaDisableSemaphoreAndSyncFlipWait:chv */
 	intel_uncore_write(&dev_priv->uncore, RING_PSMI_CTL(RENDER_RING_BASE),
 		   _MASKED_BIT_ENABLE(GEN8_RC_SEMA_IDLE_MSG_DISABLE));
 
 	/* WaDisableCSUnitClockGating:chv */
-	intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL1, intel_uncore_read(&dev_priv->uncore, GEN6_UCGCTL1) |
-		   GEN6_CSUNIT_CLOCK_GATE_DISABLE);
+	intel_uncore_rmw(&dev_priv->uncore, GEN6_UCGCTL1, 0, GEN6_CSUNIT_CLOCK_GATE_DISABLE);
 
 	/* WaDisableSDEUnitClockGating:chv */
-	intel_uncore_write(&dev_priv->uncore, GEN8_UCGCTL6, intel_uncore_read(&dev_priv->uncore, GEN8_UCGCTL6) |
-		   GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
+	intel_uncore_rmw(&dev_priv->uncore, GEN8_UCGCTL6, 0, GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
 
 	/*
 	 * WaProgramL3SqcReg1Default:chv
-- 
2.34.1

