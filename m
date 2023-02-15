Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 323FD697DF1
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 15:00:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32C6010E1D1;
	Wed, 15 Feb 2023 14:00:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69FBE10E1D1
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 14:00:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676469627; x=1708005627;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SPFdsrY1KY/odJBE1K6SamNwM74jzlZ4qPPa2opdlNA=;
 b=FV/xGqXH4wBU6e2CziGkWPHipbkcktlx5inmCWgRCJ/K+NdN58qH2a83
 +VLW1cXi+vHMH5QpXyBklJUxycSTsmf4O3EP94lujsodzLvhweMZqVMwr
 1x9cv8lux724Wo4bnTwBMA8HsDNjhUIQ77/2/15PWzyyKcfbv77c/pzN0
 qBRwqDBVKI/Ja0q2C62jMTNCaTjI+VKmqW19JL2CMOePqSq6cCzrAafG/
 /rrbjNOKqkcRdRDdvufr0a9US2jh76ChMXm7mfBq+cbf4i5OM1BRKyJf4
 5/8OCFC91vzRtnwH10P9PJgxjCPVmOIojHOxGeApIoS4nymOItHaFjags g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="329149153"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="329149153"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 06:00:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="662944228"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="662944228"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga007.jf.intel.com with SMTP; 15 Feb 2023 06:00:22 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Feb 2023 16:00:21 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Feb 2023 16:00:21 +0200
Message-Id: <20230215140021.2843-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Include connector id+name in all
 backlight debugs/errors
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

With multi panel machines becoming more prominent it's also
important to know which connector's backlight we're talking
about. Include that information in all the backlight debug/error
messages.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_backlight.c    | 60 ++++++++++++-------
 .../drm/i915/display/intel_dp_aux_backlight.c | 55 ++++++++++-------
 2 files changed, 72 insertions(+), 43 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index a4e4b7f79e4d..7e076bd5f07c 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -105,7 +105,8 @@ void intel_backlight_set_pwm_level(const struct drm_connector_state *conn_state,
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 
-	drm_dbg_kms(&i915->drm, "set backlight PWM = %d\n", val);
+	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] set backlight PWM = %d\n",
+		    connector->base.base.id, connector->base.name, val);
 	panel->backlight.pwm_funcs->set(conn_state, val);
 }
 
@@ -283,7 +284,8 @@ intel_panel_actually_set_backlight(const struct drm_connector_state *conn_state,
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 
-	drm_dbg_kms(&i915->drm, "set backlight level = %d\n", level);
+	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] set backlight level = %d\n",
+		    connector->base.base.id, connector->base.name, level);
 
 	panel->backlight.funcs->set(conn_state, level);
 }
@@ -345,7 +347,8 @@ static void lpt_disable_backlight(const struct drm_connector_state *old_conn_sta
 	 */
 	tmp = intel_de_read(i915, BLC_PWM_CPU_CTL2);
 	if (tmp & BLM_PWM_ENABLE) {
-		drm_dbg_kms(&i915->drm, "cpu backlight was enabled, disabling\n");
+		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] CPU backlight was enabled, disabling\n",
+			    connector->base.base.id, connector->base.name);
 		intel_de_write(i915, BLC_PWM_CPU_CTL2, tmp & ~BLM_PWM_ENABLE);
 	}
 
@@ -458,7 +461,8 @@ void intel_backlight_disable(const struct drm_connector_state *old_conn_state)
 	 * another client is not activated.
 	 */
 	if (i915->drm.switch_power_state == DRM_SWITCH_POWER_CHANGING) {
-		drm_dbg_kms(&i915->drm, "Skipping backlight disable on vga switch\n");
+		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Skipping backlight disable on vga switch\n",
+			    connector->base.base.id, connector->base.name);
 		return;
 	}
 
