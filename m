Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C86CE58C566
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Aug 2022 11:17:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5253C94DB8;
	Mon,  8 Aug 2022 09:12:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9013794FBC
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Aug 2022 09:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659949905; x=1691485905;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iTpETAevk9+uxVZ1pKE4OTj/Et1w/eYnxJguDTxg2gc=;
 b=ZYpOGB8tmjeo0l5VaEAI/ebcbJ2NdE2LYcNVUBeSPLZfEYrKtN2KcMOz
 6B1+86D3KbIwE0Jw9AEHtYwqzzMHTi+6mg+kS8T+wJ13YSjzlJUu4CgxW
 Hhb2kMe5BvJcD2gxiDnpqFWxtUAEFYVC32dbmEOPgfG36eTQouxI3glMu
 7GHIFN48ntrd9cpo1ON3a+wedmk+N1rYfJH6DOVvYW+UDsdlmnOL0Cxb6
 cxfGVbvgTr6aSXNjCrnKln4IRvqaTODfJd5UO5vTUVjsJT6ejd4WeTbj6
 cfg0stTD5WxJ2dSE9rY6GvQ3d4VjxuhnPBwrg1DTlXC1BRtfKfRwXWWxh w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10432"; a="270318831"
X-IronPort-AV: E=Sophos;i="5.93,221,1654585200"; d="scan'208";a="270318831"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2022 02:11:44 -0700
X-IronPort-AV: E=Sophos;i="5.93,221,1654585200"; d="scan'208";a="663860682"
Received: from ograu-mobl.ger.corp.intel.com (HELO localhost) ([10.252.63.143])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2022 02:11:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Aug 2022 12:11:36 +0300
Message-Id: <20220808091137.1653599-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 1/2] drm/i915/edid: convert DP,
 HDMI and LVDS to drm_edid
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Convert all the connectors that use cached connector edid and
detect_edid to drm_edid.

Since drm_get_edid() calls drm_connector_update_edid_property() while
drm_edid_read*() do not, we need to call drm_edid_connector_update()
separately, in part due to the EDID caching behaviour in HDMI and
DP. Especially DP depends on the details parsed from EDID. (The big
behavioural change conflating EDID reading with parsing and property
update was done in commit 5186421cbfe2 ("drm: Introduce epoch counter to
drm_connector"))

v5: Fix potential uninitialized var use (kernel test robot <lkp@intel.com>)

v4: Call drm_edid_connector_update() after reading HDMI/DP EDID

v3: Don't leak vga switcheroo EDID in LVDS init (Ville)

v2: Don't leak opregion fallback EDID (Ville)

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_connector.c    |  4 +-
 .../drm/i915/display/intel_display_types.h    |  4 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 80 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 28 ++++---
 drivers/gpu/drm/i915/display/intel_lvds.c     | 39 +++++----
 5 files changed, 89 insertions(+), 66 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index 1dcc268927a2..d83b2a64f618 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -95,12 +95,12 @@ void intel_connector_destroy(struct drm_connector *connector)
 {
 	struct intel_connector *intel_connector = to_intel_connector(connector);
 
-	kfree(intel_connector->detect_edid);
+	drm_edid_free(intel_connector->detect_edid);
 
 	intel_hdcp_cleanup(intel_connector);
 
 	if (!IS_ERR_OR_NULL(intel_connector->edid))
-		kfree(intel_connector->edid);
+		drm_edid_free(intel_connector->edid);
 
 	intel_panel_fini(intel_connector);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 0da9b208d56e..d476df0ac9df 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -592,8 +592,8 @@ struct intel_connector {
 	struct intel_panel panel;
 
 	/* Cached EDID for eDP and LVDS. May hold ERR_PTR for invalid EDID. */
-	struct edid *edid;
-	struct edid *detect_edid;
+	const struct drm_edid *edid;
+	const struct drm_edid *detect_edid;
 
 	/* Number of times hotplug detection was tried after an HPD interrupt */
 	int hotplug_retries;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 32292c0be2bd..8a3b2dbebe04 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3577,12 +3577,11 @@ static u8 intel_dp_autotest_edid(struct intel_dp *intel_dp)
 				    intel_dp->aux.i2c_defer_count);
 		intel_dp->compliance.test_data.edid = INTEL_DP_RESOLUTION_FAILSAFE;
 	} else {
-		struct edid *block = intel_connector->detect_edid;
+		/* FIXME: Get rid of drm_edid_raw() */
+		const struct edid *block = drm_edid_raw(intel_connector->detect_edid);
 
-		/* We have to write the checksum
-		 * of the last block read
-		 */
-		block += intel_connector->detect_edid->extensions;
+		/* We have to write the checksum of the last block read */
+		block += block->extensions;
 
 		if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_TEST_EDID_CHECKSUM,
 				       block->checksum) <= 0)
@@ -4461,7 +4460,7 @@ bool intel_digital_port_connected(struct intel_encoder *encoder)
 	return is_connected;
 }
 
