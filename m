Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D48D950A7F
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2024 18:41:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D064910E397;
	Tue, 13 Aug 2024 16:41:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nfOlNr3n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEA4A10E396;
 Tue, 13 Aug 2024 16:41:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723567313; x=1755103313;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V2geYB1RqOrnwU9qKfTSK/srRZIeFnMv7+5jKw5lrvw=;
 b=nfOlNr3ny0Cb9Y3wgYMWGXUja3+oobKKjtyOT66S0zd4A2pfYHZFm+VU
 I8uS2fysX6EtjpQAQzLYymw3fRCidPqEetgHGKJxshoaQOeax7/lqpuRF
 VCD0oxo3ddet0Fd7dVMuyaPYpVX3VenSGy9gq/UWXFArfyja1zHQdXNd4
 M9QEBHgWeK+VRihghwv44dqse6t9NtPTktrC4Yujzp/tkuIvo15od9WNi
 VFCGGzR/3+8pbu8rx1AKnRnqC3dDtzLxamwxRJ8OD8ptdErxWRfR4VjHo
 VqG0Kd5GZJXa3zjWCxTe6s+MooiFIr5MudnK0FcK+drC9ResA8vintFUW Q==;
X-CSE-ConnectionGUID: 9B2ym8x/R16aruRgwqCKrw==
X-CSE-MsgGUID: psJbVM6hQTqbmzqEbRW97w==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="21714839"
X-IronPort-AV: E=Sophos;i="6.09,286,1716274800"; d="scan'208";a="21714839"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 09:41:53 -0700
X-CSE-ConnectionGUID: KPOi7lUySFWakwgswAiR9Q==
X-CSE-MsgGUID: djcvruUHQLi2JOXKo0qtgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,286,1716274800"; d="scan'208";a="58611917"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.234])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 09:41:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 6/7] drm/i915/display: convert dp aux backlight to struct
 intel_display
Date: Tue, 13 Aug 2024 19:41:22 +0300
Message-Id: <20240813164123.2674462-6-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240813164123.2674462-1-jani.nikula@intel.com>
References: <20240813164123.2674462-1-jani.nikula@intel.com>
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

Going forward, struct intel_display shall replace struct
drm_i915_private as the main display device data pointer type. Convert
intel_dp_aux_backlight.[ch] to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_dp_aux_backlight.c | 70 +++++++++++--------
 1 file changed, 40 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 8ce60d53dcde..33f72db99b58 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -109,7 +109,7 @@ static bool is_intel_tcon_cap(const u8 tcon_cap[4])
 static bool
 intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
 	struct drm_dp_aux *aux = &intel_dp->aux;
 	struct intel_panel *panel = &connector->panel;
@@ -122,7 +122,8 @@ intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
 	if (ret != sizeof(tcon_cap))
 		return false;
 
-	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Detected %s HDR backlight interface version %d\n",
+	drm_dbg_kms(display->drm,
+		    "[CONNECTOR:%d:%s] Detected %s HDR backlight interface version %d\n",
 		    connector->base.base.id, connector->base.name,
 		    is_intel_tcon_cap(tcon_cap) ? "Intel" : "unsupported", tcon_cap[0]);
 
@@ -141,10 +142,10 @@ intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
 	 * HDR static metadata we need to start maintaining table of
 	 * ranges for such panels.
 	 */
