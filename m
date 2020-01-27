Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7178914A9FE
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 19:45:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAB746E8A2;
	Mon, 27 Jan 2020 18:45:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C89806E8A2
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 18:45:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 10:26:18 -0800
X-IronPort-AV: E=Sophos;i="5.70,370,1574150400"; d="scan'208";a="217357332"
Received: from scharfhe-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.52.61])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 10:26:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Jan 2020 20:26:03 +0200
Message-Id: <0c3876a5beb5a33d8ab1c93e98dd16fd75339481.1580149467.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1580149467.git.jani.nikula@intel.com>
References: <cover.1580149467.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 1/8] drm/i915/icl_dsi: use intel_de_*()
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

Acked-by: Chris Wilson <chris@chris-wilson.co.uk>
Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Acked-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 271 +++++++++++++------------
 1 file changed, 145 insertions(+), 126 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 1186a5df057e..f553ba4c63c7 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -39,14 +39,14 @@
 static inline int header_credits_available(struct drm_i915_private *dev_priv,
 					   enum transcoder dsi_trans)
 {
-	return (I915_READ(DSI_CMD_TXCTL(dsi_trans)) & FREE_HEADER_CREDIT_MASK)
+	return (intel_de_read(dev_priv, DSI_CMD_TXCTL(dsi_trans)) & FREE_HEADER_CREDIT_MASK)
 		>> FREE_HEADER_CREDIT_SHIFT;
 }
 
 static inline int payload_credits_available(struct drm_i915_private *dev_priv,
 					    enum transcoder dsi_trans)
 {
-	return (I915_READ(DSI_CMD_TXCTL(dsi_trans)) & FREE_PLOAD_CREDIT_MASK)
+	return (intel_de_read(dev_priv, DSI_CMD_TXCTL(dsi_trans)) & FREE_PLOAD_CREDIT_MASK)
 		>> FREE_PLOAD_CREDIT_SHIFT;
 }
 
@@ -110,7 +110,7 @@ static void wait_for_cmds_dispatched_to_panel(struct intel_encoder *encoder)
 	/* wait for LP TX in progress bit to be cleared */
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
-		if (wait_for_us(!(I915_READ(DSI_LP_MSG(dsi_trans)) &
+		if (wait_for_us(!(intel_de_read(dev_priv, DSI_LP_MSG(dsi_trans)) &
 				  LPTX_IN_PROGRESS), 20))
 			drm_err(&dev_priv->drm, "LPTX bit not cleared\n");
 	}
@@ -138,7 +138,7 @@ static bool add_payld_to_queue(struct intel_dsi_host *host, const u8 *data,
 		for (j = 0; j < min_t(u32, len - i, 4); j++)
 			tmp |= *data++ << 8 * j;
 
-		I915_WRITE(DSI_CMD_TXPYLD(dsi_trans), tmp);
+		intel_de_write(dev_priv, DSI_CMD_TXPYLD(dsi_trans), tmp);
 	}
 
 	return true;
@@ -161,7 +161,7 @@ static int dsi_send_pkt_hdr(struct intel_dsi_host *host,
 		return -1;
 	}
 
-	tmp = I915_READ(DSI_CMD_TXHDR(dsi_trans));
+	tmp = intel_de_read(dev_priv, DSI_CMD_TXHDR(dsi_trans));
 
 	if (pkt.payload)
 		tmp |= PAYLOAD_PRESENT;
@@ -178,7 +178,7 @@ static int dsi_send_pkt_hdr(struct intel_dsi_host *host,
 	tmp |= ((pkt.header[0] & DT_MASK) << DT_SHIFT);
 	tmp |= (pkt.header[1] << PARAM_WC_LOWER_SHIFT);
 	tmp |= (pkt.header[2] << PARAM_WC_UPPER_SHIFT);
-	I915_WRITE(DSI_CMD_TXHDR(dsi_trans), tmp);
+	intel_de_write(dev_priv, DSI_CMD_TXHDR(dsi_trans), tmp);
 
 	return 0;
 }
@@ -215,53 +215,55 @@ static void dsi_program_swing_and_deemphasis(struct intel_encoder *encoder)
 		 * Program voltage swing and pre-emphasis level values as per
 		 * table in BSPEC under DDI buffer programing
 		 */
-		tmp = I915_READ(ICL_PORT_TX_DW5_LN0(phy));
+		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN0(phy));
 		tmp &= ~(SCALING_MODE_SEL_MASK | RTERM_SELECT_MASK);
 		tmp |= SCALING_MODE_SEL(0x2);
 		tmp |= TAP2_DISABLE | TAP3_DISABLE;
 		tmp |= RTERM_SELECT(0x6);
-		I915_WRITE(ICL_PORT_TX_DW5_GRP(phy), tmp);
+		intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), tmp);
 
-		tmp = I915_READ(ICL_PORT_TX_DW5_AUX(phy));
+		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW5_AUX(phy));
 		tmp &= ~(SCALING_MODE_SEL_MASK | RTERM_SELECT_MASK);
 		tmp |= SCALING_MODE_SEL(0x2);
 		tmp |= TAP2_DISABLE | TAP3_DISABLE;
 		tmp |= RTERM_SELECT(0x6);
