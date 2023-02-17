Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E0069AA2E
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 12:19:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20A3410EF6B;
	Fri, 17 Feb 2023 11:18:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72C1810EF6B
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Feb 2023 11:18:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676632735; x=1708168735;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BpqGm87HbQwVer06MNoZcbZEp/dzQUoIMlnFVMSzfsI=;
 b=gbnN5013JTSRSnex6OFJPGWyvk7P5hSIh7UJaJ4Nipzt9/w0ErLG2HNB
 lvU6jTj4ZvPp18bHJh8RtL0bgDixtRjba6XCUdcfMtO0yFuWZ/C8YX+Eb
 k/hcytEtRdkPXNtdk4z1fMYzFfVn4pDTLZtacnUWl0INg2AoYEqUdN8Mp
 U1zgm+c0+fvRWVuXy7sM5APgRzVow4A9Ax6VoIKoiGWGlRsO9rpxUyGDY
 rRpABn38H1pEEBZ/+ydiJD5EiX4PPiSeedTOrsxcgZneRccDwDKYFiL+D
 HnktahIvAdCVuy3PoslNT3ox44hw5qLmOo0kxb1xEIHP2vpVanczFmoee Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="333325102"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="333325102"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 03:18:54 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="844539407"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="844539407"
Received: from lab-ah.igk.intel.com ([10.102.42.211])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 03:18:51 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Feb 2023 12:18:36 +0100
Message-Id: <20230217111836.864959-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/display/power: use intel_de_rmw if
 possible
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The helper makes the code more compact and readable.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
v3:
    - just rebased
---
 .../drm/i915/display/intel_display_power.c    | 49 ++++-------
 .../i915/display/intel_display_power_well.c   | 82 ++++++-------------
 2 files changed, 39 insertions(+), 92 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 7222502a760ccb..743b919bb2cfd7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1260,9 +1260,7 @@ static void hsw_disable_lcpll(struct drm_i915_private *dev_priv,
 		drm_err(&dev_priv->drm, "D_COMP RCOMP still in progress\n");
 
 	if (allow_power_down) {
-		val = intel_de_read(dev_priv, LCPLL_CTL);
-		val |= LCPLL_POWER_DOWN_ALLOW;
-		intel_de_write(dev_priv, LCPLL_CTL, val);
+		intel_de_rmw(dev_priv, LCPLL_CTL, 0, LCPLL_POWER_DOWN_ALLOW);
 		intel_de_posting_read(dev_priv, LCPLL_CTL);
 	}
 }
