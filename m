Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE3C65094F
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Dec 2022 10:25:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8787310E15B;
	Mon, 19 Dec 2022 09:25:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 047EA10E198
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Dec 2022 09:24:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671441885; x=1702977885;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eMp6YXgYQ1g+Mim/RFLDwziEK9SZAjU4xBXy6AAVTB4=;
 b=WXrtJYPAc1IddLHpEHN7tFjjpX4jDAInmTQ0tEHPOY6r/laZSNyppWFP
 vNjrecRaFXeeT+b7WuL4fWmJx8A6ffBL2nLphPPsnEr3bTs4Y8baTqYd5
 vg1X+ljgfsziU0oxIRuv61vBUkeCKK4IQu3b4B3RHP7Yiaq30YG+N1bv8
 P49OUHzS1VfDRgTp4CknP+oIQXVp1Ga7lNIE5FwC+aWZ9JA0sr8/CMJXq
 ZkedhjxlvaaVnuI2XY2QHb55qpgOPOp7Ly9GVJQ8B3AKVZYsdP5RTRrZt
 ecwpp8TnzHz6CJaVkTL4dQejrqo+4mdPt8iIO3WvS5mkk1lp1/UfBoL+2 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10565"; a="383652152"
X-IronPort-AV: E=Sophos;i="5.96,255,1665471600"; d="scan'208";a="383652152"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2022 01:24:44 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10565"; a="719055726"
X-IronPort-AV: E=Sophos;i="5.96,255,1665471600"; d="scan'208";a="719055726"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2022 01:24:41 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Dec 2022 10:24:28 +0100
Message-Id: <20221219092428.2515430-2-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221219092428.2515430-1-andrzej.hajda@intel.com>
References: <20221219092428.2515430-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/display/vlv: use intel_de_rmw if
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The helper makes the code more compact and readable.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/vlv_dsi.c     | 132 ++++++---------------
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c |  18 +--
 2 files changed, 41 insertions(+), 109 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index f5268997a3e172..6151da0c78cb61 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -331,32 +331,23 @@ static bool glk_dsi_enable_io(struct intel_encoder *encoder)
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
-	u32 tmp;
 	bool cold_boot = false;
 
 	/* Set the MIPI mode
 	 * If MIPI_Mode is off, then writing to LP_Wake bit is not reflecting.
 	 * Power ON MIPI IO first and then write into IO reset and LP wake bits
 	 */
-	for_each_dsi_port(port, intel_dsi->ports) {
-		tmp = intel_de_read(dev_priv, MIPI_CTRL(port));
-		intel_de_write(dev_priv, MIPI_CTRL(port),
-			       tmp | GLK_MIPIIO_ENABLE);
-	}
+	for_each_dsi_port(port, intel_dsi->ports)
+		intel_de_rmw(dev_priv, MIPI_CTRL(port), 0, GLK_MIPIIO_ENABLE);
 
 	/* Put the IO into reset */
-	tmp = intel_de_read(dev_priv, MIPI_CTRL(PORT_A));
-	tmp &= ~GLK_MIPIIO_RESET_RELEASED;
-	intel_de_write(dev_priv, MIPI_CTRL(PORT_A), tmp);
+	intel_de_rmw(dev_priv, MIPI_CTRL(PORT_A), GLK_MIPIIO_RESET_RELEASED, 0);
 
 	/* Program LP Wake */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		tmp = intel_de_read(dev_priv, MIPI_CTRL(port));
-		if (!(intel_de_read(dev_priv, MIPI_DEVICE_READY(port)) & DEVICE_READY))
-			tmp &= ~GLK_LP_WAKE;
-		else
-			tmp |= GLK_LP_WAKE;
-		intel_de_write(dev_priv, MIPI_CTRL(port), tmp);
+		u32 tmp = intel_de_read(dev_priv, MIPI_DEVICE_READY(port));
+		intel_de_rmw(dev_priv, MIPI_CTRL(port),
+			     GLK_LP_WAKE, (tmp & DEVICE_READY) ? GLK_LP_WAKE : 0);
 	}
 
 	/* Wait for Pwr ACK */