@@ -482,7 +486,8 @@ static void lpt_enable_backlight(const struct intel_crtc_state *crtc_state,
 
 	pch_ctl1 = intel_de_read(i915, BLC_PWM_PCH_CTL1);
 	if (pch_ctl1 & BLM_PCH_PWM_ENABLE) {
-		drm_dbg_kms(&i915->drm, "pch backlight already enabled\n");
+		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] PCH backlight already enabled\n",
+			    connector->base.base.id, connector->base.name);
 		pch_ctl1 &= ~BLM_PCH_PWM_ENABLE;
 		intel_de_write(i915, BLC_PWM_PCH_CTL1, pch_ctl1);
 	}
@@ -533,14 +538,16 @@ static void pch_enable_backlight(const struct intel_crtc_state *crtc_state,
 
 	cpu_ctl2 = intel_de_read(i915, BLC_PWM_CPU_CTL2);
 	if (cpu_ctl2 & BLM_PWM_ENABLE) {
-		drm_dbg_kms(&i915->drm, "cpu backlight already enabled\n");
+		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] CPU backlight already enabled\n",
+			    connector->base.base.id, connector->base.name);
 		cpu_ctl2 &= ~BLM_PWM_ENABLE;
 		intel_de_write(i915, BLC_PWM_CPU_CTL2, cpu_ctl2);
 	}
 
 	pch_ctl1 = intel_de_read(i915, BLC_PWM_PCH_CTL1);
 	if (pch_ctl1 & BLM_PCH_PWM_ENABLE) {
-		drm_dbg_kms(&i915->drm, "pch backlight already enabled\n");
+		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] PCH backlight already enabled\n",
+			    connector->base.base.id, connector->base.name);
 		pch_ctl1 &= ~BLM_PCH_PWM_ENABLE;
 		intel_de_write(i915, BLC_PWM_PCH_CTL1, pch_ctl1);
 	}
@@ -578,7 +585,8 @@ static void i9xx_enable_backlight(const struct intel_crtc_state *crtc_state,
 
 	ctl = intel_de_read(i915, BLC_PWM_CTL);
 	if (ctl & BACKLIGHT_DUTY_CYCLE_MASK_PNV) {
-		drm_dbg_kms(&i915->drm, "backlight already enabled\n");
+		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] backlight already enabled\n",
+			    connector->base.base.id, connector->base.name);
 		intel_de_write(i915, BLC_PWM_CTL, 0);
 	}
 
@@ -618,7 +626,8 @@ static void i965_enable_backlight(const struct intel_crtc_state *crtc_state,
 
 	ctl2 = intel_de_read(i915, BLC_PWM_CTL2);
 	if (ctl2 & BLM_PWM_ENABLE) {
-		drm_dbg_kms(&i915->drm, "backlight already enabled\n");
+		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] backlight already enabled\n",
+			    connector->base.base.id, connector->base.name);
 		ctl2 &= ~BLM_PWM_ENABLE;
 		intel_de_write(i915, BLC_PWM_CTL2, ctl2);
 	}
@@ -653,7 +662,8 @@ static void vlv_enable_backlight(const struct intel_crtc_state *crtc_state,
 
 	ctl2 = intel_de_read(i915, VLV_BLC_PWM_CTL2(pipe));
 	if (ctl2 & BLM_PWM_ENABLE) {
-		drm_dbg_kms(&i915->drm, "backlight already enabled\n");
+		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] backlight already enabled\n",
+			    connector->base.base.id, connector->base.name);
 		ctl2 &= ~BLM_PWM_ENABLE;
 		intel_de_write(i915, VLV_BLC_PWM_CTL2(pipe), ctl2);
 	}
@@ -685,7 +695,8 @@ static void bxt_enable_backlight(const struct intel_crtc_state *crtc_state,
 	if (panel->backlight.controller == 1) {
 		val = intel_de_read(i915, UTIL_PIN_CTL);
 		if (val & UTIL_PIN_ENABLE) {
-			drm_dbg_kms(&i915->drm, "util pin already enabled\n");
+			drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] utility pin already enabled\n",
+				    connector->base.base.id, connector->base.name);
 			val &= ~UTIL_PIN_ENABLE;
 			intel_de_write(i915, UTIL_PIN_CTL, val);
 		}
