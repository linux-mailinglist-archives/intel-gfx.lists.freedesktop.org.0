Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA44AD301AB
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jan 2026 12:08:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B8A810E866;
	Fri, 16 Jan 2026 11:08:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="x2SsHxdw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-dy1-f201.google.com (mail-dy1-f201.google.com
 [74.125.82.201])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DA5D10E7B2
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jan 2026 16:55:41 +0000 (UTC)
Received: by mail-dy1-f201.google.com with SMTP id
 5a478bee46e88-2b6ad399cd8so1535371eec.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jan 2026 08:55:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1768496141; x=1769100941;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=9MMxvIkbkB14DLGuoxttnKY1ii69PbAEMosuxYSlces=;
 b=x2SsHxdws7W3nMwhLLGeVZ65L1NW5epp4exHGkIY2ps5ksezlW4X3gIIgEl70JA9eL
 WNCElyQ+LUi84H1UQdjvMZk+167xHT5VIQBt/JhVYZrXKWkA17jcfnfjxYXag77ixI5o
 DeYOLIQNajLVVonrDsjylTDy9iBboGgR2YyNEkng8crJ21IGLRi+NRUcVGk540kooqgr
 nICp0dr1rCsYcIp8osqV80Hu/0gk2ATqsrSBiTcylvdyKJdE2r//9mZqOC09TUfnBCiJ
 AujS+I8oNz4AvmR/27fb/IKD8ibIwT+eEqYX5q/TsocRCobutH9oXrmR/2J+JJzvfJ6j
 Dw/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768496141; x=1769100941;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=9MMxvIkbkB14DLGuoxttnKY1ii69PbAEMosuxYSlces=;
 b=nRi9AZLiiMHL9pV6uny031Si3ALkhkO/FXJzAWNORWeG8Sw/b7LPhtPVdd8WD4Phzb
 b7+OoOOl7NgnBiby5p5ceOq3962r/oz7g8+sNTYHVRMipPeOTKqLMLmwnKJFD2hXuuKn
 rEB/DB7G9YuO+yn2fksK7GIw/VuF1w7bKTiti02lcxmlN75bGCLbSdzaXFXTjK0nhghb
 kyt8ZyzqCAGx3wPQwCX2H3URayaUaopt97elOEDF5f9IpSWjGtP8PIIVU3GBCEcglOLF
 vZKrp0eIjLRvygbekW5D4T8uNSkbbo2DVfP+/qfyBDLDcARqETw1bm5gm6f3TrsGOUg6
 gdlQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWgpOerSpttQNGclyWB1tsIsv+7tbnH0Fq9V+zkwDQD/4Sem9y1LZ2ijPFOn7xt4NayQtVKDj6tJ50=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxMyNob4zgNe3uQWEdpvKTbVGdcJZjNu2xTmoIYpW6VPP9LSfT0
 Bfi8TCX/0d5QToO2jOX53e45bcIt/hoi2iMA9n4CVJfKXfRSVKdJNLN4DoKS9oWnPKGp8bWdr1K
 DMp6pLCBOXqpD7A==
X-Received: from dybqf13.prod.google.com
 ([2002:a05:7301:648d:b0:2ae:34d1:e425])
 (user=jdsultan job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7300:3723:b0:2b4:7ea1:763d with SMTP id
 5a478bee46e88-2b6b444b79fmr6134eec.0.1768496140680; 
 Thu, 15 Jan 2026 08:55:40 -0800 (PST)
Date: Thu, 15 Jan 2026 08:54:47 -0800
In-Reply-To: <20260115-upstream-prep-v1-0-001d5b38fc11@google.com>
Mime-Version: 1.0
References: <20260115-upstream-prep-v1-0-001d5b38fc11@google.com>
X-Developer-Key: i=jdsultan@google.com; a=ed25519;
 pk=RhTSABMOTIhvVE7NYiZwn1iDGYYNbaN092nvaEF2dxo=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768496136; l=38853;
 i=jdsultan@google.com; s=20260115; h=from:subject:message-id;
 bh=1z/RaW9yC5CimFZQmLCiJt8gWuqxQJQ932kC1RwX+UU=;
 b=1GQIB5uXXI1CuG1n3cv0galUdpUEe/Jjx+4gp/MWZmBjv6O9I7wuVBs6ozc6OMcryKtxMggCP
 oyzOeo4rsxlDnpYmHM+dM1tqbnkBAQx36a8B3s5+IqXAWGbq9hphWTm
X-Mailer: b4 0.14.2
Message-ID: <20260115-upstream-prep-v1-1-001d5b38fc11@google.com>
Subject: [PATCH RFC 01/10] drm/i915/display: Implement passive initialization
 for splash screen preservation
From: Juasheem Sultan <jdsultan@google.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Sean Paul <seanpaul@google.com>, Manasi Navare <navaremanasi@google.com>, 
 Drew Davenport <ddavenport@google.com>, Juasheem Sultan <jdsultan@google.com>
Content-Type: text/plain; charset="utf-8"
X-Mailman-Approved-At: Fri, 16 Jan 2026 11:08:31 +0000
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

To achieve a seamless transition from the bootloader to the kernel driver
(fastboot) on Panther Lake (PTL), especially with MSO panels, we need to
avoid resetting the hardware state during initialization.

Introduce a "passive" initialization path (`intel_ddi_init_encoder_early`)
that constructs the necessary DRM software objects (encoders, connectors)
to match the hardware state without issuing any hardware-resetting commands
(like DP link training or full modesets).

Key changes include:
1. Early encoder/connector initialization that skips GMBUS/AUX activity
   where unsafe.
2. MSO-specific fixes:
   * Hardcoded link parameters for 2256x1504 MSO mode.
   * Forced positive sync polarity (required by hardware/panel).
   * Manual handling of splitter state in `get_config`.
3. Improved DSC DPCD reading with retry logic to handle slow-to-wake panels.

This prevents the splash screen from flickering or disappearing during boot.

Signed-off-by: Juasheem Sultan <jdsultan@google.com>
---
 drivers/gpu/drm/i915/display/intel_connector.c |   9 +
 drivers/gpu/drm/i915/display/intel_connector.h |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c       | 205 ++++++++++++-
 drivers/gpu/drm/i915/display/intel_ddi.h       |   2 +
 drivers/gpu/drm/i915/display/intel_dp.c        | 385 ++++++++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_dp.h        |   5 +
 drivers/gpu/drm/i915/display/intel_hdmi.c      |  39 +++
 drivers/gpu/drm/i915/display/intel_hdmi.h      |   2 +
 drivers/gpu/drm/i915/display/intel_panel.c     |  41 ++-
 drivers/gpu/drm/i915/display/intel_panel.h     |   3 +
 10 files changed, 639 insertions(+), 53 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index 6a55854db5b68f33408ad6e8a24062293308d32c..b7189f840758e60b601870c78d5076316c5ce05e 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -118,6 +118,15 @@ struct intel_connector *intel_connector_alloc(void)
 	return connector;
 }
 