-		I915_WRITE(ICL_PORT_TX_DW5_AUX(phy), tmp);
+		intel_de_write(dev_priv, ICL_PORT_TX_DW5_AUX(phy), tmp);
 
-		tmp = I915_READ(ICL_PORT_TX_DW2_LN0(phy));
+		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW2_LN0(phy));
 		tmp &= ~(SWING_SEL_LOWER_MASK | SWING_SEL_UPPER_MASK |
 			 RCOMP_SCALAR_MASK);
 		tmp |= SWING_SEL_UPPER(0x2);
 		tmp |= SWING_SEL_LOWER(0x2);
 		tmp |= RCOMP_SCALAR(0x98);
-		I915_WRITE(ICL_PORT_TX_DW2_GRP(phy), tmp);
+		intel_de_write(dev_priv, ICL_PORT_TX_DW2_GRP(phy), tmp);
 
-		tmp = I915_READ(ICL_PORT_TX_DW2_AUX(phy));
+		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW2_AUX(phy));
 		tmp &= ~(SWING_SEL_LOWER_MASK | SWING_SEL_UPPER_MASK |
 			 RCOMP_SCALAR_MASK);
 		tmp |= SWING_SEL_UPPER(0x2);
 		tmp |= SWING_SEL_LOWER(0x2);
 		tmp |= RCOMP_SCALAR(0x98);
-		I915_WRITE(ICL_PORT_TX_DW2_AUX(phy), tmp);
+		intel_de_write(dev_priv, ICL_PORT_TX_DW2_AUX(phy), tmp);
 
-		tmp = I915_READ(ICL_PORT_TX_DW4_AUX(phy));
+		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW4_AUX(phy));
 		tmp &= ~(POST_CURSOR_1_MASK | POST_CURSOR_2_MASK |
 			 CURSOR_COEFF_MASK);
 		tmp |= POST_CURSOR_1(0x0);
 		tmp |= POST_CURSOR_2(0x0);
 		tmp |= CURSOR_COEFF(0x3f);
-		I915_WRITE(ICL_PORT_TX_DW4_AUX(phy), tmp);
+		intel_de_write(dev_priv, ICL_PORT_TX_DW4_AUX(phy), tmp);
 
 		for (lane = 0; lane <= 3; lane++) {
 			/* Bspec: must not use GRP register for write */
-			tmp = I915_READ(ICL_PORT_TX_DW4_LN(lane, phy));
+			tmp = intel_de_read(dev_priv,
+					    ICL_PORT_TX_DW4_LN(lane, phy));
 			tmp &= ~(POST_CURSOR_1_MASK | POST_CURSOR_2_MASK |
 				 CURSOR_COEFF_MASK);
 			tmp |= POST_CURSOR_1(0x0);
 			tmp |= POST_CURSOR_2(0x0);
 			tmp |= CURSOR_COEFF(0x3f);
-			I915_WRITE(ICL_PORT_TX_DW4_LN(lane, phy), tmp);
+			intel_de_write(dev_priv,
+				       ICL_PORT_TX_DW4_LN(lane, phy), tmp);
 		}
 	}
 }
@@ -273,7 +275,7 @@ static void configure_dual_link_mode(struct intel_encoder *encoder,
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	u32 dss_ctl1;
 
-	dss_ctl1 = I915_READ(DSS_CTL1);
+	dss_ctl1 = intel_de_read(dev_priv, DSS_CTL1);
 	dss_ctl1 |= SPLITTER_ENABLE;
 	dss_ctl1 &= ~OVERLAP_PIXELS_MASK;
 	dss_ctl1 |= OVERLAP_PIXELS(intel_dsi->pixel_overlap);
@@ -294,16 +296,16 @@ static void configure_dual_link_mode(struct intel_encoder *encoder,
 
 		dss_ctl1 &= ~LEFT_DL_BUF_TARGET_DEPTH_MASK;
 		dss_ctl1 |= LEFT_DL_BUF_TARGET_DEPTH(dl_buffer_depth);
-		dss_ctl2 = I915_READ(DSS_CTL2);
+		dss_ctl2 = intel_de_read(dev_priv, DSS_CTL2);
 		dss_ctl2 &= ~RIGHT_DL_BUF_TARGET_DEPTH_MASK;
 		dss_ctl2 |= RIGHT_DL_BUF_TARGET_DEPTH(dl_buffer_depth);
-		I915_WRITE(DSS_CTL2, dss_ctl2);
+		intel_de_write(dev_priv, DSS_CTL2, dss_ctl2);
 	} else {
 		/* Interleave */
 		dss_ctl1 |= DUAL_LINK_MODE_INTERLEAVE;
 	}
 
-	I915_WRITE(DSS_CTL1, dss_ctl1);
+	intel_de_write(dev_priv, DSS_CTL1, dss_ctl1);
 }
 
 /* aka DSI 8X clock */