@@ -699,7 +710,8 @@ static void bxt_enable_backlight(const struct intel_crtc_state *crtc_state,
 
 	pwm_ctl = intel_de_read(i915, BXT_BLC_PWM_CTL(panel->backlight.controller));
 	if (pwm_ctl & BXT_BLC_PWM_ENABLE) {
-		drm_dbg_kms(&i915->drm, "backlight already enabled\n");
+		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] backlight already enabled\n",
+			    connector->base.base.id, connector->base.name);
 		pwm_ctl &= ~BXT_BLC_PWM_ENABLE;
 		intel_de_write(i915, BXT_BLC_PWM_CTL(panel->backlight.controller),
 			       pwm_ctl);
@@ -1468,7 +1480,8 @@ cnp_setup_backlight(struct intel_connector *connector, enum pipe unused)
 	 */
 	panel->backlight.controller = connector->panel.vbt.backlight.controller;
 	if (!cnp_backlight_controller_is_valid(i915, panel->backlight.controller)) {
-		drm_dbg_kms(&i915->drm, "Invalid backlight controller %d, assuming 0\n",
+		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Invalid backlight controller %d, assuming 0\n",
+			    connector->base.base.id, connector->base.name,
 			    panel->backlight.controller);
 		panel->backlight.controller = 0;
 	}
@@ -1511,8 +1524,8 @@ static int ext_pwm_setup_backlight(struct intel_connector *connector,
 	}
 
 	if (IS_ERR(panel->backlight.pwm)) {
-		drm_err(&i915->drm, "Failed to get the %s PWM chip\n",
-			desc);
+		drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to get the %s PWM chip\n",
+			connector->base.base.id, connector->base.name, desc);
 		panel->backlight.pwm = NULL;
 		return -ENODEV;
 	}
@@ -1529,7 +1542,8 @@ static int ext_pwm_setup_backlight(struct intel_connector *connector,
 		level = intel_backlight_invert_pwm_level(connector, level);
 		panel->backlight.pwm_enabled = true;
 
-		drm_dbg_kms(&i915->drm, "PWM already enabled at freq %ld, VBT freq %d, level %d\n",
+		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] PWM already enabled at freq %ld, VBT freq %d, level %d\n",
+			    connector->base.base.id, connector->base.name,
 			    NSEC_PER_SEC / (unsigned long)panel->backlight.pwm_state.period,
 			    get_vbt_pwm_freq(connector), level);
 	} else {
@@ -1623,10 +1637,12 @@ int intel_backlight_setup(struct intel_connector *connector, enum pipe pipe)
 	if (!connector->panel.vbt.backlight.present) {
 		if (intel_has_quirk(i915, QUIRK_BACKLIGHT_PRESENT)) {
 			drm_dbg_kms(&i915->drm,
-				    "no backlight present per VBT, but present per quirk\n");
+				    "[CONNECTOR:%d:%s] no backlight present per VBT, but present per quirk\n",
+				    connector->base.base.id, connector->base.name);
 		} else {
 			drm_dbg_kms(&i915->drm,
-				    "no backlight present per VBT\n");
+				    "[CONNECTOR:%d:%s] no backlight present per VBT\n",
+				    connector->base.base.id, connector->base.name);
 			return 0;
 		}
 	}
@@ -1642,16 +1658,16 @@ int intel_backlight_setup(struct intel_connector *connector, enum pipe pipe)
 
 	if (ret) {
 		drm_dbg_kms(&i915->drm,
-			    "failed to setup backlight for connector %s\n",
-			    connector->base.name);
+			    "[CONNECTOR:%d:%s] failed to setup backlight\n",
+			    connector->base.base.id, connector->base.name);
 		return ret;
 	}
 
 	panel->backlight.present = true;
 
 	drm_dbg_kms(&i915->drm,
-		    "Connector %s backlight initialized, %s, brightness %u/%u\n",
-		    connector->base.name,
+		    "[CONNECTOR:%d:%s] backlight initialized, %s, brightness %u/%u\n",
+		    connector->base.base.id, connector->base.name,
 		    str_enabled_disabled(panel->backlight.enabled),
 		    panel->backlight.level, panel->backlight.max);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 83af95bce98d..aaecd1c38172 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -105,6 +105,11 @@ enum intel_dp_aux_backlight_modparam {
 	INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL = 3,
 };
 
