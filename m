Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F46A54F558
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 12:28:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A09F112395;
	Fri, 17 Jun 2022 10:28:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0720112395
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jun 2022 10:28:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655461734; x=1686997734;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tHJIEBF/9et1tu+nob6FBcBBNlckZjB/8pE3BLNzrlQ=;
 b=JR4/K1vWbAigpeJZDwDi+NtTpF58KcnDRYw0FxUyvYvY1F9Ei7qLDSBb
 953i+e+spCzWwSqO914L8VIJOj3cQmJPFZ6EiyYCw5IckNWu4ErhJbbVw
 XKJRRai1n8uQi/xWuFVjaR5wYu4wl0jRqoYf4NbSyDdrnaxertmWf4rp/
 Ms1Ukq9k+lVcYzwVP4FF2sVFV3G3FcZAZStfoL1hNsodqfQezekG289rq
 TB8H+CjcDMLmTT7Ksyyf+B4StCSdzeNn8fUXBgHfS77+IsNJBOt6/Qmcs
 L3vpyDKGJK1o+kRelwAHIDJ5UDWNf1GkG82KYjMVHju8Jo7Pf+E/Z2si1 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="280507655"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="280507655"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 03:28:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="831986905"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmsmga006.fm.intel.com with ESMTP; 17 Jun 2022 03:28:51 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jun 2022 15:56:49 +0530
Message-Id: <20220617102649.1581-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/bios: calculate panel type as per
 child device index in VBT
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

Each LFP may have different panel type which is stored in LFP data
data block. Based on the child device index respective panel-type/
panel-type2 field will be used.

v1: Initial rfc verion.
v2: Based on review comments from Jani,
- Used panel-type instead addition panel-index variable.
- DEVICE_HANDLE_* name changed and placed before DEVICE_TYPE_*
macro.
v3:
- Passing intel_bios_encoder_data as argument of
intel_bios_init_panel(). Passing NULL to indicate encoder is not
initialized yet for dsi as current focus is to enable dual EDP. [Jani]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c        |  2 +-
 drivers/gpu/drm/i915/display/intel_bios.c     | 16 ++++++++++++++--
 drivers/gpu/drm/i915/display/intel_bios.h     |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  4 +++-
 drivers/gpu/drm/i915/display/intel_lvds.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  4 ++++
 drivers/gpu/drm/i915/display/vlv_dsi.c        |  2 +-
 8 files changed, 26 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 3b5305c219ba..5dcfa7feffa9 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -2050,7 +2050,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 	/* attach connector to encoder */
 	intel_connector_attach_encoder(intel_connector, encoder);
 