@@ -380,7 +371,6 @@ static void glk_dsi_device_ready(struct intel_encoder *encoder)
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
-	u32 val;
 
 	/* Wait for MIPI PHY status bit to set */
 	for_each_dsi_port(port, intel_dsi->ports) {
@@ -390,24 +380,18 @@ static void glk_dsi_device_ready(struct intel_encoder *encoder)
 	}
 
 	/* Get IO out of reset */
-	val = intel_de_read(dev_priv, MIPI_CTRL(PORT_A));
-	intel_de_write(dev_priv, MIPI_CTRL(PORT_A),
-		       val | GLK_MIPIIO_RESET_RELEASED);
+	intel_de_rmw(dev_priv, MIPI_CTRL(PORT_A), 0, GLK_MIPIIO_RESET_RELEASED);
 
 	/* Get IO out of Low power state*/
 	for_each_dsi_port(port, intel_dsi->ports) {
 		if (!(intel_de_read(dev_priv, MIPI_DEVICE_READY(port)) & DEVICE_READY)) {
-			val = intel_de_read(dev_priv, MIPI_DEVICE_READY(port));
-			val &= ~ULPS_STATE_MASK;
-			val |= DEVICE_READY;
-			intel_de_write(dev_priv, MIPI_DEVICE_READY(port), val);
+			intel_de_rmw(dev_priv, MIPI_DEVICE_READY(port),
+				     ULPS_STATE_MASK, DEVICE_READY);
 			usleep_range(10, 15);
 		} else {
 			/* Enter ULPS */
-			val = intel_de_read(dev_priv, MIPI_DEVICE_READY(port));
-			val &= ~ULPS_STATE_MASK;
-			val |= (ULPS_STATE_ENTER | DEVICE_READY);
-			intel_de_write(dev_priv, MIPI_DEVICE_READY(port), val);
+			intel_de_rmw(dev_priv, MIPI_DEVICE_READY(port),
+				     ULPS_STATE_MASK, ULPS_STATE_ENTER | DEVICE_READY);
 
 			/* Wait for ULPS active */
 			if (intel_de_wait_for_clear(dev_priv, MIPI_CTRL(port),
@@ -415,20 +399,15 @@ static void glk_dsi_device_ready(struct intel_encoder *encoder)
 				drm_err(&dev_priv->drm, "ULPS not active\n");
 
 			/* Exit ULPS */
-			val = intel_de_read(dev_priv, MIPI_DEVICE_READY(port));
-			val &= ~ULPS_STATE_MASK;
-			val |= (ULPS_STATE_EXIT | DEVICE_READY);
-			intel_de_write(dev_priv, MIPI_DEVICE_READY(port), val);
+			intel_de_rmw(dev_priv, MIPI_DEVICE_READY(port),
+				     ULPS_STATE_MASK, ULPS_STATE_EXIT | DEVICE_READY);
 
 			/* Enter Normal Mode */
-			val = intel_de_read(dev_priv, MIPI_DEVICE_READY(port));
-			val &= ~ULPS_STATE_MASK;
-			val |= (ULPS_STATE_NORMAL_OPERATION | DEVICE_READY);
-			intel_de_write(dev_priv, MIPI_DEVICE_READY(port), val);
-
-			val = intel_de_read(dev_priv, MIPI_CTRL(port));
-			val &= ~GLK_LP_WAKE;
-			intel_de_write(dev_priv, MIPI_CTRL(port), val);
+			intel_de_rmw(dev_priv, MIPI_DEVICE_READY(port),
+				     ULPS_STATE_MASK,
+				     ULPS_STATE_NORMAL_OPERATION | DEVICE_READY);
+
+			intel_de_rmw(dev_priv, MIPI_CTRL(port), GLK_LP_WAKE, 0);
 		}
 	}
 
@@ -460,9 +439,7 @@ static void bxt_dsi_device_ready(struct intel_encoder *encoder)
 
 	/* Enable MIPI PHY transparent latch */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		val = intel_de_read(dev_priv, BXT_MIPI_PORT_CTRL(port));
-		intel_de_write(dev_priv, BXT_MIPI_PORT_CTRL(port),
-			       val | LP_OUTPUT_HOLD);
+		intel_de_rmw(dev_priv, BXT_MIPI_PORT_CTRL(port), 0, LP_OUTPUT_HOLD);
 		usleep_range(2000, 2500);
 	}
 
@@ -482,7 +459,6 @@ static void vlv_dsi_device_ready(struct intel_encoder *encoder)
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
-	u32 val;
 
 	drm_dbg_kms(&dev_priv->drm, "\n");
 
@@ -505,9 +481,7 @@ static void vlv_dsi_device_ready(struct intel_encoder *encoder)
 		 * Common bit for both MIPI Port A & MIPI Port C
 		 * No similar bit in MIPI Port C reg
 		 */
-		val = intel_de_read(dev_priv, MIPI_PORT_CTRL(PORT_A));
-		intel_de_write(dev_priv, MIPI_PORT_CTRL(PORT_A),
-			       val | LP_OUTPUT_HOLD);
+		intel_de_rmw(dev_priv, MIPI_PORT_CTRL(PORT_A), 0, LP_OUTPUT_HOLD);
 		usleep_range(1000, 1500);
 
 		intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
@@ -537,15 +511,11 @@ static void glk_dsi_enter_low_power_mode(struct intel_encoder *encoder)
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
-	u32 val;
 
 	/* Enter ULPS */
-	for_each_dsi_port(port, intel_dsi->ports) {
-		val = intel_de_read(dev_priv, MIPI_DEVICE_READY(port));
-		val &= ~ULPS_STATE_MASK;
-		val |= (ULPS_STATE_ENTER | DEVICE_READY);
-		intel_de_write(dev_priv, MIPI_DEVICE_READY(port), val);
-	}
+	for_each_dsi_port(port, intel_dsi->ports)
+		intel_de_rmw(dev_priv, MIPI_DEVICE_READY(port),
+			     ULPS_STATE_MASK, ULPS_STATE_ENTER | DEVICE_READY);
 
 	/* Wait for MIPI PHY status bit to unset */
 	for_each_dsi_port(port, intel_dsi->ports) {
@@ -568,12 +538,9 @@ static void glk_dsi_disable_mipi_io(struct intel_encoder *encoder)
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
-	u32 tmp;
 
 	/* Put the IO into reset */
-	tmp = intel_de_read(dev_priv, MIPI_CTRL(PORT_A));
-	tmp &= ~GLK_MIPIIO_RESET_RELEASED;
-	intel_de_write(dev_priv, MIPI_CTRL(PORT_A), tmp);
+	intel_de_rmw(dev_priv, MIPI_CTRL(PORT_A), GLK_MIPIIO_RESET_RELEASED, 0);
 
 	/* Wait for MIPI PHY status bit to unset */
 	for_each_dsi_port(port, intel_dsi->ports) {
@@ -583,11 +550,8 @@ static void glk_dsi_disable_mipi_io(struct intel_encoder *encoder)
 	}
 
 	/* Clear MIPI mode */
-	for_each_dsi_port(port, intel_dsi->ports) {
-		tmp = intel_de_read(dev_priv, MIPI_CTRL(port));
-		tmp &= ~GLK_MIPIIO_ENABLE;
-		intel_de_write(dev_priv, MIPI_CTRL(port), tmp);
-	}
+	for_each_dsi_port(port, intel_dsi->ports)
+		intel_de_rmw(dev_priv, MIPI_CTRL(port), GLK_MIPIIO_ENABLE, 0);
 }
 
 static void glk_dsi_clear_device_ready(struct intel_encoder *encoder)
@@ -607,7 +571,6 @@ static void vlv_dsi_clear_device_ready(struct intel_encoder *encoder)
 		/* Common bit for both MIPI Port A & MIPI Port C on VLV/CHV */
 		i915_reg_t port_ctrl = IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv) ?
 			BXT_MIPI_PORT_CTRL(port) : MIPI_PORT_CTRL(PORT_A);