@@ -1306,9 +1304,7 @@ static void hsw_restore_lcpll(struct drm_i915_private *dev_priv)
 		drm_err(&dev_priv->drm, "LCPLL not locked yet\n");
 
 	if (val & LCPLL_CD_SOURCE_FCLK) {
-		val = intel_de_read(dev_priv, LCPLL_CTL);
-		val &= ~LCPLL_CD_SOURCE_FCLK;
-		intel_de_write(dev_priv, LCPLL_CTL, val);
+		intel_de_rmw(dev_priv, LCPLL_CTL, LCPLL_CD_SOURCE_FCLK, 0);
 
 		if (wait_for_us((intel_de_read(dev_priv, LCPLL_CTL) &
 				 LCPLL_CD_SOURCE_FCLK_DONE) == 0, 1))
@@ -1347,15 +1343,11 @@ static void hsw_restore_lcpll(struct drm_i915_private *dev_priv)
  */
 static void hsw_enable_pc8(struct drm_i915_private *dev_priv)
 {
-	u32 val;
-
 	drm_dbg_kms(&dev_priv->drm, "Enabling package C8+\n");
 
-	if (HAS_PCH_LPT_LP(dev_priv)) {
-		val = intel_de_read(dev_priv, SOUTH_DSPCLK_GATE_D);
-		val &= ~PCH_LP_PARTITION_LEVEL_DISABLE;
-		intel_de_write(dev_priv, SOUTH_DSPCLK_GATE_D, val);
-	}
+	if (HAS_PCH_LPT_LP(dev_priv))
+		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D,
+			     PCH_LP_PARTITION_LEVEL_DISABLE, 0);
 
 	lpt_disable_clkout_dp(dev_priv);
 	hsw_disable_lcpll(dev_priv, true, true);
@@ -1363,25 +1355,21 @@ static void hsw_enable_pc8(struct drm_i915_private *dev_priv)
 
 static void hsw_disable_pc8(struct drm_i915_private *dev_priv)
 {
-	u32 val;
-
 	drm_dbg_kms(&dev_priv->drm, "Disabling package C8+\n");
 
 	hsw_restore_lcpll(dev_priv);
 	intel_init_pch_refclk(dev_priv);
 
-	if (HAS_PCH_LPT_LP(dev_priv)) {
-		val = intel_de_read(dev_priv, SOUTH_DSPCLK_GATE_D);
-		val |= PCH_LP_PARTITION_LEVEL_DISABLE;
-		intel_de_write(dev_priv, SOUTH_DSPCLK_GATE_D, val);
-	}
+	if (HAS_PCH_LPT_LP(dev_priv))
+		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D,
+			     0, PCH_LP_PARTITION_LEVEL_DISABLE);
 }
 
 static void intel_pch_reset_handshake(struct drm_i915_private *dev_priv,
 				      bool enable)
 {
 	i915_reg_t reg;
-	u32 reset_bits, val;
+	u32 reset_bits;
 
 	if (IS_IVYBRIDGE(dev_priv)) {
 		reg = GEN7_MSG_CTL;
@@ -1394,14 +1382,7 @@ static void intel_pch_reset_handshake(struct drm_i915_private *dev_priv,
 	if (DISPLAY_VER(dev_priv) >= 14)
 		reset_bits |= MTL_RESET_PICA_HANDSHAKE_EN;
 
-	val = intel_de_read(dev_priv, reg);
-
-	if (enable)
-		val |= reset_bits;
-	else
-		val &= ~reset_bits;
-
-	intel_de_write(dev_priv, reg, val);
+	intel_de_rmw(dev_priv, reg, reset_bits, enable ? reset_bits : 0);
 }
 
 static void skl_display_core_init(struct drm_i915_private *dev_priv,
@@ -1616,7 +1597,6 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 {
 	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
 	struct i915_power_well *well;
-	u32 val;
 
 	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
 
@@ -1668,11 +1648,10 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 		intel_dmc_load_program(dev_priv);
 
 	/* Wa_14011508470:tgl,dg1,rkl,adl-s,adl-p */
-	if (DISPLAY_VER(dev_priv) >= 12) {
-		val = DCPR_CLEAR_MEMSTAT_DIS | DCPR_SEND_RESP_IMM |
-		      DCPR_MASK_LPMODE | DCPR_MASK_MAXLATENCY_MEMUP_CLR;
-		intel_de_rmw(dev_priv, GEN11_CHICKEN_DCPR_2, 0, val);
-	}
+	if (DISPLAY_VER(dev_priv) >= 12)
+		intel_de_rmw(dev_priv, GEN11_CHICKEN_DCPR_2, 0,
+			     DCPR_CLEAR_MEMSTAT_DIS | DCPR_SEND_RESP_IMM |
+			     DCPR_MASK_LPMODE | DCPR_MASK_MAXLATENCY_MEMUP_CLR);
 
 	/* Wa_14011503030:xelpd */
 	if (DISPLAY_VER(dev_priv) >= 13)
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 56a20bf5825b4a..6d1d3284eddd3a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -333,7 +333,6 @@ static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
 {
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
-	u32 val;
 
 	if (power_well->desc->has_fuses) {
 		enum skl_power_gate pg;
@@ -356,9 +355,7 @@ static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
 			gen9_wait_for_power_well_fuses(dev_priv, SKL_PG0);
 	}
 
-	val = intel_de_read(dev_priv, regs->driver);
-	intel_de_write(dev_priv, regs->driver,
-		       val | HSW_PWR_WELL_CTL_REQ(pw_idx));
+	intel_de_rmw(dev_priv, regs->driver, 0, HSW_PWR_WELL_CTL_REQ(pw_idx));
 
 	hsw_wait_for_power_well_enable(dev_priv, power_well, false);
 
@@ -380,14 +377,11 @@ static void hsw_power_well_disable(struct drm_i915_private *dev_priv,
 {
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
-	u32 val;
 
 	hsw_power_well_pre_disable(dev_priv,
 				   power_well->desc->irq_pipe_mask);
 
-	val = intel_de_read(dev_priv, regs->driver);
-	intel_de_write(dev_priv, regs->driver,
-		       val & ~HSW_PWR_WELL_CTL_REQ(pw_idx));
+	intel_de_rmw(dev_priv, regs->driver, HSW_PWR_WELL_CTL_REQ(pw_idx), 0);
 	hsw_wait_for_power_well_disable(dev_priv, power_well);
 }
 
@@ -411,29 +405,22 @@ icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
 	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
-	u32 val;
 
 	drm_WARN_ON(&dev_priv->drm, !IS_ICELAKE(dev_priv));
 
-	val = intel_de_read(dev_priv, regs->driver);
-	intel_de_write(dev_priv, regs->driver,
-		       val | HSW_PWR_WELL_CTL_REQ(pw_idx));
+	intel_de_rmw(dev_priv, regs->driver, 0, HSW_PWR_WELL_CTL_REQ(pw_idx));
 
-	if (DISPLAY_VER(dev_priv) < 12) {
-		val = intel_de_read(dev_priv, ICL_PORT_CL_DW12(phy));
-		intel_de_write(dev_priv, ICL_PORT_CL_DW12(phy),
-			       val | ICL_LANE_ENABLE_AUX);
-	}
+	if (DISPLAY_VER(dev_priv) < 12)
+		intel_de_rmw(dev_priv, ICL_PORT_CL_DW12(phy),
+			     0, ICL_LANE_ENABLE_AUX);
 
 	hsw_wait_for_power_well_enable(dev_priv, power_well, false);
 
 	/* Display WA #1178: icl */
 	if (pw_idx >= ICL_PW_CTL_IDX_AUX_A && pw_idx <= ICL_PW_CTL_IDX_AUX_B &&
-	    !intel_port_is_edp(dev_priv, (enum port)phy)) {
-		val = intel_de_read(dev_priv, ICL_AUX_ANAOVRD1(pw_idx));
-		val |= ICL_AUX_ANAOVRD1_ENABLE | ICL_AUX_ANAOVRD1_LDO_BYPASS;
-		intel_de_write(dev_priv, ICL_AUX_ANAOVRD1(pw_idx), val);
-	}
+	    !intel_port_is_edp(dev_priv, (enum port)phy))
+		intel_de_rmw(dev_priv, ICL_AUX_ANAOVRD1(pw_idx),
+			     0, ICL_AUX_ANAOVRD1_ENABLE | ICL_AUX_ANAOVRD1_LDO_BYPASS);
 }
 
 static void
@@ -443,17 +430,12 @@ icl_combo_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
 	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
-	u32 val;
 
 	drm_WARN_ON(&dev_priv->drm, !IS_ICELAKE(dev_priv));
 
-	val = intel_de_read(dev_priv, ICL_PORT_CL_DW12(phy));
-	intel_de_write(dev_priv, ICL_PORT_CL_DW12(phy),
-		       val & ~ICL_LANE_ENABLE_AUX);
+	intel_de_rmw(dev_priv, ICL_PORT_CL_DW12(phy), ICL_LANE_ENABLE_AUX, 0);
 
-	val = intel_de_read(dev_priv, regs->driver);
-	intel_de_write(dev_priv, regs->driver,
-		       val & ~HSW_PWR_WELL_CTL_REQ(pw_idx));
+	intel_de_rmw(dev_priv, regs->driver, HSW_PWR_WELL_CTL_REQ(pw_idx), 0);
 
 	hsw_wait_for_power_well_disable(dev_priv, power_well);
 }
@@ -515,19 +497,15 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	bool is_tbt = power_well->desc->is_tc_tbt;
 	bool timeout_expected;
-	u32 val;
 
 	icl_tc_port_assert_ref_held(dev_priv, power_well, dig_port);
 
-	val = intel_de_read(dev_priv, DP_AUX_CH_CTL(aux_ch));
-	val &= ~DP_AUX_CH_CTL_TBT_IO;
-	if (is_tbt)
-		val |= DP_AUX_CH_CTL_TBT_IO;
-	intel_de_write(dev_priv, DP_AUX_CH_CTL(aux_ch), val);
+	intel_de_rmw(dev_priv, DP_AUX_CH_CTL(aux_ch),
+		     DP_AUX_CH_CTL_TBT_IO, is_tbt ? DP_AUX_CH_CTL_TBT_IO : 0);
 
-	val = intel_de_read(dev_priv, regs->driver);
-	intel_de_write(dev_priv, regs->driver,
-		       val | HSW_PWR_WELL_CTL_REQ(i915_power_well_instance(power_well)->hsw.idx));
+	intel_de_rmw(dev_priv, regs->driver,
+		     0,
+		     HSW_PWR_WELL_CTL_REQ(i915_power_well_instance(power_well)->hsw.idx));
 
 	/*
 	 * An AUX timeout is expected if the TBT DP tunnel is down,
@@ -789,12 +767,8 @@ static void tgl_enable_dc3co(struct drm_i915_private *dev_priv)
 
 static void tgl_disable_dc3co(struct drm_i915_private *dev_priv)
 {
-	u32 val;
-
 	drm_dbg_kms(&dev_priv->drm, "Disabling DC3CO\n");
-	val = intel_de_read(dev_priv, DC_STATE_EN);
-	val &= ~DC_STATE_DC3CO_STATUS;
-	intel_de_write(dev_priv, DC_STATE_EN, val);
+	intel_de_rmw(dev_priv, DC_STATE_EN, DC_STATE_DC3CO_STATUS, 0);
 	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
 	/*
 	 * Delay of 200us DC3CO Exit time B.Spec 49196
@@ -833,8 +807,8 @@ void gen9_enable_dc5(struct drm_i915_private *dev_priv)
 
 	/* Wa Display #1183: skl,kbl,cfl */
 	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv))
-		intel_de_write(dev_priv, GEN8_CHICKEN_DCPR_1,
-			       intel_de_read(dev_priv, GEN8_CHICKEN_DCPR_1) | SKL_SELECT_ALTERNATE_DC_EXIT);
+		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
+			     0, SKL_SELECT_ALTERNATE_DC_EXIT);
 
 	gen9_set_dc_state(dev_priv, DC_STATE_EN_UPTO_DC5);
 }