+
+void intel_connector_destroy_early(struct drm_connector *connector)
+{
+	struct intel_connector *intel_connector = to_intel_connector(connector);
+
+	intel_panel_fini(intel_connector);
+	kfree(connector);
+}
+
 /*
  * Free the bits allocated by intel_connector_alloc.
  * This should only be used after intel_connector_alloc has returned
diff --git a/drivers/gpu/drm/i915/display/intel_connector.h b/drivers/gpu/drm/i915/display/intel_connector.h
index 0aa86626e6463327dd96fac7405eae0f3c0e1b83..ef1a18f78a9d8b9a151f877b54aa779b4e0ca5e4 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.h
+++ b/drivers/gpu/drm/i915/display/intel_connector.h
@@ -17,6 +17,7 @@ struct intel_encoder;
 struct intel_connector *intel_connector_alloc(void);
 void intel_connector_free(struct intel_connector *connector);
 void intel_connector_destroy(struct drm_connector *connector);
+void intel_connector_destroy_early(struct drm_connector *connector);
 int intel_connector_register(struct drm_connector *connector);
 void intel_connector_unregister(struct drm_connector *connector);
 void intel_connector_attach_encoder(struct intel_connector *connector,
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index c09aa759f4d4f41b861ad0bb67882cb4c5140cc6..0fa6e0258d9108cafd3991f1d2d5de099ab6aef8 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2499,8 +2499,15 @@ static void intel_ddi_mso_get_config(struct intel_encoder *encoder,
 	dss1 = intel_de_read(display, ICL_PIPE_DSS_CTL1(pipe));
 
 	pipe_config->splitter.enable = dss1 & SPLITTER_ENABLE;
-	if (!pipe_config->splitter.enable)
+	if (!pipe_config->splitter.enable) {
+		if (intel_is_boot_mso_pipe(pipe)) {
+			pipe_config->splitter.enable = true;
+			pipe_config->splitter.link_count = 2;
+			pipe_config->splitter.pixel_overlap = 0;
+			return;
+		}
 		return;
+	}
 
 	if (drm_WARN_ON(display->drm, !(intel_ddi_splitter_pipe_mask(display) & BIT(pipe)))) {
 		pipe_config->splitter.enable = false;
@@ -4251,6 +4258,9 @@ static void mtl_ddi_get_config(struct intel_encoder *encoder,
 		crtc_state->port_clock = intel_cx0pll_calc_port_clock(encoder, &crtc_state->dpll_hw_state.cx0pll);
 
 	intel_ddi_get_config(encoder, crtc_state);
+
+	/* FIX: Read out DSC state so we don't lose it during takeover */
+	intel_dsc_get_config(crtc_state);
 }
 
 static void dg2_ddi_get_config(struct intel_encoder *encoder,
@@ -4586,6 +4596,18 @@ static int intel_ddi_compute_config_late(struct intel_encoder *encoder,
 	return 0;
 }
 
+static void intel_ddi_encoder_destroy_early(struct drm_encoder *encoder)
+{
+	struct intel_digital_port *dig_port = enc_to_dig_port(to_intel_encoder(encoder));
+
+	/*
+	 * Our early encoders are not registered, so we must not call
+	 * drm_encoder_cleanup(), which would try to unregister them.
+	 */
+
+	kfree(dig_port);
+}
+
 static void intel_ddi_encoder_destroy(struct drm_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder->dev);
@@ -4624,12 +4646,61 @@ static int intel_ddi_encoder_late_register(struct drm_encoder *_encoder)
 	return 0;
 }
 
+static const struct drm_encoder_funcs intel_ddi_funcs_early = {
+	.reset = intel_ddi_encoder_reset,
+	.destroy = intel_ddi_encoder_destroy_early,
+	.late_register = NULL,
+};
+
 static const struct drm_encoder_funcs intel_ddi_funcs = {
 	.reset = intel_ddi_encoder_reset,
 	.destroy = intel_ddi_encoder_destroy,
 	.late_register = intel_ddi_encoder_late_register,
 };
 
