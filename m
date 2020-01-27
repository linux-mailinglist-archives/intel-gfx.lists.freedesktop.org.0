Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02AC814A9C4
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 19:26:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63FFC6E82F;
	Mon, 27 Jan 2020 18:26:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F4536E82F
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 18:26:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 10:26:29 -0800
X-IronPort-AV: E=Sophos;i="5.70,370,1574150400"; d="scan'208";a="401411836"
Received: from scharfhe-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.52.61])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 10:26:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Jan 2020 20:26:05 +0200
Message-Id: <2c6050201849484a7f4681ce6e2f69cb7cb26756.1580149467.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1580149467.git.jani.nikula@intel.com>
References: <cover.1580149467.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 3/8] drm/i915/ddi: use intel_de_*() functions
 for register access
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

Acked-by: Chris Wilson <chris@chris-wilson.co.uk>
Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Acked-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 464 ++++++++++++-----------
 1 file changed, 240 insertions(+), 224 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index b1100950dd0d..c96f629cddc3 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -846,7 +846,7 @@ bxt_get_buf_trans_hdmi(struct drm_i915_private *dev_priv, int *n_entries)
 static const struct cnl_ddi_buf_trans *
 cnl_get_buf_trans_hdmi(struct drm_i915_private *dev_priv, int *n_entries)
 {
-	u32 voltage = I915_READ(CNL_PORT_COMP_DW3) & VOLTAGE_INFO_MASK;
+	u32 voltage = intel_de_read(dev_priv, CNL_PORT_COMP_DW3) & VOLTAGE_INFO_MASK;
 
 	if (voltage == VOLTAGE_INFO_0_85V) {
 		*n_entries = ARRAY_SIZE(cnl_ddi_translations_hdmi_0_85V);
@@ -867,7 +867,7 @@ cnl_get_buf_trans_hdmi(struct drm_i915_private *dev_priv, int *n_entries)
 static const struct cnl_ddi_buf_trans *
 cnl_get_buf_trans_dp(struct drm_i915_private *dev_priv, int *n_entries)
 {
-	u32 voltage = I915_READ(CNL_PORT_COMP_DW3) & VOLTAGE_INFO_MASK;
+	u32 voltage = intel_de_read(dev_priv, CNL_PORT_COMP_DW3) & VOLTAGE_INFO_MASK;
 
 	if (voltage == VOLTAGE_INFO_0_85V) {
 		*n_entries = ARRAY_SIZE(cnl_ddi_translations_dp_0_85V);
@@ -888,7 +888,7 @@ cnl_get_buf_trans_dp(struct drm_i915_private *dev_priv, int *n_entries)
 static const struct cnl_ddi_buf_trans *
 cnl_get_buf_trans_edp(struct drm_i915_private *dev_priv, int *n_entries)
 {
-	u32 voltage = I915_READ(CNL_PORT_COMP_DW3) & VOLTAGE_INFO_MASK;
+	u32 voltage = intel_de_read(dev_priv, CNL_PORT_COMP_DW3) & VOLTAGE_INFO_MASK;
 
 	if (dev_priv->vbt.edp.low_vswing) {
 		if (voltage == VOLTAGE_INFO_0_85V) {
@@ -1026,10 +1026,10 @@ static void intel_prepare_dp_ddi_buffers(struct intel_encoder *encoder,
 		iboost_bit = DDI_BUF_BALANCE_LEG_ENABLE;
 
 	for (i = 0; i < n_entries; i++) {
-		I915_WRITE(DDI_BUF_TRANS_LO(port, i),
-			   ddi_translations[i].trans1 | iboost_bit);
-		I915_WRITE(DDI_BUF_TRANS_HI(port, i),
-			   ddi_translations[i].trans2);
+		intel_de_write(dev_priv, DDI_BUF_TRANS_LO(port, i),
+			       ddi_translations[i].trans1 | iboost_bit);
+		intel_de_write(dev_priv, DDI_BUF_TRANS_HI(port, i),
+			       ddi_translations[i].trans2);
 	}
 }
 
@@ -1059,10 +1059,10 @@ static void intel_prepare_hdmi_ddi_buffers(struct intel_encoder *encoder,
 		iboost_bit = DDI_BUF_BALANCE_LEG_ENABLE;
 
 	/* Entry 9 is for HDMI: */
-	I915_WRITE(DDI_BUF_TRANS_LO(port, 9),
-		   ddi_translations[level].trans1 | iboost_bit);
-	I915_WRITE(DDI_BUF_TRANS_HI(port, 9),
-		   ddi_translations[level].trans2);
+	intel_de_write(dev_priv, DDI_BUF_TRANS_LO(port, 9),
+		       ddi_translations[level].trans1 | iboost_bit);
+	intel_de_write(dev_priv, DDI_BUF_TRANS_HI(port, 9),
+		       ddi_translations[level].trans2);
 }
 
 static void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
@@ -1073,7 +1073,7 @@ static void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
 
 	for (i = 0; i < 16; i++) {
 		udelay(1);
-		if (I915_READ(reg) & DDI_BUF_IS_IDLE)
+		if (intel_de_read(dev_priv, reg) & DDI_BUF_IS_IDLE)
 			return;
 	}
 	DRM_ERROR("Timeout waiting for DDI BUF %c idle bit\n", port_name(port));
@@ -1164,70 +1164,64 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
 	 *
 	 * WaFDIAutoLinkSetTimingOverrride:hsw
 	 */
-	I915_WRITE(FDI_RX_MISC(PIPE_A), FDI_RX_PWRDN_LANE1_VAL(2) |
-				  FDI_RX_PWRDN_LANE0_VAL(2) |
-				  FDI_RX_TP1_TO_TP2_48 | FDI_RX_FDI_DELAY_90);
+	intel_de_write(dev_priv, FDI_RX_MISC(PIPE_A),
+		       FDI_RX_PWRDN_LANE1_VAL(2) | FDI_RX_PWRDN_LANE0_VAL(2) | FDI_RX_TP1_TO_TP2_48 | FDI_RX_FDI_DELAY_90);
 
 	/* Enable the PCH Receiver FDI PLL */
 	rx_ctl_val = dev_priv->fdi_rx_config | FDI_RX_ENHANCE_FRAME_ENABLE |
 		     FDI_RX_PLL_ENABLE |
 		     FDI_DP_PORT_WIDTH(crtc_state->fdi_lanes);
-	I915_WRITE(FDI_RX_CTL(PIPE_A), rx_ctl_val);
-	POSTING_READ(FDI_RX_CTL(PIPE_A));
+	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
+	intel_de_posting_read(dev_priv, FDI_RX_CTL(PIPE_A));
 	udelay(220);
 
 	/* Switch from Rawclk to PCDclk */
 	rx_ctl_val |= FDI_PCDCLK;
-	I915_WRITE(FDI_RX_CTL(PIPE_A), rx_ctl_val);
+	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
 
 	/* Configure Port Clock Select */
 	ddi_pll_sel = hsw_pll_to_ddi_pll_sel(crtc_state->shared_dpll);
-	I915_WRITE(PORT_CLK_SEL(PORT_E), ddi_pll_sel);
+	intel_de_write(dev_priv, PORT_CLK_SEL(PORT_E), ddi_pll_sel);
 	WARN_ON(ddi_pll_sel != PORT_CLK_SEL_SPLL);
 
 	/* Start the training iterating through available voltages and emphasis,
 	 * testing each value twice. */
 	for (i = 0; i < ARRAY_SIZE(hsw_ddi_translations_fdi) * 2; i++) {
 		/* Configure DP_TP_CTL with auto-training */
-		I915_WRITE(DP_TP_CTL(PORT_E),
-					DP_TP_CTL_FDI_AUTOTRAIN |
-					DP_TP_CTL_ENHANCED_FRAME_ENABLE |
-					DP_TP_CTL_LINK_TRAIN_PAT1 |
-					DP_TP_CTL_ENABLE);
+		intel_de_write(dev_priv, DP_TP_CTL(PORT_E),
+			       DP_TP_CTL_FDI_AUTOTRAIN | DP_TP_CTL_ENHANCED_FRAME_ENABLE | DP_TP_CTL_LINK_TRAIN_PAT1 | DP_TP_CTL_ENABLE);
 
 		/* Configure and enable DDI_BUF_CTL for DDI E with next voltage.
 		 * DDI E does not support port reversal, the functionality is
 		 * achieved on the PCH side in FDI_RX_CTL, so no need to set the
 		 * port reversal bit */
-		I915_WRITE(DDI_BUF_CTL(PORT_E),
-			   DDI_BUF_CTL_ENABLE |
-			   ((crtc_state->fdi_lanes - 1) << 1) |
-			   DDI_BUF_TRANS_SELECT(i / 2));
-		POSTING_READ(DDI_BUF_CTL(PORT_E));
+		intel_de_write(dev_priv, DDI_BUF_CTL(PORT_E),
+			       DDI_BUF_CTL_ENABLE | ((crtc_state->fdi_lanes - 1) << 1) | DDI_BUF_TRANS_SELECT(i / 2));
+		intel_de_posting_read(dev_priv, DDI_BUF_CTL(PORT_E));
 
 		udelay(600);
 
 		/* Program PCH FDI Receiver TU */
-		I915_WRITE(FDI_RX_TUSIZE1(PIPE_A), TU_SIZE(64));
+		intel_de_write(dev_priv, FDI_RX_TUSIZE1(PIPE_A), TU_SIZE(64));
 
 		/* Enable PCH FDI Receiver with auto-training */
 		rx_ctl_val |= FDI_RX_ENABLE | FDI_LINK_TRAIN_AUTO;
-		I915_WRITE(FDI_RX_CTL(PIPE_A), rx_ctl_val);
-		POSTING_READ(FDI_RX_CTL(PIPE_A));
+		intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
+		intel_de_posting_read(dev_priv, FDI_RX_CTL(PIPE_A));
 
 		/* Wait for FDI receiver lane calibration */
 		udelay(30);
 
 		/* Unset FDI_RX_MISC pwrdn lanes */
-		temp = I915_READ(FDI_RX_MISC(PIPE_A));
+		temp = intel_de_read(dev_priv, FDI_RX_MISC(PIPE_A));
 		temp &= ~(FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK);
-		I915_WRITE(FDI_RX_MISC(PIPE_A), temp);
-		POSTING_READ(FDI_RX_MISC(PIPE_A));
+		intel_de_write(dev_priv, FDI_RX_MISC(PIPE_A), temp);
+		intel_de_posting_read(dev_priv, FDI_RX_MISC(PIPE_A));
 
 		/* Wait for FDI auto training time */
 		udelay(5);
 
-		temp = I915_READ(DP_TP_STATUS(PORT_E));
+		temp = intel_de_read(dev_priv, DP_TP_STATUS(PORT_E));
 		if (temp & DP_TP_STATUS_AUTOTRAIN_DONE) {
 			DRM_DEBUG_KMS("FDI link training done on step %d\n", i);
 			break;
@@ -1243,37 +1237,34 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
 		}
 
 		rx_ctl_val &= ~FDI_RX_ENABLE;
-		I915_WRITE(FDI_RX_CTL(PIPE_A), rx_ctl_val);
-		POSTING_READ(FDI_RX_CTL(PIPE_A));
+		intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
+		intel_de_posting_read(dev_priv, FDI_RX_CTL(PIPE_A));
 
-		temp = I915_READ(DDI_BUF_CTL(PORT_E));
+		temp = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_E));
 		temp &= ~DDI_BUF_CTL_ENABLE;
-		I915_WRITE(DDI_BUF_CTL(PORT_E), temp);
-		POSTING_READ(DDI_BUF_CTL(PORT_E));
+		intel_de_write(dev_priv, DDI_BUF_CTL(PORT_E), temp);
+		intel_de_posting_read(dev_priv, DDI_BUF_CTL(PORT_E));
 
 		/* Disable DP_TP_CTL and FDI_RX_CTL and retry */
-		temp = I915_READ(DP_TP_CTL(PORT_E));
+		temp = intel_de_read(dev_priv, DP_TP_CTL(PORT_E));
 		temp &= ~(DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK);
 		temp |= DP_TP_CTL_LINK_TRAIN_PAT1;
-		I915_WRITE(DP_TP_CTL(PORT_E), temp);
-		POSTING_READ(DP_TP_CTL(PORT_E));
+		intel_de_write(dev_priv, DP_TP_CTL(PORT_E), temp);
+		intel_de_posting_read(dev_priv, DP_TP_CTL(PORT_E));
 
 		intel_wait_ddi_buf_idle(dev_priv, PORT_E);
 
 		/* Reset FDI_RX_MISC pwrdn lanes */
-		temp = I915_READ(FDI_RX_MISC(PIPE_A));
+		temp = intel_de_read(dev_priv, FDI_RX_MISC(PIPE_A));
 		temp &= ~(FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK);
 		temp |= FDI_RX_PWRDN_LANE1_VAL(2) | FDI_RX_PWRDN_LANE0_VAL(2);
-		I915_WRITE(FDI_RX_MISC(PIPE_A), temp);
-		POSTING_READ(FDI_RX_MISC(PIPE_A));
+		intel_de_write(dev_priv, FDI_RX_MISC(PIPE_A), temp);
+		intel_de_posting_read(dev_priv, FDI_RX_MISC(PIPE_A));
 	}
 
 	/* Enable normal pixel sending for FDI */
-	I915_WRITE(DP_TP_CTL(PORT_E),
-		   DP_TP_CTL_FDI_AUTOTRAIN |
-		   DP_TP_CTL_LINK_TRAIN_NORMAL |
-		   DP_TP_CTL_ENHANCED_FRAME_ENABLE |
-		   DP_TP_CTL_ENABLE);
+	intel_de_write(dev_priv, DP_TP_CTL(PORT_E),
+		       DP_TP_CTL_FDI_AUTOTRAIN | DP_TP_CTL_LINK_TRAIN_NORMAL | DP_TP_CTL_ENHANCED_FRAME_ENABLE | DP_TP_CTL_ENABLE);
 }
 
 static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder)
@@ -1314,7 +1305,7 @@ static int hsw_ddi_calc_wrpll_link(struct drm_i915_private *dev_priv,
 	int n, p, r;
 	u32 wrpll;
 
-	wrpll = I915_READ(reg);
+	wrpll = intel_de_read(dev_priv, reg);
 	switch (wrpll & WRPLL_REF_MASK) {
 	case WRPLL_REF_SPECIAL_HSW:
 		/*
@@ -1323,7 +1314,7 @@ static int hsw_ddi_calc_wrpll_link(struct drm_i915_private *dev_priv,
 		 * for the non-SSC reference frequency.
 		 */
 		if (IS_HASWELL(dev_priv) && !IS_HSW_ULT(dev_priv)) {
-			if (I915_READ(FUSE_STRAP3) & HSW_REF_CLK_SELECT)
+			if (intel_de_read(dev_priv, FUSE_STRAP3) & HSW_REF_CLK_SELECT)
 				refclk = 24;
 			else
 				refclk = 135;
@@ -1468,7 +1459,7 @@ int cnl_calc_wrpll_link(struct drm_i915_private *dev_priv,
 static int icl_calc_tbt_pll_link(struct drm_i915_private *dev_priv,
 				 enum port port)
 {
-	u32 val = I915_READ(DDI_CLK_SEL(port)) & DDI_CLK_SEL_MASK;
+	u32 val = intel_de_read(dev_priv, DDI_CLK_SEL(port)) & DDI_CLK_SEL_MASK;
 
 	switch (val) {
 	case DDI_CLK_SEL_NONE:
@@ -1731,7 +1722,7 @@ static void hsw_ddi_clock_get(struct intel_encoder *encoder,
 		link_clock = hsw_ddi_calc_wrpll_link(dev_priv, WRPLL_CTL(1));
 		break;
 	case PORT_CLK_SEL_SPLL:
-		pll = I915_READ(SPLL_CTL) & SPLL_FREQ_MASK;
+		pll = intel_de_read(dev_priv, SPLL_CTL) & SPLL_FREQ_MASK;
 		if (pll == SPLL_FREQ_810MHz)
 			link_clock = 81000;
 		else if (pll == SPLL_FREQ_1350MHz)
@@ -1851,7 +1842,7 @@ void intel_ddi_set_dp_msa(const struct intel_crtc_state *crtc_state,
 	if (intel_dp_needs_vsc_sdp(crtc_state, conn_state))
 		temp |= DP_MSA_MISC_COLOR_VSC_SDP;
 
-	I915_WRITE(TRANS_MSA_MISC(cpu_transcoder), temp);
+	intel_de_write(dev_priv, TRANS_MSA_MISC(cpu_transcoder), temp);
 }
 
 /*
@@ -1966,7 +1957,7 @@ void intel_ddi_enable_transcoder_func(const struct intel_crtc_state *crtc_state)
 	temp = intel_ddi_transcoder_func_reg_val_get(crtc_state);
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
 		temp |= TRANS_DDI_DP_VC_PAYLOAD_ALLOC;
-	I915_WRITE(TRANS_DDI_FUNC_CTL(cpu_transcoder), temp);
+	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder), temp);
 }
 
 /*
@@ -1983,7 +1974,7 @@ intel_ddi_config_transcoder_func(const struct intel_crtc_state *crtc_state)
 
 	temp = intel_ddi_transcoder_func_reg_val_get(crtc_state);
 	temp &= ~TRANS_DDI_FUNC_ENABLE;
-	I915_WRITE(TRANS_DDI_FUNC_CTL(cpu_transcoder), temp);
+	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder), temp);
 }
 
 void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state)
@@ -1993,7 +1984,7 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 val;
 
-	val = I915_READ(TRANS_DDI_FUNC_CTL(cpu_transcoder));
+	val = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
 	val &= ~TRANS_DDI_FUNC_ENABLE;
 
 	if (INTEL_GEN(dev_priv) >= 12) {
@@ -2002,7 +1993,7 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
 	} else {
 		val &= ~TRANS_DDI_PORT_MASK;
 	}
-	I915_WRITE(TRANS_DDI_FUNC_CTL(cpu_transcoder), val);
+	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder), val);
 
 	if (dev_priv->quirks & QUIRK_INCREASE_DDI_DISABLED_TIME &&
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
@@ -2032,12 +2023,12 @@ int intel_ddi_toggle_hdcp_signalling(struct intel_encoder *intel_encoder,
 		goto out;
 	}
 
-	tmp = I915_READ(TRANS_DDI_FUNC_CTL(pipe));
+	tmp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(pipe));
 	if (enable)
 		tmp |= TRANS_DDI_HDCP_SIGNALLING;
 	else
 		tmp &= ~TRANS_DDI_HDCP_SIGNALLING;
-	I915_WRITE(TRANS_DDI_FUNC_CTL(pipe), tmp);
+	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(pipe), tmp);
 out:
 	intel_display_power_put(dev_priv, intel_encoder->power_domain, wakeref);
 	return ret;
@@ -2071,7 +2062,7 @@ bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector)
 	else
 		cpu_transcoder = (enum transcoder) pipe;
 
-	tmp = I915_READ(TRANS_DDI_FUNC_CTL(cpu_transcoder));
+	tmp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
 
 	switch (tmp & TRANS_DDI_MODE_SELECT_MASK) {
 	case TRANS_DDI_MODE_SELECT_HDMI:
@@ -2124,12 +2115,13 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 	if (!wakeref)
 		return;
 
-	tmp = I915_READ(DDI_BUF_CTL(port));
+	tmp = intel_de_read(dev_priv, DDI_BUF_CTL(port));
 	if (!(tmp & DDI_BUF_CTL_ENABLE))
 		goto out;
 
 	if (HAS_TRANSCODER_EDP(dev_priv) && port == PORT_A) {
-		tmp = I915_READ(TRANS_DDI_FUNC_CTL(TRANSCODER_EDP));
+		tmp = intel_de_read(dev_priv,
+				    TRANS_DDI_FUNC_CTL(TRANSCODER_EDP));
 
 		switch (tmp & TRANS_DDI_EDP_INPUT_MASK) {
 		default:
@@ -2169,7 +2161,8 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 			ddi_select = TRANS_DDI_SELECT_PORT(port);
 		}
 
-		tmp = I915_READ(TRANS_DDI_FUNC_CTL(cpu_transcoder));
+		tmp = intel_de_read(dev_priv,
+				    TRANS_DDI_FUNC_CTL(cpu_transcoder));
 		intel_display_power_put(dev_priv, POWER_DOMAIN_TRANSCODER(cpu_transcoder),
 					trans_wakeref);
 
@@ -2203,7 +2196,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 
 out:
 	if (*pipe_mask && IS_GEN9_LP(dev_priv)) {
-		tmp = I915_READ(BXT_PHY_CTL(port));
+		tmp = intel_de_read(dev_priv, BXT_PHY_CTL(port));
 		if ((tmp & (BXT_PHY_CMNLANE_POWERDOWN_ACK |
 			    BXT_PHY_LANE_POWERDOWN_ACK |
 			    BXT_PHY_LANE_ENABLED)) != BXT_PHY_LANE_ENABLED)
@@ -2295,11 +2288,13 @@ void intel_ddi_enable_pipe_clock(const struct intel_crtc_state *crtc_state)
 
 	if (cpu_transcoder != TRANSCODER_EDP) {
 		if (INTEL_GEN(dev_priv) >= 12)
-			I915_WRITE(TRANS_CLK_SEL(cpu_transcoder),
-				   TGL_TRANS_CLK_SEL_PORT(port));
+			intel_de_write(dev_priv,
+				       TRANS_CLK_SEL(cpu_transcoder),
+				       TGL_TRANS_CLK_SEL_PORT(port));
 		else
-			I915_WRITE(TRANS_CLK_SEL(cpu_transcoder),
-				   TRANS_CLK_SEL_PORT(port));
+			intel_de_write(dev_priv,
+				       TRANS_CLK_SEL(cpu_transcoder),
+				       TRANS_CLK_SEL_PORT(port));
 	}
 }
 
@@ -2310,11 +2305,13 @@ void intel_ddi_disable_pipe_clock(const struct intel_crtc_state *crtc_state)
 
 	if (cpu_transcoder != TRANSCODER_EDP) {
 		if (INTEL_GEN(dev_priv) >= 12)
-			I915_WRITE(TRANS_CLK_SEL(cpu_transcoder),
-				   TGL_TRANS_CLK_SEL_DISABLED);
+			intel_de_write(dev_priv,
+				       TRANS_CLK_SEL(cpu_transcoder),
+				       TGL_TRANS_CLK_SEL_DISABLED);
 		else
-			I915_WRITE(TRANS_CLK_SEL(cpu_transcoder),
-				   TRANS_CLK_SEL_DISABLED);
+			intel_de_write(dev_priv,
+				       TRANS_CLK_SEL(cpu_transcoder),
+				       TRANS_CLK_SEL_DISABLED);
 	}
 }
 
@@ -2323,13 +2320,13 @@ static void _skl_ddi_set_iboost(struct drm_i915_private *dev_priv,
 {
 	u32 tmp;
 
-	tmp = I915_READ(DISPIO_CR_TX_BMU_CR0);
+	tmp = intel_de_read(dev_priv, DISPIO_CR_TX_BMU_CR0);
 	tmp &= ~(BALANCE_LEG_MASK(port) | BALANCE_LEG_DISABLE(port));
 	if (iboost)
 		tmp |= iboost << BALANCE_LEG_SHIFT(port);
 	else
 		tmp |= BALANCE_LEG_DISABLE(port);
-	I915_WRITE(DISPIO_CR_TX_BMU_CR0, tmp);
+	intel_de_write(dev_priv, DISPIO_CR_TX_BMU_CR0, tmp);
 }
 
 static void skl_ddi_set_iboost(struct intel_encoder *encoder,
@@ -2491,46 +2488,46 @@ static void cnl_ddi_vswing_program(struct intel_encoder *encoder,
 		level = n_entries - 1;
 
 	/* Set PORT_TX_DW5 Scaling Mode Sel to 010b. */
-	val = I915_READ(CNL_PORT_TX_DW5_LN0(port));
+	val = intel_de_read(dev_priv, CNL_PORT_TX_DW5_LN0(port));
 	val &= ~SCALING_MODE_SEL_MASK;
 	val |= SCALING_MODE_SEL(2);
-	I915_WRITE(CNL_PORT_TX_DW5_GRP(port), val);
+	intel_de_write(dev_priv, CNL_PORT_TX_DW5_GRP(port), val);
 
 	/* Program PORT_TX_DW2 */
-	val = I915_READ(CNL_PORT_TX_DW2_LN0(port));
+	val = intel_de_read(dev_priv, CNL_PORT_TX_DW2_LN0(port));
 	val &= ~(SWING_SEL_LOWER_MASK | SWING_SEL_UPPER_MASK |
 		 RCOMP_SCALAR_MASK);
 	val |= SWING_SEL_UPPER(ddi_translations[level].dw2_swing_sel);
 	val |= SWING_SEL_LOWER(ddi_translations[level].dw2_swing_sel);
 	/* Rcomp scalar is fixed as 0x98 for every table entry */
 	val |= RCOMP_SCALAR(0x98);
-	I915_WRITE(CNL_PORT_TX_DW2_GRP(port), val);
+	intel_de_write(dev_priv, CNL_PORT_TX_DW2_GRP(port), val);
 
 	/* Program PORT_TX_DW4 */
 	/* We cannot write to GRP. It would overrite individual loadgen */
 	for (ln = 0; ln < 4; ln++) {
-		val = I915_READ(CNL_PORT_TX_DW4_LN(ln, port));
+		val = intel_de_read(dev_priv, CNL_PORT_TX_DW4_LN(ln, port));
 		val &= ~(POST_CURSOR_1_MASK | POST_CURSOR_2_MASK |
 			 CURSOR_COEFF_MASK);
 		val |= POST_CURSOR_1(ddi_translations[level].dw4_post_cursor_1);
 		val |= POST_CURSOR_2(ddi_translations[level].dw4_post_cursor_2);
 		val |= CURSOR_COEFF(ddi_translations[level].dw4_cursor_coeff);
-		I915_WRITE(CNL_PORT_TX_DW4_LN(ln, port), val);
+		intel_de_write(dev_priv, CNL_PORT_TX_DW4_LN(ln, port), val);
 	}
 
 	/* Program PORT_TX_DW5 */
 	/* All DW5 values are fixed for every table entry */
-	val = I915_READ(CNL_PORT_TX_DW5_LN0(port));
+	val = intel_de_read(dev_priv, CNL_PORT_TX_DW5_LN0(port));
 	val &= ~RTERM_SELECT_MASK;
 	val |= RTERM_SELECT(6);
 	val |= TAP3_DISABLE;
-	I915_WRITE(CNL_PORT_TX_DW5_GRP(port), val);
+	intel_de_write(dev_priv, CNL_PORT_TX_DW5_GRP(port), val);
 
 	/* Program PORT_TX_DW7 */
-	val = I915_READ(CNL_PORT_TX_DW7_LN0(port));
+	val = intel_de_read(dev_priv, CNL_PORT_TX_DW7_LN0(port));
 	val &= ~N_SCALAR_MASK;
 	val |= N_SCALAR(ddi_translations[level].dw7_n_scalar);
-	I915_WRITE(CNL_PORT_TX_DW7_GRP(port), val);
+	intel_de_write(dev_priv, CNL_PORT_TX_DW7_GRP(port), val);
 }
 
 static void cnl_ddi_vswing_sequence(struct intel_encoder *encoder,
@@ -2556,12 +2553,12 @@ static void cnl_ddi_vswing_sequence(struct intel_encoder *encoder,
 	 * set PORT_PCS_DW1 cmnkeeper_enable to 1b,
 	 * else clear to 0b.
 	 */
-	val = I915_READ(CNL_PORT_PCS_DW1_LN0(port));
+	val = intel_de_read(dev_priv, CNL_PORT_PCS_DW1_LN0(port));
 	if (type != INTEL_OUTPUT_HDMI)
 		val |= COMMON_KEEPER_EN;
 	else
 		val &= ~COMMON_KEEPER_EN;
-	I915_WRITE(CNL_PORT_PCS_DW1_GRP(port), val);
+	intel_de_write(dev_priv, CNL_PORT_PCS_DW1_GRP(port), val);
 
 	/* 2. Program loadgen select */
 	/*
@@ -2571,33 +2568,33 @@ static void cnl_ddi_vswing_sequence(struct intel_encoder *encoder,
 	 * > 6 GHz (LN0=0, LN1=0, LN2=0, LN3=0)
 	 */
 	for (ln = 0; ln <= 3; ln++) {
-		val = I915_READ(CNL_PORT_TX_DW4_LN(ln, port));
+		val = intel_de_read(dev_priv, CNL_PORT_TX_DW4_LN(ln, port));
 		val &= ~LOADGEN_SELECT;
 
 		if ((rate <= 600000 && width == 4 && ln >= 1)  ||
 		    (rate <= 600000 && width < 4 && (ln == 1 || ln == 2))) {
 			val |= LOADGEN_SELECT;
 		}
-		I915_WRITE(CNL_PORT_TX_DW4_LN(ln, port), val);
+		intel_de_write(dev_priv, CNL_PORT_TX_DW4_LN(ln, port), val);
 	}
 
 	/* 3. Set PORT_CL_DW5 SUS Clock Config to 11b */
-	val = I915_READ(CNL_PORT_CL1CM_DW5);
+	val = intel_de_read(dev_priv, CNL_PORT_CL1CM_DW5);
 	val |= SUS_CLOCK_CONFIG;
-	I915_WRITE(CNL_PORT_CL1CM_DW5, val);
+	intel_de_write(dev_priv, CNL_PORT_CL1CM_DW5, val);
 
 	/* 4. Clear training enable to change swing values */
-	val = I915_READ(CNL_PORT_TX_DW5_LN0(port));
+	val = intel_de_read(dev_priv, CNL_PORT_TX_DW5_LN0(port));
 	val &= ~TX_TRAINING_EN;
-	I915_WRITE(CNL_PORT_TX_DW5_GRP(port), val);
+	intel_de_write(dev_priv, CNL_PORT_TX_DW5_GRP(port), val);
 
 	/* 5. Program swing and de-emphasis */
 	cnl_ddi_vswing_program(encoder, level, type);
 
 	/* 6. Set training enable to trigger update */
-	val = I915_READ(CNL_PORT_TX_DW5_LN0(port));
+	val = intel_de_read(dev_priv, CNL_PORT_TX_DW5_LN0(port));
 	val |= TX_TRAINING_EN;
-	I915_WRITE(CNL_PORT_TX_DW5_GRP(port), val);
+	intel_de_write(dev_priv, CNL_PORT_TX_DW5_GRP(port), val);
 }
 
 static void icl_ddi_combo_vswing_program(struct drm_i915_private *dev_priv,
@@ -2623,41 +2620,41 @@ static void icl_ddi_combo_vswing_program(struct drm_i915_private *dev_priv,
 	}
 
 	/* Set PORT_TX_DW5 */
-	val = I915_READ(ICL_PORT_TX_DW5_LN0(phy));
+	val = intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN0(phy));
 	val &= ~(SCALING_MODE_SEL_MASK | RTERM_SELECT_MASK |
 		  TAP2_DISABLE | TAP3_DISABLE);
 	val |= SCALING_MODE_SEL(0x2);
 	val |= RTERM_SELECT(0x6);
 	val |= TAP3_DISABLE;
-	I915_WRITE(ICL_PORT_TX_DW5_GRP(phy), val);
+	intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), val);
 
 	/* Program PORT_TX_DW2 */
-	val = I915_READ(ICL_PORT_TX_DW2_LN0(phy));
+	val = intel_de_read(dev_priv, ICL_PORT_TX_DW2_LN0(phy));
 	val &= ~(SWING_SEL_LOWER_MASK | SWING_SEL_UPPER_MASK |
 		 RCOMP_SCALAR_MASK);
 	val |= SWING_SEL_UPPER(ddi_translations[level].dw2_swing_sel);
 	val |= SWING_SEL_LOWER(ddi_translations[level].dw2_swing_sel);
 	/* Program Rcomp scalar for every table entry */
 	val |= RCOMP_SCALAR(0x98);
-	I915_WRITE(ICL_PORT_TX_DW2_GRP(phy), val);
+	intel_de_write(dev_priv, ICL_PORT_TX_DW2_GRP(phy), val);
 
 	/* Program PORT_TX_DW4 */
 	/* We cannot write to GRP. It would overwrite individual loadgen. */
 	for (ln = 0; ln <= 3; ln++) {
-		val = I915_READ(ICL_PORT_TX_DW4_LN(ln, phy));
+		val = intel_de_read(dev_priv, ICL_PORT_TX_DW4_LN(ln, phy));
 		val &= ~(POST_CURSOR_1_MASK | POST_CURSOR_2_MASK |
 			 CURSOR_COEFF_MASK);
 		val |= POST_CURSOR_1(ddi_translations[level].dw4_post_cursor_1);
 		val |= POST_CURSOR_2(ddi_translations[level].dw4_post_cursor_2);
 		val |= CURSOR_COEFF(ddi_translations[level].dw4_cursor_coeff);
-		I915_WRITE(ICL_PORT_TX_DW4_LN(ln, phy), val);
+		intel_de_write(dev_priv, ICL_PORT_TX_DW4_LN(ln, phy), val);
 	}
 
 	/* Program PORT_TX_DW7 */
-	val = I915_READ(ICL_PORT_TX_DW7_LN0(phy));
+	val = intel_de_read(dev_priv, ICL_PORT_TX_DW7_LN0(phy));
 	val &= ~N_SCALAR_MASK;
 	val |= N_SCALAR(ddi_translations[level].dw7_n_scalar);
-	I915_WRITE(ICL_PORT_TX_DW7_GRP(phy), val);
+	intel_de_write(dev_priv, ICL_PORT_TX_DW7_GRP(phy), val);
 }
 
 static void icl_combo_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
@@ -2686,12 +2683,12 @@ static void icl_combo_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
 	 * set PORT_PCS_DW1 cmnkeeper_enable to 1b,
 	 * else clear to 0b.
 	 */
-	val = I915_READ(ICL_PORT_PCS_DW1_LN0(phy));
+	val = intel_de_read(dev_priv, ICL_PORT_PCS_DW1_LN0(phy));
 	if (type == INTEL_OUTPUT_HDMI)
 		val &= ~COMMON_KEEPER_EN;
 	else
 		val |= COMMON_KEEPER_EN;
-	I915_WRITE(ICL_PORT_PCS_DW1_GRP(phy), val);
+	intel_de_write(dev_priv, ICL_PORT_PCS_DW1_GRP(phy), val);
 
 	/* 2. Program loadgen select */
 	/*
@@ -2701,33 +2698,33 @@ static void icl_combo_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
 	 * > 6 GHz (LN0=0, LN1=0, LN2=0, LN3=0)
 	 */
 	for (ln = 0; ln <= 3; ln++) {
-		val = I915_READ(ICL_PORT_TX_DW4_LN(ln, phy));
+		val = intel_de_read(dev_priv, ICL_PORT_TX_DW4_LN(ln, phy));
 		val &= ~LOADGEN_SELECT;
 
 		if ((rate <= 600000 && width == 4 && ln >= 1) ||
 		    (rate <= 600000 && width < 4 && (ln == 1 || ln == 2))) {
 			val |= LOADGEN_SELECT;
 		}
-		I915_WRITE(ICL_PORT_TX_DW4_LN(ln, phy), val);
+		intel_de_write(dev_priv, ICL_PORT_TX_DW4_LN(ln, phy), val);
 	}
 
 	/* 3. Set PORT_CL_DW5 SUS Clock Config to 11b */
-	val = I915_READ(ICL_PORT_CL_DW5(phy));
+	val = intel_de_read(dev_priv, ICL_PORT_CL_DW5(phy));
 	val |= SUS_CLOCK_CONFIG;
-	I915_WRITE(ICL_PORT_CL_DW5(phy), val);
+	intel_de_write(dev_priv, ICL_PORT_CL_DW5(phy), val);
 
 	/* 4. Clear training enable to change swing values */
-	val = I915_READ(ICL_PORT_TX_DW5_LN0(phy));
+	val = intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN0(phy));
 	val &= ~TX_TRAINING_EN;
-	I915_WRITE(ICL_PORT_TX_DW5_GRP(phy), val);
+	intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), val);
 
 	/* 5. Program swing and de-emphasis */
 	icl_ddi_combo_vswing_program(dev_priv, level, phy, type, rate);
 
 	/* 6. Set training enable to trigger update */
-	val = I915_READ(ICL_PORT_TX_DW5_LN0(phy));
+	val = intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN0(phy));
 	val |= TX_TRAINING_EN;
-	I915_WRITE(ICL_PORT_TX_DW5_GRP(phy), val);
+	intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), val);
 }
 
 static void icl_mg_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