-	intel_bios_init_panel(dev_priv, &intel_connector->panel, NULL);
+	intel_bios_init_panel(dev_priv, &intel_connector->panel, NULL, NULL);
 
 	mutex_lock(&dev->mode_config.mutex);
 	intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 76e86358adb9..e97f1f979a48 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -604,12 +604,14 @@ get_lfp_data_tail(const struct bdb_lvds_lfp_data *data,
 }
 
 static int opregion_get_panel_type(struct drm_i915_private *i915,
+				   const struct intel_bios_encoder_data *devdata,
 				   const struct edid *edid)
 {
 	return intel_opregion_get_panel_type(i915);
 }
 
 static int vbt_get_panel_type(struct drm_i915_private *i915,
+			      const struct intel_bios_encoder_data *devdata,
 			      const struct edid *edid)
 {
 	const struct bdb_lvds_options *lvds_options;
@@ -625,10 +627,16 @@ static int vbt_get_panel_type(struct drm_i915_private *i915,
 		return -1;
 	}
 
+	if (devdata && devdata->child.handle == DEVICE_HANDLE_LFP2)
+		return lvds_options->panel_type2;
+
+	drm_WARN_ON(&i915->drm, devdata && devdata->child.handle != DEVICE_HANDLE_LFP1);
+
 	return lvds_options->panel_type;
 }
 
 static int pnpid_get_panel_type(struct drm_i915_private *i915,
+				const struct intel_bios_encoder_data *devdata,
 				const struct edid *edid)
 {
 	const struct bdb_lvds_lfp_data *data;
@@ -675,6 +683,7 @@ static int pnpid_get_panel_type(struct drm_i915_private *i915,
 }
 
 static int fallback_get_panel_type(struct drm_i915_private *i915,
+				   const struct intel_bios_encoder_data *devdata,
 				   const struct edid *edid)
 {
 	return 0;
@@ -688,11 +697,13 @@ enum panel_type {
 };
 
 static int get_panel_type(struct drm_i915_private *i915,
+			  const struct intel_bios_encoder_data *devdata,
 			  const struct edid *edid)
 {
 	struct {
 		const char *name;
 		int (*get_panel_type)(struct drm_i915_private *i915,
+				      const struct intel_bios_encoder_data *devdata,
 				      const struct edid *edid);
 		int panel_type;
 	} panel_types[] = {
@@ -716,7 +727,7 @@ static int get_panel_type(struct drm_i915_private *i915,
 	int i;
 
 	for (i = 0; i < ARRAY_SIZE(panel_types); i++) {
-		panel_types[i].panel_type = panel_types[i].get_panel_type(i915, edid);
+		panel_types[i].panel_type = panel_types[i].get_panel_type(i915, devdata, edid);
 
 		drm_WARN_ON(&i915->drm, panel_types[i].panel_type > 0xf &&
 			    panel_types[i].panel_type != 0xff);
@@ -3127,11 +3138,12 @@ void intel_bios_init(struct drm_i915_private *i915)
 
 void intel_bios_init_panel(struct drm_i915_private *i915,
 			   struct intel_panel *panel,
+			   const struct intel_bios_encoder_data *devdata,
 			   const struct edid *edid)
 {
 	init_vbt_panel_defaults(panel);
 
-	panel->vbt.panel_type = get_panel_type(i915, edid);
+	panel->vbt.panel_type = get_panel_type(i915, devdata, edid);
 
 	parse_panel_options(i915, panel);
 	parse_generic_dtd(i915, panel);
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index b112200ae0a0..e47582b0de0a 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -234,6 +234,7 @@ struct mipi_pps_data {
 void intel_bios_init(struct drm_i915_private *dev_priv);
 void intel_bios_init_panel(struct drm_i915_private *dev_priv,
 			   struct intel_panel *panel,
+			   const struct intel_bios_encoder_data *devdata,
 			   const struct edid *edid);
 void intel_bios_fini_panel(struct intel_panel *panel);
 void intel_bios_driver_remove(struct drm_i915_private *dev_priv);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2fac76bcf06d..3590de9227d5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5171,6 +5171,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	bool has_dpcd;
 	enum pipe pipe = INVALID_PIPE;
 	struct edid *edid;
+	struct intel_bios_encoder_data *devdata;
 
 	if (!intel_dp_is_edp(intel_dp))
 		return true;
@@ -5224,7 +5225,8 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	}
 	intel_connector->edid = edid;
 
-	intel_bios_init_panel(dev_priv, &intel_connector->panel,
+	devdata = dev_priv->vbt.ports[intel_connector->encoder->port];
+	intel_bios_init_panel(dev_priv, &intel_connector->panel, devdata,
 			      IS_ERR(edid) ? NULL : edid);
 
 	intel_panel_add_edid_fixed_modes(intel_connector,
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index e55802b45461..730480ac3300 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -967,7 +967,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	}
 	intel_connector->edid = edid;
 
-	intel_bios_init_panel(dev_priv, &intel_connector->panel,
+	intel_bios_init_panel(dev_priv, &intel_connector->panel, NULL,
 			      IS_ERR(edid) ? NULL : edid);
 
 	/* Try EDID first */
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 2b78a790e1b6..19122bc6d2ab 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2901,7 +2901,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
 	if (!intel_sdvo_create_enhance_property(intel_sdvo, intel_sdvo_connector))
 		goto err;
 
-	intel_bios_init_panel(i915, &intel_connector->panel, NULL);
+	intel_bios_init_panel(i915, &intel_connector->panel, NULL, NULL);
 
 	/*
 	 * Fetch modes from VBT. For SDVO prefer the VBT mode since some
diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 3766c09bd65d..509b0a419c20 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -182,6 +182,10 @@ struct bdb_general_features {
 #define GPIO_PIN_ADD_DDC	0x04 /* "ADDCARD DDC GPIO pins" */
 #define GPIO_PIN_ADD_DDC_I2C	0x06 /* "ADDCARD DDC/I2C GPIO pins" */
 
+/* Device handle */
+#define DEVICE_HANDLE_LFP1	0x0008
+#define DEVICE_HANDLE_LFP2	0x0080
+
 /* Pre 915 */
 #define DEVICE_TYPE_NONE	0x00
 #define DEVICE_TYPE_CRT		0x01
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index abda0888c8d4..b9b1fed99874 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1926,7 +1926,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 
 	intel_dsi->panel_power_off_time = ktime_get_boottime();
 
-	intel_bios_init_panel(dev_priv, &intel_connector->panel, NULL);
+	intel_bios_init_panel(dev_priv, &intel_connector->panel, NULL, NULL);
 
 	if (intel_connector->panel.vbt.dsi.config->dual_link)
 		intel_dsi->ports = BIT(PORT_A) | BIT(PORT_C);
-- 
2.29.0