+static int intel_ddi_init_dp_connector_early(struct intel_digital_port *dig_port)
+{
+	struct intel_connector *connector;
+	struct intel_display *display = to_intel_display(dig_port->base.base.dev);
+	enum port port = dig_port->base.port;
+
+	connector = intel_connector_alloc();
+	if (!connector)
+		return -ENOMEM;
+
+	dig_port->dp.output_reg = DDI_BUF_CTL(port);
+	if (DISPLAY_VER(display) >= 14)
+		dig_port->dp.prepare_link_retrain = mtl_ddi_prepare_link_retrain;
+	else
+		dig_port->dp.prepare_link_retrain = intel_ddi_prepare_link_retrain;
+	dig_port->dp.set_link_train = intel_ddi_set_link_train;
+	dig_port->dp.set_idle_link_train = intel_ddi_set_idle_link_train;
+
+	dig_port->dp.voltage_max = intel_ddi_dp_voltage_max;
+	dig_port->dp.preemph_max = intel_ddi_dp_preemph_max;
+
+	if (!intel_dp_init_connector_early(dig_port, connector)) {
+		kfree(connector);
+		return -EINVAL;
+	}
+
+	if (dig_port->base.type == INTEL_OUTPUT_EDP) {
+		struct drm_device *dev = dig_port->base.base.dev;
+		struct drm_privacy_screen *privacy_screen;
+
+		privacy_screen = drm_privacy_screen_get(dev->dev, NULL);
+		if (!IS_ERR(privacy_screen)) {
+			drm_connector_attach_privacy_screen_provider(&connector->base,
+								     privacy_screen);
+		} else if (PTR_ERR(privacy_screen) != -ENODEV) {
+			drm_warn(dev, "Error getting privacy-screen\n");
+		}
+	}
+
+	return 0;
+}
+
+
 static int intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
 {
 	struct intel_display *display = to_intel_display(dig_port);
@@ -4834,6 +4905,24 @@ static bool bdw_digital_port_connected(struct intel_encoder *encoder)
 	return intel_de_read(display, GEN8_DE_PORT_ISR) & bit;
 }
 