@@ -2751,33 +2748,33 @@ static void icl_mg_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
 
 	/* Set MG_TX_LINK_PARAMS cri_use_fs32 to 0. */
 	for (ln = 0; ln < 2; ln++) {
-		val = I915_READ(MG_TX1_LINK_PARAMS(ln, tc_port));
+		val = intel_de_read(dev_priv, MG_TX1_LINK_PARAMS(ln, tc_port));
 		val &= ~CRI_USE_FS32;
-		I915_WRITE(MG_TX1_LINK_PARAMS(ln, tc_port), val);
+		intel_de_write(dev_priv, MG_TX1_LINK_PARAMS(ln, tc_port), val);
 
-		val = I915_READ(MG_TX2_LINK_PARAMS(ln, tc_port));
+		val = intel_de_read(dev_priv, MG_TX2_LINK_PARAMS(ln, tc_port));
 		val &= ~CRI_USE_FS32;
-		I915_WRITE(MG_TX2_LINK_PARAMS(ln, tc_port), val);
+		intel_de_write(dev_priv, MG_TX2_LINK_PARAMS(ln, tc_port), val);
 	}
 
 	/* Program MG_TX_SWINGCTRL with values from vswing table */
 	for (ln = 0; ln < 2; ln++) {
-		val = I915_READ(MG_TX1_SWINGCTRL(ln, tc_port));
+		val = intel_de_read(dev_priv, MG_TX1_SWINGCTRL(ln, tc_port));
 		val &= ~CRI_TXDEEMPH_OVERRIDE_17_12_MASK;
 		val |= CRI_TXDEEMPH_OVERRIDE_17_12(
 			ddi_translations[level].cri_txdeemph_override_17_12);
-		I915_WRITE(MG_TX1_SWINGCTRL(ln, tc_port), val);
+		intel_de_write(dev_priv, MG_TX1_SWINGCTRL(ln, tc_port), val);
 
-		val = I915_READ(MG_TX2_SWINGCTRL(ln, tc_port));
+		val = intel_de_read(dev_priv, MG_TX2_SWINGCTRL(ln, tc_port));
 		val &= ~CRI_TXDEEMPH_OVERRIDE_17_12_MASK;
 		val |= CRI_TXDEEMPH_OVERRIDE_17_12(
 			ddi_translations[level].cri_txdeemph_override_17_12);
-		I915_WRITE(MG_TX2_SWINGCTRL(ln, tc_port), val);
+		intel_de_write(dev_priv, MG_TX2_SWINGCTRL(ln, tc_port), val);
 	}
 
 	/* Program MG_TX_DRVCTRL with values from vswing table */
 	for (ln = 0; ln < 2; ln++) {
-		val = I915_READ(MG_TX1_DRVCTRL(ln, tc_port));
+		val = intel_de_read(dev_priv, MG_TX1_DRVCTRL(ln, tc_port));
 		val &= ~(CRI_TXDEEMPH_OVERRIDE_11_6_MASK |
 			 CRI_TXDEEMPH_OVERRIDE_5_0_MASK);
 		val |= CRI_TXDEEMPH_OVERRIDE_5_0(
@@ -2785,9 +2782,9 @@ static void icl_mg_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
 			CRI_TXDEEMPH_OVERRIDE_11_6(
 				ddi_translations[level].cri_txdeemph_override_11_6) |
 			CRI_TXDEEMPH_OVERRIDE_EN;
-		I915_WRITE(MG_TX1_DRVCTRL(ln, tc_port), val);
+		intel_de_write(dev_priv, MG_TX1_DRVCTRL(ln, tc_port), val);
 
-		val = I915_READ(MG_TX2_DRVCTRL(ln, tc_port));
+		val = intel_de_read(dev_priv, MG_TX2_DRVCTRL(ln, tc_port));
 		val &= ~(CRI_TXDEEMPH_OVERRIDE_11_6_MASK |
 			 CRI_TXDEEMPH_OVERRIDE_5_0_MASK);
 		val |= CRI_TXDEEMPH_OVERRIDE_5_0(
@@ -2795,7 +2792,7 @@ static void icl_mg_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
 			CRI_TXDEEMPH_OVERRIDE_11_6(
 				ddi_translations[level].cri_txdeemph_override_11_6) |
 			CRI_TXDEEMPH_OVERRIDE_EN;
-		I915_WRITE(MG_TX2_DRVCTRL(ln, tc_port), val);
+		intel_de_write(dev_priv, MG_TX2_DRVCTRL(ln, tc_port), val);
 
 		/* FIXME: Program CRI_LOADGEN_SEL after the spec is updated */
 	}
@@ -2806,17 +2803,17 @@ static void icl_mg_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
 	 * values from table for which TX1 and TX2 enabled.
 	 */
 	for (ln = 0; ln < 2; ln++) {
-		val = I915_READ(MG_CLKHUB(ln, tc_port));
+		val = intel_de_read(dev_priv, MG_CLKHUB(ln, tc_port));
 		if (link_clock < 300000)
 			val |= CFG_LOW_RATE_LKREN_EN;
 		else
 			val &= ~CFG_LOW_RATE_LKREN_EN;
-		I915_WRITE(MG_CLKHUB(ln, tc_port), val);
+		intel_de_write(dev_priv, MG_CLKHUB(ln, tc_port), val);
 	}
 
 	/* Program the MG_TX_DCC<LN, port being used> based on the link frequency */
 	for (ln = 0; ln < 2; ln++) {
-		val = I915_READ(MG_TX1_DCC(ln, tc_port));
+		val = intel_de_read(dev_priv, MG_TX1_DCC(ln, tc_port));
 		val &= ~CFG_AMI_CK_DIV_OVERRIDE_VAL_MASK;
 		if (link_clock <= 500000) {
 			val &= ~CFG_AMI_CK_DIV_OVERRIDE_EN;
@@ -2824,9 +2821,9 @@ static void icl_mg_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
 			val |= CFG_AMI_CK_DIV_OVERRIDE_EN |
 				CFG_AMI_CK_DIV_OVERRIDE_VAL(1);
 		}
-		I915_WRITE(MG_TX1_DCC(ln, tc_port), val);
+		intel_de_write(dev_priv, MG_TX1_DCC(ln, tc_port), val);
 
-		val = I915_READ(MG_TX2_DCC(ln, tc_port));
+		val = intel_de_read(dev_priv, MG_TX2_DCC(ln, tc_port));
 		val &= ~CFG_AMI_CK_DIV_OVERRIDE_VAL_MASK;
 		if (link_clock <= 500000) {
 			val &= ~CFG_AMI_CK_DIV_OVERRIDE_EN;
@@ -2834,18 +2831,22 @@ static void icl_mg_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
 			val |= CFG_AMI_CK_DIV_OVERRIDE_EN |
 				CFG_AMI_CK_DIV_OVERRIDE_VAL(1);
 		}
-		I915_WRITE(MG_TX2_DCC(ln, tc_port), val);
+		intel_de_write(dev_priv, MG_TX2_DCC(ln, tc_port), val);
 	}
 
 	/* Program MG_TX_PISO_READLOAD with values from vswing table */
 	for (ln = 0; ln < 2; ln++) {
-		val = I915_READ(MG_TX1_PISO_READLOAD(ln, tc_port));
+		val = intel_de_read(dev_priv,
+				    MG_TX1_PISO_READLOAD(ln, tc_port));
 		val |= CRI_CALCINIT;
-		I915_WRITE(MG_TX1_PISO_READLOAD(ln, tc_port), val);
+		intel_de_write(dev_priv, MG_TX1_PISO_READLOAD(ln, tc_port),
+			       val);
 
-		val = I915_READ(MG_TX2_PISO_READLOAD(ln, tc_port));
+		val = intel_de_read(dev_priv,
+				    MG_TX2_PISO_READLOAD(ln, tc_port));
 		val |= CRI_CALCINIT;
-		I915_WRITE(MG_TX2_PISO_READLOAD(ln, tc_port), val);
+		intel_de_write(dev_priv, MG_TX2_PISO_READLOAD(ln, tc_port),
+			       val);
 	}
 }
 
@@ -2891,24 +2892,25 @@ tgl_dkl_phy_ddi_vswing_sequence(struct intel_encoder *encoder, int link_clock,
 	dpcnt_val |= DKL_TX_PRESHOOT_COEFF(ddi_translations[level].dkl_preshoot_control);
 
 	for (ln = 0; ln < 2; ln++) {
-		I915_WRITE(HIP_INDEX_REG(tc_port), HIP_INDEX_VAL(tc_port, ln));
+		intel_de_write(dev_priv, HIP_INDEX_REG(tc_port),
+			       HIP_INDEX_VAL(tc_port, ln));
 
-		I915_WRITE(DKL_TX_PMD_LANE_SUS(tc_port), 0);
+		intel_de_write(dev_priv, DKL_TX_PMD_LANE_SUS(tc_port), 0);
 
 		/* All the registers are RMW */
-		val = I915_READ(DKL_TX_DPCNTL0(tc_port));
+		val = intel_de_read(dev_priv, DKL_TX_DPCNTL0(tc_port));
 		val &= ~dpcnt_mask;
 		val |= dpcnt_val;
-		I915_WRITE(DKL_TX_DPCNTL0(tc_port), val);
+		intel_de_write(dev_priv, DKL_TX_DPCNTL0(tc_port), val);
 
-		val = I915_READ(DKL_TX_DPCNTL1(tc_port));
+		val = intel_de_read(dev_priv, DKL_TX_DPCNTL1(tc_port));
 		val &= ~dpcnt_mask;
 		val |= dpcnt_val;
-		I915_WRITE(DKL_TX_DPCNTL1(tc_port), val);
+		intel_de_write(dev_priv, DKL_TX_DPCNTL1(tc_port), val);
 
-		val = I915_READ(DKL_TX_DPCNTL2(tc_port));
+		val = intel_de_read(dev_priv, DKL_TX_DPCNTL2(tc_port));
 		val &= ~DKL_TX_DP20BITMODE;
-		I915_WRITE(DKL_TX_DPCNTL2(tc_port), val);
+		intel_de_write(dev_priv, DKL_TX_DPCNTL2(tc_port), val);
 	}
 }
 
@@ -3010,7 +3012,7 @@ static void icl_map_plls_to_ports(struct intel_encoder *encoder,
 
 	mutex_lock(&dev_priv->dpll_lock);
 
-	val = I915_READ(ICL_DPCLKA_CFGCR0);
+	val = intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0);
 	WARN_ON((val & icl_dpclka_cfgcr0_clk_off(dev_priv, phy)) == 0);
 
 	if (intel_phy_is_combo(dev_priv, phy)) {
@@ -3026,12 +3028,12 @@ static void icl_map_plls_to_ports(struct intel_encoder *encoder,
 		 */
 		val &= ~ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
 		val |= ICL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll->info->id, phy);
-		I915_WRITE(ICL_DPCLKA_CFGCR0, val);
-		POSTING_READ(ICL_DPCLKA_CFGCR0);
+		intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, val);
+		intel_de_posting_read(dev_priv, ICL_DPCLKA_CFGCR0);
 	}
 
 	val &= ~icl_dpclka_cfgcr0_clk_off(dev_priv, phy);
