Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB52967B0BA
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 12:11:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEB7110E77F;
	Wed, 25 Jan 2023 11:11:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6A1510E77F;
 Wed, 25 Jan 2023 11:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674645064; x=1706181064;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hhNxYuyhn+w4ocLInRGxdxCL3FTkuSKPb+mTN8Ap4Co=;
 b=RDESzJE1hmAztICipqC7nqgO1D2rp6Sd6Wm9ieVxD4dqJM+AMcNzB7hf
 WQnUR3WOKUJEy/5+zF7o0RZa/zudAyJx+YkKRGQ63c025m/ZtzyW7GeKJ
 hF3RejpzcCctbDtzjSLRdE2QiU6+bOrp3nlB0LNlEcBSMYhO1Bubk8gf+
 zMROMMQ+9/3YWwPbI+hF5oEGslLlnDQVG3tdZwtwvojVhSlfHYWQwC/Xz
 iFsgJADSxVWYBQ8CccjntzjlpHB6lhNtuP7+1sKaR0frcSbT0x5PDJ8vJ
 1WKT95Y2K+LfntSLqbz9GV5VmD2Z0MLbTB9EF5ldvpIZsPgDT2/v8XcMN A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="391035460"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="391035460"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 03:11:04 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="751155921"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="751155921"
Received: from ericnguy-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.46.123])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 03:11:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Jan 2023 13:10:49 +0200
Message-Id: <eabb4de932841b38b34cc2818ea9fbf7c10224fd.1674643465.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1674643465.git.jani.nikula@intel.com>
References: <cover.1674643465.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI v8 1/4] drm/i915/edid: convert DP,
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
Cc: jani.nikula@intel.com, dri-devel@lists.freedesktop.org
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

v6: Rebase on drm_edid_connector_add_modes()

v5: Fix potential uninitialized var use (kernel test robot <lkp@intel.com>)

v4: Call drm_edid_connector_update() after reading HDMI/DP EDID

v3: Don't leak vga switcheroo EDID in LVDS init (Ville)

v2: Don't leak opregion fallback EDID (Ville)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_connector.c    |  4 +-
 .../drm/i915/display/intel_display_types.h    |  4 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 83 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 28 ++++---
 drivers/gpu/drm/i915/display/intel_lvds.c     | 46 ++++++----
 5 files changed, 96 insertions(+), 69 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index 562da3b741e2..4814d4e2f7f9 100644
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
index 32e8b2fc3cc6..34dc850340b8 100644
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
index 80d95cec8f9d..cd7fae1b7543 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3648,12 +3648,11 @@ static u8 intel_dp_autotest_edid(struct intel_dp *intel_dp)
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
@@ -4475,7 +4474,7 @@ bool intel_digital_port_connected(struct intel_encoder *encoder)
 	return is_connected;
 }
 