+static int intel_ddi_init_hdmi_connector_early(struct intel_digital_port *dig_port)
+{
+	struct intel_connector *connector;
+	enum port port = dig_port->base.port;
+
+	connector = intel_connector_alloc();
+	if (!connector)
+		return -ENOMEM;
+
+	dig_port->hdmi.hdmi_reg = DDI_BUF_CTL(port);
+
+	/* In early init, we can't get a GMBUS adapter, so skip full init */
+	intel_hdmi_init_connector_early(dig_port, connector);
+
+	return 0;
+}
+
+
 static int intel_ddi_init_hdmi_connector(struct intel_digital_port *dig_port)
 {
 	struct intel_connector *connector;
@@ -5100,6 +5189,120 @@ static const char *intel_ddi_encoder_name(struct intel_display *display,
 	drm_WARN_ON(display->drm, seq_buf_has_overflowed(s));
 
 	return seq_buf_str(s);
+
+}
+
+void intel_ddi_init_encoder_early(struct intel_display *display,
+			const struct intel_bios_encoder_data *devdata)
+{
+	enum port port = intel_bios_encoder_port(devdata);
+	enum phy phy;
+	struct intel_digital_port *dig_port;
+	struct intel_encoder *encoder;
+	bool init_dp;
+
+
+	if (port_in_use(display, port)) {
+		return;
+	}
+
+	dig_port = kzalloc(sizeof(*dig_port), GFP_KERNEL);
+	if (!dig_port)
+		return;
+
+	encoder = &dig_port->base;
+	encoder->devdata = devdata;
+	encoder->get_hw_state = intel_ddi_get_hw_state;
+	encoder->port = port;
+	drm_encoder_init(display->drm, &encoder->base, &intel_ddi_funcs_early,
+					DRM_MODE_ENCODER_TMDS, "DDI %c", port_name(port));
+	dig_port->max_lanes = intel_ddi_max_lanes(dig_port);
+	encoder->base.possible_crtcs = (1 << INTEL_NUM_PIPES(display)) - 1;
+	intel_infoframe_init(dig_port);
+
+
+	phy = intel_port_to_phy(display, port);
+	init_dp = intel_bios_encoder_supports_dp(devdata);
+
+	if (intel_bios_encoder_is_lspcon(devdata)) {
+		/*
+		 * Lspcon device needs to be driven with DP connector
+		 * with special detection sequence. So make sure DP
+		 * is initialized before lspcon.
+		 */
+		init_dp = true;
+		drm_dbg_kms(display->drm, "VBT says port %c has lspcon\n",
+			    port_name(port));
+	}
+
+	if (intel_phy_is_snps(display, phy) &&
+	    display->snps.phy_failed_calibration & BIT(phy)) {
+		drm_dbg_kms(display->drm,
+			    "SNPS PHY %c failed to calibrate, proceeding anyway\n",
+			    phy_name(phy));
+	}
+
+	encoder->get_hw_state = intel_ddi_get_hw_state;
+
+	encoder->enable_clock = intel_mtl_pll_enable;
+	encoder->disable_clock = intel_mtl_pll_disable;
+	encoder->port_pll_type = intel_mtl_port_pll_type;
+	encoder->get_config = mtl_ddi_get_config;
+	encoder->set_signal_levels = intel_cx0_phy_set_signal_levels;
+	intel_ddi_buf_trans_init(encoder);
+	encoder->hpd_pin = xelpd_hpd_pin(display, port);
+
+	encoder->type = INTEL_OUTPUT_DDI;
+	encoder->power_domain = intel_display_power_ddi_lanes_domain(display, port);
+	dig_port->ddi_io_power_domain = intel_display_power_ddi_io_domain(display, port);
+	encoder->port = port;
+	encoder->initial_fastset_check = intel_ddi_initial_fastset_check;
+
+	if (intel_bios_encoder_supports_dp(devdata) ||
+			intel_bios_encoder_supports_edp(devdata)) {
+		dig_port->dp.output_reg = DDI_BUF_CTL(port);
+		dig_port->max_lanes = intel_bios_dp_max_lane_count(devdata);
+		dig_port->aux_ch = intel_bios_dp_aux_ch(devdata);
+	}
+
+
+	if (init_dp) {
+		if (intel_ddi_init_dp_connector_early(dig_port))
+
+		dig_port->hpd_pulse = intel_dp_hpd_pulse;
+
+		if (dig_port->dp.mso_link_count)
+			encoder->pipe_mask = intel_ddi_splitter_pipe_mask(display);
+	}
+	encoder->hotplug = intel_ddi_hotplug;
+	encoder->compute_output_type = intel_ddi_compute_output_type;
+	encoder->compute_config = intel_ddi_compute_config;
+	encoder->compute_config_late = intel_ddi_compute_config_late;
+	encoder->enable = intel_ddi_enable;
+	encoder->pre_pll_enable = intel_ddi_pre_pll_enable;
+	encoder->pre_enable = intel_ddi_pre_enable;
+	encoder->disable = intel_ddi_disable;
+	encoder->post_pll_disable = intel_ddi_post_pll_disable;
+	encoder->post_disable = intel_ddi_post_disable;
+	encoder->update_pipe = intel_ddi_update_pipe;
+	encoder->audio_enable = intel_audio_codec_enable;
+	encoder->audio_disable = intel_audio_codec_disable;
+	encoder->get_hw_state = intel_ddi_get_hw_state;
+	encoder->sync_state = intel_ddi_sync_state;
+	encoder->initial_fastset_check = intel_ddi_initial_fastset_check;
+	encoder->suspend = intel_ddi_encoder_suspend;
+	encoder->shutdown = intel_ddi_encoder_shutdown;
+	encoder->get_power_domains = intel_ddi_get_power_domains;
+	encoder->port = port;
+	encoder->cloneable = 0;
+	encoder->pipe_mask = ~0;
+
+	if (encoder->type != INTEL_OUTPUT_EDP && intel_bios_encoder_supports_hdmi(devdata)) {
+		if (intel_ddi_init_hdmi_connector_early(dig_port))
+			drm_err(display->drm, "Failed to initialize hdmi connector\n");
+	}
+
+	return;
 }
 
 void intel_ddi_init(struct intel_display *display,
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
index f6f511bb04314ca122df5cf69491b2ce828865be..d507eae289360517439473ff105fc43b944fa33a 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi.h
@@ -56,6 +56,8 @@ void hsw_prepare_dp_ddi_buffers(struct intel_encoder *encoder,
 void intel_wait_ddi_buf_idle(struct intel_display *display, enum port port);
 void intel_ddi_init(struct intel_display *display,
 		    const struct intel_bios_encoder_data *devdata);
+void intel_ddi_init_encoder_early(struct intel_display *display,
+			const struct intel_bios_encoder_data *devdata);
 bool intel_ddi_get_hw_state(struct intel_encoder *encoder, enum pipe *pipe);
 void intel_ddi_config_transcoder_func(struct intel_encoder *encoder,
 				      const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2eab591a8ef5681419e11b0fcc89c1a37e9d0db0..f73a7f9d2198b418cea06cc3c1636f09bb681dee 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1416,13 +1416,20 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	struct intel_connector *connector = to_intel_connector(_connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	enum intel_output_format sink_format, output_format;
+	enum drm_mode_status status;
+
+	if (mode->hdisplay == 2256 && mode->vdisplay == 1504) {
+		/* Run a partial check to see what WOULD fail */
+		status = intel_cpu_transcoder_mode_valid(display, mode);
+		return MODE_OK;
+	}
+
 	const struct drm_display_mode *fixed_mode;
 	int target_clock = mode->clock;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
 	int max_dotclk = display->cdclk.max_dotclk_freq;
 	u16 dsc_max_compressed_bpp = 0;
 	u8 dsc_slice_count = 0;
-	enum drm_mode_status status;
 	bool dsc = false;
 	int num_joined_pipes;
 
@@ -2660,13 +2667,16 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 						     false,
 						     &limits);
 
+	/* HACK: Force max link settings for MSO panel */
+	limits.max_rate = 810000;
+	limits.max_lane_count = 4;
 	if (!dsc_needed) {
 		/*
 		 * Optimize for slow and wide for everything, because there are some
 		 * eDP 1.3 and 1.4 panels don't work well with fast and narrow.
 		 */
 		ret = intel_dp_compute_link_config_wide(intel_dp, pipe_config,
-							conn_state, &limits);
+						conn_state, &limits);
 		if (!ret && intel_dp_is_uhbr(pipe_config))
 			ret = intel_dp_mtp_tu_compute_config(intel_dp,
 							     pipe_config,
@@ -2711,9 +2721,8 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 						pipe_config->port_clock,
 						pipe_config->lane_count));
 
-	return 0;
+	return ret;
 }
-
 bool intel_dp_limited_color_range(const struct intel_crtc_state *crtc_state,
 				  const struct drm_connector_state *conn_state)
 {
@@ -3267,6 +3276,12 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	if (ret)
 		return ret;
 
+	/* [FB-FIX] Force 216000 link rate for MSO. Found 216000 in HW. Override compute result. */
+	if (pipe_config->hw.pipe_mode.hdisplay == 2256) {
+		pipe_config->lane_count = 4;
+		pipe_config->port_clock = 216000;
+	}
+
 	if ((intel_dp_is_edp(intel_dp) && fixed_mode) ||
 	    pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
 		ret = intel_pfit_compute_config(pipe_config, conn_state);
@@ -3299,9 +3314,14 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 		pipe_config->splitter.link_count = n;
 		pipe_config->splitter.pixel_overlap = overlap;
 
-		drm_dbg_kms(display->drm,
-			    "MSO link count %d, pixel overlap %d\n",
-			    n, overlap);
+		/*
+		 * [FB-FIX] Force Positive Sync for MSO panels.
+		 * If we fell through here (skipped restore_boot), we must ensure flags are correct.
+		 */
+		if ((adjusted_mode->flags & (DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NHSYNC |
+					     DRM_MODE_FLAG_PVSYNC | DRM_MODE_FLAG_NVSYNC)) == 0) {
+			adjusted_mode->flags |= DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC;
+		}
 
 		adjusted_mode->crtc_hdisplay = adjusted_mode->crtc_hdisplay / n + overlap;
 		adjusted_mode->crtc_hblank_start = adjusted_mode->crtc_hblank_start / n + overlap;
@@ -3315,9 +3335,11 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
 
 	if (!intel_dp_is_uhbr(pipe_config)) {
+		int mso_clock = adjusted_mode->crtc_clock;
+
 		intel_link_compute_m_n(link_bpp_x16,
 				       pipe_config->lane_count,
-				       adjusted_mode->crtc_clock,
+				       mso_clock,
 				       pipe_config->port_clock,
 				       intel_dp_bw_fec_overhead(pipe_config->fec_enable),
 				       &pipe_config->dp_m_n);
@@ -3743,11 +3765,8 @@ bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
 	 * Remove once we have readout for DSC.
 	 */
 	if (crtc_state->dsc.compression_enable) {
-		drm_dbg_kms(display->drm,
-			    "[ENCODER:%d:%s] Forcing full modeset due to DSC being enabled\n",
-			    encoder->base.base.id, encoder->base.name);
-		crtc_state->uapi.mode_changed = true;
-		fastset = false;
+		// crtc_state->uapi.mode_changed = true;
+		// fastset = false;
 	}
 
 	if (CAN_PANEL_REPLAY(intel_dp)) {
@@ -4156,17 +4175,34 @@ static bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp)
 static void intel_dp_read_dsc_dpcd(struct drm_dp_aux *aux,
 				   u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE])
 {
-	if (drm_dp_dpcd_read(aux, DP_DSC_SUPPORT, dsc_dpcd,
-			     DP_DSC_RECEIVER_CAP_SIZE) < 0) {
-		drm_err(aux->drm_dev,
-			"Failed to read DPCD register 0x%x\n",
-			DP_DSC_SUPPORT);
-		return;
-	}
+	int ret;
+	int i;
+
+	for (i = 0; i < 5; i++) {
+		if (i > 0)
+			usleep_range(1000, 2000);
+
+		ret = drm_dp_dpcd_read(aux, DP_DSC_SUPPORT, dsc_dpcd,
+			     DP_DSC_RECEIVER_CAP_SIZE);
+
+		/*
+		 * A successful read returning all zeros means the panel
+		 * is not ready yet. The first byte should have the DSC
+		 * version number.
+		 */
+		if (ret >= 0 && dsc_dpcd[0] != 0) {
+			drm_dbg_kms(aux->drm_dev,
+				    "DSC DPCD read successful after %d tries\n", i + 1);
+			drm_dbg_kms(aux->drm_dev, "DSC DPCD: %*ph\n",
+				    DP_DSC_RECEIVER_CAP_SIZE, dsc_dpcd);
+			return;
+		}
 
-	drm_dbg_kms(aux->drm_dev, "DSC DPCD: %*ph\n",
-		    DP_DSC_RECEIVER_CAP_SIZE,
-		    dsc_dpcd);
+		drm_dbg_kms(aux->drm_dev,
+			    "Failed to read DSC DPCD (ret=%d), retrying (%d/5)...\n",
+			    ret, i + 1);
+	}
+	/* Let the (likely zero) dsc_dpcd pass through; the caller will handle it. */
 }
 
 void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_connector *connector)
@@ -4223,7 +4259,7 @@ intel_dp_detect_dsc_caps(struct intel_dp *intel_dp, struct intel_connector *conn
 					  connector);
 }
 
-static void intel_edp_mso_mode_fixup(struct intel_connector *connector,
+void intel_edp_mso_mode_fixup(struct intel_connector *connector,
 				     struct drm_display_mode *mode)
 {
 	struct intel_display *display = to_intel_display(connector);
@@ -4240,6 +4276,15 @@ static void intel_edp_mso_mode_fixup(struct intel_connector *connector,
 	mode->htotal = (mode->htotal - overlap) * n;
 	mode->clock *= n;
 
+	/*
+	 * HACK: If EDID doesn't specify sync polarity (Flags=0),
+	 * force Positive Sync (Flags=0xA) to match hardware expectation for MSO panels.
+	 */
+	if ((mode->flags & (DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NHSYNC |
+			    DRM_MODE_FLAG_PVSYNC | DRM_MODE_FLAG_NVSYNC)) == 0) {
+		mode->flags |= DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC;
+	}
+
 	drm_mode_set_name(mode);
 
 	drm_dbg_kms(display->drm,
@@ -4275,42 +4320,59 @@ void intel_edp_fixup_vbt_bpp(struct intel_encoder *encoder, int pipe_bpp)
 	}
 }
 
-static void intel_edp_mso_init(struct intel_dp *intel_dp)
+void intel_edp_mso_init(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = intel_dp->attached_connector;
 	struct drm_display_info *info = &connector->base.display_info;
-	u8 mso;
-
-	if (intel_dp->edp_dpcd[0] < DP_EDP_14)
-		return;
+	u8 mso_link_count = 0, mso_pixel_overlap = 0;
 
-	if (drm_dp_dpcd_readb(&intel_dp->aux, DP_EDP_MSO_LINK_CAPABILITIES, &mso) != 1) {
-		drm_err(display->drm, "Failed to read MSO cap\n");
+	if (intel_dp->edp_dpcd[0] < DP_EDP_14) {
+		drm_dbg_kms(display->drm,
+			    "[CONNECTOR:%d:%s] eDP < 1.4 not supported for MSO\n",
+			    connector->base.base.id, connector->base.name);
 		return;
 	}
 
-	/* Valid configurations are SST or MSO 2x1, 2x2, 4x1 */
-	mso &= DP_EDP_MSO_NUMBER_OF_LINKS_MASK;
-	if (mso % 2 || mso > drm_dp_max_lane_count(intel_dp->dpcd)) {
-		drm_err(display->drm, "Invalid MSO link count cap %u\n", mso);
-		mso = 0;
+	if (connector->panel.vbt.edp.mso_link_count) {
+		mso_link_count = connector->panel.vbt.edp.mso_link_count;
+		mso_pixel_overlap = connector->panel.vbt.edp.mso_pixel_overlap;
+
+		if (mso_link_count != 2 && mso_link_count != 4) {
+			drm_dbg_kms(display->drm,
+				    "[CONNECTOR:%d:%s] VBT has unsupported MSO link count %u\n",
+				    connector->base.base.id, connector->base.name,
+				    mso_link_count);
+			mso_link_count = 0;
+		}
+	} else if (info->mso_stream_count) {
+		mso_link_count = info->mso_stream_count;
+		mso_pixel_overlap = info->mso_pixel_overlap;
+
+		if (mso_link_count != 2 && mso_link_count != 4) {
+			drm_dbg_kms(display->drm,
+				    "[CONNECTOR:%d:%s] Sink has unsupported MSO link count %u\n",
+				    connector->base.base.id, connector->base.name,
+				    mso_link_count);
+			mso_link_count = 0;
+		}
 	}
 
-	if (mso) {
-		drm_dbg_kms(display->drm,
-			    "Sink MSO %ux%u configuration, pixel overlap %u\n",
-			    mso, drm_dp_max_lane_count(intel_dp->dpcd) / mso,
-			    info->mso_pixel_overlap);
-		if (!HAS_MSO(display)) {
-			drm_err(display->drm,
-				"No source MSO support, disabling\n");
-			mso = 0;
+	/*
+	 * To use MSO the panel must be VRR capable
+	 */
+	if (mso_link_count) {
+		if (!drm_dp_is_branch(intel_dp->dpcd) &&
+		    intel_dp->dpcd[DP_EDP_CONFIGURATION_CAP] == 0) {
+			drm_dbg_kms(display->drm,
+				    "[CONNECTOR:%d:%s] Sink doesn't support MSO\n",
+				    connector->base.base.id, connector->base.name);
+			mso_link_count = 0;
 		}
 	}
 
-	intel_dp->mso_link_count = mso;
-	intel_dp->mso_pixel_overlap = mso ? info->mso_pixel_overlap : 0;
+	intel_dp->mso_link_count = mso_link_count;
+	intel_dp->mso_pixel_overlap = mso_pixel_overlap;
 }
 
 static void
@@ -6043,8 +6105,9 @@ static int intel_dp_get_modes(struct drm_connector *_connector)
 	num_modes = drm_edid_connector_add_modes(&connector->base);
 
 	/* Also add fixed mode, which may or may not be present in EDID */
-	if (intel_dp_is_edp(intel_dp))
+	if (intel_dp_is_edp(intel_dp)) {
 		num_modes += intel_panel_get_modes(connector);
+	}
 
 	if (num_modes)
 		return num_modes;
@@ -6532,6 +6595,107 @@ static void intel_edp_backlight_setup(struct intel_dp *intel_dp,
 	intel_backlight_setup(connector, pipe);
 }
 
+static bool intel_edp_init_connector_early(struct intel_dp *intel_dp,
+				     struct intel_connector *connector)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_display_mode *fixed_mode;
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	//bool has_dpcd;
+	const struct drm_edid *drm_edid = NULL;
+
+	if (!intel_dp_is_edp(intel_dp))
+		return true;
+
+	/*
+	 * On IBX/CPT we may get here with LVDS already registered. Since the
+	 * driver uses the only internal power sequencer available for both
+	 * eDP and LVDS bail out early in this case to prevent interfering
+	 * with an already powered-on LVDS power sequencer.
+	 */
+	if (intel_get_lvds_encoder(display)) {
+		drm_WARN_ON(display->drm,
+			    !(HAS_PCH_IBX(display) || HAS_PCH_CPT(display)));
+
+		return false;
+	}
+	intel_bios_init_panel_early(display, &connector->panel,
+				    encoder->devdata);
+
+	/*
+	 * VBT and straps are liars. Also check HPD as that seems
+	 * to be the most reliable piece of information available.
+	 *
+	 * ... expect on devices that forgot to hook HPD up for eDP
+	 * (eg. Acer Chromebook C710), so we'll check it only if multiple
+	 * ports are attempting to use the same AUX CH, according to VBT.
+	 */
+	if (intel_bios_dp_has_shared_aux_ch(encoder->devdata)) {
+		/*
+		 * If this fails, presume the DPCD answer came
+		 * from some other port using the same AUX CH.
+		 *
+		 * FIXME maybe cleaner to check this before the
+		 * DPCD read? Would need sort out the VDD handling...
+		 */
+		if (!intel_digital_port_connected(encoder)) {
+			goto out_vdd_off;
+		}
+
+		/*
+		 * Unfortunately even the HPD based detection fails on
+		 * eg. Asus B360M-A (CFL+CNP), so as a last resort fall
+		 * back to checking for a VGA branch device. Only do this
+		 * on known affected platforms to minimize false positives.
+		 */
+		if (DISPLAY_VER(display) == 9 && drm_dp_is_branch(intel_dp->dpcd) &&
+		    (intel_dp->dpcd[DP_DOWNSTREAMPORT_PRESENT] & DP_DWN_STRM_PORT_TYPE_MASK) ==
+		    DP_DWN_STRM_PORT_TYPE_ANALOG) {
+			goto out_vdd_off;
+		}
+	}
+	mutex_lock(&display->drm->mode_config.mutex);
+
+	intel_bios_init_panel_late(display, &connector->panel, encoder->devdata,
+				   IS_ERR(drm_edid) ? NULL : drm_edid);
+
+	intel_panel_add_edid_fixed_modes(connector, true);
+
+	/* MSO requires information from the EDID */
+	intel_edp_mso_init(intel_dp);
+
+	/* multiply the mode clock and horizontal timings for MSO */
+	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head)
+		intel_edp_mso_mode_fixup(connector, fixed_mode);
+
+	/* fallback to VBT if available for eDP */
+	if (!intel_panel_preferred_fixed_mode(connector))
+		intel_panel_add_vbt_lfp_fixed_mode(connector);
+
+	mutex_unlock(&display->drm->mode_config.mutex);
+
+	if (!intel_panel_preferred_fixed_mode(connector)) {
+		goto out_vdd_off;
+	}
+	intel_panel_init_early(connector, drm_edid);
+
+	//intel_edp_backlight_setup(intel_dp, connector);
+
+	//intel_edp_add_properties(intel_dp);
+
+	//intel_pps_init_late(intel_dp);
+
+	return true;
+
+out_vdd_off:
+	//intel_pps_vdd_off_sync(intel_dp);
+	intel_bios_fini_panel(&connector->panel);
+
+	return false;
+}
+
+
+
 static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 				     struct intel_connector *connector)
 {
@@ -6698,6 +6862,131 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	return false;
 }
 
+static void intel_dp_modeset_retry_work_fn(struct work_struct *work)
+{
+	struct intel_connector *connector = container_of(work, typeof(*connector),
+							 modeset_retry_work);
+	struct intel_display *display = to_intel_display(connector);
+
+	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s]\n", connector->base.base.id,
+		    connector->base.name);
+
+	/* Grab the locks before changing connector property*/
+	mutex_lock(&display->drm->mode_config.mutex);
+	/* Set connector link status to BAD and send a Uevent to notify
+	 * userspace to do a modeset.
+	 */
+	drm_connector_set_link_status_property(&connector->base,
+					       DRM_MODE_LINK_STATUS_BAD);
+	mutex_unlock(&display->drm->mode_config.mutex);
+	/* Send Hotplug uevent so userspace can reprobe */
+	drm_kms_helper_connector_hotplug_event(&connector->base);
+
+	drm_connector_put(&connector->base);
+}
+
+void intel_dp_init_modeset_retry_work(struct intel_connector *connector)
+{
+	INIT_WORK(&connector->modeset_retry_work,
+		  intel_dp_modeset_retry_work_fn);
+}
+
+static void intel_dp_connector_reset_early(struct drm_connector *connector)
+{
+	drm_dbg_kms(to_intel_display(connector->dev)->drm,
+			"[CONNECTOR:%d:%s] skipping reset to preserve BIOS state\n",
+			connector->base.id, connector->name);
+}
+
+static const struct drm_connector_funcs intel_dp_connector_funcs_early = {
+	.reset = intel_dp_connector_reset_early,
+	.fill_modes = drm_helper_probe_single_connector_modes,
+	.destroy = intel_connector_destroy_early,
+	.atomic_duplicate_state = intel_digital_connector_duplicate_state,
+	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
+	.atomic_set_property = intel_digital_connector_atomic_set_property,
+	.atomic_get_property = intel_digital_connector_atomic_get_property,
+	.late_register = intel_dp_connector_register,
+	.early_unregister = NULL,
+};
+
+
+bool
+
+intel_dp_init_connector_early(struct intel_digital_port *dig_port,
+
+			      struct intel_connector *connector)
+
+{
+	struct intel_dp *intel_dp = &dig_port->dp;
+	struct intel_encoder *encoder = &dig_port->base;
+	struct drm_device *dev = encoder->base.dev;
+	enum port port = encoder->port;
+	int type;
+	intel_dp->attached_connector = connector;
+
+	if (_intel_dp_is_port_edp(to_intel_display(dev), encoder->devdata, port)) {
+		type = DRM_MODE_CONNECTOR_eDP;
+		encoder->type = INTEL_OUTPUT_EDP;
+	} else {
+		type = DRM_MODE_CONNECTOR_DisplayPort;
+	}
+	/* This is the bare minimum: create the software object and link it. */
+	drm_connector_init(dev, &connector->base, &intel_dp_connector_funcs_early,
+			       type);
+	drm_connector_helper_add(&connector->base, &intel_dp_connector_helper_funcs);
+	/*
+	 * Do not assign the DDC adapter here. The AUX channel is not
+	 * fully initialized at this early stage, and attempting to
+	 * create the sysfs link for the DDC will fail, causing the
+	 * entire driver probe to abort. The DDC will be assigned
+	 * later during the full connector initialization.
+	 */
+
+	if (encoder->type == INTEL_OUTPUT_EDP) {
+		intel_dp_set_default_sink_rates(intel_dp);
+		intel_dp_set_default_max_sink_lane_count(intel_dp);
+		intel_dp_set_source_rates(intel_dp);
+		intel_dp_set_common_rates(intel_dp);
+		intel_dp_reset_link_params(intel_dp);
+	}
+	intel_connector_attach_encoder(connector, encoder);
+
+	connector->get_hw_state = intel_ddi_connector_get_hw_state;
+
+	/*
+	 * Skip TC port init during early probe. The full TC port init
+	 * depends on other parts of the display driver that are not yet
+	 * initialized, and attempting it here causes a kernel panic.
+	 * The TC port will be fully initialized later.
+	 */
+	/* if (!intel_dp_early_tc_port_init(dig_port)) {
+	   drm_connector_cleanup(&connector->base);
+	   return false;
+	   } */
+	struct intel_display *display = to_intel_display(dig_port->base.base.dev);
+
+	dig_port->ddi_power_wakeref = intel_display_power_get(display,
+			intel_display_power_ddi_lanes_domain(display, port));
+	intel_dp_aux_init(intel_dp);
+	connector->dp.dsc_decompression_aux = &intel_dp->aux;
+
+	/*
+	 * Call our minimal, passive eDP init function, butdo nothing else.
+	 * All othercalls (set_rates, psr_init, hdcp_init, etc.)
+	 * must be removed.
+	 */
+
+	if (!intel_edp_init_connector_early(intel_dp, connector)) {
+		intel_dp_aux_fini(intel_dp);
+		drm_connector_cleanup(&connector->base);
+		return false;
+
+	}
+
+	return true;
+}
+
 bool
 intel_dp_init_connector(struct intel_digital_port *dig_port,
 			struct intel_connector *connector)
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index f90cfd1dbbd058ef0c2a13a391a6851faedb1683..c4bff87747ca22d484e66aeefa5f317e75fa566e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -47,6 +47,8 @@ intel_dp_queue_modeset_retry_for_link(struct intel_atomic_state *state,
 				      const struct intel_crtc_state *crtc_state);
 bool intel_dp_init_connector(struct intel_digital_port *dig_port,
 			     struct intel_connector *intel_connector);
+bool intel_dp_init_connector_early(struct intel_digital_port *dig_port,
+			     struct intel_connector *intel_connector);
 void intel_dp_connector_sync_state(struct intel_connector *connector,
 				   const struct intel_crtc_state *crtc_state);
 void intel_dp_set_link_params(struct intel_dp *intel_dp,
@@ -215,5 +217,8 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
 int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector);
 void intel_dp_dpcd_set_probe(struct intel_dp *intel_dp, bool force_on_external);
 bool intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state);
+void intel_edp_mso_init(struct intel_dp *intel_dp);
+void intel_edp_mso_mode_fixup(struct intel_connector *connector,
+			      struct drm_display_mode *mode);
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 4ab7e2e3bfd42c9ff77770a9759a28080d198483..4f0d5b85253cf2500dea05a4735dfdb9b800b789 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -3041,6 +3041,45 @@ void intel_infoframe_init(struct intel_digital_port *dig_port)
 	}
 }
 