-		u32 val;
 
 		intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
 			       DEVICE_READY | ULPS_STATE_ENTER);
@@ -631,8 +594,7 @@ static void vlv_dsi_clear_device_ready(struct intel_encoder *encoder)
 			drm_err(&dev_priv->drm, "DSI LP not going Low\n");
 
 		/* Disable MIPI PHY transparent latch */
-		val = intel_de_read(dev_priv, port_ctrl);
-		intel_de_write(dev_priv, port_ctrl, val & ~LP_OUTPUT_HOLD);
+		intel_de_rmw(dev_priv, port_ctrl, LP_OUTPUT_HOLD, 0);
 		usleep_range(1000, 1500);
 
 		intel_de_write(dev_priv, MIPI_DEVICE_READY(port), 0x00);
@@ -703,11 +665,9 @@ static void intel_dsi_port_disable(struct intel_encoder *encoder)
 	for_each_dsi_port(port, intel_dsi->ports) {
 		i915_reg_t port_ctrl = IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv) ?
 			BXT_MIPI_PORT_CTRL(port) : MIPI_PORT_CTRL(port);
-		u32 temp;
 
 		/* de-assert ip_tg_enable signal */
-		temp = intel_de_read(dev_priv, port_ctrl);
-		intel_de_write(dev_priv, port_ctrl, temp & ~DPI_ENABLE);
+		intel_de_rmw(dev_priv, port_ctrl, DPI_ENABLE, 0);
 		intel_de_posting_read(dev_priv, port_ctrl);
 	}
 }