-static struct edid *
+static const struct drm_edid *
 intel_dp_get_edid(struct intel_dp *intel_dp)
 {
 	struct intel_connector *intel_connector = intel_dp->attached_connector;
@@ -4486,18 +4485,22 @@ intel_dp_get_edid(struct intel_dp *intel_dp)
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
@@ -4597,21 +4600,27 @@ intel_dp_set_edid(struct intel_dp *intel_dp)
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
@@ -4626,7 +4635,7 @@ intel_dp_unset_edid(struct intel_dp *intel_dp)
 	struct intel_connector *connector = intel_dp->attached_connector;
 
 	drm_dp_cec_unset_edid(&intel_dp->aux);
-	kfree(connector->detect_edid);
+	drm_edid_free(connector->detect_edid);
 	connector->detect_edid = NULL;
 
 	intel_dp->has_hdmi_sink = false;
@@ -4790,12 +4799,10 @@ intel_dp_force(struct drm_connector *connector)
 static int intel_dp_get_modes(struct drm_connector *connector)
 {
 	struct intel_connector *intel_connector = to_intel_connector(connector);
-	struct edid *edid;
-	int num_modes = 0;
+	int num_modes;
 
-	edid = intel_connector->detect_edid;
-	if (edid)
-		num_modes = intel_connector_update_modes(connector, edid);
+	/* drm_edid_connector_update() done in ->detect() or ->force() */
+	num_modes = drm_edid_connector_add_modes(connector);
 
 	/* Also add fixed mode, which may or may not be present in EDID */
 	if (intel_dp_is_edp(intel_attached_dp(intel_connector)))
@@ -4804,7 +4811,7 @@ static int intel_dp_get_modes(struct drm_connector *connector)
 	if (num_modes)
 		return num_modes;
 
-	if (!edid) {
+	if (!intel_connector->detect_edid) {
 		struct intel_dp *intel_dp = intel_attached_dp(intel_connector);
 		struct drm_display_mode *mode;
 
@@ -5240,7 +5247,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	struct drm_display_mode *fixed_mode;
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	bool has_dpcd;
-	struct edid *edid;
+	const struct drm_edid *drm_edid;
 
 	if (!intel_dp_is_edp(intel_dp))
 		return true;
@@ -5287,29 +5294,35 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	}
 
 	mutex_lock(&dev_priv->drm.mode_config.mutex);
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
+		if (drm_edid_connector_update(connector, drm_edid) ||
+		    !drm_edid_connector_add_modes(connector)) {
+			drm_edid_connector_update(connector, NULL);
+			drm_edid_free(drm_edid);
+			drm_edid = ERR_PTR(-EINVAL);
 		}
 	} else {
-		edid = ERR_PTR(-ENOENT);
+		drm_edid = ERR_PTR(-ENOENT);
 	}
-	intel_connector->edid = edid;
+	intel_connector->edid = drm_edid;
 
-	intel_bios_init_panel_late(dev_priv, &intel_connector->panel,
-				   encoder->devdata, IS_ERR(edid) ? NULL : edid);
+	intel_bios_init_panel_late(dev_priv, &intel_connector->panel, encoder->devdata,
+				   IS_ERR_OR_NULL(drm_edid) ? NULL : drm_edid_raw(drm_edid));
 
 	intel_panel_add_edid_fixed_modes(intel_connector, true);
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 6a2ee342eab5..3431193f0b47 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2360,7 +2360,7 @@ intel_hdmi_unset_edid(struct drm_connector *connector)
 	intel_hdmi->dp_dual_mode.type = DRM_DP_DUAL_MODE_NONE;
 	intel_hdmi->dp_dual_mode.max_tmds_clock = 0;
 
-	kfree(to_intel_connector(connector)->detect_edid);
+	drm_edid_free(to_intel_connector(connector)->detect_edid);
 	to_intel_connector(connector)->detect_edid = NULL;
 }
 
@@ -2421,7 +2421,8 @@ intel_hdmi_set_edid(struct drm_connector *connector)
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 	struct intel_hdmi *intel_hdmi = intel_attached_hdmi(to_intel_connector(connector));
 	intel_wakeref_t wakeref;
-	struct edid *edid;
+	const struct drm_edid *drm_edid;
+	const struct edid *edid;
 	bool connected = false;
 	struct i2c_adapter *i2c;
 
@@ -2429,17 +2430,23 @@ intel_hdmi_set_edid(struct drm_connector *connector)
 
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
 
-	to_intel_connector(connector)->detect_edid = edid;
+	/* Below we depend on display info having been updated */
+	drm_edid_connector_update(connector, drm_edid);
+
+	to_intel_connector(connector)->detect_edid = drm_edid;
+
+	/* FIXME: Get rid of drm_edid_raw() */
+	edid = drm_edid_raw(drm_edid);
 	if (edid && edid->input & DRM_EDID_INPUT_DIGITAL) {
 		intel_hdmi->has_audio = drm_detect_monitor_audio(edid);
 		intel_hdmi->has_hdmi_sink = drm_detect_hdmi_monitor(edid);
@@ -2515,13 +2522,8 @@ intel_hdmi_force(struct drm_connector *connector)
 
 static int intel_hdmi_get_modes(struct drm_connector *connector)
 {
-	struct edid *edid;
-
-	edid = to_intel_connector(connector)->detect_edid;
-	if (edid == NULL)
-		return 0;
-
-	return intel_connector_update_modes(connector, edid);
+	/* drm_edid_connector_update() done in ->detect() or ->force() */
+	return drm_edid_connector_add_modes(connector);
 }
 
 static struct i2c_adapter *
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index aecec992cd0d..6a98787edf48 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -479,8 +479,11 @@ static int intel_lvds_get_modes(struct drm_connector *connector)
 	struct intel_connector *intel_connector = to_intel_connector(connector);
 
 	/* use cached edid if we have one */
-	if (!IS_ERR_OR_NULL(intel_connector->edid))
-		return drm_add_edid_modes(connector, intel_connector->edid);
+	if (!IS_ERR_OR_NULL(intel_connector->edid)) {
+		drm_edid_connector_update(connector, intel_connector->edid);
+
+		return drm_edid_connector_add_modes(connector);
+	}
 
 	return intel_panel_get_modes(intel_connector);
 }
@@ -834,7 +837,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	struct intel_connector *intel_connector;
 	struct drm_connector *connector;
 	struct drm_encoder *encoder;
-	struct edid *edid;
+	const struct drm_edid *drm_edid;
 	i915_reg_t lvds_reg;
 	u32 lvds;
 	u8 pin;
@@ -945,27 +948,36 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	 * preferred mode is the right one.
 	 */
 	mutex_lock(&dev_priv->drm.mode_config.mutex);
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
+		if (drm_edid_connector_update(connector, drm_edid) ||
+		    !drm_edid_connector_add_modes(connector)) {
+			drm_edid_connector_update(connector, NULL);
+			drm_edid_free(drm_edid);
+			drm_edid = ERR_PTR(-EINVAL);
 		}
 	} else {
-		edid = ERR_PTR(-ENOENT);
+		drm_edid = ERR_PTR(-ENOENT);
 	}
-	intel_connector->edid = edid;
+	intel_connector->edid = drm_edid;
 
 	intel_bios_init_panel_late(dev_priv, &intel_connector->panel, NULL,
-				   IS_ERR(edid) ? NULL : edid);
+				   IS_ERR_OR_NULL(drm_edid) ? NULL : drm_edid_raw(drm_edid));
 
 	/* Try EDID first */
 	intel_panel_add_edid_fixed_modes(intel_connector, true);
-- 
2.34.1