-static struct edid *
+static const struct drm_edid *
 intel_dp_get_edid(struct intel_dp *intel_dp)
 {
 	struct intel_connector *intel_connector = intel_dp->attached_connector;
@@ -4472,18 +4471,22 @@ intel_dp_get_edid(struct intel_dp *intel_dp)
 		if (IS_ERR(intel_connector->edid))
 			return NULL;
 
-		return drm_edid_duplicate(intel_connector->edid);
+		return drm_edid_dup(intel_connector->edid);
 	} else
-		return drm_get_edid(&intel_connector->base,
-				    &intel_dp->aux.ddc);
+		return drm_edid_read_ddc(&intel_connector->base,
+					 &intel_dp->aux.ddc);
 }
 
 static void
 intel_dp_update_dfp(struct intel_dp *intel_dp,
-		    const struct edid *edid)
+		    const struct drm_edid *drm_edid)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct intel_connector *connector = intel_dp->attached_connector;
+	const struct edid *edid;
+
+	/* FIXME: Get rid of drm_edid_raw() */
+	edid = drm_edid_raw(drm_edid);
 
 	intel_dp->dfp.max_bpc =
 		drm_dp_downstream_max_bpc(intel_dp->dpcd,
@@ -4583,21 +4586,27 @@ intel_dp_set_edid(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct intel_connector *connector = intel_dp->attached_connector;
-	struct edid *edid;
+	const struct drm_edid *drm_edid;
+	const struct edid *edid;
 	bool vrr_capable;
 
 	intel_dp_unset_edid(intel_dp);
-	edid = intel_dp_get_edid(intel_dp);
-	connector->detect_edid = edid;
+	drm_edid = intel_dp_get_edid(intel_dp);
+	connector->detect_edid = drm_edid;
+
+	/* Below we depend on display info having been updated */
+	drm_edid_connector_update(&connector->base, drm_edid);
 
 	vrr_capable = intel_vrr_is_capable(connector);
 	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] VRR capable: %s\n",
 		    connector->base.base.id, connector->base.name, str_yes_no(vrr_capable));
 	drm_connector_set_vrr_capable_property(&connector->base, vrr_capable);
 
-	intel_dp_update_dfp(intel_dp, edid);
+	intel_dp_update_dfp(intel_dp, drm_edid);
 	intel_dp_update_420(intel_dp);
 
