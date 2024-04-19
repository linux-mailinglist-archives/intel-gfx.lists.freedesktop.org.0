Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A57608AAC69
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 12:05:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CF4710EEE5;
	Fri, 19 Apr 2024 10:04:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VHg5/s67";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA71A10EEE5
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Apr 2024 10:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713521098; x=1745057098;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jclLIbFOeOi2KoOBqIcCN2PFUi2RINRVZBtFJJ3ewkM=;
 b=VHg5/s67JclZciGLSZaIr8+LW3c8RnM1bP+3JISFlJuJzCJFzKTyX+vx
 Gh9u3gK4hMnBmuGYE/VpGlK6UNIF4m/k0pZ6qQqX1r0Maxh6yXCYgRxMF
 grwYV5q15obl3U7J4OKsHucRz7YpGYXZtU3bjS8BbAl/KCZ5hiMLK7q0h
 UeviMXUQZwIUCcgkvnR6C3GGvqFcjKebqUcjKQ84YZHXeo1t3snr08EwW
 //FdqdXFPR6IAknt1mTrkrc0FIX3j8/hBYGVVsAbuWdDxwK4vtyM3sQ3j
 FDBa5zM/ix2JcAZFRChUKvIB783imv7DiQIJj6KQR3pxikGVbRWTihLar A==;
X-CSE-ConnectionGUID: dnOT6towQ2ynvOVq3ITBYA==
X-CSE-MsgGUID: DxP46LwNRG+VUUoMkEQlfQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="8975194"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; 
   d="scan'208";a="8975194"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 03:04:58 -0700
X-CSE-ConnectionGUID: 2q2f1a6aQgKxfleQ/cee7g==
X-CSE-MsgGUID: CjYiaTHhTPCh4Xr1ziXalw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="23361488"
Received: from agherasi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.46.119])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 03:04:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 3/4] drm/i915/dsi: unify connector/encoder type and name
 usage
Date: Fri, 19 Apr 2024 13:04:05 +0300
Message-Id: <7aa8fbaa2ecbe2400255964d49aba40cfe0479c5.1713520813.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1713520813.git.jani.nikula@intel.com>
References: <cover.1713520813.git.jani.nikula@intel.com>
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