+static bool is_intel_tcon_cap(const u8 tcon_cap[4])
+{
+	return tcon_cap[0] >= 1;
+}
+
 /* Intel EDP backlight callbacks */
 static bool
 intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
@@ -125,14 +130,12 @@ intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
 	if (!(tcon_cap[1] & INTEL_EDP_HDR_TCON_BRIGHTNESS_NITS_CAP))
 		return false;
 
-	if (tcon_cap[0] >= 1) {
-		drm_dbg_kms(&i915->drm, "Detected Intel HDR backlight interface version %d\n",
-			    tcon_cap[0]);
-	} else {
-		drm_dbg_kms(&i915->drm, "Detected unsupported HDR backlight interface version %d\n",
-			    tcon_cap[0]);
+	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Detected %s HDR backlight interface version %d\n",
+		    connector->base.base.id, connector->base.name,
+		    is_intel_tcon_cap(tcon_cap) ? "Intel" : "unsupported", tcon_cap[0]);
+
+	if (!is_intel_tcon_cap(tcon_cap))
 		return false;
-	}
 
 	/*
 	 * If we don't have HDR static metadata there is no way to
@@ -147,7 +150,8 @@ intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
 	    !(connector->base.hdr_sink_metadata.hdmi_type1.metadata_type &
 	      BIT(HDMI_STATIC_METADATA_TYPE1))) {
 		drm_info(&i915->drm,
-			 "Panel is missing HDR static metadata. Possible support for Intel HDR backlight interface is not used. If your backlight controls don't work try booting with i915.enable_dpcd_backlight=%d. needs this, please file a _new_ bug report on drm/i915, see " FDO_BUG_URL " for details.\n",
+			 "[CONNECTOR:%d:%s] Panel is missing HDR static metadata. Possible support for Intel HDR backlight interface is not used. If your backlight controls don't work try booting with i915.enable_dpcd_backlight=%d. needs this, please file a _new_ bug report on drm/i915, see " FDO_BUG_URL " for details.\n",
+			 connector->base.base.id, connector->base.name,
 			 INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL);
 		return false;
 	}
@@ -168,7 +172,8 @@ intel_dp_aux_hdr_get_backlight(struct intel_connector *connector, enum pipe pipe
 	u8 buf[2] = { 0 };
 
 	if (drm_dp_dpcd_readb(&intel_dp->aux, INTEL_EDP_HDR_GETSET_CTRL_PARAMS, &tmp) != 1) {
-		drm_err(&i915->drm, "Failed to read current backlight mode from DPCD\n");
+		drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to read current backlight mode from DPCD\n",
+			connector->base.base.id, connector->base.name);
 		return 0;
 	}
 
@@ -185,7 +190,8 @@ intel_dp_aux_hdr_get_backlight(struct intel_connector *connector, enum pipe pipe
 
 	if (drm_dp_dpcd_read(&intel_dp->aux, INTEL_EDP_BRIGHTNESS_NITS_LSB, buf,
 			     sizeof(buf)) != sizeof(buf)) {
-		drm_err(&i915->drm, "Failed to read brightness from DPCD\n");
+		drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to read brightness from DPCD\n",
+			connector->base.base.id, connector->base.name);
 		return 0;
 	}
 
@@ -205,7 +211,8 @@ intel_dp_aux_hdr_set_aux_backlight(const struct drm_connector_state *conn_state,
 
 	if (drm_dp_dpcd_write(&intel_dp->aux, INTEL_EDP_BRIGHTNESS_NITS_LSB, buf,
 			      sizeof(buf)) != sizeof(buf))
-		drm_err(dev, "Failed to write brightness level to DPCD\n");
+		drm_err(dev, "[CONNECTOR:%d:%s] Failed to write brightness level to DPCD\n",
+			connector->base.base.id, connector->base.name);
 }
 
 static void
@@ -238,7 +245,8 @@ intel_dp_aux_hdr_enable_backlight(const struct intel_crtc_state *crtc_state,
 
 	ret = drm_dp_dpcd_readb(&intel_dp->aux, INTEL_EDP_HDR_GETSET_CTRL_PARAMS, &old_ctrl);
 	if (ret != 1) {
-		drm_err(&i915->drm, "Failed to read current backlight control mode: %d\n", ret);
+		drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to read current backlight control mode: %d\n",
+			connector->base.base.id, connector->base.name, ret);
 		return;
 	}
 
@@ -254,9 +262,10 @@ intel_dp_aux_hdr_enable_backlight(const struct intel_crtc_state *crtc_state,
 		ctrl &= ~INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE;
 	}
 
-	if (ctrl != old_ctrl)
-		if (drm_dp_dpcd_writeb(&intel_dp->aux, INTEL_EDP_HDR_GETSET_CTRL_PARAMS, ctrl) != 1)
-			drm_err(&i915->drm, "Failed to configure DPCD brightness controls\n");
+	if (ctrl != old_ctrl &&
+	    drm_dp_dpcd_writeb(&intel_dp->aux, INTEL_EDP_HDR_GETSET_CTRL_PARAMS, ctrl) != 1)
+		drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to configure DPCD brightness controls\n",
+			connector->base.base.id, connector->base.name);
 }
 
 static void
@@ -290,7 +299,8 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pi
 		ret = panel->backlight.pwm_funcs->setup(connector, pipe);
 		if (ret < 0) {
 			drm_err(&i915->drm,
-				"Failed to setup SDR backlight controls through PWM: %d\n", ret);
+				"[CONNECTOR:%d:%s] Failed to setup SDR backlight controls through PWM: %d\n",
+				connector->base.base.id, connector->base.name, ret);
 			return ret;
 		}
 	}
@@ -390,8 +400,8 @@ static int intel_dp_aux_vesa_setup_backlight(struct intel_connector *connector,
 		ret = panel->backlight.pwm_funcs->setup(connector, pipe);
 		if (ret < 0) {
 			drm_err(&i915->drm,
-				"Failed to setup PWM backlight controls for eDP backlight: %d\n",
-				ret);
+				"[CONNECTOR:%d:%s] Failed to setup PWM backlight controls for eDP backlight: %d\n",
+				connector->base.base.id, connector->base.name, ret);
 			return ret;
 		}
 	}
@@ -428,7 +438,8 @@ intel_dp_aux_supports_vesa_backlight(struct intel_connector *connector)
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
 	if (drm_edp_backlight_supported(intel_dp->edp_dpcd)) {
-		drm_dbg_kms(&i915->drm, "AUX Backlight Control Supported!\n");
+		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] AUX Backlight Control Supported!\n",
+			    connector->base.base.id, connector->base.name);
 		return true;
 	}
 	return false;
@@ -504,13 +515,15 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
 	 * interfaces is to probe for Intel's first, and VESA's second.
 	 */
 	if (try_intel_interface && intel_dp_aux_supports_hdr_backlight(connector)) {
-		drm_dbg_kms(dev, "Using Intel proprietary eDP backlight controls\n");
+		drm_dbg_kms(dev, "[CONNECTOR:%d:%s] Using Intel proprietary eDP backlight controls\n",
+			    connector->base.base.id, connector->base.name);
 		panel->backlight.funcs = &intel_dp_hdr_bl_funcs;
 		return 0;
 	}
 
 	if (try_vesa_interface && intel_dp_aux_supports_vesa_backlight(connector)) {
-		drm_dbg_kms(dev, "Using VESA eDP backlight controls\n");
+		drm_dbg_kms(dev, "[CONNECTOR:%d:%s] Using VESA eDP backlight controls\n",
+			    connector->base.base.id, connector->base.name);
 		panel->backlight.funcs = &intel_dp_vesa_bl_funcs;
 		return 0;
 	}
-- 
2.39.1