@@ -781,7 +741,6 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	enum port port;
-	u32 val;
 	bool glk_cold_boot = false;
 
 	drm_dbg_kms(&dev_priv->drm, "\n");
@@ -804,9 +763,7 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
 
 	if (IS_BROXTON(dev_priv)) {
 		/* Add MIPI IO reset programming for modeset */
-		val = intel_de_read(dev_priv, BXT_P_CR_GT_DISP_PWRON);
-		intel_de_write(dev_priv, BXT_P_CR_GT_DISP_PWRON,
-			       val | MIPIO_RST_CTRL);
+		intel_de_rmw(dev_priv, BXT_P_CR_GT_DISP_PWRON, 0, MIPIO_RST_CTRL);
 
 		/* Power up DSI regulator */
 		intel_de_write(dev_priv, BXT_P_DSI_REGULATOR_CFG, STAP_SELECT);
@@ -814,12 +771,9 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
 	}
 
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
-		u32 val;
-
 		/* Disable DPOunit clock gating, can stall pipe */
-		val = intel_de_read(dev_priv, DSPCLK_GATE_D(dev_priv));
-		val |= DPOUNIT_CLOCK_GATE_DISABLE;
-		intel_de_write(dev_priv, DSPCLK_GATE_D(dev_priv), val);
+		intel_de_rmw(dev_priv, DSPCLK_GATE_D(dev_priv),
+			     0, DPOUNIT_CLOCK_GATE_DISABLE);
 	}
 
 	if (!IS_GEMINILAKE(dev_priv))
@@ -943,7 +897,6 @@ static void intel_dsi_post_disable(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
-	u32 val;
 
 	drm_dbg_kms(&dev_priv->drm, "\n");
 
@@ -981,21 +934,16 @@ static void intel_dsi_post_disable(struct intel_atomic_state *state,
 			       HS_IO_CTRL_SELECT);
 
 		/* Add MIPI IO reset programming for modeset */
-		val = intel_de_read(dev_priv, BXT_P_CR_GT_DISP_PWRON);
-		intel_de_write(dev_priv, BXT_P_CR_GT_DISP_PWRON,
-			       val & ~MIPIO_RST_CTRL);
+		intel_de_rmw(dev_priv, BXT_P_CR_GT_DISP_PWRON, MIPIO_RST_CTRL, 0);
 	}
 
 	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
 		bxt_dsi_pll_disable(encoder);
 	} else {
-		u32 val;
-
 		vlv_dsi_pll_disable(encoder);
 
-		val = intel_de_read(dev_priv, DSPCLK_GATE_D(dev_priv));
-		val &= ~DPOUNIT_CLOCK_GATE_DISABLE;
-		intel_de_write(dev_priv, DSPCLK_GATE_D(dev_priv), val);
+		intel_de_rmw(dev_priv, DSPCLK_GATE_D(dev_priv),
+			     DPOUNIT_CLOCK_GATE_DISABLE, 0);
 	}
 
 	/* Assert reset */
@@ -1426,11 +1374,8 @@ static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
 		} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
 			enum pipe pipe = crtc->pipe;
 
-			tmp = intel_de_read(dev_priv, MIPI_CTRL(port));
-			tmp &= ~BXT_PIPE_SELECT_MASK;
-
-			tmp |= BXT_PIPE_SELECT(pipe);
-			intel_de_write(dev_priv, MIPI_CTRL(port), tmp);
+			intel_de_rmw(dev_priv, MIPI_CTRL(port),
+				     BXT_PIPE_SELECT_MASK, BXT_PIPE_SELECT(pipe));
 		}
 
 		/* XXX: why here, why like this? handling in irq handler?! */