Stop using struct drm_* local variables and parameters where
possible. Drop the intel_ prefix from struct intel_encoder and
intel_connector local variable and parameter names. Drop useless
intermediate variables.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/vlv_dsi.c | 134 +++++++++++--------------
 1 file changed, 60 insertions(+), 74 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 665247a2e834..9967ef58f1ec 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -85,9 +85,7 @@ enum mipi_dsi_pixel_format pixel_format_from_register_bits(u32 fmt)
 
 void vlv_dsi_wait_for_fifo_empty(struct intel_dsi *intel_dsi, enum port port)
 {
-	struct drm_encoder *encoder = &intel_dsi->base.base;
-	struct drm_device *dev = encoder->dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *dev_priv = to_i915(intel_dsi->base.base.dev);
 	u32 mask;
 
 	mask = LP_CTRL_FIFO_EMPTY | HS_CTRL_FIFO_EMPTY |
@@ -132,8 +130,8 @@ static ssize_t intel_dsi_host_transfer(struct mipi_dsi_host *host,
 				       const struct mipi_dsi_msg *msg)
 {
 	struct intel_dsi_host *intel_dsi_host = to_intel_dsi_host(host);
-	struct drm_device *dev = intel_dsi_host->intel_dsi->base.base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_dsi *intel_dsi = intel_dsi_host->intel_dsi;
+	struct drm_i915_private *dev_priv = to_i915(intel_dsi->base.base.dev);
 	enum port port = intel_dsi_host->port;
 	struct mipi_dsi_packet packet;
 	ssize_t ret;
@@ -225,9 +223,7 @@ static const struct mipi_dsi_host_ops intel_dsi_host_ops = {
 static int dpi_send_cmd(struct intel_dsi *intel_dsi, u32 cmd, bool hs,
 			enum port port)
 {
-	struct drm_encoder *encoder = &intel_dsi->base.base;
-	struct drm_device *dev = encoder->dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *dev_priv = to_i915(intel_dsi->base.base.dev);
 	u32 mask;
 
 	/* XXX: pipe, hs */
@@ -662,8 +658,7 @@ static void intel_dsi_port_enable(struct intel_encoder *encoder,
 
 static void intel_dsi_port_disable(struct intel_encoder *encoder)
 {
-	struct drm_device *dev = encoder->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
 
@@ -675,7 +670,8 @@ static void intel_dsi_port_disable(struct intel_encoder *encoder)
 		intel_de_posting_read(dev_priv, port_ctrl);
 	}
 }
-static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
+
+static void intel_dsi_prepare(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *pipe_config);
 static void intel_dsi_unprepare(struct intel_encoder *encoder);
 
@@ -1009,8 +1005,7 @@ static bool intel_dsi_get_hw_state(struct intel_encoder *encoder,
 static void bxt_dsi_get_pipe_config(struct intel_encoder *encoder,
 				    struct intel_crtc_state *pipe_config)
 {
-	struct drm_device *dev = encoder->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct drm_display_mode *adjusted_mode =
 					&pipe_config->hw.adjusted_mode;
 	struct drm_display_mode *adjusted_mode_sw;
@@ -1209,12 +1204,11 @@ static u16 txclkesc(u32 divider, unsigned int us)
 	}
 }
 
-static void set_dsi_timings(struct drm_encoder *encoder,
+static void set_dsi_timings(struct intel_encoder *encoder,
 			    const struct drm_display_mode *adjusted_mode)
 {
-	struct drm_device *dev = encoder->dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct intel_dsi *intel_dsi = enc_to_intel_dsi(to_intel_encoder(encoder));
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
 	unsigned int bpp = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
 	unsigned int lane_count = intel_dsi->lane_count;
@@ -1298,14 +1292,12 @@ static u32 pixel_format_to_reg(enum mipi_dsi_pixel_format fmt)
 	}
 }
 
-static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
+static void intel_dsi_prepare(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *pipe_config)
 {
-	struct drm_encoder *encoder = &intel_encoder->base;
-	struct drm_device *dev = encoder->dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
-	struct intel_dsi *intel_dsi = enc_to_intel_dsi(to_intel_encoder(encoder));
+	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	enum port port;
 	unsigned int bpp = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
@@ -1591,8 +1583,7 @@ static void vlv_dsi_add_properties(struct intel_connector *connector)
 
 static void vlv_dphy_param_init(struct intel_dsi *intel_dsi)
 {
-	struct drm_device *dev = intel_dsi->base.base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *dev_priv = to_i915(intel_dsi->base.base.dev);
 	struct intel_connector *connector = intel_dsi->attached_connector;
 	struct mipi_config *mipi_config = connector->panel.vbt.dsi.config;
 	u32 tlpx_ns, extra_byte_count, tlpx_ui;
@@ -1878,10 +1869,8 @@ static const struct dmi_system_id vlv_dsi_dmi_quirk_table[] = {
 void vlv_dsi_init(struct drm_i915_private *dev_priv)
 {
 	struct intel_dsi *intel_dsi;
-	struct intel_encoder *intel_encoder;
-	struct drm_encoder *encoder;
-	struct intel_connector *intel_connector;
-	struct drm_connector *connector;
+	struct intel_encoder *encoder;
+	struct intel_connector *connector;
 	struct drm_display_mode *current_mode;
 	const struct dmi_system_id *dmi_id;
 	enum port port;
@@ -1902,64 +1891,61 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 	if (!intel_dsi)
 		return;
 
-	intel_connector = intel_connector_alloc();
-	if (!intel_connector) {
+	connector = intel_connector_alloc();
+	if (!connector) {
 		kfree(intel_dsi);
 		return;
 	}
 
-	intel_encoder = &intel_dsi->base;
-	encoder = &intel_encoder->base;
-	intel_dsi->attached_connector = intel_connector;
-
-	connector = &intel_connector->base;
+	encoder = &intel_dsi->base;
+	intel_dsi->attached_connector = connector;
 
-	drm_encoder_init(&dev_priv->drm, encoder, &intel_dsi_funcs, DRM_MODE_ENCODER_DSI,
-			 "DSI %c", port_name(port));
+	drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_dsi_funcs,
+			 DRM_MODE_ENCODER_DSI, "DSI %c", port_name(port));
 
-	intel_encoder->compute_config = intel_dsi_compute_config;
-	intel_encoder->pre_enable = intel_dsi_pre_enable;
+	encoder->compute_config = intel_dsi_compute_config;
+	encoder->pre_enable = intel_dsi_pre_enable;
 	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-		intel_encoder->enable = bxt_dsi_enable;
-	intel_encoder->disable = intel_dsi_disable;
-	intel_encoder->post_disable = intel_dsi_post_disable;
-	intel_encoder->get_hw_state = intel_dsi_get_hw_state;
-	intel_encoder->get_config = intel_dsi_get_config;
-	intel_encoder->update_pipe = intel_backlight_update;
-	intel_encoder->shutdown = intel_dsi_shutdown;
+		encoder->enable = bxt_dsi_enable;
+	encoder->disable = intel_dsi_disable;
+	encoder->post_disable = intel_dsi_post_disable;
+	encoder->get_hw_state = intel_dsi_get_hw_state;
+	encoder->get_config = intel_dsi_get_config;
+	encoder->update_pipe = intel_backlight_update;
+	encoder->shutdown = intel_dsi_shutdown;
 
-	intel_connector->get_hw_state = intel_connector_get_hw_state;
+	connector->get_hw_state = intel_connector_get_hw_state;
 
-	intel_encoder->port = port;
-	intel_encoder->type = INTEL_OUTPUT_DSI;
-	intel_encoder->power_domain = POWER_DOMAIN_PORT_DSI;
-	intel_encoder->cloneable = 0;
+	encoder->port = port;
+	encoder->type = INTEL_OUTPUT_DSI;
+	encoder->power_domain = POWER_DOMAIN_PORT_DSI;
+	encoder->cloneable = 0;
 
 	/*
 	 * On BYT/CHV, pipe A maps to MIPI DSI port A, pipe B maps to MIPI DSI
 	 * port C. BXT isn't limited like this.
 	 */
 	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-		intel_encoder->pipe_mask = ~0;
+		encoder->pipe_mask = ~0;
 	else if (port == PORT_A)
-		intel_encoder->pipe_mask = BIT(PIPE_A);
+		encoder->pipe_mask = BIT(PIPE_A);
 	else
-		intel_encoder->pipe_mask = BIT(PIPE_B);
+		encoder->pipe_mask = BIT(PIPE_B);
 
 	intel_dsi->panel_power_off_time = ktime_get_boottime();
 
-	intel_bios_init_panel_late(dev_priv, &intel_connector->panel, NULL, NULL);
+	intel_bios_init_panel_late(dev_priv, &connector->panel, NULL, NULL);
 
-	if (intel_connector->panel.vbt.dsi.config->dual_link)
+	if (connector->panel.vbt.dsi.config->dual_link)
 		intel_dsi->ports = BIT(PORT_A) | BIT(PORT_C);
 	else
 		intel_dsi->ports = BIT(port);
 
-	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.bl_ports & ~intel_dsi->ports))
-		intel_connector->panel.vbt.dsi.bl_ports &= intel_dsi->ports;
+	if (drm_WARN_ON(&dev_priv->drm, connector->panel.vbt.dsi.bl_ports & ~intel_dsi->ports))
+		connector->panel.vbt.dsi.bl_ports &= intel_dsi->ports;
 
-	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.cabc_ports & ~intel_dsi->ports))
-		intel_connector->panel.vbt.dsi.cabc_ports &= intel_dsi->ports;
+	if (drm_WARN_ON(&dev_priv->drm, connector->panel.vbt.dsi.cabc_ports & ~intel_dsi->ports))
+		connector->panel.vbt.dsi.cabc_ports &= intel_dsi->ports;
 
 	/* Create a DSI host (and a device) for each port. */
 	for_each_dsi_port(port, intel_dsi->ports) {
@@ -1979,7 +1965,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 	}
 
 	/* Use clock read-back from current hw-state for fastboot */
-	current_mode = intel_encoder_current_mode(intel_encoder);
+	current_mode = intel_encoder_current_mode(encoder);
 	if (current_mode) {
 		drm_dbg_kms(&dev_priv->drm, "Calculated pclk %d GOP %d\n",
 			    intel_dsi->pclk, current_mode->clock);
@@ -1995,22 +1981,22 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 	vlv_dphy_param_init(intel_dsi);
 
 	intel_dsi_vbt_gpio_init(intel_dsi,
-				intel_dsi_get_hw_state(intel_encoder, &pipe));
+				intel_dsi_get_hw_state(encoder, &pipe));
 
-	drm_connector_init(&dev_priv->drm, connector, &intel_dsi_connector_funcs,
+	drm_connector_init(&dev_priv->drm, &connector->base, &intel_dsi_connector_funcs,
 			   DRM_MODE_CONNECTOR_DSI);
 
-	drm_connector_helper_add(connector, &intel_dsi_connector_helper_funcs);
+	drm_connector_helper_add(&connector->base, &intel_dsi_connector_helper_funcs);
 
-	connector->display_info.subpixel_order = SubPixelHorizontalRGB; /*XXX*/
+	connector->base.display_info.subpixel_order = SubPixelHorizontalRGB; /*XXX*/
 
-	intel_connector_attach_encoder(intel_connector, intel_encoder);
+	intel_connector_attach_encoder(connector, encoder);
 
 	mutex_lock(&dev_priv->drm.mode_config.mutex);
-	intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
+	intel_panel_add_vbt_lfp_fixed_mode(connector);
 	mutex_unlock(&dev_priv->drm.mode_config.mutex);
 
-	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
+	if (!intel_panel_preferred_fixed_mode(connector)) {
 		drm_dbg_kms(&dev_priv->drm, "no fixed mode\n");
 		goto err_cleanup_connector;
 	}
@@ -2023,18 +2009,18 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 		quirk_func(intel_dsi);
 	}
 
-	intel_panel_init(intel_connector, NULL);
+	intel_panel_init(connector, NULL);
 
-	intel_backlight_setup(intel_connector, INVALID_PIPE);
+	intel_backlight_setup(connector, INVALID_PIPE);
 
-	vlv_dsi_add_properties(intel_connector);
+	vlv_dsi_add_properties(connector);
 
 	return;
 
 err_cleanup_connector:
-	drm_connector_cleanup(&intel_connector->base);
+	drm_connector_cleanup(&connector->base);
 err:
-	drm_encoder_cleanup(&intel_encoder->base);
+	drm_encoder_cleanup(&encoder->base);
 	kfree(intel_dsi);
-	kfree(intel_connector);
+	kfree(connector);
 }
-- 
2.39.2