@@ -334,15 +336,15 @@ static void gen11_dsi_program_esc_clk_div(struct intel_encoder *encoder,
 	esc_clk_div_m = DIV_ROUND_UP(afe_clk_khz, DSI_MAX_ESC_CLK);
 
 	for_each_dsi_port(port, intel_dsi->ports) {
-		I915_WRITE(ICL_DSI_ESC_CLK_DIV(port),
-			   esc_clk_div_m & ICL_ESC_CLK_DIV_MASK);
-		POSTING_READ(ICL_DSI_ESC_CLK_DIV(port));
+		intel_de_write(dev_priv, ICL_DSI_ESC_CLK_DIV(port),
+			       esc_clk_div_m & ICL_ESC_CLK_DIV_MASK);
+		intel_de_posting_read(dev_priv, ICL_DSI_ESC_CLK_DIV(port));
 	}
 
 	for_each_dsi_port(port, intel_dsi->ports) {
-		I915_WRITE(ICL_DPHY_ESC_CLK_DIV(port),
-			   esc_clk_div_m & ICL_ESC_CLK_DIV_MASK);
-		POSTING_READ(ICL_DPHY_ESC_CLK_DIV(port));
+		intel_de_write(dev_priv, ICL_DPHY_ESC_CLK_DIV(port),
+			       esc_clk_div_m & ICL_ESC_CLK_DIV_MASK);
+		intel_de_posting_read(dev_priv, ICL_DPHY_ESC_CLK_DIV(port));
 	}
 }
 
@@ -369,9 +371,9 @@ static void gen11_dsi_enable_io_power(struct intel_encoder *encoder)
 	u32 tmp;
 
 	for_each_dsi_port(port, intel_dsi->ports) {
-		tmp = I915_READ(ICL_DSI_IO_MODECTL(port));
+		tmp = intel_de_read(dev_priv, ICL_DSI_IO_MODECTL(port));
 		tmp |= COMBO_PHY_MODE_DSI;
-		I915_WRITE(ICL_DSI_IO_MODECTL(port), tmp);
+		intel_de_write(dev_priv, ICL_DSI_IO_MODECTL(port), tmp);
 	}
 
 	get_dsi_io_power_domains(dev_priv, intel_dsi);
@@ -398,40 +400,46 @@ static void gen11_dsi_config_phy_lanes_sequence(struct intel_encoder *encoder)
 
 	/* Step 4b(i) set loadgen select for transmit and aux lanes */
 	for_each_dsi_phy(phy, intel_dsi->phys) {
-		tmp = I915_READ(ICL_PORT_TX_DW4_AUX(phy));
+		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW4_AUX(phy));
 		tmp &= ~LOADGEN_SELECT;
-		I915_WRITE(ICL_PORT_TX_DW4_AUX(phy), tmp);
+		intel_de_write(dev_priv, ICL_PORT_TX_DW4_AUX(phy), tmp);
 		for (lane = 0; lane <= 3; lane++) {
-			tmp = I915_READ(ICL_PORT_TX_DW4_LN(lane, phy));
+			tmp = intel_de_read(dev_priv,
+					    ICL_PORT_TX_DW4_LN(lane, phy));
 			tmp &= ~LOADGEN_SELECT;
 			if (lane != 2)
 				tmp |= LOADGEN_SELECT;
-			I915_WRITE(ICL_PORT_TX_DW4_LN(lane, phy), tmp);
+			intel_de_write(dev_priv,
+				       ICL_PORT_TX_DW4_LN(lane, phy), tmp);
 		}
 	}
 
 	/* Step 4b(ii) set latency optimization for transmit and aux lanes */
 	for_each_dsi_phy(phy, intel_dsi->phys) {
-		tmp = I915_READ(ICL_PORT_TX_DW2_AUX(phy));
+		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW2_AUX(phy));
 		tmp &= ~FRC_LATENCY_OPTIM_MASK;
 		tmp |= FRC_LATENCY_OPTIM_VAL(0x5);
-		I915_WRITE(ICL_PORT_TX_DW2_AUX(phy), tmp);
-		tmp = I915_READ(ICL_PORT_TX_DW2_LN0(phy));
+		intel_de_write(dev_priv, ICL_PORT_TX_DW2_AUX(phy), tmp);
+		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW2_LN0(phy));
 		tmp &= ~FRC_LATENCY_OPTIM_MASK;
 		tmp |= FRC_LATENCY_OPTIM_VAL(0x5);
-		I915_WRITE(ICL_PORT_TX_DW2_GRP(phy), tmp);
+		intel_de_write(dev_priv, ICL_PORT_TX_DW2_GRP(phy), tmp);
 
 		/* For EHL, TGL, set latency optimization for PCS_DW1 lanes */
 		if (IS_ELKHARTLAKE(dev_priv) || (INTEL_GEN(dev_priv) >= 12)) {
-			tmp = I915_READ(ICL_PORT_PCS_DW1_AUX(phy));
+			tmp = intel_de_read(dev_priv,
+					    ICL_PORT_PCS_DW1_AUX(phy));
 			tmp &= ~LATENCY_OPTIM_MASK;
 			tmp |= LATENCY_OPTIM_VAL(0);
-			I915_WRITE(ICL_PORT_PCS_DW1_AUX(phy), tmp);
+			intel_de_write(dev_priv, ICL_PORT_PCS_DW1_AUX(phy),
+				       tmp);
 
-			tmp = I915_READ(ICL_PORT_PCS_DW1_LN0(phy));
+			tmp = intel_de_read(dev_priv,
+					    ICL_PORT_PCS_DW1_LN0(phy));
 			tmp &= ~LATENCY_OPTIM_MASK;
 			tmp |= LATENCY_OPTIM_VAL(0x1);
-			I915_WRITE(ICL_PORT_PCS_DW1_GRP(phy), tmp);
+			intel_de_write(dev_priv, ICL_PORT_PCS_DW1_GRP(phy),
+				       tmp);
 		}
 	}
 
