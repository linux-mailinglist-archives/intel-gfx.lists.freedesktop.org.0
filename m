Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE09C1485FC
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 14:25:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23CBD72A75;
	Fri, 24 Jan 2020 13:25:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EF8B72A75
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 13:25:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:25:38 -0800
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="222620237"
Received: from omarkovx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.60])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:25:33 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 15:25:29 +0200
Message-Id: <5ea211ef4291e9280fbbb27fbb38741ea2829614.1579871655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579871655.git.jani.nikula@intel.com>
References: <cover.1579871655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [RFC 08/33] drm/i915/display: use intel_de_*()
 functions for register access
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The implicit "dev_priv" local variable use has been a long-standing pain
point in the register access macros I915_READ(), I915_WRITE(),
POSTING_READ(), I915_READ_FW(), and I915_WRITE_FW().

Replace them with the corresponding new display engine register
accessors intel_de_read(), intel_de_write(), intel_de_posting_read(),
intel_de_read_fw(), and intel_de_write_fw().

No functional changes.

Generated using the following semantic patch:

@@
expression REG, OFFSET;
@@
- I915_READ(REG)
+ intel_de_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- POSTING_READ(REG)
+ intel_de_posting_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE(REG, OFFSET)
+ intel_de_write(dev_priv, REG, OFFSET)

@@
expression REG;
@@
- I915_READ_FW(REG)
+ intel_de_read_fw(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE_FW(REG, OFFSET)
+ intel_de_write_fw(dev_priv, REG, OFFSET)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 1171 ++++++++++--------
 1 file changed, 622 insertions(+), 549 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 79f9054078ea..c938c1071eff 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -518,13 +518,11 @@ static void
 skl_wa_827(struct drm_i915_private *dev_priv, enum pipe pipe, bool enable)
 {
 	if (enable)
-		I915_WRITE(CLKGATE_DIS_PSL(pipe),
-			   I915_READ(CLKGATE_DIS_PSL(pipe)) |
-			   DUPS1_GATING_DIS | DUPS2_GATING_DIS);
+		intel_de_write(dev_priv, CLKGATE_DIS_PSL(pipe),
+		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) | DUPS1_GATING_DIS | DUPS2_GATING_DIS);
 	else
-		I915_WRITE(CLKGATE_DIS_PSL(pipe),
-			   I915_READ(CLKGATE_DIS_PSL(pipe)) &
-			   ~(DUPS1_GATING_DIS | DUPS2_GATING_DIS));
+		intel_de_write(dev_priv, CLKGATE_DIS_PSL(pipe),
+		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) & ~(DUPS1_GATING_DIS | DUPS2_GATING_DIS));
 }
 
 /* Wa_2006604312:icl */
@@ -533,11 +531,11 @@ icl_wa_scalerclkgating(struct drm_i915_private *dev_priv, enum pipe pipe,
 		       bool enable)
 {
 	if (enable)
-		I915_WRITE(CLKGATE_DIS_PSL(pipe),
-			   I915_READ(CLKGATE_DIS_PSL(pipe)) | DPFR_GATING_DIS);
+		intel_de_write(dev_priv, CLKGATE_DIS_PSL(pipe),
+		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) | DPFR_GATING_DIS);
 	else
-		I915_WRITE(CLKGATE_DIS_PSL(pipe),
-			   I915_READ(CLKGATE_DIS_PSL(pipe)) & ~DPFR_GATING_DIS);
+		intel_de_write(dev_priv, CLKGATE_DIS_PSL(pipe),
+		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) & ~DPFR_GATING_DIS);
 }
 
 static bool
@@ -1049,9 +1047,9 @@ static bool pipe_scanline_is_moving(struct drm_i915_private *dev_priv,
 	else
 		line_mask = DSL_LINEMASK_GEN3;
 
-	line1 = I915_READ(reg) & line_mask;
+	line1 = intel_de_read(dev_priv, reg) & line_mask;
 	msleep(5);
-	line2 = I915_READ(reg) & line_mask;
+	line2 = intel_de_read(dev_priv, reg) & line_mask;
 
 	return line1 != line2;
 }
