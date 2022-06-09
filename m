Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 340145453C9
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jun 2022 20:12:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC6AC12B5D4;
	Thu,  9 Jun 2022 18:12:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF90B12B5D4
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jun 2022 18:12:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654798324; x=1686334324;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZjkubogN7MhEfSU9F4p3UdUhK82nmai2nzQFFbtoVEU=;
 b=Nw3JezvxRiCVQ00jZ98/N9kP5PSJ7S4OzWaZ22K+HVGhmfMO3d3Z1TXJ
 6JVuf2Uk6XTwKgFghKrXvyNnj+FcNBoJqplhZtBuRAnlgDGDwLhrzaa64
 3Do2CYR712Q4TprH8EaR8iOFD3nKMGXIV7aXZvlWDbgTbcfjveOhrNRgd
 ctbsMRui8sK0oVyR4wIE6LUxwDqbytPAOy//vZuDuPo1yYasXyMYjnTF2
 U8EQL18PL5XUqb0LaQnwBt2A9Kh3wIeKw70E3NoM3gIyel7GVirYyPHLu
 +y2Wb3OCCXswfQuwv6jYqQsUcu8zu8Gz2AzCGNhmsd/cgBYglhYdI11Gi Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="257803791"
X-IronPort-AV: E=Sophos;i="5.91,287,1647327600"; d="scan'208";a="257803791"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2022 11:12:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,287,1647327600"; d="scan'208";a="533712057"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orsmga003.jf.intel.com with ESMTP; 09 Jun 2022 11:11:59 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Jun 2022 23:40:14 +0530
Message-Id: <20220609181014.21694-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/bios: calculate panel type as per
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

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c        |  2 +-
 drivers/gpu/drm/i915/display/intel_bios.c     | 40 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_bios.h     |  3 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  3 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |  3 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  4 ++
 drivers/gpu/drm/i915/display/vlv_dsi.c        |  2 +-
 8 files changed, 39 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 3b5305c219ba..b3aa430abd03 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -2050,7 +2050,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 	/* attach connector to encoder */
 	intel_connector_attach_encoder(intel_connector, encoder);
 
-	intel_bios_init_panel(dev_priv, &intel_connector->panel, NULL);
+	intel_bios_init_panel(dev_priv, intel_connector, NULL);
 
 	mutex_lock(&dev->mode_config.mutex);
 	intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index aaea27fe5d16..f74e63823c08 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -604,13 +604,15 @@ get_lfp_data_tail(const struct bdb_lvds_lfp_data *data,
 }
 
 static int opregion_get_panel_type(struct drm_i915_private *i915,
-				   const struct edid *edid)
+				   const struct edid *edid,
+				   const struct intel_bios_encoder_data *devdata)
 {
 	return intel_opregion_get_panel_type(i915);
 }
 
 static int vbt_get_panel_type(struct drm_i915_private *i915,
-			      const struct edid *edid)
+			      const struct edid *edid,
+			      const struct intel_bios_encoder_data *devdata)
 {
 	const struct bdb_lvds_options *lvds_options;
 
@@ -625,11 +627,17 @@ static int vbt_get_panel_type(struct drm_i915_private *i915,
 		return -1;
 	}
 
-	return lvds_options->panel_type;
+	if (devdata->child.handle == DEVICE_HANDLE_LFP1)
+		return lvds_options->panel_type;
+	else if (devdata->child.handle == DEVICE_HANDLE_LFP2)
+		return lvds_options->panel_type2;
+	else
+		return -1;
 }
 
 static int pnpid_get_panel_type(struct drm_i915_private *i915,
-				const struct edid *edid)
+				const struct edid *edid,
+				const struct intel_bios_encoder_data *devdata)
 {
 	const struct bdb_lvds_lfp_data *data;
 	const struct bdb_lvds_lfp_data_ptrs *ptrs;
@@ -675,7 +683,8 @@ static int pnpid_get_panel_type(struct drm_i915_private *i915,
 }
 
 static int fallback_get_panel_type(struct drm_i915_private *i915,
-				   const struct edid *edid)
+				   const struct edid *edid,
+				   const struct intel_bios_encoder_data *devdata)
 {
 	return 0;
 }
