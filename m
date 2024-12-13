Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2779F0868
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 10:48:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0D9710ED15;
	Fri, 13 Dec 2024 09:48:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kLJcmRVG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A23410EF7C;
 Fri, 13 Dec 2024 09:48:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734083335; x=1765619335;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4JSdkcYKObHt5QWJu/SoTABJemoHh23AuU7AC/VsVBA=;
 b=kLJcmRVGc1LnpcywFWr2xTMc/5Hy+6IXRb7luWu3mzDtWx5mGfm5jZ9/
 lv3d04pHJhDQrFh5BgIIQ03bBRRkydi9tLLOI7C0aySJVrAI8YiEK+MSZ
 9k5qK1RZE0aWmMfnJfynuN4noiEtcgLlc1v1ZnzPF/vaR8D/aPAIO3Bh9
 qNyYfchRcz7AILEtv+qADbv6mLWl04CICcPXKRWcyeEbVjQyay063FHKJ
 MMUog7FJjwvZpjO7x5m6saYMg8Oh+1/sIkF/mkPBB/Ro6uOlfOAUbSBu1
 lEYQ66tKLqs0M72VnioquRQNt7QkL3w8d/E+tIM/+Wsz24G0u6ZRDebwq g==;
X-CSE-ConnectionGUID: P1T/yO1KRNmseaFUOeoCmQ==
X-CSE-MsgGUID: 5ZC3UZRBQJ+62T/s9cvePw==
X-IronPort-AV: E=McAfee;i="6700,10204,11284"; a="34671941"
X-IronPort-AV: E=Sophos;i="6.12,230,1728975600"; d="scan'208";a="34671941"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 01:48:55 -0800
X-CSE-ConnectionGUID: toRZdw5bSKO8F7iEt7yOmw==
X-CSE-MsgGUID: 6V6Qvxn7T0e5B7mwm79oAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,230,1728975600"; d="scan'208";a="96378443"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 01:48:52 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v3 4/5] drm/i915/dp: convert interfaces to struct intel_display
Date: Fri, 13 Dec 2024 11:48:24 +0200
Message-Id: <7d55f5fd9fc0619be3113098a49259d5374013c6.1734083244.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1734083244.git.jani.nikula@intel.com>
References: <cover.1734083244.git.jani.nikula@intel.com>
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

Convert the intel_dp.[ch] external interfaces to struct intel_display.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  6 ++--
 .../drm/i915/display/intel_display_driver.c   |  9 ++---
 drivers/gpu/drm/i915/display/intel_dp.c       | 36 +++++++------------
 drivers/gpu/drm/i915/display/intel_dp.h       | 20 +++++------
 .../drm/i915/display/intel_dp_link_training.c |  5 ++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 12 +++----
 drivers/gpu/drm/i915/display/intel_psr.c      |  2 +-
 drivers/gpu/drm/i915/i915_driver.c            |  2 +-
 drivers/gpu/drm/xe/display/xe_display.c       |  2 +-
 9 files changed, 38 insertions(+), 56 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 21319f753a34..4271da219b41 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8156,7 +8156,7 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		intel_lvds_init(dev_priv);
 		intel_crt_init(display);
 
-		dpd_is_edp = intel_dp_is_port_edp(dev_priv, PORT_D);
+		dpd_is_edp = intel_dp_is_port_edp(display, PORT_D);
 
 		if (ilk_has_edp_a(dev_priv))
 			g4x_dp_init(dev_priv, DP_A, PORT_A);
@@ -8202,14 +8202,14 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		 * trust the port type the VBT declares as we've seen at least
 		 * HDMI ports that the VBT claim are DP or eDP.
 		 */
-		has_edp = intel_dp_is_port_edp(dev_priv, PORT_B);
+		has_edp = intel_dp_is_port_edp(display, PORT_B);
 		has_port = intel_bios_is_port_present(display, PORT_B);
 		if (intel_de_read(dev_priv, VLV_DP_B) & DP_DETECTED || has_port)
 			has_edp &= g4x_dp_init(dev_priv, VLV_DP_B, PORT_B);
 		if ((intel_de_read(dev_priv, VLV_HDMIB) & SDVO_DETECTED || has_port) && !has_edp)
 			g4x_hdmi_init(dev_priv, VLV_HDMIB, PORT_B);
 
