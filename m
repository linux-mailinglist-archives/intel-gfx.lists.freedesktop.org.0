Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6076B148619
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 14:27:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9A4A72A96;
	Fri, 24 Jan 2020 13:27:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8151472A96
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 13:27:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:27:15 -0800
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="216593197"
Received: from omarkovx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.60])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:27:14 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 15:25:53 +0200
Message-Id: <436e4267529dc11cc7850d0a4f0703caa81b8c80.1579871655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579871655.git.jani.nikula@intel.com>
References: <cover.1579871655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [RFC 32/33] drm/i915/vlv_dsi: use intel_de_*()
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
 drivers/gpu/drm/i915/display/vlv_dsi.c | 345 +++++++++++++------------
 1 file changed, 180 insertions(+), 165 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 1c70144a097c..a101a4513c65 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -100,7 +100,7 @@ static void write_data(struct drm_i915_private *dev_priv,
 		for (j = 0; j < min_t(u32, len - i, 4); j++)
 			val |= *data++ << 8 * j;
 
-		I915_WRITE(reg, val);
+		intel_de_write(dev_priv, reg, val);
 	}
 }
 
@@ -111,7 +111,7 @@ static void read_data(struct drm_i915_private *dev_priv,
 	u32 i, j;
 
 	for (i = 0; i < len; i += 4) {
-		u32 val = I915_READ(reg);
+		u32 val = intel_de_read(dev_priv, reg);
 
 		for (j = 0; j < min_t(u32, len - i, 4); j++)
 			*data++ = val >> 8 * j;
@@ -161,7 +161,8 @@ static ssize_t intel_dsi_host_transfer(struct mipi_dsi_host *host,
 	}
 
 	if (msg->rx_len) {
-		I915_WRITE(MIPI_INTR_STAT(port), GEN_READ_DATA_AVAIL);
+		intel_de_write(dev_priv, MIPI_INTR_STAT(port),
+			       GEN_READ_DATA_AVAIL);
 	}
 
 	if (intel_de_wait_for_clear(dev_priv, MIPI_GEN_FIFO_STAT(port),
@@ -169,7 +170,8 @@ static ssize_t intel_dsi_host_transfer(struct mipi_dsi_host *host,
 		DRM_ERROR("Timeout waiting for HS/LP CTRL FIFO !full\n");
 	}
 
-	I915_WRITE(ctrl_reg, header[2] << 16 | header[1] << 8 | header[0]);
+	intel_de_write(dev_priv, ctrl_reg,
+		       header[2] << 16 | header[1] << 8 | header[0]);
 
 	/* ->rx_len is set only for reads */
 	if (msg->rx_len) {
@@ -223,13 +225,13 @@ static int dpi_send_cmd(struct intel_dsi *intel_dsi, u32 cmd, bool hs,
 		cmd |= DPI_LP_MODE;
 
 	/* clear bit */
-	I915_WRITE(MIPI_INTR_STAT(port), SPL_PKT_SENT_INTERRUPT);
+	intel_de_write(dev_priv, MIPI_INTR_STAT(port), SPL_PKT_SENT_INTERRUPT);
 
 	/* XXX: old code skips write if control unchanged */
-	if (cmd == I915_READ(MIPI_DPI_CONTROL(port)))
+	if (cmd == intel_de_read(dev_priv, MIPI_DPI_CONTROL(port)))
 		DRM_DEBUG_KMS("Same special packet %02x twice in a row.\n", cmd);
 
-	I915_WRITE(MIPI_DPI_CONTROL(port), cmd);
+	intel_de_write(dev_priv, MIPI_DPI_CONTROL(port), cmd);
 
 	mask = SPL_PKT_SENT_INTERRUPT;
 	if (intel_de_wait_for_set(dev_priv, MIPI_INTR_STAT(port), mask, 100))
@@ -328,23 +330,24 @@ static bool glk_dsi_enable_io(struct intel_encoder *encoder)
 	 * Power ON MIPI IO first and then write into IO reset and LP wake bits
 	 */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		tmp = I915_READ(MIPI_CTRL(port));
-		I915_WRITE(MIPI_CTRL(port), tmp | GLK_MIPIIO_ENABLE);
+		tmp = intel_de_read(dev_priv, MIPI_CTRL(port));
+		intel_de_write(dev_priv, MIPI_CTRL(port),
+			       tmp | GLK_MIPIIO_ENABLE);
 	}
 
 	/* Put the IO into reset */
-	tmp = I915_READ(MIPI_CTRL(PORT_A));
+	tmp = intel_de_read(dev_priv, MIPI_CTRL(PORT_A));
 	tmp &= ~GLK_MIPIIO_RESET_RELEASED;
-	I915_WRITE(MIPI_CTRL(PORT_A), tmp);
+	intel_de_write(dev_priv, MIPI_CTRL(PORT_A), tmp);
 
 	/* Program LP Wake */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		tmp = I915_READ(MIPI_CTRL(port));
-		if (!(I915_READ(MIPI_DEVICE_READY(port)) & DEVICE_READY))
+		tmp = intel_de_read(dev_priv, MIPI_CTRL(port));
+		if (!(intel_de_read(dev_priv, MIPI_DEVICE_READY(port)) & DEVICE_READY))
 			tmp &= ~GLK_LP_WAKE;
 		else
 			tmp |= GLK_LP_WAKE;
-		I915_WRITE(MIPI_CTRL(port), tmp);
+		intel_de_write(dev_priv, MIPI_CTRL(port), tmp);
 	}
 
 	/* Wait for Pwr ACK */
@@ -357,7 +360,7 @@ static bool glk_dsi_enable_io(struct intel_encoder *encoder)
 	/* Check for cold boot scenario */
 	for_each_dsi_port(port, intel_dsi->ports) {
 		cold_boot |=
-			!(I915_READ(MIPI_DEVICE_READY(port)) & DEVICE_READY);
+			!(intel_de_read(dev_priv, MIPI_DEVICE_READY(port)) & DEVICE_READY);
 	}
 
 	return cold_boot;
@@ -378,23 +381,24 @@ static void glk_dsi_device_ready(struct intel_encoder *encoder)
 	}
 
 	/* Get IO out of reset */
-	val = I915_READ(MIPI_CTRL(PORT_A));
-	I915_WRITE(MIPI_CTRL(PORT_A), val | GLK_MIPIIO_RESET_RELEASED);
+	val = intel_de_read(dev_priv, MIPI_CTRL(PORT_A));
+	intel_de_write(dev_priv, MIPI_CTRL(PORT_A),
+		       val | GLK_MIPIIO_RESET_RELEASED);
 
 	/* Get IO out of Low power state*/
 	for_each_dsi_port(port, intel_dsi->ports) {
-		if (!(I915_READ(MIPI_DEVICE_READY(port)) & DEVICE_READY)) {
-			val = I915_READ(MIPI_DEVICE_READY(port));
+		if (!(intel_de_read(dev_priv, MIPI_DEVICE_READY(port)) & DEVICE_READY)) {
+			val = intel_de_read(dev_priv, MIPI_DEVICE_READY(port));
 			val &= ~ULPS_STATE_MASK;
 			val |= DEVICE_READY;
-			I915_WRITE(MIPI_DEVICE_READY(port), val);
+			intel_de_write(dev_priv, MIPI_DEVICE_READY(port), val);
 			usleep_range(10, 15);
 		} else {
 			/* Enter ULPS */
-			val = I915_READ(MIPI_DEVICE_READY(port));
+			val = intel_de_read(dev_priv, MIPI_DEVICE_READY(port));
 			val &= ~ULPS_STATE_MASK;
 			val |= (ULPS_STATE_ENTER | DEVICE_READY);
-			I915_WRITE(MIPI_DEVICE_READY(port), val);
+			intel_de_write(dev_priv, MIPI_DEVICE_READY(port), val);
 
 			/* Wait for ULPS active */
 			if (intel_de_wait_for_clear(dev_priv, MIPI_CTRL(port),
@@ -402,20 +406,20 @@ static void glk_dsi_device_ready(struct intel_encoder *encoder)
 				DRM_ERROR("ULPS not active\n");
 
 			/* Exit ULPS */
-			val = I915_READ(MIPI_DEVICE_READY(port));
+			val = intel_de_read(dev_priv, MIPI_DEVICE_READY(port));
 			val &= ~ULPS_STATE_MASK;
 			val |= (ULPS_STATE_EXIT | DEVICE_READY);
-			I915_WRITE(MIPI_DEVICE_READY(port), val);
+			intel_de_write(dev_priv, MIPI_DEVICE_READY(port), val);
 
 			/* Enter Normal Mode */
-			val = I915_READ(MIPI_DEVICE_READY(port));
+			val = intel_de_read(dev_priv, MIPI_DEVICE_READY(port));
 			val &= ~ULPS_STATE_MASK;
 			val |= (ULPS_STATE_NORMAL_OPERATION | DEVICE_READY);
-			I915_WRITE(MIPI_DEVICE_READY(port), val);
+			intel_de_write(dev_priv, MIPI_DEVICE_READY(port), val);
 
-			val = I915_READ(MIPI_CTRL(port));
+			val = intel_de_read(dev_priv, MIPI_CTRL(port));
 			val &= ~GLK_LP_WAKE;
-			I915_WRITE(MIPI_CTRL(port), val);
+			intel_de_write(dev_priv, MIPI_CTRL(port), val);
 		}
 	}
 
@@ -445,19 +449,20 @@ static void bxt_dsi_device_ready(struct intel_encoder *encoder)
 
 	/* Enable MIPI PHY transparent latch */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		val = I915_READ(BXT_MIPI_PORT_CTRL(port));
-		I915_WRITE(BXT_MIPI_PORT_CTRL(port), val | LP_OUTPUT_HOLD);
+		val = intel_de_read(dev_priv, BXT_MIPI_PORT_CTRL(port));
+		intel_de_write(dev_priv, BXT_MIPI_PORT_CTRL(port),
+			       val | LP_OUTPUT_HOLD);
 		usleep_range(2000, 2500);
 	}
 
 	/* Clear ULPS and set device ready */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		val = I915_READ(MIPI_DEVICE_READY(port));
+		val = intel_de_read(dev_priv, MIPI_DEVICE_READY(port));
 		val &= ~ULPS_STATE_MASK;
-		I915_WRITE(MIPI_DEVICE_READY(port), val);
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(port), val);
 		usleep_range(2000, 2500);
 		val |= DEVICE_READY;
-		I915_WRITE(MIPI_DEVICE_READY(port), val);
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(port), val);
 	}
 }
 
@@ -481,21 +486,25 @@ static void vlv_dsi_device_ready(struct intel_encoder *encoder)
 
 	for_each_dsi_port(port, intel_dsi->ports) {
 
-		I915_WRITE(MIPI_DEVICE_READY(port), ULPS_STATE_ENTER);
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
+			       ULPS_STATE_ENTER);
 		usleep_range(2500, 3000);
 
 		/* Enable MIPI PHY transparent latch
 		 * Common bit for both MIPI Port A & MIPI Port C
 		 * No similar bit in MIPI Port C reg
 		 */
-		val = I915_READ(MIPI_PORT_CTRL(PORT_A));
-		I915_WRITE(MIPI_PORT_CTRL(PORT_A), val | LP_OUTPUT_HOLD);
+		val = intel_de_read(dev_priv, MIPI_PORT_CTRL(PORT_A));
+		intel_de_write(dev_priv, MIPI_PORT_CTRL(PORT_A),
+			       val | LP_OUTPUT_HOLD);
 		usleep_range(1000, 1500);
 
-		I915_WRITE(MIPI_DEVICE_READY(port), ULPS_STATE_EXIT);
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
+			       ULPS_STATE_EXIT);
 		usleep_range(2500, 3000);
 
