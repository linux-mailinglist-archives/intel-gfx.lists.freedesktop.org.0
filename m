Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B61159F0866
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 10:48:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CC3910E91E;
	Fri, 13 Dec 2024 09:48:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MOa2xZaj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0886910ED15;
 Fri, 13 Dec 2024 09:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734083324; x=1765619324;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HzO2kbmh8RtaaYmO6g8xqxKS8OefuuIjGoYsxp4gxyU=;
 b=MOa2xZajKwp3sXbcSk6knN305TQ4cDowCb83W2HnursVhC0K1ee6PBSn
 hO3GgZS4jFj7bxce88ZAVSDqnSAGqmjyowXAhHoSRHcG+JK1envS3nOl4
 wvP4xU+F7Up1K6v/FQdGBqkBMBQiNlpRRD45m9NF45qwwiL5ULnveZtGY
 Y6xYjlO/OHj1udy8LDaXqXzGDv6J7V5WnQ4DgV+zHVkvi9BvuoCXBfFAe
 0NFXAI114J9KmTdvkvzjX0WEWTuRGXJCCZXZOsifsmzteswQY0lXZR9WN
 600sgLwdYWcL83EoJdYHmjJGlp7P5/8omq8KWWF0tEipF3Xgumz8k1HUJ A==;
X-CSE-ConnectionGUID: bFeaayCIT061ZX9RGqnpQg==
X-CSE-MsgGUID: Xh7dFx/hTLqjQDd+GwM8bQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11284"; a="34671934"
X-IronPort-AV: E=Sophos;i="6.12,230,1728975600"; d="scan'208";a="34671934"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 01:48:44 -0800
X-CSE-ConnectionGUID: PDk3HG2iQcO864HMU7+B2w==
X-CSE-MsgGUID: NIaVHaujSqK334XAgSdWSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,230,1728975600"; d="scan'208";a="96378416"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 01:48:41 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v3 2/5] drm/i915/dp: s/intel_connector/connector/
Date: Fri, 13 Dec 2024 11:48:22 +0200
Message-Id: <2951b76d7476adcffb6d16079ab52207d1aab92d.1734083244.git.jani.nikula@intel.com>
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

Use the contemporary naming convention of struct intel_connector
*connector. Avoid struct drm_connector use altogether. In a few cases
add local struct drm_display_info and struct intel_display pointers to
help move away from struct drm_connector usage.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 202 ++++++++++++------------
 1 file changed, 99 insertions(+), 103 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d1a4fb2faef1..9e0872c96f51 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1673,7 +1673,7 @@ static int intel_dp_max_bpp(struct intel_dp *intel_dp,
 			    bool respect_downstream_limits)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	struct intel_connector *intel_connector = intel_dp->attached_connector;
+	struct intel_connector *connector = intel_dp->attached_connector;
 	int bpp, bpc;
 
 	bpc = crtc_state->pipe_bpp / 3;
@@ -1695,13 +1695,13 @@ static int intel_dp_max_bpp(struct intel_dp *intel_dp,
 	bpp = bpc * 3;
 	if (intel_dp_is_edp(intel_dp)) {
 		/* Get bpp from vbt only for panels that dont have bpp in edid */
-		if (intel_connector->base.display_info.bpc == 0 &&
-		    intel_connector->panel.vbt.edp.bpp &&
-		    intel_connector->panel.vbt.edp.bpp < bpp) {
+		if (connector->base.display_info.bpc == 0 &&
+		    connector->panel.vbt.edp.bpp &&
+		    connector->panel.vbt.edp.bpp < bpp) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "clamping bpp for eDP panel to BIOS-provided %i\n",
-				    intel_connector->panel.vbt.edp.bpp);
-			bpp = intel_connector->panel.vbt.edp.bpp;
+				    connector->panel.vbt.edp.bpp);
+			bpp = connector->panel.vbt.edp.bpp;
 		}
 	}
 
