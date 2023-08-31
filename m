Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67FB178EA61
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Aug 2023 12:43:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE68310E5FA;
	Thu, 31 Aug 2023 10:43:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3522210E5FA;
 Thu, 31 Aug 2023 10:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693478585; x=1725014585;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3EfxTK4L8c9vwWBrKI0h2GegbGN3oPBsRa/1tThsNL0=;
 b=Q7pHDvSZw9H+9T9Zgob+PGShi7kWigxN3FQd+aFlX2kEyLrE6VMEqRiH
 zYLzzrI0rMpFW5WYZH+W79Tglhb6Muv4fBcltFIiQ6CBgloSZ/WJNP+DM
 dvRUqgyB2rhqErwyR7dkqiVaHBTlnlOeTtwmD6vzLI7e3FhYJDVC5BNdl
 sP1+Ji7xoAYF52T4iM38Danu/Mqau/wgRYsRc8V51kwO57uugDWy6lgK8
 5rjXKvCbEnyOfu0et+QrfOtK85m29+/+2q3jGkdZuMz537o+YkLV9Wbi0
 yMBJpocAOdZiNUgKB0Qka3OF5rY4oH534bqnXAlR6zdpYNumB465rAKPc w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="373298163"
X-IronPort-AV: E=Sophos;i="6.02,216,1688454000"; d="scan'208";a="373298163"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2023 03:43:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="913184380"
X-IronPort-AV: E=Sophos;i="6.02,216,1688454000"; d="scan'208";a="913184380"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga005.jf.intel.com with SMTP; 31 Aug 2023 03:43:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Aug 2023 13:43:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Aug 2023 13:43:00 +0300
Message-ID: <20230831104300.29688-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230829113920.13713-4-ville.syrjala@linux.intel.com>
References: <20230829113920.13713-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 03/12] drm/i915: Call the DDC bus i2c adapter
 "ddc"
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
Cc: Jani Nikula <jani.nikula@intel.com>, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Rename the various names we've used for the DDC bus
i2c adapter ("i2c", "adapter", etc.) to just "ddc".
This differentiates it from the various other i2c
busses we might have (DSI panel stuff, DVO control bus, etc.).

