Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A272AA6B91D
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 11:53:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33FA010E78B;
	Fri, 21 Mar 2025 10:53:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kb1z7UYF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 236A010E78B;
 Fri, 21 Mar 2025 10:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742554386; x=1774090386;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yODmvl/ZzjI/OKxuZg+oSh4+L2mTl5hhOoTsiTjUs9Q=;
 b=Kb1z7UYFvw1t8/LOoM6ZPLPZiW5QuXHqCnA0e+bNfIbfJC1vwg6hyFkr
 AymfZvXaQSVMT/yuATBuo5f/qFeTNILntgCa9vtWzY6qxSPEekk+kFUFu
 TgL9u4zq7DKXjlFLCOo1JDzEpIN/dm3l5dJ2WtBjlXLhP4v7HQEfcOl5W
 lh1/MsDN449MydsC2SsZ3u5ovSMr/g3CYNGZnoBW8zwnGPSrxKLkAxJa4
 skeCR+M70QYP7mrI/I4+dZJjFBhSMW54I73m9G+OpEQHR3LJ5tgRK5OIW
 t/Ov1bkiX/d63eOoTeK2tY0LTskLzEFHZ8LuzS5yzVV7zx4oF0QfrJvGO A==;
X-CSE-ConnectionGUID: pOVdIR+CTAiKOlsdSPyhHQ==
X-CSE-MsgGUID: biq3R9qCQ8iiqicXFwZXJQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="44006731"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="44006731"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 03:53:06 -0700
X-CSE-ConnectionGUID: YJGkFMlaS4+VGufsQVwVTg==
X-CSE-MsgGUID: NpEUlLKWRbiFpWS/xKAxPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="123543515"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 03:53:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 01/12] drm/i915/dsi: convert vlv_dsi.[ch] to struct
 intel_display
Date: Fri, 21 Mar 2025 12:52:45 +0200
Message-Id: <320449f3b58c6eca6fdbb16e4e819cd0e133887a.1742554320.git.jani.nikula@intel.com>
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
pointer. Convert as much as possible of vlv_dsi.[ch] to struct
intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |   4 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c       | 157 +++++++++----------
 drivers/gpu/drm/i915/display/vlv_dsi.h       |   6 +-
 3 files changed, 80 insertions(+), 87 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b852ffe94a10..d7243848fb23 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7670,7 +7670,7 @@ void intel_setup_outputs(struct intel_display *display)
 		intel_bios_for_each_encoder(display, intel_ddi_init);
 
 		if (display->platform.geminilake || display->platform.broxton)
-			vlv_dsi_init(dev_priv);
+			vlv_dsi_init(display);
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
 		int found;
 
@@ -7754,7 +7754,7 @@ void intel_setup_outputs(struct intel_display *display)
 				g4x_hdmi_init(display, CHV_HDMID, PORT_D);
 		}
 
