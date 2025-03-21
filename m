Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9835A6B92A
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 11:53:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49A9510E7A1;
	Fri, 21 Mar 2025 10:53:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iau8PUw3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D518A10E79F;
 Fri, 21 Mar 2025 10:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742554433; x=1774090433;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=96yJpuxT5omf4G/mlWlagykejm3csI3Rs7mGSjcxfUo=;
 b=iau8PUw3AoSXSkcrC+/J6P6FsozvgaIT7h+x/8vDwZAQ3BUyawCEJt4c
 H2iEc7h8GakbzBXUilBv0OYchY3/3QzwdSEAqDTnafL0i7k7JtECabqlj
 8ZcBNijI3cShWiBKDChxbwSXuTQGzb2YL75bGDxoHLN04SUEvxull9XPE
 D4j/S88T3jr2U8yH2jZO/iFp5A6t0TF/5Mzf5EG9v8cfp0KbhT0/1bnPS
 Rg/G151qD3kDM0z7kn69q4kis2tkGLbSxPnvNLMRZhbF3Kopb2WfkVyYU
 5K82bIZBQY1wTBX70hqohdmpbukM9x13AWEy/PLrqW7FXBcDlpEowYNS+ w==;
X-CSE-ConnectionGUID: 3OZevGyRR3eRdeihcCisEw==
X-CSE-MsgGUID: MngFEyO2RXqoPjeO4wIUuw==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="47697631"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="47697631"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 03:53:53 -0700
X-CSE-ConnectionGUID: sLeejXfQT5KUvwkyyoFXMQ==
X-CSE-MsgGUID: wVUfh2jwTTuEr06EN3NIsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="146595830"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 03:53:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 12/12] drm/i915/pch: convert intel_pch_refclk.c to struct
 intel_display
Date: Fri, 21 Mar 2025 12:52:56 +0200
Message-Id: <1bf35f05dc921e0ca548b0d0d8d7f5b7098e8140.1742554320.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1742554320.git.jani.nikula@intel.com>
References: <cover.1742554320.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Going forward, struct intel_display is the main display device data
pointer. Convert as much as possible of intel_pch_refclk.[ch] to struct
intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 .../drm/i915/display/intel_display_power.c    |   6 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   6 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |   6 +-
 .../gpu/drm/i915/display/intel_pch_refclk.c   | 126 ++++++++++--------
 .../gpu/drm/i915/display/intel_pch_refclk.h   |  18 +--
 drivers/gpu/drm/i915/i915_driver.c            |   2 +-
 7 files changed, 85 insertions(+), 81 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a24206535772..48282611db3e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7815,7 +7815,7 @@ void intel_setup_outputs(struct intel_display *display)
 			intel_encoder_possible_clones(encoder);
 	}
 
-	intel_init_pch_refclk(dev_priv);
+	intel_init_pch_refclk(display);
 
 	drm_helper_move_panel_connectors_to_head(display->drm);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index adeb4408eb49..c78315eb44fa 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1373,18 +1373,18 @@ static void hsw_enable_pc8(struct intel_display *display)
 		intel_de_rmw(display, SOUTH_DSPCLK_GATE_D,
 			     PCH_LP_PARTITION_LEVEL_DISABLE, 0);
 