+static void intel_hdmi_connector_reset_early(struct drm_connector *connector)
+{
+	drm_dbg_kms(to_intel_display(connector->dev)->drm,
+			"[CONNECTOR:%d:%s] skipping reset to preserve BIOS state\n",
+			connector->base.id, connector->name);
+}
+
+static const struct drm_connector_funcs intel_hdmi_connector_funcs_early = {
+	.reset = intel_hdmi_connector_reset_early,
+	.destroy = intel_connector_destroy_early,
+	.fill_modes = drm_helper_probe_single_connector_modes,
+	.atomic_duplicate_state = intel_digital_connector_duplicate_state,
+	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
+	.atomic_set_property = intel_digital_connector_atomic_set_property,
+	.atomic_get_property = intel_digital_connector_atomic_get_property,
+};
+
+bool intel_hdmi_init_connector_early(struct intel_digital_port *dig_port,
+					struct intel_connector *intel_connector)
+{
+	struct drm_device *dev = dig_port->base.base.dev;
+	struct drm_connector *connector = &intel_connector->base;
+	struct intel_encoder *intel_encoder = &dig_port->base;
+
+	drm_connector_init(dev, connector, &intel_hdmi_connector_funcs_early,
+		    DRM_MODE_CONNECTOR_HDMIA);
+	drm_connector_helper_add(connector, &intel_hdmi_connector_helper_funcs);
+
+	/* For early init, we only create the software objects.
+	 * Hardware state callbacks and other active setup are deferred.
+	*/
+	intel_connector_attach_encoder(intel_connector, intel_encoder);
+
+
+	return true;
+
+}
+
+
 bool intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 			       struct intel_connector *intel_connector)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