-		I915_WRITE(MIPI_DEVICE_READY(port), DEVICE_READY);
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
+			       DEVICE_READY);
 		usleep_range(2500, 3000);
 	}
 }
@@ -521,10 +530,10 @@ static void glk_dsi_enter_low_power_mode(struct intel_encoder *encoder)
 
 	/* Enter ULPS */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		val = I915_READ(MIPI_DEVICE_READY(port));
+		val = intel_de_read(dev_priv, MIPI_DEVICE_READY(port));
 		val &= ~ULPS_STATE_MASK;
 		val |= (ULPS_STATE_ENTER | DEVICE_READY);
-		I915_WRITE(MIPI_DEVICE_READY(port), val);
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(port), val);
 	}
 
 	/* Wait for MIPI PHY status bit to unset */
@@ -550,9 +559,9 @@ static void glk_dsi_disable_mipi_io(struct intel_encoder *encoder)
 	u32 tmp;
 
 	/* Put the IO into reset */
-	tmp = I915_READ(MIPI_CTRL(PORT_A));
+	tmp = intel_de_read(dev_priv, MIPI_CTRL(PORT_A));
 	tmp &= ~GLK_MIPIIO_RESET_RELEASED;
-	I915_WRITE(MIPI_CTRL(PORT_A), tmp);
+	intel_de_write(dev_priv, MIPI_CTRL(PORT_A), tmp);
 
 	/* Wait for MIPI PHY status bit to unset */
 	for_each_dsi_port(port, intel_dsi->ports) {
@@ -563,9 +572,9 @@ static void glk_dsi_disable_mipi_io(struct intel_encoder *encoder)
 
 	/* Clear MIPI mode */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		tmp = I915_READ(MIPI_CTRL(port));
+		tmp = intel_de_read(dev_priv, MIPI_CTRL(port));
 		tmp &= ~GLK_MIPIIO_ENABLE;
-		I915_WRITE(MIPI_CTRL(port), tmp);
+		intel_de_write(dev_priv, MIPI_CTRL(port), tmp);
 	}
 }
 