-	if (i915->display.params.enable_dpcd_backlight != INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL &&
+	if (display->params.enable_dpcd_backlight != INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL &&
 	    !(connector->base.hdr_sink_metadata.hdmi_type1.metadata_type &
 	      BIT(HDMI_STATIC_METADATA_TYPE1))) {
-		drm_info(&i915->drm,
+		drm_info(display->drm,
 			 "[CONNECTOR:%d:%s] Panel is missing HDR static metadata. Possible support for Intel HDR backlight interface is not used. If your backlight controls don't work try booting with i915.enable_dpcd_backlight=%d. needs this, please file a _new_ bug report on drm/i915, see " FDO_BUG_URL " for details.\n",
 			 connector->base.base.id, connector->base.name,
 			 INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL);
@@ -170,14 +171,15 @@ intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
 static u32
 intel_dp_aux_hdr_get_backlight(struct intel_connector *connector, enum pipe pipe)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
 	u8 tmp;
 	u8 buf[2] = {};
 
 	if (drm_dp_dpcd_readb(&intel_dp->aux, INTEL_EDP_HDR_GETSET_CTRL_PARAMS, &tmp) != 1) {
-		drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to read current backlight mode from DPCD\n",
+		drm_err(display->drm,
+			"[CONNECTOR:%d:%s] Failed to read current backlight mode from DPCD\n",
 			connector->base.base.id, connector->base.name);
 		return 0;
 	}
@@ -195,7 +197,8 @@ intel_dp_aux_hdr_get_backlight(struct intel_connector *connector, enum pipe pipe
 
 	if (drm_dp_dpcd_read(&intel_dp->aux, INTEL_EDP_BRIGHTNESS_NITS_LSB, buf,
 			     sizeof(buf)) != sizeof(buf)) {
-		drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to read brightness from DPCD\n",
+		drm_err(display->drm,
+			"[CONNECTOR:%d:%s] Failed to read brightness from DPCD\n",
 			connector->base.base.id, connector->base.name);
 		return 0;
 	}
@@ -253,8 +256,8 @@ static void
 intel_dp_aux_write_content_luminance(struct intel_connector *connector,
 				     struct hdr_output_metadata *hdr_metadata)
 {
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	int ret;
 	u8 buf[4];
 
@@ -270,7 +273,7 @@ intel_dp_aux_write_content_luminance(struct intel_connector *connector,
 				INTEL_EDP_HDR_CONTENT_LUMINANCE,
 				buf, sizeof(buf));
 	if (ret < 0)
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Content Luminance DPCD reg write failed, err:-%d\n",
 			    ret);
 }
@@ -280,7 +283,7 @@ intel_dp_aux_fill_hdr_tcon_params(const struct drm_connector_state *conn_state,
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	struct intel_panel *panel = &connector->panel;
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 
 	/*
 	 * According to spec segmented backlight needs to be set whenever panel is in
@@ -291,7 +294,7 @@ intel_dp_aux_fill_hdr_tcon_params(const struct drm_connector_state *conn_state,
 		*ctrl |= INTEL_EDP_HDR_TCON_2084_DECODE_ENABLE;
 	}
 
-	if (DISPLAY_VER(i915) < 11)
+	if (DISPLAY_VER(display) < 11)
 		*ctrl &= ~INTEL_EDP_HDR_TCON_TONE_MAPPING_ENABLE;
 
 	if (panel->backlight.edp.intel_cap.supports_2020_gamut &&
@@ -311,9 +314,9 @@ static void
 intel_dp_aux_hdr_enable_backlight(const struct intel_crtc_state *crtc_state,
 				  const struct drm_connector_state *conn_state, u32 level)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	struct intel_panel *panel = &connector->panel;
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
 	struct hdr_output_metadata *hdr_metadata;
 	int ret;
@@ -323,7 +326,8 @@ intel_dp_aux_hdr_enable_backlight(const struct intel_crtc_state *crtc_state,
 
 	ret = drm_dp_dpcd_readb(&intel_dp->aux, INTEL_EDP_HDR_GETSET_CTRL_PARAMS, &old_ctrl);
 	if (ret != 1) {
-		drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to read current backlight control mode: %d\n",
+		drm_err(display->drm,
+			"[CONNECTOR:%d:%s] Failed to read current backlight control mode: %d\n",
 			connector->base.base.id, connector->base.name, ret);
 		return;
 	}
@@ -346,7 +350,8 @@ intel_dp_aux_hdr_enable_backlight(const struct intel_crtc_state *crtc_state,
 
 	if (ctrl != old_ctrl &&
 	    drm_dp_dpcd_writeb(&intel_dp->aux, INTEL_EDP_HDR_GETSET_CTRL_PARAMS, ctrl) != 1)
-		drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to configure DPCD brightness controls\n",
+		drm_err(display->drm,
+			"[CONNECTOR:%d:%s] Failed to configure DPCD brightness controls\n",
 			connector->base.base.id, connector->base.name);
 
 	if (intel_dp_in_hdr_mode(conn_state)) {
@@ -377,7 +382,7 @@ static const char *dpcd_vs_pwm_str(bool aux)
 static void
 intel_dp_aux_write_panel_luminance_override(struct intel_connector *connector)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
 	int ret;
@@ -392,7 +397,7 @@ intel_dp_aux_write_panel_luminance_override(struct intel_connector *connector)
 				INTEL_EDP_HDR_PANEL_LUMINANCE_OVERRIDE,
 				buf, sizeof(buf));
 	if (ret < 0)
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Panel Luminance DPCD reg write failed, err:-%d\n",
 			    ret);
 }
@@ -400,20 +405,21 @@ intel_dp_aux_write_panel_luminance_override(struct intel_connector *connector)
 static int
 intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pipe)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 	struct drm_luminance_range_info *luminance_range =
 		&connector->base.display_info.luminance_range;
 	int ret;
 
-	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] SDR backlight is controlled through %s\n",
+	drm_dbg_kms(display->drm,
+		    "[CONNECTOR:%d:%s] SDR backlight is controlled through %s\n",
 		    connector->base.base.id, connector->base.name,
 		    dpcd_vs_pwm_str(panel->backlight.edp.intel_cap.sdr_uses_aux));
 
 	if (!panel->backlight.edp.intel_cap.sdr_uses_aux) {
 		ret = panel->backlight.pwm_funcs->setup(connector, pipe);
 		if (ret < 0) {
-			drm_err(&i915->drm,
+			drm_err(display->drm,
 				"[CONNECTOR:%d:%s] Failed to setup SDR backlight controls through PWM: %d\n",
 				connector->base.base.id, connector->base.name, ret);
 			return ret;
@@ -430,7 +436,8 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pi
 
 	intel_dp_aux_write_panel_luminance_override(connector);
 
-	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Using AUX HDR interface for backlight control (range %d..%d)\n",
+	drm_dbg_kms(display->drm,
+		    "[CONNECTOR:%d:%s] Using AUX HDR interface for backlight control (range %d..%d)\n",
 		    connector->base.base.id, connector->base.name,
 		    panel->backlight.min, panel->backlight.max);
 
@@ -501,9 +508,9 @@ static void intel_dp_aux_vesa_disable_backlight(const struct drm_connector_state
 
 static int intel_dp_aux_vesa_setup_backlight(struct intel_connector *connector, enum pipe pipe)
 {
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	struct intel_panel *panel = &connector->panel;
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	u16 current_level;
 	u8 current_mode;
 	int ret;
@@ -514,17 +521,19 @@ static int intel_dp_aux_vesa_setup_backlight(struct intel_connector *connector,
 	if (ret < 0)
 		return ret;
 
-	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] AUX VESA backlight enable is controlled through %s\n",
+	drm_dbg_kms(display->drm,
+		    "[CONNECTOR:%d:%s] AUX VESA backlight enable is controlled through %s\n",
 		    connector->base.base.id, connector->base.name,
 		    dpcd_vs_pwm_str(panel->backlight.edp.vesa.info.aux_enable));
-	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] AUX VESA backlight level is controlled through %s\n",
+	drm_dbg_kms(display->drm,
+		    "[CONNECTOR:%d:%s] AUX VESA backlight level is controlled through %s\n",
 		    connector->base.base.id, connector->base.name,
 		    dpcd_vs_pwm_str(panel->backlight.edp.vesa.info.aux_set));
 
 	if (!panel->backlight.edp.vesa.info.aux_set || !panel->backlight.edp.vesa.info.aux_enable) {
 		ret = panel->backlight.pwm_funcs->setup(connector, pipe);
 		if (ret < 0) {
-			drm_err(&i915->drm,
+			drm_err(display->drm,
 				"[CONNECTOR:%d:%s] Failed to setup PWM backlight controls for eDP backlight: %d\n",
 				connector->base.base.id, connector->base.name, ret);
 			return ret;
@@ -553,7 +562,8 @@ static int intel_dp_aux_vesa_setup_backlight(struct intel_connector *connector,
 		}
 	}
 
-	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Using AUX VESA interface for backlight control\n",
+	drm_dbg_kms(display->drm,
+		    "[CONNECTOR:%d:%s] Using AUX VESA interface for backlight control\n",
 		    connector->base.base.id, connector->base.name);
 
 	return 0;
@@ -562,11 +572,12 @@ static int intel_dp_aux_vesa_setup_backlight(struct intel_connector *connector,
 static bool
 intel_dp_aux_supports_vesa_backlight(struct intel_connector *connector)
 {
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
 	if (drm_edp_backlight_supported(intel_dp->edp_dpcd)) {
-		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] AUX Backlight Control Supported!\n",
+		drm_dbg_kms(display->drm,
+			    "[CONNECTOR:%d:%s] AUX Backlight Control Supported!\n",
 			    connector->base.base.id, connector->base.name);
 		return true;
 	}
@@ -591,16 +602,15 @@ static const struct intel_panel_bl_funcs intel_dp_vesa_bl_funcs = {
 
 int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
 {
+	struct intel_display *display = to_intel_display(connector);
 	struct drm_device *dev = connector->base.dev;
 	struct intel_panel *panel = &connector->panel;
-	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	bool try_intel_interface = false, try_vesa_interface = false;
 
 	/* Check the VBT and user's module parameters to figure out which
 	 * interfaces to probe
 	 */
-	switch (i915->display.params.enable_dpcd_backlight) {
+	switch (display->params.enable_dpcd_backlight) {
 	case INTEL_DP_AUX_BACKLIGHT_OFF:
 		return -ENODEV;
 	case INTEL_DP_AUX_BACKLIGHT_AUTO:
-- 
2.39.2