@@ -1103,7 +1101,7 @@ void assert_pll(struct drm_i915_private *dev_priv,
 	u32 val;
 	bool cur_state;
 
-	val = I915_READ(DPLL(pipe));
+	val = intel_de_read(dev_priv, DPLL(pipe));
 	cur_state = !!(val & DPLL_VCO_ENABLE);
 	I915_STATE_WARN(cur_state != state,
 	     "PLL state assertion failure (expected %s, current %s)\n",
@@ -1139,10 +1137,11 @@ static void assert_fdi_tx(struct drm_i915_private *dev_priv,
 		 * so pipe->transcoder cast is fine here.
 		 */
 		enum transcoder cpu_transcoder = (enum transcoder)pipe;
-		u32 val = I915_READ(TRANS_DDI_FUNC_CTL(cpu_transcoder));
+		u32 val = intel_de_read(dev_priv,
+					TRANS_DDI_FUNC_CTL(cpu_transcoder));
 		cur_state = !!(val & TRANS_DDI_FUNC_ENABLE);
 	} else {
-		u32 val = I915_READ(FDI_TX_CTL(pipe));
+		u32 val = intel_de_read(dev_priv, FDI_TX_CTL(pipe));
 		cur_state = !!(val & FDI_TX_ENABLE);
 	}
 	I915_STATE_WARN(cur_state != state,
@@ -1158,7 +1157,7 @@ static void assert_fdi_rx(struct drm_i915_private *dev_priv,
 	u32 val;
 	bool cur_state;
 
-	val = I915_READ(FDI_RX_CTL(pipe));
+	val = intel_de_read(dev_priv, FDI_RX_CTL(pipe));
 	cur_state = !!(val & FDI_RX_ENABLE);
 	I915_STATE_WARN(cur_state != state,
 	     "FDI RX state assertion failure (expected %s, current %s)\n",
@@ -1180,7 +1179,7 @@ static void assert_fdi_tx_pll_enabled(struct drm_i915_private *dev_priv,
 	if (HAS_DDI(dev_priv))
 		return;
 
-	val = I915_READ(FDI_TX_CTL(pipe));
+	val = intel_de_read(dev_priv, FDI_TX_CTL(pipe));
 	I915_STATE_WARN(!(val & FDI_TX_PLL_ENABLE), "FDI TX PLL assertion failure, should be active but is disabled\n");
 }
 
@@ -1190,7 +1189,7 @@ void assert_fdi_rx_pll(struct drm_i915_private *dev_priv,
 	u32 val;
 	bool cur_state;
 
-	val = I915_READ(FDI_RX_CTL(pipe));
+	val = intel_de_read(dev_priv, FDI_RX_CTL(pipe));
 	cur_state = !!(val & FDI_RX_PLL_ENABLE);
 	I915_STATE_WARN(cur_state != state,
 	     "FDI RX PLL assertion failure (expected %s, current %s)\n",
@@ -1211,7 +1210,7 @@ void assert_panel_unlocked(struct drm_i915_private *dev_priv, enum pipe pipe)
 		u32 port_sel;
 
 		pp_reg = PP_CONTROL(0);
-		port_sel = I915_READ(PP_ON_DELAYS(0)) & PANEL_PORT_SELECT_MASK;
+		port_sel = intel_de_read(dev_priv, PP_ON_DELAYS(0)) & PANEL_PORT_SELECT_MASK;
 
 		switch (port_sel) {
 		case PANEL_PORT_SELECT_LVDS:
@@ -1238,13 +1237,13 @@ void assert_panel_unlocked(struct drm_i915_private *dev_priv, enum pipe pipe)
 		u32 port_sel;
 
 		pp_reg = PP_CONTROL(0);
-		port_sel = I915_READ(PP_ON_DELAYS(0)) & PANEL_PORT_SELECT_MASK;
+		port_sel = intel_de_read(dev_priv, PP_ON_DELAYS(0)) & PANEL_PORT_SELECT_MASK;
 
 		WARN_ON(port_sel != PANEL_PORT_SELECT_LVDS);
 		intel_lvds_port_enabled(dev_priv, LVDS, &panel_pipe);
 	}
 
-	val = I915_READ(pp_reg);
+	val = intel_de_read(dev_priv, pp_reg);
 	if (!(val & PANEL_POWER_ON) ||
 	    ((val & PANEL_UNLOCK_MASK) == PANEL_UNLOCK_REGS))
 		locked = false;
@@ -1268,7 +1267,7 @@ void assert_pipe(struct drm_i915_private *dev_priv,
 	power_domain = POWER_DOMAIN_TRANSCODER(cpu_transcoder);
 	wakeref = intel_display_power_get_if_enabled(dev_priv, power_domain);
 	if (wakeref) {
-		u32 val = I915_READ(PIPECONF(cpu_transcoder));
+		u32 val = intel_de_read(dev_priv, PIPECONF(cpu_transcoder));
 		cur_state = !!(val & PIPECONF_ENABLE);
 
 		intel_display_power_put(dev_priv, power_domain, wakeref);
@@ -1318,7 +1317,7 @@ void assert_pch_transcoder_disabled(struct drm_i915_private *dev_priv,
 	u32 val;
 	bool enabled;
 
-	val = I915_READ(PCH_TRANSCONF(pipe));
+	val = intel_de_read(dev_priv, PCH_TRANSCONF(pipe));
 	enabled = !!(val & TRANS_ENABLE);
 	I915_STATE_WARN(enabled,
 	     "transcoder assertion failed, should be off on pipe %c but is still active\n",
@@ -1392,8 +1391,8 @@ static void _vlv_enable_pll(struct intel_crtc *crtc,
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	I915_WRITE(DPLL(pipe), pipe_config->dpll_hw_state.dpll);
-	POSTING_READ(DPLL(pipe));
+	intel_de_write(dev_priv, DPLL(pipe), pipe_config->dpll_hw_state.dpll);
+	intel_de_posting_read(dev_priv, DPLL(pipe));
 	udelay(150);
 
 	if (intel_de_wait_for_set(dev_priv, DPLL(pipe), DPLL_LOCK_VLV, 1))
@@ -1414,8 +1413,9 @@ static void vlv_enable_pll(struct intel_crtc *crtc,
 	if (pipe_config->dpll_hw_state.dpll & DPLL_VCO_ENABLE)
 		_vlv_enable_pll(crtc, pipe_config);
 
-	I915_WRITE(DPLL_MD(pipe), pipe_config->dpll_hw_state.dpll_md);
-	POSTING_READ(DPLL_MD(pipe));
+	intel_de_write(dev_priv, DPLL_MD(pipe),
+		       pipe_config->dpll_hw_state.dpll_md);
+	intel_de_posting_read(dev_priv, DPLL_MD(pipe));
 }
 
 
@@ -1442,7 +1442,7 @@ static void _chv_enable_pll(struct intel_crtc *crtc,
 	udelay(1);
 
 	/* Enable PLL */
-	I915_WRITE(DPLL(pipe), pipe_config->dpll_hw_state.dpll);
+	intel_de_write(dev_priv, DPLL(pipe), pipe_config->dpll_hw_state.dpll);
 
 	/* Check PLL is locked */
 	if (intel_de_wait_for_set(dev_priv, DPLL(pipe), DPLL_LOCK_VLV, 1))
@@ -1470,19 +1470,21 @@ static void chv_enable_pll(struct intel_crtc *crtc,
 		 * DPLLCMD is AWOL. Use chicken bits to propagate
 		 * the value from DPLLBMD to either pipe B or C.
 		 */
-		I915_WRITE(CBR4_VLV, CBR_DPLLBMD_PIPE(pipe));
-		I915_WRITE(DPLL_MD(PIPE_B), pipe_config->dpll_hw_state.dpll_md);
-		I915_WRITE(CBR4_VLV, 0);
+		intel_de_write(dev_priv, CBR4_VLV, CBR_DPLLBMD_PIPE(pipe));
+		intel_de_write(dev_priv, DPLL_MD(PIPE_B),
+			       pipe_config->dpll_hw_state.dpll_md);
+		intel_de_write(dev_priv, CBR4_VLV, 0);
 		dev_priv->chv_dpll_md[pipe] = pipe_config->dpll_hw_state.dpll_md;
 
 		/*
 		 * DPLLB VGA mode also seems to cause problems.
 		 * We should always have it disabled.
 		 */
-		WARN_ON((I915_READ(DPLL(PIPE_B)) & DPLL_VGA_MODE_DIS) == 0);
+		WARN_ON((intel_de_read(dev_priv, DPLL(PIPE_B)) & DPLL_VGA_MODE_DIS) == 0);
 	} else {
-		I915_WRITE(DPLL_MD(pipe), pipe_config->dpll_hw_state.dpll_md);
-		POSTING_READ(DPLL_MD(pipe));
+		intel_de_write(dev_priv, DPLL_MD(pipe),
+			       pipe_config->dpll_hw_state.dpll_md);
+		intel_de_posting_read(dev_priv, DPLL_MD(pipe));
 	}
 }
 
@@ -1513,29 +1515,29 @@ static void i9xx_enable_pll(struct intel_crtc *crtc,
 	 * the P1/P2 dividers. Otherwise the DPLL will keep using the old
 	 * dividers, even though the register value does change.
 	 */
-	I915_WRITE(reg, dpll & ~DPLL_VGA_MODE_DIS);
-	I915_WRITE(reg, dpll);
+	intel_de_write(dev_priv, reg, dpll & ~DPLL_VGA_MODE_DIS);
+	intel_de_write(dev_priv, reg, dpll);
 
 	/* Wait for the clocks to stabilize. */
-	POSTING_READ(reg);
+	intel_de_posting_read(dev_priv, reg);
 	udelay(150);
 
 	if (INTEL_GEN(dev_priv) >= 4) {
-		I915_WRITE(DPLL_MD(crtc->pipe),
-			   crtc_state->dpll_hw_state.dpll_md);
+		intel_de_write(dev_priv, DPLL_MD(crtc->pipe),
+			       crtc_state->dpll_hw_state.dpll_md);
 	} else {
 		/* The pixel multiplier can only be updated once the
 		 * DPLL is enabled and the clocks are stable.
 		 *
 		 * So write it again.
 		 */
-		I915_WRITE(reg, dpll);
+		intel_de_write(dev_priv, reg, dpll);
 	}
 
 	/* We do this three times for luck */
 	for (i = 0; i < 3; i++) {
-		I915_WRITE(reg, dpll);
-		POSTING_READ(reg);
+		intel_de_write(dev_priv, reg, dpll);
+		intel_de_posting_read(dev_priv, reg);
 		udelay(150); /* wait for warmup */
 	}
 }
@@ -1553,8 +1555,8 @@ static void i9xx_disable_pll(const struct intel_crtc_state *crtc_state)
 	/* Make sure the pipe isn't still relying on us */
 	assert_pipe_disabled(dev_priv, crtc_state->cpu_transcoder);
 
-	I915_WRITE(DPLL(pipe), DPLL_VGA_MODE_DIS);
-	POSTING_READ(DPLL(pipe));
+	intel_de_write(dev_priv, DPLL(pipe), DPLL_VGA_MODE_DIS);
+	intel_de_posting_read(dev_priv, DPLL(pipe));
 }
 
 static void vlv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
@@ -1569,8 +1571,8 @@ static void vlv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
 	if (pipe != PIPE_A)
 		val |= DPLL_INTEGRATED_CRI_CLK_VLV;
 
-	I915_WRITE(DPLL(pipe), val);
-	POSTING_READ(DPLL(pipe));
+	intel_de_write(dev_priv, DPLL(pipe), val);
+	intel_de_posting_read(dev_priv, DPLL(pipe));
 }
 
 static void chv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
@@ -1586,8 +1588,8 @@ static void chv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
 	if (pipe != PIPE_A)
 		val |= DPLL_INTEGRATED_CRI_CLK_VLV;
 
-	I915_WRITE(DPLL(pipe), val);
-	POSTING_READ(DPLL(pipe));
+	intel_de_write(dev_priv, DPLL(pipe), val);
+	intel_de_posting_read(dev_priv, DPLL(pipe));
 
 	vlv_dpio_get(dev_priv);
 
@@ -1628,7 +1630,8 @@ void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
 				       port_mask, expected_mask, 1000))
 		WARN(1, "timed out waiting for [ENCODER:%d:%s] port ready: got 0x%x, expected 0x%x\n",
 		     dport->base.base.base.id, dport->base.base.name,
-		     I915_READ(dpll_reg) & port_mask, expected_mask);
+		     intel_de_read(dev_priv, dpll_reg) & port_mask,
+		     expected_mask);
 }
 
 static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
@@ -1648,7 +1651,7 @@ static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
 
 	if (HAS_PCH_CPT(dev_priv)) {
 		reg = TRANS_CHICKEN2(pipe);
-		val = I915_READ(reg);
+		val = intel_de_read(dev_priv, reg);
 		/*
 		 * Workaround: Set the timing override bit
 		 * before enabling the pch transcoder.
@@ -1657,12 +1660,12 @@ static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
 		/* Configure frame start delay to match the CPU */
 		val &= ~TRANS_CHICKEN2_FRAME_START_DELAY_MASK;
 		val |= TRANS_CHICKEN2_FRAME_START_DELAY(0);
-		I915_WRITE(reg, val);
+		intel_de_write(dev_priv, reg, val);
 	}
 
 	reg = PCH_TRANSCONF(pipe);
-	val = I915_READ(reg);
-	pipeconf_val = I915_READ(PIPECONF(pipe));
+	val = intel_de_read(dev_priv, reg);
+	pipeconf_val = intel_de_read(dev_priv, PIPECONF(pipe));
 
 	if (HAS_PCH_IBX(dev_priv)) {
 		/* Configure frame start delay to match the CPU */
@@ -1692,7 +1695,7 @@ static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
 		val |= TRANS_PROGRESSIVE;
 	}
 
-	I915_WRITE(reg, val | TRANS_ENABLE);
+	intel_de_write(dev_priv, reg, val | TRANS_ENABLE);
 	if (intel_de_wait_for_set(dev_priv, reg, TRANS_STATE_ENABLE, 100))
 		DRM_ERROR("failed to enable transcoder %c\n", pipe_name(pipe));
 }
@@ -1706,16 +1709,16 @@ static void lpt_enable_pch_transcoder(struct drm_i915_private *dev_priv,
 	assert_fdi_tx_enabled(dev_priv, (enum pipe) cpu_transcoder);
 	assert_fdi_rx_enabled(dev_priv, PIPE_A);
 
-	val = I915_READ(TRANS_CHICKEN2(PIPE_A));
+	val = intel_de_read(dev_priv, TRANS_CHICKEN2(PIPE_A));
 	/* Workaround: set timing override bit. */
 	val |= TRANS_CHICKEN2_TIMING_OVERRIDE;
 	/* Configure frame start delay to match the CPU */
 	val &= ~TRANS_CHICKEN2_FRAME_START_DELAY_MASK;
 	val |= TRANS_CHICKEN2_FRAME_START_DELAY(0);
-	I915_WRITE(TRANS_CHICKEN2(PIPE_A), val);
+	intel_de_write(dev_priv, TRANS_CHICKEN2(PIPE_A), val);
 
 	val = TRANS_ENABLE;
-	pipeconf_val = I915_READ(PIPECONF(cpu_transcoder));
+	pipeconf_val = intel_de_read(dev_priv, PIPECONF(cpu_transcoder));
 
 	if ((pipeconf_val & PIPECONF_INTERLACE_MASK_HSW) ==
 	    PIPECONF_INTERLACED_ILK)
@@ -1723,7 +1726,7 @@ static void lpt_enable_pch_transcoder(struct drm_i915_private *dev_priv,
 	else
 		val |= TRANS_PROGRESSIVE;
 
-	I915_WRITE(LPT_TRANSCONF, val);
+	intel_de_write(dev_priv, LPT_TRANSCONF, val);
 	if (intel_de_wait_for_set(dev_priv, LPT_TRANSCONF,
 				  TRANS_STATE_ENABLE, 100))
 		DRM_ERROR("Failed to enable PCH transcoder\n");
@@ -1743,9 +1746,9 @@ static void ilk_disable_pch_transcoder(struct drm_i915_private *dev_priv,
 	assert_pch_ports_disabled(dev_priv, pipe);
 
 	reg = PCH_TRANSCONF(pipe);
-	val = I915_READ(reg);
+	val = intel_de_read(dev_priv, reg);
 	val &= ~TRANS_ENABLE;
-	I915_WRITE(reg, val);
+	intel_de_write(dev_priv, reg, val);
 	/* wait for PCH transcoder off, transcoder state */
 	if (intel_de_wait_for_clear(dev_priv, reg, TRANS_STATE_ENABLE, 50))
 		DRM_ERROR("failed to disable transcoder %c\n", pipe_name(pipe));
@@ -1753,9 +1756,9 @@ static void ilk_disable_pch_transcoder(struct drm_i915_private *dev_priv,
 	if (HAS_PCH_CPT(dev_priv)) {
 		/* Workaround: Clear the timing override chicken bit again. */
 		reg = TRANS_CHICKEN2(pipe);
-		val = I915_READ(reg);
+		val = intel_de_read(dev_priv, reg);
 		val &= ~TRANS_CHICKEN2_TIMING_OVERRIDE;
-		I915_WRITE(reg, val);
+		intel_de_write(dev_priv, reg, val);
 	}
 }
 
@@ -1763,18 +1766,18 @@ void lpt_disable_pch_transcoder(struct drm_i915_private *dev_priv)
 {
 	u32 val;
 
-	val = I915_READ(LPT_TRANSCONF);
+	val = intel_de_read(dev_priv, LPT_TRANSCONF);
 	val &= ~TRANS_ENABLE;
-	I915_WRITE(LPT_TRANSCONF, val);
+	intel_de_write(dev_priv, LPT_TRANSCONF, val);
 	/* wait for PCH transcoder off, transcoder state */
 	if (intel_de_wait_for_clear(dev_priv, LPT_TRANSCONF,
 				    TRANS_STATE_ENABLE, 50))
 		DRM_ERROR("Failed to disable PCH transcoder\n");
 
 	/* Workaround: clear timing override bit. */
-	val = I915_READ(TRANS_CHICKEN2(PIPE_A));
+	val = intel_de_read(dev_priv, TRANS_CHICKEN2(PIPE_A));
 	val &= ~TRANS_CHICKEN2_TIMING_OVERRIDE;
-	I915_WRITE(TRANS_CHICKEN2(PIPE_A), val);
+	intel_de_write(dev_priv, TRANS_CHICKEN2(PIPE_A), val);
 }
 
 enum pipe intel_crtc_pch_transcoder(struct intel_crtc *crtc)
@@ -1862,15 +1865,15 @@ static void intel_enable_pipe(const struct intel_crtc_state *new_crtc_state)
 	trace_intel_pipe_enable(crtc);
 
 	reg = PIPECONF(cpu_transcoder);
-	val = I915_READ(reg);
+	val = intel_de_read(dev_priv, reg);
 	if (val & PIPECONF_ENABLE) {
 		/* we keep both pipes enabled on 830 */
 		WARN_ON(!IS_I830(dev_priv));
 		return;
 	}
 
-	I915_WRITE(reg, val | PIPECONF_ENABLE);
-	POSTING_READ(reg);
+	intel_de_write(dev_priv, reg, val | PIPECONF_ENABLE);
+	intel_de_posting_read(dev_priv, reg);
 
 	/*
 	 * Until the pipe starts PIPEDSL reads will return a stale value,
@@ -1903,7 +1906,7 @@ void intel_disable_pipe(const struct intel_crtc_state *old_crtc_state)
 	trace_intel_pipe_disable(crtc);
 
 	reg = PIPECONF(cpu_transcoder);
-	val = I915_READ(reg);
+	val = intel_de_read(dev_priv, reg);
 	if ((val & PIPECONF_ENABLE) == 0)
 		return;
 
@@ -1918,7 +1921,7 @@ void intel_disable_pipe(const struct intel_crtc_state *old_crtc_state)
 	if (!IS_I830(dev_priv))
 		val &= ~PIPECONF_ENABLE;
 
-	I915_WRITE(reg, val);
+	intel_de_write(dev_priv, reg, val);
 	if ((val & PIPECONF_ENABLE) == 0)
 		intel_wait_for_pipe_off(old_crtc_state);
 }
@@ -4331,7 +4334,8 @@ static void i9xx_update_plane(struct intel_plane *plane,
 
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
-	I915_WRITE_FW(DSPSTRIDE(i9xx_plane), plane_state->color_plane[0].stride);
+	intel_de_write_fw(dev_priv, DSPSTRIDE(i9xx_plane),
+			  plane_state->color_plane[0].stride);
 
 	if (INTEL_GEN(dev_priv) < 4) {
 		/*
@@ -4339,21 +4343,26 @@ static void i9xx_update_plane(struct intel_plane *plane,
 		 * generator but let's assume we still need to
 		 * program whatever is there.
 		 */
-		I915_WRITE_FW(DSPPOS(i9xx_plane), (crtc_y << 16) | crtc_x);
-		I915_WRITE_FW(DSPSIZE(i9xx_plane),
-			      ((crtc_h - 1) << 16) | (crtc_w - 1));
+		intel_de_write_fw(dev_priv, DSPPOS(i9xx_plane),
+				  (crtc_y << 16) | crtc_x);
+		intel_de_write_fw(dev_priv, DSPSIZE(i9xx_plane),
+				  ((crtc_h - 1) << 16) | (crtc_w - 1));
 	} else if (IS_CHERRYVIEW(dev_priv) && i9xx_plane == PLANE_B) {
-		I915_WRITE_FW(PRIMPOS(i9xx_plane), (crtc_y << 16) | crtc_x);
-		I915_WRITE_FW(PRIMSIZE(i9xx_plane),
-			      ((crtc_h - 1) << 16) | (crtc_w - 1));
-		I915_WRITE_FW(PRIMCNSTALPHA(i9xx_plane), 0);
+		intel_de_write_fw(dev_priv, PRIMPOS(i9xx_plane),
+				  (crtc_y << 16) | crtc_x);
+		intel_de_write_fw(dev_priv, PRIMSIZE(i9xx_plane),
+				  ((crtc_h - 1) << 16) | (crtc_w - 1));
+		intel_de_write_fw(dev_priv, PRIMCNSTALPHA(i9xx_plane), 0);
 	}
 
 	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
-		I915_WRITE_FW(DSPOFFSET(i9xx_plane), (y << 16) | x);
+		intel_de_write_fw(dev_priv, DSPOFFSET(i9xx_plane),
+				  (y << 16) | x);
 	} else if (INTEL_GEN(dev_priv) >= 4) {
-		I915_WRITE_FW(DSPLINOFF(i9xx_plane), linear_offset);
-		I915_WRITE_FW(DSPTILEOFF(i9xx_plane), (y << 16) | x);
+		intel_de_write_fw(dev_priv, DSPLINOFF(i9xx_plane),
+				  linear_offset);
+		intel_de_write_fw(dev_priv, DSPTILEOFF(i9xx_plane),
+				  (y << 16) | x);
 	}
 
 	/*
@@ -4361,15 +4370,13 @@ static void i9xx_update_plane(struct intel_plane *plane,
 	 * disabled. Try to make the plane enable atomic by writing
 	 * the control register just before the surface register.
 	 */
-	I915_WRITE_FW(DSPCNTR(i9xx_plane), dspcntr);
+	intel_de_write_fw(dev_priv, DSPCNTR(i9xx_plane), dspcntr);
 	if (INTEL_GEN(dev_priv) >= 4)
-		I915_WRITE_FW(DSPSURF(i9xx_plane),
-			      intel_plane_ggtt_offset(plane_state) +
-			      dspaddr_offset);
+		intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane),
+				  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
 	else
-		I915_WRITE_FW(DSPADDR(i9xx_plane),
-			      intel_plane_ggtt_offset(plane_state) +
-			      dspaddr_offset);
+		intel_de_write_fw(dev_priv, DSPADDR(i9xx_plane),
+				  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
 
 	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
@@ -4396,11 +4403,11 @@ static void i9xx_disable_plane(struct intel_plane *plane,
 
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
-	I915_WRITE_FW(DSPCNTR(i9xx_plane), dspcntr);
+	intel_de_write_fw(dev_priv, DSPCNTR(i9xx_plane), dspcntr);
 	if (INTEL_GEN(dev_priv) >= 4)
-		I915_WRITE_FW(DSPSURF(i9xx_plane), 0);
+		intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane), 0);
 	else
-		I915_WRITE_FW(DSPADDR(i9xx_plane), 0);
+		intel_de_write_fw(dev_priv, DSPADDR(i9xx_plane), 0);
 
 	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
@@ -4425,7 +4432,7 @@ static bool i9xx_plane_get_hw_state(struct intel_plane *plane,
 	if (!wakeref)
 		return false;
 
-	val = I915_READ(DSPCNTR(i9xx_plane));
+	val = intel_de_read(dev_priv, DSPCNTR(i9xx_plane));
 
 	ret = val & DISPLAY_PLANE_ENABLE;
 
@@ -4445,9 +4452,9 @@ static void skl_detach_scaler(struct intel_crtc *intel_crtc, int id)
 	struct drm_device *dev = intel_crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 
-	I915_WRITE(SKL_PS_CTRL(intel_crtc->pipe, id), 0);
-	I915_WRITE(SKL_PS_WIN_POS(intel_crtc->pipe, id), 0);
-	I915_WRITE(SKL_PS_WIN_SZ(intel_crtc->pipe, id), 0);
+	intel_de_write(dev_priv, SKL_PS_CTRL(intel_crtc->pipe, id), 0);
+	intel_de_write(dev_priv, SKL_PS_WIN_POS(intel_crtc->pipe, id), 0);
+	intel_de_write(dev_priv, SKL_PS_WIN_SZ(intel_crtc->pipe, id), 0);
 }
 
 /*
@@ -4915,7 +4922,7 @@ static void icl_set_pipe_chicken(struct intel_crtc *crtc)
 	enum pipe pipe = crtc->pipe;
 	u32 tmp;
 
-	tmp = I915_READ(PIPE_CHICKEN(pipe));
+	tmp = intel_de_read(dev_priv, PIPE_CHICKEN(pipe));
 
 	/*
 	 * Display WA #1153: icl
@@ -4930,7 +4937,7 @@ static void icl_set_pipe_chicken(struct intel_crtc *crtc)
 	 * across pipe
 	 */
 	tmp |= PIXEL_ROUNDING_TRUNC_FB_PASSTHRU;
-	I915_WRITE(PIPE_CHICKEN(pipe), tmp);
+	intel_de_write(dev_priv, PIPE_CHICKEN(pipe), tmp);
 }
 
 static void icl_enable_trans_port_sync(const struct intel_crtc_state *crtc_state)
@@ -4959,8 +4966,9 @@ static void icl_enable_trans_port_sync(const struct intel_crtc_state *crtc_state
 	/* Enable Transcoder Port Sync */
 	trans_ddi_func_ctl2_val |= PORT_SYNC_MODE_ENABLE;
 
-	I915_WRITE(TRANS_DDI_FUNC_CTL2(crtc_state->cpu_transcoder),
-		   trans_ddi_func_ctl2_val);
+	intel_de_write(dev_priv,
+		       TRANS_DDI_FUNC_CTL2(crtc_state->cpu_transcoder),
+		       trans_ddi_func_ctl2_val);
 }
 
 static void intel_fdi_normal_train(struct intel_crtc *crtc)
@@ -4973,7 +4981,7 @@ static void intel_fdi_normal_train(struct intel_crtc *crtc)
 
 	/* enable normal train */
 	reg = FDI_TX_CTL(pipe);
-	temp = I915_READ(reg);
+	temp = intel_de_read(dev_priv, reg);
 	if (IS_IVYBRIDGE(dev_priv)) {
 		temp &= ~FDI_LINK_TRAIN_NONE_IVB;
 		temp |= FDI_LINK_TRAIN_NONE_IVB | FDI_TX_ENHANCE_FRAME_ENABLE;
@@ -4981,10 +4989,10 @@ static void intel_fdi_normal_train(struct intel_crtc *crtc)
 		temp &= ~FDI_LINK_TRAIN_NONE;
 		temp |= FDI_LINK_TRAIN_NONE | FDI_TX_ENHANCE_FRAME_ENABLE;
 	}
-	I915_WRITE(reg, temp);
+	intel_de_write(dev_priv, reg, temp);
 
 	reg = FDI_RX_CTL(pipe);
-	temp = I915_READ(reg);
+	temp = intel_de_read(dev_priv, reg);
 	if (HAS_PCH_CPT(dev_priv)) {
 		temp &= ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
 		temp |= FDI_LINK_TRAIN_NORMAL_CPT;
@@ -4992,16 +5000,16 @@ static void intel_fdi_normal_train(struct intel_crtc *crtc)
 		temp &= ~FDI_LINK_TRAIN_NONE;
 		temp |= FDI_LINK_TRAIN_NONE;
 	}
-	I915_WRITE(reg, temp | FDI_RX_ENHANCE_FRAME_ENABLE);
+	intel_de_write(dev_priv, reg, temp | FDI_RX_ENHANCE_FRAME_ENABLE);
 
 	/* wait one idle pattern time */
-	POSTING_READ(reg);
+	intel_de_posting_read(dev_priv, reg);
 	udelay(1000);
 
 	/* IVB wants error correction enabled */
 	if (IS_IVYBRIDGE(dev_priv))
-		I915_WRITE(reg, I915_READ(reg) | FDI_FS_ERRC_ENABLE |
-			   FDI_FE_ERRC_ENABLE);
+		intel_de_write(dev_priv, reg,
+		               intel_de_read(dev_priv, reg) | FDI_FS_ERRC_ENABLE | FDI_FE_ERRC_ENABLE);
 }
 
 /* The FDI link training functions for ILK/Ibexpeak. */
@@ -5020,44 +5028,45 @@ static void ilk_fdi_link_train(struct intel_crtc *crtc,
 	/* Train 1: umask FDI RX Interrupt symbol_lock and bit_lock bit
 	   for train result */
 	reg = FDI_RX_IMR(pipe);
-	temp = I915_READ(reg);
+	temp = intel_de_read(dev_priv, reg);
 	temp &= ~FDI_RX_SYMBOL_LOCK;
 	temp &= ~FDI_RX_BIT_LOCK;
-	I915_WRITE(reg, temp);
-	I915_READ(reg);
+	intel_de_write(dev_priv, reg, temp);
+	intel_de_read(dev_priv, reg);
 	udelay(150);
 
 	/* enable CPU FDI TX and PCH FDI RX */
 	reg = FDI_TX_CTL(pipe);
-	temp = I915_READ(reg);
+	temp = intel_de_read(dev_priv, reg);
 	temp &= ~FDI_DP_PORT_WIDTH_MASK;
 	temp |= FDI_DP_PORT_WIDTH(crtc_state->fdi_lanes);
 	temp &= ~FDI_LINK_TRAIN_NONE;
 	temp |= FDI_LINK_TRAIN_PATTERN_1;
-	I915_WRITE(reg, temp | FDI_TX_ENABLE);
+	intel_de_write(dev_priv, reg, temp | FDI_TX_ENABLE);
 
 	reg = FDI_RX_CTL(pipe);
-	temp = I915_READ(reg);
+	temp = intel_de_read(dev_priv, reg);
 	temp &= ~FDI_LINK_TRAIN_NONE;
 	temp |= FDI_LINK_TRAIN_PATTERN_1;
-	I915_WRITE(reg, temp | FDI_RX_ENABLE);
+	intel_de_write(dev_priv, reg, temp | FDI_RX_ENABLE);
 
-	POSTING_READ(reg);
+	intel_de_posting_read(dev_priv, reg);
 	udelay(150);
 
 	/* Ironlake workaround, enable clock pointer after FDI enable*/
-	I915_WRITE(FDI_RX_CHICKEN(pipe), FDI_RX_PHASE_SYNC_POINTER_OVR);
-	I915_WRITE(FDI_RX_CHICKEN(pipe), FDI_RX_PHASE_SYNC_POINTER_OVR |
-		   FDI_RX_PHASE_SYNC_POINTER_EN);
+	intel_de_write(dev_priv, FDI_RX_CHICKEN(pipe),
+		       FDI_RX_PHASE_SYNC_POINTER_OVR);
+	intel_de_write(dev_priv, FDI_RX_CHICKEN(pipe),
+		       FDI_RX_PHASE_SYNC_POINTER_OVR | FDI_RX_PHASE_SYNC_POINTER_EN);
 
 	reg = FDI_RX_IIR(pipe);
 	for (tries = 0; tries < 5; tries++) {
-		temp = I915_READ(reg);
+		temp = intel_de_read(dev_priv, reg);
 		DRM_DEBUG_KMS("FDI_RX_IIR 0x%x\n", temp);
 
 		if ((temp & FDI_RX_BIT_LOCK)) {
 			DRM_DEBUG_KMS("FDI train 1 done.\n");
-			I915_WRITE(reg, temp | FDI_RX_BIT_LOCK);
+			intel_de_write(dev_priv, reg, temp | FDI_RX_BIT_LOCK);
 			break;
 		}
 	}
@@ -5066,27 +5075,28 @@ static void ilk_fdi_link_train(struct intel_crtc *crtc,
 
 	/* Train 2 */
 	reg = FDI_TX_CTL(pipe);
-	temp = I915_READ(reg);
+	temp = intel_de_read(dev_priv, reg);
 	temp &= ~FDI_LINK_TRAIN_NONE;
 	temp |= FDI_LINK_TRAIN_PATTERN_2;
-	I915_WRITE(reg, temp);
+	intel_de_write(dev_priv, reg, temp);
 
 	reg = FDI_RX_CTL(pipe);
-	temp = I915_READ(reg);
+	temp = intel_de_read(dev_priv, reg);
 	temp &= ~FDI_LINK_TRAIN_NONE;
 	temp |= FDI_LINK_TRAIN_PATTERN_2;
-	I915_WRITE(reg, temp);
+	intel_de_write(dev_priv, reg, temp);
 
-	POSTING_READ(reg);
+	intel_de_posting_read(dev_priv, reg);
 	udelay(150);
 
 	reg = FDI_RX_IIR(pipe);
 	for (tries = 0; tries < 5; tries++) {
-		temp = I915_READ(reg);
+		temp = intel_de_read(dev_priv, reg);
 		DRM_DEBUG_KMS("FDI_RX_IIR 0x%x\n", temp);
 
 		if (temp & FDI_RX_SYMBOL_LOCK) {
-			I915_WRITE(reg, temp | FDI_RX_SYMBOL_LOCK);
+			intel_de_write(dev_priv, reg,
+				       temp | FDI_RX_SYMBOL_LOCK);
 			DRM_DEBUG_KMS("FDI train 2 done.\n");
 			break;
 		}
@@ -5118,17 +5128,17 @@ static void gen6_fdi_link_train(struct intel_crtc *crtc,
 	/* Train 1: umask FDI RX Interrupt symbol_lock and bit_lock bit
 	   for train result */
 	reg = FDI_RX_IMR(pipe);
-	temp = I915_READ(reg);
+	temp = intel_de_read(dev_priv, reg);
 	temp &= ~FDI_RX_SYMBOL_LOCK;
 	temp &= ~FDI_RX_BIT_LOCK;
-	I915_WRITE(reg, temp);
+	intel_de_write(dev_priv, reg, temp);
 
-	POSTING_READ(reg);
+	intel_de_posting_read(dev_priv, reg);
 	udelay(150);
 
 	/* enable CPU FDI TX and PCH FDI RX */
 	reg = FDI_TX_CTL(pipe);
-	temp = I915_READ(reg);
+	temp = intel_de_read(dev_priv, reg);
 	temp &= ~FDI_DP_PORT_WIDTH_MASK;
 	temp |= FDI_DP_PORT_WIDTH(crtc_state->fdi_lanes);
 	temp &= ~FDI_LINK_TRAIN_NONE;
@@ -5136,13 +5146,13 @@ static void gen6_fdi_link_train(struct intel_crtc *crtc,
 	temp &= ~FDI_LINK_TRAIN_VOL_EMP_MASK;
 	/* SNB-B */
 	temp |= FDI_LINK_TRAIN_400MV_0DB_SNB_B;
-	I915_WRITE(reg, temp | FDI_TX_ENABLE);
+	intel_de_write(dev_priv, reg, temp | FDI_TX_ENABLE);
 
-	I915_WRITE(FDI_RX_MISC(pipe),
-		   FDI_RX_TP1_TO_TP2_48 | FDI_RX_FDI_DELAY_90);
+	intel_de_write(dev_priv, FDI_RX_MISC(pipe),
+		       FDI_RX_TP1_TO_TP2_48 | FDI_RX_FDI_DELAY_90);
 
 	reg = FDI_RX_CTL(pipe);
-	temp = I915_READ(reg);
+	temp = intel_de_read(dev_priv, reg);
 	if (HAS_PCH_CPT(dev_priv)) {
 		temp &= ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
 		temp |= FDI_LINK_TRAIN_PATTERN_1_CPT;
@@ -5150,27 +5160,28 @@ static void gen6_fdi_link_train(struct intel_crtc *crtc,
 		temp &= ~FDI_LINK_TRAIN_NONE;
 		temp |= FDI_LINK_TRAIN_PATTERN_1;
 	}
-	I915_WRITE(reg, temp | FDI_RX_ENABLE);
+	intel_de_write(dev_priv, reg, temp | FDI_RX_ENABLE);
 
-	POSTING_READ(reg);
+	intel_de_posting_read(dev_priv, reg);
 	udelay(150);
 
 	for (i = 0; i < 4; i++) {
 		reg = FDI_TX_CTL(pipe);
-		temp = I915_READ(reg);
+		temp = intel_de_read(dev_priv, reg);
 		temp &= ~FDI_LINK_TRAIN_VOL_EMP_MASK;
 		temp |= snb_b_fdi_train_param[i];
-		I915_WRITE(reg, temp);
+		intel_de_write(dev_priv, reg, temp);
 
-		POSTING_READ(reg);
+		intel_de_posting_read(dev_priv, reg);
 		udelay(500);
 
 		for (retry = 0; retry < 5; retry++) {
 			reg = FDI_RX_IIR(pipe);
-			temp = I915_READ(reg);
+			temp = intel_de_read(dev_priv, reg);
 			DRM_DEBUG_KMS("FDI_RX_IIR 0x%x\n", temp);
 			if (temp & FDI_RX_BIT_LOCK) {
-				I915_WRITE(reg, temp | FDI_RX_BIT_LOCK);
+				intel_de_write(dev_priv, reg,
+					       temp | FDI_RX_BIT_LOCK);
 				DRM_DEBUG_KMS("FDI train 1 done.\n");
 				break;
 			}
@@ -5184,7 +5195,7 @@ static void gen6_fdi_link_train(struct intel_crtc *crtc,
 
 	/* Train 2 */
 	reg = FDI_TX_CTL(pipe);
-	temp = I915_READ(reg);
+	temp = intel_de_read(dev_priv, reg);
 	temp &= ~FDI_LINK_TRAIN_NONE;
 	temp |= FDI_LINK_TRAIN_PATTERN_2;
 	if (IS_GEN(dev_priv, 6)) {
@@ -5192,10 +5203,10 @@ static void gen6_fdi_link_train(struct intel_crtc *crtc,
 		/* SNB-B */
 		temp |= FDI_LINK_TRAIN_400MV_0DB_SNB_B;
 	}
-	I915_WRITE(reg, temp);
+	intel_de_write(dev_priv, reg, temp);
 
 	reg = FDI_RX_CTL(pipe);
-	temp = I915_READ(reg);
+	temp = intel_de_read(dev_priv, reg);
 	if (HAS_PCH_CPT(dev_priv)) {
 		temp &= ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
 		temp |= FDI_LINK_TRAIN_PATTERN_2_CPT;
@@ -5203,27 +5214,28 @@ static void gen6_fdi_link_train(struct intel_crtc *crtc,
 		temp &= ~FDI_LINK_TRAIN_NONE;
 		temp |= FDI_LINK_TRAIN_PATTERN_2;
 	}
-	I915_WRITE(reg, temp);
+	intel_de_write(dev_priv, reg, temp);
 
-	POSTING_READ(reg);
+	intel_de_posting_read(dev_priv, reg);
 	udelay(150);
 
 	for (i = 0; i < 4; i++) {
 		reg = FDI_TX_CTL(pipe);
-		temp = I915_READ(reg);
+		temp = intel_de_read(dev_priv, reg);
 		temp &= ~FDI_LINK_TRAIN_VOL_EMP_MASK;
 		temp |= snb_b_fdi_train_param[i];
-		I915_WRITE(reg, temp);
+		intel_de_write(dev_priv, reg, temp);
 
-		POSTING_READ(reg);
+		intel_de_posting_read(dev_priv, reg);
 		udelay(500);
 
 		for (retry = 0; retry < 5; retry++) {
 			reg = FDI_RX_IIR(pipe);
-			temp = I915_READ(reg);
+			temp = intel_de_read(dev_priv, reg);
 			DRM_DEBUG_KMS("FDI_RX_IIR 0x%x\n", temp);
 			if (temp & FDI_RX_SYMBOL_LOCK) {
-				I915_WRITE(reg, temp | FDI_RX_SYMBOL_LOCK);
+				intel_de_write(dev_priv, reg,
+					       temp | FDI_RX_SYMBOL_LOCK);
 				DRM_DEBUG_KMS("FDI train 2 done.\n");
 				break;
 			}
@@ -5251,64 +5263,65 @@ static void ivb_manual_fdi_link_train(struct intel_crtc *crtc,
 	/* Train 1: umask FDI RX Interrupt symbol_lock and bit_lock bit
 	   for train result */
 	reg = FDI_RX_IMR(pipe);
-	temp = I915_READ(reg);
+	temp = intel_de_read(dev_priv, reg);
 	temp &= ~FDI_RX_SYMBOL_LOCK;
 	temp &= ~FDI_RX_BIT_LOCK;
-	I915_WRITE(reg, temp);
+	intel_de_write(dev_priv, reg, temp);
 
-	POSTING_READ(reg);
+	intel_de_posting_read(dev_priv, reg);
 	udelay(150);
 
 	DRM_DEBUG_KMS("FDI_RX_IIR before link train 0x%x\n",
-		      I915_READ(FDI_RX_IIR(pipe)));
+		      intel_de_read(dev_priv, FDI_RX_IIR(pipe)));
 
 	/* Try each vswing and preemphasis setting twice before moving on */
 	for (j = 0; j < ARRAY_SIZE(snb_b_fdi_train_param) * 2; j++) {
 		/* disable first in case we need to retry */
 		reg = FDI_TX_CTL(pipe);
-		temp = I915_READ(reg);
+		temp = intel_de_read(dev_priv, reg);
 		temp &= ~(FDI_LINK_TRAIN_AUTO | FDI_LINK_TRAIN_NONE_IVB);
 		temp &= ~FDI_TX_ENABLE;
-		I915_WRITE(reg, temp);
+		intel_de_write(dev_priv, reg, temp);
 
 		reg = FDI_RX_CTL(pipe);
-		temp = I915_READ(reg);
+		temp = intel_de_read(dev_priv, reg);
 		temp &= ~FDI_LINK_TRAIN_AUTO;
 		temp &= ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
 		temp &= ~FDI_RX_ENABLE;
-		I915_WRITE(reg, temp);
+		intel_de_write(dev_priv, reg, temp);
 
 		/* enable CPU FDI TX and PCH FDI RX */
 		reg = FDI_TX_CTL(pipe);
-		temp = I915_READ(reg);
+		temp = intel_de_read(dev_priv, reg);
 		temp &= ~FDI_DP_PORT_WIDTH_MASK;
 		temp |= FDI_DP_PORT_WIDTH(crtc_state->fdi_lanes);
 		temp |= FDI_LINK_TRAIN_PATTERN_1_IVB;
 		temp &= ~FDI_LINK_TRAIN_VOL_EMP_MASK;
 		temp |= snb_b_fdi_train_param[j/2];
 		temp |= FDI_COMPOSITE_SYNC;
-		I915_WRITE(reg, temp | FDI_TX_ENABLE);
+		intel_de_write(dev_priv, reg, temp | FDI_TX_ENABLE);
 
-		I915_WRITE(FDI_RX_MISC(pipe),
-			   FDI_RX_TP1_TO_TP2_48 | FDI_RX_FDI_DELAY_90);
+		intel_de_write(dev_priv, FDI_RX_MISC(pipe),
+			       FDI_RX_TP1_TO_TP2_48 | FDI_RX_FDI_DELAY_90);
 
 		reg = FDI_RX_CTL(pipe);
-		temp = I915_READ(reg);
+		temp = intel_de_read(dev_priv, reg);
 		temp |= FDI_LINK_TRAIN_PATTERN_1_CPT;
 		temp |= FDI_COMPOSITE_SYNC;
-		I915_WRITE(reg, temp | FDI_RX_ENABLE);
+		intel_de_write(dev_priv, reg, temp | FDI_RX_ENABLE);
 
-		POSTING_READ(reg);
+		intel_de_posting_read(dev_priv, reg);
 		udelay(1); /* should be 0.5us */
 
 		for (i = 0; i < 4; i++) {
 			reg = FDI_RX_IIR(pipe);
-			temp = I915_READ(reg);
+			temp = intel_de_read(dev_priv, reg);
 			DRM_DEBUG_KMS("FDI_RX_IIR 0x%x\n", temp);
 
 			if (temp & FDI_RX_BIT_LOCK ||
-			    (I915_READ(reg) & FDI_RX_BIT_LOCK)) {
-				I915_WRITE(reg, temp | FDI_RX_BIT_LOCK);
+			    (intel_de_read(dev_priv, reg) & FDI_RX_BIT_LOCK)) {
+				intel_de_write(dev_priv, reg,
+					       temp | FDI_RX_BIT_LOCK);
 				DRM_DEBUG_KMS("FDI train 1 done, level %i.\n",
 					      i);
 				break;
@@ -5322,28 +5335,29 @@ static void ivb_manual_fdi_link_train(struct intel_crtc *crtc,
 
 		/* Train 2 */
 		reg = FDI_TX_CTL(pipe);
-		temp = I915_READ(reg);
+		temp = intel_de_read(dev_priv, reg);
 		temp &= ~FDI_LINK_TRAIN_NONE_IVB;
 		temp |= FDI_LINK_TRAIN_PATTERN_2_IVB;
-		I915_WRITE(reg, temp);
+		intel_de_write(dev_priv, reg, temp);
 
 		reg = FDI_RX_CTL(pipe);
-		temp = I915_READ(reg);
+		temp = intel_de_read(dev_priv, reg);
 		temp &= ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
 		temp |= FDI_LINK_TRAIN_PATTERN_2_CPT;
-		I915_WRITE(reg, temp);
+		intel_de_write(dev_priv, reg, temp);
 
-		POSTING_READ(reg);
+		intel_de_posting_read(dev_priv, reg);
 		udelay(2); /* should be 1.5us */
 
 		for (i = 0; i < 4; i++) {
 			reg = FDI_RX_IIR(pipe);
-			temp = I915_READ(reg);
+			temp = intel_de_read(dev_priv, reg);
 			DRM_DEBUG_KMS("FDI_RX_IIR 0x%x\n", temp);
 
 			if (temp & FDI_RX_SYMBOL_LOCK ||
-			    (I915_READ(reg) & FDI_RX_SYMBOL_LOCK)) {
-				I915_WRITE(reg, temp | FDI_RX_SYMBOL_LOCK);
+			    (intel_de_read(dev_priv, reg) & FDI_RX_SYMBOL_LOCK)) {
+				intel_de_write(dev_priv, reg,
+					       temp | FDI_RX_SYMBOL_LOCK);
 				DRM_DEBUG_KMS("FDI train 2 done, level %i.\n",
 					      i);
 				goto train_done;
@@ -5368,29 +5382,29 @@ static void ilk_fdi_pll_enable(const struct intel_crtc_state *crtc_state)
 
 	/* enable PCH FDI RX PLL, wait warmup plus DMI latency */
 	reg = FDI_RX_CTL(pipe);
-	temp = I915_READ(reg);
+	temp = intel_de_read(dev_priv, reg);
 	temp &= ~(FDI_DP_PORT_WIDTH_MASK | (0x7 << 16));
 	temp |= FDI_DP_PORT_WIDTH(crtc_state->fdi_lanes);
-	temp |= (I915_READ(PIPECONF(pipe)) & PIPECONF_BPC_MASK) << 11;
-	I915_WRITE(reg, temp | FDI_RX_PLL_ENABLE);
+	temp |= (intel_de_read(dev_priv, PIPECONF(pipe)) & PIPECONF_BPC_MASK) << 11;
+	intel_de_write(dev_priv, reg, temp | FDI_RX_PLL_ENABLE);
 
-	POSTING_READ(reg);
+	intel_de_posting_read(dev_priv, reg);
 	udelay(200);
 
 	/* Switch from Rawclk to PCDclk */
-	temp = I915_READ(reg);
-	I915_WRITE(reg, temp | FDI_PCDCLK);
+	temp = intel_de_read(dev_priv, reg);
+	intel_de_write(dev_priv, reg, temp | FDI_PCDCLK);
 
-	POSTING_READ(reg);
+	intel_de_posting_read(dev_priv, reg);
 	udelay(200);
 
 	/* Enable CPU FDI TX PLL, always on for Ironlake */
 	reg = FDI_TX_CTL(pipe);
-	temp = I915_READ(reg);
+	temp = intel_de_read(dev_priv, reg);
 	if ((temp & FDI_TX_PLL_ENABLE) == 0) {
-		I915_WRITE(reg, temp | FDI_TX_PLL_ENABLE);
+		intel_de_write(dev_priv, reg, temp | FDI_TX_PLL_ENABLE);
 
-		POSTING_READ(reg);
+		intel_de_posting_read(dev_priv, reg);
 		udelay(100);
 	}
 }
@@ -5405,23 +5419,23 @@ static void ilk_fdi_pll_disable(struct intel_crtc *intel_crtc)
 
 	/* Switch from PCDclk to Rawclk */
 	reg = FDI_RX_CTL(pipe);
-	temp = I915_READ(reg);
-	I915_WRITE(reg, temp & ~FDI_PCDCLK);
+	temp = intel_de_read(dev_priv, reg);
+	intel_de_write(dev_priv, reg, temp & ~FDI_PCDCLK);
 
 	/* Disable CPU FDI TX PLL */
 	reg = FDI_TX_CTL(pipe);
-	temp = I915_READ(reg);
-	I915_WRITE(reg, temp & ~FDI_TX_PLL_ENABLE);
+	temp = intel_de_read(dev_priv, reg);
+	intel_de_write(dev_priv, reg, temp & ~FDI_TX_PLL_ENABLE);
 
-	POSTING_READ(reg);
+	intel_de_posting_read(dev_priv, reg);
 	udelay(100);
 
 	reg = FDI_RX_CTL(pipe);
-	temp = I915_READ(reg);
-	I915_WRITE(reg, temp & ~FDI_RX_PLL_ENABLE);
+	temp = intel_de_read(dev_priv, reg);
+	intel_de_write(dev_priv, reg, temp & ~FDI_RX_PLL_ENABLE);
 
 	/* Wait for the clocks to turn off. */
-	POSTING_READ(reg);
+	intel_de_posting_read(dev_priv, reg);
 	udelay(100);
 }
 
@@ -5434,32 +5448,33 @@ static void ilk_fdi_disable(struct intel_crtc *crtc)
 
 	/* disable CPU FDI tx and PCH FDI rx */
 	reg = FDI_TX_CTL(pipe);
-	temp = I915_READ(reg);
-	I915_WRITE(reg, temp & ~FDI_TX_ENABLE);
-	POSTING_READ(reg);
+	temp = intel_de_read(dev_priv, reg);
+	intel_de_write(dev_priv, reg, temp & ~FDI_TX_ENABLE);
+	intel_de_posting_read(dev_priv, reg);
 
 	reg = FDI_RX_CTL(pipe);
-	temp = I915_READ(reg);
+	temp = intel_de_read(dev_priv, reg);
 	temp &= ~(0x7 << 16);
-	temp |= (I915_READ(PIPECONF(pipe)) & PIPECONF_BPC_MASK) << 11;
-	I915_WRITE(reg, temp & ~FDI_RX_ENABLE);
+	temp |= (intel_de_read(dev_priv, PIPECONF(pipe)) & PIPECONF_BPC_MASK) << 11;
+	intel_de_write(dev_priv, reg, temp & ~FDI_RX_ENABLE);
 
-	POSTING_READ(reg);
+	intel_de_posting_read(dev_priv, reg);
 	udelay(100);
 
 	/* Ironlake workaround, disable clock pointer after downing FDI */
 	if (HAS_PCH_IBX(dev_priv))
-		I915_WRITE(FDI_RX_CHICKEN(pipe), FDI_RX_PHASE_SYNC_POINTER_OVR);
+		intel_de_write(dev_priv, FDI_RX_CHICKEN(pipe),
+			       FDI_RX_PHASE_SYNC_POINTER_OVR);
 
 	/* still set train pattern 1 */
 	reg = FDI_TX_CTL(pipe);
-	temp = I915_READ(reg);
+	temp = intel_de_read(dev_priv, reg);
 	temp &= ~FDI_LINK_TRAIN_NONE;
 	temp |= FDI_LINK_TRAIN_PATTERN_1;
-	I915_WRITE(reg, temp);
+	intel_de_write(dev_priv, reg, temp);
 
 	reg = FDI_RX_CTL(pipe);
-	temp = I915_READ(reg);
+	temp = intel_de_read(dev_priv, reg);
 	if (HAS_PCH_CPT(dev_priv)) {
 		temp &= ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
 		temp |= FDI_LINK_TRAIN_PATTERN_1_CPT;
@@ -5469,10 +5484,10 @@ static void ilk_fdi_disable(struct intel_crtc *crtc)
 	}
 	/* BPC in FDI rx is consistent with that in PIPECONF */
 	temp &= ~(0x07 << 16);
-	temp |= (I915_READ(PIPECONF(pipe)) & PIPECONF_BPC_MASK) << 11;
-	I915_WRITE(reg, temp);
+	temp |= (intel_de_read(dev_priv, PIPECONF(pipe)) & PIPECONF_BPC_MASK) << 11;
+	intel_de_write(dev_priv, reg, temp);
 
-	POSTING_READ(reg);
+	intel_de_posting_read(dev_priv, reg);
 	udelay(100);
 }
 
@@ -5505,7 +5520,7 @@ void lpt_disable_iclkip(struct drm_i915_private *dev_priv)
 {
 	u32 temp;
 
-	I915_WRITE(PIXCLK_GATE, PIXCLK_GATE_GATE);
+	intel_de_write(dev_priv, PIXCLK_GATE, PIXCLK_GATE_GATE);
 
 	mutex_lock(&dev_priv->sb_lock);
 
@@ -5592,7 +5607,7 @@ static void lpt_program_iclkip(const struct intel_crtc_state *crtc_state)
 	/* Wait for initialization time */
 	udelay(24);
 
-	I915_WRITE(PIXCLK_GATE, PIXCLK_GATE_UNGATE);
+	intel_de_write(dev_priv, PIXCLK_GATE, PIXCLK_GATE_UNGATE);
 }
 
 int lpt_get_iclkip(struct drm_i915_private *dev_priv)
@@ -5603,7 +5618,7 @@ int lpt_get_iclkip(struct drm_i915_private *dev_priv)
 	u32 desired_divisor;
 	u32 temp;
 
-	if ((I915_READ(PIXCLK_GATE) & PIXCLK_GATE_UNGATE) == 0)
+	if ((intel_de_read(dev_priv, PIXCLK_GATE) & PIXCLK_GATE_UNGATE) == 0)
 		return 0;
 
 	mutex_lock(&dev_priv->sb_lock);
@@ -5639,41 +5654,41 @@ static void ilk_pch_transcoder_set_timings(const struct intel_crtc_state *crtc_s
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	I915_WRITE(PCH_TRANS_HTOTAL(pch_transcoder),
-		   I915_READ(HTOTAL(cpu_transcoder)));
-	I915_WRITE(PCH_TRANS_HBLANK(pch_transcoder),
-		   I915_READ(HBLANK(cpu_transcoder)));
-	I915_WRITE(PCH_TRANS_HSYNC(pch_transcoder),
-		   I915_READ(HSYNC(cpu_transcoder)));
+	intel_de_write(dev_priv, PCH_TRANS_HTOTAL(pch_transcoder),
+		       intel_de_read(dev_priv, HTOTAL(cpu_transcoder)));
+	intel_de_write(dev_priv, PCH_TRANS_HBLANK(pch_transcoder),
+		       intel_de_read(dev_priv, HBLANK(cpu_transcoder)));
+	intel_de_write(dev_priv, PCH_TRANS_HSYNC(pch_transcoder),
+		       intel_de_read(dev_priv, HSYNC(cpu_transcoder)));
 
-	I915_WRITE(PCH_TRANS_VTOTAL(pch_transcoder),
-		   I915_READ(VTOTAL(cpu_transcoder)));
-	I915_WRITE(PCH_TRANS_VBLANK(pch_transcoder),
-		   I915_READ(VBLANK(cpu_transcoder)));
-	I915_WRITE(PCH_TRANS_VSYNC(pch_transcoder),
-		   I915_READ(VSYNC(cpu_transcoder)));
-	I915_WRITE(PCH_TRANS_VSYNCSHIFT(pch_transcoder),
-		   I915_READ(VSYNCSHIFT(cpu_transcoder)));
+	intel_de_write(dev_priv, PCH_TRANS_VTOTAL(pch_transcoder),
+		       intel_de_read(dev_priv, VTOTAL(cpu_transcoder)));
+	intel_de_write(dev_priv, PCH_TRANS_VBLANK(pch_transcoder),
+		       intel_de_read(dev_priv, VBLANK(cpu_transcoder)));
+	intel_de_write(dev_priv, PCH_TRANS_VSYNC(pch_transcoder),
+		       intel_de_read(dev_priv, VSYNC(cpu_transcoder)));
+	intel_de_write(dev_priv, PCH_TRANS_VSYNCSHIFT(pch_transcoder),
+		       intel_de_read(dev_priv, VSYNCSHIFT(cpu_transcoder)));
 }
 
 static void cpt_set_fdi_bc_bifurcation(struct drm_i915_private *dev_priv, bool enable)
 {
 	u32 temp;
 
-	temp = I915_READ(SOUTH_CHICKEN1);
+	temp = intel_de_read(dev_priv, SOUTH_CHICKEN1);
 	if (!!(temp & FDI_BC_BIFURCATION_SELECT) == enable)
 		return;
 
-	WARN_ON(I915_READ(FDI_RX_CTL(PIPE_B)) & FDI_RX_ENABLE);
-	WARN_ON(I915_READ(FDI_RX_CTL(PIPE_C)) & FDI_RX_ENABLE);
+	WARN_ON(intel_de_read(dev_priv, FDI_RX_CTL(PIPE_B)) & FDI_RX_ENABLE);
+	WARN_ON(intel_de_read(dev_priv, FDI_RX_CTL(PIPE_C)) & FDI_RX_ENABLE);
 
 	temp &= ~FDI_BC_BIFURCATION_SELECT;
 	if (enable)
 		temp |= FDI_BC_BIFURCATION_SELECT;
 
 	DRM_DEBUG_KMS("%sabling fdi C rx\n", enable ? "en" : "dis");
-	I915_WRITE(SOUTH_CHICKEN1, temp);
-	POSTING_READ(SOUTH_CHICKEN1);
+	intel_de_write(dev_priv, SOUTH_CHICKEN1, temp);
+	intel_de_posting_read(dev_priv, SOUTH_CHICKEN1);
 }
 
 static void ivb_update_fdi_bc_bifurcation(const struct intel_crtc_state *crtc_state)
@@ -5754,8 +5769,8 @@ static void ilk_pch_enable(const struct intel_atomic_state *state,
 
 	/* Write the TU size bits before fdi link training, so that error
 	 * detection works. */
-	I915_WRITE(FDI_RX_TUSIZE1(pipe),
-		   I915_READ(PIPE_DATA_M1(pipe)) & TU_SIZE_MASK);
+	intel_de_write(dev_priv, FDI_RX_TUSIZE1(pipe),
+		       intel_de_read(dev_priv, PIPE_DATA_M1(pipe)) & TU_SIZE_MASK);
 
 	/* For PCH output, training FDI link */
 	dev_priv->display.fdi_link_train(crtc, crtc_state);
@@ -5765,7 +5780,7 @@ static void ilk_pch_enable(const struct intel_atomic_state *state,
 	if (HAS_PCH_CPT(dev_priv)) {
 		u32 sel;
 
-		temp = I915_READ(PCH_DPLL_SEL);
+		temp = intel_de_read(dev_priv, PCH_DPLL_SEL);
 		temp |= TRANS_DPLL_ENABLE(pipe);
 		sel = TRANS_DPLLB_SEL(pipe);
 		if (crtc_state->shared_dpll ==
@@ -5773,7 +5788,7 @@ static void ilk_pch_enable(const struct intel_atomic_state *state,
 			temp |= sel;
 		else
 			temp &= ~sel;
-		I915_WRITE(PCH_DPLL_SEL, temp);
+		intel_de_write(dev_priv, PCH_DPLL_SEL, temp);
 	}
 
 	/* XXX: pch pll's can be enabled any time before we enable the PCH
@@ -5796,11 +5811,11 @@ static void ilk_pch_enable(const struct intel_atomic_state *state,
 	    intel_crtc_has_dp_encoder(crtc_state)) {
 		const struct drm_display_mode *adjusted_mode =
 			&crtc_state->hw.adjusted_mode;
-		u32 bpc = (I915_READ(PIPECONF(pipe)) & PIPECONF_BPC_MASK) >> 5;
+		u32 bpc = (intel_de_read(dev_priv, PIPECONF(pipe)) & PIPECONF_BPC_MASK) >> 5;
 		i915_reg_t reg = TRANS_DP_CTL(pipe);
 		enum port port;
 
-		temp = I915_READ(reg);
+		temp = intel_de_read(dev_priv, reg);
 		temp &= ~(TRANS_DP_PORT_SEL_MASK |
 			  TRANS_DP_SYNC_MASK |
 			  TRANS_DP_BPC_MASK);
@@ -5816,7 +5831,7 @@ static void ilk_pch_enable(const struct intel_atomic_state *state,
 		WARN_ON(port < PORT_B || port > PORT_D);
 		temp |= TRANS_DP_PORT_SEL(port);
 
-		I915_WRITE(reg, temp);
+		intel_de_write(dev_priv, reg, temp);
 	}
 
 	ilk_enable_pch_transcoder(crtc_state);
@@ -5845,10 +5860,10 @@ static void cpt_verify_modeset(struct drm_i915_private *dev_priv,
 	i915_reg_t dslreg = PIPEDSL(pipe);
 	u32 temp;
 
-	temp = I915_READ(dslreg);
+	temp = intel_de_read(dev_priv, dslreg);
 	udelay(500);
-	if (wait_for(I915_READ(dslreg) != temp, 5)) {
-		if (wait_for(I915_READ(dslreg) != temp, 5))
+	if (wait_for(intel_de_read(dev_priv, dslreg) != temp, 5)) {
+		if (wait_for(intel_de_read(dev_priv, dslreg) != temp, 5))
 			DRM_ERROR("mode set failed: pipe %c stuck\n", pipe_name(pipe));
 	}
 }
@@ -6173,14 +6188,16 @@ static void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 		uv_rgb_vphase = skl_scaler_calc_phase(1, vscale, false);
 
 		id = scaler_state->scaler_id;
-		I915_WRITE(SKL_PS_CTRL(pipe, id), PS_SCALER_EN |
-			PS_FILTER_MEDIUM | scaler_state->scalers[id].mode);
-		I915_WRITE_FW(SKL_PS_VPHASE(pipe, id),
-			      PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_vphase));
-		I915_WRITE_FW(SKL_PS_HPHASE(pipe, id),
-			      PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_hphase));
-		I915_WRITE(SKL_PS_WIN_POS(pipe, id), crtc_state->pch_pfit.pos);
-		I915_WRITE(SKL_PS_WIN_SZ(pipe, id), crtc_state->pch_pfit.size);
+		intel_de_write(dev_priv, SKL_PS_CTRL(pipe, id),
+			       PS_SCALER_EN | PS_FILTER_MEDIUM | scaler_state->scalers[id].mode);
+		intel_de_write_fw(dev_priv, SKL_PS_VPHASE(pipe, id),
+				  PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_vphase));
+		intel_de_write_fw(dev_priv, SKL_PS_HPHASE(pipe, id),
+				  PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_hphase));
+		intel_de_write(dev_priv, SKL_PS_WIN_POS(pipe, id),
+			       crtc_state->pch_pfit.pos);
+		intel_de_write(dev_priv, SKL_PS_WIN_SZ(pipe, id),
+			       crtc_state->pch_pfit.size);
 	}
 }
 
@@ -6196,12 +6213,15 @@ static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state)
 		 * e.g. x201.
 		 */
 		if (IS_IVYBRIDGE(dev_priv) || IS_HASWELL(dev_priv))
-			I915_WRITE(PF_CTL(pipe), PF_ENABLE | PF_FILTER_MED_3x3 |
-						 PF_PIPE_SEL_IVB(pipe));
+			intel_de_write(dev_priv, PF_CTL(pipe),
+				       PF_ENABLE | PF_FILTER_MED_3x3 | PF_PIPE_SEL_IVB(pipe));
 		else
-			I915_WRITE(PF_CTL(pipe), PF_ENABLE | PF_FILTER_MED_3x3);
-		I915_WRITE(PF_WIN_POS(pipe), crtc_state->pch_pfit.pos);
-		I915_WRITE(PF_WIN_SZ(pipe), crtc_state->pch_pfit.size);
+			intel_de_write(dev_priv, PF_CTL(pipe),
+				       PF_ENABLE | PF_FILTER_MED_3x3);
+		intel_de_write(dev_priv, PF_WIN_POS(pipe),
+			       crtc_state->pch_pfit.pos);
+		intel_de_write(dev_priv, PF_WIN_SZ(pipe),
+			       crtc_state->pch_pfit.size);
 	}
 }
 
@@ -6230,7 +6250,7 @@ void hsw_enable_ips(const struct intel_crtc_state *crtc_state)
 		 * so we need to just enable it and continue on.
 		 */
 	} else {
-		I915_WRITE(IPS_CTL, IPS_ENABLE);
+		intel_de_write(dev_priv, IPS_CTL, IPS_ENABLE);
 		/* The bit only becomes 1 in the next vblank, so this wait here
 		 * is essentially intel_wait_for_vblank. If we don't have this
 		 * and don't wait for vblanks until the end of crtc_enable, then
@@ -6260,8 +6280,8 @@ void hsw_disable_ips(const struct intel_crtc_state *crtc_state)
 		if (intel_de_wait_for_clear(dev_priv, IPS_CTL, IPS_ENABLE, 100))
 			DRM_ERROR("Timed out waiting for IPS disable\n");
 	} else {
-		I915_WRITE(IPS_CTL, 0);
-		POSTING_READ(IPS_CTL);
+		intel_de_write(dev_priv, IPS_CTL, 0);
+		intel_de_posting_read(dev_priv, IPS_CTL);
 	}
 
 	/* We need to wait for a vblank before we can disable the plane. */
@@ -6856,7 +6876,7 @@ static bool hsw_crtc_supports_ips(struct intel_crtc *crtc)
 static void glk_pipe_scaler_clock_gating_wa(struct drm_i915_private *dev_priv,
 					    enum pipe pipe, bool apply)
 {
-	u32 val = I915_READ(CLKGATE_DIS_PSL(pipe));
+	u32 val = intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe));
 	u32 mask = DPF_GATING_DIS | DPF_RAM_GATING_DIS | DPFR_GATING_DIS;
 
 	if (apply)
@@ -6864,7 +6884,7 @@ static void glk_pipe_scaler_clock_gating_wa(struct drm_i915_private *dev_priv,
 	else
 		val &= ~mask;
 
-	I915_WRITE(CLKGATE_DIS_PSL(pipe), val);
+	intel_de_write(dev_priv, CLKGATE_DIS_PSL(pipe), val);
 }
 
 static void icl_pipe_mbus_enable(struct intel_crtc *crtc)
@@ -6883,7 +6903,7 @@ static void icl_pipe_mbus_enable(struct intel_crtc *crtc)
 		val |= MBUS_DBOX_B_CREDIT(8);
 	}
 
-	I915_WRITE(PIPE_MBUS_DBOX_CTL(pipe), val);
+	intel_de_write(dev_priv, PIPE_MBUS_DBOX_CTL(pipe), val);
 }
 
 static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
@@ -6893,10 +6913,10 @@ static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
 	i915_reg_t reg = CHICKEN_TRANS(crtc_state->cpu_transcoder);
 	u32 val;
 
-	val = I915_READ(reg);
+	val = intel_de_read(dev_priv, reg);
 	val &= ~HSW_FRAME_START_DELAY_MASK;
 	val |= HSW_FRAME_START_DELAY(0);
-	I915_WRITE(reg, val);
+	intel_de_write(dev_priv, reg, val);
 }
 
 static void hsw_crtc_enable(struct intel_atomic_state *state,
@@ -6932,8 +6952,8 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 
 	if (cpu_transcoder != TRANSCODER_EDP &&
 	    !transcoder_is_dsi(cpu_transcoder))
-		I915_WRITE(PIPE_MULT(cpu_transcoder),
-			   new_crtc_state->pixel_multiplier - 1);
+		intel_de_write(dev_priv, PIPE_MULT(cpu_transcoder),
+			       new_crtc_state->pixel_multiplier - 1);
 
 	if (new_crtc_state->has_pch_encoder)
 		intel_cpu_transcoder_set_m_n(new_crtc_state,
@@ -7016,9 +7036,9 @@ void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state)
 	/* To avoid upsetting the power well on haswell only disable the pfit if
 	 * it's in use. The hw state code will make sure we get this right. */
 	if (old_crtc_state->pch_pfit.enabled) {
-		I915_WRITE(PF_CTL(pipe), 0);
-		I915_WRITE(PF_WIN_POS(pipe), 0);
-		I915_WRITE(PF_WIN_SZ(pipe), 0);
+		intel_de_write(dev_priv, PF_CTL(pipe), 0);
+		intel_de_write(dev_priv, PF_WIN_POS(pipe), 0);
+		intel_de_write(dev_priv, PF_WIN_SZ(pipe), 0);
 	}
 }
 
@@ -7060,16 +7080,16 @@ static void ilk_crtc_disable(struct intel_atomic_state *state,
 
 			/* disable TRANS_DP_CTL */
 			reg = TRANS_DP_CTL(pipe);
-			temp = I915_READ(reg);
+			temp = intel_de_read(dev_priv, reg);
 			temp &= ~(TRANS_DP_OUTPUT_ENABLE |
 				  TRANS_DP_PORT_SEL_MASK);
 			temp |= TRANS_DP_PORT_SEL_NONE;
-			I915_WRITE(reg, temp);
+			intel_de_write(dev_priv, reg, temp);
 
 			/* disable DPLL_SEL */
-			temp = I915_READ(PCH_DPLL_SEL);
+			temp = intel_de_read(dev_priv, PCH_DPLL_SEL);
 			temp &= ~(TRANS_DPLL_ENABLE(pipe) | TRANS_DPLLB_SEL(pipe));
-			I915_WRITE(PCH_DPLL_SEL, temp);
+			intel_de_write(dev_priv, PCH_DPLL_SEL, temp);
 		}
 
 		ilk_fdi_pll_disable(crtc);
@@ -7102,15 +7122,16 @@ static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
 	 * The panel fitter should only be adjusted whilst the pipe is disabled,
 	 * according to register description and PRM.
 	 */
-	WARN_ON(I915_READ(PFIT_CONTROL) & PFIT_ENABLE);
+	WARN_ON(intel_de_read(dev_priv, PFIT_CONTROL) & PFIT_ENABLE);
 	assert_pipe_disabled(dev_priv, crtc_state->cpu_transcoder);
 
-	I915_WRITE(PFIT_PGM_RATIOS, crtc_state->gmch_pfit.pgm_ratios);
-	I915_WRITE(PFIT_CONTROL, crtc_state->gmch_pfit.control);
+	intel_de_write(dev_priv, PFIT_PGM_RATIOS,
+		       crtc_state->gmch_pfit.pgm_ratios);
+	intel_de_write(dev_priv, PFIT_CONTROL, crtc_state->gmch_pfit.control);
 
 	/* Border color in case we don't scale up to the full screen. Black by
 	 * default, change to something else for debugging. */
-	I915_WRITE(BCLRPAT(crtc->pipe), 0);
+	intel_de_write(dev_priv, BCLRPAT(crtc->pipe), 0);
 }
 
 bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
@@ -7307,8 +7328,8 @@ static void valleyview_crtc_enable(struct intel_atomic_state *state,
 	intel_set_pipe_src_size(new_crtc_state);
 
 	if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_B) {
-		I915_WRITE(CHV_BLEND(pipe), CHV_BLEND_LEGACY);
-		I915_WRITE(CHV_CANVAS(pipe), 0);
+		intel_de_write(dev_priv, CHV_BLEND(pipe), CHV_BLEND_LEGACY);
+		intel_de_write(dev_priv, CHV_CANVAS(pipe), 0);
 	}
 
 	i9xx_set_pipeconf(new_crtc_state);
@@ -7349,8 +7370,10 @@ static void i9xx_set_pll_dividers(const struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	I915_WRITE(FP0(crtc->pipe), crtc_state->dpll_hw_state.fp0);
-	I915_WRITE(FP1(crtc->pipe), crtc_state->dpll_hw_state.fp1);
+	intel_de_write(dev_priv, FP0(crtc->pipe),
+		       crtc_state->dpll_hw_state.fp0);
+	intel_de_write(dev_priv, FP1(crtc->pipe),
+		       crtc_state->dpll_hw_state.fp1);
 }
 
 static void i9xx_crtc_enable(struct intel_atomic_state *state,
@@ -7412,8 +7435,8 @@ static void i9xx_pfit_disable(const struct intel_crtc_state *old_crtc_state)
 	assert_pipe_disabled(dev_priv, old_crtc_state->cpu_transcoder);
 
 	DRM_DEBUG_KMS("disabling pfit, current: 0x%08x\n",
-		      I915_READ(PFIT_CONTROL));
-	I915_WRITE(PFIT_CONTROL, 0);
+		      intel_de_read(dev_priv, PFIT_CONTROL));
+	intel_de_write(dev_priv, PFIT_CONTROL, 0);
 }
 
 static void i9xx_crtc_disable(struct intel_atomic_state *state,
@@ -7990,7 +8013,8 @@ static void intel_panel_sanitize_ssc(struct drm_i915_private *dev_priv)
 	 * indicates as much.
 	 */
 	if (HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv)) {
-		bool bios_lvds_use_ssc = I915_READ(PCH_DREF_CONTROL) &
+		bool bios_lvds_use_ssc = intel_de_read(dev_priv,
+						       PCH_DREF_CONTROL) &
 			DREF_SSC1_ENABLE;
 
 		if (dev_priv->vbt.lvds_use_ssc != bios_lvds_use_ssc) {
@@ -8083,10 +8107,11 @@ static void intel_pch_transcoder_set_m_n(const struct intel_crtc_state *crtc_sta
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	I915_WRITE(PCH_TRANS_DATA_M1(pipe), TU_SIZE(m_n->tu) | m_n->gmch_m);
-	I915_WRITE(PCH_TRANS_DATA_N1(pipe), m_n->gmch_n);
-	I915_WRITE(PCH_TRANS_LINK_M1(pipe), m_n->link_m);
-	I915_WRITE(PCH_TRANS_LINK_N1(pipe), m_n->link_n);
+	intel_de_write(dev_priv, PCH_TRANS_DATA_M1(pipe),
+		       TU_SIZE(m_n->tu) | m_n->gmch_m);
+	intel_de_write(dev_priv, PCH_TRANS_DATA_N1(pipe), m_n->gmch_n);
+	intel_de_write(dev_priv, PCH_TRANS_LINK_M1(pipe), m_n->link_m);
+	intel_de_write(dev_priv, PCH_TRANS_LINK_N1(pipe), m_n->link_n);
 }
 
 static bool transcoder_has_m2_n2(struct drm_i915_private *dev_priv,
@@ -8112,27 +8137,35 @@ static void intel_cpu_transcoder_set_m_n(const struct intel_crtc_state *crtc_sta
 	enum transcoder transcoder = crtc_state->cpu_transcoder;
 
 	if (INTEL_GEN(dev_priv) >= 5) {
-		I915_WRITE(PIPE_DATA_M1(transcoder), TU_SIZE(m_n->tu) | m_n->gmch_m);
-		I915_WRITE(PIPE_DATA_N1(transcoder), m_n->gmch_n);
-		I915_WRITE(PIPE_LINK_M1(transcoder), m_n->link_m);
-		I915_WRITE(PIPE_LINK_N1(transcoder), m_n->link_n);
+		intel_de_write(dev_priv, PIPE_DATA_M1(transcoder),
+			       TU_SIZE(m_n->tu) | m_n->gmch_m);
+		intel_de_write(dev_priv, PIPE_DATA_N1(transcoder),
+			       m_n->gmch_n);
+		intel_de_write(dev_priv, PIPE_LINK_M1(transcoder),
+			       m_n->link_m);
+		intel_de_write(dev_priv, PIPE_LINK_N1(transcoder),
+			       m_n->link_n);
 		/*
 		 *  M2_N2 registers are set only if DRRS is supported
 		 * (to make sure the registers are not unnecessarily accessed).
 		 */
 		if (m2_n2 && crtc_state->has_drrs &&
 		    transcoder_has_m2_n2(dev_priv, transcoder)) {
-			I915_WRITE(PIPE_DATA_M2(transcoder),
-					TU_SIZE(m2_n2->tu) | m2_n2->gmch_m);
-			I915_WRITE(PIPE_DATA_N2(transcoder), m2_n2->gmch_n);
-			I915_WRITE(PIPE_LINK_M2(transcoder), m2_n2->link_m);
-			I915_WRITE(PIPE_LINK_N2(transcoder), m2_n2->link_n);
+			intel_de_write(dev_priv, PIPE_DATA_M2(transcoder),
+				       TU_SIZE(m2_n2->tu) | m2_n2->gmch_m);
+			intel_de_write(dev_priv, PIPE_DATA_N2(transcoder),
+				       m2_n2->gmch_n);
+			intel_de_write(dev_priv, PIPE_LINK_M2(transcoder),
+				       m2_n2->link_m);
+			intel_de_write(dev_priv, PIPE_LINK_N2(transcoder),
+				       m2_n2->link_n);
 		}
 	} else {
-		I915_WRITE(PIPE_DATA_M_G4X(pipe), TU_SIZE(m_n->tu) | m_n->gmch_m);
-		I915_WRITE(PIPE_DATA_N_G4X(pipe), m_n->gmch_n);
-		I915_WRITE(PIPE_LINK_M_G4X(pipe), m_n->link_m);
-		I915_WRITE(PIPE_LINK_N_G4X(pipe), m_n->link_n);
+		intel_de_write(dev_priv, PIPE_DATA_M_G4X(pipe),
+			       TU_SIZE(m_n->tu) | m_n->gmch_m);
+		intel_de_write(dev_priv, PIPE_DATA_N_G4X(pipe), m_n->gmch_n);
+		intel_de_write(dev_priv, PIPE_LINK_M_G4X(pipe), m_n->link_m);
+		intel_de_write(dev_priv, PIPE_LINK_N_G4X(pipe), m_n->link_n);
 	}
 }
 
@@ -8205,9 +8238,8 @@ static void vlv_prepare_pll(struct intel_crtc *crtc,
 	u32 coreclk, reg_val;
 
 	/* Enable Refclk */
-	I915_WRITE(DPLL(pipe),
-		   pipe_config->dpll_hw_state.dpll &
-		   ~(DPLL_VCO_ENABLE | DPLL_EXT_BUFFER_ENABLE_VLV));
+	intel_de_write(dev_priv, DPLL(pipe),
+		       pipe_config->dpll_hw_state.dpll & ~(DPLL_VCO_ENABLE | DPLL_EXT_BUFFER_ENABLE_VLV));
 
 	/* No need to actually set up the DPLL with DSI */
 	if ((pipe_config->dpll_hw_state.dpll & DPLL_VCO_ENABLE) == 0)
@@ -8307,8 +8339,8 @@ static void chv_prepare_pll(struct intel_crtc *crtc,
 	int vco;
 
 	/* Enable Refclk and SSC */
-	I915_WRITE(DPLL(pipe),
-		   pipe_config->dpll_hw_state.dpll & ~DPLL_VCO_ENABLE);
+	intel_de_write(dev_priv, DPLL(pipe),
+		       pipe_config->dpll_hw_state.dpll & ~DPLL_VCO_ENABLE);
 
 	/* No need to actually set up the DPLL with DSI */
 	if ((pipe_config->dpll_hw_state.dpll & DPLL_VCO_ENABLE) == 0)
@@ -8607,27 +8639,22 @@ static void intel_set_pipe_timings(const struct intel_crtc_state *crtc_state)
 	}
 
 	if (INTEL_GEN(dev_priv) > 3)
-		I915_WRITE(VSYNCSHIFT(cpu_transcoder), vsyncshift);
-
-	I915_WRITE(HTOTAL(cpu_transcoder),
-		   (adjusted_mode->crtc_hdisplay - 1) |
-		   ((adjusted_mode->crtc_htotal - 1) << 16));
-	I915_WRITE(HBLANK(cpu_transcoder),
-		   (adjusted_mode->crtc_hblank_start - 1) |
-		   ((adjusted_mode->crtc_hblank_end - 1) << 16));
-	I915_WRITE(HSYNC(cpu_transcoder),
-		   (adjusted_mode->crtc_hsync_start - 1) |
-		   ((adjusted_mode->crtc_hsync_end - 1) << 16));
-
-	I915_WRITE(VTOTAL(cpu_transcoder),
-		   (adjusted_mode->crtc_vdisplay - 1) |
-		   ((crtc_vtotal - 1) << 16));
-	I915_WRITE(VBLANK(cpu_transcoder),
-		   (adjusted_mode->crtc_vblank_start - 1) |
-		   ((crtc_vblank_end - 1) << 16));
-	I915_WRITE(VSYNC(cpu_transcoder),
-		   (adjusted_mode->crtc_vsync_start - 1) |
-		   ((adjusted_mode->crtc_vsync_end - 1) << 16));
+		intel_de_write(dev_priv, VSYNCSHIFT(cpu_transcoder),
+		               vsyncshift);
+
+	intel_de_write(dev_priv, HTOTAL(cpu_transcoder),
+		       (adjusted_mode->crtc_hdisplay - 1) | ((adjusted_mode->crtc_htotal - 1) << 16));
+	intel_de_write(dev_priv, HBLANK(cpu_transcoder),
+		       (adjusted_mode->crtc_hblank_start - 1) | ((adjusted_mode->crtc_hblank_end - 1) << 16));
+	intel_de_write(dev_priv, HSYNC(cpu_transcoder),
+		       (adjusted_mode->crtc_hsync_start - 1) | ((adjusted_mode->crtc_hsync_end - 1) << 16));
+
+	intel_de_write(dev_priv, VTOTAL(cpu_transcoder),
+		       (adjusted_mode->crtc_vdisplay - 1) | ((crtc_vtotal - 1) << 16));
+	intel_de_write(dev_priv, VBLANK(cpu_transcoder),
+		       (adjusted_mode->crtc_vblank_start - 1) | ((crtc_vblank_end - 1) << 16));
+	intel_de_write(dev_priv, VSYNC(cpu_transcoder),
+		       (adjusted_mode->crtc_vsync_start - 1) | ((adjusted_mode->crtc_vsync_end - 1) << 16));
 
 	/* Workaround: when the EDP input selection is B, the VTOTAL_B must be
 	 * programmed with the VTOTAL_EDP value. Same for VTOTAL_C. This is
@@ -8635,7 +8662,8 @@ static void intel_set_pipe_timings(const struct intel_crtc_state *crtc_state)
 	 * bits. */
 	if (IS_HASWELL(dev_priv) && cpu_transcoder == TRANSCODER_EDP &&
 	    (pipe == PIPE_B || pipe == PIPE_C))
-		I915_WRITE(VTOTAL(pipe), I915_READ(VTOTAL(cpu_transcoder)));
+		intel_de_write(dev_priv, VTOTAL(pipe),
+		               intel_de_read(dev_priv, VTOTAL(cpu_transcoder)));
 
 }
 
@@ -8648,9 +8676,8 @@ static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state)
 	/* pipesrc controls the size that is scaled from, which should
 	 * always be the user's requested size.
 	 */
-	I915_WRITE(PIPESRC(pipe),
-		   ((crtc_state->pipe_src_w - 1) << 16) |
-		   (crtc_state->pipe_src_h - 1));
+	intel_de_write(dev_priv, PIPESRC(pipe),
+		       ((crtc_state->pipe_src_w - 1) << 16) | (crtc_state->pipe_src_h - 1));
 }
 
 static bool intel_pipe_is_interlaced(const struct intel_crtc_state *crtc_state)
@@ -8663,9 +8690,9 @@ static bool intel_pipe_is_interlaced(const struct intel_crtc_state *crtc_state)
 
 	if (INTEL_GEN(dev_priv) >= 9 ||
 	    IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
-		return I915_READ(PIPECONF(cpu_transcoder)) & PIPECONF_INTERLACE_MASK_HSW;
+		return intel_de_read(dev_priv, PIPECONF(cpu_transcoder)) & PIPECONF_INTERLACE_MASK_HSW;
 	else
-		return I915_READ(PIPECONF(cpu_transcoder)) & PIPECONF_INTERLACE_MASK;
+		return intel_de_read(dev_priv, PIPECONF(cpu_transcoder)) & PIPECONF_INTERLACE_MASK;
 }
 
 static void intel_get_pipe_timings(struct intel_crtc *crtc,
@@ -8676,33 +8703,33 @@ static void intel_get_pipe_timings(struct intel_crtc *crtc,
 	enum transcoder cpu_transcoder = pipe_config->cpu_transcoder;
 	u32 tmp;
 
-	tmp = I915_READ(HTOTAL(cpu_transcoder));
+	tmp = intel_de_read(dev_priv, HTOTAL(cpu_transcoder));
 	pipe_config->hw.adjusted_mode.crtc_hdisplay = (tmp & 0xffff) + 1;
 	pipe_config->hw.adjusted_mode.crtc_htotal = ((tmp >> 16) & 0xffff) + 1;
 
 	if (!transcoder_is_dsi(cpu_transcoder)) {
-		tmp = I915_READ(HBLANK(cpu_transcoder));
+		tmp = intel_de_read(dev_priv, HBLANK(cpu_transcoder));
 		pipe_config->hw.adjusted_mode.crtc_hblank_start =
 							(tmp & 0xffff) + 1;
 		pipe_config->hw.adjusted_mode.crtc_hblank_end =
 						((tmp >> 16) & 0xffff) + 1;
 	}
-	tmp = I915_READ(HSYNC(cpu_transcoder));
+	tmp = intel_de_read(dev_priv, HSYNC(cpu_transcoder));
 	pipe_config->hw.adjusted_mode.crtc_hsync_start = (tmp & 0xffff) + 1;
 	pipe_config->hw.adjusted_mode.crtc_hsync_end = ((tmp >> 16) & 0xffff) + 1;
 
-	tmp = I915_READ(VTOTAL(cpu_transcoder));
+	tmp = intel_de_read(dev_priv, VTOTAL(cpu_transcoder));
 	pipe_config->hw.adjusted_mode.crtc_vdisplay = (tmp & 0xffff) + 1;
 	pipe_config->hw.adjusted_mode.crtc_vtotal = ((tmp >> 16) & 0xffff) + 1;
 
 	if (!transcoder_is_dsi(cpu_transcoder)) {
-		tmp = I915_READ(VBLANK(cpu_transcoder));
+		tmp = intel_de_read(dev_priv, VBLANK(cpu_transcoder));
 		pipe_config->hw.adjusted_mode.crtc_vblank_start =
 							(tmp & 0xffff) + 1;
 		pipe_config->hw.adjusted_mode.crtc_vblank_end =
 						((tmp >> 16) & 0xffff) + 1;
 	}
-	tmp = I915_READ(VSYNC(cpu_transcoder));
+	tmp = intel_de_read(dev_priv, VSYNC(cpu_transcoder));
 	pipe_config->hw.adjusted_mode.crtc_vsync_start = (tmp & 0xffff) + 1;
 	pipe_config->hw.adjusted_mode.crtc_vsync_end = ((tmp >> 16) & 0xffff) + 1;
 
@@ -8720,7 +8747,7 @@ static void intel_get_pipe_src_size(struct intel_crtc *crtc,
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	u32 tmp;
 
-	tmp = I915_READ(PIPESRC(crtc->pipe));
+	tmp = intel_de_read(dev_priv, PIPESRC(crtc->pipe));
 	pipe_config->pipe_src_h = (tmp & 0xffff) + 1;
 	pipe_config->pipe_src_w = ((tmp >> 16) & 0xffff) + 1;
 
@@ -8761,7 +8788,7 @@ static void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
 
 	/* we keep both pipes enabled on 830 */
 	if (IS_I830(dev_priv))
-		pipeconf |= I915_READ(PIPECONF(crtc->pipe)) & PIPECONF_ENABLE;
+		pipeconf |= intel_de_read(dev_priv, PIPECONF(crtc->pipe)) & PIPECONF_ENABLE;
 
 	if (crtc_state->double_wide)
 		pipeconf |= PIPECONF_DOUBLE_WIDE;
@@ -8808,8 +8835,8 @@ static void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
 
 	pipeconf |= PIPECONF_FRAME_START_DELAY(0);
 
-	I915_WRITE(PIPECONF(crtc->pipe), pipeconf);
-	POSTING_READ(PIPECONF(crtc->pipe));
+	intel_de_write(dev_priv, PIPECONF(crtc->pipe), pipeconf);
+	intel_de_posting_read(dev_priv, PIPECONF(crtc->pipe));
 }
 
 static int i8xx_crtc_compute_clock(struct intel_crtc *crtc,
@@ -9018,7 +9045,7 @@ static void i9xx_get_pfit_config(struct intel_crtc *crtc,
 	if (!i9xx_has_pfit(dev_priv))
 		return;
 
-	tmp = I915_READ(PFIT_CONTROL);
+	tmp = intel_de_read(dev_priv, PFIT_CONTROL);
 	if (!(tmp & PFIT_ENABLE))
 		return;
 
@@ -9032,7 +9059,8 @@ static void i9xx_get_pfit_config(struct intel_crtc *crtc,
 	}
 
 	pipe_config->gmch_pfit.control = tmp;
-	pipe_config->gmch_pfit.pgm_ratios = I915_READ(PFIT_PGM_RATIOS);
+	pipe_config->gmch_pfit.pgm_ratios = intel_de_read(dev_priv,
+							  PFIT_PGM_RATIOS);
 }
 
 static void vlv_crtc_clock_get(struct intel_crtc *crtc,
@@ -9092,7 +9120,7 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 
 	fb->dev = dev;
 
-	val = I915_READ(DSPCNTR(i9xx_plane));
+	val = intel_de_read(dev_priv, DSPCNTR(i9xx_plane));
 
 	if (INTEL_GEN(dev_priv) >= 4) {
 		if (val & DISPPLANE_TILED) {
@@ -9113,24 +9141,26 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 	fb->format = drm_format_info(fourcc);
 
 	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
-		offset = I915_READ(DSPOFFSET(i9xx_plane));
-		base = I915_READ(DSPSURF(i9xx_plane)) & 0xfffff000;
+		offset = intel_de_read(dev_priv, DSPOFFSET(i9xx_plane));
+		base = intel_de_read(dev_priv, DSPSURF(i9xx_plane)) & 0xfffff000;
 	} else if (INTEL_GEN(dev_priv) >= 4) {
 		if (plane_config->tiling)
-			offset = I915_READ(DSPTILEOFF(i9xx_plane));
+			offset = intel_de_read(dev_priv,
+					       DSPTILEOFF(i9xx_plane));
 		else
-			offset = I915_READ(DSPLINOFF(i9xx_plane));
-		base = I915_READ(DSPSURF(i9xx_plane)) & 0xfffff000;
+			offset = intel_de_read(dev_priv,
+					       DSPLINOFF(i9xx_plane));
+		base = intel_de_read(dev_priv, DSPSURF(i9xx_plane)) & 0xfffff000;
 	} else {
-		base = I915_READ(DSPADDR(i9xx_plane));
+		base = intel_de_read(dev_priv, DSPADDR(i9xx_plane));
 	}
 	plane_config->base = base;
 
-	val = I915_READ(PIPESRC(pipe));
+	val = intel_de_read(dev_priv, PIPESRC(pipe));
 	fb->width = ((val >> 16) & 0xfff) + 1;
 	fb->height = ((val >> 0) & 0xfff) + 1;
 
-	val = I915_READ(DSPSTRIDE(i9xx_plane));
+	val = intel_de_read(dev_priv, DSPSTRIDE(i9xx_plane));
 	fb->pitches[0] = val & 0xffffffc0;
 
 	aligned_height = intel_fb_align_height(fb, 0, fb->height);
@@ -9185,7 +9215,7 @@ bdw_get_pipemisc_output_format(struct intel_crtc *crtc)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 tmp;
 
-	tmp = I915_READ(PIPEMISC(crtc->pipe));
+	tmp = intel_de_read(dev_priv, PIPEMISC(crtc->pipe));
 
 	if (tmp & PIPEMISC_YUV420_ENABLE) {
 		/* We support 4:2:0 in full blend mode only */
@@ -9207,7 +9237,7 @@ static void i9xx_get_pipe_color_config(struct intel_crtc_state *crtc_state)
 	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
 	u32 tmp;
 
-	tmp = I915_READ(DSPCNTR(i9xx_plane));
+	tmp = intel_de_read(dev_priv, DSPCNTR(i9xx_plane));
 
 	if (tmp & DISPPLANE_GAMMA_ENABLE)
 		crtc_state->gamma_enable = true;
@@ -9238,7 +9268,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 
 	ret = false;
 
-	tmp = I915_READ(PIPECONF(crtc->pipe));
+	tmp = intel_de_read(dev_priv, PIPECONF(crtc->pipe));
 	if (!(tmp & PIPECONF_ENABLE))
 		goto out;
 
@@ -9267,7 +9297,8 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 		PIPECONF_GAMMA_MODE_SHIFT;
 
 	if (IS_CHERRYVIEW(dev_priv))
-		pipe_config->cgm_mode = I915_READ(CGM_PIPE_MODE(crtc->pipe));
+		pipe_config->cgm_mode = intel_de_read(dev_priv,
+						      CGM_PIPE_MODE(crtc->pipe));
 
 	i9xx_get_pipe_color_config(pipe_config);
 	intel_color_get_config(pipe_config);
@@ -9285,14 +9316,14 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 		if (IS_CHERRYVIEW(dev_priv) && crtc->pipe != PIPE_A)
 			tmp = dev_priv->chv_dpll_md[crtc->pipe];
 		else
-			tmp = I915_READ(DPLL_MD(crtc->pipe));
+			tmp = intel_de_read(dev_priv, DPLL_MD(crtc->pipe));
 		pipe_config->pixel_multiplier =
 			((tmp & DPLL_MD_UDI_MULTIPLIER_MASK)
 			 >> DPLL_MD_UDI_MULTIPLIER_SHIFT) + 1;
 		pipe_config->dpll_hw_state.dpll_md = tmp;
 	} else if (IS_I945G(dev_priv) || IS_I945GM(dev_priv) ||
 		   IS_G33(dev_priv) || IS_PINEVIEW(dev_priv)) {
-		tmp = I915_READ(DPLL(crtc->pipe));
+		tmp = intel_de_read(dev_priv, DPLL(crtc->pipe));
 		pipe_config->pixel_multiplier =
 			((tmp & SDVO_MULTIPLIER_MASK)
 			 >> SDVO_MULTIPLIER_SHIFT_HIRES) + 1;
@@ -9302,10 +9333,13 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 		 * function. */
 		pipe_config->pixel_multiplier = 1;
 	}
-	pipe_config->dpll_hw_state.dpll = I915_READ(DPLL(crtc->pipe));
+	pipe_config->dpll_hw_state.dpll = intel_de_read(dev_priv,
+							DPLL(crtc->pipe));
 	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv)) {
-		pipe_config->dpll_hw_state.fp0 = I915_READ(FP0(crtc->pipe));
-		pipe_config->dpll_hw_state.fp1 = I915_READ(FP1(crtc->pipe));
+		pipe_config->dpll_hw_state.fp0 = intel_de_read(dev_priv,
+							       FP0(crtc->pipe));
+		pipe_config->dpll_hw_state.fp1 = intel_de_read(dev_priv,
+							       FP1(crtc->pipe));
 	} else {
 		/* Mask out read-only status bits. */
 		pipe_config->dpll_hw_state.dpll &= ~(DPLL_LOCK_VLV |
@@ -9375,7 +9409,7 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 
 	/* Check if any DPLLs are using the SSC source */
 	for (i = 0; i < dev_priv->num_shared_dpll; i++) {
-		u32 temp = I915_READ(PCH_DPLL(i));
+		u32 temp = intel_de_read(dev_priv, PCH_DPLL(i));
 
 		if (!(temp & DPLL_VCO_ENABLE))
 			continue;
@@ -9395,7 +9429,7 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 	 * PCH B stepping, previous chipset stepping should be
 	 * ignoring this setting.
 	 */
-	val = I915_READ(PCH_DREF_CONTROL);
+	val = intel_de_read(dev_priv, PCH_DREF_CONTROL);
 
 	/* As we must carefully and slowly disable/enable each source in turn,
 	 * compute the final state we want first and check if we need to
@@ -9453,8 +9487,8 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 			val &= ~DREF_SSC1_ENABLE;
 
 		/* Get SSC going before enabling the outputs */
-		I915_WRITE(PCH_DREF_CONTROL, val);
-		POSTING_READ(PCH_DREF_CONTROL);
+		intel_de_write(dev_priv, PCH_DREF_CONTROL, val);
+		intel_de_posting_read(dev_priv, PCH_DREF_CONTROL);
 		udelay(200);
 
 		val &= ~DREF_CPU_SOURCE_OUTPUT_MASK;
@@ -9469,8 +9503,8 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 		} else
 			val |= DREF_CPU_SOURCE_OUTPUT_DISABLE;
 
-		I915_WRITE(PCH_DREF_CONTROL, val);
-		POSTING_READ(PCH_DREF_CONTROL);
+		intel_de_write(dev_priv, PCH_DREF_CONTROL, val);
+		intel_de_posting_read(dev_priv, PCH_DREF_CONTROL);
 		udelay(200);
 	} else {
 		DRM_DEBUG_KMS("Disabling CPU source output\n");
@@ -9480,8 +9514,8 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 		/* Turn off CPU output */
 		val |= DREF_CPU_SOURCE_OUTPUT_DISABLE;
 
-		I915_WRITE(PCH_DREF_CONTROL, val);
-		POSTING_READ(PCH_DREF_CONTROL);
+		intel_de_write(dev_priv, PCH_DREF_CONTROL, val);
+		intel_de_posting_read(dev_priv, PCH_DREF_CONTROL);
 		udelay(200);
 
 		if (!using_ssc_source) {
@@ -9494,8 +9528,8 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 			/* Turn off SSC1 */
 			val &= ~DREF_SSC1_ENABLE;
 
-			I915_WRITE(PCH_DREF_CONTROL, val);
-			POSTING_READ(PCH_DREF_CONTROL);
+			intel_de_write(dev_priv, PCH_DREF_CONTROL, val);
+			intel_de_posting_read(dev_priv, PCH_DREF_CONTROL);
 			udelay(200);
 		}
 	}
@@ -9507,19 +9541,19 @@ static void lpt_reset_fdi_mphy(struct drm_i915_private *dev_priv)
 {
 	u32 tmp;
 
-	tmp = I915_READ(SOUTH_CHICKEN2);
+	tmp = intel_de_read(dev_priv, SOUTH_CHICKEN2);
 	tmp |= FDI_MPHY_IOSFSB_RESET_CTL;
-	I915_WRITE(SOUTH_CHICKEN2, tmp);
+	intel_de_write(dev_priv, SOUTH_CHICKEN2, tmp);
 
-	if (wait_for_us(I915_READ(SOUTH_CHICKEN2) &
+	if (wait_for_us(intel_de_read(dev_priv, SOUTH_CHICKEN2) &
 			FDI_MPHY_IOSFSB_RESET_STATUS, 100))
 		DRM_ERROR("FDI mPHY reset assert timeout\n");
 
-	tmp = I915_READ(SOUTH_CHICKEN2);
+	tmp = intel_de_read(dev_priv, SOUTH_CHICKEN2);
 	tmp &= ~FDI_MPHY_IOSFSB_RESET_CTL;
-	I915_WRITE(SOUTH_CHICKEN2, tmp);
+	intel_de_write(dev_priv, SOUTH_CHICKEN2, tmp);
 
-	if (wait_for_us((I915_READ(SOUTH_CHICKEN2) &
+	if (wait_for_us((intel_de_read(dev_priv, SOUTH_CHICKEN2) &
 			 FDI_MPHY_IOSFSB_RESET_STATUS) == 0, 100))
 		DRM_ERROR("FDI mPHY reset de-assert timeout\n");
 }
@@ -9733,8 +9767,8 @@ static void lpt_bend_clkout_dp(struct drm_i915_private *dev_priv, int steps)
 
 static bool spll_uses_pch_ssc(struct drm_i915_private *dev_priv)
 {
-	u32 fuse_strap = I915_READ(FUSE_STRAP);
-	u32 ctl = I915_READ(SPLL_CTL);
+	u32 fuse_strap = intel_de_read(dev_priv, FUSE_STRAP);
+	u32 ctl = intel_de_read(dev_priv, SPLL_CTL);
 
 	if ((ctl & SPLL_PLL_ENABLE) == 0)
 		return false;
@@ -9753,8 +9787,8 @@ static bool spll_uses_pch_ssc(struct drm_i915_private *dev_priv)
 static bool wrpll_uses_pch_ssc(struct drm_i915_private *dev_priv,
 			       enum intel_dpll_id id)
 {
-	u32 fuse_strap = I915_READ(FUSE_STRAP);
-	u32 ctl = I915_READ(WRPLL_CTL(id));
+	u32 fuse_strap = intel_de_read(dev_priv, FUSE_STRAP);
+	u32 ctl = intel_de_read(dev_priv, WRPLL_CTL(id));
 
 	if ((ctl & WRPLL_PLL_ENABLE) == 0)
 		return false;
@@ -9891,8 +9925,8 @@ static void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state)
 
 	val |= PIPECONF_FRAME_START_DELAY(0);
 
-	I915_WRITE(PIPECONF(pipe), val);
-	POSTING_READ(PIPECONF(pipe));
+	intel_de_write(dev_priv, PIPECONF(pipe), val);
+	intel_de_posting_read(dev_priv, PIPECONF(pipe));
 }
 
 static void hsw_set_pipeconf(const struct intel_crtc_state *crtc_state)
@@ -9914,8 +9948,8 @@ static void hsw_set_pipeconf(const struct intel_crtc_state *crtc_state)
 	    crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB)
 		val |= PIPECONF_OUTPUT_COLORSPACE_YUV_HSW;
 
-	I915_WRITE(PIPECONF(cpu_transcoder), val);
-	POSTING_READ(PIPECONF(cpu_transcoder));
+	intel_de_write(dev_priv, PIPECONF(cpu_transcoder), val);
+	intel_de_posting_read(dev_priv, PIPECONF(cpu_transcoder));
 }
 
 static void bdw_set_pipemisc(const struct intel_crtc_state *crtc_state)
@@ -9958,7 +9992,7 @@ static void bdw_set_pipemisc(const struct intel_crtc_state *crtc_state)
 					   BIT(PLANE_CURSOR))) == 0)
 		val |= PIPEMISC_HDR_MODE_PRECISION;
 
-	I915_WRITE(PIPEMISC(crtc->pipe), val);
+	intel_de_write(dev_priv, PIPEMISC(crtc->pipe), val);
 }
 
 int bdw_get_pipemisc_bpp(struct intel_crtc *crtc)
@@ -9966,7 +10000,7 @@ int bdw_get_pipemisc_bpp(struct intel_crtc *crtc)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 tmp;
 
-	tmp = I915_READ(PIPEMISC(crtc->pipe));
+	tmp = intel_de_read(dev_priv, PIPEMISC(crtc->pipe));
 
 	switch (tmp & PIPEMISC_DITHER_BPC_MASK) {
 	case PIPEMISC_DITHER_6_BPC:
@@ -10164,12 +10198,12 @@ static void intel_pch_transcoder_get_m_n(struct intel_crtc *crtc,
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	enum pipe pipe = crtc->pipe;
 
-	m_n->link_m = I915_READ(PCH_TRANS_LINK_M1(pipe));
-	m_n->link_n = I915_READ(PCH_TRANS_LINK_N1(pipe));
-	m_n->gmch_m = I915_READ(PCH_TRANS_DATA_M1(pipe))
+	m_n->link_m = intel_de_read(dev_priv, PCH_TRANS_LINK_M1(pipe));
+	m_n->link_n = intel_de_read(dev_priv, PCH_TRANS_LINK_N1(pipe));
+	m_n->gmch_m = intel_de_read(dev_priv, PCH_TRANS_DATA_M1(pipe))
 		& ~TU_SIZE_MASK;
-	m_n->gmch_n = I915_READ(PCH_TRANS_DATA_N1(pipe));
-	m_n->tu = ((I915_READ(PCH_TRANS_DATA_M1(pipe))
+	m_n->gmch_n = intel_de_read(dev_priv, PCH_TRANS_DATA_N1(pipe));
+	m_n->tu = ((intel_de_read(dev_priv, PCH_TRANS_DATA_M1(pipe))
 		    & TU_SIZE_MASK) >> TU_SIZE_SHIFT) + 1;
 }
 
@@ -10182,30 +10216,38 @@ static void intel_cpu_transcoder_get_m_n(struct intel_crtc *crtc,
 	enum pipe pipe = crtc->pipe;
 
 	if (INTEL_GEN(dev_priv) >= 5) {
-		m_n->link_m = I915_READ(PIPE_LINK_M1(transcoder));
-		m_n->link_n = I915_READ(PIPE_LINK_N1(transcoder));
-		m_n->gmch_m = I915_READ(PIPE_DATA_M1(transcoder))
+		m_n->link_m = intel_de_read(dev_priv,
+					    PIPE_LINK_M1(transcoder));
+		m_n->link_n = intel_de_read(dev_priv,
+					    PIPE_LINK_N1(transcoder));
+		m_n->gmch_m = intel_de_read(dev_priv,
+					    PIPE_DATA_M1(transcoder))
 			& ~TU_SIZE_MASK;
-		m_n->gmch_n = I915_READ(PIPE_DATA_N1(transcoder));
-		m_n->tu = ((I915_READ(PIPE_DATA_M1(transcoder))
+		m_n->gmch_n = intel_de_read(dev_priv,
+					    PIPE_DATA_N1(transcoder));
+		m_n->tu = ((intel_de_read(dev_priv, PIPE_DATA_M1(transcoder))
 			    & TU_SIZE_MASK) >> TU_SIZE_SHIFT) + 1;
 
 		if (m2_n2 && transcoder_has_m2_n2(dev_priv, transcoder)) {
-			m2_n2->link_m = I915_READ(PIPE_LINK_M2(transcoder));
-			m2_n2->link_n =	I915_READ(PIPE_LINK_N2(transcoder));
-			m2_n2->gmch_m =	I915_READ(PIPE_DATA_M2(transcoder))
+			m2_n2->link_m = intel_de_read(dev_priv,
+						      PIPE_LINK_M2(transcoder));
+			m2_n2->link_n =	intel_de_read(dev_priv,
+							     PIPE_LINK_N2(transcoder));
+			m2_n2->gmch_m =	intel_de_read(dev_priv,
+							     PIPE_DATA_M2(transcoder))
 					& ~TU_SIZE_MASK;
-			m2_n2->gmch_n =	I915_READ(PIPE_DATA_N2(transcoder));
-			m2_n2->tu = ((I915_READ(PIPE_DATA_M2(transcoder))
+			m2_n2->gmch_n =	intel_de_read(dev_priv,
+							     PIPE_DATA_N2(transcoder));
+			m2_n2->tu = ((intel_de_read(dev_priv, PIPE_DATA_M2(transcoder))
 					& TU_SIZE_MASK) >> TU_SIZE_SHIFT) + 1;
 		}
 	} else {
-		m_n->link_m = I915_READ(PIPE_LINK_M_G4X(pipe));
-		m_n->link_n = I915_READ(PIPE_LINK_N_G4X(pipe));
-		m_n->gmch_m = I915_READ(PIPE_DATA_M_G4X(pipe))
+		m_n->link_m = intel_de_read(dev_priv, PIPE_LINK_M_G4X(pipe));
+		m_n->link_n = intel_de_read(dev_priv, PIPE_LINK_N_G4X(pipe));
+		m_n->gmch_m = intel_de_read(dev_priv, PIPE_DATA_M_G4X(pipe))
 			& ~TU_SIZE_MASK;
-		m_n->gmch_n = I915_READ(PIPE_DATA_N_G4X(pipe));
-		m_n->tu = ((I915_READ(PIPE_DATA_M_G4X(pipe))
+		m_n->gmch_n = intel_de_read(dev_priv, PIPE_DATA_N_G4X(pipe));
+		m_n->tu = ((intel_de_read(dev_priv, PIPE_DATA_M_G4X(pipe))
 			    & TU_SIZE_MASK) >> TU_SIZE_SHIFT) + 1;
 	}
 }
@@ -10240,12 +10282,14 @@ static void skl_get_pfit_config(struct intel_crtc *crtc,
 
 	/* find scaler attached to this pipe */
 	for (i = 0; i < crtc->num_scalers; i++) {
-		ps_ctrl = I915_READ(SKL_PS_CTRL(crtc->pipe, i));
+		ps_ctrl = intel_de_read(dev_priv, SKL_PS_CTRL(crtc->pipe, i));
 		if (ps_ctrl & PS_SCALER_EN && !(ps_ctrl & PS_PLANE_SEL_MASK)) {
 			id = i;
 			pipe_config->pch_pfit.enabled = true;
-			pipe_config->pch_pfit.pos = I915_READ(SKL_PS_WIN_POS(crtc->pipe, i));
-			pipe_config->pch_pfit.size = I915_READ(SKL_PS_WIN_SZ(crtc->pipe, i));
+			pipe_config->pch_pfit.pos = intel_de_read(dev_priv,
+								  SKL_PS_WIN_POS(crtc->pipe, i));
+			pipe_config->pch_pfit.size = intel_de_read(dev_priv,
+								   SKL_PS_WIN_SZ(crtc->pipe, i));
 			scaler_state->scalers[i].in_use = true;
 			break;
 		}
@@ -10289,7 +10333,7 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 
 	fb->dev = dev;
 
-	val = I915_READ(PLANE_CTL(pipe, plane_id));
+	val = intel_de_read(dev_priv, PLANE_CTL(pipe, plane_id));
 
 	if (INTEL_GEN(dev_priv) >= 11)
 		pixel_format = val & ICL_PLANE_CTL_FORMAT_MASK;
@@ -10297,7 +10341,8 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 		pixel_format = val & PLANE_CTL_FORMAT_MASK;
 
 	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)) {
-		alpha = I915_READ(PLANE_COLOR_CTL(pipe, plane_id));
+		alpha = intel_de_read(dev_priv,
+				      PLANE_COLOR_CTL(pipe, plane_id));
 		alpha &= PLANE_COLOR_ALPHA_MASK;
 	} else {
 		alpha = val & PLANE_CTL_ALPHA_MASK;
@@ -10361,16 +10406,16 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 	    val & PLANE_CTL_FLIP_HORIZONTAL)
 		plane_config->rotation |= DRM_MODE_REFLECT_X;
 
-	base = I915_READ(PLANE_SURF(pipe, plane_id)) & 0xfffff000;
+	base = intel_de_read(dev_priv, PLANE_SURF(pipe, plane_id)) & 0xfffff000;
 	plane_config->base = base;
 
-	offset = I915_READ(PLANE_OFFSET(pipe, plane_id));
+	offset = intel_de_read(dev_priv, PLANE_OFFSET(pipe, plane_id));
 
-	val = I915_READ(PLANE_SIZE(pipe, plane_id));
+	val = intel_de_read(dev_priv, PLANE_SIZE(pipe, plane_id));
 	fb->height = ((val >> 16) & 0xffff) + 1;
 	fb->width = ((val >> 0) & 0xffff) + 1;
 
-	val = I915_READ(PLANE_STRIDE(pipe, plane_id));
+	val = intel_de_read(dev_priv, PLANE_STRIDE(pipe, plane_id));
 	stride_mult = skl_plane_stride_mult(fb, 0, DRM_MODE_ROTATE_0);
 	fb->pitches[0] = (val & 0x3ff) * stride_mult;
 
@@ -10397,12 +10442,14 @@ static void ilk_get_pfit_config(struct intel_crtc *crtc,
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	u32 tmp;
 
-	tmp = I915_READ(PF_CTL(crtc->pipe));
+	tmp = intel_de_read(dev_priv, PF_CTL(crtc->pipe));
 
 	if (tmp & PF_ENABLE) {
 		pipe_config->pch_pfit.enabled = true;
-		pipe_config->pch_pfit.pos = I915_READ(PF_WIN_POS(crtc->pipe));
-		pipe_config->pch_pfit.size = I915_READ(PF_WIN_SZ(crtc->pipe));
+		pipe_config->pch_pfit.pos = intel_de_read(dev_priv,
+							  PF_WIN_POS(crtc->pipe));
+		pipe_config->pch_pfit.size = intel_de_read(dev_priv,
+							   PF_WIN_SZ(crtc->pipe));
 
 		/* We currently do not free assignements of panel fitters on
 		 * ivb/hsw (since we don't use the higher upscaling modes which
@@ -10434,7 +10481,7 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 	pipe_config->master_transcoder = INVALID_TRANSCODER;
 
 	ret = false;
-	tmp = I915_READ(PIPECONF(crtc->pipe));
+	tmp = intel_de_read(dev_priv, PIPECONF(crtc->pipe));
 	if (!(tmp & PIPECONF_ENABLE))
 		goto out;
 
@@ -10471,18 +10518,19 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 	pipe_config->gamma_mode = (tmp & PIPECONF_GAMMA_MODE_MASK_ILK) >>
 		PIPECONF_GAMMA_MODE_SHIFT;
 
-	pipe_config->csc_mode = I915_READ(PIPE_CSC_MODE(crtc->pipe));
+	pipe_config->csc_mode = intel_de_read(dev_priv,
+					      PIPE_CSC_MODE(crtc->pipe));
 
 	i9xx_get_pipe_color_config(pipe_config);
 	intel_color_get_config(pipe_config);
 
-	if (I915_READ(PCH_TRANSCONF(crtc->pipe)) & TRANS_ENABLE) {
+	if (intel_de_read(dev_priv, PCH_TRANSCONF(crtc->pipe)) & TRANS_ENABLE) {
 		struct intel_shared_dpll *pll;
 		enum intel_dpll_id pll_id;
 
 		pipe_config->has_pch_encoder = true;
 
-		tmp = I915_READ(FDI_RX_CTL(crtc->pipe));
+		tmp = intel_de_read(dev_priv, FDI_RX_CTL(crtc->pipe));
 		pipe_config->fdi_lanes = ((FDI_DP_PORT_WIDTH_MASK & tmp) >>
 					  FDI_DP_PORT_WIDTH_SHIFT) + 1;
 
@@ -10495,7 +10543,7 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 			 */
 			pll_id = (enum intel_dpll_id) crtc->pipe;
 		} else {
-			tmp = I915_READ(PCH_DPLL_SEL);
+			tmp = intel_de_read(dev_priv, PCH_DPLL_SEL);
 			if (tmp & TRANS_DPLLB_SEL(crtc->pipe))
 				pll_id = DPLL_ID_PCH_PLL_B;
 			else
@@ -10560,7 +10608,7 @@ static void cnl_get_ddi_pll(struct drm_i915_private *dev_priv, enum port port,
 	enum intel_dpll_id id;
 	u32 temp;
 
-	temp = I915_READ(DPCLKA_CFGCR0) & DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(port);
+	temp = intel_de_read(dev_priv, DPCLKA_CFGCR0) & DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(port);
 	id = temp >> DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(port);
 
 	if (WARN_ON(id < SKL_DPLL0 || id > SKL_DPLL2))
@@ -10578,12 +10626,12 @@ static void icl_get_ddi_pll(struct drm_i915_private *dev_priv, enum port port,
 	u32 temp;
 
 	if (intel_phy_is_combo(dev_priv, phy)) {
-		temp = I915_READ(ICL_DPCLKA_CFGCR0) &
+		temp = intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0) &
 			ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
 		id = temp >> ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy);
 		port_dpll_id = ICL_PORT_DPLL_DEFAULT;
 	} else if (intel_phy_is_tc(dev_priv, phy)) {
-		u32 clk_sel = I915_READ(DDI_CLK_SEL(port)) & DDI_CLK_SEL_MASK;
+		u32 clk_sel = intel_de_read(dev_priv, DDI_CLK_SEL(port)) & DDI_CLK_SEL_MASK;
 
 		if (clk_sel == DDI_CLK_SEL_MG) {
 			id = icl_tc_port_to_pll_id(intel_port_to_tc(dev_priv,
@@ -10635,7 +10683,7 @@ static void skl_get_ddi_pll(struct drm_i915_private *dev_priv, enum port port,
 	enum intel_dpll_id id;
 	u32 temp;
 
-	temp = I915_READ(DPLL_CTRL2) & DPLL_CTRL2_DDI_CLK_SEL_MASK(port);
+	temp = intel_de_read(dev_priv, DPLL_CTRL2) & DPLL_CTRL2_DDI_CLK_SEL_MASK(port);
 	id = temp >> (port * 3 + 1);
 
 	if (WARN_ON(id < SKL_DPLL0 || id > SKL_DPLL3))
@@ -10648,7 +10696,7 @@ static void hsw_get_ddi_pll(struct drm_i915_private *dev_priv, enum port port,
 			    struct intel_crtc_state *pipe_config)
 {
 	enum intel_dpll_id id;
-	u32 ddi_pll_sel = I915_READ(PORT_CLK_SEL(port));
+	u32 ddi_pll_sel = intel_de_read(dev_priv, PORT_CLK_SEL(port));
 
 	switch (ddi_pll_sel) {
 	case PORT_CLK_SEL_WRPLL1:
@@ -10716,7 +10764,8 @@ static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
 		bool force_thru = false;
 		enum pipe trans_pipe;
 
-		tmp = I915_READ(TRANS_DDI_FUNC_CTL(panel_transcoder));
+		tmp = intel_de_read(dev_priv,
+				    TRANS_DDI_FUNC_CTL(panel_transcoder));
 		if (!(tmp & TRANS_DDI_FUNC_ENABLE))
 			continue;
 
@@ -10773,7 +10822,7 @@ static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
 	wakerefs[power_domain] = wf;
 	*power_domain_mask |= BIT_ULL(power_domain);
 
-	tmp = I915_READ(PIPECONF(pipe_config->cpu_transcoder));
+	tmp = intel_de_read(dev_priv, PIPECONF(pipe_config->cpu_transcoder));
 
 	return tmp & PIPECONF_ENABLE;
 }
@@ -10818,11 +10867,11 @@ static bool bxt_get_dsi_transcoder_state(struct intel_crtc *crtc,
 			break;
 
 		/* XXX: this works for video mode only */
-		tmp = I915_READ(BXT_MIPI_PORT_CTRL(port));
+		tmp = intel_de_read(dev_priv, BXT_MIPI_PORT_CTRL(port));
 		if (!(tmp & DPI_ENABLE))
 			continue;
 
-		tmp = I915_READ(MIPI_CTRL(port));
+		tmp = intel_de_read(dev_priv, MIPI_CTRL(port));
 		if ((tmp & BXT_PIPE_SELECT_MASK) != BXT_PIPE_SELECT(crtc->pipe))
 			continue;
 
@@ -10846,7 +10895,8 @@ static void hsw_get_ddi_port_state(struct intel_crtc *crtc,
 		port = (cpu_transcoder == TRANSCODER_DSI_A) ?
 						PORT_A : PORT_B;
 	} else {
-		tmp = I915_READ(TRANS_DDI_FUNC_CTL(cpu_transcoder));
+		tmp = intel_de_read(dev_priv,
+				    TRANS_DDI_FUNC_CTL(cpu_transcoder));
 		if (INTEL_GEN(dev_priv) >= 12)
 			port = TGL_TRANS_DDI_FUNC_CTL_VAL_TO_PORT(tmp);
 		else
@@ -10876,10 +10926,10 @@ static void hsw_get_ddi_port_state(struct intel_crtc *crtc,
 	 * the PCH transcoder is on.
 	 */
 	if (INTEL_GEN(dev_priv) < 9 &&
-	    (port == PORT_E) && I915_READ(LPT_TRANSCONF) & TRANS_ENABLE) {
+	    (port == PORT_E) && intel_de_read(dev_priv, LPT_TRANSCONF) & TRANS_ENABLE) {
 		pipe_config->has_pch_encoder = true;
 
-		tmp = I915_READ(FDI_RX_CTL(PIPE_A));
+		tmp = intel_de_read(dev_priv, FDI_RX_CTL(PIPE_A));
 		pipe_config->fdi_lanes = ((FDI_DP_PORT_WIDTH_MASK & tmp) >>
 					  FDI_DP_PORT_WIDTH_SHIFT) + 1;
 
@@ -10892,7 +10942,8 @@ static enum transcoder transcoder_master_readout(struct drm_i915_private *dev_pr
 {
 	u32 trans_port_sync, master_select;
 
-	trans_port_sync = I915_READ(TRANS_DDI_FUNC_CTL2(cpu_transcoder));
+	trans_port_sync = intel_de_read(dev_priv,
+				        TRANS_DDI_FUNC_CTL2(cpu_transcoder));
 
 	if ((trans_port_sync & PORT_SYNC_MODE_ENABLE) == 0)
 		return INVALID_TRANSCODER;
@@ -10983,7 +11034,8 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	intel_get_pipe_src_size(crtc, pipe_config);
 
 	if (IS_HASWELL(dev_priv)) {
-		u32 tmp = I915_READ(PIPECONF(pipe_config->cpu_transcoder));
+		u32 tmp = intel_de_read(dev_priv,
+					PIPECONF(pipe_config->cpu_transcoder));
 
 		if (tmp & PIPECONF_OUTPUT_COLORSPACE_YUV_HSW)
 			pipe_config->output_format = INTEL_OUTPUT_FORMAT_YCBCR444;
@@ -11006,12 +11058,15 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 			pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR444;
 	}
 
-	pipe_config->gamma_mode = I915_READ(GAMMA_MODE(crtc->pipe));
+	pipe_config->gamma_mode = intel_de_read(dev_priv,
+						GAMMA_MODE(crtc->pipe));
 
-	pipe_config->csc_mode = I915_READ(PIPE_CSC_MODE(crtc->pipe));
+	pipe_config->csc_mode = intel_de_read(dev_priv,
+					      PIPE_CSC_MODE(crtc->pipe));
 
 	if (INTEL_GEN(dev_priv) >= 9) {
-		u32 tmp = I915_READ(SKL_BOTTOM_COLOR(crtc->pipe));
+		u32 tmp = intel_de_read(dev_priv,
+					SKL_BOTTOM_COLOR(crtc->pipe));
 
 		if (tmp & SKL_BOTTOM_COLOR_GAMMA_ENABLE)
 			pipe_config->gamma_enable = true;
@@ -11040,7 +11095,8 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 
 	if (hsw_crtc_supports_ips(crtc)) {
 		if (IS_HASWELL(dev_priv))
-			pipe_config->ips_enabled = I915_READ(IPS_CTL) & IPS_ENABLE;
+			pipe_config->ips_enabled = intel_de_read(dev_priv,
+								 IPS_CTL) & IPS_ENABLE;
 		else {
 			/*
 			 * We cannot readout IPS state on broadwell, set to
@@ -11054,7 +11110,8 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	if (pipe_config->cpu_transcoder != TRANSCODER_EDP &&
 	    !transcoder_is_dsi(pipe_config->cpu_transcoder)) {
 		pipe_config->pixel_multiplier =
-			I915_READ(PIPE_MULT(pipe_config->cpu_transcoder)) + 1;
+			intel_de_read(dev_priv,
+				      PIPE_MULT(pipe_config->cpu_transcoder)) + 1;
 	} else {
 		pipe_config->pixel_multiplier = 1;
 	}
@@ -11315,17 +11372,17 @@ static void i845_update_cursor(struct intel_plane *plane,
 	if (plane->cursor.base != base ||
 	    plane->cursor.size != size ||
 	    plane->cursor.cntl != cntl) {
-		I915_WRITE_FW(CURCNTR(PIPE_A), 0);
-		I915_WRITE_FW(CURBASE(PIPE_A), base);
-		I915_WRITE_FW(CURSIZE, size);
-		I915_WRITE_FW(CURPOS(PIPE_A), pos);
-		I915_WRITE_FW(CURCNTR(PIPE_A), cntl);
+		intel_de_write_fw(dev_priv, CURCNTR(PIPE_A), 0);
+		intel_de_write_fw(dev_priv, CURBASE(PIPE_A), base);
+		intel_de_write_fw(dev_priv, CURSIZE, size);
+		intel_de_write_fw(dev_priv, CURPOS(PIPE_A), pos);
+		intel_de_write_fw(dev_priv, CURCNTR(PIPE_A), cntl);
 
 		plane->cursor.base = base;
 		plane->cursor.size = size;
 		plane->cursor.cntl = cntl;
 	} else {
-		I915_WRITE_FW(CURPOS(PIPE_A), pos);
+		intel_de_write_fw(dev_priv, CURPOS(PIPE_A), pos);
 	}
 
 	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
@@ -11350,7 +11407,7 @@ static bool i845_cursor_get_hw_state(struct intel_plane *plane,
 	if (!wakeref)
 		return false;
 
-	ret = I915_READ(CURCNTR(PIPE_A)) & CURSOR_ENABLE;
+	ret = intel_de_read(dev_priv, CURCNTR(PIPE_A)) & CURSOR_ENABLE;
 
 	*pipe = PIPE_A;
 
@@ -11566,17 +11623,18 @@ static void i9xx_update_cursor(struct intel_plane *plane,
 	    plane->cursor.size != fbc_ctl ||
 	    plane->cursor.cntl != cntl) {
 		if (HAS_CUR_FBC(dev_priv))
-			I915_WRITE_FW(CUR_FBC_CTL(pipe), fbc_ctl);
-		I915_WRITE_FW(CURCNTR(pipe), cntl);
-		I915_WRITE_FW(CURPOS(pipe), pos);
-		I915_WRITE_FW(CURBASE(pipe), base);
+			intel_de_write_fw(dev_priv, CUR_FBC_CTL(pipe),
+					  fbc_ctl);
+		intel_de_write_fw(dev_priv, CURCNTR(pipe), cntl);
+		intel_de_write_fw(dev_priv, CURPOS(pipe), pos);
+		intel_de_write_fw(dev_priv, CURBASE(pipe), base);
 
 		plane->cursor.base = base;
 		plane->cursor.size = fbc_ctl;
 		plane->cursor.cntl = cntl;
 	} else {
-		I915_WRITE_FW(CURPOS(pipe), pos);
-		I915_WRITE_FW(CURBASE(pipe), base);
+		intel_de_write_fw(dev_priv, CURPOS(pipe), pos);
+		intel_de_write_fw(dev_priv, CURBASE(pipe), base);
 	}
 
 	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
@@ -11607,7 +11665,7 @@ static bool i9xx_cursor_get_hw_state(struct intel_plane *plane,
 	if (!wakeref)
 		return false;
 
-	val = I915_READ(CURCNTR(plane->pipe));
+	val = intel_de_read(dev_priv, CURCNTR(plane->pipe));
 
 	ret = val & MCURSOR_MODE;
 
@@ -11924,7 +11982,8 @@ static void i9xx_crtc_clock_get(struct intel_crtc *crtc,
 		else
 			port_clock = i9xx_calc_dpll_params(refclk, &clock);
 	} else {
-		u32 lvds = IS_I830(dev_priv) ? 0 : I915_READ(LVDS);
+		u32 lvds = IS_I830(dev_priv) ? 0 : intel_de_read(dev_priv,
+								 LVDS);
 		bool is_lvds = (pipe == 1) && (lvds & LVDS_PORT_EN);
 
 		if (is_lvds) {
@@ -16547,10 +16606,10 @@ static bool ilk_has_edp_a(struct drm_i915_private *dev_priv)
 	if (!IS_MOBILE(dev_priv))
 		return false;
 
-	if ((I915_READ(DP_A) & DP_DETECTED) == 0)
+	if ((intel_de_read(dev_priv, DP_A) & DP_DETECTED) == 0)
 		return false;
 
-	if (IS_GEN(dev_priv, 5) && (I915_READ(FUSE_STRAP) & ILK_eDP_A_DISABLE))
+	if (IS_GEN(dev_priv, 5) && (intel_de_read(dev_priv, FUSE_STRAP) & ILK_eDP_A_DISABLE))
 		return false;
 
 	return true;
@@ -16565,11 +16624,11 @@ static bool intel_ddi_crt_present(struct drm_i915_private *dev_priv)
 		return false;
 
 	if (HAS_PCH_LPT_H(dev_priv) &&
-	    I915_READ(SFUSE_STRAP) & SFUSE_STRAP_CRT_DISABLED)
+	    intel_de_read(dev_priv, SFUSE_STRAP) & SFUSE_STRAP_CRT_DISABLED)
 		return false;
 
 	/* DDI E can't be used if DDI A requires 4 lanes */
-	if (I915_READ(DDI_BUF_CTL(PORT_A)) & DDI_A_4_LANES)
+	if (intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_A_4_LANES)
 		return false;
 
 	if (!dev_priv->vbt.int_crt_support)
@@ -16595,10 +16654,10 @@ void intel_pps_unlock_regs_wa(struct drm_i915_private *dev_priv)
 		pps_num = 1;
 
 	for (pps_idx = 0; pps_idx < pps_num; pps_idx++) {
-		u32 val = I915_READ(PP_CONTROL(pps_idx));
+		u32 val = intel_de_read(dev_priv, PP_CONTROL(pps_idx));
 
 		val = (val & ~PANEL_UNLOCK_MASK) | PANEL_UNLOCK_REGS;
-		I915_WRITE(PP_CONTROL(pps_idx), val);
+		intel_de_write(dev_priv, PP_CONTROL(pps_idx), val);
 	}
 }
 
@@ -16678,14 +16737,14 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		 * On SKL pre-D0 the strap isn't connected, so we assume
 		 * it's there.
 		 */
-		found = I915_READ(DDI_BUF_CTL(PORT_A)) & DDI_INIT_DISPLAY_DETECTED;
+		found = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_INIT_DISPLAY_DETECTED;
 		/* WaIgnoreDDIAStrap: skl */
 		if (found || IS_GEN9_BC(dev_priv))
 			intel_ddi_init(dev_priv, PORT_A);
 
 		/* DDI B, C, D, and F detection is indicated by the SFUSE_STRAP
 		 * register */
-		found = I915_READ(SFUSE_STRAP);
+		found = intel_de_read(dev_priv, SFUSE_STRAP);
 
 		if (found & SFUSE_STRAP_DDIB_DETECTED)
 			intel_ddi_init(dev_priv, PORT_B);
@@ -16718,25 +16777,25 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		if (ilk_has_edp_a(dev_priv))
 			intel_dp_init(dev_priv, DP_A, PORT_A);
 
-		if (I915_READ(PCH_HDMIB) & SDVO_DETECTED) {
+		if (intel_de_read(dev_priv, PCH_HDMIB) & SDVO_DETECTED) {
 			/* PCH SDVOB multiplex with HDMIB */
 			found = intel_sdvo_init(dev_priv, PCH_SDVOB, PORT_B);
 			if (!found)
 				intel_hdmi_init(dev_priv, PCH_HDMIB, PORT_B);
-			if (!found && (I915_READ(PCH_DP_B) & DP_DETECTED))
+			if (!found && (intel_de_read(dev_priv, PCH_DP_B) & DP_DETECTED))
 				intel_dp_init(dev_priv, PCH_DP_B, PORT_B);
 		}
 
-		if (I915_READ(PCH_HDMIC) & SDVO_DETECTED)
+		if (intel_de_read(dev_priv, PCH_HDMIC) & SDVO_DETECTED)
 			intel_hdmi_init(dev_priv, PCH_HDMIC, PORT_C);
 
-		if (!dpd_is_edp && I915_READ(PCH_HDMID) & SDVO_DETECTED)
+		if (!dpd_is_edp && intel_de_read(dev_priv, PCH_HDMID) & SDVO_DETECTED)
 			intel_hdmi_init(dev_priv, PCH_HDMID, PORT_D);
 
-		if (I915_READ(PCH_DP_C) & DP_DETECTED)
+		if (intel_de_read(dev_priv, PCH_DP_C) & DP_DETECTED)
 			intel_dp_init(dev_priv, PCH_DP_C, PORT_C);
 
-		if (I915_READ(PCH_DP_D) & DP_DETECTED)
+		if (intel_de_read(dev_priv, PCH_DP_D) & DP_DETECTED)
 			intel_dp_init(dev_priv, PCH_DP_D, PORT_D);
 	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
 		bool has_edp, has_port;
@@ -16761,16 +16820,16 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		 */
 		has_edp = intel_dp_is_port_edp(dev_priv, PORT_B);
 		has_port = intel_bios_is_port_present(dev_priv, PORT_B);
-		if (I915_READ(VLV_DP_B) & DP_DETECTED || has_port)
+		if (intel_de_read(dev_priv, VLV_DP_B) & DP_DETECTED || has_port)
 			has_edp &= intel_dp_init(dev_priv, VLV_DP_B, PORT_B);
-		if ((I915_READ(VLV_HDMIB) & SDVO_DETECTED || has_port) && !has_edp)
+		if ((intel_de_read(dev_priv, VLV_HDMIB) & SDVO_DETECTED || has_port) && !has_edp)
 			intel_hdmi_init(dev_priv, VLV_HDMIB, PORT_B);
 
 		has_edp = intel_dp_is_port_edp(dev_priv, PORT_C);
 		has_port = intel_bios_is_port_present(dev_priv, PORT_C);
-		if (I915_READ(VLV_DP_C) & DP_DETECTED || has_port)
+		if (intel_de_read(dev_priv, VLV_DP_C) & DP_DETECTED || has_port)
 			has_edp &= intel_dp_init(dev_priv, VLV_DP_C, PORT_C);
-		if ((I915_READ(VLV_HDMIC) & SDVO_DETECTED || has_port) && !has_edp)
+		if ((intel_de_read(dev_priv, VLV_HDMIC) & SDVO_DETECTED || has_port) && !has_edp)
 			intel_hdmi_init(dev_priv, VLV_HDMIC, PORT_C);
 
 		if (IS_CHERRYVIEW(dev_priv)) {
@@ -16779,9 +16838,9 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 			 * so no need to worry about it
 			 */
 			has_port = intel_bios_is_port_present(dev_priv, PORT_D);
-			if (I915_READ(CHV_DP_D) & DP_DETECTED || has_port)
+			if (intel_de_read(dev_priv, CHV_DP_D) & DP_DETECTED || has_port)
 				intel_dp_init(dev_priv, CHV_DP_D, PORT_D);
-			if (I915_READ(CHV_HDMID) & SDVO_DETECTED || has_port)
+			if (intel_de_read(dev_priv, CHV_HDMID) & SDVO_DETECTED || has_port)
 				intel_hdmi_init(dev_priv, CHV_HDMID, PORT_D);
 		}
 
@@ -16797,7 +16856,7 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 
 		intel_crt_init(dev_priv);
 
-		if (I915_READ(GEN3_SDVOB) & SDVO_DETECTED) {
+		if (intel_de_read(dev_priv, GEN3_SDVOB) & SDVO_DETECTED) {
 			DRM_DEBUG_KMS("probing SDVOB\n");
 			found = intel_sdvo_init(dev_priv, GEN3_SDVOB, PORT_B);
 			if (!found && IS_G4X(dev_priv)) {
@@ -16811,12 +16870,12 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 
 		/* Before G4X SDVOC doesn't have its own detect register */
 
-		if (I915_READ(GEN3_SDVOB) & SDVO_DETECTED) {
+		if (intel_de_read(dev_priv, GEN3_SDVOB) & SDVO_DETECTED) {
 			DRM_DEBUG_KMS("probing SDVOC\n");
 			found = intel_sdvo_init(dev_priv, GEN3_SDVOC, PORT_C);
 		}
 
-		if (!found && (I915_READ(GEN3_SDVOC) & SDVO_DETECTED)) {
+		if (!found && (intel_de_read(dev_priv, GEN3_SDVOC) & SDVO_DETECTED)) {
 
 			if (IS_G4X(dev_priv)) {
 				DRM_DEBUG_KMS("probing HDMI on SDVOC\n");
@@ -16826,7 +16885,7 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 				intel_dp_init(dev_priv, DP_C, PORT_C);
 		}
 
-		if (IS_G4X(dev_priv) && (I915_READ(DP_D) & DP_DETECTED))
+		if (IS_G4X(dev_priv) && (intel_de_read(dev_priv, DP_D) & DP_DETECTED))
 			intel_dp_init(dev_priv, DP_D, PORT_D);
 
 		if (SUPPORTS_TV(dev_priv))
@@ -17388,7 +17447,7 @@ static void intel_update_fdi_pll_freq(struct drm_i915_private *dev_priv)
 {
 	if (IS_GEN(dev_priv, 5)) {
 		u32 fdi_pll_clk =
-			I915_READ(FDI_PLL_BIOS_0) & FDI_PLL_FB_CLOCK_MASK;
+			intel_de_read(dev_priv, FDI_PLL_BIOS_0) & FDI_PLL_FB_CLOCK_MASK;
 
 		dev_priv->fdi_pll_freq = (fdi_pll_clk + 2) * 10000;
 	} else if (IS_GEN(dev_priv, 6) || IS_IVYBRIDGE(dev_priv)) {
@@ -17637,27 +17696,27 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 		PLL_REF_INPUT_DREFCLK |
 		DPLL_VCO_ENABLE;
 
-	I915_WRITE(FP0(pipe), fp);
-	I915_WRITE(FP1(pipe), fp);
+	intel_de_write(dev_priv, FP0(pipe), fp);
+	intel_de_write(dev_priv, FP1(pipe), fp);
 
-	I915_WRITE(HTOTAL(pipe), (640 - 1) | ((800 - 1) << 16));
-	I915_WRITE(HBLANK(pipe), (640 - 1) | ((800 - 1) << 16));
-	I915_WRITE(HSYNC(pipe), (656 - 1) | ((752 - 1) << 16));
-	I915_WRITE(VTOTAL(pipe), (480 - 1) | ((525 - 1) << 16));
-	I915_WRITE(VBLANK(pipe), (480 - 1) | ((525 - 1) << 16));
-	I915_WRITE(VSYNC(pipe), (490 - 1) | ((492 - 1) << 16));
-	I915_WRITE(PIPESRC(pipe), ((640 - 1) << 16) | (480 - 1));
+	intel_de_write(dev_priv, HTOTAL(pipe), (640 - 1) | ((800 - 1) << 16));
+	intel_de_write(dev_priv, HBLANK(pipe), (640 - 1) | ((800 - 1) << 16));
+	intel_de_write(dev_priv, HSYNC(pipe), (656 - 1) | ((752 - 1) << 16));
+	intel_de_write(dev_priv, VTOTAL(pipe), (480 - 1) | ((525 - 1) << 16));
+	intel_de_write(dev_priv, VBLANK(pipe), (480 - 1) | ((525 - 1) << 16));
+	intel_de_write(dev_priv, VSYNC(pipe), (490 - 1) | ((492 - 1) << 16));
+	intel_de_write(dev_priv, PIPESRC(pipe), ((640 - 1) << 16) | (480 - 1));
 
 	/*
 	 * Apparently we need to have VGA mode enabled prior to changing
 	 * the P1/P2 dividers. Otherwise the DPLL will keep using the old
 	 * dividers, even though the register value does change.
 	 */
-	I915_WRITE(DPLL(pipe), dpll & ~DPLL_VGA_MODE_DIS);
-	I915_WRITE(DPLL(pipe), dpll);
+	intel_de_write(dev_priv, DPLL(pipe), dpll & ~DPLL_VGA_MODE_DIS);
+	intel_de_write(dev_priv, DPLL(pipe), dpll);
 
 	/* Wait for the clocks to stabilize. */
-	POSTING_READ(DPLL(pipe));
+	intel_de_posting_read(dev_priv, DPLL(pipe));
 	udelay(150);
 
 	/* The pixel multiplier can only be updated once the
@@ -17665,17 +17724,18 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 	 *
 	 * So write it again.
 	 */
-	I915_WRITE(DPLL(pipe), dpll);
+	intel_de_write(dev_priv, DPLL(pipe), dpll);
 
 	/* We do this three times for luck */
 	for (i = 0; i < 3 ; i++) {
-		I915_WRITE(DPLL(pipe), dpll);
-		POSTING_READ(DPLL(pipe));
+		intel_de_write(dev_priv, DPLL(pipe), dpll);
+		intel_de_posting_read(dev_priv, DPLL(pipe));
 		udelay(150); /* wait for warmup */
 	}
 
-	I915_WRITE(PIPECONF(pipe), PIPECONF_ENABLE | PIPECONF_PROGRESSIVE);
-	POSTING_READ(PIPECONF(pipe));
+	intel_de_write(dev_priv, PIPECONF(pipe),
+		       PIPECONF_ENABLE | PIPECONF_PROGRESSIVE);
+	intel_de_posting_read(dev_priv, PIPECONF(pipe));
 
 	intel_wait_for_pipe_scanline_moving(crtc);
 }
@@ -17687,19 +17747,19 @@ void i830_disable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 	DRM_DEBUG_KMS("disabling pipe %c due to force quirk\n",
 		      pipe_name(pipe));
 
-	WARN_ON(I915_READ(DSPCNTR(PLANE_A)) & DISPLAY_PLANE_ENABLE);
-	WARN_ON(I915_READ(DSPCNTR(PLANE_B)) & DISPLAY_PLANE_ENABLE);
-	WARN_ON(I915_READ(DSPCNTR(PLANE_C)) & DISPLAY_PLANE_ENABLE);
-	WARN_ON(I915_READ(CURCNTR(PIPE_A)) & MCURSOR_MODE);
-	WARN_ON(I915_READ(CURCNTR(PIPE_B)) & MCURSOR_MODE);
+	WARN_ON(intel_de_read(dev_priv, DSPCNTR(PLANE_A)) & DISPLAY_PLANE_ENABLE);
+	WARN_ON(intel_de_read(dev_priv, DSPCNTR(PLANE_B)) & DISPLAY_PLANE_ENABLE);
+	WARN_ON(intel_de_read(dev_priv, DSPCNTR(PLANE_C)) & DISPLAY_PLANE_ENABLE);
+	WARN_ON(intel_de_read(dev_priv, CURCNTR(PIPE_A)) & MCURSOR_MODE);
+	WARN_ON(intel_de_read(dev_priv, CURCNTR(PIPE_B)) & MCURSOR_MODE);
 
-	I915_WRITE(PIPECONF(pipe), 0);
-	POSTING_READ(PIPECONF(pipe));
+	intel_de_write(dev_priv, PIPECONF(pipe), 0);
+	intel_de_posting_read(dev_priv, PIPECONF(pipe));
 
 	intel_wait_for_pipe_scanline_stopped(crtc);
 
-	I915_WRITE(DPLL(pipe), DPLL_VGA_MODE_DIS);
-	POSTING_READ(DPLL(pipe));
+	intel_de_write(dev_priv, DPLL(pipe), DPLL_VGA_MODE_DIS);
+	intel_de_posting_read(dev_priv, DPLL(pipe));
 }
 
 static void
@@ -17773,18 +17833,18 @@ static void intel_sanitize_frame_start_delay(const struct intel_crtc_state *crtc
 		if (transcoder_is_dsi(cpu_transcoder))
 			return;
 
-		val = I915_READ(reg);
+		val = intel_de_read(dev_priv, reg);
 		val &= ~HSW_FRAME_START_DELAY_MASK;
 		val |= HSW_FRAME_START_DELAY(0);
-		I915_WRITE(reg, val);
+		intel_de_write(dev_priv, reg, val);
 	} else {
 		i915_reg_t reg = PIPECONF(cpu_transcoder);
 		u32 val;
 
-		val = I915_READ(reg);
+		val = intel_de_read(dev_priv, reg);
 		val &= ~PIPECONF_FRAME_START_DELAY_MASK;
 		val |= PIPECONF_FRAME_START_DELAY(0);
-		I915_WRITE(reg, val);
+		intel_de_write(dev_priv, reg, val);
 	}
 
 	if (!crtc_state->has_pch_encoder)
@@ -17794,19 +17854,19 @@ static void intel_sanitize_frame_start_delay(const struct intel_crtc_state *crtc
 		i915_reg_t reg = PCH_TRANSCONF(crtc->pipe);
 		u32 val;
 
-		val = I915_READ(reg);
+		val = intel_de_read(dev_priv, reg);
 		val &= ~TRANS_FRAME_START_DELAY_MASK;
 		val |= TRANS_FRAME_START_DELAY(0);
-		I915_WRITE(reg, val);
+		intel_de_write(dev_priv, reg, val);
 	} else {
 		enum pipe pch_transcoder = intel_crtc_pch_transcoder(crtc);
 		i915_reg_t reg = TRANS_CHICKEN2(pch_transcoder);
 		u32 val;
 
-		val = I915_READ(reg);
+		val = intel_de_read(dev_priv, reg);
 		val &= ~TRANS_CHICKEN2_FRAME_START_DELAY_MASK;
 		val |= TRANS_CHICKEN2_FRAME_START_DELAY(0);
-		I915_WRITE(reg, val);
+		intel_de_write(dev_priv, reg, val);
 	}
 }
 
@@ -17838,9 +17898,8 @@ static void intel_sanitize_crtc(struct intel_crtc *crtc,
 		 * gamma and CSC to match how we program our planes.
 		 */
 		if (INTEL_GEN(dev_priv) >= 9)
-			I915_WRITE(SKL_BOTTOM_COLOR(crtc->pipe),
-				   SKL_BOTTOM_COLOR_GAMMA_ENABLE |
-				   SKL_BOTTOM_COLOR_CSC_ENABLE);
+			intel_de_write(dev_priv, SKL_BOTTOM_COLOR(crtc->pipe),
+				       SKL_BOTTOM_COLOR_GAMMA_ENABLE | SKL_BOTTOM_COLOR_CSC_ENABLE);
 	}
 
 	/* Adjust the state of the output pipe according to whether we
@@ -18227,23 +18286,23 @@ static void intel_early_display_was(struct drm_i915_private *dev_priv)
 	 * Also known as Wa_14010480278.
 	 */
 	if (IS_GEN_RANGE(dev_priv, 10, 12) || IS_GEMINILAKE(dev_priv))
-		I915_WRITE(GEN9_CLKGATE_DIS_0, I915_READ(GEN9_CLKGATE_DIS_0) |
-			   DARBF_GATING_DIS);
+		intel_de_write(dev_priv, GEN9_CLKGATE_DIS_0,
+			       intel_de_read(dev_priv, GEN9_CLKGATE_DIS_0) | DARBF_GATING_DIS);
 
 	if (IS_HASWELL(dev_priv)) {
 		/*
 		 * WaRsPkgCStateDisplayPMReq:hsw
 		 * System hang if this isn't done before disabling all planes!
 		 */
-		I915_WRITE(CHICKEN_PAR1_1,
-			   I915_READ(CHICKEN_PAR1_1) | FORCE_ARB_IDLE_PLANES);
+		intel_de_write(dev_priv, CHICKEN_PAR1_1,
+			       intel_de_read(dev_priv, CHICKEN_PAR1_1) | FORCE_ARB_IDLE_PLANES);
 	}
 }
 
 static void ibx_sanitize_pch_hdmi_port(struct drm_i915_private *dev_priv,
 				       enum port port, i915_reg_t hdmi_reg)
 {
-	u32 val = I915_READ(hdmi_reg);
+	u32 val = intel_de_read(dev_priv, hdmi_reg);
 
 	if (val & SDVO_ENABLE ||
 	    (val & SDVO_PIPE_SEL_MASK) == SDVO_PIPE_SEL(PIPE_A))
@@ -18255,13 +18314,13 @@ static void ibx_sanitize_pch_hdmi_port(struct drm_i915_private *dev_priv,
 	val &= ~SDVO_PIPE_SEL_MASK;
 	val |= SDVO_PIPE_SEL(PIPE_A);
 
-	I915_WRITE(hdmi_reg, val);
+	intel_de_write(dev_priv, hdmi_reg, val);
 }
 
 static void ibx_sanitize_pch_dp_port(struct drm_i915_private *dev_priv,
 				     enum port port, i915_reg_t dp_reg)
 {
-	u32 val = I915_READ(dp_reg);
+	u32 val = intel_de_read(dev_priv, dp_reg);
 
 	if (val & DP_PORT_EN ||
 	    (val & DP_PIPE_SEL_MASK) == DP_PIPE_SEL(PIPE_A))
@@ -18273,7 +18332,7 @@ static void ibx_sanitize_pch_dp_port(struct drm_i915_private *dev_priv,
 	val &= ~DP_PIPE_SEL_MASK;
 	val |= DP_PIPE_SEL(PIPE_A);
 
-	I915_WRITE(dp_reg, val);
+	intel_de_write(dev_priv, dp_reg, val);
 }
 
 static void ibx_sanitize_pch_ports(struct drm_i915_private *dev_priv)
@@ -18575,7 +18634,8 @@ intel_display_capture_error_state(struct drm_i915_private *dev_priv)
 		return NULL;
 
 	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
-		error->power_well_driver = I915_READ(HSW_PWR_WELL_CTL2);
+		error->power_well_driver = intel_de_read(dev_priv,
+							 HSW_PWR_WELL_CTL2);
 
 	for_each_pipe(dev_priv, i) {
 		error->pipe[i].power_domain_on =
@@ -18584,27 +18644,33 @@ intel_display_capture_error_state(struct drm_i915_private *dev_priv)
 		if (!error->pipe[i].power_domain_on)
 			continue;
 
-		error->cursor[i].control = I915_READ(CURCNTR(i));
-		error->cursor[i].position = I915_READ(CURPOS(i));
-		error->cursor[i].base = I915_READ(CURBASE(i));
+		error->cursor[i].control = intel_de_read(dev_priv, CURCNTR(i));
+		error->cursor[i].position = intel_de_read(dev_priv, CURPOS(i));
+		error->cursor[i].base = intel_de_read(dev_priv, CURBASE(i));
 
-		error->plane[i].control = I915_READ(DSPCNTR(i));
-		error->plane[i].stride = I915_READ(DSPSTRIDE(i));
+		error->plane[i].control = intel_de_read(dev_priv, DSPCNTR(i));
+		error->plane[i].stride = intel_de_read(dev_priv, DSPSTRIDE(i));
 		if (INTEL_GEN(dev_priv) <= 3) {
-			error->plane[i].size = I915_READ(DSPSIZE(i));
-			error->plane[i].pos = I915_READ(DSPPOS(i));
+			error->plane[i].size = intel_de_read(dev_priv,
+							     DSPSIZE(i));
+			error->plane[i].pos = intel_de_read(dev_priv,
+							    DSPPOS(i));
 		}
 		if (INTEL_GEN(dev_priv) <= 7 && !IS_HASWELL(dev_priv))
-			error->plane[i].addr = I915_READ(DSPADDR(i));
+			error->plane[i].addr = intel_de_read(dev_priv,
+							     DSPADDR(i));
 		if (INTEL_GEN(dev_priv) >= 4) {
-			error->plane[i].surface = I915_READ(DSPSURF(i));
-			error->plane[i].tile_offset = I915_READ(DSPTILEOFF(i));
+			error->plane[i].surface = intel_de_read(dev_priv,
+								DSPSURF(i));
+			error->plane[i].tile_offset = intel_de_read(dev_priv,
+								    DSPTILEOFF(i));
 		}
 
-		error->pipe[i].source = I915_READ(PIPESRC(i));
+		error->pipe[i].source = intel_de_read(dev_priv, PIPESRC(i));
 
 		if (HAS_GMCH(dev_priv))
-			error->pipe[i].stat = I915_READ(PIPESTAT(i));
+			error->pipe[i].stat = intel_de_read(dev_priv,
+							    PIPESTAT(i));
 	}
 
 	for (i = 0; i < ARRAY_SIZE(error->transcoder); i++) {
@@ -18622,13 +18688,20 @@ intel_display_capture_error_state(struct drm_i915_private *dev_priv)
 
 		error->transcoder[i].cpu_transcoder = cpu_transcoder;
 
-		error->transcoder[i].conf = I915_READ(PIPECONF(cpu_transcoder));
-		error->transcoder[i].htotal = I915_READ(HTOTAL(cpu_transcoder));
-		error->transcoder[i].hblank = I915_READ(HBLANK(cpu_transcoder));
-		error->transcoder[i].hsync = I915_READ(HSYNC(cpu_transcoder));
-		error->transcoder[i].vtotal = I915_READ(VTOTAL(cpu_transcoder));
-		error->transcoder[i].vblank = I915_READ(VBLANK(cpu_transcoder));
-		error->transcoder[i].vsync = I915_READ(VSYNC(cpu_transcoder));
+		error->transcoder[i].conf = intel_de_read(dev_priv,
+							  PIPECONF(cpu_transcoder));
+		error->transcoder[i].htotal = intel_de_read(dev_priv,
+							    HTOTAL(cpu_transcoder));
+		error->transcoder[i].hblank = intel_de_read(dev_priv,
+							    HBLANK(cpu_transcoder));
+		error->transcoder[i].hsync = intel_de_read(dev_priv,
+							   HSYNC(cpu_transcoder));
+		error->transcoder[i].vtotal = intel_de_read(dev_priv,
+							    VTOTAL(cpu_transcoder));
+		error->transcoder[i].vblank = intel_de_read(dev_priv,
+							    VBLANK(cpu_transcoder));
+		error->transcoder[i].vsync = intel_de_read(dev_priv,
+							   VSYNC(cpu_transcoder));
 	}
 
 	return error;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