@@ -688,12 +697,14 @@ enum panel_type {
 };
 
 static int get_panel_type(struct drm_i915_private *i915,
-			  const struct edid *edid)
+			  const struct edid *edid,
+			  const struct intel_bios_encoder_data *devdata)
 {
 	struct {
 		const char *name;
 		int (*get_panel_type)(struct drm_i915_private *i915,
-				      const struct edid *edid);
+				      const struct edid *edid,
+				      const struct intel_bios_encoder_data *devdata);
 		int panel_type;
 	} panel_types[] = {
 		[PANEL_TYPE_OPREGION] = {
@@ -716,7 +727,7 @@ static int get_panel_type(struct drm_i915_private *i915,
 	int i;
 
 	for (i = 0; i < ARRAY_SIZE(panel_types); i++) {
-		panel_types[i].panel_type = panel_types[i].get_panel_type(i915, edid);
+		panel_types[i].panel_type = panel_types[i].get_panel_type(i915, edid, devdata);
 
 		drm_WARN_ON(&i915->drm, panel_types[i].panel_type > 0xf &&
 			    panel_types[i].panel_type != 0xff);
@@ -747,7 +758,8 @@ static int get_panel_type(struct drm_i915_private *i915,
 static void
 parse_panel_options(struct drm_i915_private *i915,
 		    struct intel_panel *panel,
-		    const struct edid *edid)
+		    const struct edid *edid,
+		    const struct intel_bios_encoder_data *devdata)
 {
 	const struct bdb_lvds_options *lvds_options;
 	int panel_type;
@@ -759,7 +771,7 @@ parse_panel_options(struct drm_i915_private *i915,
 
 	panel->vbt.lvds_dither = lvds_options->pixel_dither;
 
-	panel_type = get_panel_type(i915, edid);
+	panel_type = get_panel_type(i915, edid, devdata);
 
 	panel->vbt.panel_type = panel_type;
 
@@ -3103,12 +3115,16 @@ void intel_bios_init(struct drm_i915_private *i915)
 }
 
 void intel_bios_init_panel(struct drm_i915_private *i915,
-			   struct intel_panel *panel,
+			   struct intel_connector *intel_connector,
 			   const struct edid *edid)
 {
+	struct intel_panel *panel = &intel_connector->panel;
+	struct intel_encoder *encoder = intel_connector->encoder;
+	const struct intel_bios_encoder_data *devdata = i915->vbt.ports[encoder->port];
+
 	init_vbt_panel_defaults(panel);
 
-	parse_panel_options(i915, panel, edid);
+	parse_panel_options(i915, panel, edid, devdata);
 	parse_generic_dtd(i915, panel);
 	parse_lfp_data(i915, panel);
 	parse_lfp_backlight(i915, panel);
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index b112200ae0a0..e4c268495547 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -37,6 +37,7 @@ struct edid;
 struct intel_bios_encoder_data;
 struct intel_crtc_state;
 struct intel_encoder;
+struct intel_connector;
 struct intel_panel;
 enum port;
 
@@ -233,7 +234,7 @@ struct mipi_pps_data {
 
 void intel_bios_init(struct drm_i915_private *dev_priv);
 void intel_bios_init_panel(struct drm_i915_private *dev_priv,
-			   struct intel_panel *panel,
+			   struct intel_connector *intel_connector,
 			   const struct edid *edid);
 void intel_bios_fini_panel(struct intel_panel *panel);
 void intel_bios_driver_remove(struct drm_i915_private *dev_priv);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2fac76bcf06d..8c41ba016cd2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5224,8 +5224,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	}
 	intel_connector->edid = edid;
 
-	intel_bios_init_panel(dev_priv, &intel_connector->panel,
-			      IS_ERR(edid) ? NULL : edid);
+	intel_bios_init_panel(dev_priv, intel_connector, IS_ERR(edid) ? NULL : edid);
 
 	intel_panel_add_edid_fixed_modes(intel_connector,
 					 intel_connector->panel.vbt.drrs_type != DRRS_TYPE_NONE,
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index e55802b45461..39a5e919eb06 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -967,8 +967,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	}
 	intel_connector->edid = edid;
 
-	intel_bios_init_panel(dev_priv, &intel_connector->panel,
-			      IS_ERR(edid) ? NULL : edid);
+	intel_bios_init_panel(dev_priv, intel_connector, IS_ERR(edid) ? NULL : edid);
 
 	/* Try EDID first */
 	intel_panel_add_edid_fixed_modes(intel_connector,
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 2b78a790e1b6..c4ad943e84f5 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2901,7 +2901,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
 	if (!intel_sdvo_create_enhance_property(intel_sdvo, intel_sdvo_connector))
 		goto err;
 
-	intel_bios_init_panel(i915, &intel_connector->panel, NULL);
+	intel_bios_init_panel(i915, intel_connector, NULL);
 
 	/*
 	 * Fetch modes from VBT. For SDVO prefer the VBT mode since some
diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index f8e5097222f2..31f5994f81de 100644
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
index abda0888c8d4..114e4f89f198 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1926,7 +1926,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 
 	intel_dsi->panel_power_off_time = ktime_get_boottime();
 
-	intel_bios_init_panel(dev_priv, &intel_connector->panel, NULL);
+	intel_bios_init_panel(dev_priv, intel_connector, NULL);
 
 	if (intel_connector->panel.vbt.dsi.config->dual_link)
 		intel_dsi->ports = BIT(PORT_A) | BIT(PORT_C);
-- 
2.29.0