-	I915_WRITE(ICL_DPCLKA_CFGCR0, val);
+	intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, val);
 
 	mutex_unlock(&dev_priv->dpll_lock);
 }
@@ -3044,9 +3046,9 @@ static void icl_unmap_plls_to_ports(struct intel_encoder *encoder)
 
 	mutex_lock(&dev_priv->dpll_lock);
 
-	val = I915_READ(ICL_DPCLKA_CFGCR0);
+	val = intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0);
 	val |= icl_dpclka_cfgcr0_clk_off(dev_priv, phy);
-	I915_WRITE(ICL_DPCLKA_CFGCR0, val);
+	intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, val);
 
 	mutex_unlock(&dev_priv->dpll_lock);
 }
@@ -3057,7 +3059,7 @@ static void icl_sanitize_port_clk_off(struct drm_i915_private *dev_priv,
 	enum port port;
 	u32 val;
 
-	val = I915_READ(ICL_DPCLKA_CFGCR0);
+	val = intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0);
 	for_each_port_masked(port, port_mask) {
 		enum phy phy = intel_port_to_phy(dev_priv, port);
 		bool ddi_clk_off = val & icl_dpclka_cfgcr0_clk_off(dev_priv,
@@ -3076,7 +3078,7 @@ static void icl_sanitize_port_clk_off(struct drm_i915_private *dev_priv,
 		DRM_NOTE("PHY %c is disabled/in DSI mode with an ungated DDI clock, gate it\n",
 			 phy_name(phy));
 		val |= icl_dpclka_cfgcr0_clk_off(dev_priv, phy);
-		I915_WRITE(ICL_DPCLKA_CFGCR0, val);
+		intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, val);
 	}
 }
 