-		has_edp = intel_dp_is_port_edp(dev_priv, PORT_C);
+		has_edp = intel_dp_is_port_edp(display, PORT_C);
 		has_port = intel_bios_is_port_present(display, PORT_C);
 		if (intel_de_read(dev_priv, VLV_DP_C) & DP_DETECTED || has_port)
 			has_edp &= g4x_dp_init(dev_priv, VLV_DP_C, PORT_C);
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index a7f4b0ce0740..497b4a1f045f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -573,8 +573,6 @@ void intel_display_driver_register(struct intel_display *display)
 /* part #1: call before irq uninstall */
 void intel_display_driver_remove(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
 	if (!HAS_DISPLAY(display))
 		return;
 
@@ -587,7 +585,7 @@ void intel_display_driver_remove(struct intel_display *display)
 	 * fbdev after it's finalized. MST will be destroyed later as part of
 	 * drm_mode_config_cleanup()
 	 */
-	intel_dp_mst_suspend(i915);
+	intel_dp_mst_suspend(display);
 }
 
 /* part #2: call after irq uninstall */
@@ -672,7 +670,6 @@ void intel_display_driver_unregister(struct intel_display *display)
  */
 int intel_display_driver_suspend(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct drm_atomic_state *state;
 	int ret;
 
@@ -690,7 +687,7 @@ int intel_display_driver_suspend(struct intel_display *display)
 	/* ensure all DPT VMAs have been unpinned for intel_dpt_suspend() */
 	flush_workqueue(display->wq.cleanup);
 
-	intel_dp_mst_suspend(i915);
+	intel_dp_mst_suspend(display);
 
 	return ret;
 }
@@ -747,7 +744,7 @@ void intel_display_driver_resume(struct intel_display *display)
 		return;
 
 	/* MST sideband requires HPD interrupts enabled */
-	intel_dp_mst_resume(i915);
+	intel_dp_mst_resume(display);
 
 	display->restore.modeset_state = NULL;
 	if (state)
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 594b9ff3a738..6f55fd961b56 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -828,9 +828,8 @@ small_joiner_ram_size_bits(struct intel_display *display)
 		return 6144 * 8;
 }
 
