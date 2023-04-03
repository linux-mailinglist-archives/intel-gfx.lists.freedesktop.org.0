Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ABDE6D444A
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 14:24:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DB6410E16B;
	Mon,  3 Apr 2023 12:24:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14E0810E16B
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Apr 2023 12:24:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680524680; x=1712060680;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZkJCYZ8EUugQnLVAZieAo2aW06cm8TFGeZQfQUvQjhA=;
 b=BII2mCsScUJ1IEKe+SVtL+0/QHhTSRcH89n0UBSaM6KPMCQV9Q8R618a
 9S308CFgNj9t/QK2v95ZDM++vqPEnoILVljMda5/2v+2PChSwZOlX6aZW
 kJ0T5xCN+ssqlYNfkx2HdfINeLIfqSxQcErFjz0OzH9TKWipRDoS8HcRM
 zGPg3wAWADUpWHoPB3XZhvjUWOlWvhJaog7L3WkL02JejBwX4kXt06QJA
 kPfVSq+YJ0kvZkIWdLWS8/S1qyy9Fxjfsmjlc1BeFI/ODZByj/zENyZum
 6hd1+FEtfOBVNr23WQhgCyH87GF+E6lW1oSmvj90Szp8coUgvy6wopu+S A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="321545745"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="321545745"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 05:24:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="797023589"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="797023589"
Received: from pstratma-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.54.30])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 05:24:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Apr 2023 15:24:28 +0300
Message-Id: <20230403122428.3526263-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230403122428.3526263-1-jani.nikula@intel.com>
References: <20230403122428.3526263-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/clock: mass rename dev_priv to i915
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
Cc: jani.nikula@intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Follow the contemporary naming style. Include some indentation fixes
while at it on the affected statements.

One function needs to keep using dev_priv due to implicit dev_priv usage
in a macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_clock_gating.c | 589 +++++++++++-----------
 1 file changed, 296 insertions(+), 293 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index 8cfc19b48760..2c5302bcba19 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -44,9 +44,9 @@ struct drm_i915_clock_gating_funcs {
 	void (*init_clock_gating)(struct drm_i915_private *i915);
 };
 
-static void gen9_init_clock_gating(struct drm_i915_private *dev_priv)
+static void gen9_init_clock_gating(struct drm_i915_private *i915)
 {
-	if (HAS_LLC(dev_priv)) {
+	if (HAS_LLC(i915)) {
 		/*
 		 * WaCompressedResourceDisplayNewHashMode:skl,kbl
 		 * Display WA #0390: skl,kbl
@@ -54,41 +54,42 @@ static void gen9_init_clock_gating(struct drm_i915_private *dev_priv)
 		 * Must match Sampler, Pixel Back End, and Media. See
 		 * WaCompressedResourceSamplerPbeMediaNewHashMode.
 		 */
-		intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PAR1_1, 0, SKL_DE_COMPRESSED_HASH_MODE);
+		intel_uncore_rmw(&i915->uncore, CHICKEN_PAR1_1, 0, SKL_DE_COMPRESSED_HASH_MODE);
 	}
 
 	/* See Bspec note for PSR2_CTL bit 31, Wa#828:skl,bxt,kbl,cfl */
-	intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PAR1_1, 0, SKL_EDP_PSR_FIX_RDWRAP);
+	intel_uncore_rmw(&i915->uncore, CHICKEN_PAR1_1, 0, SKL_EDP_PSR_FIX_RDWRAP);
 
 	/* WaEnableChickenDCPR:skl,bxt,kbl,glk,cfl */
-	intel_uncore_rmw(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1, 0, MASK_WAKEMEM);
+	intel_uncore_rmw(&i915->uncore, GEN8_CHICKEN_DCPR_1, 0, MASK_WAKEMEM);
 
 	/*
 	 * WaFbcWakeMemOn:skl,bxt,kbl,glk,cfl
 	 * Display WA #0859: skl,bxt,kbl,glk,cfl
 	 */
-	intel_uncore_rmw(&dev_priv->uncore, DISP_ARB_CTL, 0, DISP_FBC_MEMORY_WAKE);
+	intel_uncore_rmw(&i915->uncore, DISP_ARB_CTL, 0, DISP_FBC_MEMORY_WAKE);
 }
 
-static void bxt_init_clock_gating(struct drm_i915_private *dev_priv)
+static void bxt_init_clock_gating(struct drm_i915_private *i915)
 {
-	gen9_init_clock_gating(dev_priv);
+	gen9_init_clock_gating(i915);
 
 	/* WaDisableSDEUnitClockGating:bxt */
-	intel_uncore_rmw(&dev_priv->uncore, GEN8_UCGCTL6, 0, GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
+	intel_uncore_rmw(&i915->uncore, GEN8_UCGCTL6, 0, GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
 
 	/*
 	 * FIXME:
 	 * GEN8_HDCUNIT_CLOCK_GATE_DISABLE_HDCREQ applies on 3x6 GT SKUs only.
 	 */
-	intel_uncore_rmw(&dev_priv->uncore, GEN8_UCGCTL6, 0, GEN8_HDCUNIT_CLOCK_GATE_DISABLE_HDCREQ);
+	intel_uncore_rmw(&i915->uncore, GEN8_UCGCTL6, 0, GEN8_HDCUNIT_CLOCK_GATE_DISABLE_HDCREQ);
 
 	/*
 	 * Wa: Backlight PWM may stop in the asserted state, causing backlight
 	 * to stay fully on.
 	 */
-	intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_0, intel_uncore_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_0) |
-		   PWM1_GATING_DIS | PWM2_GATING_DIS);
+	intel_uncore_write(&i915->uncore, GEN9_CLKGATE_DIS_0,
+			   intel_uncore_read(&i915->uncore, GEN9_CLKGATE_DIS_0) |
+			   PWM1_GATING_DIS | PWM2_GATING_DIS);
 
 	/*
 	 * Lower the display internal timeout.
@@ -96,42 +97,43 @@ static void bxt_init_clock_gating(struct drm_i915_private *dev_priv)
 	 * is off and a MMIO access is attempted by any privilege
 	 * application, using batch buffers or any other means.
 	 */
-	intel_uncore_write(&dev_priv->uncore, RM_TIMEOUT, MMIO_TIMEOUT_US(950));
+	intel_uncore_write(&i915->uncore, RM_TIMEOUT, MMIO_TIMEOUT_US(950));
 
 	/*
 	 * WaFbcTurnOffFbcWatermark:bxt
 	 * Display WA #0562: bxt
 	 */
-	intel_uncore_rmw(&dev_priv->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
+	intel_uncore_rmw(&i915->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
 
 	/*
 	 * WaFbcHighMemBwCorruptionAvoidance:bxt
 	 * Display WA #0883: bxt
 	 */
-	intel_uncore_rmw(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A), 0, DPFC_DISABLE_DUMMY0);
+	intel_uncore_rmw(&i915->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A), 0, DPFC_DISABLE_DUMMY0);
 }
 
-static void glk_init_clock_gating(struct drm_i915_private *dev_priv)
+static void glk_init_clock_gating(struct drm_i915_private *i915)
 {
-	gen9_init_clock_gating(dev_priv);
+	gen9_init_clock_gating(i915);
 
 	/*
 	 * WaDisablePWMClockGating:glk
 	 * Backlight PWM may stop in the asserted state, causing backlight
 	 * to stay fully on.
 	 */
-	intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_0, intel_uncore_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_0) |
-		   PWM1_GATING_DIS | PWM2_GATING_DIS);
+	intel_uncore_write(&i915->uncore, GEN9_CLKGATE_DIS_0,
+			   intel_uncore_read(&i915->uncore, GEN9_CLKGATE_DIS_0) |
+			   PWM1_GATING_DIS | PWM2_GATING_DIS);
 }
 
-static void ibx_init_clock_gating(struct drm_i915_private *dev_priv)
+static void ibx_init_clock_gating(struct drm_i915_private *i915)
 {
 	/*
 	 * On Ibex Peak and Cougar Point, we need to disable clock
 	 * gating for the panel power sequencer or it will fail to
 	 * start up when no ports are active.
 	 */
-	intel_uncore_write(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D, PCH_DPLSUNIT_CLOCK_GATE_DISABLE);
+	intel_uncore_write(&i915->uncore, SOUTH_DSPCLK_GATE_D, PCH_DPLSUNIT_CLOCK_GATE_DISABLE);
 }
 
 static void g4x_disable_trickle_feed(struct drm_i915_private *dev_priv)