@@ -3150,42 +3152,44 @@ static void intel_ddi_clk_select(struct intel_encoder *encoder,
 
 	if (INTEL_GEN(dev_priv) >= 11) {
 		if (!intel_phy_is_combo(dev_priv, phy))
-			I915_WRITE(DDI_CLK_SEL(port),
-				   icl_pll_to_ddi_clk_sel(encoder, crtc_state));
+			intel_de_write(dev_priv, DDI_CLK_SEL(port),
+				       icl_pll_to_ddi_clk_sel(encoder, crtc_state));
 		else if (IS_ELKHARTLAKE(dev_priv) && port >= PORT_C)
 			/*
 			 * MG does not exist but the programming is required
 			 * to ungate DDIC and DDID
 			 */
-			I915_WRITE(DDI_CLK_SEL(port), DDI_CLK_SEL_MG);
+			intel_de_write(dev_priv, DDI_CLK_SEL(port),
+				       DDI_CLK_SEL_MG);
 	} else if (IS_CANNONLAKE(dev_priv)) {
 		/* Configure DPCLKA_CFGCR0 to map the DPLL to the DDI. */
-		val = I915_READ(DPCLKA_CFGCR0);
+		val = intel_de_read(dev_priv, DPCLKA_CFGCR0);
 		val &= ~DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(port);
 		val |= DPCLKA_CFGCR0_DDI_CLK_SEL(pll->info->id, port);
-		I915_WRITE(DPCLKA_CFGCR0, val);
+		intel_de_write(dev_priv, DPCLKA_CFGCR0, val);
 
 		/*
 		 * Configure DPCLKA_CFGCR0 to turn on the clock for the DDI.
 		 * This step and the step before must be done with separate
 		 * register writes.
 		 */
-		val = I915_READ(DPCLKA_CFGCR0);
+		val = intel_de_read(dev_priv, DPCLKA_CFGCR0);
 		val &= ~DPCLKA_CFGCR0_DDI_CLK_OFF(port);
-		I915_WRITE(DPCLKA_CFGCR0, val);
+		intel_de_write(dev_priv, DPCLKA_CFGCR0, val);
 	} else if (IS_GEN9_BC(dev_priv)) {
 		/* DDI -> PLL mapping  */
-		val = I915_READ(DPLL_CTRL2);
+		val = intel_de_read(dev_priv, DPLL_CTRL2);
 
 		val &= ~(DPLL_CTRL2_DDI_CLK_OFF(port) |
 			 DPLL_CTRL2_DDI_CLK_SEL_MASK(port));
 		val |= (DPLL_CTRL2_DDI_CLK_SEL(pll->info->id, port) |
 			DPLL_CTRL2_DDI_SEL_OVERRIDE(port));
 
-		I915_WRITE(DPLL_CTRL2, val);
+		intel_de_write(dev_priv, DPLL_CTRL2, val);
 
 	} else if (INTEL_GEN(dev_priv) < 9) {
-		I915_WRITE(PORT_CLK_SEL(port), hsw_pll_to_ddi_pll_sel(pll));
+		intel_de_write(dev_priv, PORT_CLK_SEL(port),
+			       hsw_pll_to_ddi_pll_sel(pll));
 	}
 
 	mutex_unlock(&dev_priv->dpll_lock);
@@ -3200,15 +3204,17 @@ static void intel_ddi_clk_disable(struct intel_encoder *encoder)
 	if (INTEL_GEN(dev_priv) >= 11) {
 		if (!intel_phy_is_combo(dev_priv, phy) ||
 		    (IS_ELKHARTLAKE(dev_priv) && port >= PORT_C))
-			I915_WRITE(DDI_CLK_SEL(port), DDI_CLK_SEL_NONE);
+			intel_de_write(dev_priv, DDI_CLK_SEL(port),
+				       DDI_CLK_SEL_NONE);
 	} else if (IS_CANNONLAKE(dev_priv)) {
-		I915_WRITE(DPCLKA_CFGCR0, I915_READ(DPCLKA_CFGCR0) |
-			   DPCLKA_CFGCR0_DDI_CLK_OFF(port));
+		intel_de_write(dev_priv, DPCLKA_CFGCR0,
+			       intel_de_read(dev_priv, DPCLKA_CFGCR0) | DPCLKA_CFGCR0_DDI_CLK_OFF(port));
 	} else if (IS_GEN9_BC(dev_priv)) {
-		I915_WRITE(DPLL_CTRL2, I915_READ(DPLL_CTRL2) |
-			   DPLL_CTRL2_DDI_CLK_OFF(port));
+		intel_de_write(dev_priv, DPLL_CTRL2,
+			       intel_de_read(dev_priv, DPLL_CTRL2) | DPLL_CTRL2_DDI_CLK_OFF(port));
 	} else if (INTEL_GEN(dev_priv) < 9) {
-		I915_WRITE(PORT_CLK_SEL(port), PORT_CLK_SEL_NONE);
+		intel_de_write(dev_priv, PORT_CLK_SEL(port),
+			       PORT_CLK_SEL_NONE);
 	}
 }
 
