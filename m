Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA49889FD19
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 18:37:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13F7510E8BE;
	Wed, 10 Apr 2024 16:37:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g2rOxu/K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73FDC10E4C5
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Apr 2024 16:37:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712767063; x=1744303063;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bg3pE0KBzSOuXRZNCUaSNmSW0J1xn7cXrl2N+V1d3hs=;
 b=g2rOxu/KC8YRFLqCDdPFC3BvgothO0RCLy4uRgkrcPvJpGzAEWa20uqY
 IkuUjPDWTMHUBXLMu4zSGcm/eqipvCXDhoqu9epFGSJvQqca2JL5HChCa
 9bl0y5TO5tNmdB5VBlThNNp+x/tXbnK9ain2A6NLq85pqL6oWmp/yCchn
 5d3DFA3pFz/HPuDkxBYMRiceCFqqACeW5ip03IXhTkJYbiegPt5OCc12Z
 spt57Dd6Z7/sAPT6/fJ8Kb/8nQCmlRFphMk4FGG3jsKlEchjOQGVts31c
 6jUV8mIp8KQsmGTbm1QNi3Vfin6fk0PCeF553FkN388O6dpLJjnUu+aCj w==;
X-CSE-ConnectionGUID: 5esbxt6zSiSUWsvZr+6Fmg==
X-CSE-MsgGUID: VyAE4WekSrWx4C8faTyR6A==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="8017953"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; 
   d="scan'208";a="8017953"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 09:36:51 -0700
X-CSE-ConnectionGUID: x82tdVkvTo6Pc2fQOYgb2A==
X-CSE-MsgGUID: gbe3OT6UT3W2/dwR4NwiEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="25134029"
Received: from oakasatk-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.60.54])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 09:36:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/3] drm/i915/dsi: pass i915 to register macros instead of
 implicit variable
Date: Wed, 10 Apr 2024 19:36:28 +0300
Message-Id: <85cc7bfe7968038037da6b686b986b6250b0a289.1712766927.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1712766927.git.jani.nikula@intel.com>
References: <cover.1712766927.git.jani.nikula@intel.com>
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

Stop relying on the dev_priv local variable in the DSI register
macros. Pass i915 pointer to the macros. Move the MIPI DSI MMIO base
selection to a different level, passing it to _MMIO_MIPI() and doing the
addition there.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