@@ -146,7 +148,7 @@ static void g4x_disable_trickle_feed(struct drm_i915_private *dev_priv)
 	}
 }
 
-static void ilk_init_clock_gating(struct drm_i915_private *dev_priv)
+static void ilk_init_clock_gating(struct drm_i915_private *i915)
 {
 	u32 dspclk_gate = ILK_VRHUNIT_CLOCK_GATE_DISABLE;
 
@@ -158,11 +160,11 @@ static void ilk_init_clock_gating(struct drm_i915_private *dev_priv)
 		   ILK_DPFCUNIT_CLOCK_GATE_DISABLE |
 		   ILK_DPFDUNIT_CLOCK_GATE_ENABLE;
 
-	intel_uncore_write(&dev_priv->uncore, PCH_3DCGDIS0,
-		   MARIUNIT_CLOCK_GATE_DISABLE |
-		   SVSMUNIT_CLOCK_GATE_DISABLE);
-	intel_uncore_write(&dev_priv->uncore, PCH_3DCGDIS1,
-		   VFMUNIT_CLOCK_GATE_DISABLE);
+	intel_uncore_write(&i915->uncore, PCH_3DCGDIS0,
+			   MARIUNIT_CLOCK_GATE_DISABLE |
+			   SVSMUNIT_CLOCK_GATE_DISABLE);
+	intel_uncore_write(&i915->uncore, PCH_3DCGDIS1,
+			   VFMUNIT_CLOCK_GATE_DISABLE);
 
 	/*
 	 * According to the spec the following bits should be set in
@@ -171,13 +173,13 @@ static void ilk_init_clock_gating(struct drm_i915_private *dev_priv)
 	 * The bit 5 of 0x42020
 	 * The bit 15 of 0x45000
 	 */
-	intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2,
-		   (intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2) |
-		    ILK_DPARB_GATE | ILK_VSDPFD_FULL));
+	intel_uncore_write(&i915->uncore, ILK_DISPLAY_CHICKEN2,
+			   (intel_uncore_read(&i915->uncore, ILK_DISPLAY_CHICKEN2) |
+			    ILK_DPARB_GATE | ILK_VSDPFD_FULL));
 	dspclk_gate |= ILK_DPARBUNIT_CLOCK_GATE_ENABLE;
-	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL,
-		   (intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) |
-		    DISP_FBC_WM_DIS));
+	intel_uncore_write(&i915->uncore, DISP_ARB_CTL,
+			   (intel_uncore_read(&i915->uncore, DISP_ARB_CTL) |
+			    DISP_FBC_WM_DIS));
 
 	/*
 	 * Based on the document from hardware guys the following bits
@@ -186,22 +188,22 @@ static void ilk_init_clock_gating(struct drm_i915_private *dev_priv)
 	 * The bit 22 of 0x42004
 	 * The bit 7,8,9 of 0x42020.
 	 */
-	if (IS_IRONLAKE_M(dev_priv)) {
+	if (IS_IRONLAKE_M(i915)) {
 		/* WaFbcAsynchFlipDisableFbcQueue:ilk */
-		intel_uncore_rmw(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1, 0, ILK_FBCQ_DIS);
-		intel_uncore_rmw(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2, 0, ILK_DPARB_GATE);
+		intel_uncore_rmw(&i915->uncore, ILK_DISPLAY_CHICKEN1, 0, ILK_FBCQ_DIS);
+		intel_uncore_rmw(&i915->uncore, ILK_DISPLAY_CHICKEN2, 0, ILK_DPARB_GATE);
 	}
 
-	intel_uncore_write(&dev_priv->uncore, ILK_DSPCLK_GATE_D, dspclk_gate);
+	intel_uncore_write(&i915->uncore, ILK_DSPCLK_GATE_D, dspclk_gate);
 
-	intel_uncore_rmw(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2, 0, ILK_ELPIN_409_SELECT);
+	intel_uncore_rmw(&i915->uncore, ILK_DISPLAY_CHICKEN2, 0, ILK_ELPIN_409_SELECT);
 
-	g4x_disable_trickle_feed(dev_priv);
+	g4x_disable_trickle_feed(i915);
 
-	ibx_init_clock_gating(dev_priv);
+	ibx_init_clock_gating(i915);
 }
 
-static void cpt_init_clock_gating(struct drm_i915_private *dev_priv)
+static void cpt_init_clock_gating(struct drm_i915_private *i915)
 {
 	enum pipe pipe;
 	u32 val;
@@ -211,53 +213,53 @@ static void cpt_init_clock_gating(struct drm_i915_private *dev_priv)
 	 * gating for the panel power sequencer or it will fail to
 	 * start up when no ports are active.
 	 */
-	intel_uncore_write(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D, PCH_DPLSUNIT_CLOCK_GATE_DISABLE |
-		   PCH_DPLUNIT_CLOCK_GATE_DISABLE |
-		   PCH_CPUNIT_CLOCK_GATE_DISABLE);
-	intel_uncore_rmw(&dev_priv->uncore, SOUTH_CHICKEN2, 0, DPLS_EDP_PPS_FIX_DIS);
+	intel_uncore_write(&i915->uncore, SOUTH_DSPCLK_GATE_D, PCH_DPLSUNIT_CLOCK_GATE_DISABLE |
+			   PCH_DPLUNIT_CLOCK_GATE_DISABLE |
+			   PCH_CPUNIT_CLOCK_GATE_DISABLE);
+	intel_uncore_rmw(&i915->uncore, SOUTH_CHICKEN2, 0, DPLS_EDP_PPS_FIX_DIS);
 	/* The below fixes the weird display corruption, a few pixels shifted
 	 * downward, on (only) LVDS of some HP laptops with IVY.
 	 */
-	for_each_pipe(dev_priv, pipe) {
-		val = intel_uncore_read(&dev_priv->uncore, TRANS_CHICKEN2(pipe));
+	for_each_pipe(i915, pipe) {
+		val = intel_uncore_read(&i915->uncore, TRANS_CHICKEN2(pipe));
 		val |= TRANS_CHICKEN2_TIMING_OVERRIDE;
 		val &= ~TRANS_CHICKEN2_FDI_POLARITY_REVERSED;
-		if (dev_priv->display.vbt.fdi_rx_polarity_inverted)
+		if (i915->display.vbt.fdi_rx_polarity_inverted)
 			val |= TRANS_CHICKEN2_FDI_POLARITY_REVERSED;
 		val &= ~TRANS_CHICKEN2_DISABLE_DEEP_COLOR_COUNTER;
 		val &= ~TRANS_CHICKEN2_DISABLE_DEEP_COLOR_MODESWITCH;
-		intel_uncore_write(&dev_priv->uncore, TRANS_CHICKEN2(pipe), val);
+		intel_uncore_write(&i915->uncore, TRANS_CHICKEN2(pipe), val);
 	}
 	/* WADP0ClockGatingDisable */
-	for_each_pipe(dev_priv, pipe) {
-		intel_uncore_write(&dev_priv->uncore, TRANS_CHICKEN1(pipe),
-			   TRANS_CHICKEN1_DP0UNIT_GC_DISABLE);
+	for_each_pipe(i915, pipe) {
+		intel_uncore_write(&i915->uncore, TRANS_CHICKEN1(pipe),
+				   TRANS_CHICKEN1_DP0UNIT_GC_DISABLE);
 	}
 }
 
-static void gen6_check_mch_setup(struct drm_i915_private *dev_priv)
+static void gen6_check_mch_setup(struct drm_i915_private *i915)
 {
 	u32 tmp;
 
-	tmp = intel_uncore_read(&dev_priv->uncore, MCH_SSKPD);
+	tmp = intel_uncore_read(&i915->uncore, MCH_SSKPD);
 	if (REG_FIELD_GET(SSKPD_WM0_MASK_SNB, tmp) != 12)
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "Wrong MCH_SSKPD value: 0x%08x This can cause underruns.\n",
 			    tmp);
 }
 
-static void gen6_init_clock_gating(struct drm_i915_private *dev_priv)
+static void gen6_init_clock_gating(struct drm_i915_private *i915)
 {
 	u32 dspclk_gate = ILK_VRHUNIT_CLOCK_GATE_DISABLE;
 
-	intel_uncore_write(&dev_priv->uncore, ILK_DSPCLK_GATE_D, dspclk_gate);
+	intel_uncore_write(&i915->uncore, ILK_DSPCLK_GATE_D, dspclk_gate);
 
-	intel_uncore_rmw(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2, 0, ILK_ELPIN_409_SELECT);
+	intel_uncore_rmw(&i915->uncore, ILK_DISPLAY_CHICKEN2, 0, ILK_ELPIN_409_SELECT);
 
-	intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL1,
-		   intel_uncore_read(&dev_priv->uncore, GEN6_UCGCTL1) |
-		   GEN6_BLBUNIT_CLOCK_GATE_DISABLE |
-		   GEN6_CSUNIT_CLOCK_GATE_DISABLE);
+	intel_uncore_write(&i915->uncore, GEN6_UCGCTL1,
+			   intel_uncore_read(&i915->uncore, GEN6_UCGCTL1) |
+			   GEN6_BLBUNIT_CLOCK_GATE_DISABLE |
+			   GEN6_CSUNIT_CLOCK_GATE_DISABLE);
 
 	/* According to the BSpec vol1g, bit 12 (RCPBUNIT) clock
 	 * gating disable must be set.  Failure to set it results in
@@ -272,9 +274,9 @@ static void gen6_init_clock_gating(struct drm_i915_private *dev_priv)
 	 * WaDisableRCCUnitClockGating:snb
 	 * WaDisableRCPBUnitClockGating:snb
 	 */
-	intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL2,
-		   GEN6_RCPBUNIT_CLOCK_GATE_DISABLE |
-		   GEN6_RCCUNIT_CLOCK_GATE_DISABLE);
+	intel_uncore_write(&i915->uncore, GEN6_UCGCTL2,
+			   GEN6_RCPBUNIT_CLOCK_GATE_DISABLE |
+			   GEN6_RCCUNIT_CLOCK_GATE_DISABLE);
 
 	/*
 	 * According to the spec the following bits should be
@@ -287,40 +289,40 @@ static void gen6_init_clock_gating(struct drm_i915_private *dev_priv)
 	 *
 	 * WaFbcAsynchFlipDisableFbcQueue:snb
 	 */