@@ -3225,13 +3231,15 @@ icl_program_mg_dp_mode(struct intel_digital_port *intel_dig_port,
 		return;
 
 	if (INTEL_GEN(dev_priv) >= 12) {
-		I915_WRITE(HIP_INDEX_REG(tc_port), HIP_INDEX_VAL(tc_port, 0x0));
-		ln0 = I915_READ(DKL_DP_MODE(tc_port));
-		I915_WRITE(HIP_INDEX_REG(tc_port), HIP_INDEX_VAL(tc_port, 0x1));
-		ln1 = I915_READ(DKL_DP_MODE(tc_port));
+		intel_de_write(dev_priv, HIP_INDEX_REG(tc_port),
+			       HIP_INDEX_VAL(tc_port, 0x0));
+		ln0 = intel_de_read(dev_priv, DKL_DP_MODE(tc_port));
+		intel_de_write(dev_priv, HIP_INDEX_REG(tc_port),
+			       HIP_INDEX_VAL(tc_port, 0x1));
+		ln1 = intel_de_read(dev_priv, DKL_DP_MODE(tc_port));
 	} else {
-		ln0 = I915_READ(MG_DP_MODE(0, tc_port));
-		ln1 = I915_READ(MG_DP_MODE(1, tc_port));
+		ln0 = intel_de_read(dev_priv, MG_DP_MODE(0, tc_port));
+		ln1 = intel_de_read(dev_priv, MG_DP_MODE(1, tc_port));
 	}
 
 	ln0 &= ~(MG_DP_MODE_CFG_DP_X1_MODE | MG_DP_MODE_CFG_DP_X1_MODE);
@@ -3288,13 +3296,15 @@ icl_program_mg_dp_mode(struct intel_digital_port *intel_dig_port,
 	}
 
 	if (INTEL_GEN(dev_priv) >= 12) {
-		I915_WRITE(HIP_INDEX_REG(tc_port), HIP_INDEX_VAL(tc_port, 0x0));
-		I915_WRITE(DKL_DP_MODE(tc_port), ln0);
-		I915_WRITE(HIP_INDEX_REG(tc_port), HIP_INDEX_VAL(tc_port, 0x1));
-		I915_WRITE(DKL_DP_MODE(tc_port), ln1);
+		intel_de_write(dev_priv, HIP_INDEX_REG(tc_port),
+			       HIP_INDEX_VAL(tc_port, 0x0));
+		intel_de_write(dev_priv, DKL_DP_MODE(tc_port), ln0);
+		intel_de_write(dev_priv, HIP_INDEX_REG(tc_port),
+			       HIP_INDEX_VAL(tc_port, 0x1));
+		intel_de_write(dev_priv, DKL_DP_MODE(tc_port), ln1);
 	} else {
-		I915_WRITE(MG_DP_MODE(0, tc_port), ln0);
-		I915_WRITE(MG_DP_MODE(1, tc_port), ln1);
+		intel_de_write(dev_priv, MG_DP_MODE(0, tc_port), ln0);
+		intel_de_write(dev_priv, MG_DP_MODE(1, tc_port), ln1);
 	}
 }
 