@@ -446,12 +454,12 @@ static void gen11_dsi_voltage_swing_program_seq(struct intel_encoder *encoder)
 
 	/* clear common keeper enable bit */
 	for_each_dsi_phy(phy, intel_dsi->phys) {
-		tmp = I915_READ(ICL_PORT_PCS_DW1_LN0(phy));
+		tmp = intel_de_read(dev_priv, ICL_PORT_PCS_DW1_LN0(phy));
 		tmp &= ~COMMON_KEEPER_EN;
-		I915_WRITE(ICL_PORT_PCS_DW1_GRP(phy), tmp);
-		tmp = I915_READ(ICL_PORT_PCS_DW1_AUX(phy));
+		intel_de_write(dev_priv, ICL_PORT_PCS_DW1_GRP(phy), tmp);
+		tmp = intel_de_read(dev_priv, ICL_PORT_PCS_DW1_AUX(phy));
 		tmp &= ~COMMON_KEEPER_EN;
-		I915_WRITE(ICL_PORT_PCS_DW1_AUX(phy), tmp);
+		intel_de_write(dev_priv, ICL_PORT_PCS_DW1_AUX(phy), tmp);
 	}
 
 	/*
@@ -460,19 +468,19 @@ static void gen11_dsi_voltage_swing_program_seq(struct intel_encoder *encoder)
 	 * as part of lane phy sequence configuration
 	 */
 	for_each_dsi_phy(phy, intel_dsi->phys) {
-		tmp = I915_READ(ICL_PORT_CL_DW5(phy));
+		tmp = intel_de_read(dev_priv, ICL_PORT_CL_DW5(phy));
 		tmp |= SUS_CLOCK_CONFIG;
-		I915_WRITE(ICL_PORT_CL_DW5(phy), tmp);
+		intel_de_write(dev_priv, ICL_PORT_CL_DW5(phy), tmp);
 	}
 
 	/* Clear training enable to change swing values */
 	for_each_dsi_phy(phy, intel_dsi->phys) {
-		tmp = I915_READ(ICL_PORT_TX_DW5_LN0(phy));
+		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN0(phy));
 		tmp &= ~TX_TRAINING_EN;
-		I915_WRITE(ICL_PORT_TX_DW5_GRP(phy), tmp);
-		tmp = I915_READ(ICL_PORT_TX_DW5_AUX(phy));
+		intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), tmp);
+		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW5_AUX(phy));
 		tmp &= ~TX_TRAINING_EN;
-		I915_WRITE(ICL_PORT_TX_DW5_AUX(phy), tmp);
+		intel_de_write(dev_priv, ICL_PORT_TX_DW5_AUX(phy), tmp);
 	}
 
 	/* Program swing and de-emphasis */
@@ -480,12 +488,12 @@ static void gen11_dsi_voltage_swing_program_seq(struct intel_encoder *encoder)
 
 	/* Set training enable to trigger update */
 	for_each_dsi_phy(phy, intel_dsi->phys) {
-		tmp = I915_READ(ICL_PORT_TX_DW5_LN0(phy));
+		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN0(phy));
 		tmp |= TX_TRAINING_EN;
-		I915_WRITE(ICL_PORT_TX_DW5_GRP(phy), tmp);
-		tmp = I915_READ(ICL_PORT_TX_DW5_AUX(phy));
+		intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), tmp);
+		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW5_AUX(phy));
 		tmp |= TX_TRAINING_EN;
-		I915_WRITE(ICL_PORT_TX_DW5_AUX(phy), tmp);
+		intel_de_write(dev_priv, ICL_PORT_TX_DW5_AUX(phy), tmp);
 	}
 }
 