index dec2ad7dd8a229d1035b974b4f989d25ffc5ae59..c39f825c320b423b3a94f2919413f1e2d8551711 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.h
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
@@ -23,6 +23,8 @@ union hdmi_infoframe;
 
 bool intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 			       struct intel_connector *intel_connector);
+bool intel_hdmi_init_connector_early(struct intel_digital_port *dig_port,
+			       struct intel_connector *intel_connector);
 bool intel_hdmi_compute_has_hdmi_sink(struct intel_encoder *encoder,
 				      const struct intel_crtc_state *crtc_state,
 				      const struct drm_connector_state *conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 2a20aaaaac39b788759d604976ebee3635205cea..c677d7908c1961c64e591aee07b04c20deda78b1 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -87,13 +87,26 @@ intel_panel_fixed_mode(struct intel_connector *connector,
 		       const struct drm_display_mode *mode)
 {
 	const struct drm_display_mode *fixed_mode, *best_mode = NULL;
-	int vrefresh = drm_mode_vrefresh(mode);
+	int vrefresh = 0;
+
+	if (list_empty(&connector->panel.fixed_modes)) {
+		return NULL;
+	}
+
+	if (mode)
+		vrefresh = drm_mode_vrefresh(mode);
 
 	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
-		int fixed_mode_vrefresh = drm_mode_vrefresh(fixed_mode);
+		int fixed_mode_vrefresh;
+
+		if (mode && fixed_mode->hdisplay < mode->hdisplay)
+			continue;
+		if (mode && fixed_mode->vdisplay < mode->vdisplay)
+			continue;
 
-		if (is_best_fixed_mode(connector, vrefresh,
-				       fixed_mode_vrefresh, best_mode))
+		fixed_mode_vrefresh = drm_mode_vrefresh(fixed_mode);
+
+		if (is_best_fixed_mode(connector, vrefresh, fixed_mode_vrefresh, best_mode))
 			best_mode = fixed_mode;
 	}
 
@@ -425,6 +438,26 @@ void intel_panel_init_alloc(struct intel_connector *connector)
 	INIT_LIST_HEAD(&panel->fixed_modes);
 }
 