@@ -588,16 +597,16 @@ static void vlv_dsi_clear_device_ready(struct intel_encoder *encoder)
 			BXT_MIPI_PORT_CTRL(port) : MIPI_PORT_CTRL(PORT_A);
 		u32 val;
 
-		I915_WRITE(MIPI_DEVICE_READY(port), DEVICE_READY |
-							ULPS_STATE_ENTER);
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
+			       DEVICE_READY | ULPS_STATE_ENTER);
 		usleep_range(2000, 2500);
 
-		I915_WRITE(MIPI_DEVICE_READY(port), DEVICE_READY |
-							ULPS_STATE_EXIT);
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
+			       DEVICE_READY | ULPS_STATE_EXIT);
 		usleep_range(2000, 2500);
 
-		I915_WRITE(MIPI_DEVICE_READY(port), DEVICE_READY |
-							ULPS_STATE_ENTER);
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
+			       DEVICE_READY | ULPS_STATE_ENTER);
 		usleep_range(2000, 2500);
 
 		/*
@@ -610,11 +619,11 @@ static void vlv_dsi_clear_device_ready(struct intel_encoder *encoder)
 			DRM_ERROR("DSI LP not going Low\n");
 
 		/* Disable MIPI PHY transparent latch */
-		val = I915_READ(port_ctrl);
-		I915_WRITE(port_ctrl, val & ~LP_OUTPUT_HOLD);
+		val = intel_de_read(dev_priv, port_ctrl);
+		intel_de_write(dev_priv, port_ctrl, val & ~LP_OUTPUT_HOLD);
 		usleep_range(1000, 1500);
 
-		I915_WRITE(MIPI_DEVICE_READY(port), 0x00);
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(port), 0x00);
 		usleep_range(2000, 2500);
 	}
 }