@@ -497,11 +505,11 @@ static void gen11_dsi_enable_ddi_buffer(struct intel_encoder *encoder)
 	enum port port;
 
 	for_each_dsi_port(port, intel_dsi->ports) {
-		tmp = I915_READ(DDI_BUF_CTL(port));
+		tmp = intel_de_read(dev_priv, DDI_BUF_CTL(port));
 		tmp |= DDI_BUF_CTL_ENABLE;
-		I915_WRITE(DDI_BUF_CTL(port), tmp);
+		intel_de_write(dev_priv, DDI_BUF_CTL(port), tmp);
 
-		if (wait_for_us(!(I915_READ(DDI_BUF_CTL(port)) &
+		if (wait_for_us(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
 				  DDI_BUF_IS_IDLE),
 				  500))
 			drm_err(&dev_priv->drm, "DDI port:%c buffer idle\n",
@@ -521,28 +529,30 @@ gen11_dsi_setup_dphy_timings(struct intel_encoder *encoder,
 
 	/* Program T-INIT master registers */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		tmp = I915_READ(ICL_DSI_T_INIT_MASTER(port));
+		tmp = intel_de_read(dev_priv, ICL_DSI_T_INIT_MASTER(port));
 		tmp &= ~MASTER_INIT_TIMER_MASK;
 		tmp |= intel_dsi->init_count;
-		I915_WRITE(ICL_DSI_T_INIT_MASTER(port), tmp);
+		intel_de_write(dev_priv, ICL_DSI_T_INIT_MASTER(port), tmp);
 	}
 
 	/* Program DPHY clock lanes timings */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		I915_WRITE(DPHY_CLK_TIMING_PARAM(port), intel_dsi->dphy_reg);
+		intel_de_write(dev_priv, DPHY_CLK_TIMING_PARAM(port),
+			       intel_dsi->dphy_reg);
 
 		/* shadow register inside display core */
-		I915_WRITE(DSI_CLK_TIMING_PARAM(port), intel_dsi->dphy_reg);
+		intel_de_write(dev_priv, DSI_CLK_TIMING_PARAM(port),
+			       intel_dsi->dphy_reg);
 	}
 
 	/* Program DPHY data lanes timings */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		I915_WRITE(DPHY_DATA_TIMING_PARAM(port),
-			   intel_dsi->dphy_data_lane_reg);
+		intel_de_write(dev_priv, DPHY_DATA_TIMING_PARAM(port),
+			       intel_dsi->dphy_data_lane_reg);
 
 		/* shadow register inside display core */
-		I915_WRITE(DSI_DATA_TIMING_PARAM(port),
-			   intel_dsi->dphy_data_lane_reg);
+		intel_de_write(dev_priv, DSI_DATA_TIMING_PARAM(port),
+			       intel_dsi->dphy_data_lane_reg);
 	}
 
 	/*
@@ -554,25 +564,30 @@ gen11_dsi_setup_dphy_timings(struct intel_encoder *encoder,
 	if (IS_GEN(dev_priv, 11)) {
 		if (afe_clk(encoder, crtc_state) <= 800000) {
 			for_each_dsi_port(port, intel_dsi->ports) {
-				tmp = I915_READ(DPHY_TA_TIMING_PARAM(port));
+				tmp = intel_de_read(dev_priv,
+						    DPHY_TA_TIMING_PARAM(port));
 				tmp &= ~TA_SURE_MASK;
 				tmp |= TA_SURE_OVERRIDE | TA_SURE(0);
-				I915_WRITE(DPHY_TA_TIMING_PARAM(port), tmp);
+				intel_de_write(dev_priv,
+					       DPHY_TA_TIMING_PARAM(port),
+					       tmp);
 
 				/* shadow register inside display core */
-				tmp = I915_READ(DSI_TA_TIMING_PARAM(port));
+				tmp = intel_de_read(dev_priv,
+						    DSI_TA_TIMING_PARAM(port));
 				tmp &= ~TA_SURE_MASK;
 				tmp |= TA_SURE_OVERRIDE | TA_SURE(0);
-				I915_WRITE(DSI_TA_TIMING_PARAM(port), tmp);
+				intel_de_write(dev_priv,
+					       DSI_TA_TIMING_PARAM(port), tmp);
 			}
 		}
 	}
 
 	if (IS_ELKHARTLAKE(dev_priv)) {
 		for_each_dsi_phy(phy, intel_dsi->phys) {
-			tmp = I915_READ(ICL_DPHY_CHKN(phy));
+			tmp = intel_de_read(dev_priv, ICL_DPHY_CHKN(phy));
 			tmp |= ICL_DPHY_CHKN_AFE_OVER_PPI_STRAP;
-			I915_WRITE(ICL_DPHY_CHKN(phy), tmp);
+			intel_de_write(dev_priv, ICL_DPHY_CHKN(phy), tmp);
 		}
 	}
 }
@@ -585,11 +600,11 @@ static void gen11_dsi_gate_clocks(struct intel_encoder *encoder)
 	enum phy phy;
 
 	mutex_lock(&dev_priv->dpll_lock);
-	tmp = I915_READ(ICL_DPCLKA_CFGCR0);
+	tmp = intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0);
 	for_each_dsi_phy(phy, intel_dsi->phys)
 		tmp |= ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
 
-	I915_WRITE(ICL_DPCLKA_CFGCR0, tmp);
+	intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, tmp);
 	mutex_unlock(&dev_priv->dpll_lock);
 }
 
@@ -601,11 +616,11 @@ static void gen11_dsi_ungate_clocks(struct intel_encoder *encoder)
 	enum phy phy;
 
 	mutex_lock(&dev_priv->dpll_lock);
-	tmp = I915_READ(ICL_DPCLKA_CFGCR0);
+	tmp = intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0);
 	for_each_dsi_phy(phy, intel_dsi->phys)
 		tmp &= ~ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
 