@@ -1599,7 +1544,6 @@ static void intel_dsi_unprepare(struct intel_encoder *encoder)
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
-	u32 val;
 
 	if (IS_GEMINILAKE(dev_priv))
 		return;
@@ -1614,9 +1558,7 @@ static void intel_dsi_unprepare(struct intel_encoder *encoder)
 			vlv_dsi_reset_clocks(encoder, port);
 		intel_de_write(dev_priv, MIPI_EOT_DISABLE(port), CLOCKSTOP);
 
-		val = intel_de_read(dev_priv, MIPI_DSI_FUNC_PRG(port));
-		val &= ~VID_MODE_FORMAT_MASK;
-		intel_de_write(dev_priv, MIPI_DSI_FUNC_PRG(port), val);
+		intel_de_rmw(dev_priv, MIPI_DSI_FUNC_PRG(port), VID_MODE_FORMAT_MASK, 0);
 
 		intel_de_write(dev_priv, MIPI_DEVICE_READY(port), 0x1);
 	}
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
index af7402127cd99a..b697badbbe7110 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
@@ -302,13 +302,10 @@ bool bxt_dsi_pll_is_enabled(struct drm_i915_private *dev_priv)
 void bxt_dsi_pll_disable(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u32 val;
 
 	drm_dbg_kms(&dev_priv->drm, "\n");
 
-	val = intel_de_read(dev_priv, BXT_DSI_PLL_ENABLE);
-	val &= ~BXT_DSI_PLL_DO_ENABLE;
-	intel_de_write(dev_priv, BXT_DSI_PLL_ENABLE, val);
+	intel_de_rmw(dev_priv, BXT_DSI_PLL_ENABLE, BXT_DSI_PLL_DO_ENABLE, 0);
 
 	/*
 	 * PLL lock should deassert within 200us.
@@ -542,7 +539,6 @@ void bxt_dsi_pll_enable(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
-	u32 val;
 
 	drm_dbg_kms(&dev_priv->drm, "\n");
 
@@ -559,9 +555,7 @@ void bxt_dsi_pll_enable(struct intel_encoder *encoder,
 	}
 
 	/* Enable DSI PLL */
-	val = intel_de_read(dev_priv, BXT_DSI_PLL_ENABLE);
-	val |= BXT_DSI_PLL_DO_ENABLE;
-	intel_de_write(dev_priv, BXT_DSI_PLL_ENABLE, val);
+	intel_de_rmw(dev_priv, BXT_DSI_PLL_ENABLE, 0, BXT_DSI_PLL_DO_ENABLE);
 
 	/* Timeout and fail if PLL not locked */
 	if (intel_de_wait_for_set(dev_priv, BXT_DSI_PLL_ENABLE,
@@ -589,13 +583,9 @@ void bxt_dsi_reset_clocks(struct intel_encoder *encoder, enum port port)
 		tmp &= ~(BXT_MIPI_RX_ESCLK_LOWER_FIXDIV_MASK(port));
 		intel_de_write(dev_priv, BXT_MIPI_CLOCK_CTL, tmp);
 	} else {
-		tmp = intel_de_read(dev_priv, MIPIO_TXESC_CLK_DIV1);
-		tmp &= ~GLK_TX_ESC_CLK_DIV1_MASK;
-		intel_de_write(dev_priv, MIPIO_TXESC_CLK_DIV1, tmp);
+		intel_de_rmw(dev_priv, MIPIO_TXESC_CLK_DIV1, GLK_TX_ESC_CLK_DIV1_MASK, 0);
 
-		tmp = intel_de_read(dev_priv, MIPIO_TXESC_CLK_DIV2);
-		tmp &= ~GLK_TX_ESC_CLK_DIV2_MASK;
-		intel_de_write(dev_priv, MIPIO_TXESC_CLK_DIV2, tmp);
+		intel_de_rmw(dev_priv, MIPIO_TXESC_CLK_DIV2, GLK_TX_ESC_CLK_DIV2_MASK, 0);
 	}
 	intel_de_write(dev_priv, MIPI_EOT_DISABLE(port), CLOCKSTOP);
 }
-- 
2.34.1