v2: Don't add a bogus drm_get_edid() call (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_connector.c    |  6 +--
 .../gpu/drm/i915/display/intel_connector.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_crt.c      | 32 ++++++------
 drivers/gpu/drm/i915/display/intel_ddi.c      |  4 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 51 ++++++++-----------
 drivers/gpu/drm/i915/display/intel_lspcon.c   | 14 ++---
 6 files changed, 51 insertions(+), 58 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index ff3bcadebe59..c65887870ddc 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -192,17 +192,17 @@ int intel_connector_update_modes(struct drm_connector *connector,
 /**
  * intel_ddc_get_modes - get modelist from monitor
  * @connector: DRM connector device to use
- * @adapter: i2c adapter
+ * @ddc: DDC bus i2c adapter
  *
  * Fetch the EDID information from @connector using the DDC bus.
  */
 int intel_ddc_get_modes(struct drm_connector *connector,
-			struct i2c_adapter *adapter)
+			struct i2c_adapter *ddc)
 {
 	const struct drm_edid *drm_edid;
 	int ret;
 
-	drm_edid = drm_edid_read_ddc(connector, adapter);
+	drm_edid = drm_edid_read_ddc(connector, ddc);
 	if (!drm_edid)
 		return 0;
 
diff --git a/drivers/gpu/drm/i915/display/intel_connector.h b/drivers/gpu/drm/i915/display/intel_connector.h
index aaf7281462dc..bafde3f11ff4 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.h
+++ b/drivers/gpu/drm/i915/display/intel_connector.h
@@ -26,7 +26,7 @@ bool intel_connector_get_hw_state(struct intel_connector *connector);
 enum pipe intel_connector_get_pipe(struct intel_connector *connector);
 int intel_connector_update_modes(struct drm_connector *connector,
 				 const struct drm_edid *drm_edid);
-int intel_ddc_get_modes(struct drm_connector *c, struct i2c_adapter *adapter);
+int intel_ddc_get_modes(struct drm_connector *c, struct i2c_adapter *ddc);
 void intel_attach_force_audio_property(struct drm_connector *connector);
 void intel_attach_broadcast_rgb_property(struct drm_connector *connector);
 void intel_attach_aspect_ratio_property(struct drm_connector *connector);
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index f66340b4caf0..8145511bd5c3 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -610,18 +610,18 @@ static bool intel_crt_detect_hotplug(struct drm_connector *connector)
 }
 
 static const struct drm_edid *intel_crt_get_edid(struct drm_connector *connector,
-						 struct i2c_adapter *i2c)
+						 struct i2c_adapter *ddc)
 {
 	const struct drm_edid *drm_edid;
 
-	drm_edid = drm_edid_read_ddc(connector, i2c);
+	drm_edid = drm_edid_read_ddc(connector, ddc);
 
-	if (!drm_edid && !intel_gmbus_is_forced_bit(i2c)) {
+	if (!drm_edid && !intel_gmbus_is_forced_bit(ddc)) {
 		drm_dbg_kms(connector->dev,
 			    "CRT GMBUS EDID read failed, retry using GPIO bit-banging\n");
-		intel_gmbus_force_bit(i2c, true);
-		drm_edid = drm_edid_read_ddc(connector, i2c);
-		intel_gmbus_force_bit(i2c, false);
+		intel_gmbus_force_bit(ddc, true);
+		drm_edid = drm_edid_read_ddc(connector, ddc);
+		intel_gmbus_force_bit(ddc, false);
 	}
 
 	return drm_edid;
@@ -629,12 +629,12 @@ static const struct drm_edid *intel_crt_get_edid(struct drm_connector *connector
 
 /* local version of intel_ddc_get_modes() to use intel_crt_get_edid() */
 static int intel_crt_ddc_get_modes(struct drm_connector *connector,
-				struct i2c_adapter *adapter)
+				   struct i2c_adapter *ddc)
 {
 	const struct drm_edid *drm_edid;
 	int ret;
 
-	drm_edid = intel_crt_get_edid(connector, adapter);
+	drm_edid = intel_crt_get_edid(connector, ddc);
 	if (!drm_edid)
 		return 0;
 
@@ -650,11 +650,11 @@ static bool intel_crt_detect_ddc(struct drm_connector *connector)
 	struct intel_crt *crt = intel_attached_crt(to_intel_connector(connector));
 	struct drm_i915_private *dev_priv = to_i915(crt->base.base.dev);
 	const struct drm_edid *drm_edid;
-	struct i2c_adapter *i2c;
+	struct i2c_adapter *ddc;
 	bool ret = false;
 
-	i2c = intel_gmbus_get_adapter(dev_priv, dev_priv->display.vbt.crt_ddc_pin);
-	drm_edid = intel_crt_get_edid(connector, i2c);
+	ddc = intel_gmbus_get_adapter(dev_priv, dev_priv->display.vbt.crt_ddc_pin);
+	drm_edid = intel_crt_get_edid(connector, ddc);
 
 	if (drm_edid) {
 		const struct edid *edid = drm_edid_raw(drm_edid);
@@ -917,20 +917,20 @@ static int intel_crt_get_modes(struct drm_connector *connector)
 	struct intel_crt *crt = intel_attached_crt(to_intel_connector(connector));
 	struct intel_encoder *intel_encoder = &crt->base;
 	intel_wakeref_t wakeref;
-	struct i2c_adapter *i2c;
+	struct i2c_adapter *ddc;
 	int ret;
 
 	wakeref = intel_display_power_get(dev_priv,
 					  intel_encoder->power_domain);
 
-	i2c = intel_gmbus_get_adapter(dev_priv, dev_priv->display.vbt.crt_ddc_pin);
-	ret = intel_crt_ddc_get_modes(connector, i2c);
+	ddc = intel_gmbus_get_adapter(dev_priv, dev_priv->display.vbt.crt_ddc_pin);
+	ret = intel_crt_ddc_get_modes(connector, ddc);
 	if (ret || !IS_G4X(dev_priv))
 		goto out;
 
 	/* Try to probe digital port for output in DVI-I -> VGA mode. */
-	i2c = intel_gmbus_get_adapter(dev_priv, GMBUS_PIN_DPB);
-	ret = intel_crt_ddc_get_modes(connector, i2c);
+	ddc = intel_gmbus_get_adapter(dev_priv, GMBUS_PIN_DPB);
+	ret = intel_crt_ddc_get_modes(connector, ddc);
 
 out:
 	intel_display_power_put(dev_priv, intel_encoder->power_domain, wakeref);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index b7f4281b8658..e6cc4dab3201 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4323,7 +4323,7 @@ static int intel_hdmi_reset_link(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_hdmi *hdmi = enc_to_intel_hdmi(encoder);
 	struct intel_connector *connector = hdmi->attached_connector;
-	struct i2c_adapter *adapter =
+	struct i2c_adapter *ddc =
 		intel_gmbus_get_adapter(dev_priv, hdmi->ddc_bus);
 	struct drm_connector_state *conn_state;
 	struct intel_crtc_state *crtc_state;
@@ -4365,7 +4365,7 @@ static int intel_hdmi_reset_link(struct intel_encoder *encoder,
 	    !try_wait_for_completion(&conn_state->commit->hw_done))
 		return 0;
 
-	ret = drm_scdc_readb(adapter, SCDC_TMDS_CONFIG, &config);
+	ret = drm_scdc_readb(ddc, SCDC_TMDS_CONFIG, &config);
 	if (ret < 0) {
 		drm_err(&dev_priv->drm, "[CONNECTOR:%d:%s] Failed to read TMDS config: %d\n",
 			connector->base.base.id, connector->base.name, ret);
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 116556d6352a..32e0fe8dcd8a 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1240,17 +1240,16 @@ static void hsw_set_infoframes(struct intel_encoder *encoder,
 void intel_dp_dual_mode_set_tmds_output(struct intel_hdmi *hdmi, bool enable)
 {
 	struct drm_i915_private *dev_priv = intel_hdmi_to_i915(hdmi);
-	struct i2c_adapter *adapter;
+	struct i2c_adapter *ddc = intel_gmbus_get_adapter(dev_priv, hdmi->ddc_bus);
 
 	if (hdmi->dp_dual_mode.type < DRM_DP_DUAL_MODE_TYPE2_DVI)
 		return;
 
-	adapter = intel_gmbus_get_adapter(dev_priv, hdmi->ddc_bus);
-
 	drm_dbg_kms(&dev_priv->drm, "%s DP dual mode adaptor TMDS output\n",
 		    enable ? "Enabling" : "Disabling");
 
-	drm_dp_dual_mode_set_tmds_output(&dev_priv->drm, hdmi->dp_dual_mode.type, adapter, enable);
+	drm_dp_dual_mode_set_tmds_output(&dev_priv->drm,
+					 hdmi->dp_dual_mode.type, ddc, enable);
 }
 
 static int intel_hdmi_hdcp_read(struct intel_digital_port *dig_port,
@@ -1258,8 +1257,7 @@ static int intel_hdmi_hdcp_read(struct intel_digital_port *dig_port,
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_hdmi *hdmi = &dig_port->hdmi;
-	struct i2c_adapter *adapter = intel_gmbus_get_adapter(i915,
-							      hdmi->ddc_bus);
+	struct i2c_adapter *ddc = intel_gmbus_get_adapter(i915, hdmi->ddc_bus);
 	int ret;
 	u8 start = offset & 0xff;
 	struct i2c_msg msgs[] = {
@@ -1276,7 +1274,7 @@ static int intel_hdmi_hdcp_read(struct intel_digital_port *dig_port,
 			.buf = buffer
 		}
 	};
-	ret = i2c_transfer(adapter, msgs, ARRAY_SIZE(msgs));
+	ret = i2c_transfer(ddc, msgs, ARRAY_SIZE(msgs));
 	if (ret == ARRAY_SIZE(msgs))
 		return 0;
 	return ret >= 0 ? -EIO : ret;
@@ -1287,8 +1285,7 @@ static int intel_hdmi_hdcp_write(struct intel_digital_port *dig_port,
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_hdmi *hdmi = &dig_port->hdmi;
-	struct i2c_adapter *adapter = intel_gmbus_get_adapter(i915,
-							      hdmi->ddc_bus);
+	struct i2c_adapter *ddc = intel_gmbus_get_adapter(i915, hdmi->ddc_bus);
 	int ret;
 	u8 *write_buf;
 	struct i2c_msg msg;
@@ -1305,7 +1302,7 @@ static int intel_hdmi_hdcp_write(struct intel_digital_port *dig_port,
 	msg.len = size + 1,
 	msg.buf = write_buf;
 
-	ret = i2c_transfer(adapter, &msg, 1);
+	ret = i2c_transfer(ddc, &msg, 1);
 	if (ret == 1)
 		ret = 0;
 	else if (ret >= 0)
@@ -1321,8 +1318,7 @@ int intel_hdmi_hdcp_write_an_aksv(struct intel_digital_port *dig_port,
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_hdmi *hdmi = &dig_port->hdmi;
-	struct i2c_adapter *adapter = intel_gmbus_get_adapter(i915,
-							      hdmi->ddc_bus);
+	struct i2c_adapter *ddc = intel_gmbus_get_adapter(i915, hdmi->ddc_bus);
 	int ret;
 
 	ret = intel_hdmi_hdcp_write(dig_port, DRM_HDCP_DDC_AN, an,
@@ -1333,7 +1329,7 @@ int intel_hdmi_hdcp_write_an_aksv(struct intel_digital_port *dig_port,
 		return ret;
 	}
 
-	ret = intel_gmbus_output_aksv(adapter);
+	ret = intel_gmbus_output_aksv(ddc);
 	if (ret < 0) {
 		drm_dbg_kms(&i915->drm, "Failed to output aksv (%d)\n", ret);
 		return ret;
@@ -2402,9 +2398,8 @@ intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector)
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 	struct intel_hdmi *hdmi = intel_attached_hdmi(to_intel_connector(connector));
 	struct intel_encoder *encoder = &hdmi_to_dig_port(hdmi)->base;
-	struct i2c_adapter *adapter =
-		intel_gmbus_get_adapter(dev_priv, hdmi->ddc_bus);
-	enum drm_dp_dual_mode_type type = drm_dp_dual_mode_detect(&dev_priv->drm, adapter);
+	struct i2c_adapter *ddc = intel_gmbus_get_adapter(dev_priv, hdmi->ddc_bus);
+	enum drm_dp_dual_mode_type type = drm_dp_dual_mode_detect(&dev_priv->drm, ddc);
 
 	/*
 	 * Type 1 DVI adaptors are not required to implement any
@@ -2431,7 +2426,7 @@ intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector)
 
 	hdmi->dp_dual_mode.type = type;
 	hdmi->dp_dual_mode.max_tmds_clock =
-		drm_dp_dual_mode_max_tmds_clock(&dev_priv->drm, type, adapter);
+		drm_dp_dual_mode_max_tmds_clock(&dev_priv->drm, type, ddc);
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "DP dual mode adaptor (%s) detected (max TMDS clock: %d kHz)\n",
@@ -2452,24 +2447,22 @@ intel_hdmi_set_edid(struct drm_connector *connector)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 	struct intel_hdmi *intel_hdmi = intel_attached_hdmi(to_intel_connector(connector));
+	struct i2c_adapter *ddc = intel_gmbus_get_adapter(dev_priv, intel_hdmi->ddc_bus);
 	intel_wakeref_t wakeref;
 	const struct drm_edid *drm_edid;
 	const struct edid *edid;
 	bool connected = false;
-	struct i2c_adapter *i2c;
 
 	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_GMBUS);
 
-	i2c = intel_gmbus_get_adapter(dev_priv, intel_hdmi->ddc_bus);
+	drm_edid = drm_edid_read_ddc(connector, ddc);
 
-	drm_edid = drm_edid_read_ddc(connector, i2c);
-
-	if (!drm_edid && !intel_gmbus_is_forced_bit(i2c)) {
+	if (!drm_edid && !intel_gmbus_is_forced_bit(ddc)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "HDMI GMBUS EDID read failed, retry using GPIO bit-banging\n");
-		intel_gmbus_force_bit(i2c, true);
-		drm_edid = drm_edid_read_ddc(connector, i2c);
-		intel_gmbus_force_bit(i2c, false);
+		intel_gmbus_force_bit(ddc, true);
+		drm_edid = drm_edid_read_ddc(connector, ddc);
+		intel_gmbus_force_bit(ddc, false);
 	}
 
 	/* Below we depend on display info having been updated */
@@ -2561,8 +2554,8 @@ intel_hdmi_get_i2c_adapter(struct drm_connector *connector)
 static void intel_hdmi_create_i2c_symlink(struct drm_connector *connector)
 {
 	struct drm_i915_private *i915 = to_i915(connector->dev);
-	struct i2c_adapter *adapter = intel_hdmi_get_i2c_adapter(connector);
-	struct kobject *i2c_kobj = &adapter->dev.kobj;
+	struct i2c_adapter *ddc = intel_hdmi_get_i2c_adapter(connector);
+	struct kobject *i2c_kobj = &ddc->dev.kobj;
 	struct kobject *connector_kobj = &connector->kdev->kobj;
 	int ret;
 
@@ -2573,8 +2566,8 @@ static void intel_hdmi_create_i2c_symlink(struct drm_connector *connector)
 
 static void intel_hdmi_remove_i2c_symlink(struct drm_connector *connector)
 {
-	struct i2c_adapter *adapter = intel_hdmi_get_i2c_adapter(connector);
-	struct kobject *i2c_kobj = &adapter->dev.kobj;
+	struct i2c_adapter *ddc = intel_hdmi_get_i2c_adapter(connector);
+	struct kobject *i2c_kobj = &ddc->dev.kobj;
 	struct kobject *connector_kobj = &connector->kdev->kobj;
 
 	sysfs_remove_link(connector_kobj, i2c_kobj->name);
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index bb3b5355a0d9..152a22a8ffd2 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -144,9 +144,9 @@ static enum drm_lspcon_mode lspcon_get_current_mode(struct intel_lspcon *lspcon)
 	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	enum drm_lspcon_mode current_mode;
-	struct i2c_adapter *adapter = &intel_dp->aux.ddc;
+	struct i2c_adapter *ddc = &intel_dp->aux.ddc;
 
-	if (drm_lspcon_get_mode(intel_dp->aux.drm_dev, adapter, &current_mode)) {
+	if (drm_lspcon_get_mode(intel_dp->aux.drm_dev, ddc, &current_mode)) {
 		drm_dbg_kms(&i915->drm, "Error reading LSPCON mode\n");
 		return DRM_LSPCON_MODE_INVALID;
 	}
@@ -185,9 +185,9 @@ static int lspcon_change_mode(struct intel_lspcon *lspcon,
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int err;
 	enum drm_lspcon_mode current_mode;
-	struct i2c_adapter *adapter = &intel_dp->aux.ddc;
+	struct i2c_adapter *ddc = &intel_dp->aux.ddc;
 
-	err = drm_lspcon_get_mode(intel_dp->aux.drm_dev, adapter, &current_mode);
+	err = drm_lspcon_get_mode(intel_dp->aux.drm_dev, ddc, &current_mode);
 	if (err) {
 		drm_err(&i915->drm, "Error reading LSPCON mode\n");
 		return err;
@@ -198,7 +198,7 @@ static int lspcon_change_mode(struct intel_lspcon *lspcon,
 		return 0;
 	}
 
-	err = drm_lspcon_set_mode(intel_dp->aux.drm_dev, adapter, mode);
+	err = drm_lspcon_set_mode(intel_dp->aux.drm_dev, ddc, mode);
 	if (err < 0) {
 		drm_err(&i915->drm, "LSPCON mode change failed\n");
 		return err;
@@ -233,7 +233,7 @@ static bool lspcon_probe(struct intel_lspcon *lspcon)
 	enum drm_dp_dual_mode_type adaptor_type;
 	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	struct i2c_adapter *adapter = &intel_dp->aux.ddc;
+	struct i2c_adapter *ddc = &intel_dp->aux.ddc;
 	enum drm_lspcon_mode expected_mode;
 
 	expected_mode = lspcon_wake_native_aux_ch(lspcon) ?
@@ -244,7 +244,7 @@ static bool lspcon_probe(struct intel_lspcon *lspcon)
 		if (retry)
 			usleep_range(500, 1000);
 
-		adaptor_type = drm_dp_dual_mode_detect(intel_dp->aux.drm_dev, adapter);
+		adaptor_type = drm_dp_dual_mode_detect(intel_dp->aux.drm_dev, ddc);
 		if (adaptor_type == DRM_DP_DUAL_MODE_LSPCON)
 			break;
 	}
-- 
2.41.0