-	I915_WRITE(ICL_DPCLKA_CFGCR0, tmp);
+	intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, tmp);
 	mutex_unlock(&dev_priv->dpll_lock);
 }
 
@@ -620,12 +635,12 @@ static void gen11_dsi_map_pll(struct intel_encoder *encoder,
 
 	mutex_lock(&dev_priv->dpll_lock);
 
-	val = I915_READ(ICL_DPCLKA_CFGCR0);
+	val = intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0);
 	for_each_dsi_phy(phy, intel_dsi->phys) {
 		val &= ~ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
 		val |= ICL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll->info->id, phy);
 	}
-	I915_WRITE(ICL_DPCLKA_CFGCR0, val);
+	intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, val);
 
 	for_each_dsi_phy(phy, intel_dsi->phys) {
 		if (INTEL_GEN(dev_priv) >= 12)
@@ -633,9 +648,9 @@ static void gen11_dsi_map_pll(struct intel_encoder *encoder,
 		else
 			val &= ~ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
 	}
-	I915_WRITE(ICL_DPCLKA_CFGCR0, val);
+	intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, val);
 
-	POSTING_READ(ICL_DPCLKA_CFGCR0);
+	intel_de_posting_read(dev_priv, ICL_DPCLKA_CFGCR0);
 
 	mutex_unlock(&dev_priv->dpll_lock);
 }
@@ -654,7 +669,7 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
 
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
-		tmp = I915_READ(DSI_TRANS_FUNC_CONF(dsi_trans));
+		tmp = intel_de_read(dev_priv, DSI_TRANS_FUNC_CONF(dsi_trans));
 
 		if (intel_dsi->eotp_pkt)
 			tmp &= ~EOTP_DISABLED;
@@ -731,16 +746,18 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
 			}
 		}
 
-		I915_WRITE(DSI_TRANS_FUNC_CONF(dsi_trans), tmp);
+		intel_de_write(dev_priv, DSI_TRANS_FUNC_CONF(dsi_trans), tmp);
 	}
 
 	/* enable port sync mode if dual link */
 	if (intel_dsi->dual_link) {
 		for_each_dsi_port(port, intel_dsi->ports) {
 			dsi_trans = dsi_port_to_transcoder(port);
-			tmp = I915_READ(TRANS_DDI_FUNC_CTL2(dsi_trans));
+			tmp = intel_de_read(dev_priv,
+					    TRANS_DDI_FUNC_CTL2(dsi_trans));
 			tmp |= PORT_SYNC_MODE_ENABLE;
-			I915_WRITE(TRANS_DDI_FUNC_CTL2(dsi_trans), tmp);
+			intel_de_write(dev_priv,
+				       TRANS_DDI_FUNC_CTL2(dsi_trans), tmp);
 		}
 
 		/* configure stream splitting */
@@ -751,7 +768,7 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
 		dsi_trans = dsi_port_to_transcoder(port);
 
 		/* select data lane width */
-		tmp = I915_READ(TRANS_DDI_FUNC_CTL(dsi_trans));
+		tmp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(dsi_trans));
 		tmp &= ~DDI_PORT_WIDTH_MASK;
 		tmp |= DDI_PORT_WIDTH(intel_dsi->lane_count);
 
@@ -777,14 +794,14 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
 
 		/* enable DDI buffer */
 		tmp |= TRANS_DDI_FUNC_ENABLE;
-		I915_WRITE(TRANS_DDI_FUNC_CTL(dsi_trans), tmp);
+		intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(dsi_trans), tmp);
 	}
 
 	/* wait for link ready */
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
-		if (wait_for_us((I915_READ(DSI_TRANS_FUNC_CONF(dsi_trans)) &
-				LINK_READY), 2500))
+		if (wait_for_us((intel_de_read(dev_priv, DSI_TRANS_FUNC_CONF(dsi_trans)) &
+				 LINK_READY), 2500))
 			drm_err(&dev_priv->drm, "DSI link not ready\n");
 	}
 }
@@ -851,8 +868,8 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 	/* program TRANS_HTOTAL register */
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
-		I915_WRITE(HTOTAL(dsi_trans),
-			   (hactive - 1) | ((htotal - 1) << 16));
+		intel_de_write(dev_priv, HTOTAL(dsi_trans),
+			       (hactive - 1) | ((htotal - 1) << 16));
 	}
 
 	/* TRANS_HSYNC register to be programmed only for video mode */
@@ -875,8 +892,8 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 
 		for_each_dsi_port(port, intel_dsi->ports) {
 			dsi_trans = dsi_port_to_transcoder(port);
-			I915_WRITE(HSYNC(dsi_trans),
-				   (hsync_start - 1) | ((hsync_end - 1) << 16));
+			intel_de_write(dev_priv, HSYNC(dsi_trans),
+				       (hsync_start - 1) | ((hsync_end - 1) << 16));
 		}
 	}
 
@@ -889,8 +906,8 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 		 * struct drm_display_mode.
 		 * For interlace mode: program required pixel minus 2
 		 */