@@ -631,18 +640,20 @@ static void intel_dsi_port_enable(struct intel_encoder *encoder,
 		u32 temp;
 		if (IS_GEN9_LP(dev_priv)) {
 			for_each_dsi_port(port, intel_dsi->ports) {
-				temp = I915_READ(MIPI_CTRL(port));
+				temp = intel_de_read(dev_priv,
+						     MIPI_CTRL(port));
 				temp &= ~BXT_PIXEL_OVERLAP_CNT_MASK |
 					intel_dsi->pixel_overlap <<
 					BXT_PIXEL_OVERLAP_CNT_SHIFT;
-				I915_WRITE(MIPI_CTRL(port), temp);
+				intel_de_write(dev_priv, MIPI_CTRL(port),
+					       temp);
 			}
 		} else {
-			temp = I915_READ(VLV_CHICKEN_3);
+			temp = intel_de_read(dev_priv, VLV_CHICKEN_3);
 			temp &= ~PIXEL_OVERLAP_CNT_MASK |
 					intel_dsi->pixel_overlap <<
 					PIXEL_OVERLAP_CNT_SHIFT;
-			I915_WRITE(VLV_CHICKEN_3, temp);
+			intel_de_write(dev_priv, VLV_CHICKEN_3, temp);
 		}
 	}
 
@@ -651,7 +662,7 @@ static void intel_dsi_port_enable(struct intel_encoder *encoder,
 			BXT_MIPI_PORT_CTRL(port) : MIPI_PORT_CTRL(port);
 		u32 temp;
 
-		temp = I915_READ(port_ctrl);
+		temp = intel_de_read(dev_priv, port_ctrl);
 
 		temp &= ~LANE_CONFIGURATION_MASK;
 		temp &= ~DUAL_LINK_MODE_MASK;
@@ -671,8 +682,8 @@ static void intel_dsi_port_enable(struct intel_encoder *encoder,
 			temp |= DITHERING_ENABLE;
 
 		/* assert ip_tg_enable signal */
-		I915_WRITE(port_ctrl, temp | DPI_ENABLE);
-		POSTING_READ(port_ctrl);
+		intel_de_write(dev_priv, port_ctrl, temp | DPI_ENABLE);
+		intel_de_posting_read(dev_priv, port_ctrl);
 	}
 }
 
@@ -689,9 +700,9 @@ static void intel_dsi_port_disable(struct intel_encoder *encoder)
 		u32 temp;
 
 		/* de-assert ip_tg_enable signal */
-		temp = I915_READ(port_ctrl);
-		I915_WRITE(port_ctrl, temp & ~DPI_ENABLE);
-		POSTING_READ(port_ctrl);
+		temp = intel_de_read(dev_priv, port_ctrl);
+		intel_de_write(dev_priv, port_ctrl, temp & ~DPI_ENABLE);
+		intel_de_posting_read(dev_priv, port_ctrl);
 	}
 }
 
@@ -771,22 +782,22 @@ static void intel_dsi_pre_enable(struct intel_encoder *encoder,
 
 	if (IS_BROXTON(dev_priv)) {
 		/* Add MIPI IO reset programming for modeset */
-		val = I915_READ(BXT_P_CR_GT_DISP_PWRON);
-		I915_WRITE(BXT_P_CR_GT_DISP_PWRON,
-					val | MIPIO_RST_CTRL);
+		val = intel_de_read(dev_priv, BXT_P_CR_GT_DISP_PWRON);
+		intel_de_write(dev_priv, BXT_P_CR_GT_DISP_PWRON,
+			       val | MIPIO_RST_CTRL);
 
 		/* Power up DSI regulator */
-		I915_WRITE(BXT_P_DSI_REGULATOR_CFG, STAP_SELECT);
-		I915_WRITE(BXT_P_DSI_REGULATOR_TX_CTRL, 0);
+		intel_de_write(dev_priv, BXT_P_DSI_REGULATOR_CFG, STAP_SELECT);
+		intel_de_write(dev_priv, BXT_P_DSI_REGULATOR_TX_CTRL, 0);
 	}
 
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
 		u32 val;
 
 		/* Disable DPOunit clock gating, can stall pipe */
-		val = I915_READ(DSPCLK_GATE_D);
+		val = intel_de_read(dev_priv, DSPCLK_GATE_D);
 		val |= DPOUNIT_CLOCK_GATE_DISABLE;
-		I915_WRITE(DSPCLK_GATE_D, val);
+		intel_de_write(dev_priv, DSPCLK_GATE_D, val);
 	}
 
 	if (!IS_GEMINILAKE(dev_priv))