-		vlv_dsi_init(dev_priv);
+		vlv_dsi_init(display);
 	} else if (display->platform.pineview) {
 		intel_lvds_init(dev_priv);
 		intel_crt_init(display);
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index af717df83197..6ddf33de85d3 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -251,8 +251,10 @@ static int dpi_send_cmd(struct intel_dsi *intel_dsi, u32 cmd, bool hs,
 	return 0;
 }
 
-static void band_gap_reset(struct drm_i915_private *dev_priv)
+static void band_gap_reset(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
 	vlv_flisdsi_get(dev_priv);
 
 	vlv_flisdsi_write(dev_priv, 0x08, 0x0001);
@@ -269,13 +271,13 @@ static int intel_dsi_compute_config(struct intel_encoder *encoder,
 				    struct intel_crtc_state *pipe_config,
 				    struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	struct intel_connector *intel_connector = intel_dsi->attached_connector;
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	int ret;
 
-	drm_dbg_kms(&dev_priv->drm, "\n");
+	drm_dbg_kms(display->drm, "\n");
 	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
@@ -298,7 +300,7 @@ static int intel_dsi_compute_config(struct intel_encoder *encoder,
 	else
 		pipe_config->pipe_bpp = 18;
 
-	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
+	if (display->platform.geminilake || display->platform.broxton) {
 		/* Enable Frame time stamp based scanline reporting */
 		pipe_config->mode_flags |=
 			I915_MODE_FLAG_GET_SCANLINE_FROM_TIMESTAMP;
@@ -468,7 +470,7 @@ static void vlv_dsi_device_ready(struct intel_encoder *encoder)
 	vlv_flisdsi_put(dev_priv);
 
 	/* bandgap reset is needed after everytime we do power gate */
-	band_gap_reset(dev_priv);
+	band_gap_reset(display);
 
 	for_each_dsi_port(port, intel_dsi->ports) {
 
@@ -495,11 +497,11 @@ static void vlv_dsi_device_ready(struct intel_encoder *encoder)
 
 static void intel_dsi_device_ready(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
-	if (IS_GEMINILAKE(dev_priv))
+	if (display->platform.geminilake)
 		glk_dsi_device_ready(encoder);
-	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
+	else if (display->platform.geminilake || display->platform.broxton)
 		bxt_dsi_device_ready(encoder);
 	else
 		vlv_dsi_device_ready(encoder);
@@ -559,23 +561,22 @@ static void glk_dsi_clear_device_ready(struct intel_encoder *encoder)
 	glk_dsi_disable_mipi_io(encoder);
 }
 
-static i915_reg_t port_ctrl_reg(struct drm_i915_private *i915, enum port port)
+static i915_reg_t port_ctrl_reg(struct intel_display *display, enum port port)
 {
-	return IS_GEMINILAKE(i915) || IS_BROXTON(i915) ?
+	return display->platform.geminilake || display->platform.broxton ?
 		BXT_MIPI_PORT_CTRL(port) : VLV_MIPI_PORT_CTRL(port);
 }
 
 static void vlv_dsi_clear_device_ready(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
 
 	drm_dbg_kms(display->drm, "\n");
 	for_each_dsi_port(port, intel_dsi->ports) {
 		/* Common bit for both MIPI Port A & MIPI Port C on VLV/CHV */
-		i915_reg_t port_ctrl = IS_BROXTON(dev_priv) ?
+		i915_reg_t port_ctrl = display->platform.broxton ?
 			BXT_MIPI_PORT_CTRL(port) : VLV_MIPI_PORT_CTRL(PORT_A);
 
 		intel_de_write(display, MIPI_DEVICE_READY(display, port),
@@ -594,7 +595,7 @@ static void vlv_dsi_clear_device_ready(struct intel_encoder *encoder)
 		 * On VLV/CHV, wait till Clock lanes are in LP-00 state for MIPI
 		 * Port A only. MIPI Port C has no similar bit for checking.
 		 */
-		if ((IS_BROXTON(dev_priv) || port == PORT_A) &&
+		if ((display->platform.broxton || port == PORT_A) &&
 		    intel_de_wait_for_clear(display, port_ctrl,
 					    AFE_LATCHOUT, 30))
 			drm_err(display->drm, "DSI LP not going Low\n");
@@ -612,7 +613,6 @@ static void intel_dsi_port_enable(struct intel_encoder *encoder,
 				  const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
@@ -620,7 +620,7 @@ static void intel_dsi_port_enable(struct intel_encoder *encoder,
 	if (intel_dsi->dual_link == DSI_DUAL_LINK_FRONT_BACK) {
 		u32 temp = intel_dsi->pixel_overlap;
 
-		if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
+		if (display->platform.geminilake || display->platform.broxton) {
 			for_each_dsi_port(port, intel_dsi->ports)
 				intel_de_rmw(display, MIPI_CTRL(display, port),
 					     BXT_PIXEL_OVERLAP_CNT_MASK,
@@ -633,7 +633,7 @@ static void intel_dsi_port_enable(struct intel_encoder *encoder,
 	}
 
 	for_each_dsi_port(port, intel_dsi->ports) {
-		i915_reg_t port_ctrl = port_ctrl_reg(dev_priv, port);
+		i915_reg_t port_ctrl = port_ctrl_reg(display, port);
 		u32 temp;
 
 		temp = intel_de_read(display, port_ctrl);
@@ -644,7 +644,7 @@ static void intel_dsi_port_enable(struct intel_encoder *encoder,
 		if (intel_dsi->ports == (BIT(PORT_A) | BIT(PORT_C))) {
 			temp |= (intel_dsi->dual_link - 1)
 						<< DUAL_LINK_MODE_SHIFT;
-			if (IS_BROXTON(dev_priv))
+			if (display->platform.broxton)
 				temp |= LANE_CONFIGURATION_DUAL_LINK_A;
 			else
 				temp |= crtc->pipe ?
@@ -664,12 +664,11 @@ static void intel_dsi_port_enable(struct intel_encoder *encoder,
 static void intel_dsi_port_disable(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
 
 	for_each_dsi_port(port, intel_dsi->ports) {
-		i915_reg_t port_ctrl = port_ctrl_reg(dev_priv, port);
+		i915_reg_t port_ctrl = port_ctrl_reg(display, port);
 
 		/* de-assert ip_tg_enable signal */
 		intel_de_rmw(display, port_ctrl, DPI_ENABLE, 0);
@@ -730,7 +729,6 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	enum port port;
 	bool glk_cold_boot = false;
@@ -745,7 +743,7 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
 	 * The BIOS may leave the PLL in a wonky state where it doesn't
 	 * lock. It needs to be fully powered down to fix it.
 	 */
-	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
+	if (display->platform.geminilake || display->platform.broxton) {
 		bxt_dsi_pll_disable(encoder);
 		bxt_dsi_pll_enable(encoder, pipe_config);
 	} else {
@@ -753,7 +751,7 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
 		vlv_dsi_pll_enable(encoder, pipe_config);
 	}
 
-	if (IS_BROXTON(dev_priv)) {
+	if (display->platform.broxton) {
 		/* Add MIPI IO reset programming for modeset */
 		intel_de_rmw(display, BXT_P_CR_GT_DISP_PWRON, 0, MIPIO_RST_CTRL);
 
@@ -762,13 +760,13 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
 		intel_de_write(display, BXT_P_DSI_REGULATOR_TX_CTRL, 0);
 	}
 
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
+	if (display->platform.valleyview || display->platform.cherryview) {
 		/* Disable DPOunit clock gating, can stall pipe */
-		intel_de_rmw(display, DSPCLK_GATE_D(dev_priv),
+		intel_de_rmw(display, DSPCLK_GATE_D(display),
 			     0, DPOUNIT_CLOCK_GATE_DISABLE);
 	}
 
-	if (!IS_GEMINILAKE(dev_priv))
+	if (!display->platform.geminilake)
 		intel_dsi_prepare(encoder, pipe_config);
 
 	/* Give the panel time to power-on and then deassert its reset */
@@ -776,7 +774,7 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
 	msleep(intel_dsi->panel_on_delay);
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DEASSERT_RESET);
 
-	if (IS_GEMINILAKE(dev_priv)) {
+	if (display->platform.geminilake) {
 		glk_cold_boot = glk_dsi_enable_io(encoder);
 
 		/* Prepare port in cold boot(s3/s4) scenario */
@@ -788,7 +786,7 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
 	intel_dsi_device_ready(encoder);
 
 	/* Prepare port in normal boot scenario */
-	if (IS_GEMINILAKE(dev_priv) && !glk_cold_boot)
+	if (display->platform.geminilake && !glk_cold_boot)
 		intel_dsi_prepare(encoder, pipe_config);
 
 	/* Send initialization commands in LP mode */
@@ -836,11 +834,11 @@ static void intel_dsi_disable(struct intel_atomic_state *state,
 			      const struct intel_crtc_state *old_crtc_state,
 			      const struct drm_connector_state *old_conn_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
 
-	drm_dbg_kms(&i915->drm, "\n");
+	drm_dbg_kms(display->drm, "\n");
 
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_BACKLIGHT_OFF);
 	intel_backlight_disable(old_conn_state);
@@ -860,9 +858,9 @@ static void intel_dsi_disable(struct intel_atomic_state *state,
 
 static void intel_dsi_clear_device_ready(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
-	if (IS_GEMINILAKE(dev_priv))
+	if (display->platform.geminilake)
 		glk_dsi_clear_device_ready(encoder);
 	else
 		vlv_dsi_clear_device_ready(encoder);
@@ -874,13 +872,12 @@ static void intel_dsi_post_disable(struct intel_atomic_state *state,
 				   const struct drm_connector_state *old_conn_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
 
 	drm_dbg_kms(display->drm, "\n");
 
-	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
+	if (display->platform.geminilake || display->platform.broxton) {
 		intel_crtc_vblank_off(old_crtc_state);
 
 		skl_scaler_disable(old_crtc_state);
@@ -907,7 +904,7 @@ static void intel_dsi_post_disable(struct intel_atomic_state *state,
 	/* Transition to LP-00 */
 	intel_dsi_clear_device_ready(encoder);
 
-	if (IS_BROXTON(dev_priv)) {
+	if (display->platform.broxton) {
 		/* Power down DSI regulator to save power */
 		intel_de_write(display, BXT_P_DSI_REGULATOR_CFG, STAP_SELECT);
 		intel_de_write(display, BXT_P_DSI_REGULATOR_TX_CTRL,
@@ -917,12 +914,12 @@ static void intel_dsi_post_disable(struct intel_atomic_state *state,
 		intel_de_rmw(display, BXT_P_CR_GT_DISP_PWRON, MIPIO_RST_CTRL, 0);
 	}
 
-	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
+	if (display->platform.geminilake || display->platform.broxton) {
 		bxt_dsi_pll_disable(encoder);
 	} else {
 		vlv_dsi_pll_disable(encoder);
 
-		intel_de_rmw(display, DSPCLK_GATE_D(dev_priv),
+		intel_de_rmw(display, DSPCLK_GATE_D(display),
 			     DPOUNIT_CLOCK_GATE_DISABLE, 0);
 	}
 
@@ -957,13 +954,13 @@ static bool intel_dsi_get_hw_state(struct intel_encoder *encoder,
 	 * configuration, otherwise accessing DSI registers will hang the
 	 * machine. See BSpec North Display Engine registers/MIPI[BXT].
 	 */
-	if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
+	if ((display->platform.geminilake || display->platform.broxton) &&
 	    !bxt_dsi_pll_is_enabled(dev_priv))
 		goto out_put_power;
 
 	/* XXX: this only works for one DSI output */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		i915_reg_t port_ctrl = port_ctrl_reg(dev_priv, port);
+		i915_reg_t port_ctrl = port_ctrl_reg(display, port);
 		bool enabled = intel_de_read(display, port_ctrl) & DPI_ENABLE;
 
 		/*
@@ -971,10 +968,10 @@ static bool intel_dsi_get_hw_state(struct intel_encoder *encoder,
 		 * bit in port C control register does not get set. As a
 		 * workaround, check pipe B conf instead.
 		 */
-		if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
+		if ((display->platform.valleyview || display->platform.cherryview) &&
 		    port == PORT_C)
 			enabled = intel_de_read(display,
-						TRANSCONF(dev_priv, PIPE_B)) & TRANSCONF_ENABLE;
+						TRANSCONF(display, PIPE_B)) & TRANSCONF_ENABLE;
 
 		/* Try command mode if video mode not enabled */
 		if (!enabled) {
@@ -989,7 +986,7 @@ static bool intel_dsi_get_hw_state(struct intel_encoder *encoder,
 		if (!(intel_de_read(display, MIPI_DEVICE_READY(display, port)) & DEVICE_READY))
 			continue;
 
-		if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
+		if (display->platform.geminilake || display->platform.broxton) {
 			u32 tmp = intel_de_read(display, MIPI_CTRL(display, port));
 			tmp &= BXT_PIPE_SELECT_MASK;
 			tmp >>= BXT_PIPE_SELECT_SHIFT;
@@ -1177,15 +1174,15 @@ static void bxt_dsi_get_pipe_config(struct intel_encoder *encoder,
 static void intel_dsi_get_config(struct intel_encoder *encoder,
 				 struct intel_crtc_state *pipe_config)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	u32 pclk;
 
-	drm_dbg_kms(&dev_priv->drm, "\n");
+	drm_dbg_kms(display->drm, "\n");
 
 	pipe_config->output_types |= BIT(INTEL_OUTPUT_DSI);
 
-	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
+	if (display->platform.geminilake || display->platform.broxton) {
 		bxt_dsi_get_pipe_config(encoder, pipe_config);
 		pclk = bxt_dsi_get_pclk(encoder, pipe_config);
 	} else {
@@ -1218,7 +1215,6 @@ static void set_dsi_timings(struct intel_encoder *encoder,
 			    const struct drm_display_mode *adjusted_mode)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
 	unsigned int bpp = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
@@ -1253,7 +1249,7 @@ static void set_dsi_timings(struct intel_encoder *encoder,
 	hbp = txbyteclkhs(hbp, bpp, lane_count, intel_dsi->burst_mode_ratio);
 
 	for_each_dsi_port(port, intel_dsi->ports) {
-		if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
+		if (display->platform.geminilake || display->platform.broxton) {
 			/*
 			 * Program hdisplay and vdisplay on MIPI transcoder.
 			 * This is different from calculated hactive and
@@ -1307,7 +1303,6 @@ static void intel_dsi_prepare(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *pipe_config)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
@@ -1327,7 +1322,7 @@ static void intel_dsi_prepare(struct intel_encoder *encoder,
 	}
 
 	for_each_dsi_port(port, intel_dsi->ports) {
-		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
+		if (display->platform.valleyview || display->platform.cherryview) {
 			/*
 			 * escape clock divider, 20MHz, shared for A and C.
 			 * device ready must be off when doing this! txclkesc?
@@ -1342,7 +1337,7 @@ static void intel_dsi_prepare(struct intel_encoder *encoder,
 			tmp &= ~READ_REQUEST_PRIORITY_MASK;
 			intel_de_write(display, MIPI_CTRL(display, port),
 				       tmp | READ_REQUEST_PRIORITY_HIGH);
-		} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
+		} else if (display->platform.geminilake || display->platform.broxton) {
 			enum pipe pipe = crtc->pipe;
 
 			intel_de_rmw(display, MIPI_CTRL(display, port),
@@ -1377,7 +1372,7 @@ static void intel_dsi_prepare(struct intel_encoder *encoder,
 	if (intel_dsi->clock_stop)
 		tmp |= CLOCKSTOP;
 
-	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
+	if (display->platform.geminilake || display->platform.broxton) {
 		tmp |= BXT_DPHY_DEFEATURE_EN;
 		if (!is_cmd_mode(intel_dsi))
 			tmp |= BXT_DEFEATURE_DPI_FIFO_CTR;
@@ -1424,7 +1419,7 @@ static void intel_dsi_prepare(struct intel_encoder *encoder,
 		intel_de_write(display, MIPI_INIT_COUNT(display, port),
 			       txclkesc(intel_dsi->escape_clk_div, 100));
 
-		if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
+		if ((display->platform.geminilake || display->platform.broxton) &&
 		    !intel_dsi->dual_link) {
 			/*
 			 * BXT spec says write MIPI_INIT_COUNT for
@@ -1461,7 +1456,7 @@ static void intel_dsi_prepare(struct intel_encoder *encoder,
 		intel_de_write(display, MIPI_LP_BYTECLK(display, port),
 			       intel_dsi->lp_byte_clk);
 
-		if (IS_GEMINILAKE(dev_priv)) {
+		if (display->platform.geminilake) {
 			intel_de_write(display, MIPI_TLPX_TIME_COUNT(display, port),
 				       intel_dsi->lp_byte_clk);
 			/* Shadow of DPHY reg */
@@ -1513,18 +1508,17 @@ static void intel_dsi_prepare(struct intel_encoder *encoder,
 static void intel_dsi_unprepare(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
 
-	if (IS_GEMINILAKE(dev_priv))
+	if (display->platform.geminilake)
 		return;
 
 	for_each_dsi_port(port, intel_dsi->ports) {
 		/* Panel commands can be sent when clock is in LP11 */
 		intel_de_write(display, MIPI_DEVICE_READY(display, port), 0x0);
 
-		if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
+		if (display->platform.geminilake || display->platform.broxton)
 			bxt_dsi_reset_clocks(encoder, port);
 		else
 			vlv_dsi_reset_clocks(encoder, port);
@@ -1596,8 +1590,8 @@ static void vlv_dsi_add_properties(struct intel_connector *connector)
 
 static void vlv_dphy_param_init(struct intel_dsi *intel_dsi)
 {
-	struct drm_i915_private *dev_priv = to_i915(intel_dsi->base.base.dev);
 	struct intel_connector *connector = intel_dsi->attached_connector;
+	struct intel_display *display = to_intel_display(connector);
 	struct mipi_config *mipi_config = connector->panel.vbt.dsi.config;
 	u32 tlpx_ns, extra_byte_count, tlpx_ui;
 	u32 ui_num, ui_den;
@@ -1645,7 +1639,7 @@ static void vlv_dphy_param_init(struct intel_dsi *intel_dsi)
 	 * For GEMINILAKE dphy_param_reg will be programmed in terms of
 	 * HS byte clock count for other platform in HS ddr clock count
 	 */
-	mul = IS_GEMINILAKE(dev_priv) ? 8 : 2;
+	mul = display->platform.geminilake ? 8 : 2;
 	ths_prepare_ns = max(mipi_config->ths_prepare,
 			     mipi_config->tclk_prepare);
 
@@ -1653,7 +1647,7 @@ static void vlv_dphy_param_init(struct intel_dsi *intel_dsi)
 	prepare_cnt = DIV_ROUND_UP(ths_prepare_ns * ui_den, ui_num * mul);
 
 	if (prepare_cnt > PREPARE_CNT_MAX) {
-		drm_dbg_kms(&dev_priv->drm, "prepare count too high %u\n",
+		drm_dbg_kms(display->drm, "prepare count too high %u\n",
 			    prepare_cnt);
 		prepare_cnt = PREPARE_CNT_MAX;
 	}
@@ -1674,7 +1668,7 @@ static void vlv_dphy_param_init(struct intel_dsi *intel_dsi)
 		exit_zero_cnt += 1;
 
 	if (exit_zero_cnt > EXIT_ZERO_CNT_MAX) {
-		drm_dbg_kms(&dev_priv->drm, "exit zero count too high %u\n",
+		drm_dbg_kms(display->drm, "exit zero count too high %u\n",
 			    exit_zero_cnt);
 		exit_zero_cnt = EXIT_ZERO_CNT_MAX;
 	}
@@ -1685,7 +1679,7 @@ static void vlv_dphy_param_init(struct intel_dsi *intel_dsi)
 				* ui_den, ui_num * mul);
 
 	if (clk_zero_cnt > CLK_ZERO_CNT_MAX) {
-		drm_dbg_kms(&dev_priv->drm, "clock zero count too high %u\n",
+		drm_dbg_kms(display->drm, "clock zero count too high %u\n",
 			    clk_zero_cnt);
 		clk_zero_cnt = CLK_ZERO_CNT_MAX;
 	}
@@ -1695,7 +1689,7 @@ static void vlv_dphy_param_init(struct intel_dsi *intel_dsi)
 	trail_cnt = DIV_ROUND_UP(tclk_trail_ns * ui_den, ui_num * mul);
 
 	if (trail_cnt > TRAIL_CNT_MAX) {
-		drm_dbg_kms(&dev_priv->drm, "trail count too high %u\n",
+		drm_dbg_kms(display->drm, "trail count too high %u\n",
 			    trail_cnt);
 		trail_cnt = TRAIL_CNT_MAX;
 	}
@@ -1761,7 +1755,7 @@ static void vlv_dphy_param_init(struct intel_dsi *intel_dsi)
 
 int vlv_dsi_min_cdclk(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
 	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
 		return 0;
@@ -1770,7 +1764,7 @@ int vlv_dsi_min_cdclk(const struct intel_crtc_state *crtc_state)
 	 * On Valleyview some DSI panels lose (v|h)sync when the clock is lower
 	 * than 320000KHz.
 	 */
-	if (IS_VALLEYVIEW(dev_priv))
+	if (display->platform.valleyview)
 		return 320000;
 
 	/*
@@ -1778,7 +1772,7 @@ int vlv_dsi_min_cdclk(const struct intel_crtc_state *crtc_state)
 	 * picture gets unstable, despite that values are
 	 * correct for DSI PLL and DE PLL.
 	 */
-	if (IS_GEMINILAKE(dev_priv))
+	if (display->platform.geminilake)
 		return 158400;
 
 	return 0;
@@ -1903,9 +1897,8 @@ static const struct dmi_system_id vlv_dsi_dmi_quirk_table[] = {
 	{ }
 };
 
-void vlv_dsi_init(struct drm_i915_private *dev_priv)
+void vlv_dsi_init(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct intel_dsi *intel_dsi;
 	struct intel_encoder *encoder;
 	struct intel_connector *connector;
@@ -1914,16 +1907,16 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 	enum port port;
 	enum pipe pipe;
 
-	drm_dbg_kms(&dev_priv->drm, "\n");
+	drm_dbg_kms(display->drm, "\n");
 
 	/* There is no detection method for MIPI so rely on VBT */
 	if (!intel_bios_is_dsi_present(display, &port))
 		return;
 
-	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-		dev_priv->display.dsi.mmio_base = BXT_MIPI_BASE;
+	if (display->platform.geminilake || display->platform.broxton)
+		display->dsi.mmio_base = BXT_MIPI_BASE;
 	else
-		dev_priv->display.dsi.mmio_base = VLV_MIPI_BASE;
+		display->dsi.mmio_base = VLV_MIPI_BASE;
 
 	intel_dsi = kzalloc(sizeof(*intel_dsi), GFP_KERNEL);
 	if (!intel_dsi)
@@ -1938,12 +1931,12 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 	encoder = &intel_dsi->base;
 	intel_dsi->attached_connector = connector;
 
-	drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_dsi_funcs,
+	drm_encoder_init(display->drm, &encoder->base, &intel_dsi_funcs,
 			 DRM_MODE_ENCODER_DSI, "DSI %c", port_name(port));
 
 	encoder->compute_config = intel_dsi_compute_config;
 	encoder->pre_enable = intel_dsi_pre_enable;
-	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
+	if (display->platform.geminilake || display->platform.broxton)
 		encoder->enable = bxt_dsi_enable;
 	encoder->disable = intel_dsi_disable;
 	encoder->post_disable = intel_dsi_post_disable;
@@ -1963,7 +1956,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 	 * On BYT/CHV, pipe A maps to MIPI DSI port A, pipe B maps to MIPI DSI
 	 * port C. BXT isn't limited like this.
 	 */
-	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
+	if (display->platform.geminilake || display->platform.broxton)
 		encoder->pipe_mask = ~0;
 	else if (port == PORT_A)
 		encoder->pipe_mask = BIT(PIPE_A);
@@ -1979,10 +1972,10 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 	else
 		intel_dsi->ports = BIT(port);
 
-	if (drm_WARN_ON(&dev_priv->drm, connector->panel.vbt.dsi.bl_ports & ~intel_dsi->ports))
+	if (drm_WARN_ON(display->drm, connector->panel.vbt.dsi.bl_ports & ~intel_dsi->ports))
 		connector->panel.vbt.dsi.bl_ports &= intel_dsi->ports;
 
-	if (drm_WARN_ON(&dev_priv->drm, connector->panel.vbt.dsi.cabc_ports & ~intel_dsi->ports))
+	if (drm_WARN_ON(display->drm, connector->panel.vbt.dsi.cabc_ports & ~intel_dsi->ports))
 		connector->panel.vbt.dsi.cabc_ports &= intel_dsi->ports;
 
 	/* Create a DSI host (and a device) for each port. */
@@ -1998,18 +1991,18 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 	}
 
 	if (!intel_dsi_vbt_init(intel_dsi, MIPI_DSI_GENERIC_PANEL_ID)) {
-		drm_dbg_kms(&dev_priv->drm, "no device found\n");
+		drm_dbg_kms(display->drm, "no device found\n");
 		goto err;
 	}
 
 	/* Use clock read-back from current hw-state for fastboot */
 	current_mode = intel_encoder_current_mode(encoder);
 	if (current_mode) {
-		drm_dbg_kms(&dev_priv->drm, "Calculated pclk %d GOP %d\n",
+		drm_dbg_kms(display->drm, "Calculated pclk %d GOP %d\n",
 			    intel_dsi->pclk, current_mode->clock);
 		if (intel_fuzzy_clock_check(intel_dsi->pclk,
 					    current_mode->clock)) {
-			drm_dbg_kms(&dev_priv->drm, "Using GOP pclk\n");
+			drm_dbg_kms(display->drm, "Using GOP pclk\n");
 			intel_dsi->pclk = current_mode->clock;
 		}
 
@@ -2021,7 +2014,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 	intel_dsi_vbt_gpio_init(intel_dsi,
 				intel_dsi_get_hw_state(encoder, &pipe));
 
-	drm_connector_init(&dev_priv->drm, &connector->base, &intel_dsi_connector_funcs,
+	drm_connector_init(display->drm, &connector->base, &intel_dsi_connector_funcs,
 			   DRM_MODE_CONNECTOR_DSI);
 
 	drm_connector_helper_add(&connector->base, &intel_dsi_connector_helper_funcs);
@@ -2030,12 +2023,12 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 
 	intel_connector_attach_encoder(connector, encoder);
 
-	mutex_lock(&dev_priv->drm.mode_config.mutex);
+	mutex_lock(&display->drm->mode_config.mutex);
 	intel_panel_add_vbt_lfp_fixed_mode(connector);
-	mutex_unlock(&dev_priv->drm.mode_config.mutex);
+	mutex_unlock(&display->drm->mode_config.mutex);
 
 	if (!intel_panel_preferred_fixed_mode(connector)) {
-		drm_dbg_kms(&dev_priv->drm, "no fixed mode\n");
+		drm_dbg_kms(display->drm, "no fixed mode\n");
 		goto err_cleanup_connector;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.h b/drivers/gpu/drm/i915/display/vlv_dsi.h
index 277bacfbc551..ff349b5876c2 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.h
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.h
@@ -7,14 +7,14 @@
 #define __VLV_DSI_H__
 
 enum port;
-struct drm_i915_private;
 struct intel_crtc_state;
+struct intel_display;
 struct intel_dsi;
 
 #ifdef I915
 void vlv_dsi_wait_for_fifo_empty(struct intel_dsi *intel_dsi, enum port port);
 int vlv_dsi_min_cdclk(const struct intel_crtc_state *crtc_state);
-void vlv_dsi_init(struct drm_i915_private *dev_priv);
+void vlv_dsi_init(struct intel_display *display);
 #else
 static inline void vlv_dsi_wait_for_fifo_empty(struct intel_dsi *intel_dsi, enum port port)
 {
@@ -23,7 +23,7 @@ static inline int vlv_dsi_min_cdclk(const struct intel_crtc_state *crtc_state)
 {
 	return 0;
 }
-static inline void vlv_dsi_init(struct drm_i915_private *dev_priv)
+static inline void vlv_dsi_init(struct intel_display *display)
 {
 }
 #endif
-- 
2.39.5