@@ -3319,9 +3329,9 @@ static void intel_ddi_enable_fec(struct intel_encoder *encoder,
 		return;
 
 	intel_dp = enc_to_intel_dp(encoder);
-	val = I915_READ(intel_dp->regs.dp_tp_ctl);
+	val = intel_de_read(dev_priv, intel_dp->regs.dp_tp_ctl);
 	val |= DP_TP_CTL_FEC_ENABLE;
-	I915_WRITE(intel_dp->regs.dp_tp_ctl, val);
+	intel_de_write(dev_priv, intel_dp->regs.dp_tp_ctl, val);
 
 	if (intel_de_wait_for_set(dev_priv, intel_dp->regs.dp_tp_status,
 				  DP_TP_STATUS_FEC_ENABLE_LIVE, 1))
@@ -3339,10 +3349,10 @@ static void intel_ddi_disable_fec_state(struct intel_encoder *encoder,
 		return;
 
 	intel_dp = enc_to_intel_dp(encoder);
-	val = I915_READ(intel_dp->regs.dp_tp_ctl);
+	val = intel_de_read(dev_priv, intel_dp->regs.dp_tp_ctl);
 	val &= ~DP_TP_CTL_FEC_ENABLE;
-	I915_WRITE(intel_dp->regs.dp_tp_ctl, val);
-	POSTING_READ(intel_dp->regs.dp_tp_ctl);
+	intel_de_write(dev_priv, intel_dp->regs.dp_tp_ctl, val);
+	intel_de_posting_read(dev_priv, intel_dp->regs.dp_tp_ctl);
 }
 
 static void tgl_ddi_pre_enable_dp(struct intel_encoder *encoder,
@@ -3669,20 +3679,20 @@ static void intel_disable_ddi_buf(struct intel_encoder *encoder,
 	bool wait = false;
 	u32 val;
 
-	val = I915_READ(DDI_BUF_CTL(port));
+	val = intel_de_read(dev_priv, DDI_BUF_CTL(port));
 	if (val & DDI_BUF_CTL_ENABLE) {
 		val &= ~DDI_BUF_CTL_ENABLE;
-		I915_WRITE(DDI_BUF_CTL(port), val);
+		intel_de_write(dev_priv, DDI_BUF_CTL(port), val);
 		wait = true;
 	}
 
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
-		val = I915_READ(intel_dp->regs.dp_tp_ctl);
+		val = intel_de_read(dev_priv, intel_dp->regs.dp_tp_ctl);
 		val &= ~(DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK);
 		val |= DP_TP_CTL_LINK_TRAIN_PAT1;
-		I915_WRITE(intel_dp->regs.dp_tp_ctl, val);
+		intel_de_write(dev_priv, intel_dp->regs.dp_tp_ctl, val);
 	}
 
 	/* Disable FEC in DP Sink */
@@ -3714,9 +3724,12 @@ static void intel_ddi_post_disable_dp(struct intel_encoder *encoder,
 			enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 			u32 val;
 
-			val = I915_READ(TRANS_DDI_FUNC_CTL(cpu_transcoder));
+			val = intel_de_read(dev_priv,
+					    TRANS_DDI_FUNC_CTL(cpu_transcoder));
 			val &= ~TGL_TRANS_DDI_PORT_MASK;
-			I915_WRITE(TRANS_DDI_FUNC_CTL(cpu_transcoder), val);
+			intel_de_write(dev_priv,
+				       TRANS_DDI_FUNC_CTL(cpu_transcoder),
+				       val);
 		}
 	} else {
 		if (!is_mst)
@@ -3778,7 +3791,8 @@ static void icl_disable_transcoder_port_sync(const struct intel_crtc_state *old_
 	DRM_DEBUG_KMS("Disabling Transcoder Port Sync on Slave Transcoder %s\n",
 		      transcoder_name(old_crtc_state->cpu_transcoder));
 
-	I915_WRITE(TRANS_DDI_FUNC_CTL2(old_crtc_state->cpu_transcoder), 0);
+	intel_de_write(dev_priv,
+		       TRANS_DDI_FUNC_CTL2(old_crtc_state->cpu_transcoder), 0);
 }
 
 static void intel_ddi_post_disable(struct intel_encoder *encoder,
@@ -3852,25 +3866,25 @@ void intel_ddi_fdi_post_disable(struct intel_encoder *encoder,
 	 * step 13 is the correct place for it. Step 18 is where it was
 	 * originally before the BUN.
 	 */
-	val = I915_READ(FDI_RX_CTL(PIPE_A));
+	val = intel_de_read(dev_priv, FDI_RX_CTL(PIPE_A));
 	val &= ~FDI_RX_ENABLE;
-	I915_WRITE(FDI_RX_CTL(PIPE_A), val);
+	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), val);
 
 	intel_disable_ddi_buf(encoder, old_crtc_state);
 	intel_ddi_clk_disable(encoder);
 
-	val = I915_READ(FDI_RX_MISC(PIPE_A));
+	val = intel_de_read(dev_priv, FDI_RX_MISC(PIPE_A));
 	val &= ~(FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK);
 	val |= FDI_RX_PWRDN_LANE1_VAL(2) | FDI_RX_PWRDN_LANE0_VAL(2);
-	I915_WRITE(FDI_RX_MISC(PIPE_A), val);
+	intel_de_write(dev_priv, FDI_RX_MISC(PIPE_A), val);
 
-	val = I915_READ(FDI_RX_CTL(PIPE_A));
+	val = intel_de_read(dev_priv, FDI_RX_CTL(PIPE_A));
 	val &= ~FDI_PCDCLK;
-	I915_WRITE(FDI_RX_CTL(PIPE_A), val);
+	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), val);
 