-		I915_WRITE(VTOTAL(dsi_trans),
-			   (vactive - 1) | ((vtotal - 1) << 16));
+		intel_de_write(dev_priv, VTOTAL(dsi_trans),
+			       (vactive - 1) | ((vtotal - 1) << 16));
 	}
 
 	if (vsync_end < vsync_start || vsync_end > vtotal)
@@ -902,8 +919,8 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 	/* program TRANS_VSYNC register */
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
-		I915_WRITE(VSYNC(dsi_trans),
-			   (vsync_start - 1) | ((vsync_end - 1) << 16));
+		intel_de_write(dev_priv, VSYNC(dsi_trans),
+			       (vsync_start - 1) | ((vsync_end - 1) << 16));
 	}
 
 	/*
@@ -914,15 +931,15 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 	 */
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
-		I915_WRITE(VSYNCSHIFT(dsi_trans), vsync_shift);
+		intel_de_write(dev_priv, VSYNCSHIFT(dsi_trans), vsync_shift);
 	}
 
 	/* program TRANS_VBLANK register, should be same as vtotal programmed */
 	if (INTEL_GEN(dev_priv) >= 12) {
 		for_each_dsi_port(port, intel_dsi->ports) {
 			dsi_trans = dsi_port_to_transcoder(port);
-			I915_WRITE(VBLANK(dsi_trans),
-				   (vactive - 1) | ((vtotal - 1) << 16));
+			intel_de_write(dev_priv, VBLANK(dsi_trans),
+				       (vactive - 1) | ((vtotal - 1) << 16));
 		}
 	}
 }
@@ -937,9 +954,9 @@ static void gen11_dsi_enable_transcoder(struct intel_encoder *encoder)
 
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
-		tmp = I915_READ(PIPECONF(dsi_trans));
+		tmp = intel_de_read(dev_priv, PIPECONF(dsi_trans));
 		tmp |= PIPECONF_ENABLE;
-		I915_WRITE(PIPECONF(dsi_trans), tmp);
+		intel_de_write(dev_priv, PIPECONF(dsi_trans), tmp);
 
 		/* wait for transcoder to be enabled */
 		if (intel_de_wait_for_set(dev_priv, PIPECONF(dsi_trans),
@@ -976,26 +993,26 @@ static void gen11_dsi_setup_timeouts(struct intel_encoder *encoder,
 		dsi_trans = dsi_port_to_transcoder(port);
 
 		/* program hst_tx_timeout */
-		tmp = I915_READ(DSI_HSTX_TO(dsi_trans));
+		tmp = intel_de_read(dev_priv, DSI_HSTX_TO(dsi_trans));
 		tmp &= ~HSTX_TIMEOUT_VALUE_MASK;
 		tmp |= HSTX_TIMEOUT_VALUE(hs_tx_timeout);
-		I915_WRITE(DSI_HSTX_TO(dsi_trans), tmp);
+		intel_de_write(dev_priv, DSI_HSTX_TO(dsi_trans), tmp);
 
 		/* FIXME: DSI_CALIB_TO */
 
 		/* program lp_rx_host timeout */
-		tmp = I915_READ(DSI_LPRX_HOST_TO(dsi_trans));
+		tmp = intel_de_read(dev_priv, DSI_LPRX_HOST_TO(dsi_trans));
 		tmp &= ~LPRX_TIMEOUT_VALUE_MASK;
 		tmp |= LPRX_TIMEOUT_VALUE(lp_rx_timeout);
-		I915_WRITE(DSI_LPRX_HOST_TO(dsi_trans), tmp);
+		intel_de_write(dev_priv, DSI_LPRX_HOST_TO(dsi_trans), tmp);
 
 		/* FIXME: DSI_PWAIT_TO */
 
 		/* program turn around timeout */
-		tmp = I915_READ(DSI_TA_TO(dsi_trans));
+		tmp = intel_de_read(dev_priv, DSI_TA_TO(dsi_trans));
 		tmp &= ~TA_TIMEOUT_VALUE_MASK;
 		tmp |= TA_TIMEOUT_VALUE(ta_timeout);
-		I915_WRITE(DSI_TA_TO(dsi_trans), tmp);
+		intel_de_write(dev_priv, DSI_TA_TO(dsi_trans), tmp);
 	}
 }
 
@@ -1049,7 +1066,7 @@ static void gen11_dsi_powerup_panel(struct intel_encoder *encoder)
 		 * FIXME: This uses the number of DW's currently in the payload
 		 * receive queue. This is probably not what we want here.
 		 */
-		tmp = I915_READ(DSI_CMD_RXCTL(dsi_trans));
+		tmp = intel_de_read(dev_priv, DSI_CMD_RXCTL(dsi_trans));
 		tmp &= NUMBER_RX_PLOAD_DW_MASK;
 		/* multiply "Number Rx Payload DW" by 4 to get max value */
 		tmp = tmp * 4;
@@ -1122,9 +1139,9 @@ static void gen11_dsi_disable_transcoder(struct intel_encoder *encoder)
 		dsi_trans = dsi_port_to_transcoder(port);
 
 		/* disable transcoder */
-		tmp = I915_READ(PIPECONF(dsi_trans));
+		tmp = intel_de_read(dev_priv, PIPECONF(dsi_trans));
 		tmp &= ~PIPECONF_ENABLE;
-		I915_WRITE(PIPECONF(dsi_trans), tmp);
+		intel_de_write(dev_priv, PIPECONF(dsi_trans), tmp);
 
 		/* wait for transcoder to be disabled */
 		if (intel_de_wait_for_clear(dev_priv, PIPECONF(dsi_trans),
@@ -1157,13 +1174,13 @@ static void gen11_dsi_deconfigure_trancoder(struct intel_encoder *encoder)
 	/* put dsi link in ULPS */
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
-		tmp = I915_READ(DSI_LP_MSG(dsi_trans));
+		tmp = intel_de_read(dev_priv, DSI_LP_MSG(dsi_trans));
 		tmp |= LINK_ENTER_ULPS;
 		tmp &= ~LINK_ULPS_TYPE_LP11;
-		I915_WRITE(DSI_LP_MSG(dsi_trans), tmp);
+		intel_de_write(dev_priv, DSI_LP_MSG(dsi_trans), tmp);
 
-		if (wait_for_us((I915_READ(DSI_LP_MSG(dsi_trans)) &
-				LINK_IN_ULPS),
+		if (wait_for_us((intel_de_read(dev_priv, DSI_LP_MSG(dsi_trans)) &
+				 LINK_IN_ULPS),
 				10))
 			drm_err(&dev_priv->drm, "DSI link not in ULPS\n");
 	}
@@ -1171,18 +1188,20 @@ static void gen11_dsi_deconfigure_trancoder(struct intel_encoder *encoder)
 	/* disable ddi function */
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
-		tmp = I915_READ(TRANS_DDI_FUNC_CTL(dsi_trans));
+		tmp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(dsi_trans));
 		tmp &= ~TRANS_DDI_FUNC_ENABLE;
-		I915_WRITE(TRANS_DDI_FUNC_CTL(dsi_trans), tmp);
+		intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(dsi_trans), tmp);
 	}
 
 	/* disable port sync mode if dual link */
 	if (intel_dsi->dual_link) {
 		for_each_dsi_port(port, intel_dsi->ports) {
 			dsi_trans = dsi_port_to_transcoder(port);
-			tmp = I915_READ(TRANS_DDI_FUNC_CTL2(dsi_trans));
+			tmp = intel_de_read(dev_priv,
+					    TRANS_DDI_FUNC_CTL2(dsi_trans));
 			tmp &= ~PORT_SYNC_MODE_ENABLE;
-			I915_WRITE(TRANS_DDI_FUNC_CTL2(dsi_trans), tmp);
+			intel_de_write(dev_priv,
+				       TRANS_DDI_FUNC_CTL2(dsi_trans), tmp);
 		}
 	}
 }