@@ -3650,19 +3650,19 @@ static int intel_dp_pcon_set_frl_mask(int max_frl)
 
 static int intel_dp_hdmi_sink_max_frl(struct intel_dp *intel_dp)
 {
-	struct intel_connector *intel_connector = intel_dp->attached_connector;
-	struct drm_connector *connector = &intel_connector->base;
+	struct intel_connector *connector = intel_dp->attached_connector;
+	const struct drm_display_info *info = &connector->base.display_info;
 	int max_frl_rate;
 	int max_lanes, rate_per_lane;
 	int max_dsc_lanes, dsc_rate_per_lane;
 
-	max_lanes = connector->display_info.hdmi.max_lanes;
-	rate_per_lane = connector->display_info.hdmi.max_frl_rate_per_lane;
+	max_lanes = info->hdmi.max_lanes;
+	rate_per_lane = info->hdmi.max_frl_rate_per_lane;
 	max_frl_rate = max_lanes * rate_per_lane;
 
-	if (connector->display_info.hdmi.dsc_cap.v_1p2) {
-		max_dsc_lanes = connector->display_info.hdmi.dsc_cap.max_lanes;
-		dsc_rate_per_lane = connector->display_info.hdmi.dsc_cap.max_frl_rate_per_lane;
+	if (info->hdmi.dsc_cap.v_1p2) {
+		max_dsc_lanes = info->hdmi.dsc_cap.max_lanes;
+		dsc_rate_per_lane = info->hdmi.dsc_cap.max_frl_rate_per_lane;
 		if (max_dsc_lanes && dsc_rate_per_lane)
 			max_frl_rate = min(max_frl_rate, max_dsc_lanes * dsc_rate_per_lane);
 	}
@@ -3821,10 +3821,10 @@ static int
 intel_dp_pcon_dsc_enc_slices(struct intel_dp *intel_dp,
 			     const struct intel_crtc_state *crtc_state)
 {
-	struct intel_connector *intel_connector = intel_dp->attached_connector;
-	struct drm_connector *connector = &intel_connector->base;
-	int hdmi_throughput = connector->display_info.hdmi.dsc_cap.clk_per_slice;
-	int hdmi_max_slices = connector->display_info.hdmi.dsc_cap.max_slices;
+	struct intel_connector *connector = intel_dp->attached_connector;
+	const struct drm_display_info *info = &connector->base.display_info;
+	int hdmi_throughput = info->hdmi.dsc_cap.clk_per_slice;
+	int hdmi_max_slices = info->hdmi.dsc_cap.max_slices;
 	int pcon_max_slices = drm_dp_pcon_dsc_max_slices(intel_dp->pcon_dsc_dpcd);
 	int pcon_max_slice_width = drm_dp_pcon_dsc_max_slice_width(intel_dp->pcon_dsc_dpcd);
 
@@ -3838,13 +3838,13 @@ intel_dp_pcon_dsc_enc_bpp(struct intel_dp *intel_dp,
 			  const struct intel_crtc_state *crtc_state,
 			  int num_slices, int slice_width)
 {
-	struct intel_connector *intel_connector = intel_dp->attached_connector;
-	struct drm_connector *connector = &intel_connector->base;
+	struct intel_connector *connector = intel_dp->attached_connector;
+	const struct drm_display_info *info = &connector->base.display_info;
 	int output_format = crtc_state->output_format;
-	bool hdmi_all_bpp = connector->display_info.hdmi.dsc_cap.all_bpp;
+	bool hdmi_all_bpp = info->hdmi.dsc_cap.all_bpp;
 	int pcon_fractional_bpp = drm_dp_pcon_dsc_bpp_incr(intel_dp->pcon_dsc_dpcd);
 	int hdmi_max_chunk_bytes =
-		connector->display_info.hdmi.dsc_cap.total_chunk_kbytes * 1024;
+		info->hdmi.dsc_cap.total_chunk_kbytes * 1024;
 
 	return intel_hdmi_dsc_get_bpp(pcon_fractional_bpp, slice_width,
 				      num_slices, output_format, hdmi_all_bpp,
@@ -3855,24 +3855,26 @@ void
 intel_dp_pcon_dsc_configure(struct intel_dp *intel_dp,
 			    const struct intel_crtc_state *crtc_state)
 {
+	struct intel_connector *connector = intel_dp->attached_connector;
+	const struct drm_display_info *info;
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	u8 pps_param[6];
 	int slice_height;
 	int slice_width;
 	int num_slices;
 	int bits_per_pixel;
 	int ret;
-	struct intel_connector *intel_connector = intel_dp->attached_connector;
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	struct drm_connector *connector;
 	bool hdmi_is_dsc_1_2;
 
 	if (!intel_dp_is_hdmi_2_1_sink(intel_dp))
 		return;
 
-	if (!intel_connector)
+	if (!connector)
 		return;
-	connector = &intel_connector->base;
-	hdmi_is_dsc_1_2 = connector->display_info.hdmi.dsc_cap.v_1p2;
+
+	info = &connector->base.display_info;
+
+	hdmi_is_dsc_1_2 = info->hdmi.dsc_cap.v_1p2;
 
 	if (!drm_dp_pcon_enc_is_dsc_1_2(intel_dp->pcon_dsc_dpcd) ||
 	    !hdmi_is_dsc_1_2)
@@ -5624,22 +5626,21 @@ intel_dp_detect_sdp_caps(struct intel_dp *intel_dp)
 }
 
 static int
-intel_dp_detect(struct drm_connector *connector,
+intel_dp_detect(struct drm_connector *_connector,
 		struct drm_modeset_acquire_ctx *ctx,
 		bool force)
 {
-	struct intel_display *display = to_intel_display(connector->dev);
-	struct drm_i915_private *dev_priv = to_i915(connector->dev);
-	struct intel_connector *intel_connector =
-		to_intel_connector(connector);
-	struct intel_dp *intel_dp = intel_attached_dp(intel_connector);
+	struct intel_display *display = to_intel_display(_connector->dev);
+	struct drm_i915_private *dev_priv = to_i915(_connector->dev);
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *encoder = &dig_port->base;
 	enum drm_connector_status status;
 	int ret;
 
 	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s]\n",
-		    connector->base.id, connector->name);
+		    connector->base.base.id, connector->base.name);
 	drm_WARN_ON(&dev_priv->drm,
 		    !drm_modeset_is_locked(&dev_priv->drm.mode_config.connection_mutex));
 
@@ -5647,9 +5648,9 @@ intel_dp_detect(struct drm_connector *connector,
 		return connector_status_disconnected;
 
 	if (!intel_display_driver_check_access(display))
-		return connector->status;
+		return connector->base.status;
 
-	intel_dp_flush_connector_commits(intel_connector);
+	intel_dp_flush_connector_commits(connector);
 
 	intel_pps_vdd_on(intel_dp);
 
@@ -5675,7 +5676,7 @@ intel_dp_detect(struct drm_connector *connector,
 
 	if (status == connector_status_disconnected) {
 		intel_dp_test_reset(intel_dp);
-		memset(intel_connector->dp.dsc_dpcd, 0, sizeof(intel_connector->dp.dsc_dpcd));
+		memset(connector->dp.dsc_dpcd, 0, sizeof(connector->dp.dsc_dpcd));
 		intel_dp->psr.sink_panel_replay_support = false;
 		intel_dp->psr.sink_panel_replay_su_support = false;
 
@@ -5696,12 +5697,12 @@ intel_dp_detect(struct drm_connector *connector,
 	}
 
 	if (ret == 1)
-		intel_connector->base.epoch_counter++;
+		connector->base.epoch_counter++;
 
 	if (!intel_dp_is_edp(intel_dp))
 		intel_psr_init_dpcd(intel_dp);
 
-	intel_dp_detect_dsc_caps(intel_dp, intel_connector);
+	intel_dp_detect_dsc_caps(intel_dp, connector);
 
 	intel_dp_detect_sdp_caps(intel_dp);
 
@@ -5744,8 +5745,7 @@ intel_dp_detect(struct drm_connector *connector,
 	intel_dp->aux.i2c_defer_count = 0;
 
 	intel_dp_set_edid(intel_dp);
-	if (intel_dp_is_edp(intel_dp) ||
-	    to_intel_connector(connector)->detect_edid)
+	if (intel_dp_is_edp(intel_dp) || connector->detect_edid)
 		status = connector_status_connected;
 
 	intel_dp_check_device_service_irq(intel_dp);
@@ -5755,7 +5755,7 @@ intel_dp_detect(struct drm_connector *connector,
 		intel_dp_unset_edid(intel_dp);
 
 	if (!intel_dp_is_edp(intel_dp))
-		drm_dp_set_subconnector_property(connector,
+		drm_dp_set_subconnector_property(&connector->base,
 						 status,
 						 intel_dp->dpcd,
 						 intel_dp->downstream_ports);
@@ -5788,30 +5788,31 @@ intel_dp_force(struct drm_connector *connector)
 	intel_dp_set_edid(intel_dp);
 }
 
-static int intel_dp_get_modes(struct drm_connector *connector)
+static int intel_dp_get_modes(struct drm_connector *_connector)
 {
-	struct intel_connector *intel_connector = to_intel_connector(connector);
+	struct intel_display *display = to_intel_display(_connector->dev);
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	int num_modes;
 
 	/* drm_edid_connector_update() done in ->detect() or ->force() */
-	num_modes = drm_edid_connector_add_modes(connector);
+	num_modes = drm_edid_connector_add_modes(&connector->base);
 
 	/* Also add fixed mode, which may or may not be present in EDID */
-	if (intel_dp_is_edp(intel_attached_dp(intel_connector)))
-		num_modes += intel_panel_get_modes(intel_connector);
+	if (intel_dp_is_edp(intel_dp))
+		num_modes += intel_panel_get_modes(connector);
 
 	if (num_modes)
 		return num_modes;
 
-	if (!intel_connector->detect_edid) {
-		struct intel_dp *intel_dp = intel_attached_dp(intel_connector);
+	if (!connector->detect_edid) {
 		struct drm_display_mode *mode;
 
-		mode = drm_dp_downstream_mode(connector->dev,
+		mode = drm_dp_downstream_mode(display->drm,
 					      intel_dp->dpcd,
 					      intel_dp->downstream_ports);
 		if (mode) {
-			drm_mode_probed_add(connector, mode);
+			drm_mode_probed_add(&connector->base, mode);
 			num_modes++;
 		}
 	}
@@ -6281,11 +6282,10 @@ static void intel_edp_backlight_setup(struct intel_dp *intel_dp,
 }
 
 static bool intel_edp_init_connector(struct intel_dp *intel_dp,
-				     struct intel_connector *intel_connector)
+				     struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	struct drm_connector *connector = &intel_connector->base;
 	struct drm_display_mode *fixed_mode;
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	bool has_dpcd;
@@ -6309,7 +6309,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	intel_bios_init_panel_early(display, &intel_connector->panel,
+	intel_bios_init_panel_early(display, &connector->panel,
 				    encoder->devdata);
 
 	if (!intel_pps_init(intel_dp)) {
@@ -6336,7 +6336,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	intel_alpm_init_dpcd(intel_dp);
 
 	/* Cache DPCD and EDID for edp. */
-	has_dpcd = intel_edp_init_dpcd(intel_dp, intel_connector);
+	has_dpcd = intel_edp_init_dpcd(intel_dp, connector);
 
 	if (!has_dpcd) {
 		/* if this fails, presume the device is a ghost */
@@ -6386,19 +6386,19 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	}
 
 	mutex_lock(&dev_priv->drm.mode_config.mutex);
-	drm_edid = drm_edid_read_ddc(connector, connector->ddc);
+	drm_edid = drm_edid_read_ddc(&connector->base, connector->base.ddc);
 	if (!drm_edid) {
 		/* Fallback to EDID from ACPI OpRegion, if any */
-		drm_edid = intel_opregion_get_edid(intel_connector);
+		drm_edid = intel_opregion_get_edid(connector);
 		if (drm_edid)
 			drm_dbg_kms(&dev_priv->drm,
 				    "[CONNECTOR:%d:%s] Using OpRegion EDID\n",
-				    connector->base.id, connector->name);
+				    connector->base.base.id, connector->base.name);
 	}
 	if (drm_edid) {
-		if (drm_edid_connector_update(connector, drm_edid) ||
-		    !drm_edid_connector_add_modes(connector)) {
-			drm_edid_connector_update(connector, NULL);
+		if (drm_edid_connector_update(&connector->base, drm_edid) ||
+		    !drm_edid_connector_add_modes(&connector->base)) {
+			drm_edid_connector_update(&connector->base, NULL);
 			drm_edid_free(drm_edid);
 			drm_edid = ERR_PTR(-EINVAL);
 		}
@@ -6406,34 +6406,34 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 		drm_edid = ERR_PTR(-ENOENT);
 	}
 
-	intel_bios_init_panel_late(display, &intel_connector->panel, encoder->devdata,
+	intel_bios_init_panel_late(display, &connector->panel, encoder->devdata,
 				   IS_ERR(drm_edid) ? NULL : drm_edid);
 
-	intel_panel_add_edid_fixed_modes(intel_connector, true);
+	intel_panel_add_edid_fixed_modes(connector, true);
 
 	/* MSO requires information from the EDID */
 	intel_edp_mso_init(intel_dp);
 
 	/* multiply the mode clock and horizontal timings for MSO */
-	list_for_each_entry(fixed_mode, &intel_connector->panel.fixed_modes, head)
-		intel_edp_mso_mode_fixup(intel_connector, fixed_mode);
+	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head)
+		intel_edp_mso_mode_fixup(connector, fixed_mode);
 
 	/* fallback to VBT if available for eDP */
-	if (!intel_panel_preferred_fixed_mode(intel_connector))
-		intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
+	if (!intel_panel_preferred_fixed_mode(connector))
+		intel_panel_add_vbt_lfp_fixed_mode(connector);
 
 	mutex_unlock(&dev_priv->drm.mode_config.mutex);
 
-	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
+	if (!intel_panel_preferred_fixed_mode(connector)) {
 		drm_info(&dev_priv->drm,
 			 "[ENCODER:%d:%s] failed to find fixed mode for the panel, disabling eDP\n",
 			 encoder->base.base.id, encoder->base.name);
 		goto out_vdd_off;
 	}
 
-	intel_panel_init(intel_connector, drm_edid);
+	intel_panel_init(connector, drm_edid);
 
-	intel_edp_backlight_setup(intel_dp, intel_connector);
+	intel_edp_backlight_setup(intel_dp, connector);
 
 	intel_edp_add_properties(intel_dp);
 
@@ -6443,34 +6443,32 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 
 out_vdd_off:
 	intel_pps_vdd_off_sync(intel_dp);
-	intel_bios_fini_panel(&intel_connector->panel);
+	intel_bios_fini_panel(&connector->panel);
 
 	return false;
 }
 
 static void intel_dp_modeset_retry_work_fn(struct work_struct *work)
 {
-	struct intel_connector *intel_connector;
-	struct drm_connector *connector;
+	struct intel_connector *connector = container_of(work, typeof(*connector),
+							 modeset_retry_work);
+	struct intel_display *display = to_intel_display(connector);
 
-	intel_connector = container_of(work, typeof(*intel_connector),
-				       modeset_retry_work);
-	connector = &intel_connector->base;
-	drm_dbg_kms(connector->dev, "[CONNECTOR:%d:%s]\n", connector->base.id,
-		    connector->name);
+	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s]\n", connector->base.base.id,
+		    connector->base.name);
 
 	/* Grab the locks before changing connector property*/
-	mutex_lock(&connector->dev->mode_config.mutex);
+	mutex_lock(&display->drm->mode_config.mutex);
 	/* Set connector link status to BAD and send a Uevent to notify
 	 * userspace to do a modeset.
 	 */
-	drm_connector_set_link_status_property(connector,
+	drm_connector_set_link_status_property(&connector->base,
 					       DRM_MODE_LINK_STATUS_BAD);
-	mutex_unlock(&connector->dev->mode_config.mutex);
+	mutex_unlock(&display->drm->mode_config.mutex);
 	/* Send Hotplug uevent so userspace can reprobe */
-	drm_kms_helper_connector_hotplug_event(connector);
+	drm_kms_helper_connector_hotplug_event(&connector->base);
 
-	drm_connector_put(connector);
+	drm_connector_put(&connector->base);
 }
 
 void intel_dp_init_modeset_retry_work(struct intel_connector *connector)
@@ -6481,10 +6479,9 @@ void intel_dp_init_modeset_retry_work(struct intel_connector *connector)
 
 bool
 intel_dp_init_connector(struct intel_digital_port *dig_port,
-			struct intel_connector *intel_connector)
+			struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(dig_port);
-	struct drm_connector *connector = &intel_connector->base;
 	struct intel_dp *intel_dp = &dig_port->dp;
 	struct intel_encoder *encoder = &dig_port->base;
 	struct drm_device *dev = encoder->base.dev;
@@ -6493,7 +6490,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	int type;
 
 	/* Initialize the work for modeset in case of link train failure */
-	intel_dp_init_modeset_retry_work(intel_connector);
+	intel_dp_init_modeset_retry_work(connector);
 
 	if (drm_WARN(dev, dig_port->max_lanes < 1,
 		     "Not enough lanes (%d) for DP on [ENCODER:%d:%s]\n",
@@ -6505,7 +6502,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 
 	/* Preserve the current hw state. */
 	intel_dp->DP = intel_de_read(dev_priv, intel_dp->output_reg);
-	intel_dp->attached_connector = intel_connector;
+	intel_dp->attached_connector = connector;
 
 	if (_intel_dp_is_port_edp(dev_priv, encoder->devdata, port)) {
 		/*
@@ -6533,33 +6530,33 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 		vlv_pps_pipe_init(intel_dp);
 
 	intel_dp_aux_init(intel_dp);
-	intel_connector->dp.dsc_decompression_aux = &intel_dp->aux;
+	connector->dp.dsc_decompression_aux = &intel_dp->aux;
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "Adding %s connector on [ENCODER:%d:%s]\n",
 		    type == DRM_MODE_CONNECTOR_eDP ? "eDP" : "DP",
 		    encoder->base.base.id, encoder->base.name);
 
-	drm_connector_init_with_ddc(dev, connector, &intel_dp_connector_funcs,
+	drm_connector_init_with_ddc(dev, &connector->base, &intel_dp_connector_funcs,
 				    type, &intel_dp->aux.ddc);
-	drm_connector_helper_add(connector, &intel_dp_connector_helper_funcs);
+	drm_connector_helper_add(&connector->base, &intel_dp_connector_helper_funcs);
 
 	if (!HAS_GMCH(dev_priv) && DISPLAY_VER(dev_priv) < 12)
-		connector->interlace_allowed = true;
+		connector->base.interlace_allowed = true;
 
 	if (type != DRM_MODE_CONNECTOR_eDP)
-		intel_connector->polled = DRM_CONNECTOR_POLL_HPD;
-	intel_connector->base.polled = intel_connector->polled;
+		connector->polled = DRM_CONNECTOR_POLL_HPD;
+	connector->base.polled = connector->polled;
 
-	intel_connector_attach_encoder(intel_connector, encoder);
+	intel_connector_attach_encoder(connector, encoder);
 
 	if (HAS_DDI(dev_priv))
-		intel_connector->get_hw_state = intel_ddi_connector_get_hw_state;
+		connector->get_hw_state = intel_ddi_connector_get_hw_state;
 	else
-		intel_connector->get_hw_state = intel_connector_get_hw_state;
-	intel_connector->sync_state = intel_dp_connector_sync_state;
+		connector->get_hw_state = intel_connector_get_hw_state;
+	connector->sync_state = intel_dp_connector_sync_state;
 
-	if (!intel_edp_init_connector(intel_dp, intel_connector)) {
+	if (!intel_edp_init_connector(intel_dp, connector)) {
 		intel_dp_aux_fini(intel_dp);
 		goto fail;
 	}
@@ -6569,13 +6566,12 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	intel_dp_reset_link_params(intel_dp);
 
 	/* init MST on ports that can support it */
-	intel_dp_mst_encoder_init(dig_port,
-				  intel_connector->base.base.id);
+	intel_dp_mst_encoder_init(dig_port, connector->base.base.id);
 
-	intel_dp_add_properties(intel_dp, connector);
+	intel_dp_add_properties(intel_dp, &connector->base);
 
 	if (is_hdcp_supported(display, port) && !intel_dp_is_edp(intel_dp)) {
-		int ret = intel_dp_hdcp_init(dig_port, intel_connector);
+		int ret = intel_dp_hdcp_init(dig_port, connector);
 		if (ret)
 			drm_dbg_kms(&dev_priv->drm,
 				    "HDCP init failed, skipping.\n");
@@ -6590,7 +6586,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 
 fail:
 	intel_display_power_flush_work(dev_priv);
-	drm_connector_cleanup(connector);
+	drm_connector_cleanup(&connector->base);
 
 	return false;
 }
-- 
2.39.5