-u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 pipe_bpp)
+u32 intel_dp_dsc_nearest_valid_bpp(struct intel_display *display, u32 bpp, u32 pipe_bpp)
 {
-	struct intel_display *display = &i915->display;
 	u32 bits_per_pixel = bpp;
 	int i;
 
@@ -937,7 +936,7 @@ u32 get_max_compressed_bpp_with_joiner(struct intel_display *display,
 	return max_bpp;
 }
 
-u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
+u16 intel_dp_dsc_get_max_compressed_bpp(struct intel_display *display,
 					u32 link_clock, u32 lane_count,
 					u32 mode_clock, u32 mode_hdisplay,
 					int num_joined_pipes,
@@ -945,7 +944,6 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
 					u32 pipe_bpp,
 					u32 timeslots)
 {
-	struct intel_display *display = &i915->display;
 	u32 bits_per_pixel, joiner_max_bpp;
 
 	/*
@@ -990,7 +988,7 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
 							    mode_hdisplay, num_joined_pipes);
 	bits_per_pixel = min(bits_per_pixel, joiner_max_bpp);
 
-	bits_per_pixel = intel_dp_dsc_nearest_valid_bpp(i915, bits_per_pixel, pipe_bpp);
+	bits_per_pixel = intel_dp_dsc_nearest_valid_bpp(display, bits_per_pixel, pipe_bpp);
 
 	return bits_per_pixel;
 }
@@ -1470,7 +1468,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 								true);
 		} else if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
 			dsc_max_compressed_bpp =
-				intel_dp_dsc_get_max_compressed_bpp(dev_priv,
+				intel_dp_dsc_get_max_compressed_bpp(display,
 								    max_link_clock,
 								    max_lanes,
 								    target_clock,
@@ -1488,7 +1486,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		dsc = dsc_max_compressed_bpp && dsc_slice_count;
 	}
 
-	if (intel_dp_joiner_needs_dsc(dev_priv, num_joined_pipes) && !dsc)
+	if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
 		return MODE_CLOCK_HIGH;
 
 	if (mode_rate > max_rate && !dsc)
@@ -1501,18 +1499,14 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	return intel_mode_valid_max_plane_size(dev_priv, mode, num_joined_pipes);
 }
 
-bool intel_dp_source_supports_tps3(struct drm_i915_private *i915)
+bool intel_dp_source_supports_tps3(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
-
 	return DISPLAY_VER(display) >= 9 ||
 		display->platform.broadwell || display->platform.haswell;
 }
 
-bool intel_dp_source_supports_tps4(struct drm_i915_private *i915)
+bool intel_dp_source_supports_tps4(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
-
 	return DISPLAY_VER(display) >= 10;
 }
 
@@ -2580,11 +2574,9 @@ int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_state)
 	return intel_dp_link_required(adjusted_mode->crtc_clock, bpp);
 }
 
-bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915,
+bool intel_dp_joiner_needs_dsc(struct intel_display *display,
 			       int num_joined_pipes)
 {
-	struct intel_display *display = &i915->display;
-
 	/*
 	 * Pipe joiner needs compression up to display 12 due to bandwidth
 	 * limitation. DG2 onwards pipe joiner can be enabled without
@@ -2602,7 +2594,6 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 			     bool respect_downstream_limits)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
@@ -2624,7 +2615,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	if (num_joined_pipes > 1)
 		pipe_config->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1, crtc->pipe);
 
-	joiner_needs_dsc = intel_dp_joiner_needs_dsc(i915, num_joined_pipes);
+	joiner_needs_dsc = intel_dp_joiner_needs_dsc(display, num_joined_pipes);
 
 	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
 		     !intel_dp_compute_config_limits(intel_dp, pipe_config,
@@ -6221,9 +6212,8 @@ static bool _intel_dp_is_port_edp(struct intel_display *display,
 	return devdata && intel_bios_encoder_supports_edp(devdata);
 }
 
-bool intel_dp_is_port_edp(struct drm_i915_private *i915, enum port port)
+bool intel_dp_is_port_edp(struct intel_display *display, enum port port)
 {
-	struct intel_display *display = &i915->display;
 	const struct intel_bios_encoder_data *devdata =
 		intel_bios_encoder_data_lookup(display, port);
 
@@ -6623,9 +6613,8 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	return false;
 }
 
-void intel_dp_mst_suspend(struct drm_i915_private *dev_priv)
+void intel_dp_mst_suspend(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct intel_encoder *encoder;
 
 	if (!HAS_DISPLAY(display))
@@ -6647,9 +6636,8 @@ void intel_dp_mst_suspend(struct drm_i915_private *dev_priv)
 	}
 }
 
-void intel_dp_mst_resume(struct drm_i915_private *dev_priv)
+void intel_dp_mst_resume(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct intel_encoder *encoder;
 
 	if (!HAS_DISPLAY(display))
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 48f10876be65..34bf202f374a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -12,14 +12,14 @@ enum intel_output_format;
 enum pipe;
 enum port;
 struct drm_connector_state;
+struct drm_dp_vsc_sdp;
 struct drm_encoder;
-struct drm_i915_private;
 struct drm_modeset_acquire_ctx;
-struct drm_dp_vsc_sdp;
 struct intel_atomic_state;
 struct intel_connector;
 struct intel_crtc_state;
 struct intel_digital_port;
+struct intel_display;
 struct intel_dp;
 struct intel_encoder;
 
@@ -87,15 +87,15 @@ bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state);
 bool intel_dp_has_dsc(const struct intel_connector *connector);
 int intel_dp_link_symbol_size(int rate);
 int intel_dp_link_symbol_clock(int rate);
-bool intel_dp_is_port_edp(struct drm_i915_private *dev_priv, enum port port);
+bool intel_dp_is_port_edp(struct intel_display *display, enum port port);
 enum irqreturn intel_dp_hpd_pulse(struct intel_digital_port *dig_port,
 				  bool long_hpd);
 void intel_edp_backlight_on(const struct intel_crtc_state *crtc_state,
 			    const struct drm_connector_state *conn_state);
 void intel_edp_backlight_off(const struct drm_connector_state *conn_state);
 void intel_edp_fixup_vbt_bpp(struct intel_encoder *encoder, int pipe_bpp);
-void intel_dp_mst_suspend(struct drm_i915_private *dev_priv);
-void intel_dp_mst_resume(struct drm_i915_private *dev_priv);
+void intel_dp_mst_suspend(struct intel_display *display);
+void intel_dp_mst_resume(struct intel_display *display);
 int intel_dp_max_source_lane_count(struct intel_digital_port *dig_port);
 int intel_dp_max_link_rate(struct intel_dp *intel_dp);
 int intel_dp_max_lane_count(struct intel_dp *intel_dp);
@@ -112,15 +112,15 @@ void intel_dp_reset_link_params(struct intel_dp *intel_dp);
 
 void intel_dp_compute_rate(struct intel_dp *intel_dp, int port_clock,
 			   u8 *link_bw, u8 *rate_select);
-bool intel_dp_source_supports_tps3(struct drm_i915_private *i915);
-bool intel_dp_source_supports_tps4(struct drm_i915_private *i915);
+bool intel_dp_source_supports_tps3(struct intel_display *display);
+bool intel_dp_source_supports_tps4(struct intel_display *display);
 
 int intel_dp_link_required(int pixel_clock, int bpp);
 int intel_dp_effective_data_rate(int pixel_clock, int bpp_x16,
 				 int bw_overhead);
 int intel_dp_max_link_data_rate(struct intel_dp *intel_dp,
 				int max_dprx_rate, int max_dprx_lanes);
-bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915,
+bool intel_dp_joiner_needs_dsc(struct intel_display *display,
 			       int num_joined_pipes);
 bool intel_dp_has_joiner(struct intel_dp *intel_dp);
 bool intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
@@ -137,7 +137,7 @@ bool intel_digital_port_connected(struct intel_encoder *encoder);
 bool intel_digital_port_connected_locked(struct intel_encoder *encoder);
 int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
 				 u8 dsc_max_bpc);
-u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
+u16 intel_dp_dsc_get_max_compressed_bpp(struct intel_display *display,
 					u32 link_clock, u32 lane_count,
 					u32 mode_clock, u32 mode_hdisplay,
 					int num_joined_pipes,
@@ -173,7 +173,7 @@ bool intel_dp_supports_fec(struct intel_dp *intel_dp,
 bool intel_dp_supports_dsc(const struct intel_connector *connector,
 			   const struct intel_crtc_state *crtc_state);
 
-u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 pipe_bpp);
+u32 intel_dp_dsc_nearest_valid_bpp(struct intel_display *display, u32 bpp, u32 pipe_bpp);
 
 void intel_ddi_update_pipe(struct intel_atomic_state *state,
 			   struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index ea9b4730a176..b84fee94c0a0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -959,7 +959,6 @@ static u32 intel_dp_training_pattern(struct intel_dp *intel_dp,
 				     enum drm_dp_phy dp_phy)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	bool source_tps3, sink_tps3, source_tps4, sink_tps4;
 
 	/* UHBR+ use separate 128b/132b TPS2 */
@@ -972,7 +971,7 @@ static u32 intel_dp_training_pattern(struct intel_dp *intel_dp,
 	 * TPS4 as of Feb 2018 as per VESA eDP_v1.4b_E1 specification.
 	 * LTTPRs must support TPS4.
 	 */
-	source_tps4 = intel_dp_source_supports_tps4(i915);
+	source_tps4 = intel_dp_source_supports_tps4(display);
 	sink_tps4 = dp_phy != DP_PHY_DPRX ||
 		    drm_dp_tps4_supported(intel_dp->dpcd);
 	if (source_tps4 && sink_tps4) {
@@ -990,7 +989,7 @@ static u32 intel_dp_training_pattern(struct intel_dp *intel_dp,
 	 * TPS3 support is mandatory for downstream devices that
 	 * support HBR2. However, not all sinks follow the spec.
 	 */
-	source_tps3 = intel_dp_source_supports_tps3(i915);
+	source_tps3 = intel_dp_source_supports_tps3(display);
 	sink_tps3 = dp_phy != DP_PHY_DPRX ||
 		    drm_dp_tps3_supported(intel_dp->dpcd);
 	if (source_tps3 && sink_tps3) {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 123c4ece6268..1daa0311aec9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -392,7 +392,6 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	int slots = -EINVAL;
 	int i, num_bpc;
 	u8 dsc_bpc[3] = {};
@@ -450,9 +449,9 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 		    min_compressed_bpp, max_compressed_bpp);
 
 	/* Align compressed bpps according to our own constraints */
-	max_compressed_bpp = intel_dp_dsc_nearest_valid_bpp(i915, max_compressed_bpp,
+	max_compressed_bpp = intel_dp_dsc_nearest_valid_bpp(display, max_compressed_bpp,
 							    crtc_state->pipe_bpp);
-	min_compressed_bpp = intel_dp_dsc_nearest_valid_bpp(i915, min_compressed_bpp,
+	min_compressed_bpp = intel_dp_dsc_nearest_valid_bpp(display, min_compressed_bpp,
 							    crtc_state->pipe_bpp);
 
 	slots = mst_stream_find_vcpi_slots_for_bpp(intel_dp, crtc_state, max_compressed_bpp,
@@ -625,7 +624,6 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 				     struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_atomic_state *state = to_intel_atomic_state(conn_state->state);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct intel_dp *intel_dp = to_primary_dp(encoder);
@@ -655,7 +653,7 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->has_pch_encoder = false;
 
-	joiner_needs_dsc = intel_dp_joiner_needs_dsc(dev_priv, num_joined_pipes);
+	joiner_needs_dsc = intel_dp_joiner_needs_dsc(display, num_joined_pipes);
 
 	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
 		!mst_stream_compute_config_limits(intel_dp, connector,
@@ -1526,7 +1524,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *connector,
 
 		if (drm_dp_sink_supports_fec(intel_connector->dp.fec_capability)) {
 			dsc_max_compressed_bpp =
-				intel_dp_dsc_get_max_compressed_bpp(dev_priv,
+				intel_dp_dsc_get_max_compressed_bpp(display,
 								    max_link_clock,
 								    max_lanes,
 								    target_clock,
@@ -1544,7 +1542,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *connector,
 		dsc = dsc_max_compressed_bpp && dsc_slice_count;
 	}
 
-	if (intel_dp_joiner_needs_dsc(dev_priv, num_joined_pipes) && !dsc) {
+	if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc) {
 		*status = MODE_CLOCK_HIGH;
 		return 0;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 64c00a8a6850..0b021acb330f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -871,7 +871,7 @@ static u32 intel_psr1_get_tp_time(struct intel_dp *intel_dp)
 		val |= EDP_PSR_TP2_TP3_TIME_100us;
 
 check_tp3_sel:
-	if (intel_dp_source_supports_tps3(dev_priv) &&
+	if (intel_dp_source_supports_tps3(display) &&
 	    drm_dp_tps3_supported(intel_dp->dpcd))
 		val |= EDP_PSR_TP_TP1_TP3;
 	else
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 2251bedf9e3c..c2ae37d6b94d 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -981,7 +981,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
 		drm_atomic_helper_shutdown(&i915->drm);
 	}
 
-	intel_dp_mst_suspend(i915);
+	intel_dp_mst_suspend(display);
 
 	intel_irq_suspend(i915);
 	intel_hpd_cancel_work(i915);
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 317fa66adf18..b3921dbc52ff 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -382,7 +382,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
 	}
 
 	xe_display_flush_cleanup_work(xe);
-	intel_dp_mst_suspend(xe);
+	intel_dp_mst_suspend(display);
 	intel_hpd_cancel_work(xe);
 
 	if (has_display(xe))
-- 
2.39.5