Tip: Applying the patch and using 'git show --color-words' is probably
the easiest way to review.
---
 drivers/gpu/drm/i915/display/intel_display.c |   2 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c       | 186 +++++------
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c   |   6 +-
 drivers/gpu/drm/i915/display/vlv_dsi_regs.h  | 322 +++++++++----------
 4 files changed, 256 insertions(+), 260 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 912213ee0250..f17c2ba537f6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3742,7 +3742,7 @@ static bool bxt_get_dsi_transcoder_state(struct intel_crtc *crtc,
 		if (!(tmp & DPI_ENABLE))
 			continue;
 
-		tmp = intel_de_read(dev_priv, MIPI_CTRL(port));
+		tmp = intel_de_read(dev_priv, MIPI_CTRL(dev_priv, port));
 		if ((tmp & BXT_PIPE_SELECT_MASK) != BXT_PIPE_SELECT(crtc->pipe))
 			continue;
 
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 665247a2e834..3d9d9281882a 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -93,7 +93,7 @@ void vlv_dsi_wait_for_fifo_empty(struct intel_dsi *intel_dsi, enum port port)
 	mask = LP_CTRL_FIFO_EMPTY | HS_CTRL_FIFO_EMPTY |
 		LP_DATA_FIFO_EMPTY | HS_DATA_FIFO_EMPTY;
 
-	if (intel_de_wait_for_set(dev_priv, MIPI_GEN_FIFO_STAT(port),
+	if (intel_de_wait_for_set(dev_priv, MIPI_GEN_FIFO_STAT(dev_priv, port),
 				  mask, 100))
 		drm_err(&dev_priv->drm, "DPI FIFOs are not empty\n");
 }
@@ -148,20 +148,20 @@ static ssize_t intel_dsi_host_transfer(struct mipi_dsi_host *host,
 	header = packet.header;
 
 	if (msg->flags & MIPI_DSI_MSG_USE_LPM) {
-		data_reg = MIPI_LP_GEN_DATA(port);
+		data_reg = MIPI_LP_GEN_DATA(dev_priv, port);
 		data_mask = LP_DATA_FIFO_FULL;
-		ctrl_reg = MIPI_LP_GEN_CTRL(port);
+		ctrl_reg = MIPI_LP_GEN_CTRL(dev_priv, port);
 		ctrl_mask = LP_CTRL_FIFO_FULL;
 	} else {
-		data_reg = MIPI_HS_GEN_DATA(port);
+		data_reg = MIPI_HS_GEN_DATA(dev_priv, port);
 		data_mask = HS_DATA_FIFO_FULL;
-		ctrl_reg = MIPI_HS_GEN_CTRL(port);
+		ctrl_reg = MIPI_HS_GEN_CTRL(dev_priv, port);
 		ctrl_mask = HS_CTRL_FIFO_FULL;
 	}
 
 	/* note: this is never true for reads */
 	if (packet.payload_length) {
-		if (intel_de_wait_for_clear(dev_priv, MIPI_GEN_FIFO_STAT(port),
+		if (intel_de_wait_for_clear(dev_priv, MIPI_GEN_FIFO_STAT(dev_priv, port),
 					    data_mask, 50))
 			drm_err(&dev_priv->drm,
 				"Timeout waiting for HS/LP DATA FIFO !full\n");
@@ -171,11 +171,11 @@ static ssize_t intel_dsi_host_transfer(struct mipi_dsi_host *host,
 	}
 
 	if (msg->rx_len) {
-		intel_de_write(dev_priv, MIPI_INTR_STAT(port),
+		intel_de_write(dev_priv, MIPI_INTR_STAT(dev_priv, port),
 			       GEN_READ_DATA_AVAIL);
 	}
 
-	if (intel_de_wait_for_clear(dev_priv, MIPI_GEN_FIFO_STAT(port),
+	if (intel_de_wait_for_clear(dev_priv, MIPI_GEN_FIFO_STAT(dev_priv, port),
 				    ctrl_mask, 50)) {
 		drm_err(&dev_priv->drm,
 			"Timeout waiting for HS/LP CTRL FIFO !full\n");
@@ -187,7 +187,7 @@ static ssize_t intel_dsi_host_transfer(struct mipi_dsi_host *host,
 	/* ->rx_len is set only for reads */
 	if (msg->rx_len) {
 		data_mask = GEN_READ_DATA_AVAIL;
-		if (intel_de_wait_for_set(dev_priv, MIPI_INTR_STAT(port),
+		if (intel_de_wait_for_set(dev_priv, MIPI_INTR_STAT(dev_priv, port),
 					  data_mask, 50))
 			drm_err(&dev_priv->drm,
 				"Timeout waiting for read data.\n");
@@ -237,17 +237,17 @@ static int dpi_send_cmd(struct intel_dsi *intel_dsi, u32 cmd, bool hs,
 		cmd |= DPI_LP_MODE;
 
 	/* clear bit */
-	intel_de_write(dev_priv, MIPI_INTR_STAT(port), SPL_PKT_SENT_INTERRUPT);
+	intel_de_write(dev_priv, MIPI_INTR_STAT(dev_priv, port), SPL_PKT_SENT_INTERRUPT);
 
 	/* XXX: old code skips write if control unchanged */
-	if (cmd == intel_de_read(dev_priv, MIPI_DPI_CONTROL(port)))
+	if (cmd == intel_de_read(dev_priv, MIPI_DPI_CONTROL(dev_priv, port)))
 		drm_dbg_kms(&dev_priv->drm,
 			    "Same special packet %02x twice in a row.\n", cmd);
 
-	intel_de_write(dev_priv, MIPI_DPI_CONTROL(port), cmd);
+	intel_de_write(dev_priv, MIPI_DPI_CONTROL(dev_priv, port), cmd);
 
 	mask = SPL_PKT_SENT_INTERRUPT;
-	if (intel_de_wait_for_set(dev_priv, MIPI_INTR_STAT(port), mask, 100))
+	if (intel_de_wait_for_set(dev_priv, MIPI_INTR_STAT(dev_priv, port), mask, 100))
 		drm_err(&dev_priv->drm,
 			"Video mode command 0x%08x send failed.\n", cmd);
 
@@ -338,21 +338,21 @@ static bool glk_dsi_enable_io(struct intel_encoder *encoder)
 	 * Power ON MIPI IO first and then write into IO reset and LP wake bits
 	 */
 	for_each_dsi_port(port, intel_dsi->ports)
-		intel_de_rmw(dev_priv, MIPI_CTRL(port), 0, GLK_MIPIIO_ENABLE);
+		intel_de_rmw(dev_priv, MIPI_CTRL(dev_priv, port), 0, GLK_MIPIIO_ENABLE);
 
 	/* Put the IO into reset */
-	intel_de_rmw(dev_priv, MIPI_CTRL(PORT_A), GLK_MIPIIO_RESET_RELEASED, 0);
+	intel_de_rmw(dev_priv, MIPI_CTRL(dev_priv, PORT_A), GLK_MIPIIO_RESET_RELEASED, 0);
 
 	/* Program LP Wake */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		u32 tmp = intel_de_read(dev_priv, MIPI_DEVICE_READY(port));
-		intel_de_rmw(dev_priv, MIPI_CTRL(port),
+		u32 tmp = intel_de_read(dev_priv, MIPI_DEVICE_READY(dev_priv, port));
+		intel_de_rmw(dev_priv, MIPI_CTRL(dev_priv, port),
 			     GLK_LP_WAKE, (tmp & DEVICE_READY) ? GLK_LP_WAKE : 0);
 	}
 
 	/* Wait for Pwr ACK */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		if (intel_de_wait_for_set(dev_priv, MIPI_CTRL(port),
+		if (intel_de_wait_for_set(dev_priv, MIPI_CTRL(dev_priv, port),
 					  GLK_MIPIIO_PORT_POWERED, 20))
 			drm_err(&dev_priv->drm, "MIPIO port is powergated\n");
 	}
@@ -360,7 +360,7 @@ static bool glk_dsi_enable_io(struct intel_encoder *encoder)
 	/* Check for cold boot scenario */
 	for_each_dsi_port(port, intel_dsi->ports) {
 		cold_boot |=
-			!(intel_de_read(dev_priv, MIPI_DEVICE_READY(port)) & DEVICE_READY);
+			!(intel_de_read(dev_priv, MIPI_DEVICE_READY(dev_priv, port)) & DEVICE_READY);
 	}
 
 	return cold_boot;
@@ -374,46 +374,46 @@ static void glk_dsi_device_ready(struct intel_encoder *encoder)
 
 	/* Wait for MIPI PHY status bit to set */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		if (intel_de_wait_for_set(dev_priv, MIPI_CTRL(port),
+		if (intel_de_wait_for_set(dev_priv, MIPI_CTRL(dev_priv, port),
 					  GLK_PHY_STATUS_PORT_READY, 20))
 			drm_err(&dev_priv->drm, "PHY is not ON\n");
 	}
 
 	/* Get IO out of reset */
-	intel_de_rmw(dev_priv, MIPI_CTRL(PORT_A), 0, GLK_MIPIIO_RESET_RELEASED);
+	intel_de_rmw(dev_priv, MIPI_CTRL(dev_priv, PORT_A), 0, GLK_MIPIIO_RESET_RELEASED);
 
 	/* Get IO out of Low power state*/
 	for_each_dsi_port(port, intel_dsi->ports) {
-		if (!(intel_de_read(dev_priv, MIPI_DEVICE_READY(port)) & DEVICE_READY)) {
-			intel_de_rmw(dev_priv, MIPI_DEVICE_READY(port),
+		if (!(intel_de_read(dev_priv, MIPI_DEVICE_READY(dev_priv, port)) & DEVICE_READY)) {
+			intel_de_rmw(dev_priv, MIPI_DEVICE_READY(dev_priv, port),
 				     ULPS_STATE_MASK, DEVICE_READY);
 			usleep_range(10, 15);
 		} else {
 			/* Enter ULPS */
-			intel_de_rmw(dev_priv, MIPI_DEVICE_READY(port),
+			intel_de_rmw(dev_priv, MIPI_DEVICE_READY(dev_priv, port),
 				     ULPS_STATE_MASK, ULPS_STATE_ENTER | DEVICE_READY);
 
 			/* Wait for ULPS active */
-			if (intel_de_wait_for_clear(dev_priv, MIPI_CTRL(port),
+			if (intel_de_wait_for_clear(dev_priv, MIPI_CTRL(dev_priv, port),
 						    GLK_ULPS_NOT_ACTIVE, 20))
 				drm_err(&dev_priv->drm, "ULPS not active\n");
 
 			/* Exit ULPS */
-			intel_de_rmw(dev_priv, MIPI_DEVICE_READY(port),
+			intel_de_rmw(dev_priv, MIPI_DEVICE_READY(dev_priv, port),
 				     ULPS_STATE_MASK, ULPS_STATE_EXIT | DEVICE_READY);
 
 			/* Enter Normal Mode */
-			intel_de_rmw(dev_priv, MIPI_DEVICE_READY(port),
+			intel_de_rmw(dev_priv, MIPI_DEVICE_READY(dev_priv, port),
 				     ULPS_STATE_MASK,
 				     ULPS_STATE_NORMAL_OPERATION | DEVICE_READY);
 
-			intel_de_rmw(dev_priv, MIPI_CTRL(port), GLK_LP_WAKE, 0);
+			intel_de_rmw(dev_priv, MIPI_CTRL(dev_priv, port), GLK_LP_WAKE, 0);
 		}
 	}
 
 	/* Wait for Stop state */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		if (intel_de_wait_for_set(dev_priv, MIPI_CTRL(port),
+		if (intel_de_wait_for_set(dev_priv, MIPI_CTRL(dev_priv, port),
 					  GLK_DATA_LANE_STOP_STATE, 20))
 			drm_err(&dev_priv->drm,
 				"Date lane not in STOP state\n");
@@ -445,12 +445,12 @@ static void bxt_dsi_device_ready(struct intel_encoder *encoder)
 
 	/* Clear ULPS and set device ready */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		val = intel_de_read(dev_priv, MIPI_DEVICE_READY(port));
+		val = intel_de_read(dev_priv, MIPI_DEVICE_READY(dev_priv, port));
 		val &= ~ULPS_STATE_MASK;
-		intel_de_write(dev_priv, MIPI_DEVICE_READY(port), val);
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(dev_priv, port), val);
 		usleep_range(2000, 2500);
 		val |= DEVICE_READY;
-		intel_de_write(dev_priv, MIPI_DEVICE_READY(port), val);
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(dev_priv, port), val);
 	}
 }
 
@@ -473,7 +473,7 @@ static void vlv_dsi_device_ready(struct intel_encoder *encoder)
 
 	for_each_dsi_port(port, intel_dsi->ports) {
 
-		intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(dev_priv, port),
 			       ULPS_STATE_ENTER);
 		usleep_range(2500, 3000);
 
@@ -484,11 +484,11 @@ static void vlv_dsi_device_ready(struct intel_encoder *encoder)
 		intel_de_rmw(dev_priv, VLV_MIPI_PORT_CTRL(PORT_A), 0, LP_OUTPUT_HOLD);
 		usleep_range(1000, 1500);
 
-		intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(dev_priv, port),
 			       ULPS_STATE_EXIT);
 		usleep_range(2500, 3000);
 
-		intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(dev_priv, port),
 			       DEVICE_READY);
 		usleep_range(2500, 3000);
 	}
@@ -514,19 +514,19 @@ static void glk_dsi_enter_low_power_mode(struct intel_encoder *encoder)
 
 	/* Enter ULPS */
 	for_each_dsi_port(port, intel_dsi->ports)
-		intel_de_rmw(dev_priv, MIPI_DEVICE_READY(port),
+		intel_de_rmw(dev_priv, MIPI_DEVICE_READY(dev_priv, port),
 			     ULPS_STATE_MASK, ULPS_STATE_ENTER | DEVICE_READY);
 
 	/* Wait for MIPI PHY status bit to unset */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		if (intel_de_wait_for_clear(dev_priv, MIPI_CTRL(port),
+		if (intel_de_wait_for_clear(dev_priv, MIPI_CTRL(dev_priv, port),
 					    GLK_PHY_STATUS_PORT_READY, 20))
 			drm_err(&dev_priv->drm, "PHY is not turning OFF\n");
 	}
 
 	/* Wait for Pwr ACK bit to unset */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		if (intel_de_wait_for_clear(dev_priv, MIPI_CTRL(port),
+		if (intel_de_wait_for_clear(dev_priv, MIPI_CTRL(dev_priv, port),
 					    GLK_MIPIIO_PORT_POWERED, 20))
 			drm_err(&dev_priv->drm,
 				"MIPI IO Port is not powergated\n");
@@ -540,18 +540,18 @@ static void glk_dsi_disable_mipi_io(struct intel_encoder *encoder)
 	enum port port;
 
 	/* Put the IO into reset */
-	intel_de_rmw(dev_priv, MIPI_CTRL(PORT_A), GLK_MIPIIO_RESET_RELEASED, 0);
+	intel_de_rmw(dev_priv, MIPI_CTRL(dev_priv, PORT_A), GLK_MIPIIO_RESET_RELEASED, 0);
 
 	/* Wait for MIPI PHY status bit to unset */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		if (intel_de_wait_for_clear(dev_priv, MIPI_CTRL(port),
+		if (intel_de_wait_for_clear(dev_priv, MIPI_CTRL(dev_priv, port),
 					    GLK_PHY_STATUS_PORT_READY, 20))
 			drm_err(&dev_priv->drm, "PHY is not turning OFF\n");
 	}
 
 	/* Clear MIPI mode */
 	for_each_dsi_port(port, intel_dsi->ports)
-		intel_de_rmw(dev_priv, MIPI_CTRL(port), GLK_MIPIIO_ENABLE, 0);
+		intel_de_rmw(dev_priv, MIPI_CTRL(dev_priv, port), GLK_MIPIIO_ENABLE, 0);
 }
 
 static void glk_dsi_clear_device_ready(struct intel_encoder *encoder)
@@ -578,15 +578,15 @@ static void vlv_dsi_clear_device_ready(struct intel_encoder *encoder)
 		i915_reg_t port_ctrl = IS_BROXTON(dev_priv) ?
 			BXT_MIPI_PORT_CTRL(port) : VLV_MIPI_PORT_CTRL(PORT_A);
 
-		intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(dev_priv, port),
 			       DEVICE_READY | ULPS_STATE_ENTER);
 		usleep_range(2000, 2500);
 
-		intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(dev_priv, port),
 			       DEVICE_READY | ULPS_STATE_EXIT);
 		usleep_range(2000, 2500);
 
-		intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(dev_priv, port),
 			       DEVICE_READY | ULPS_STATE_ENTER);
 		usleep_range(2000, 2500);
 
@@ -603,7 +603,7 @@ static void vlv_dsi_clear_device_ready(struct intel_encoder *encoder)
 		intel_de_rmw(dev_priv, port_ctrl, LP_OUTPUT_HOLD, 0);
 		usleep_range(1000, 1500);
 
-		intel_de_write(dev_priv, MIPI_DEVICE_READY(port), 0x00);
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(dev_priv, port), 0x00);
 		usleep_range(2000, 2500);
 	}
 }
@@ -621,7 +621,7 @@ static void intel_dsi_port_enable(struct intel_encoder *encoder,
 
 		if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
 			for_each_dsi_port(port, intel_dsi->ports)
-				intel_de_rmw(dev_priv, MIPI_CTRL(port),
+				intel_de_rmw(dev_priv, MIPI_CTRL(dev_priv, port),
 					     BXT_PIXEL_OVERLAP_CNT_MASK,
 					     temp << BXT_PIXEL_OVERLAP_CNT_SHIFT);
 		} else {
@@ -798,7 +798,7 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
 	if (is_cmd_mode(intel_dsi)) {
 		for_each_dsi_port(port, intel_dsi->ports)
 			intel_de_write(dev_priv,
-				       MIPI_MAX_RETURN_PKT_SIZE(port), 8 * 4);
+				       MIPI_MAX_RETURN_PKT_SIZE(dev_priv, port), 8 * 4);
 		intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_TEAR_ON);
 		intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DISPLAY_ON);
 	} else {
@@ -973,18 +973,18 @@ static bool intel_dsi_get_hw_state(struct intel_encoder *encoder,
 		/* Try command mode if video mode not enabled */
 		if (!enabled) {
 			u32 tmp = intel_de_read(dev_priv,
-						MIPI_DSI_FUNC_PRG(port));
+						MIPI_DSI_FUNC_PRG(dev_priv, port));
 			enabled = tmp & CMD_MODE_DATA_WIDTH_MASK;
 		}
 
 		if (!enabled)
 			continue;
 
-		if (!(intel_de_read(dev_priv, MIPI_DEVICE_READY(port)) & DEVICE_READY))
+		if (!(intel_de_read(dev_priv, MIPI_DEVICE_READY(dev_priv, port)) & DEVICE_READY))
 			continue;
 
 		if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
-			u32 tmp = intel_de_read(dev_priv, MIPI_CTRL(port));
+			u32 tmp = intel_de_read(dev_priv, MIPI_CTRL(dev_priv, port));
 			tmp &= BXT_PIPE_SELECT_MASK;
 			tmp >>= BXT_PIPE_SELECT_SHIFT;
 
@@ -1036,7 +1036,7 @@ static void bxt_dsi_get_pipe_config(struct intel_encoder *encoder,
 			break;
 	}
 
-	fmt = intel_de_read(dev_priv, MIPI_DSI_FUNC_PRG(port)) & VID_MODE_FORMAT_MASK;
+	fmt = intel_de_read(dev_priv, MIPI_DSI_FUNC_PRG(dev_priv, port)) & VID_MODE_FORMAT_MASK;
 	bpp = mipi_dsi_pixel_format_to_bpp(
 			pixel_format_from_register_bits(fmt));
 
@@ -1058,14 +1058,14 @@ static void bxt_dsi_get_pipe_config(struct intel_encoder *encoder,
 				              BXT_MIPI_TRANS_VTOTAL(port));
 
 	hactive = adjusted_mode->crtc_hdisplay;
-	hfp = intel_de_read(dev_priv, MIPI_HFP_COUNT(port));
+	hfp = intel_de_read(dev_priv, MIPI_HFP_COUNT(dev_priv, port));
 
 	/*
 	 * Meaningful for video mode non-burst sync pulse mode only,
 	 * can be zero for non-burst sync events and burst modes
 	 */
-	hsync = intel_de_read(dev_priv, MIPI_HSYNC_PADDING_COUNT(port));
-	hbp = intel_de_read(dev_priv, MIPI_HBP_COUNT(port));
+	hsync = intel_de_read(dev_priv, MIPI_HSYNC_PADDING_COUNT(dev_priv, port));
+	hbp = intel_de_read(dev_priv, MIPI_HBP_COUNT(dev_priv, port));
 
 	/* harizontal values are in terms of high speed byte clock */
 	hfp = pixels_from_txbyteclkhs(hfp, bpp, lane_count,
@@ -1082,8 +1082,8 @@ static void bxt_dsi_get_pipe_config(struct intel_encoder *encoder,
 	}
 
 	/* vertical values are in terms of lines */
-	vfp = intel_de_read(dev_priv, MIPI_VFP_COUNT(port));
-	vsync = intel_de_read(dev_priv, MIPI_VSYNC_PADDING_COUNT(port));
+	vfp = intel_de_read(dev_priv, MIPI_VFP_COUNT(dev_priv, port));
+	vsync = intel_de_read(dev_priv, MIPI_VSYNC_PADDING_COUNT(dev_priv, port));
 
 	adjusted_mode->crtc_htotal = hactive + hfp + hsync + hbp;
 	adjusted_mode->crtc_hsync_start = hfp + adjusted_mode->crtc_hdisplay;
@@ -1263,21 +1263,21 @@ static void set_dsi_timings(struct drm_encoder *encoder,
 				       adjusted_mode->crtc_vtotal);
 		}
 
-		intel_de_write(dev_priv, MIPI_HACTIVE_AREA_COUNT(port),
+		intel_de_write(dev_priv, MIPI_HACTIVE_AREA_COUNT(dev_priv, port),
 			       hactive);
-		intel_de_write(dev_priv, MIPI_HFP_COUNT(port), hfp);
+		intel_de_write(dev_priv, MIPI_HFP_COUNT(dev_priv, port), hfp);
 
 		/* meaningful for video mode non-burst sync pulse mode only,
 		 * can be zero for non-burst sync events and burst modes */
-		intel_de_write(dev_priv, MIPI_HSYNC_PADDING_COUNT(port),
+		intel_de_write(dev_priv, MIPI_HSYNC_PADDING_COUNT(dev_priv, port),
 			       hsync);
-		intel_de_write(dev_priv, MIPI_HBP_COUNT(port), hbp);
+		intel_de_write(dev_priv, MIPI_HBP_COUNT(dev_priv, port), hbp);
 
 		/* vertical values are in terms of lines */
-		intel_de_write(dev_priv, MIPI_VFP_COUNT(port), vfp);
-		intel_de_write(dev_priv, MIPI_VSYNC_PADDING_COUNT(port),
+		intel_de_write(dev_priv, MIPI_VFP_COUNT(dev_priv, port), vfp);
+		intel_de_write(dev_priv, MIPI_VSYNC_PADDING_COUNT(dev_priv, port),
 			       vsync);
-		intel_de_write(dev_priv, MIPI_VBP_COUNT(port), vbp);
+		intel_de_write(dev_priv, MIPI_VBP_COUNT(dev_priv, port), vbp);
 	}
 }
 
@@ -1328,31 +1328,31 @@ static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
 			 * escape clock divider, 20MHz, shared for A and C.
 			 * device ready must be off when doing this! txclkesc?
 			 */
-			tmp = intel_de_read(dev_priv, MIPI_CTRL(PORT_A));
+			tmp = intel_de_read(dev_priv, MIPI_CTRL(dev_priv, PORT_A));
 			tmp &= ~ESCAPE_CLOCK_DIVIDER_MASK;
-			intel_de_write(dev_priv, MIPI_CTRL(PORT_A),
+			intel_de_write(dev_priv, MIPI_CTRL(dev_priv, PORT_A),
 				       tmp | ESCAPE_CLOCK_DIVIDER_1);
 
 			/* read request priority is per pipe */
-			tmp = intel_de_read(dev_priv, MIPI_CTRL(port));
+			tmp = intel_de_read(dev_priv, MIPI_CTRL(dev_priv, port));
 			tmp &= ~READ_REQUEST_PRIORITY_MASK;
-			intel_de_write(dev_priv, MIPI_CTRL(port),
+			intel_de_write(dev_priv, MIPI_CTRL(dev_priv, port),
 				       tmp | READ_REQUEST_PRIORITY_HIGH);
 		} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
 			enum pipe pipe = crtc->pipe;
 
-			intel_de_rmw(dev_priv, MIPI_CTRL(port),
+			intel_de_rmw(dev_priv, MIPI_CTRL(dev_priv, port),
 				     BXT_PIPE_SELECT_MASK, BXT_PIPE_SELECT(pipe));
 		}
 
 		/* XXX: why here, why like this? handling in irq handler?! */
-		intel_de_write(dev_priv, MIPI_INTR_STAT(port), 0xffffffff);
-		intel_de_write(dev_priv, MIPI_INTR_EN(port), 0xffffffff);
+		intel_de_write(dev_priv, MIPI_INTR_STAT(dev_priv, port), 0xffffffff);
+		intel_de_write(dev_priv, MIPI_INTR_EN(dev_priv, port), 0xffffffff);
 
-		intel_de_write(dev_priv, MIPI_DPHY_PARAM(port),
+		intel_de_write(dev_priv, MIPI_DPHY_PARAM(dev_priv, port),
 			       intel_dsi->dphy_reg);
 
-		intel_de_write(dev_priv, MIPI_DPI_RESOLUTION(port),
+		intel_de_write(dev_priv, MIPI_DPI_RESOLUTION(dev_priv, port),
 			       adjusted_mode->crtc_vdisplay << VERTICAL_ADDRESS_SHIFT | mode_hdisplay << HORIZONTAL_ADDRESS_SHIFT);
 	}
 
@@ -1380,7 +1380,7 @@ static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
 	}
 
 	for_each_dsi_port(port, intel_dsi->ports) {
-		intel_de_write(dev_priv, MIPI_DSI_FUNC_PRG(port), val);
+		intel_de_write(dev_priv, MIPI_DSI_FUNC_PRG(dev_priv, port), val);
 
 		/* timeouts for recovery. one frame IIUC. if counter expires,
 		 * EOT and stop state. */
@@ -1401,23 +1401,23 @@ static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
 
 		if (is_vid_mode(intel_dsi) &&
 			intel_dsi->video_mode == BURST_MODE) {
-			intel_de_write(dev_priv, MIPI_HS_TX_TIMEOUT(port),
+			intel_de_write(dev_priv, MIPI_HS_TX_TIMEOUT(dev_priv, port),
 				       txbyteclkhs(adjusted_mode->crtc_htotal, bpp, intel_dsi->lane_count, intel_dsi->burst_mode_ratio) + 1);
 		} else {
-			intel_de_write(dev_priv, MIPI_HS_TX_TIMEOUT(port),
+			intel_de_write(dev_priv, MIPI_HS_TX_TIMEOUT(dev_priv, port),
 				       txbyteclkhs(adjusted_mode->crtc_vtotal * adjusted_mode->crtc_htotal, bpp, intel_dsi->lane_count, intel_dsi->burst_mode_ratio) + 1);
 		}
-		intel_de_write(dev_priv, MIPI_LP_RX_TIMEOUT(port),
+		intel_de_write(dev_priv, MIPI_LP_RX_TIMEOUT(dev_priv, port),
 			       intel_dsi->lp_rx_timeout);
-		intel_de_write(dev_priv, MIPI_TURN_AROUND_TIMEOUT(port),
+		intel_de_write(dev_priv, MIPI_TURN_AROUND_TIMEOUT(dev_priv, port),
 			       intel_dsi->turn_arnd_val);
-		intel_de_write(dev_priv, MIPI_DEVICE_RESET_TIMER(port),
+		intel_de_write(dev_priv, MIPI_DEVICE_RESET_TIMER(dev_priv, port),
 			       intel_dsi->rst_timer_val);
 
 		/* dphy stuff */
 
 		/* in terms of low power clock */
-		intel_de_write(dev_priv, MIPI_INIT_COUNT(port),
+		intel_de_write(dev_priv, MIPI_INIT_COUNT(dev_priv, port),
 			       txclkesc(intel_dsi->escape_clk_div, 100));
 
 		if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
@@ -1429,15 +1429,15 @@ static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
 			 * if not in dual link mode.
 			 */
 			intel_de_write(dev_priv,
-				       MIPI_INIT_COUNT(port == PORT_A ? PORT_C : PORT_A),
+				       MIPI_INIT_COUNT(dev_priv, port == PORT_A ? PORT_C : PORT_A),
 				       intel_dsi->init_count);
 		}
 
 		/* recovery disables */
-		intel_de_write(dev_priv, MIPI_EOT_DISABLE(port), tmp);
+		intel_de_write(dev_priv, MIPI_EOT_DISABLE(dev_priv, port), tmp);
 
 		/* in terms of low power clock */
-		intel_de_write(dev_priv, MIPI_INIT_COUNT(port),
+		intel_de_write(dev_priv, MIPI_INIT_COUNT(dev_priv, port),
 			       intel_dsi->init_count);
 
 		/* in terms of txbyteclkhs. actual high to low switch +
@@ -1445,7 +1445,7 @@ static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
 		 *
 		 * XXX: write MIPI_STOP_STATE_STALL?
 		 */
-		intel_de_write(dev_priv, MIPI_HIGH_LOW_SWITCH_COUNT(port),
+		intel_de_write(dev_priv, MIPI_HIGH_LOW_SWITCH_COUNT(dev_priv, port),
 			       intel_dsi->hs_to_lp_count);
 
 		/* XXX: low power clock equivalence in terms of byte clock.
@@ -1454,14 +1454,14 @@ static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
 		 * txclkesc time / txbyteclk time * (105 + MIPI_STOP_STATE_STALL
 		 * ) / 105.???
 		 */
-		intel_de_write(dev_priv, MIPI_LP_BYTECLK(port),
+		intel_de_write(dev_priv, MIPI_LP_BYTECLK(dev_priv, port),
 			       intel_dsi->lp_byte_clk);
 
 		if (IS_GEMINILAKE(dev_priv)) {
-			intel_de_write(dev_priv, MIPI_TLPX_TIME_COUNT(port),
+			intel_de_write(dev_priv, MIPI_TLPX_TIME_COUNT(dev_priv, port),
 				       intel_dsi->lp_byte_clk);
 			/* Shadow of DPHY reg */
-			intel_de_write(dev_priv, MIPI_CLK_LANE_TIMING(port),
+			intel_de_write(dev_priv, MIPI_CLK_LANE_TIMING(dev_priv, port),
 				       intel_dsi->dphy_reg);
 		}
 
@@ -1470,10 +1470,10 @@ static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
 		 * this register in terms of byte clocks. based on dsi transfer
 		 * rate and the number of lanes configured the time taken to
 		 * transmit 16 long packets in a dsi stream varies. */
-		intel_de_write(dev_priv, MIPI_DBI_BW_CTRL(port),
+		intel_de_write(dev_priv, MIPI_DBI_BW_CTRL(dev_priv, port),
 			       intel_dsi->bw_timer);
 
-		intel_de_write(dev_priv, MIPI_CLK_LANE_SWITCH_TIME_CNT(port),
+		intel_de_write(dev_priv, MIPI_CLK_LANE_SWITCH_TIME_CNT(dev_priv, port),
 			       intel_dsi->clk_lp_to_hs_count << LP_HS_SSW_CNT_SHIFT | intel_dsi->clk_hs_to_lp_count << HS_LP_PWR_SW_CNT_SHIFT);
 
 		if (is_vid_mode(intel_dsi)) {
@@ -1501,7 +1501,7 @@ static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
 				break;
 			}
 
-			intel_de_write(dev_priv, MIPI_VIDEO_MODE_FORMAT(port), fmt);
+			intel_de_write(dev_priv, MIPI_VIDEO_MODE_FORMAT(dev_priv, port), fmt);
 		}
 	}
 }
@@ -1517,17 +1517,17 @@ static void intel_dsi_unprepare(struct intel_encoder *encoder)
 
 	for_each_dsi_port(port, intel_dsi->ports) {
 		/* Panel commands can be sent when clock is in LP11 */
-		intel_de_write(dev_priv, MIPI_DEVICE_READY(port), 0x0);
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(dev_priv, port), 0x0);
 
 		if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
 			bxt_dsi_reset_clocks(encoder, port);
 		else
 			vlv_dsi_reset_clocks(encoder, port);
-		intel_de_write(dev_priv, MIPI_EOT_DISABLE(port), CLOCKSTOP);
+		intel_de_write(dev_priv, MIPI_EOT_DISABLE(dev_priv, port), CLOCKSTOP);
 
-		intel_de_rmw(dev_priv, MIPI_DSI_FUNC_PRG(port), VID_MODE_FORMAT_MASK, 0);
+		intel_de_rmw(dev_priv, MIPI_DSI_FUNC_PRG(dev_priv, port), VID_MODE_FORMAT_MASK, 0);
 
-		intel_de_write(dev_priv, MIPI_DEVICE_READY(port), 0x1);
+		intel_de_write(dev_priv, MIPI_DEVICE_READY(dev_priv, port), 0x1);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
index ae0a0b11bae3..858ac5de4572 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
@@ -369,9 +369,9 @@ void vlv_dsi_reset_clocks(struct intel_encoder *encoder, enum port port)
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 
-	temp = intel_de_read(dev_priv, MIPI_CTRL(port));
+	temp = intel_de_read(dev_priv, MIPI_CTRL(dev_priv, port));
 	temp &= ~ESCAPE_CLOCK_DIVIDER_MASK;
-	intel_de_write(dev_priv, MIPI_CTRL(port),
+	intel_de_write(dev_priv, MIPI_CTRL(dev_priv, port),
 		       temp | intel_dsi->escape_clk_div << ESCAPE_CLOCK_DIVIDER_SHIFT);
 }
 
@@ -587,7 +587,7 @@ void bxt_dsi_reset_clocks(struct intel_encoder *encoder, enum port port)
 
 		intel_de_rmw(dev_priv, MIPIO_TXESC_CLK_DIV2, GLK_TX_ESC_CLK_DIV2_MASK, 0);
 	}
-	intel_de_write(dev_priv, MIPI_EOT_DISABLE(port), CLOCKSTOP);
+	intel_de_write(dev_priv, MIPI_EOT_DISABLE(dev_priv, port), CLOCKSTOP);
 }
 
 static void assert_dsi_pll(struct drm_i915_private *i915, bool state)
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
index 12a608a73720..a8e7036fcf45 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
@@ -14,23 +14,20 @@
 #define _MIPI_MMIO_BASE(__i915) ((__i915)->display.dsi.mmio_base)
 
 #define _MIPI_PORT(port, a, c)	(((port) == PORT_A) ? a : c)	/* ports A and C only */
-#define _MMIO_MIPI(port, a, c)	_MMIO(_MIPI_PORT(port, a, c))
+#define _MMIO_MIPI(base, port, a, c)	_MMIO((base) + _MIPI_PORT(port, a, c))
 
 /* BXT MIPI mode configure */
-#define  _BXT_MIPIA_TRANS_HACTIVE			0x6B0F8
-#define  _BXT_MIPIC_TRANS_HACTIVE			0x6B8F8
-#define  BXT_MIPI_TRANS_HACTIVE(tc)	_MMIO_MIPI(tc, \
-		_BXT_MIPIA_TRANS_HACTIVE, _BXT_MIPIC_TRANS_HACTIVE)
+#define  _BXT_MIPIA_TRANS_HACTIVE		0xb0f8
+#define  _BXT_MIPIC_TRANS_HACTIVE		0xb8f8
+#define  BXT_MIPI_TRANS_HACTIVE(tc)		_MMIO_MIPI(BXT_MIPI_BASE, tc, _BXT_MIPIA_TRANS_HACTIVE, _BXT_MIPIC_TRANS_HACTIVE)
 
-#define  _BXT_MIPIA_TRANS_VACTIVE			0x6B0FC
-#define  _BXT_MIPIC_TRANS_VACTIVE			0x6B8FC
-#define  BXT_MIPI_TRANS_VACTIVE(tc)	_MMIO_MIPI(tc, \
-		_BXT_MIPIA_TRANS_VACTIVE, _BXT_MIPIC_TRANS_VACTIVE)
+#define  _BXT_MIPIA_TRANS_VACTIVE		0xb0fc
+#define  _BXT_MIPIC_TRANS_VACTIVE		0xb8fc
+#define  BXT_MIPI_TRANS_VACTIVE(tc)		_MMIO_MIPI(BXT_MIPI_BASE, tc, _BXT_MIPIA_TRANS_VACTIVE, _BXT_MIPIC_TRANS_VACTIVE)
 
-#define  _BXT_MIPIA_TRANS_VTOTAL			0x6B100
-#define  _BXT_MIPIC_TRANS_VTOTAL			0x6B900
-#define  BXT_MIPI_TRANS_VTOTAL(tc)	_MMIO_MIPI(tc, \
-		_BXT_MIPIA_TRANS_VTOTAL, _BXT_MIPIC_TRANS_VTOTAL)
+#define  _BXT_MIPIA_TRANS_VTOTAL		0xb100
+#define  _BXT_MIPIC_TRANS_VTOTAL		0xb900
+#define  BXT_MIPI_TRANS_VTOTAL(tc)		_MMIO_MIPI(BXT_MIPI_BASE, tc, _BXT_MIPIA_TRANS_VTOTAL, _BXT_MIPIC_TRANS_VTOTAL)
 
 #define BXT_P_DSI_REGULATOR_CFG			_MMIO(0x160020)
 #define  STAP_SELECT					(1 << 0)
@@ -38,14 +35,14 @@
 #define BXT_P_DSI_REGULATOR_TX_CTRL		_MMIO(0x160054)
 #define  HS_IO_CTRL_SELECT				(1 << 0)
 
-#define _MIPIA_PORT_CTRL			(VLV_DISPLAY_BASE + 0x61190)
-#define _MIPIC_PORT_CTRL			(VLV_DISPLAY_BASE + 0x61700)
-#define VLV_MIPI_PORT_CTRL(port)	_MMIO_MIPI(port, _MIPIA_PORT_CTRL, _MIPIC_PORT_CTRL)
+#define _MIPIA_PORT_CTRL			0x61190
+#define _MIPIC_PORT_CTRL			0x61700
+#define VLV_MIPI_PORT_CTRL(port)		_MMIO_MIPI(VLV_MIPI_BASE, port, _MIPIA_PORT_CTRL, _MIPIC_PORT_CTRL)
 
  /* BXT port control */
-#define _BXT_MIPIA_PORT_CTRL				0x6B0C0
-#define _BXT_MIPIC_PORT_CTRL				0x6B8C0
-#define BXT_MIPI_PORT_CTRL(tc)	_MMIO_MIPI(tc, _BXT_MIPIA_PORT_CTRL, _BXT_MIPIC_PORT_CTRL)
+#define _BXT_MIPIA_PORT_CTRL			0xb0c0
+#define _BXT_MIPIC_PORT_CTRL			0xb8c0
+#define BXT_MIPI_PORT_CTRL(tc)			_MMIO_MIPI(BXT_MIPI_BASE, tc, _BXT_MIPIA_PORT_CTRL, _BXT_MIPIC_PORT_CTRL)
 
 #define  DPI_ENABLE					(1 << 31) /* A + C */
 #define  MIPIA_MIPI4DPHY_DELAY_COUNT_SHIFT		27
@@ -87,17 +84,17 @@
 #define  LANE_CONFIGURATION_DUAL_LINK_A			(1 << 0)
 #define  LANE_CONFIGURATION_DUAL_LINK_B			(2 << 0)
 
-#define _MIPIA_TEARING_CTRL			(VLV_DISPLAY_BASE + 0x61194)
-#define _MIPIC_TEARING_CTRL			(VLV_DISPLAY_BASE + 0x61704)
-#define VLV_MIPI_TEARING_CTRL(port)		_MMIO_MIPI(port, _MIPIA_TEARING_CTRL, _MIPIC_TEARING_CTRL)
+#define _MIPIA_TEARING_CTRL			0x61194
+#define _MIPIC_TEARING_CTRL			0x61704
+#define VLV_MIPI_TEARING_CTRL(port)			_MMIO_MIPI(VLV_MIPI_BASE, port, _MIPIA_TEARING_CTRL, _MIPIC_TEARING_CTRL)
 #define  TEARING_EFFECT_DELAY_SHIFT			0
 #define  TEARING_EFFECT_DELAY_MASK			(0xffff << 0)
 
 /* MIPI DSI Controller and D-PHY registers */
 
-#define _MIPIA_DEVICE_READY		(_MIPI_MMIO_BASE(dev_priv) + 0xb000)
-#define _MIPIC_DEVICE_READY		(_MIPI_MMIO_BASE(dev_priv) + 0xb800)
-#define MIPI_DEVICE_READY(port)		_MMIO_MIPI(port, _MIPIA_DEVICE_READY, _MIPIC_DEVICE_READY)
+#define _MIPIA_DEVICE_READY			0xb000
+#define _MIPIC_DEVICE_READY			0xb800
+#define MIPI_DEVICE_READY(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_DEVICE_READY, _MIPIC_DEVICE_READY)
 #define  BUS_POSSESSION					(1 << 3) /* set to give bus to receiver */
 #define  ULPS_STATE_MASK				(3 << 1)
 #define  ULPS_STATE_ENTER				(2 << 1)
@@ -105,12 +102,12 @@
 #define  ULPS_STATE_NORMAL_OPERATION			(0 << 1)
 #define  DEVICE_READY					(1 << 0)
 
-#define _MIPIA_INTR_STAT		(_MIPI_MMIO_BASE(dev_priv) + 0xb004)
-#define _MIPIC_INTR_STAT		(_MIPI_MMIO_BASE(dev_priv) + 0xb804)
-#define MIPI_INTR_STAT(port)		_MMIO_MIPI(port, _MIPIA_INTR_STAT, _MIPIC_INTR_STAT)
-#define _MIPIA_INTR_EN			(_MIPI_MMIO_BASE(dev_priv) + 0xb008)
-#define _MIPIC_INTR_EN			(_MIPI_MMIO_BASE(dev_priv) + 0xb808)
-#define MIPI_INTR_EN(port)		_MMIO_MIPI(port, _MIPIA_INTR_EN, _MIPIC_INTR_EN)
+#define _MIPIA_INTR_STAT			0xb004
+#define _MIPIC_INTR_STAT			0xb804
+#define MIPI_INTR_STAT(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_INTR_STAT, _MIPIC_INTR_STAT)
+#define _MIPIA_INTR_EN				0xb008
+#define _MIPIC_INTR_EN				0xb808
+#define MIPI_INTR_EN(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_INTR_EN, _MIPIC_INTR_EN)
 #define  TEARING_EFFECT					(1 << 31)
 #define  SPL_PKT_SENT_INTERRUPT				(1 << 30)
 #define  GEN_READ_DATA_AVAIL				(1 << 29)
@@ -144,9 +141,9 @@
 #define  RXSOT_SYNC_ERROR				(1 << 1)
 #define  RXSOT_ERROR					(1 << 0)
 
-#define _MIPIA_DSI_FUNC_PRG		(_MIPI_MMIO_BASE(dev_priv) + 0xb00c)
-#define _MIPIC_DSI_FUNC_PRG		(_MIPI_MMIO_BASE(dev_priv) + 0xb80c)
-#define MIPI_DSI_FUNC_PRG(port)		_MMIO_MIPI(port, _MIPIA_DSI_FUNC_PRG, _MIPIC_DSI_FUNC_PRG)
+#define _MIPIA_DSI_FUNC_PRG			0xb00c
+#define _MIPIC_DSI_FUNC_PRG			0xb80c
+#define MIPI_DSI_FUNC_PRG(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_DSI_FUNC_PRG, _MIPIC_DSI_FUNC_PRG)
 #define  CMD_MODE_DATA_WIDTH_MASK			(7 << 13)
 #define  CMD_MODE_NOT_SUPPORTED				(0 << 13)
 #define  CMD_MODE_DATA_WIDTH_16_BIT			(1 << 13)
@@ -167,77 +164,77 @@
 #define  DATA_LANES_PRG_REG_SHIFT			0
 #define  DATA_LANES_PRG_REG_MASK			(7 << 0)
 
-#define _MIPIA_HS_TX_TIMEOUT		(_MIPI_MMIO_BASE(dev_priv) + 0xb010)
-#define _MIPIC_HS_TX_TIMEOUT		(_MIPI_MMIO_BASE(dev_priv) + 0xb810)
-#define MIPI_HS_TX_TIMEOUT(port)	_MMIO_MIPI(port, _MIPIA_HS_TX_TIMEOUT, _MIPIC_HS_TX_TIMEOUT)
+#define _MIPIA_HS_TX_TIMEOUT			0xb010
+#define _MIPIC_HS_TX_TIMEOUT			0xb810
+#define MIPI_HS_TX_TIMEOUT(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_HS_TX_TIMEOUT, _MIPIC_HS_TX_TIMEOUT)
 #define  HIGH_SPEED_TX_TIMEOUT_COUNTER_MASK		0xffffff
 
-#define _MIPIA_LP_RX_TIMEOUT		(_MIPI_MMIO_BASE(dev_priv) + 0xb014)
-#define _MIPIC_LP_RX_TIMEOUT		(_MIPI_MMIO_BASE(dev_priv) + 0xb814)
-#define MIPI_LP_RX_TIMEOUT(port)	_MMIO_MIPI(port, _MIPIA_LP_RX_TIMEOUT, _MIPIC_LP_RX_TIMEOUT)
+#define _MIPIA_LP_RX_TIMEOUT			0xb014
+#define _MIPIC_LP_RX_TIMEOUT			0xb814
+#define MIPI_LP_RX_TIMEOUT(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_LP_RX_TIMEOUT, _MIPIC_LP_RX_TIMEOUT)
 #define  LOW_POWER_RX_TIMEOUT_COUNTER_MASK		0xffffff
 
-#define _MIPIA_TURN_AROUND_TIMEOUT	(_MIPI_MMIO_BASE(dev_priv) + 0xb018)
-#define _MIPIC_TURN_AROUND_TIMEOUT	(_MIPI_MMIO_BASE(dev_priv) + 0xb818)
-#define MIPI_TURN_AROUND_TIMEOUT(port)	_MMIO_MIPI(port, _MIPIA_TURN_AROUND_TIMEOUT, _MIPIC_TURN_AROUND_TIMEOUT)
+#define _MIPIA_TURN_AROUND_TIMEOUT		0xb018
+#define _MIPIC_TURN_AROUND_TIMEOUT		0xb818
+#define MIPI_TURN_AROUND_TIMEOUT(i915, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_TURN_AROUND_TIMEOUT, _MIPIC_TURN_AROUND_TIMEOUT)
 #define  TURN_AROUND_TIMEOUT_MASK			0x3f
 
-#define _MIPIA_DEVICE_RESET_TIMER	(_MIPI_MMIO_BASE(dev_priv) + 0xb01c)
-#define _MIPIC_DEVICE_RESET_TIMER	(_MIPI_MMIO_BASE(dev_priv) + 0xb81c)
-#define MIPI_DEVICE_RESET_TIMER(port)	_MMIO_MIPI(port, _MIPIA_DEVICE_RESET_TIMER, _MIPIC_DEVICE_RESET_TIMER)
+#define _MIPIA_DEVICE_RESET_TIMER		0xb01c
+#define _MIPIC_DEVICE_RESET_TIMER		0xb81c
+#define MIPI_DEVICE_RESET_TIMER(i915, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_DEVICE_RESET_TIMER, _MIPIC_DEVICE_RESET_TIMER)
 #define  DEVICE_RESET_TIMER_MASK			0xffff
 
-#define _MIPIA_DPI_RESOLUTION		(_MIPI_MMIO_BASE(dev_priv) + 0xb020)
-#define _MIPIC_DPI_RESOLUTION		(_MIPI_MMIO_BASE(dev_priv) + 0xb820)
-#define MIPI_DPI_RESOLUTION(port)	_MMIO_MIPI(port, _MIPIA_DPI_RESOLUTION, _MIPIC_DPI_RESOLUTION)
+#define _MIPIA_DPI_RESOLUTION			0xb020
+#define _MIPIC_DPI_RESOLUTION			0xb820
+#define MIPI_DPI_RESOLUTION(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_DPI_RESOLUTION, _MIPIC_DPI_RESOLUTION)
 #define  VERTICAL_ADDRESS_SHIFT				16
 #define  VERTICAL_ADDRESS_MASK				(0xffff << 16)
 #define  HORIZONTAL_ADDRESS_SHIFT			0
 #define  HORIZONTAL_ADDRESS_MASK			0xffff
 
-#define _MIPIA_DBI_FIFO_THROTTLE	(_MIPI_MMIO_BASE(dev_priv) + 0xb024)
-#define _MIPIC_DBI_FIFO_THROTTLE	(_MIPI_MMIO_BASE(dev_priv) + 0xb824)
-#define MIPI_DBI_FIFO_THROTTLE(port)	_MMIO_MIPI(port, _MIPIA_DBI_FIFO_THROTTLE, _MIPIC_DBI_FIFO_THROTTLE)
+#define _MIPIA_DBI_FIFO_THROTTLE		0xb024
+#define _MIPIC_DBI_FIFO_THROTTLE		0xb824
+#define MIPI_DBI_FIFO_THROTTLE(i915, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_DBI_FIFO_THROTTLE, _MIPIC_DBI_FIFO_THROTTLE)
 #define  DBI_FIFO_EMPTY_HALF				(0 << 0)
 #define  DBI_FIFO_EMPTY_QUARTER				(1 << 0)
 #define  DBI_FIFO_EMPTY_7_LOCATIONS			(2 << 0)
 
 /* regs below are bits 15:0 */
-#define _MIPIA_HSYNC_PADDING_COUNT	(_MIPI_MMIO_BASE(dev_priv) + 0xb028)
-#define _MIPIC_HSYNC_PADDING_COUNT	(_MIPI_MMIO_BASE(dev_priv) + 0xb828)
-#define MIPI_HSYNC_PADDING_COUNT(port)	_MMIO_MIPI(port, _MIPIA_HSYNC_PADDING_COUNT, _MIPIC_HSYNC_PADDING_COUNT)
+#define _MIPIA_HSYNC_PADDING_COUNT		0xb028
+#define _MIPIC_HSYNC_PADDING_COUNT		0xb828
+#define MIPI_HSYNC_PADDING_COUNT(i915, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_HSYNC_PADDING_COUNT, _MIPIC_HSYNC_PADDING_COUNT)
 
-#define _MIPIA_HBP_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb02c)
-#define _MIPIC_HBP_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb82c)
-#define MIPI_HBP_COUNT(port)		_MMIO_MIPI(port, _MIPIA_HBP_COUNT, _MIPIC_HBP_COUNT)
+#define _MIPIA_HBP_COUNT			0xb02c
+#define _MIPIC_HBP_COUNT			0xb82c
+#define MIPI_HBP_COUNT(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_HBP_COUNT, _MIPIC_HBP_COUNT)
 
-#define _MIPIA_HFP_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb030)
-#define _MIPIC_HFP_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb830)
-#define MIPI_HFP_COUNT(port)		_MMIO_MIPI(port, _MIPIA_HFP_COUNT, _MIPIC_HFP_COUNT)
+#define _MIPIA_HFP_COUNT			0xb030
+#define _MIPIC_HFP_COUNT			0xb830
+#define MIPI_HFP_COUNT(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_HFP_COUNT, _MIPIC_HFP_COUNT)
 
-#define _MIPIA_HACTIVE_AREA_COUNT	(_MIPI_MMIO_BASE(dev_priv) + 0xb034)
-#define _MIPIC_HACTIVE_AREA_COUNT	(_MIPI_MMIO_BASE(dev_priv) + 0xb834)
-#define MIPI_HACTIVE_AREA_COUNT(port)	_MMIO_MIPI(port, _MIPIA_HACTIVE_AREA_COUNT, _MIPIC_HACTIVE_AREA_COUNT)
+#define _MIPIA_HACTIVE_AREA_COUNT		0xb034
+#define _MIPIC_HACTIVE_AREA_COUNT		0xb834
+#define MIPI_HACTIVE_AREA_COUNT(i915, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_HACTIVE_AREA_COUNT, _MIPIC_HACTIVE_AREA_COUNT)
 
-#define _MIPIA_VSYNC_PADDING_COUNT	(_MIPI_MMIO_BASE(dev_priv) + 0xb038)
-#define _MIPIC_VSYNC_PADDING_COUNT	(_MIPI_MMIO_BASE(dev_priv) + 0xb838)
-#define MIPI_VSYNC_PADDING_COUNT(port)	_MMIO_MIPI(port, _MIPIA_VSYNC_PADDING_COUNT, _MIPIC_VSYNC_PADDING_COUNT)
+#define _MIPIA_VSYNC_PADDING_COUNT		0xb038
+#define _MIPIC_VSYNC_PADDING_COUNT		0xb838
+#define MIPI_VSYNC_PADDING_COUNT(i915, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_VSYNC_PADDING_COUNT, _MIPIC_VSYNC_PADDING_COUNT)
 
-#define _MIPIA_VBP_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb03c)
-#define _MIPIC_VBP_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb83c)
-#define MIPI_VBP_COUNT(port)		_MMIO_MIPI(port, _MIPIA_VBP_COUNT, _MIPIC_VBP_COUNT)
+#define _MIPIA_VBP_COUNT			0xb03c
+#define _MIPIC_VBP_COUNT			0xb83c
+#define MIPI_VBP_COUNT(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_VBP_COUNT, _MIPIC_VBP_COUNT)
 
-#define _MIPIA_VFP_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb040)
-#define _MIPIC_VFP_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb840)
-#define MIPI_VFP_COUNT(port)		_MMIO_MIPI(port, _MIPIA_VFP_COUNT, _MIPIC_VFP_COUNT)
+#define _MIPIA_VFP_COUNT			0xb040
+#define _MIPIC_VFP_COUNT			0xb840
+#define MIPI_VFP_COUNT(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_VFP_COUNT, _MIPIC_VFP_COUNT)
 
-#define _MIPIA_HIGH_LOW_SWITCH_COUNT	(_MIPI_MMIO_BASE(dev_priv) + 0xb044)
-#define _MIPIC_HIGH_LOW_SWITCH_COUNT	(_MIPI_MMIO_BASE(dev_priv) + 0xb844)
-#define MIPI_HIGH_LOW_SWITCH_COUNT(port)	_MMIO_MIPI(port,	_MIPIA_HIGH_LOW_SWITCH_COUNT, _MIPIC_HIGH_LOW_SWITCH_COUNT)
+#define _MIPIA_HIGH_LOW_SWITCH_COUNT		0xb044
+#define _MIPIC_HIGH_LOW_SWITCH_COUNT		0xb844
+#define MIPI_HIGH_LOW_SWITCH_COUNT(i915, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port,	_MIPIA_HIGH_LOW_SWITCH_COUNT, _MIPIC_HIGH_LOW_SWITCH_COUNT)
 
-#define _MIPIA_DPI_CONTROL		(_MIPI_MMIO_BASE(dev_priv) + 0xb048)
-#define _MIPIC_DPI_CONTROL		(_MIPI_MMIO_BASE(dev_priv) + 0xb848)
-#define MIPI_DPI_CONTROL(port)		_MMIO_MIPI(port, _MIPIA_DPI_CONTROL, _MIPIC_DPI_CONTROL)
+#define _MIPIA_DPI_CONTROL			0xb048
+#define _MIPIC_DPI_CONTROL			0xb848
+#define MIPI_DPI_CONTROL(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_DPI_CONTROL, _MIPIC_DPI_CONTROL)
 #define  DPI_LP_MODE					(1 << 6)
 #define  BACKLIGHT_OFF					(1 << 5)
 #define  BACKLIGHT_ON					(1 << 4)
@@ -246,28 +243,27 @@
 #define  TURN_ON					(1 << 1)
 #define  SHUTDOWN					(1 << 0)
 
-#define _MIPIA_DPI_DATA			(_MIPI_MMIO_BASE(dev_priv) + 0xb04c)
-#define _MIPIC_DPI_DATA			(_MIPI_MMIO_BASE(dev_priv) + 0xb84c)
-#define MIPI_DPI_DATA(port)		_MMIO_MIPI(port, _MIPIA_DPI_DATA, _MIPIC_DPI_DATA)
+#define _MIPIA_DPI_DATA				0xb04c
+#define _MIPIC_DPI_DATA				0xb84c
+#define MIPI_DPI_DATA(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_DPI_DATA, _MIPIC_DPI_DATA)
 #define  COMMAND_BYTE_SHIFT				0
 #define  COMMAND_BYTE_MASK				(0x3f << 0)
 
-#define _MIPIA_INIT_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb050)
-#define _MIPIC_INIT_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb850)
-#define MIPI_INIT_COUNT(port)		_MMIO_MIPI(port, _MIPIA_INIT_COUNT, _MIPIC_INIT_COUNT)
+#define _MIPIA_INIT_COUNT			0xb050
+#define _MIPIC_INIT_COUNT			0xb850
+#define MIPI_INIT_COUNT(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_INIT_COUNT, _MIPIC_INIT_COUNT)
 #define  MASTER_INIT_TIMER_SHIFT			0
 #define  MASTER_INIT_TIMER_MASK				(0xffff << 0)
 
-#define _MIPIA_MAX_RETURN_PKT_SIZE	(_MIPI_MMIO_BASE(dev_priv) + 0xb054)
-#define _MIPIC_MAX_RETURN_PKT_SIZE	(_MIPI_MMIO_BASE(dev_priv) + 0xb854)
-#define MIPI_MAX_RETURN_PKT_SIZE(port)	_MMIO_MIPI(port, \
-			_MIPIA_MAX_RETURN_PKT_SIZE, _MIPIC_MAX_RETURN_PKT_SIZE)
+#define _MIPIA_MAX_RETURN_PKT_SIZE		0xb054
+#define _MIPIC_MAX_RETURN_PKT_SIZE		0xb854
+#define MIPI_MAX_RETURN_PKT_SIZE(i915, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_MAX_RETURN_PKT_SIZE, _MIPIC_MAX_RETURN_PKT_SIZE)
 #define  MAX_RETURN_PKT_SIZE_SHIFT			0
 #define  MAX_RETURN_PKT_SIZE_MASK			(0x3ff << 0)
 
-#define _MIPIA_VIDEO_MODE_FORMAT	(_MIPI_MMIO_BASE(dev_priv) + 0xb058)
-#define _MIPIC_VIDEO_MODE_FORMAT	(_MIPI_MMIO_BASE(dev_priv) + 0xb858)
-#define MIPI_VIDEO_MODE_FORMAT(port)	_MMIO_MIPI(port, _MIPIA_VIDEO_MODE_FORMAT, _MIPIC_VIDEO_MODE_FORMAT)
+#define _MIPIA_VIDEO_MODE_FORMAT		0xb058
+#define _MIPIC_VIDEO_MODE_FORMAT		0xb858
+#define MIPI_VIDEO_MODE_FORMAT(i915, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_VIDEO_MODE_FORMAT, _MIPIC_VIDEO_MODE_FORMAT)
 #define  RANDOM_DPI_DISPLAY_RESOLUTION			(1 << 4)
 #define  DISABLE_VIDEO_BTA				(1 << 3)
 #define  IP_TG_CONFIG					(1 << 2)
@@ -275,9 +271,9 @@
 #define  VIDEO_MODE_NON_BURST_WITH_SYNC_EVENTS		(2 << 0)
 #define  VIDEO_MODE_BURST				(3 << 0)
 
-#define _MIPIA_EOT_DISABLE		(_MIPI_MMIO_BASE(dev_priv) + 0xb05c)
-#define _MIPIC_EOT_DISABLE		(_MIPI_MMIO_BASE(dev_priv) + 0xb85c)
-#define MIPI_EOT_DISABLE(port)		_MMIO_MIPI(port, _MIPIA_EOT_DISABLE, _MIPIC_EOT_DISABLE)
+#define _MIPIA_EOT_DISABLE			0xb05c
+#define _MIPIC_EOT_DISABLE			0xb85c
+#define MIPI_EOT_DISABLE(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_EOT_DISABLE, _MIPIC_EOT_DISABLE)
 #define  BXT_DEFEATURE_DPI_FIFO_CTR			(1 << 9)
 #define  BXT_DPHY_DEFEATURE_EN				(1 << 8)
 #define  LP_RX_TIMEOUT_ERROR_RECOVERY_DISABLE		(1 << 7)
@@ -289,36 +285,36 @@
 #define  CLOCKSTOP					(1 << 1)
 #define  EOT_DISABLE					(1 << 0)
 
-#define _MIPIA_LP_BYTECLK		(_MIPI_MMIO_BASE(dev_priv) + 0xb060)
-#define _MIPIC_LP_BYTECLK		(_MIPI_MMIO_BASE(dev_priv) + 0xb860)
-#define MIPI_LP_BYTECLK(port)		_MMIO_MIPI(port, _MIPIA_LP_BYTECLK, _MIPIC_LP_BYTECLK)
+#define _MIPIA_LP_BYTECLK			0xb060
+#define _MIPIC_LP_BYTECLK			0xb860
+#define MIPI_LP_BYTECLK(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_LP_BYTECLK, _MIPIC_LP_BYTECLK)
 #define  LP_BYTECLK_SHIFT				0
 #define  LP_BYTECLK_MASK				(0xffff << 0)
 
-#define _MIPIA_TLPX_TIME_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb0a4)
-#define _MIPIC_TLPX_TIME_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb8a4)
-#define MIPI_TLPX_TIME_COUNT(port)	 _MMIO_MIPI(port, _MIPIA_TLPX_TIME_COUNT, _MIPIC_TLPX_TIME_COUNT)
+#define _MIPIA_TLPX_TIME_COUNT			0xb0a4
+#define _MIPIC_TLPX_TIME_COUNT			0xb8a4
+#define MIPI_TLPX_TIME_COUNT(i915, port)	 _MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_TLPX_TIME_COUNT, _MIPIC_TLPX_TIME_COUNT)
 
-#define _MIPIA_CLK_LANE_TIMING		(_MIPI_MMIO_BASE(dev_priv) + 0xb098)
-#define _MIPIC_CLK_LANE_TIMING		(_MIPI_MMIO_BASE(dev_priv) + 0xb898)
-#define MIPI_CLK_LANE_TIMING(port)	 _MMIO_MIPI(port, _MIPIA_CLK_LANE_TIMING, _MIPIC_CLK_LANE_TIMING)
+#define _MIPIA_CLK_LANE_TIMING			0xb098
+#define _MIPIC_CLK_LANE_TIMING			0xb898
+#define MIPI_CLK_LANE_TIMING(i915, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_CLK_LANE_TIMING, _MIPIC_CLK_LANE_TIMING)
 
 /* bits 31:0 */
-#define _MIPIA_LP_GEN_DATA		(_MIPI_MMIO_BASE(dev_priv) + 0xb064)
-#define _MIPIC_LP_GEN_DATA		(_MIPI_MMIO_BASE(dev_priv) + 0xb864)
-#define MIPI_LP_GEN_DATA(port)		_MMIO_MIPI(port, _MIPIA_LP_GEN_DATA, _MIPIC_LP_GEN_DATA)
+#define _MIPIA_LP_GEN_DATA			0xb064
+#define _MIPIC_LP_GEN_DATA			0xb864
+#define MIPI_LP_GEN_DATA(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_LP_GEN_DATA, _MIPIC_LP_GEN_DATA)
 
 /* bits 31:0 */
-#define _MIPIA_HS_GEN_DATA		(_MIPI_MMIO_BASE(dev_priv) + 0xb068)
-#define _MIPIC_HS_GEN_DATA		(_MIPI_MMIO_BASE(dev_priv) + 0xb868)
-#define MIPI_HS_GEN_DATA(port)		_MMIO_MIPI(port, _MIPIA_HS_GEN_DATA, _MIPIC_HS_GEN_DATA)
-
-#define _MIPIA_LP_GEN_CTRL		(_MIPI_MMIO_BASE(dev_priv) + 0xb06c)
-#define _MIPIC_LP_GEN_CTRL		(_MIPI_MMIO_BASE(dev_priv) + 0xb86c)
-#define MIPI_LP_GEN_CTRL(port)		_MMIO_MIPI(port, _MIPIA_LP_GEN_CTRL, _MIPIC_LP_GEN_CTRL)
-#define _MIPIA_HS_GEN_CTRL		(_MIPI_MMIO_BASE(dev_priv) + 0xb070)
-#define _MIPIC_HS_GEN_CTRL		(_MIPI_MMIO_BASE(dev_priv) + 0xb870)
-#define MIPI_HS_GEN_CTRL(port)		_MMIO_MIPI(port, _MIPIA_HS_GEN_CTRL, _MIPIC_HS_GEN_CTRL)
+#define _MIPIA_HS_GEN_DATA			0xb068
+#define _MIPIC_HS_GEN_DATA			0xb868
+#define MIPI_HS_GEN_DATA(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_HS_GEN_DATA, _MIPIC_HS_GEN_DATA)
+
+#define _MIPIA_LP_GEN_CTRL			0xb06c
+#define _MIPIC_LP_GEN_CTRL			0xb86c
+#define MIPI_LP_GEN_CTRL(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_LP_GEN_CTRL, _MIPIC_LP_GEN_CTRL)
+#define _MIPIA_HS_GEN_CTRL			0xb070
+#define _MIPIC_HS_GEN_CTRL			0xb870
+#define MIPI_HS_GEN_CTRL(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_HS_GEN_CTRL, _MIPIC_HS_GEN_CTRL)
 #define  LONG_PACKET_WORD_COUNT_SHIFT			8
 #define  LONG_PACKET_WORD_COUNT_MASK			(0xffff << 8)
 #define  SHORT_PACKET_PARAM_SHIFT			8
@@ -329,9 +325,9 @@
 #define  DATA_TYPE_MASK					(0x3f << 0)
 /* data type values, see include/video/mipi_display.h */
 
-#define _MIPIA_GEN_FIFO_STAT		(_MIPI_MMIO_BASE(dev_priv) + 0xb074)
-#define _MIPIC_GEN_FIFO_STAT		(_MIPI_MMIO_BASE(dev_priv) + 0xb874)
-#define MIPI_GEN_FIFO_STAT(port)	_MMIO_MIPI(port, _MIPIA_GEN_FIFO_STAT, _MIPIC_GEN_FIFO_STAT)
+#define _MIPIA_GEN_FIFO_STAT			0xb074
+#define _MIPIC_GEN_FIFO_STAT			0xb874
+#define MIPI_GEN_FIFO_STAT(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_GEN_FIFO_STAT, _MIPIC_GEN_FIFO_STAT)
 #define  DPI_FIFO_EMPTY					(1 << 28)
 #define  DBI_FIFO_EMPTY					(1 << 27)
 #define  LP_CTRL_FIFO_EMPTY				(1 << 26)
@@ -347,16 +343,16 @@
 #define  HS_DATA_FIFO_HALF_EMPTY			(1 << 1)
 #define  HS_DATA_FIFO_FULL				(1 << 0)
 
-#define _MIPIA_HS_LS_DBI_ENABLE		(_MIPI_MMIO_BASE(dev_priv) + 0xb078)
-#define _MIPIC_HS_LS_DBI_ENABLE		(_MIPI_MMIO_BASE(dev_priv) + 0xb878)
-#define MIPI_HS_LP_DBI_ENABLE(port)	_MMIO_MIPI(port, _MIPIA_HS_LS_DBI_ENABLE, _MIPIC_HS_LS_DBI_ENABLE)
+#define _MIPIA_HS_LS_DBI_ENABLE			0xb078
+#define _MIPIC_HS_LS_DBI_ENABLE			0xb878
+#define MIPI_HS_LP_DBI_ENABLE(i915, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_HS_LS_DBI_ENABLE, _MIPIC_HS_LS_DBI_ENABLE)
 #define  DBI_HS_LP_MODE_MASK				(1 << 0)
 #define  DBI_LP_MODE					(1 << 0)
 #define  DBI_HS_MODE					(0 << 0)
 
-#define _MIPIA_DPHY_PARAM		(_MIPI_MMIO_BASE(dev_priv) + 0xb080)
-#define _MIPIC_DPHY_PARAM		(_MIPI_MMIO_BASE(dev_priv) + 0xb880)
-#define MIPI_DPHY_PARAM(port)		_MMIO_MIPI(port, _MIPIA_DPHY_PARAM, _MIPIC_DPHY_PARAM)
+#define _MIPIA_DPHY_PARAM			0xb080
+#define _MIPIC_DPHY_PARAM			0xb880
+#define MIPI_DPHY_PARAM(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_DPHY_PARAM, _MIPIC_DPHY_PARAM)
 #define  EXIT_ZERO_COUNT_SHIFT				24
 #define  EXIT_ZERO_COUNT_MASK				(0x3f << 24)
 #define  TRAIL_COUNT_SHIFT				16
@@ -366,34 +362,34 @@
 #define  PREPARE_COUNT_SHIFT				0
 #define  PREPARE_COUNT_MASK				(0x3f << 0)
 
-#define _MIPIA_DBI_BW_CTRL		(_MIPI_MMIO_BASE(dev_priv) + 0xb084)
-#define _MIPIC_DBI_BW_CTRL		(_MIPI_MMIO_BASE(dev_priv) + 0xb884)
-#define MIPI_DBI_BW_CTRL(port)		_MMIO_MIPI(port, _MIPIA_DBI_BW_CTRL, _MIPIC_DBI_BW_CTRL)
+#define _MIPIA_DBI_BW_CTRL			0xb084
+#define _MIPIC_DBI_BW_CTRL			0xb884
+#define MIPI_DBI_BW_CTRL(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_DBI_BW_CTRL, _MIPIC_DBI_BW_CTRL)
 
-#define _MIPIA_CLK_LANE_SWITCH_TIME_CNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb088)
-#define _MIPIC_CLK_LANE_SWITCH_TIME_CNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb888)
-#define MIPI_CLK_LANE_SWITCH_TIME_CNT(port)	_MMIO_MIPI(port, _MIPIA_CLK_LANE_SWITCH_TIME_CNT, _MIPIC_CLK_LANE_SWITCH_TIME_CNT)
+#define _MIPIA_CLK_LANE_SWITCH_TIME_CNT		0xb088
+#define _MIPIC_CLK_LANE_SWITCH_TIME_CNT		0xb888
+#define MIPI_CLK_LANE_SWITCH_TIME_CNT(i915, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_CLK_LANE_SWITCH_TIME_CNT, _MIPIC_CLK_LANE_SWITCH_TIME_CNT)
 #define  LP_HS_SSW_CNT_SHIFT				16
 #define  LP_HS_SSW_CNT_MASK				(0xffff << 16)
 #define  HS_LP_PWR_SW_CNT_SHIFT				0
 #define  HS_LP_PWR_SW_CNT_MASK				(0xffff << 0)
 
-#define _MIPIA_STOP_STATE_STALL		(_MIPI_MMIO_BASE(dev_priv) + 0xb08c)
-#define _MIPIC_STOP_STATE_STALL		(_MIPI_MMIO_BASE(dev_priv) + 0xb88c)
-#define MIPI_STOP_STATE_STALL(port)	_MMIO_MIPI(port, _MIPIA_STOP_STATE_STALL, _MIPIC_STOP_STATE_STALL)
+#define _MIPIA_STOP_STATE_STALL			0xb08c
+#define _MIPIC_STOP_STATE_STALL			0xb88c
+#define MIPI_STOP_STATE_STALL(i915, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_STOP_STATE_STALL, _MIPIC_STOP_STATE_STALL)
 #define  STOP_STATE_STALL_COUNTER_SHIFT			0
 #define  STOP_STATE_STALL_COUNTER_MASK			(0xff << 0)
 
-#define _MIPIA_INTR_STAT_REG_1		(_MIPI_MMIO_BASE(dev_priv) + 0xb090)
-#define _MIPIC_INTR_STAT_REG_1		(_MIPI_MMIO_BASE(dev_priv) + 0xb890)
-#define MIPI_INTR_STAT_REG_1(port)	_MMIO_MIPI(port, _MIPIA_INTR_STAT_REG_1, _MIPIC_INTR_STAT_REG_1)
-#define _MIPIA_INTR_EN_REG_1		(_MIPI_MMIO_BASE(dev_priv) + 0xb094)
-#define _MIPIC_INTR_EN_REG_1		(_MIPI_MMIO_BASE(dev_priv) + 0xb894)
-#define MIPI_INTR_EN_REG_1(port)	_MMIO_MIPI(port, _MIPIA_INTR_EN_REG_1, _MIPIC_INTR_EN_REG_1)
+#define _MIPIA_INTR_STAT_REG_1			0xb090
+#define _MIPIC_INTR_STAT_REG_1			0xb890
+#define MIPI_INTR_STAT_REG_1(i915, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_INTR_STAT_REG_1, _MIPIC_INTR_STAT_REG_1)
+#define _MIPIA_INTR_EN_REG_1			0xb094
+#define _MIPIC_INTR_EN_REG_1			0xb894
+#define MIPI_INTR_EN_REG_1(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_INTR_EN_REG_1, _MIPIC_INTR_EN_REG_1)
 #define  RX_CONTENTION_DETECTED				(1 << 0)
 
 /* XXX: only pipe A ?!? */
-#define MIPIA_DBI_TYPEC_CTRL		(_MIPI_MMIO_BASE(dev_priv) + 0xb100)
+#define MIPIA_DBI_TYPEC_CTRL(i915)		(_MIPI_MMIO_BASE(i915) + 0xb100)
 #define  DBI_TYPEC_ENABLE				(1 << 31)
 #define  DBI_TYPEC_WIP					(1 << 30)
 #define  DBI_TYPEC_OPTION_SHIFT				28
@@ -406,9 +402,9 @@
 
 /* MIPI adapter registers */
 
-#define _MIPIA_CTRL			(_MIPI_MMIO_BASE(dev_priv) + 0xb104)
-#define _MIPIC_CTRL			(_MIPI_MMIO_BASE(dev_priv) + 0xb904)
-#define MIPI_CTRL(port)			_MMIO_MIPI(port, _MIPIA_CTRL, _MIPIC_CTRL)
+#define _MIPIA_CTRL				0xb104
+#define _MIPIC_CTRL				0xb904
+#define MIPI_CTRL(i915, port)			_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_CTRL, _MIPIC_CTRL)
 #define  ESCAPE_CLOCK_DIVIDER_SHIFT			5 /* A only */
 #define  ESCAPE_CLOCK_DIVIDER_MASK			(3 << 5)
 #define  ESCAPE_CLOCK_DIVIDER_1				(0 << 5)
@@ -439,41 +435,41 @@
 #define  GLK_MIPIIO_PORT_POWERED			(1 << 1) /* RO */
 #define  GLK_MIPIIO_ENABLE				(1 << 0)
 
-#define _MIPIA_DATA_ADDRESS		(_MIPI_MMIO_BASE(dev_priv) + 0xb108)
-#define _MIPIC_DATA_ADDRESS		(_MIPI_MMIO_BASE(dev_priv) + 0xb908)
-#define MIPI_DATA_ADDRESS(port)		_MMIO_MIPI(port, _MIPIA_DATA_ADDRESS, _MIPIC_DATA_ADDRESS)
+#define _MIPIA_DATA_ADDRESS			0xb108
+#define _MIPIC_DATA_ADDRESS			0xb908
+#define MIPI_DATA_ADDRESS(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_DATA_ADDRESS, _MIPIC_DATA_ADDRESS)
 #define  DATA_MEM_ADDRESS_SHIFT				5
 #define  DATA_MEM_ADDRESS_MASK				(0x7ffffff << 5)
 #define  DATA_VALID					(1 << 0)
 
-#define _MIPIA_DATA_LENGTH		(_MIPI_MMIO_BASE(dev_priv) + 0xb10c)
-#define _MIPIC_DATA_LENGTH		(_MIPI_MMIO_BASE(dev_priv) + 0xb90c)
-#define MIPI_DATA_LENGTH(port)		_MMIO_MIPI(port, _MIPIA_DATA_LENGTH, _MIPIC_DATA_LENGTH)
+#define _MIPIA_DATA_LENGTH			0xb10c
+#define _MIPIC_DATA_LENGTH			0xb90c
+#define MIPI_DATA_LENGTH(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_DATA_LENGTH, _MIPIC_DATA_LENGTH)
 #define  DATA_LENGTH_SHIFT				0
 #define  DATA_LENGTH_MASK				(0xfffff << 0)
 
-#define _MIPIA_COMMAND_ADDRESS		(_MIPI_MMIO_BASE(dev_priv) + 0xb110)
-#define _MIPIC_COMMAND_ADDRESS		(_MIPI_MMIO_BASE(dev_priv) + 0xb910)
-#define MIPI_COMMAND_ADDRESS(port)	_MMIO_MIPI(port, _MIPIA_COMMAND_ADDRESS, _MIPIC_COMMAND_ADDRESS)
+#define _MIPIA_COMMAND_ADDRESS			0xb110
+#define _MIPIC_COMMAND_ADDRESS			0xb910
+#define MIPI_COMMAND_ADDRESS(i915, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_COMMAND_ADDRESS, _MIPIC_COMMAND_ADDRESS)
 #define  COMMAND_MEM_ADDRESS_SHIFT			5
 #define  COMMAND_MEM_ADDRESS_MASK			(0x7ffffff << 5)
 #define  AUTO_PWG_ENABLE				(1 << 2)
 #define  MEMORY_WRITE_DATA_FROM_PIPE_RENDERING		(1 << 1)
 #define  COMMAND_VALID					(1 << 0)
 
-#define _MIPIA_COMMAND_LENGTH		(_MIPI_MMIO_BASE(dev_priv) + 0xb114)
-#define _MIPIC_COMMAND_LENGTH		(_MIPI_MMIO_BASE(dev_priv) + 0xb914)
-#define MIPI_COMMAND_LENGTH(port)	_MMIO_MIPI(port, _MIPIA_COMMAND_LENGTH, _MIPIC_COMMAND_LENGTH)
+#define _MIPIA_COMMAND_LENGTH			0xb114
+#define _MIPIC_COMMAND_LENGTH			0xb914
+#define MIPI_COMMAND_LENGTH(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_COMMAND_LENGTH, _MIPIC_COMMAND_LENGTH)
 #define  COMMAND_LENGTH_SHIFT(n)			(8 * (n)) /* n: 0...3 */
 #define  COMMAND_LENGTH_MASK(n)				(0xff << (8 * (n)))
 
-#define _MIPIA_READ_DATA_RETURN0	(_MIPI_MMIO_BASE(dev_priv) + 0xb118)
-#define _MIPIC_READ_DATA_RETURN0	(_MIPI_MMIO_BASE(dev_priv) + 0xb918)
-#define MIPI_READ_DATA_RETURN(port, n) _MMIO(_MIPI(port, _MIPIA_READ_DATA_RETURN0, _MIPIC_READ_DATA_RETURN0) + 4 * (n)) /* n: 0...7 */
+#define _MIPIA_READ_DATA_RETURN0		0xb118
+#define _MIPIC_READ_DATA_RETURN0		0xb918
+#define MIPI_READ_DATA_RETURN(i915, port, n)	_MMIO(_MIPI(port, _MIPIA_READ_DATA_RETURN0, _MIPIC_READ_DATA_RETURN0) + 4 * (n)) /* n: 0...7 */
 
-#define _MIPIA_READ_DATA_VALID		(_MIPI_MMIO_BASE(dev_priv) + 0xb138)
-#define _MIPIC_READ_DATA_VALID		(_MIPI_MMIO_BASE(dev_priv) + 0xb938)
-#define MIPI_READ_DATA_VALID(port)	_MMIO_MIPI(port, _MIPIA_READ_DATA_VALID, _MIPIC_READ_DATA_VALID)
+#define _MIPIA_READ_DATA_VALID			0xb138
+#define _MIPIC_READ_DATA_VALID			0xb938
+#define MIPI_READ_DATA_VALID(i915, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_READ_DATA_VALID, _MIPIC_READ_DATA_VALID)
 #define  READ_DATA_VALID(n)				(1 << (n))
 
 #endif /* __VLV_DSI_REGS_H__ */
-- 
2.39.2