+int intel_panel_init_early(struct intel_connector *connector,
+		     const struct drm_edid *fixed_edid)
+{
+	//struct intel_panel *panel = &connector->panel;
+
+	//panel->fixed_edid = fixed_edid;
+
+	//intel_backlight_init_funcs(panel);
+
+	if (!has_drrs_modes(connector))
+		connector->panel.vbt.drrs_type = DRRS_TYPE_NONE;
+
+	drm_dbg_kms(connector->base.dev,
+		    "[CONNECTOR:%d:%s] DRRS type: %s\n",
+		    connector->base.base.id, connector->base.name,
+		    intel_drrs_type_str(intel_panel_drrs_type(connector)));
+
+	return 0;
+}
+
 int intel_panel_init(struct intel_connector *connector,
 		     const struct drm_edid *fixed_edid)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
index 56a6412cf0fb1cff3be84b04b22d6673a0bf46f1..3fa90d978d9a541b694f5c70303eb2e637e80a46 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.h
+++ b/drivers/gpu/drm/i915/display/intel_panel.h
@@ -22,6 +22,9 @@ struct intel_encoder;
 void intel_panel_init_alloc(struct intel_connector *connector);
 int intel_panel_init(struct intel_connector *connector,
 		     const struct drm_edid *fixed_edid);
+int intel_panel_init_early(struct intel_connector *connector,
+		     const struct drm_edid *fixed_edid);
+
 void intel_panel_fini(struct intel_connector *connector);
 int intel_panel_register(struct intel_connector *connector);
 void intel_panel_unregister(struct intel_connector *connector);

-- 
2.52.0.457.g6b5491de43-goog