+	/* FIXME: Get rid of drm_edid_raw() */
+	edid = drm_edid_raw(drm_edid);
 	if (edid && edid->input & DRM_EDID_INPUT_DIGITAL) {
 		intel_dp->has_hdmi_sink = drm_detect_hdmi_monitor(edid);
 		intel_dp->has_audio = drm_detect_monitor_audio(edid);
@@ -4612,7 +4621,7 @@ intel_dp_unset_edid(struct intel_dp *intel_dp)
 	struct intel_connector *connector = intel_dp->attached_connector;
 
 	drm_dp_cec_unset_edid(&intel_dp->aux);
-	kfree(connector->detect_edid);
+	drm_edid_free(connector->detect_edid);
 	connector->detect_edid = NULL;
 
 	intel_dp->has_hdmi_sink = false;
@@ -4776,12 +4785,11 @@ intel_dp_force(struct drm_connector *connector)
 static int intel_dp_get_modes(struct drm_connector *connector)
 {
 	struct intel_connector *intel_connector = to_intel_connector(connector);
-	struct edid *edid;
+	const struct drm_edid *drm_edid;
 	int num_modes = 0;
 
-	edid = intel_connector->detect_edid;
-	if (edid)
-		num_modes = intel_connector_update_modes(connector, edid);
+	drm_edid = intel_connector->detect_edid;
+	num_modes = drm_edid_connector_update(connector, drm_edid);
 
 	/* Also add fixed mode, which may or may not be present in EDID */
 	if (intel_dp_is_edp(intel_attached_dp(intel_connector)))
@@ -4790,7 +4798,7 @@ static int intel_dp_get_modes(struct drm_connector *connector)
 	if (num_modes)
 		return num_modes;
 
-	if (!edid) {
+	if (!drm_edid) {
 		struct intel_dp *intel_dp = intel_attached_dp(intel_connector);
 		struct drm_display_mode *mode;
 
@@ -5198,7 +5206,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	bool has_dpcd;
 	enum pipe pipe = INVALID_PIPE;
-	struct edid *edid;
+	const struct drm_edid *drm_edid;
 
 	if (!intel_dp_is_edp(intel_dp))
 		return true;
@@ -5231,29 +5239,33 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	}
 
 	mutex_lock(&dev->mode_config.mutex);
-	edid = drm_get_edid(connector, &intel_dp->aux.ddc);
-	if (!edid) {
+	drm_edid = drm_edid_read_ddc(connector, &intel_dp->aux.ddc);
+	if (!drm_edid) {
+		const struct edid *edid;
+
 		/* Fallback to EDID from ACPI OpRegion, if any */
+		/* FIXME: Make intel_opregion_get_edid() return drm_edid */
 		edid = intel_opregion_get_edid(intel_connector);
-		if (edid)
+		if (edid) {
+			drm_edid = drm_edid_alloc(edid, (edid->extensions + 1) * EDID_LENGTH);
 			drm_dbg_kms(&dev_priv->drm,
 				    "[CONNECTOR:%d:%s] Using OpRegion EDID\n",
 				    connector->base.id, connector->name);
-	}
-	if (edid) {
-		if (drm_add_edid_modes(connector, edid)) {
-			drm_connector_update_edid_property(connector, edid);
-		} else {
 			kfree(edid);
-			edid = ERR_PTR(-EINVAL);
+		}
+	}
+	if (drm_edid) {
+		if (!drm_edid_connector_update(connector, drm_edid)) {
+			drm_edid_free(drm_edid);
+			drm_edid = ERR_PTR(-EINVAL);
 		}
 	} else {
-		edid = ERR_PTR(-ENOENT);
+		drm_edid = ERR_PTR(-ENOENT);
 	}
-	intel_connector->edid = edid;
+	intel_connector->edid = drm_edid;
 
-	intel_bios_init_panel(dev_priv, &intel_connector->panel,
-			      encoder->devdata, IS_ERR(edid) ? NULL : edid);
+	intel_bios_init_panel(dev_priv, &intel_connector->panel, encoder->devdata,
+			      IS_ERR_OR_NULL(drm_edid) ? NULL : drm_edid_raw(drm_edid));
 
 	intel_panel_add_edid_fixed_modes(intel_connector,
 					 intel_connector->panel.vbt.drrs_type != DRRS_TYPE_NONE,
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index a88f589351fa..feef8323592d 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2349,7 +2349,7 @@ intel_hdmi_unset_edid(struct drm_connector *connector)
 	intel_hdmi->dp_dual_mode.type = DRM_DP_DUAL_MODE_NONE;
 	intel_hdmi->dp_dual_mode.max_tmds_clock = 0;
 
-	kfree(to_intel_connector(connector)->detect_edid);
+	drm_edid_free(to_intel_connector(connector)->detect_edid);
 	to_intel_connector(connector)->detect_edid = NULL;
 }
 
@@ -2416,7 +2416,8 @@ intel_hdmi_set_edid(struct drm_connector *connector)
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 	struct intel_hdmi *intel_hdmi = intel_attached_hdmi(to_intel_connector(connector));
 	intel_wakeref_t wakeref;
-	struct edid *edid;
+	const struct drm_edid *drm_edid;
+	const struct edid *edid;
 	bool connected = false;
 	struct i2c_adapter *i2c;
 
@@ -2424,21 +2425,26 @@ intel_hdmi_set_edid(struct drm_connector *connector)
 
 	i2c = intel_gmbus_get_adapter(dev_priv, intel_hdmi->ddc_bus);
 
-	edid = drm_get_edid(connector, i2c);
+	drm_edid = drm_edid_read_ddc(connector, i2c);
 
-	if (!edid && !intel_gmbus_is_forced_bit(i2c)) {
+	if (!drm_edid && !intel_gmbus_is_forced_bit(i2c)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "HDMI GMBUS EDID read failed, retry using GPIO bit-banging\n");
 		intel_gmbus_force_bit(i2c, true);
-		edid = drm_get_edid(connector, i2c);
+		drm_edid = drm_edid_read_ddc(connector, i2c);
 		intel_gmbus_force_bit(i2c, false);
 	}
 
-	intel_hdmi_dp_dual_mode_detect(connector, edid != NULL);
+	drm_edid_connector_update(connector, drm_edid);
+
+	intel_hdmi_dp_dual_mode_detect(connector, drm_edid != NULL);
 
 	intel_display_power_put(dev_priv, POWER_DOMAIN_GMBUS, wakeref);
 
-	to_intel_connector(connector)->detect_edid = edid;
+	to_intel_connector(connector)->detect_edid = drm_edid;
+
+	/* FIXME: Get rid of drm_edid_raw() */
+	edid = drm_edid_raw(drm_edid);
 	if (edid && edid->input & DRM_EDID_INPUT_DIGITAL) {
 		intel_hdmi->has_audio = drm_detect_monitor_audio(edid);
 		intel_hdmi->has_hdmi_sink = drm_detect_hdmi_monitor(edid);
@@ -2510,13 +2516,11 @@ intel_hdmi_force(struct drm_connector *connector)
 
 static int intel_hdmi_get_modes(struct drm_connector *connector)
 {
-	struct edid *edid;
+	const struct drm_edid *drm_edid;
 
-	edid = to_intel_connector(connector)->detect_edid;
-	if (edid == NULL)
-		return 0;
+	drm_edid = to_intel_connector(connector)->detect_edid;
 
-	return intel_connector_update_modes(connector, edid);
+	return drm_edid_connector_update(connector, drm_edid);
 }
 
 static struct i2c_adapter *
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 730480ac3300..c4600d7df1d2 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -479,7 +479,7 @@ static int intel_lvds_get_modes(struct drm_connector *connector)
 
 	/* use cached edid if we have one */
 	if (!IS_ERR_OR_NULL(intel_connector->edid))
-		return drm_add_edid_modes(connector, intel_connector->edid);
+		return drm_edid_connector_update(connector, intel_connector->edid);
 
 	return intel_panel_get_modes(intel_connector);
 }
@@ -829,7 +829,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	struct intel_connector *intel_connector;
 	struct drm_connector *connector;
 	struct drm_encoder *encoder;
-	struct edid *edid;
+	const struct drm_edid *drm_edid;
 	i915_reg_t lvds_reg;
 	u32 lvds;
 	u8 pin;
@@ -948,27 +948,34 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	 * preferred mode is the right one.
 	 */
 	mutex_lock(&dev->mode_config.mutex);
-	if (vga_switcheroo_handler_flags() & VGA_SWITCHEROO_CAN_SWITCH_DDC)
+	if (vga_switcheroo_handler_flags() & VGA_SWITCHEROO_CAN_SWITCH_DDC) {
+		const struct edid *edid;
+
+		/* FIXME: Make drm_get_edid_switcheroo() return drm_edid */
 		edid = drm_get_edid_switcheroo(connector,
-				    intel_gmbus_get_adapter(dev_priv, pin));
-	else
-		edid = drm_get_edid(connector,
-				    intel_gmbus_get_adapter(dev_priv, pin));
-	if (edid) {
-		if (drm_add_edid_modes(connector, edid)) {
-			drm_connector_update_edid_property(connector,
-								edid);
-		} else {
+					       intel_gmbus_get_adapter(dev_priv, pin));
+		if (edid) {
+			drm_edid = drm_edid_alloc(edid, (edid->extensions + 1) * EDID_LENGTH);
 			kfree(edid);
-			edid = ERR_PTR(-EINVAL);
+		} else {
+			drm_edid = NULL;
+		}
+	} else {
+		drm_edid = drm_edid_read_ddc(connector,
+					     intel_gmbus_get_adapter(dev_priv, pin));
+	}
+	if (drm_edid) {
+		if (!drm_edid_connector_update(connector, drm_edid)) {
+			drm_edid_free(drm_edid);
+			drm_edid = ERR_PTR(-EINVAL);
 		}
 	} else {
-		edid = ERR_PTR(-ENOENT);
+		drm_edid = ERR_PTR(-ENOENT);
 	}
-	intel_connector->edid = edid;
+	intel_connector->edid = drm_edid;
 
 	intel_bios_init_panel(dev_priv, &intel_connector->panel, NULL,
-			      IS_ERR(edid) ? NULL : edid);
+			      IS_ERR_OR_NULL(drm_edid) ? NULL : drm_edid_raw(drm_edid));
 
 	/* Try EDID first */
 	intel_panel_add_edid_fixed_modes(intel_connector,
-- 
2.30.2