@@ -820,7 +831,8 @@ static void intel_dsi_pre_enable(struct intel_encoder *encoder,
 	 * recommendation, port should be enabled befor plane & pipe */
 	if (is_cmd_mode(intel_dsi)) {
 		for_each_dsi_port(port, intel_dsi->ports)
-			I915_WRITE(MIPI_MAX_RETURN_PKT_SIZE(port), 8 * 4);
+			intel_de_write(dev_priv,
+				       MIPI_MAX_RETURN_PKT_SIZE(port), 8 * 4);
 		intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_TEAR_ON);
 		intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DISPLAY_ON);
 	} else {
@@ -917,13 +929,14 @@ static void intel_dsi_post_disable(struct intel_encoder *encoder,
 
 	if (IS_BROXTON(dev_priv)) {
 		/* Power down DSI regulator to save power */
-		I915_WRITE(BXT_P_DSI_REGULATOR_CFG, STAP_SELECT);
-		I915_WRITE(BXT_P_DSI_REGULATOR_TX_CTRL, HS_IO_CTRL_SELECT);
+		intel_de_write(dev_priv, BXT_P_DSI_REGULATOR_CFG, STAP_SELECT);
+		intel_de_write(dev_priv, BXT_P_DSI_REGULATOR_TX_CTRL,
+			       HS_IO_CTRL_SELECT);
 
 		/* Add MIPI IO reset programming for modeset */
-		val = I915_READ(BXT_P_CR_GT_DISP_PWRON);
-		I915_WRITE(BXT_P_CR_GT_DISP_PWRON,
-				val & ~MIPIO_RST_CTRL);
+		val = intel_de_read(dev_priv, BXT_P_CR_GT_DISP_PWRON);
+		intel_de_write(dev_priv, BXT_P_CR_GT_DISP_PWRON,
+			       val & ~MIPIO_RST_CTRL);
 	}
 
 	if (IS_GEN9_LP(dev_priv)) {
@@ -933,9 +946,9 @@ static void intel_dsi_post_disable(struct intel_encoder *encoder,
 
 		vlv_dsi_pll_disable(encoder);
 
-		val = I915_READ(DSPCLK_GATE_D);
+		val = intel_de_read(dev_priv, DSPCLK_GATE_D);
 		val &= ~DPOUNIT_CLOCK_GATE_DISABLE;
-		I915_WRITE(DSPCLK_GATE_D, val);
+		intel_de_write(dev_priv, DSPCLK_GATE_D, val);
 	}
 
 	/* Assert reset */
@@ -979,7 +992,7 @@ static bool intel_dsi_get_hw_state(struct intel_encoder *encoder,
 	for_each_dsi_port(port, intel_dsi->ports) {
 		i915_reg_t ctrl_reg = IS_GEN9_LP(dev_priv) ?
 			BXT_MIPI_PORT_CTRL(port) : MIPI_PORT_CTRL(port);
-		bool enabled = I915_READ(ctrl_reg) & DPI_ENABLE;
+		bool enabled = intel_de_read(dev_priv, ctrl_reg) & DPI_ENABLE;
 
 		/*
 		 * Due to some hardware limitations on VLV/CHV, the DPI enable
@@ -988,22 +1001,23 @@ static bool intel_dsi_get_hw_state(struct intel_encoder *encoder,
 		 */
 		if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
 		    port == PORT_C)
-			enabled = I915_READ(PIPECONF(PIPE_B)) & PIPECONF_ENABLE;
+			enabled = intel_de_read(dev_priv, PIPECONF(PIPE_B)) & PIPECONF_ENABLE;
 
 		/* Try command mode if video mode not enabled */
 		if (!enabled) {
-			u32 tmp = I915_READ(MIPI_DSI_FUNC_PRG(port));
+			u32 tmp = intel_de_read(dev_priv,
+						MIPI_DSI_FUNC_PRG(port));
 			enabled = tmp & CMD_MODE_DATA_WIDTH_MASK;
 		}
 
 		if (!enabled)
 			continue;
 
-		if (!(I915_READ(MIPI_DEVICE_READY(port)) & DEVICE_READY))
+		if (!(intel_de_read(dev_priv, MIPI_DEVICE_READY(port)) & DEVICE_READY))
 			continue;
 
 		if (IS_GEN9_LP(dev_priv)) {
-			u32 tmp = I915_READ(MIPI_CTRL(port));
+			u32 tmp = intel_de_read(dev_priv, MIPI_CTRL(port));
 			tmp &= BXT_PIPE_SELECT_MASK;
 			tmp >>= BXT_PIPE_SELECT_SHIFT;
 
@@ -1051,11 +1065,11 @@ static void bxt_dsi_get_pipe_config(struct intel_encoder *encoder,
 	 * encoder->get_hw_state() returns true.
 	 */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		if (I915_READ(BXT_MIPI_PORT_CTRL(port)) & DPI_ENABLE)
+		if (intel_de_read(dev_priv, BXT_MIPI_PORT_CTRL(port)) & DPI_ENABLE)
 			break;
 	}
 
-	fmt = I915_READ(MIPI_DSI_FUNC_PRG(port)) & VID_MODE_FORMAT_MASK;
+	fmt = intel_de_read(dev_priv, MIPI_DSI_FUNC_PRG(port)) & VID_MODE_FORMAT_MASK;
 	bpp = mipi_dsi_pixel_format_to_bpp(
 			pixel_format_from_register_bits(fmt));
 
@@ -1067,21 +1081,24 @@ static void bxt_dsi_get_pipe_config(struct intel_encoder *encoder,
 
 	/* In terms of pixels */
 	adjusted_mode->crtc_hdisplay =
-				I915_READ(BXT_MIPI_TRANS_HACTIVE(port));
+				intel_de_read(dev_priv,
+				              BXT_MIPI_TRANS_HACTIVE(port));
 	adjusted_mode->crtc_vdisplay =
-				I915_READ(BXT_MIPI_TRANS_VACTIVE(port));
+				intel_de_read(dev_priv,
+				              BXT_MIPI_TRANS_VACTIVE(port));
 	adjusted_mode->crtc_vtotal =
-				I915_READ(BXT_MIPI_TRANS_VTOTAL(port));
+				intel_de_read(dev_priv,
+				              BXT_MIPI_TRANS_VTOTAL(port));
 
 	hactive = adjusted_mode->crtc_hdisplay;
-	hfp = I915_READ(MIPI_HFP_COUNT(port));
+	hfp = intel_de_read(dev_priv, MIPI_HFP_COUNT(port));
 
 	/*
 	 * Meaningful for video mode non-burst sync pulse mode only,
 	 * can be zero for non-burst sync events and burst modes
 	 */
-	hsync = I915_READ(MIPI_HSYNC_PADDING_COUNT(port));
-	hbp = I915_READ(MIPI_HBP_COUNT(port));
+	hsync = intel_de_read(dev_priv, MIPI_HSYNC_PADDING_COUNT(port));
+	hbp = intel_de_read(dev_priv, MIPI_HBP_COUNT(port));
 
 	/* harizontal values are in terms of high speed byte clock */
 	hfp = pixels_from_txbyteclkhs(hfp, bpp, lane_count,
@@ -1098,9 +1115,9 @@ static void bxt_dsi_get_pipe_config(struct intel_encoder *encoder,
 	}
 
 	/* vertical values are in terms of lines */
-	vfp = I915_READ(MIPI_VFP_COUNT(port));
-	vsync = I915_READ(MIPI_VSYNC_PADDING_COUNT(port));
-	vbp = I915_READ(MIPI_VBP_COUNT(port));
+	vfp = intel_de_read(dev_priv, MIPI_VFP_COUNT(port));
+	vsync = intel_de_read(dev_priv, MIPI_VSYNC_PADDING_COUNT(port));
+	vbp = intel_de_read(dev_priv, MIPI_VBP_COUNT(port));
 
 	adjusted_mode->crtc_htotal = hactive + hfp + hsync + hbp;
 	adjusted_mode->crtc_hsync_start = hfp + adjusted_mode->crtc_hdisplay;
@@ -1268,26 +1285,29 @@ static void set_dsi_timings(struct drm_encoder *encoder,
 			 * vactive, as they are calculated per channel basis,
 			 * whereas these values should be based on resolution.
 			 */
-			I915_WRITE(BXT_MIPI_TRANS_HACTIVE(port),
-				   adjusted_mode->crtc_hdisplay);
-			I915_WRITE(BXT_MIPI_TRANS_VACTIVE(port),
-				   adjusted_mode->crtc_vdisplay);
-			I915_WRITE(BXT_MIPI_TRANS_VTOTAL(port),
-				   adjusted_mode->crtc_vtotal);
+			intel_de_write(dev_priv, BXT_MIPI_TRANS_HACTIVE(port),
+				       adjusted_mode->crtc_hdisplay);
+			intel_de_write(dev_priv, BXT_MIPI_TRANS_VACTIVE(port),
+				       adjusted_mode->crtc_vdisplay);
+			intel_de_write(dev_priv, BXT_MIPI_TRANS_VTOTAL(port),
+				       adjusted_mode->crtc_vtotal);
 		}
 
-		I915_WRITE(MIPI_HACTIVE_AREA_COUNT(port), hactive);
-		I915_WRITE(MIPI_HFP_COUNT(port), hfp);
+		intel_de_write(dev_priv, MIPI_HACTIVE_AREA_COUNT(port),
+			       hactive);
+		intel_de_write(dev_priv, MIPI_HFP_COUNT(port), hfp);
 
 		/* meaningful for video mode non-burst sync pulse mode only,
 		 * can be zero for non-burst sync events and burst modes */
-		I915_WRITE(MIPI_HSYNC_PADDING_COUNT(port), hsync);
-		I915_WRITE(MIPI_HBP_COUNT(port), hbp);
+		intel_de_write(dev_priv, MIPI_HSYNC_PADDING_COUNT(port),
+			       hsync);
+		intel_de_write(dev_priv, MIPI_HBP_COUNT(port), hbp);
 
 		/* vertical values are in terms of lines */
-		I915_WRITE(MIPI_VFP_COUNT(port), vfp);
-		I915_WRITE(MIPI_VSYNC_PADDING_COUNT(port), vsync);
-		I915_WRITE(MIPI_VBP_COUNT(port), vbp);
+		intel_de_write(dev_priv, MIPI_VFP_COUNT(port), vfp);
+		intel_de_write(dev_priv, MIPI_VSYNC_PADDING_COUNT(port),
+			       vsync);
+		intel_de_write(dev_priv, MIPI_VBP_COUNT(port), vbp);
 	}
 }
 
@@ -1338,35 +1358,35 @@ static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
 			 * escape clock divider, 20MHz, shared for A and C.
 			 * device ready must be off when doing this! txclkesc?
 			 */
-			tmp = I915_READ(MIPI_CTRL(PORT_A));
+			tmp = intel_de_read(dev_priv, MIPI_CTRL(PORT_A));
 			tmp &= ~ESCAPE_CLOCK_DIVIDER_MASK;
-			I915_WRITE(MIPI_CTRL(PORT_A), tmp |
-					ESCAPE_CLOCK_DIVIDER_1);
+			intel_de_write(dev_priv, MIPI_CTRL(PORT_A),
+				       tmp | ESCAPE_CLOCK_DIVIDER_1);
 
 			/* read request priority is per pipe */
-			tmp = I915_READ(MIPI_CTRL(port));
+			tmp = intel_de_read(dev_priv, MIPI_CTRL(port));
 			tmp &= ~READ_REQUEST_PRIORITY_MASK;
-			I915_WRITE(MIPI_CTRL(port), tmp |
-					READ_REQUEST_PRIORITY_HIGH);
+			intel_de_write(dev_priv, MIPI_CTRL(port),
+				       tmp | READ_REQUEST_PRIORITY_HIGH);
 		} else if (IS_GEN9_LP(dev_priv)) {
 			enum pipe pipe = intel_crtc->pipe;
 
-			tmp = I915_READ(MIPI_CTRL(port));
+			tmp = intel_de_read(dev_priv, MIPI_CTRL(port));
 			tmp &= ~BXT_PIPE_SELECT_MASK;
 
 			tmp |= BXT_PIPE_SELECT(pipe);
-			I915_WRITE(MIPI_CTRL(port), tmp);
+			intel_de_write(dev_priv, MIPI_CTRL(port), tmp);
 		}
 
 		/* XXX: why here, why like this? handling in irq handler?! */
-		I915_WRITE(MIPI_INTR_STAT(port), 0xffffffff);
-		I915_WRITE(MIPI_INTR_EN(port), 0xffffffff);
+		intel_de_write(dev_priv, MIPI_INTR_STAT(port), 0xffffffff);
+		intel_de_write(dev_priv, MIPI_INTR_EN(port), 0xffffffff);
 
-		I915_WRITE(MIPI_DPHY_PARAM(port), intel_dsi->dphy_reg);
+		intel_de_write(dev_priv, MIPI_DPHY_PARAM(port),
+			       intel_dsi->dphy_reg);
 
-		I915_WRITE(MIPI_DPI_RESOLUTION(port),
-			adjusted_mode->crtc_vdisplay << VERTICAL_ADDRESS_SHIFT |
-			mode_hdisplay << HORIZONTAL_ADDRESS_SHIFT);
+		intel_de_write(dev_priv, MIPI_DPI_RESOLUTION(port),
+			       adjusted_mode->crtc_vdisplay << VERTICAL_ADDRESS_SHIFT | mode_hdisplay << HORIZONTAL_ADDRESS_SHIFT);
 	}
 
 	set_dsi_timings(encoder, adjusted_mode);
@@ -1393,7 +1413,7 @@ static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
 	}
 
 	for_each_dsi_port(port, intel_dsi->ports) {
-		I915_WRITE(MIPI_DSI_FUNC_PRG(port), val);
+		intel_de_write(dev_priv, MIPI_DSI_FUNC_PRG(port), val);
 
 		/* timeouts for recovery. one frame IIUC. if counter expires,
 		 * EOT and stop state. */
@@ -1414,28 +1434,24 @@ static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
 
 		if (is_vid_mode(intel_dsi) &&
 			intel_dsi->video_mode_format == VIDEO_MODE_BURST) {
-			I915_WRITE(MIPI_HS_TX_TIMEOUT(port),
-				txbyteclkhs(adjusted_mode->crtc_htotal, bpp,
-					    intel_dsi->lane_count,
-					    intel_dsi->burst_mode_ratio) + 1);
+			intel_de_write(dev_priv, MIPI_HS_TX_TIMEOUT(port),
+				       txbyteclkhs(adjusted_mode->crtc_htotal, bpp, intel_dsi->lane_count, intel_dsi->burst_mode_ratio) + 1);
 		} else {
-			I915_WRITE(MIPI_HS_TX_TIMEOUT(port),
-				txbyteclkhs(adjusted_mode->crtc_vtotal *
-					    adjusted_mode->crtc_htotal,
-					    bpp, intel_dsi->lane_count,
-					    intel_dsi->burst_mode_ratio) + 1);
+			intel_de_write(dev_priv, MIPI_HS_TX_TIMEOUT(port),
+				       txbyteclkhs(adjusted_mode->crtc_vtotal * adjusted_mode->crtc_htotal, bpp, intel_dsi->lane_count, intel_dsi->burst_mode_ratio) + 1);
 		}
-		I915_WRITE(MIPI_LP_RX_TIMEOUT(port), intel_dsi->lp_rx_timeout);
-		I915_WRITE(MIPI_TURN_AROUND_TIMEOUT(port),
-						intel_dsi->turn_arnd_val);
-		I915_WRITE(MIPI_DEVICE_RESET_TIMER(port),
-						intel_dsi->rst_timer_val);
+		intel_de_write(dev_priv, MIPI_LP_RX_TIMEOUT(port),
+			       intel_dsi->lp_rx_timeout);
+		intel_de_write(dev_priv, MIPI_TURN_AROUND_TIMEOUT(port),
+			       intel_dsi->turn_arnd_val);
+		intel_de_write(dev_priv, MIPI_DEVICE_RESET_TIMER(port),
+			       intel_dsi->rst_timer_val);
 
 		/* dphy stuff */
 
 		/* in terms of low power clock */
-		I915_WRITE(MIPI_INIT_COUNT(port),
-				txclkesc(intel_dsi->escape_clk_div, 100));
+		intel_de_write(dev_priv, MIPI_INIT_COUNT(port),
+			       txclkesc(intel_dsi->escape_clk_div, 100));
 
 		if (IS_GEN9_LP(dev_priv) && (!intel_dsi->dual_link)) {
 			/*
@@ -1444,24 +1460,25 @@ static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
 			 * getting used. So write the other port
 			 * if not in dual link mode.
 			 */
-			I915_WRITE(MIPI_INIT_COUNT(port ==
-						PORT_A ? PORT_C : PORT_A),
-					intel_dsi->init_count);
+			intel_de_write(dev_priv,
+				       MIPI_INIT_COUNT(port == PORT_A ? PORT_C : PORT_A),
+				       intel_dsi->init_count);
 		}
 
 		/* recovery disables */
-		I915_WRITE(MIPI_EOT_DISABLE(port), tmp);
+		intel_de_write(dev_priv, MIPI_EOT_DISABLE(port), tmp);
 
 		/* in terms of low power clock */
-		I915_WRITE(MIPI_INIT_COUNT(port), intel_dsi->init_count);
+		intel_de_write(dev_priv, MIPI_INIT_COUNT(port),
+			       intel_dsi->init_count);
 
 		/* in terms of txbyteclkhs. actual high to low switch +
 		 * MIPI_STOP_STATE_STALL * MIPI_LP_BYTECLK.
 		 *
 		 * XXX: write MIPI_STOP_STATE_STALL?
 		 */
-		I915_WRITE(MIPI_HIGH_LOW_SWITCH_COUNT(port),
-						intel_dsi->hs_to_lp_count);
+		intel_de_write(dev_priv, MIPI_HIGH_LOW_SWITCH_COUNT(port),
+			       intel_dsi->hs_to_lp_count);
 
 		/* XXX: low power clock equivalence in terms of byte clock.
 		 * the number of byte clocks occupied in one low power clock.
@@ -1469,14 +1486,15 @@ static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
 		 * txclkesc time / txbyteclk time * (105 + MIPI_STOP_STATE_STALL
 		 * ) / 105.???
 		 */
-		I915_WRITE(MIPI_LP_BYTECLK(port), intel_dsi->lp_byte_clk);
+		intel_de_write(dev_priv, MIPI_LP_BYTECLK(port),
+			       intel_dsi->lp_byte_clk);
 
 		if (IS_GEMINILAKE(dev_priv)) {
-			I915_WRITE(MIPI_TLPX_TIME_COUNT(port),
-					intel_dsi->lp_byte_clk);
+			intel_de_write(dev_priv, MIPI_TLPX_TIME_COUNT(port),
+				       intel_dsi->lp_byte_clk);
 			/* Shadow of DPHY reg */
-			I915_WRITE(MIPI_CLK_LANE_TIMING(port),
-					intel_dsi->dphy_reg);
+			intel_de_write(dev_priv, MIPI_CLK_LANE_TIMING(port),
+				       intel_dsi->dphy_reg);
 		}
 
 		/* the bw essential for transmitting 16 long packets containing
@@ -1484,21 +1502,18 @@ static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
 		 * this register in terms of byte clocks. based on dsi transfer
 		 * rate and the number of lanes configured the time taken to
 		 * transmit 16 long packets in a dsi stream varies. */
-		I915_WRITE(MIPI_DBI_BW_CTRL(port), intel_dsi->bw_timer);
+		intel_de_write(dev_priv, MIPI_DBI_BW_CTRL(port),
+			       intel_dsi->bw_timer);
 
-		I915_WRITE(MIPI_CLK_LANE_SWITCH_TIME_CNT(port),
-		intel_dsi->clk_lp_to_hs_count << LP_HS_SSW_CNT_SHIFT |
-		intel_dsi->clk_hs_to_lp_count << HS_LP_PWR_SW_CNT_SHIFT);
+		intel_de_write(dev_priv, MIPI_CLK_LANE_SWITCH_TIME_CNT(port),
+			       intel_dsi->clk_lp_to_hs_count << LP_HS_SSW_CNT_SHIFT | intel_dsi->clk_hs_to_lp_count << HS_LP_PWR_SW_CNT_SHIFT);
 
 		if (is_vid_mode(intel_dsi))
 			/* Some panels might have resolution which is not a
 			 * multiple of 64 like 1366 x 768. Enable RANDOM
 			 * resolution support for such panels by default */
-			I915_WRITE(MIPI_VIDEO_MODE_FORMAT(port),
-				intel_dsi->video_frmt_cfg_bits |
-				intel_dsi->video_mode_format |
-				IP_TG_CONFIG |
-				RANDOM_DPI_DISPLAY_RESOLUTION);
+			intel_de_write(dev_priv, MIPI_VIDEO_MODE_FORMAT(port),
+				       intel_dsi->video_frmt_cfg_bits | intel_dsi->video_mode_format | IP_TG_CONFIG | RANDOM_DPI_DISPLAY_RESOLUTION);
 	}
 }
 
@@ -1514,19 +1529,19 @@ static void intel_dsi_unprepare(struct intel_encoder *encoder)
 
 	for_each_dsi_port(port, intel_dsi->ports) {
 		/* Panel commands can be sent when clock is in LP11 */
-		I915_WRITE(MIPI_DEVICE_READY(port), 0x0);
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(port), 0x0);
 
 		if (IS_GEN9_LP(dev_priv))
 			bxt_dsi_reset_clocks(encoder, port);
 		else
 			vlv_dsi_reset_clocks(encoder, port);
-		I915_WRITE(MIPI_EOT_DISABLE(port), CLOCKSTOP);
+		intel_de_write(dev_priv, MIPI_EOT_DISABLE(port), CLOCKSTOP);
 
-		val = I915_READ(MIPI_DSI_FUNC_PRG(port));
+		val = intel_de_read(dev_priv, MIPI_DSI_FUNC_PRG(port));
 		val &= ~VID_MODE_FORMAT_MASK;
-		I915_WRITE(MIPI_DSI_FUNC_PRG(port), val);
+		intel_de_write(dev_priv, MIPI_DSI_FUNC_PRG(port), val);
 
-		I915_WRITE(MIPI_DEVICE_READY(port), 0x1);
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(port), 0x1);
 	}
 }
 
@@ -1583,7 +1598,7 @@ vlv_dsi_get_hw_panel_orientation(struct intel_connector *connector)
 	if (!wakeref)
 		return DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
 
-	val = I915_READ(DSPCNTR(plane->i9xx_plane));
+	val = intel_de_read(dev_priv, DSPCNTR(plane->i9xx_plane));
 
 	if (!(val & DISPLAY_PLANE_ENABLE))
 		orientation = DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