-	intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1,
-		   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1) |
-		   ILK_FBCQ_DIS | ILK_PABSTRETCH_DIS);
-	intel_uncore_write(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2,
-		   intel_uncore_read(&dev_priv->uncore, ILK_DISPLAY_CHICKEN2) |
-		   ILK_DPARB_GATE | ILK_VSDPFD_FULL);
-	intel_uncore_write(&dev_priv->uncore, ILK_DSPCLK_GATE_D,
-		   intel_uncore_read(&dev_priv->uncore, ILK_DSPCLK_GATE_D) |
-		   ILK_DPARBUNIT_CLOCK_GATE_ENABLE  |
-		   ILK_DPFDUNIT_CLOCK_GATE_ENABLE);
+	intel_uncore_write(&i915->uncore, ILK_DISPLAY_CHICKEN1,
+			   intel_uncore_read(&i915->uncore, ILK_DISPLAY_CHICKEN1) |
+			   ILK_FBCQ_DIS | ILK_PABSTRETCH_DIS);
+	intel_uncore_write(&i915->uncore, ILK_DISPLAY_CHICKEN2,
+			   intel_uncore_read(&i915->uncore, ILK_DISPLAY_CHICKEN2) |
+			   ILK_DPARB_GATE | ILK_VSDPFD_FULL);
+	intel_uncore_write(&i915->uncore, ILK_DSPCLK_GATE_D,
+			   intel_uncore_read(&i915->uncore, ILK_DSPCLK_GATE_D) |
+			   ILK_DPARBUNIT_CLOCK_GATE_ENABLE  |
+			   ILK_DPFDUNIT_CLOCK_GATE_ENABLE);
 
-	g4x_disable_trickle_feed(dev_priv);
+	g4x_disable_trickle_feed(i915);
 
-	cpt_init_clock_gating(dev_priv);
+	cpt_init_clock_gating(i915);
 
-	gen6_check_mch_setup(dev_priv);
+	gen6_check_mch_setup(i915);
 }
 