-	val = I915_READ(FDI_RX_CTL(PIPE_A));
+	val = intel_de_read(dev_priv, FDI_RX_CTL(PIPE_A));
 	val &= ~FDI_RX_PLL_ENABLE;
-	I915_WRITE(FDI_RX_CTL(PIPE_A), val);
+	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), val);
 }
 
 static void intel_enable_ddi_dp(struct intel_encoder *encoder,
@@ -3940,7 +3954,7 @@ static void intel_enable_ddi_hdmi(struct intel_encoder *encoder,
 		i915_reg_t reg = gen9_chicken_trans_reg_by_port(dev_priv, port);
 		u32 val;
 
-		val = I915_READ(reg);
+		val = intel_de_read(dev_priv, reg);
 
 		if (port == PORT_E)
 			val |= DDIE_TRAINING_OVERRIDE_ENABLE |
@@ -3949,8 +3963,8 @@ static void intel_enable_ddi_hdmi(struct intel_encoder *encoder,
 			val |= DDI_TRAINING_OVERRIDE_ENABLE |
 				DDI_TRAINING_OVERRIDE_VALUE;
 
-		I915_WRITE(reg, val);
-		POSTING_READ(reg);
+		intel_de_write(dev_priv, reg, val);
+		intel_de_posting_read(dev_priv, reg);
 
 		udelay(1);
 
@@ -3961,15 +3975,15 @@ static void intel_enable_ddi_hdmi(struct intel_encoder *encoder,
 			val &= ~(DDI_TRAINING_OVERRIDE_ENABLE |
 				 DDI_TRAINING_OVERRIDE_VALUE);
 
-		I915_WRITE(reg, val);
+		intel_de_write(dev_priv, reg, val);
 	}
 
 	/* In HDMI/DVI mode, the port width, and swing/emphasis values
 	 * are ignored so nothing special needs to be done besides
 	 * enabling the port.
 	 */
-	I915_WRITE(DDI_BUF_CTL(port),
-		   dig_port->saved_port_bits | DDI_BUF_CTL_ENABLE);
+	intel_de_write(dev_priv, DDI_BUF_CTL(port),
+		       dig_port->saved_port_bits | DDI_BUF_CTL_ENABLE);
 
 	if (crtc_state->has_audio)
 		intel_audio_codec_enable(encoder, crtc_state, conn_state);
@@ -4159,20 +4173,20 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp)
 	u32 dp_tp_ctl, ddi_buf_ctl;
 	bool wait = false;
 
-	dp_tp_ctl = I915_READ(intel_dp->regs.dp_tp_ctl);
+	dp_tp_ctl = intel_de_read(dev_priv, intel_dp->regs.dp_tp_ctl);
 
 	if (dp_tp_ctl & DP_TP_CTL_ENABLE) {
-		ddi_buf_ctl = I915_READ(DDI_BUF_CTL(port));
+		ddi_buf_ctl = intel_de_read(dev_priv, DDI_BUF_CTL(port));
 		if (ddi_buf_ctl & DDI_BUF_CTL_ENABLE) {
-			I915_WRITE(DDI_BUF_CTL(port),
-				   ddi_buf_ctl & ~DDI_BUF_CTL_ENABLE);
+			intel_de_write(dev_priv, DDI_BUF_CTL(port),
+				       ddi_buf_ctl & ~DDI_BUF_CTL_ENABLE);
 			wait = true;
 		}
 
 		dp_tp_ctl &= ~(DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK);
 		dp_tp_ctl |= DP_TP_CTL_LINK_TRAIN_PAT1;
-		I915_WRITE(intel_dp->regs.dp_tp_ctl, dp_tp_ctl);
-		POSTING_READ(intel_dp->regs.dp_tp_ctl);
+		intel_de_write(dev_priv, intel_dp->regs.dp_tp_ctl, dp_tp_ctl);
+		intel_de_posting_read(dev_priv, intel_dp->regs.dp_tp_ctl);
 
 		if (wait)
 			intel_wait_ddi_buf_idle(dev_priv, port);
@@ -4187,12 +4201,12 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp)
 		if (drm_dp_enhanced_frame_cap(intel_dp->dpcd))
 			dp_tp_ctl |= DP_TP_CTL_ENHANCED_FRAME_ENABLE;
 	}
-	I915_WRITE(intel_dp->regs.dp_tp_ctl, dp_tp_ctl);
-	POSTING_READ(intel_dp->regs.dp_tp_ctl);
+	intel_de_write(dev_priv, intel_dp->regs.dp_tp_ctl, dp_tp_ctl);
+	intel_de_posting_read(dev_priv, intel_dp->regs.dp_tp_ctl);
 
 	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
-	I915_WRITE(DDI_BUF_CTL(port), intel_dp->DP);
-	POSTING_READ(DDI_BUF_CTL(port));
+	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
+	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
 
 	udelay(600);
 }