-	lpt_disable_clkout_dp(dev_priv);
+	lpt_disable_clkout_dp(display);
 	hsw_disable_lcpll(display, true, true);
 }
 
 static void hsw_disable_pc8(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
+	struct drm_i915_private __maybe_unused *dev_priv = to_i915(display->drm);
 
 	drm_dbg_kms(display->drm, "Disabling package C8+\n");
 
 	hsw_restore_lcpll(display);
-	intel_init_pch_refclk(dev_priv);
+	intel_init_pch_refclk(display);
 
 	/* Many display registers don't survive PC8+ */
 #ifdef I915 /* FIXME */
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index c825a507b905..953cac2bd1dc 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -715,7 +715,6 @@ static void hsw_ddi_spll_enable(struct intel_display *display,
 static void hsw_ddi_wrpll_disable(struct intel_display *display,
 				  struct intel_shared_dpll *pll)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	const enum intel_dpll_id id = pll->info->id;
 
 	intel_de_rmw(display, WRPLL_CTL(id), WRPLL_PLL_ENABLE, 0);
@@ -726,13 +725,12 @@ static void hsw_ddi_wrpll_disable(struct intel_display *display,
 	 * that depend on it have been shut down.
 	 */
 	if (display->dpll.pch_ssc_use & BIT(id))
-		intel_init_pch_refclk(i915);
+		intel_init_pch_refclk(display);
 }
 
 static void hsw_ddi_spll_disable(struct intel_display *display,
 				 struct intel_shared_dpll *pll)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	enum intel_dpll_id id = pll->info->id;
 
 	intel_de_rmw(display, SPLL_CTL, SPLL_PLL_ENABLE, 0);
@@ -743,7 +741,7 @@ static void hsw_ddi_spll_disable(struct intel_display *display,
 	 * that depend on it have been shut down.
 	 */
 	if (display->dpll.pch_ssc_use & BIT(id))
-		intel_init_pch_refclk(i915);
+		intel_init_pch_refclk(display);
 }
 
 static bool hsw_ddi_wrpll_get_hw_state(struct intel_display *display,
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 2c8a6673fa81..27fb386c84c3 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -613,18 +613,16 @@ void lpt_pch_disable(struct intel_atomic_state *state,
 		     struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
 	lpt_disable_pch_transcoder(display);
 
-	lpt_disable_iclkip(dev_priv);
+	lpt_disable_iclkip(display);
 }
 
 void lpt_pch_get_config(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 tmp;
 
 	if ((intel_de_read(display, LPT_TRANSCONF) & TRANS_ENABLE) == 0)
@@ -639,7 +637,7 @@ void lpt_pch_get_config(struct intel_crtc_state *crtc_state)
 	intel_cpu_transcoder_get_m1_n1(crtc, crtc_state->cpu_transcoder,
 				       &crtc_state->fdi_m_n);
 
-	crtc_state->hw.adjusted_mode.crtc_clock = lpt_get_iclkip(dev_priv);
+	crtc_state->hw.adjusted_mode.crtc_clock = lpt_get_iclkip(display);
 }
 
 void intel_pch_sanitize(struct intel_display *display)
diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
index 33467de3d115..1307a478861a 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -11,27 +11,28 @@
 #include "intel_pch_refclk.h"
 #include "intel_sbi.h"
 
-static void lpt_fdi_reset_mphy(struct drm_i915_private *dev_priv)
+static void lpt_fdi_reset_mphy(struct intel_display *display)
 {
-	intel_de_rmw(dev_priv, SOUTH_CHICKEN2, 0, FDI_MPHY_IOSFSB_RESET_CTL);
+	intel_de_rmw(display, SOUTH_CHICKEN2, 0, FDI_MPHY_IOSFSB_RESET_CTL);
 
-	if (wait_for_us(intel_de_read(dev_priv, SOUTH_CHICKEN2) &
+	if (wait_for_us(intel_de_read(display, SOUTH_CHICKEN2) &
 			FDI_MPHY_IOSFSB_RESET_STATUS, 100))
-		drm_err(&dev_priv->drm, "FDI mPHY reset assert timeout\n");
+		drm_err(display->drm, "FDI mPHY reset assert timeout\n");
 
-	intel_de_rmw(dev_priv, SOUTH_CHICKEN2, FDI_MPHY_IOSFSB_RESET_CTL, 0);
+	intel_de_rmw(display, SOUTH_CHICKEN2, FDI_MPHY_IOSFSB_RESET_CTL, 0);
 
-	if (wait_for_us((intel_de_read(dev_priv, SOUTH_CHICKEN2) &
+	if (wait_for_us((intel_de_read(display, SOUTH_CHICKEN2) &
 			 FDI_MPHY_IOSFSB_RESET_STATUS) == 0, 100))
-		drm_err(&dev_priv->drm, "FDI mPHY reset de-assert timeout\n");
+		drm_err(display->drm, "FDI mPHY reset de-assert timeout\n");
 }
 
 /* WaMPhyProgramming:hsw */
-static void lpt_fdi_program_mphy(struct drm_i915_private *dev_priv)
+static void lpt_fdi_program_mphy(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 tmp;
 
-	lpt_fdi_reset_mphy(dev_priv);
+	lpt_fdi_reset_mphy(display);
 
 	tmp = intel_sbi_read(dev_priv, 0x8008, SBI_MPHY);
 	tmp &= ~(0xFF << 24);
@@ -103,11 +104,12 @@ static void lpt_fdi_program_mphy(struct drm_i915_private *dev_priv)
 	intel_sbi_write(dev_priv, 0x21EC, tmp, SBI_MPHY);
 }
 
-void lpt_disable_iclkip(struct drm_i915_private *dev_priv)
+void lpt_disable_iclkip(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 temp;
 
-	intel_de_write(dev_priv, PIXCLK_GATE, PIXCLK_GATE_GATE);
+	intel_de_write(display, PIXCLK_GATE, PIXCLK_GATE_GATE);
 
 	intel_sbi_lock(dev_priv);
 
@@ -175,24 +177,25 @@ int lpt_iclkip(const struct intel_crtc_state *crtc_state)
 /* Program iCLKIP clock to the desired frequency */
 void lpt_program_iclkip(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	int clock = crtc_state->hw.adjusted_mode.crtc_clock;
 	struct iclkip_params p;
 	u32 temp;
 
-	lpt_disable_iclkip(dev_priv);
+	lpt_disable_iclkip(display);
 
 	lpt_compute_iclkip(&p, clock);
-	drm_WARN_ON(&dev_priv->drm, lpt_iclkip_freq(&p) != clock);
+	drm_WARN_ON(display->drm, lpt_iclkip_freq(&p) != clock);
 
 	/* This should not happen with any sane values */
-	drm_WARN_ON(&dev_priv->drm, SBI_SSCDIVINTPHASE_DIVSEL(p.divsel) &
+	drm_WARN_ON(display->drm, SBI_SSCDIVINTPHASE_DIVSEL(p.divsel) &
 		    ~SBI_SSCDIVINTPHASE_DIVSEL_MASK);
-	drm_WARN_ON(&dev_priv->drm, SBI_SSCDIVINTPHASE_DIR(p.phasedir) &
+	drm_WARN_ON(display->drm, SBI_SSCDIVINTPHASE_DIR(p.phasedir) &
 		    ~SBI_SSCDIVINTPHASE_INCVAL_MASK);
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "iCLKIP clock: found settings for %dKHz refresh rate: auxdiv=%x, divsel=%x, phasedir=%x, phaseinc=%x\n",
 		    clock, p.auxdiv, p.divsel, p.phasedir, p.phaseinc);
 
@@ -224,15 +227,16 @@ void lpt_program_iclkip(const struct intel_crtc_state *crtc_state)
 	/* Wait for initialization time */
 	udelay(24);
 
-	intel_de_write(dev_priv, PIXCLK_GATE, PIXCLK_GATE_UNGATE);
+	intel_de_write(display, PIXCLK_GATE, PIXCLK_GATE_UNGATE);
 }
 
-int lpt_get_iclkip(struct drm_i915_private *dev_priv)
+int lpt_get_iclkip(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct iclkip_params p;
 	u32 temp;
 
-	if ((intel_de_read(dev_priv, PIXCLK_GATE) & PIXCLK_GATE_UNGATE) == 0)
+	if ((intel_de_read(display, PIXCLK_GATE) & PIXCLK_GATE_UNGATE) == 0)
 		return 0;
 
 	iclkip_params_init(&p);
@@ -268,15 +272,16 @@ int lpt_get_iclkip(struct drm_i915_private *dev_priv)
  * - Sequence to enable CLKOUT_DP without spread
  * - Sequence to enable CLKOUT_DP for FDI usage and configure PCH FDI I/O
  */
-static void lpt_enable_clkout_dp(struct drm_i915_private *dev_priv,
+static void lpt_enable_clkout_dp(struct intel_display *display,
 				 bool with_spread, bool with_fdi)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 reg, tmp;
 
-	if (drm_WARN(&dev_priv->drm, with_fdi && !with_spread,
+	if (drm_WARN(display->drm, with_fdi && !with_spread,
 		     "FDI requires downspread\n"))
 		with_spread = true;
-	if (drm_WARN(&dev_priv->drm, HAS_PCH_LPT_LP(dev_priv) &&
+	if (drm_WARN(display->drm, HAS_PCH_LPT_LP(dev_priv) &&
 		     with_fdi, "LP PCH doesn't have FDI\n"))
 		with_fdi = false;
 
@@ -295,7 +300,7 @@ static void lpt_enable_clkout_dp(struct drm_i915_private *dev_priv,
 		intel_sbi_write(dev_priv, SBI_SSCCTL, tmp, SBI_ICLK);
 
 		if (with_fdi)
-			lpt_fdi_program_mphy(dev_priv);
+			lpt_fdi_program_mphy(display);
 	}
 
 	reg = HAS_PCH_LPT_LP(dev_priv) ? SBI_GEN0 : SBI_DBUFF0;
@@ -307,8 +312,9 @@ static void lpt_enable_clkout_dp(struct drm_i915_private *dev_priv,
 }
 
 /* Sequence to disable CLKOUT_DP */
-void lpt_disable_clkout_dp(struct drm_i915_private *dev_priv)
+void lpt_disable_clkout_dp(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 reg, tmp;
 
 	intel_sbi_lock(dev_priv);
@@ -364,15 +370,16 @@ static const u16 sscdivintphase[] = {
  * < 0 slow down the clock, > 0 speed up the clock, 0 == no bend (135MHz)
  * change in clock period = -(steps / 10) * 5.787 ps
  */
-static void lpt_bend_clkout_dp(struct drm_i915_private *dev_priv, int steps)
+static void lpt_bend_clkout_dp(struct intel_display *display, int steps)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 tmp;
 	int idx = BEND_IDX(steps);
 
-	if (drm_WARN_ON(&dev_priv->drm, steps % 5 != 0))
+	if (drm_WARN_ON(display->drm, steps % 5 != 0))
 		return;
 
-	if (drm_WARN_ON(&dev_priv->drm, idx >= ARRAY_SIZE(sscdivintphase)))
+	if (drm_WARN_ON(display->drm, idx >= ARRAY_SIZE(sscdivintphase)))
 		return;
 
 	intel_sbi_lock(dev_priv);
@@ -393,10 +400,10 @@ static void lpt_bend_clkout_dp(struct drm_i915_private *dev_priv, int steps)
 
 #undef BEND_IDX
 
-static bool spll_uses_pch_ssc(struct drm_i915_private *dev_priv)
+static bool spll_uses_pch_ssc(struct intel_display *display)
 {
-	u32 fuse_strap = intel_de_read(dev_priv, FUSE_STRAP);
-	u32 ctl = intel_de_read(dev_priv, SPLL_CTL);
+	u32 fuse_strap = intel_de_read(display, FUSE_STRAP);
+	u32 ctl = intel_de_read(display, SPLL_CTL);
 
 	if ((ctl & SPLL_PLL_ENABLE) == 0)
 		return false;
@@ -405,18 +412,17 @@ static bool spll_uses_pch_ssc(struct drm_i915_private *dev_priv)
 	    (fuse_strap & HSW_CPU_SSC_ENABLE) == 0)
 		return true;
 
-	if (IS_BROADWELL(dev_priv) &&
+	if (display->platform.broadwell &&
 	    (ctl & SPLL_REF_MASK) == SPLL_REF_PCH_SSC_BDW)
 		return true;
 
 	return false;
 }
 
-static bool wrpll_uses_pch_ssc(struct drm_i915_private *dev_priv,
-			       enum intel_dpll_id id)
+static bool wrpll_uses_pch_ssc(struct intel_display *display, enum intel_dpll_id id)
 {
-	u32 fuse_strap = intel_de_read(dev_priv, FUSE_STRAP);
-	u32 ctl = intel_de_read(dev_priv, WRPLL_CTL(id));
+	u32 fuse_strap = intel_de_read(display, FUSE_STRAP);
+	u32 ctl = intel_de_read(display, WRPLL_CTL(id));
 
 	if ((ctl & WRPLL_PLL_ENABLE) == 0)
 		return false;
@@ -424,7 +430,7 @@ static bool wrpll_uses_pch_ssc(struct drm_i915_private *dev_priv,
 	if ((ctl & WRPLL_REF_MASK) == WRPLL_REF_PCH_SSC)
 		return true;
 
-	if ((IS_BROADWELL(dev_priv) || IS_HASWELL_ULT(dev_priv)) &&
+	if ((display->platform.broadwell || display->platform.haswell_ult) &&
 	    (ctl & WRPLL_REF_MASK) == WRPLL_REF_MUXED_SSC_BDW &&
 	    (fuse_strap & HSW_CPU_SSC_ENABLE) == 0)
 		return true;
@@ -432,12 +438,12 @@ static bool wrpll_uses_pch_ssc(struct drm_i915_private *dev_priv,
 	return false;
 }
 
-static void lpt_init_pch_refclk(struct drm_i915_private *dev_priv)
+static void lpt_init_pch_refclk(struct intel_display *display)
 {
 	struct intel_encoder *encoder;
 	bool has_fdi = false;
 
-	for_each_intel_encoder(&dev_priv->drm, encoder) {
+	for_each_intel_encoder(display->drm, encoder) {
 		switch (encoder->type) {
 		case INTEL_OUTPUT_ANALOG:
 			has_fdi = true;
@@ -462,37 +468,37 @@ static void lpt_init_pch_refclk(struct drm_i915_private *dev_priv)
 	 * clock hierarchy. That would also allow us to do
 	 * clock bending finally.
 	 */
-	dev_priv->display.dpll.pch_ssc_use = 0;
+	display->dpll.pch_ssc_use = 0;
 
-	if (spll_uses_pch_ssc(dev_priv)) {
-		drm_dbg_kms(&dev_priv->drm, "SPLL using PCH SSC\n");
-		dev_priv->display.dpll.pch_ssc_use |= BIT(DPLL_ID_SPLL);
+	if (spll_uses_pch_ssc(display)) {
+		drm_dbg_kms(display->drm, "SPLL using PCH SSC\n");
+		display->dpll.pch_ssc_use |= BIT(DPLL_ID_SPLL);
 	}
 
-	if (wrpll_uses_pch_ssc(dev_priv, DPLL_ID_WRPLL1)) {
-		drm_dbg_kms(&dev_priv->drm, "WRPLL1 using PCH SSC\n");
-		dev_priv->display.dpll.pch_ssc_use |= BIT(DPLL_ID_WRPLL1);
+	if (wrpll_uses_pch_ssc(display, DPLL_ID_WRPLL1)) {
+		drm_dbg_kms(display->drm, "WRPLL1 using PCH SSC\n");
+		display->dpll.pch_ssc_use |= BIT(DPLL_ID_WRPLL1);
 	}
 
-	if (wrpll_uses_pch_ssc(dev_priv, DPLL_ID_WRPLL2)) {
-		drm_dbg_kms(&dev_priv->drm, "WRPLL2 using PCH SSC\n");
-		dev_priv->display.dpll.pch_ssc_use |= BIT(DPLL_ID_WRPLL2);
+	if (wrpll_uses_pch_ssc(display, DPLL_ID_WRPLL2)) {
+		drm_dbg_kms(display->drm, "WRPLL2 using PCH SSC\n");
+		display->dpll.pch_ssc_use |= BIT(DPLL_ID_WRPLL2);
 	}
 
-	if (dev_priv->display.dpll.pch_ssc_use)
+	if (display->dpll.pch_ssc_use)
 		return;
 
 	if (has_fdi) {
-		lpt_bend_clkout_dp(dev_priv, 0);
-		lpt_enable_clkout_dp(dev_priv, true, true);
+		lpt_bend_clkout_dp(display, 0);
+		lpt_enable_clkout_dp(display, true, true);
 	} else {
-		lpt_disable_clkout_dp(dev_priv);
+		lpt_disable_clkout_dp(display);
 	}
 }
 
-static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
+static void ilk_init_pch_refclk(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_encoder *encoder;
 	struct intel_shared_dpll *pll;
 	int i;
@@ -607,7 +613,7 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 
 		/* SSC must be turned on before enabling the CPU output  */
 		if (intel_panel_use_ssc(display) && can_ssc) {
-			drm_dbg_kms(&dev_priv->drm, "Using SSC on panel\n");
+			drm_dbg_kms(display->drm, "Using SSC on panel\n");
 			val |= DREF_SSC1_ENABLE;
 		} else {
 			val &= ~DREF_SSC1_ENABLE;
@@ -623,7 +629,7 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 		/* Enable CPU source on CPU attached eDP */
 		if (has_cpu_edp) {
 			if (intel_panel_use_ssc(display) && can_ssc) {
-				drm_dbg_kms(&dev_priv->drm,
+				drm_dbg_kms(display->drm,
 					    "Using SSC on eDP\n");
 				val |= DREF_CPU_SOURCE_OUTPUT_DOWNSPREAD;
 			} else {
@@ -670,10 +676,12 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 /*
  * Initialize reference clocks when the driver loads
  */
-void intel_init_pch_refclk(struct drm_i915_private *dev_priv)
+void intel_init_pch_refclk(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
 	if (HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv))
-		ilk_init_pch_refclk(dev_priv);
+		ilk_init_pch_refclk(display);
 	else if (HAS_PCH_LPT(dev_priv))
-		lpt_init_pch_refclk(dev_priv);
+		lpt_init_pch_refclk(display);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.h b/drivers/gpu/drm/i915/display/intel_pch_refclk.h
index ae3403c0ced8..25cc53c568bc 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.h
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.h
@@ -8,25 +8,25 @@
 
 #include <linux/types.h>
 
-struct drm_i915_private;
 struct intel_crtc_state;
+struct intel_display;
 
 #ifdef I915
 void lpt_program_iclkip(const struct intel_crtc_state *crtc_state);
-void lpt_disable_iclkip(struct drm_i915_private *dev_priv);
-int lpt_get_iclkip(struct drm_i915_private *dev_priv);
+void lpt_disable_iclkip(struct intel_display *display);
+int lpt_get_iclkip(struct intel_display *display);
 int lpt_iclkip(const struct intel_crtc_state *crtc_state);
 
-void intel_init_pch_refclk(struct drm_i915_private *dev_priv);
-void lpt_disable_clkout_dp(struct drm_i915_private *dev_priv);
+void intel_init_pch_refclk(struct intel_display *display);
+void lpt_disable_clkout_dp(struct intel_display *display);
 #else
 static inline void lpt_program_iclkip(const struct intel_crtc_state *crtc_state)
 {
 }
-static inline void lpt_disable_iclkip(struct drm_i915_private *dev_priv)
+static inline void lpt_disable_iclkip(struct intel_display *display)
 {
 }
-static inline int lpt_get_iclkip(struct drm_i915_private *dev_priv)
+static inline int lpt_get_iclkip(struct intel_display *display)
 {
 	return 0;
 }
@@ -34,10 +34,10 @@ static inline int lpt_iclkip(const struct intel_crtc_state *crtc_state)
 {
 	return 0;
 }
-static inline void intel_init_pch_refclk(struct drm_i915_private *dev_priv)
+static inline void intel_init_pch_refclk(struct intel_display *display)
 {
 }
-static inline void lpt_disable_clkout_dp(struct drm_i915_private *dev_priv)
+static inline void lpt_disable_clkout_dp(struct intel_display *display)
 {
 }
 #endif
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index fcb5a6adf570..d78de7f620dd 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1211,7 +1211,7 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	intel_pps_unlock_regs_wa(display);
 
-	intel_init_pch_refclk(dev_priv);
+	intel_init_pch_refclk(display);
 
 	/*
 	 * Interrupts have to be enabled before any batches are run. If not the
-- 
2.39.5