@@ -860,8 +834,8 @@ void skl_enable_dc6(struct drm_i915_private *dev_priv)
 
 	/* Wa Display #1183: skl,kbl,cfl */
 	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv))
-		intel_de_write(dev_priv, GEN8_CHICKEN_DCPR_1,
-			       intel_de_read(dev_priv, GEN8_CHICKEN_DCPR_1) | SKL_SELECT_ALTERNATE_DC_EXIT);
+		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
+			     0, SKL_SELECT_ALTERNATE_DC_EXIT);
 
 	gen9_set_dc_state(dev_priv, DC_STATE_EN_UPTO_DC6);
 }
@@ -1162,18 +1136,14 @@ static bool vlv_power_well_enabled(struct drm_i915_private *dev_priv,
 
 static void vlv_init_display_clock_gating(struct drm_i915_private *dev_priv)
 {
-	u32 val;
-
 	/*
 	 * On driver load, a pipe may be active and driving a DSI display.
 	 * Preserve DPOUNIT_CLOCK_GATE_DISABLE to avoid the pipe getting stuck
 	 * (and never recovering) in this case. intel_dsi_post_disable() will
 	 * clear it when we turn off the display.
 	 */
-	val = intel_de_read(dev_priv, DSPCLK_GATE_D(dev_priv));
-	val &= DPOUNIT_CLOCK_GATE_DISABLE;
-	val |= VRHUNIT_CLOCK_GATE_DISABLE;
-	intel_de_write(dev_priv, DSPCLK_GATE_D(dev_priv), val);
+	intel_de_rmw(dev_priv, DSPCLK_GATE_D(dev_priv),
+		     ~DPOUNIT_CLOCK_GATE_DISABLE, VRHUNIT_CLOCK_GATE_DISABLE);
 
 	/*
 	 * Disable trickle feed and enable pnd deadline calculation
@@ -1289,8 +1259,7 @@ static void vlv_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
 	 * both PLLs disabled, or we risk losing DPIO and PLL
 	 * synchronization.
 	 */
-	intel_de_write(dev_priv, DPIO_CTL,
-		       intel_de_read(dev_priv, DPIO_CTL) | DPIO_CMNRST);
+	intel_de_rmw(dev_priv, DPIO_CTL, 0, DPIO_CMNRST);
 }
 
 static void vlv_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
@@ -1302,8 +1271,7 @@ static void vlv_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
 		assert_pll_disabled(dev_priv, pipe);
 
 	/* Assert common reset */
-	intel_de_write(dev_priv, DPIO_CTL,
-		       intel_de_read(dev_priv, DPIO_CTL) & ~DPIO_CMNRST);
+	intel_de_rmw(dev_priv, DPIO_CTL, DPIO_CMNRST, 0);
 
 	vlv_set_power_well(dev_priv, power_well, false);
 }
-- 
2.34.1