@@ -4206,7 +4220,7 @@ static bool intel_ddi_is_audio_enabled(struct drm_i915_private *dev_priv,
 	if (!intel_display_power_is_enabled(dev_priv, POWER_DOMAIN_AUDIO))
 		return false;
 
-	return I915_READ(HSW_AUD_PIN_ELD_CP_VLD) &
+	return intel_de_read(dev_priv, HSW_AUD_PIN_ELD_CP_VLD) &
 		AUDIO_OUTPUT_ENABLE(cpu_transcoder);
 }
 
@@ -4233,7 +4247,7 @@ void intel_ddi_get_config(struct intel_encoder *encoder,
 
 	intel_dsc_get_config(encoder, pipe_config);
 
-	temp = I915_READ(TRANS_DDI_FUNC_CTL(cpu_transcoder));
+	temp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
 	if (temp & TRANS_DDI_PHSYNC)
 		flags |= DRM_MODE_FLAG_PHSYNC;
 	else
@@ -4302,7 +4316,7 @@ void intel_ddi_get_config(struct intel_encoder *encoder,
 				dp_tp_ctl = TGL_DP_TP_CTL(pipe_config->cpu_transcoder);
 
 			pipe_config->fec_enable =
-				I915_READ(dp_tp_ctl) & DP_TP_CTL_FEC_ENABLE;
+				intel_de_read(dev_priv, dp_tp_ctl) & DP_TP_CTL_FEC_ENABLE;
 
 			DRM_DEBUG_KMS("[ENCODER:%d:%s] Fec status: %u\n",
 				      encoder->base.base.id, encoder->base.name,
@@ -4673,7 +4687,7 @@ intel_ddi_max_lanes(struct intel_digital_port *intel_dport)
 		return max_lanes;
 
 	if (port == PORT_A || port == PORT_E) {
-		if (I915_READ(DDI_BUF_CTL(PORT_A)) & DDI_A_4_LANES)
+		if (intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_A_4_LANES)
 			max_lanes = port == PORT_A ? 4 : 0;
 		else
 			/* Both A and E share 2 lanes */
@@ -4753,10 +4767,12 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	encoder->pipe_mask = ~0;
 
 	if (INTEL_GEN(dev_priv) >= 11)
-		intel_dig_port->saved_port_bits = I915_READ(DDI_BUF_CTL(port)) &
+		intel_dig_port->saved_port_bits = intel_de_read(dev_priv,
+								DDI_BUF_CTL(port)) &
 			DDI_BUF_PORT_REVERSAL;
 	else
-		intel_dig_port->saved_port_bits = I915_READ(DDI_BUF_CTL(port)) &
+		intel_dig_port->saved_port_bits = intel_de_read(dev_priv,
+								DDI_BUF_CTL(port)) &
 			(DDI_BUF_PORT_REVERSAL | DDI_A_4_LANES);
 
 	intel_dig_port->dp.output_reg = INVALID_MMIO_REG;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