-static void lpt_init_clock_gating(struct drm_i915_private *dev_priv)
+static void lpt_init_clock_gating(struct drm_i915_private *i915)
 {
 	/*
 	 * TODO: this bit should only be enabled when really needed, then
 	 * disabled when not needed anymore in order to save power.
 	 */
-	if (HAS_PCH_LPT_LP(dev_priv))
-		intel_uncore_rmw(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D,
+	if (HAS_PCH_LPT_LP(i915))
+		intel_uncore_rmw(&i915->uncore, SOUTH_DSPCLK_GATE_D,
 				 0, PCH_LP_PARTITION_LEVEL_DISABLE);
 
 	/* WADPOClockGatingDisable:hsw */
-	intel_uncore_rmw(&dev_priv->uncore, TRANS_CHICKEN1(PIPE_A),
+	intel_uncore_rmw(&i915->uncore, TRANS_CHICKEN1(PIPE_A),
 			 0, TRANS_CHICKEN1_DP0UNIT_GC_DISABLE);
 }
 
-static void gen8_set_l3sqc_credits(struct drm_i915_private *dev_priv,
+static void gen8_set_l3sqc_credits(struct drm_i915_private *i915,
 				   int general_prio_credits,
 				   int high_prio_credits)
 {
@@ -328,64 +330,64 @@ static void gen8_set_l3sqc_credits(struct drm_i915_private *dev_priv,
 	u32 val;
 
 	/* WaTempDisableDOPClkGating:bdw */
-	misccpctl = intel_uncore_rmw(&dev_priv->uncore, GEN7_MISCCPCTL,
+	misccpctl = intel_uncore_rmw(&i915->uncore, GEN7_MISCCPCTL,
 				     GEN7_DOP_CLOCK_GATE_ENABLE, 0);
 
-	val = intel_gt_mcr_read_any(to_gt(dev_priv), GEN8_L3SQCREG1);
+	val = intel_gt_mcr_read_any(to_gt(i915), GEN8_L3SQCREG1);
 	val &= ~L3_PRIO_CREDITS_MASK;
 	val |= L3_GENERAL_PRIO_CREDITS(general_prio_credits);
 	val |= L3_HIGH_PRIO_CREDITS(high_prio_credits);
-	intel_gt_mcr_multicast_write(to_gt(dev_priv), GEN8_L3SQCREG1, val);
+	intel_gt_mcr_multicast_write(to_gt(i915), GEN8_L3SQCREG1, val);
 
 	/*
 	 * Wait at least 100 clocks before re-enabling clock gating.
 	 * See the definition of L3SQCREG1 in BSpec.
 	 */
-	intel_gt_mcr_read_any(to_gt(dev_priv), GEN8_L3SQCREG1);
+	intel_gt_mcr_read_any(to_gt(i915), GEN8_L3SQCREG1);
 	udelay(1);
-	intel_uncore_write(&dev_priv->uncore, GEN7_MISCCPCTL, misccpctl);
+	intel_uncore_write(&i915->uncore, GEN7_MISCCPCTL, misccpctl);
 }
 
-static void icl_init_clock_gating(struct drm_i915_private *dev_priv)
+static void icl_init_clock_gating(struct drm_i915_private *i915)
 {
 	/* Wa_1409120013:icl,ehl */
-	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
+	intel_uncore_write(&i915->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
 			   DPFC_CHICKEN_COMP_DUMMY_PIXEL);
 
 	/*Wa_14010594013:icl, ehl */
-	intel_uncore_rmw(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1,
+	intel_uncore_rmw(&i915->uncore, GEN8_CHICKEN_DCPR_1,
 			 0, ICL_DELAY_PMRSP);
 }
 
-static void gen12lp_init_clock_gating(struct drm_i915_private *dev_priv)
+static void gen12lp_init_clock_gating(struct drm_i915_private *i915)
 {
 	/* Wa_1409120013 */
-	if (DISPLAY_VER(dev_priv) == 12)
-		intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
+	if (DISPLAY_VER(i915) == 12)
+		intel_uncore_write(&i915->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
 				   DPFC_CHICKEN_COMP_DUMMY_PIXEL);
 
 	/* Wa_14013723622:tgl,rkl,dg1,adl-s */
-	if (DISPLAY_VER(dev_priv) == 12)
-		intel_uncore_rmw(&dev_priv->uncore, CLKREQ_POLICY,
+	if (DISPLAY_VER(i915) == 12)
+		intel_uncore_rmw(&i915->uncore, CLKREQ_POLICY,
 				 CLKREQ_POLICY_MEM_UP_OVRD, 0);
 }
 
-static void adlp_init_clock_gating(struct drm_i915_private *dev_priv)
+static void adlp_init_clock_gating(struct drm_i915_private *i915)
 {
-	gen12lp_init_clock_gating(dev_priv);
+	gen12lp_init_clock_gating(i915);
 
 	/* Wa_22011091694:adlp */
-	intel_de_rmw(dev_priv, GEN9_CLKGATE_DIS_5, 0, DPCE_GATING_DIS);
+	intel_de_rmw(i915, GEN9_CLKGATE_DIS_5, 0, DPCE_GATING_DIS);
 
 	/* Bspec/49189 Initialize Sequence */
-	intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, DDI_CLOCK_REG_ACCESS, 0);
+	intel_de_rmw(i915, GEN8_CHICKEN_DCPR_1, DDI_CLOCK_REG_ACCESS, 0);
 }
 
-static void xehpsdv_init_clock_gating(struct drm_i915_private *dev_priv)
+static void xehpsdv_init_clock_gating(struct drm_i915_private *i915)
 {
 	/* Wa_22010146351:xehpsdv */
-	if (IS_XEHPSDV_GRAPHICS_STEP(dev_priv, STEP_A0, STEP_B0))
-		intel_uncore_rmw(&dev_priv->uncore, XEHP_CLOCK_GATE_DIS, 0, SGR_DIS);
+	if (IS_XEHPSDV_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
+		intel_uncore_rmw(&i915->uncore, XEHP_CLOCK_GATE_DIS, 0, SGR_DIS);
 }
 
 static void dg2_init_clock_gating(struct drm_i915_private *i915)
@@ -403,303 +405,303 @@ static void dg2_init_clock_gating(struct drm_i915_private *i915)
 				 SGR_DIS | SGGI_DIS);
 }
 
-static void pvc_init_clock_gating(struct drm_i915_private *dev_priv)
+static void pvc_init_clock_gating(struct drm_i915_private *i915)
 {
 	/* Wa_14012385139:pvc */
-	if (IS_PVC_BD_STEP(dev_priv, STEP_A0, STEP_B0))
-		intel_uncore_rmw(&dev_priv->uncore, XEHP_CLOCK_GATE_DIS, 0, SGR_DIS);
+	if (IS_PVC_BD_STEP(i915, STEP_A0, STEP_B0))
+		intel_uncore_rmw(&i915->uncore, XEHP_CLOCK_GATE_DIS, 0, SGR_DIS);
 
 	/* Wa_22010954014:pvc */
-	if (IS_PVC_BD_STEP(dev_priv, STEP_A0, STEP_B0))
-		intel_uncore_rmw(&dev_priv->uncore, XEHP_CLOCK_GATE_DIS, 0, SGSI_SIDECLK_DIS);
+	if (IS_PVC_BD_STEP(i915, STEP_A0, STEP_B0))
+		intel_uncore_rmw(&i915->uncore, XEHP_CLOCK_GATE_DIS, 0, SGSI_SIDECLK_DIS);
 }
 
-static void cnp_init_clock_gating(struct drm_i915_private *dev_priv)
+static void cnp_init_clock_gating(struct drm_i915_private *i915)
 {
-	if (!HAS_PCH_CNP(dev_priv))
+	if (!HAS_PCH_CNP(i915))
 		return;
 
 	/* Display WA #1181 WaSouthDisplayDisablePWMCGEGating: cnp */
-	intel_uncore_rmw(&dev_priv->uncore, SOUTH_DSPCLK_GATE_D, 0, CNP_PWM_CGE_GATING_DISABLE);
+	intel_uncore_rmw(&i915->uncore, SOUTH_DSPCLK_GATE_D, 0, CNP_PWM_CGE_GATING_DISABLE);
 }
 
-static void cfl_init_clock_gating(struct drm_i915_private *dev_priv)
+static void cfl_init_clock_gating(struct drm_i915_private *i915)
 {
-	cnp_init_clock_gating(dev_priv);
-	gen9_init_clock_gating(dev_priv);
+	cnp_init_clock_gating(i915);
+	gen9_init_clock_gating(i915);
 
 	/* WAC6entrylatency:cfl */
-	intel_uncore_rmw(&dev_priv->uncore, FBC_LLC_READ_CTRL, 0, FBC_LLC_FULLY_OPEN);
+	intel_uncore_rmw(&i915->uncore, FBC_LLC_READ_CTRL, 0, FBC_LLC_FULLY_OPEN);
 
 	/*
 	 * WaFbcTurnOffFbcWatermark:cfl
 	 * Display WA #0562: cfl
 	 */
-	intel_uncore_rmw(&dev_priv->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
+	intel_uncore_rmw(&i915->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
 
 	/*
 	 * WaFbcNukeOnHostModify:cfl
 	 * Display WA #0873: cfl
 	 */
-	intel_uncore_rmw(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
+	intel_uncore_rmw(&i915->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
 			 0, DPFC_NUKE_ON_ANY_MODIFICATION);
 }
 
-static void kbl_init_clock_gating(struct drm_i915_private *dev_priv)
+static void kbl_init_clock_gating(struct drm_i915_private *i915)
 {
-	gen9_init_clock_gating(dev_priv);
+	gen9_init_clock_gating(i915);
 
 	/* WAC6entrylatency:kbl */
-	intel_uncore_rmw(&dev_priv->uncore, FBC_LLC_READ_CTRL, 0, FBC_LLC_FULLY_OPEN);
+	intel_uncore_rmw(&i915->uncore, FBC_LLC_READ_CTRL, 0, FBC_LLC_FULLY_OPEN);
 
 	/* WaDisableSDEUnitClockGating:kbl */
-	if (IS_KBL_GRAPHICS_STEP(dev_priv, 0, STEP_C0))
-		intel_uncore_rmw(&dev_priv->uncore, GEN8_UCGCTL6,
+	if (IS_KBL_GRAPHICS_STEP(i915, 0, STEP_C0))
+		intel_uncore_rmw(&i915->uncore, GEN8_UCGCTL6,
 				 0, GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
 
 	/* WaDisableGamClockGating:kbl */
-	if (IS_KBL_GRAPHICS_STEP(dev_priv, 0, STEP_C0))
-		intel_uncore_rmw(&dev_priv->uncore, GEN6_UCGCTL1,
+	if (IS_KBL_GRAPHICS_STEP(i915, 0, STEP_C0))
+		intel_uncore_rmw(&i915->uncore, GEN6_UCGCTL1,
 				 0, GEN6_GAMUNIT_CLOCK_GATE_DISABLE);
 
 	/*
 	 * WaFbcTurnOffFbcWatermark:kbl
 	 * Display WA #0562: kbl
 	 */
-	intel_uncore_rmw(&dev_priv->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
+	intel_uncore_rmw(&i915->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
 
 	/*
 	 * WaFbcNukeOnHostModify:kbl
 	 * Display WA #0873: kbl
 	 */
-	intel_uncore_rmw(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
+	intel_uncore_rmw(&i915->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
 			 0, DPFC_NUKE_ON_ANY_MODIFICATION);
 }
 
-static void skl_init_clock_gating(struct drm_i915_private *dev_priv)
+static void skl_init_clock_gating(struct drm_i915_private *i915)
 {
-	gen9_init_clock_gating(dev_priv);
+	gen9_init_clock_gating(i915);
 
 	/* WaDisableDopClockGating:skl */
-	intel_uncore_rmw(&dev_priv->uncore, GEN7_MISCCPCTL,
+	intel_uncore_rmw(&i915->uncore, GEN7_MISCCPCTL,
 			 GEN7_DOP_CLOCK_GATE_ENABLE, 0);
 
 	/* WAC6entrylatency:skl */
-	intel_uncore_rmw(&dev_priv->uncore, FBC_LLC_READ_CTRL, 0, FBC_LLC_FULLY_OPEN);
+	intel_uncore_rmw(&i915->uncore, FBC_LLC_READ_CTRL, 0, FBC_LLC_FULLY_OPEN);
 
 	/*
 	 * WaFbcTurnOffFbcWatermark:skl
 	 * Display WA #0562: skl
 	 */
-	intel_uncore_rmw(&dev_priv->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
+	intel_uncore_rmw(&i915->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
 
 	/*
 	 * WaFbcNukeOnHostModify:skl
 	 * Display WA #0873: skl
 	 */
-	intel_uncore_rmw(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
+	intel_uncore_rmw(&i915->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
 			 0, DPFC_NUKE_ON_ANY_MODIFICATION);
 
 	/*
 	 * WaFbcHighMemBwCorruptionAvoidance:skl
 	 * Display WA #0883: skl
 	 */
-	intel_uncore_rmw(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A), 0, DPFC_DISABLE_DUMMY0);
+	intel_uncore_rmw(&i915->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A), 0, DPFC_DISABLE_DUMMY0);
 }
 
-static void bdw_init_clock_gating(struct drm_i915_private *dev_priv)
+static void bdw_init_clock_gating(struct drm_i915_private *i915)
 {
 	enum pipe pipe;
 
 	/* WaFbcAsynchFlipDisableFbcQueue:hsw,bdw */
-	intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A), 0, HSW_FBCQ_DIS);
+	intel_uncore_rmw(&i915->uncore, CHICKEN_PIPESL_1(PIPE_A), 0, HSW_FBCQ_DIS);
 
 	/* WaSwitchSolVfFArbitrationPriority:bdw */
-	intel_uncore_rmw(&dev_priv->uncore, GAM_ECOCHK, 0, HSW_ECOCHK_ARB_PRIO_SOL);
+	intel_uncore_rmw(&i915->uncore, GAM_ECOCHK, 0, HSW_ECOCHK_ARB_PRIO_SOL);
 
 	/* WaPsrDPAMaskVBlankInSRD:bdw */
-	intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PAR1_1, 0, DPA_MASK_VBLANK_SRD);
+	intel_uncore_rmw(&i915->uncore, CHICKEN_PAR1_1, 0, DPA_MASK_VBLANK_SRD);
 
-	for_each_pipe(dev_priv, pipe) {
+	for_each_pipe(i915, pipe) {
 		/* WaPsrDPRSUnmaskVBlankInSRD:bdw */
-		intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PIPESL_1(pipe),
+		intel_uncore_rmw(&i915->uncore, CHICKEN_PIPESL_1(pipe),
 				 0, BDW_DPRS_MASK_VBLANK_SRD);
 	}
 
 	/* WaVSRefCountFullforceMissDisable:bdw */
 	/* WaDSRefCountFullforceMissDisable:bdw */
-	intel_uncore_rmw(&dev_priv->uncore, GEN7_FF_THREAD_MODE,
+	intel_uncore_rmw(&i915->uncore, GEN7_FF_THREAD_MODE,
 			 GEN8_FF_DS_REF_CNT_FFME | GEN7_FF_VS_REF_CNT_FFME, 0);
 
-	intel_uncore_write(&dev_priv->uncore, RING_PSMI_CTL(RENDER_RING_BASE),
-		   _MASKED_BIT_ENABLE(GEN8_RC_SEMA_IDLE_MSG_DISABLE));
+	intel_uncore_write(&i915->uncore, RING_PSMI_CTL(RENDER_RING_BASE),
+			   _MASKED_BIT_ENABLE(GEN8_RC_SEMA_IDLE_MSG_DISABLE));
 
 	/* WaDisableSDEUnitClockGating:bdw */
-	intel_uncore_rmw(&dev_priv->uncore, GEN8_UCGCTL6, 0, GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
+	intel_uncore_rmw(&i915->uncore, GEN8_UCGCTL6, 0, GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
 
 	/* WaProgramL3SqcReg1Default:bdw */
-	gen8_set_l3sqc_credits(dev_priv, 30, 2);
+	gen8_set_l3sqc_credits(i915, 30, 2);
 
 	/* WaKVMNotificationOnConfigChange:bdw */
-	intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PAR2_1,
+	intel_uncore_rmw(&i915->uncore, CHICKEN_PAR2_1,
 			 0, KVM_CONFIG_CHANGE_NOTIFICATION_SELECT);
 
-	lpt_init_clock_gating(dev_priv);
+	lpt_init_clock_gating(i915);
 
 	/* WaDisableDopClockGating:bdw
 	 *
 	 * Also see the CHICKEN2 write in bdw_init_workarounds() to disable DOP
 	 * clock gating.
 	 */
-	intel_uncore_rmw(&dev_priv->uncore, GEN6_UCGCTL1, 0, GEN6_EU_TCUNIT_CLOCK_GATE_DISABLE);
+	intel_uncore_rmw(&i915->uncore, GEN6_UCGCTL1, 0, GEN6_EU_TCUNIT_CLOCK_GATE_DISABLE);
 }
 
-static void hsw_init_clock_gating(struct drm_i915_private *dev_priv)
+static void hsw_init_clock_gating(struct drm_i915_private *i915)
 {
 	/* WaFbcAsynchFlipDisableFbcQueue:hsw,bdw */
-	intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PIPESL_1(PIPE_A), 0, HSW_FBCQ_DIS);
+	intel_uncore_rmw(&i915->uncore, CHICKEN_PIPESL_1(PIPE_A), 0, HSW_FBCQ_DIS);
 
 	/* This is required by WaCatErrorRejectionIssue:hsw */
-	intel_uncore_rmw(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
+	intel_uncore_rmw(&i915->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
 			 0, GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);
 
 	/* WaSwitchSolVfFArbitrationPriority:hsw */
-	intel_uncore_rmw(&dev_priv->uncore, GAM_ECOCHK, 0, HSW_ECOCHK_ARB_PRIO_SOL);
+	intel_uncore_rmw(&i915->uncore, GAM_ECOCHK, 0, HSW_ECOCHK_ARB_PRIO_SOL);
 
-	lpt_init_clock_gating(dev_priv);
+	lpt_init_clock_gating(i915);
 }
 
-static void ivb_init_clock_gating(struct drm_i915_private *dev_priv)
+static void ivb_init_clock_gating(struct drm_i915_private *i915)
 {
-	intel_uncore_write(&dev_priv->uncore, ILK_DSPCLK_GATE_D, ILK_VRHUNIT_CLOCK_GATE_DISABLE);
+	intel_uncore_write(&i915->uncore, ILK_DSPCLK_GATE_D, ILK_VRHUNIT_CLOCK_GATE_DISABLE);
 
 	/* WaFbcAsynchFlipDisableFbcQueue:ivb */
-	intel_uncore_rmw(&dev_priv->uncore, ILK_DISPLAY_CHICKEN1, 0, ILK_FBCQ_DIS);
+	intel_uncore_rmw(&i915->uncore, ILK_DISPLAY_CHICKEN1, 0, ILK_FBCQ_DIS);
 
 	/* WaDisableBackToBackFlipFix:ivb */
-	intel_uncore_write(&dev_priv->uncore, IVB_CHICKEN3,
-		   CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE |
-		   CHICKEN3_DGMG_DONE_FIX_DISABLE);
+	intel_uncore_write(&i915->uncore, IVB_CHICKEN3,
+			   CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE |
+			   CHICKEN3_DGMG_DONE_FIX_DISABLE);
 
-	if (IS_IVB_GT1(dev_priv))
-		intel_uncore_write(&dev_priv->uncore, GEN7_ROW_CHICKEN2,
-			   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));
+	if (IS_IVB_GT1(i915))
+		intel_uncore_write(&i915->uncore, GEN7_ROW_CHICKEN2,
+				   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));
 	else {
 		/* must write both registers */
-		intel_uncore_write(&dev_priv->uncore, GEN7_ROW_CHICKEN2,
-			   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));
-		intel_uncore_write(&dev_priv->uncore, GEN7_ROW_CHICKEN2_GT2,
-			   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));
+		intel_uncore_write(&i915->uncore, GEN7_ROW_CHICKEN2,
+				   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));
+		intel_uncore_write(&i915->uncore, GEN7_ROW_CHICKEN2_GT2,
+				   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));
 	}
 
 	/*
 	 * According to the spec, bit 13 (RCZUNIT) must be set on IVB.
 	 * This implements the WaDisableRCZUnitClockGating:ivb workaround.
 	 */
-	intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL2,
-		   GEN6_RCZUNIT_CLOCK_GATE_DISABLE);
+	intel_uncore_write(&i915->uncore, GEN6_UCGCTL2,
+			   GEN6_RCZUNIT_CLOCK_GATE_DISABLE);
 
 	/* This is required by WaCatErrorRejectionIssue:ivb */
-	intel_uncore_rmw(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
+	intel_uncore_rmw(&i915->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
 			 0, GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);
 
-	g4x_disable_trickle_feed(dev_priv);
+	g4x_disable_trickle_feed(i915);
 
-	intel_uncore_rmw(&dev_priv->uncore, GEN6_MBCUNIT_SNPCR, GEN6_MBC_SNPCR_MASK,
+	intel_uncore_rmw(&i915->uncore, GEN6_MBCUNIT_SNPCR, GEN6_MBC_SNPCR_MASK,
 			 GEN6_MBC_SNPCR_MED);
 
-	if (!HAS_PCH_NOP(dev_priv))
-		cpt_init_clock_gating(dev_priv);
+	if (!HAS_PCH_NOP(i915))
+		cpt_init_clock_gating(i915);
 
-	gen6_check_mch_setup(dev_priv);
+	gen6_check_mch_setup(i915);
 }
 
-static void vlv_init_clock_gating(struct drm_i915_private *dev_priv)
+static void vlv_init_clock_gating(struct drm_i915_private *i915)
 {
 	/* WaDisableBackToBackFlipFix:vlv */
-	intel_uncore_write(&dev_priv->uncore, IVB_CHICKEN3,
-		   CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE |
-		   CHICKEN3_DGMG_DONE_FIX_DISABLE);
+	intel_uncore_write(&i915->uncore, IVB_CHICKEN3,
+			   CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE |
+			   CHICKEN3_DGMG_DONE_FIX_DISABLE);
 
 	/* WaDisableDopClockGating:vlv */
-	intel_uncore_write(&dev_priv->uncore, GEN7_ROW_CHICKEN2,
-		   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));
+	intel_uncore_write(&i915->uncore, GEN7_ROW_CHICKEN2,
+			   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));
 
 	/* This is required by WaCatErrorRejectionIssue:vlv */
-	intel_uncore_rmw(&dev_priv->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
+	intel_uncore_rmw(&i915->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
 			 0, GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);
 
 	/*
 	 * According to the spec, bit 13 (RCZUNIT) must be set on IVB.
 	 * This implements the WaDisableRCZUnitClockGating:vlv workaround.
 	 */
-	intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL2,
-		   GEN6_RCZUNIT_CLOCK_GATE_DISABLE);
+	intel_uncore_write(&i915->uncore, GEN6_UCGCTL2,
+			   GEN6_RCZUNIT_CLOCK_GATE_DISABLE);
 
 	/* WaDisableL3Bank2xClockGate:vlv
 	 * Disabling L3 clock gating- MMIO 940c[25] = 1
 	 * Set bit 25, to disable L3_BANK_2x_CLK_GATING */
-	intel_uncore_rmw(&dev_priv->uncore, GEN7_UCGCTL4, 0, GEN7_L3BANK2X_CLOCK_GATE_DISABLE);
+	intel_uncore_rmw(&i915->uncore, GEN7_UCGCTL4, 0, GEN7_L3BANK2X_CLOCK_GATE_DISABLE);
 
 	/*
 	 * WaDisableVLVClockGating_VBIIssue:vlv
 	 * Disable clock gating on th GCFG unit to prevent a delay
 	 * in the reporting of vblank events.
 	 */
-	intel_uncore_write(&dev_priv->uncore, VLV_GUNIT_CLOCK_GATE, GCFG_DIS);
+	intel_uncore_write(&i915->uncore, VLV_GUNIT_CLOCK_GATE, GCFG_DIS);
 }
 
-static void chv_init_clock_gating(struct drm_i915_private *dev_priv)
+static void chv_init_clock_gating(struct drm_i915_private *i915)
 {
 	/* WaVSRefCountFullforceMissDisable:chv */
 	/* WaDSRefCountFullforceMissDisable:chv */
-	intel_uncore_rmw(&dev_priv->uncore, GEN7_FF_THREAD_MODE,
+	intel_uncore_rmw(&i915->uncore, GEN7_FF_THREAD_MODE,
 			 GEN8_FF_DS_REF_CNT_FFME | GEN7_FF_VS_REF_CNT_FFME, 0);
 
 	/* WaDisableSemaphoreAndSyncFlipWait:chv */
-	intel_uncore_write(&dev_priv->uncore, RING_PSMI_CTL(RENDER_RING_BASE),
-		   _MASKED_BIT_ENABLE(GEN8_RC_SEMA_IDLE_MSG_DISABLE));
+	intel_uncore_write(&i915->uncore, RING_PSMI_CTL(RENDER_RING_BASE),
+			   _MASKED_BIT_ENABLE(GEN8_RC_SEMA_IDLE_MSG_DISABLE));
 
 	/* WaDisableCSUnitClockGating:chv */
-	intel_uncore_rmw(&dev_priv->uncore, GEN6_UCGCTL1, 0, GEN6_CSUNIT_CLOCK_GATE_DISABLE);
+	intel_uncore_rmw(&i915->uncore, GEN6_UCGCTL1, 0, GEN6_CSUNIT_CLOCK_GATE_DISABLE);
 
 	/* WaDisableSDEUnitClockGating:chv */
-	intel_uncore_rmw(&dev_priv->uncore, GEN8_UCGCTL6, 0, GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
+	intel_uncore_rmw(&i915->uncore, GEN8_UCGCTL6, 0, GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
 
 	/*
 	 * WaProgramL3SqcReg1Default:chv
 	 * See gfxspecs/Related Documents/Performance Guide/
 	 * LSQC Setting Recommendations.
 	 */
-	gen8_set_l3sqc_credits(dev_priv, 38, 2);
+	gen8_set_l3sqc_credits(i915, 38, 2);
 }
 
-static void g4x_init_clock_gating(struct drm_i915_private *dev_priv)
+static void g4x_init_clock_gating(struct drm_i915_private *i915)
 {
 	u32 dspclk_gate;
 
-	intel_uncore_write(&dev_priv->uncore, RENCLK_GATE_D1, 0);
-	intel_uncore_write(&dev_priv->uncore, RENCLK_GATE_D2, VF_UNIT_CLOCK_GATE_DISABLE |
-		   GS_UNIT_CLOCK_GATE_DISABLE |
-		   CL_UNIT_CLOCK_GATE_DISABLE);
-	intel_uncore_write(&dev_priv->uncore, RAMCLK_GATE_D, 0);
+	intel_uncore_write(&i915->uncore, RENCLK_GATE_D1, 0);
+	intel_uncore_write(&i915->uncore, RENCLK_GATE_D2, VF_UNIT_CLOCK_GATE_DISABLE |
+			   GS_UNIT_CLOCK_GATE_DISABLE |
+			   CL_UNIT_CLOCK_GATE_DISABLE);
+	intel_uncore_write(&i915->uncore, RAMCLK_GATE_D, 0);
 	dspclk_gate = VRHUNIT_CLOCK_GATE_DISABLE |
 		OVRUNIT_CLOCK_GATE_DISABLE |
 		OVCUNIT_CLOCK_GATE_DISABLE;
-	if (IS_GM45(dev_priv))
+	if (IS_GM45(i915))
 		dspclk_gate |= DSSUNIT_CLOCK_GATE_DISABLE;
-	intel_uncore_write(&dev_priv->uncore, DSPCLK_GATE_D(dev_priv), dspclk_gate);
+	intel_uncore_write(&i915->uncore, DSPCLK_GATE_D(i915), dspclk_gate);
 
-	g4x_disable_trickle_feed(dev_priv);
+	g4x_disable_trickle_feed(i915);
 }
 
-static void i965gm_init_clock_gating(struct drm_i915_private *dev_priv)
+static void i965gm_init_clock_gating(struct drm_i915_private *i915)
 {
-	struct intel_uncore *uncore = &dev_priv->uncore;
+	struct intel_uncore *uncore = &i915->uncore;
 
 	intel_uncore_write(uncore, RENCLK_GATE_D1, I965_RCC_CLOCK_GATE_DISABLE);
 	intel_uncore_write(uncore, RENCLK_GATE_D2, 0);
-	intel_uncore_write(uncore, DSPCLK_GATE_D(dev_priv), 0);
+	intel_uncore_write(uncore, DSPCLK_GATE_D(i915), 0);
 	intel_uncore_write(uncore, RAMCLK_GATE_D, 0);
 	intel_uncore_write16(uncore, DEUC, 0);
 	intel_uncore_write(uncore,
@@ -707,54 +709,55 @@ static void i965gm_init_clock_gating(struct drm_i915_private *dev_priv)
 			   _MASKED_BIT_ENABLE(MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE));
 }
 
-static void i965g_init_clock_gating(struct drm_i915_private *dev_priv)
+static void i965g_init_clock_gating(struct drm_i915_private *i915)
 {
-	intel_uncore_write(&dev_priv->uncore, RENCLK_GATE_D1, I965_RCZ_CLOCK_GATE_DISABLE |
-		   I965_RCC_CLOCK_GATE_DISABLE |
-		   I965_RCPB_CLOCK_GATE_DISABLE |
-		   I965_ISC_CLOCK_GATE_DISABLE |
-		   I965_FBC_CLOCK_GATE_DISABLE);
-	intel_uncore_write(&dev_priv->uncore, RENCLK_GATE_D2, 0);
-	intel_uncore_write(&dev_priv->uncore, MI_ARB_STATE,
-		   _MASKED_BIT_ENABLE(MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE));
+	intel_uncore_write(&i915->uncore, RENCLK_GATE_D1, I965_RCZ_CLOCK_GATE_DISABLE |
+			   I965_RCC_CLOCK_GATE_DISABLE |
+			   I965_RCPB_CLOCK_GATE_DISABLE |
+			   I965_ISC_CLOCK_GATE_DISABLE |
+			   I965_FBC_CLOCK_GATE_DISABLE);
+	intel_uncore_write(&i915->uncore, RENCLK_GATE_D2, 0);
+	intel_uncore_write(&i915->uncore, MI_ARB_STATE,
+			   _MASKED_BIT_ENABLE(MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE));
 }
 
-static void gen3_init_clock_gating(struct drm_i915_private *dev_priv)
+static void gen3_init_clock_gating(struct drm_i915_private *i915)
 {
-	u32 dstate = intel_uncore_read(&dev_priv->uncore, D_STATE);
+	u32 dstate = intel_uncore_read(&i915->uncore, D_STATE);
 
 	dstate |= DSTATE_PLL_D3_OFF | DSTATE_GFX_CLOCK_GATING |
 		DSTATE_DOT_CLOCK_GATING;
-	intel_uncore_write(&dev_priv->uncore, D_STATE, dstate);
+	intel_uncore_write(&i915->uncore, D_STATE, dstate);
 
-	if (IS_PINEVIEW(dev_priv))
-		intel_uncore_write(&dev_priv->uncore, ECOSKPD(RENDER_RING_BASE),
+	if (IS_PINEVIEW(i915))
+		intel_uncore_write(&i915->uncore, ECOSKPD(RENDER_RING_BASE),
 				   _MASKED_BIT_ENABLE(ECO_GATING_CX_ONLY));
 
 	/* IIR "flip pending" means done if this bit is set */
-	intel_uncore_write(&dev_priv->uncore, ECOSKPD(RENDER_RING_BASE),
+	intel_uncore_write(&i915->uncore, ECOSKPD(RENDER_RING_BASE),
 			   _MASKED_BIT_DISABLE(ECO_FLIP_DONE));
 
 	/* interrupts should cause a wake up from C3 */
-	intel_uncore_write(&dev_priv->uncore, INSTPM, _MASKED_BIT_ENABLE(INSTPM_AGPBUSY_INT_EN));
+	intel_uncore_write(&i915->uncore, INSTPM, _MASKED_BIT_ENABLE(INSTPM_AGPBUSY_INT_EN));
 
 	/* On GEN3 we really need to make sure the ARB C3 LP bit is set */
-	intel_uncore_write(&dev_priv->uncore, MI_ARB_STATE, _MASKED_BIT_ENABLE(MI_ARB_C3_LP_WRITE_ENABLE));
+	intel_uncore_write(&i915->uncore, MI_ARB_STATE,
+			   _MASKED_BIT_ENABLE(MI_ARB_C3_LP_WRITE_ENABLE));
 
-	intel_uncore_write(&dev_priv->uncore, MI_ARB_STATE,
-		   _MASKED_BIT_ENABLE(MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE));
+	intel_uncore_write(&i915->uncore, MI_ARB_STATE,
+			   _MASKED_BIT_ENABLE(MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE));
 }
 
-static void i85x_init_clock_gating(struct drm_i915_private *dev_priv)
+static void i85x_init_clock_gating(struct drm_i915_private *i915)
 {
-	intel_uncore_write(&dev_priv->uncore, RENCLK_GATE_D1, SV_CLOCK_GATE_DISABLE);
+	intel_uncore_write(&i915->uncore, RENCLK_GATE_D1, SV_CLOCK_GATE_DISABLE);
 
 	/* interrupts should cause a wake up from C3 */
-	intel_uncore_write(&dev_priv->uncore, MI_STATE, _MASKED_BIT_ENABLE(MI_AGPBUSY_INT_EN) |
-		   _MASKED_BIT_DISABLE(MI_AGPBUSY_830_MODE));
+	intel_uncore_write(&i915->uncore, MI_STATE, _MASKED_BIT_ENABLE(MI_AGPBUSY_INT_EN) |
+			   _MASKED_BIT_DISABLE(MI_AGPBUSY_830_MODE));
 
-	intel_uncore_write(&dev_priv->uncore, MEM_MODE,
-		   _MASKED_BIT_ENABLE(MEM_DISPLAY_TRICKLE_FEED_DISABLE));
+	intel_uncore_write(&i915->uncore, MEM_MODE,
+			   _MASKED_BIT_ENABLE(MEM_DISPLAY_TRICKLE_FEED_DISABLE));
 
 	/*
 	 * Have FBC ignore 3D activity since we use software
@@ -763,25 +766,25 @@ static void i85x_init_clock_gating(struct drm_i915_private *dev_priv)
 	 * abosultely nothing) would not allow FBC to recompress
 	 * until a 2D blit occurs.
 	 */
-	intel_uncore_write(&dev_priv->uncore, SCPD0,
-		   _MASKED_BIT_ENABLE(SCPD_FBC_IGNORE_3D));
+	intel_uncore_write(&i915->uncore, SCPD0,
+			   _MASKED_BIT_ENABLE(SCPD_FBC_IGNORE_3D));
 }
 
-static void i830_init_clock_gating(struct drm_i915_private *dev_priv)
+static void i830_init_clock_gating(struct drm_i915_private *i915)
 {
-	intel_uncore_write(&dev_priv->uncore, MEM_MODE,
-		   _MASKED_BIT_ENABLE(MEM_DISPLAY_A_TRICKLE_FEED_DISABLE) |
-		   _MASKED_BIT_ENABLE(MEM_DISPLAY_B_TRICKLE_FEED_DISABLE));
+	intel_uncore_write(&i915->uncore, MEM_MODE,
+			   _MASKED_BIT_ENABLE(MEM_DISPLAY_A_TRICKLE_FEED_DISABLE) |
+			   _MASKED_BIT_ENABLE(MEM_DISPLAY_B_TRICKLE_FEED_DISABLE));
 }
 
-void intel_clock_gating_init(struct drm_i915_private *dev_priv)
+void intel_clock_gating_init(struct drm_i915_private *i915)
 {
-	dev_priv->clock_gating_funcs->init_clock_gating(dev_priv);
+	i915->clock_gating_funcs->init_clock_gating(i915);
 }
 
-static void nop_init_clock_gating(struct drm_i915_private *dev_priv)
+static void nop_init_clock_gating(struct drm_i915_private *i915)
 {
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(&i915->drm,
 		    "No clock gating settings or workarounds applied.\n");
 }
 
@@ -819,67 +822,67 @@ CG_FUNCS(nop);
 
 /**
  * intel_clock_gating_hooks_init - setup the clock gating hooks
- * @dev_priv: device private
+ * @i915: device private
  *
  * Setup the hooks that configure which clocks of a given platform can be
  * gated and also apply various GT and display specific workarounds for these
  * platforms. Note that some GT specific workarounds are applied separately
  * when GPU contexts or batchbuffers start their execution.
  */
-void intel_clock_gating_hooks_init(struct drm_i915_private *dev_priv)
-{
-	if (IS_METEORLAKE(dev_priv))
-		dev_priv->clock_gating_funcs = &nop_clock_gating_funcs;
-	else if (IS_PONTEVECCHIO(dev_priv))
-		dev_priv->clock_gating_funcs = &pvc_clock_gating_funcs;
-	else if (IS_DG2(dev_priv))
-		dev_priv->clock_gating_funcs = &dg2_clock_gating_funcs;
-	else if (IS_XEHPSDV(dev_priv))
-		dev_priv->clock_gating_funcs = &xehpsdv_clock_gating_funcs;
-	else if (IS_ALDERLAKE_P(dev_priv))
-		dev_priv->clock_gating_funcs = &adlp_clock_gating_funcs;
-	else if (GRAPHICS_VER(dev_priv) == 12)
-		dev_priv->clock_gating_funcs = &gen12lp_clock_gating_funcs;
-	else if (GRAPHICS_VER(dev_priv) == 11)
-		dev_priv->clock_gating_funcs = &icl_clock_gating_funcs;
-	else if (IS_COFFEELAKE(dev_priv) || IS_COMETLAKE(dev_priv))
-		dev_priv->clock_gating_funcs = &cfl_clock_gating_funcs;
-	else if (IS_SKYLAKE(dev_priv))
-		dev_priv->clock_gating_funcs = &skl_clock_gating_funcs;
-	else if (IS_KABYLAKE(dev_priv))
-		dev_priv->clock_gating_funcs = &kbl_clock_gating_funcs;
-	else if (IS_BROXTON(dev_priv))
-		dev_priv->clock_gating_funcs = &bxt_clock_gating_funcs;
-	else if (IS_GEMINILAKE(dev_priv))
-		dev_priv->clock_gating_funcs = &glk_clock_gating_funcs;
-	else if (IS_BROADWELL(dev_priv))
-		dev_priv->clock_gating_funcs = &bdw_clock_gating_funcs;
-	else if (IS_CHERRYVIEW(dev_priv))
-		dev_priv->clock_gating_funcs = &chv_clock_gating_funcs;
-	else if (IS_HASWELL(dev_priv))
-		dev_priv->clock_gating_funcs = &hsw_clock_gating_funcs;
-	else if (IS_IVYBRIDGE(dev_priv))
-		dev_priv->clock_gating_funcs = &ivb_clock_gating_funcs;
-	else if (IS_VALLEYVIEW(dev_priv))
-		dev_priv->clock_gating_funcs = &vlv_clock_gating_funcs;
-	else if (GRAPHICS_VER(dev_priv) == 6)
-		dev_priv->clock_gating_funcs = &gen6_clock_gating_funcs;
-	else if (GRAPHICS_VER(dev_priv) == 5)
-		dev_priv->clock_gating_funcs = &ilk_clock_gating_funcs;
-	else if (IS_G4X(dev_priv))
-		dev_priv->clock_gating_funcs = &g4x_clock_gating_funcs;
-	else if (IS_I965GM(dev_priv))
-		dev_priv->clock_gating_funcs = &i965gm_clock_gating_funcs;
-	else if (IS_I965G(dev_priv))
-		dev_priv->clock_gating_funcs = &i965g_clock_gating_funcs;
-	else if (GRAPHICS_VER(dev_priv) == 3)
-		dev_priv->clock_gating_funcs = &gen3_clock_gating_funcs;
-	else if (IS_I85X(dev_priv) || IS_I865G(dev_priv))
-		dev_priv->clock_gating_funcs = &i85x_clock_gating_funcs;
-	else if (GRAPHICS_VER(dev_priv) == 2)
-		dev_priv->clock_gating_funcs = &i830_clock_gating_funcs;
+void intel_clock_gating_hooks_init(struct drm_i915_private *i915)
+{
+	if (IS_METEORLAKE(i915))
+		i915->clock_gating_funcs = &nop_clock_gating_funcs;
+	else if (IS_PONTEVECCHIO(i915))
+		i915->clock_gating_funcs = &pvc_clock_gating_funcs;
+	else if (IS_DG2(i915))
+		i915->clock_gating_funcs = &dg2_clock_gating_funcs;
+	else if (IS_XEHPSDV(i915))
+		i915->clock_gating_funcs = &xehpsdv_clock_gating_funcs;
+	else if (IS_ALDERLAKE_P(i915))
+		i915->clock_gating_funcs = &adlp_clock_gating_funcs;
+	else if (GRAPHICS_VER(i915) == 12)
+		i915->clock_gating_funcs = &gen12lp_clock_gating_funcs;
+	else if (GRAPHICS_VER(i915) == 11)
+		i915->clock_gating_funcs = &icl_clock_gating_funcs;
+	else if (IS_COFFEELAKE(i915) || IS_COMETLAKE(i915))
+		i915->clock_gating_funcs = &cfl_clock_gating_funcs;
+	else if (IS_SKYLAKE(i915))
+		i915->clock_gating_funcs = &skl_clock_gating_funcs;
+	else if (IS_KABYLAKE(i915))
+		i915->clock_gating_funcs = &kbl_clock_gating_funcs;
+	else if (IS_BROXTON(i915))
+		i915->clock_gating_funcs = &bxt_clock_gating_funcs;
+	else if (IS_GEMINILAKE(i915))
+		i915->clock_gating_funcs = &glk_clock_gating_funcs;
+	else if (IS_BROADWELL(i915))
+		i915->clock_gating_funcs = &bdw_clock_gating_funcs;
+	else if (IS_CHERRYVIEW(i915))
+		i915->clock_gating_funcs = &chv_clock_gating_funcs;
+	else if (IS_HASWELL(i915))
+		i915->clock_gating_funcs = &hsw_clock_gating_funcs;
+	else if (IS_IVYBRIDGE(i915))
+		i915->clock_gating_funcs = &ivb_clock_gating_funcs;
+	else if (IS_VALLEYVIEW(i915))
+		i915->clock_gating_funcs = &vlv_clock_gating_funcs;
+	else if (GRAPHICS_VER(i915) == 6)
+		i915->clock_gating_funcs = &gen6_clock_gating_funcs;
+	else if (GRAPHICS_VER(i915) == 5)
+		i915->clock_gating_funcs = &ilk_clock_gating_funcs;
+	else if (IS_G4X(i915))
+		i915->clock_gating_funcs = &g4x_clock_gating_funcs;
+	else if (IS_I965GM(i915))
+		i915->clock_gating_funcs = &i965gm_clock_gating_funcs;
+	else if (IS_I965G(i915))
+		i915->clock_gating_funcs = &i965g_clock_gating_funcs;
+	else if (GRAPHICS_VER(i915) == 3)
+		i915->clock_gating_funcs = &gen3_clock_gating_funcs;
+	else if (IS_I85X(i915) || IS_I865G(i915))
+		i915->clock_gating_funcs = &i85x_clock_gating_funcs;
+	else if (GRAPHICS_VER(i915) == 2)
+		i915->clock_gating_funcs = &i830_clock_gating_funcs;
 	else {
-		MISSING_CASE(INTEL_DEVID(dev_priv));
-		dev_priv->clock_gating_funcs = &nop_clock_gating_funcs;
+		MISSING_CASE(INTEL_DEVID(i915));
+		i915->clock_gating_funcs = &nop_clock_gating_funcs;
 	}
 }
-- 
2.39.2