@@ -1196,11 +1215,11 @@ static void gen11_dsi_disable_port(struct intel_encoder *encoder)
 
 	gen11_dsi_ungate_clocks(encoder);
 	for_each_dsi_port(port, intel_dsi->ports) {
-		tmp = I915_READ(DDI_BUF_CTL(port));
+		tmp = intel_de_read(dev_priv, DDI_BUF_CTL(port));
 		tmp &= ~DDI_BUF_CTL_ENABLE;
-		I915_WRITE(DDI_BUF_CTL(port), tmp);
+		intel_de_write(dev_priv, DDI_BUF_CTL(port), tmp);
 
-		if (wait_for_us((I915_READ(DDI_BUF_CTL(port)) &
+		if (wait_for_us((intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
 				 DDI_BUF_IS_IDLE),
 				 8))
 			drm_err(&dev_priv->drm,
@@ -1230,9 +1249,9 @@ static void gen11_dsi_disable_io_power(struct intel_encoder *encoder)
 
 	/* set mode to DDI */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		tmp = I915_READ(ICL_DSI_IO_MODECTL(port));
+		tmp = intel_de_read(dev_priv, ICL_DSI_IO_MODECTL(port));
 		tmp &= ~COMBO_PHY_MODE_DSI;
-		I915_WRITE(ICL_DSI_IO_MODECTL(port), tmp);
+		intel_de_write(dev_priv, ICL_DSI_IO_MODECTL(port), tmp);
 	}
 }
 
@@ -1454,7 +1473,7 @@ static bool gen11_dsi_get_hw_state(struct intel_encoder *encoder,
 
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
-		tmp = I915_READ(TRANS_DDI_FUNC_CTL(dsi_trans));
+		tmp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(dsi_trans));
 		switch (tmp & TRANS_DDI_EDP_INPUT_MASK) {
 		case TRANS_DDI_EDP_INPUT_A_ON:
 			*pipe = PIPE_A;
@@ -1473,7 +1492,7 @@ static bool gen11_dsi_get_hw_state(struct intel_encoder *encoder,
 			goto out;
 		}
 
-		tmp = I915_READ(PIPECONF(dsi_trans));
+		tmp = intel_de_read(dev_priv, PIPECONF(dsi_trans));
 		ret = tmp & PIPECONF_ENABLE;
 	}
 out:
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
