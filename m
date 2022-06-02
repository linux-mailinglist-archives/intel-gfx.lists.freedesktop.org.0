Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B727F53BA91
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jun 2022 16:20:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4A22112D42;
	Thu,  2 Jun 2022 14:20:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11552112D43
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jun 2022 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654179633; x=1685715633;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=O3z1JFc4TAEZwS/9bepzy82H7U4BJgQAWSILqHqFCLY=;
 b=WOwu/7pN2VEdO3bTQNJAw2KkDlIx4DtXUpFv6XhEpEBYZ6YCk+XAVZAt
 voddort/pnJdxoG3hU6KBgkgPR0jcFcoykhOnpON4wJSF3xrvr0ME+Zw6
 ChE++LeEcq7+5uRopJ5+zCDbjNVhKz7le/8F1ceTbD/V4L9sYaF6WoLWy
 5Ev3sojl4Z8hX8RFh91LZJdVXtbHXd903sYiYrG4ggXzNNBf64pU7F0pM
 vFk+4NCb851efFigakjyBB9A1109EQKdaLQaMIPZ8MBVoL7c8eVeN4NTK
 WwZdeZITxsIeOE2b0aY2f0nUB4Iiwys8iYctgXiVnLKJ38ipYa5lB/ftl A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10365"; a="339007276"
X-IronPort-AV: E=Sophos;i="5.91,271,1647327600"; d="scan'208";a="339007276"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 07:20:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,271,1647327600"; d="scan'208";a="905007623"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmsmga005.fm.intel.com with ESMTP; 02 Jun 2022 07:20:30 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Jun 2022 19:48:46 +0530
Message-Id: <20220602141850.21301-2-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20220602141850.21301-1-animesh.manna@intel.com>
References: <20220602141850.21301-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 1/5] drm/i915/bios: calculate drrs mode
 using panel index for dual LFP
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

Dual LFP may have different panel and based on panel index
respective 2 bits store the drrs mode info for each panel. So panel
index is used for deriving drrs mode of the rspective panel.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c        |  2 +-
 drivers/gpu/drm/i915/display/intel_bios.c     | 45 +++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_bios.h     |  3 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  3 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |  3 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  4 ++
 drivers/gpu/drm/i915/display/vlv_dsi.c        |  2 +-
 8 files changed, 52 insertions(+), 12 deletions(-)

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
index 337277ae3dae..78eaf6255599 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -747,7 +747,8 @@ static int get_panel_type(struct drm_i915_private *i915,
 static void
 parse_panel_options(struct drm_i915_private *i915,
 		    struct intel_panel *panel,
-		    const struct edid *edid)
+		    const struct edid *edid,
+		    int panel_index)
 {
 	const struct bdb_lvds_options *lvds_options;
 	int panel_type;
@@ -764,7 +765,7 @@ parse_panel_options(struct drm_i915_private *i915,
 	panel->vbt.panel_type = panel_type;
 
 	drrs_mode = (lvds_options->dps_panel_type_bits
-				>> (panel_type * 2)) & MODE_MASK;
+				>> (panel_index * 2)) & MODE_MASK;
 	/*
 	 * VBT has static DRRS = 0 and seamless DRRS = 2.
 	 * The below piece of code is required to adjust vbt.drrs_type
@@ -3069,13 +3070,49 @@ void intel_bios_init(struct drm_i915_private *i915)
 	kfree(oprom_vbt);
 }
 
+static int
+get_lfp_panel_index(struct drm_i915_private *i915, int lfp_panel_instance)
+{
+	const struct bdb_lvds_options *lvds_options;
+
+	lvds_options = find_section(i915, BDB_LVDS_OPTIONS);
+	if (!lvds_options)
+		return -1;
+
+	switch (lfp_panel_instance) {
+	case 1:
+		return lvds_options->panel_type;
+	case 2:
+		return lvds_options->panel_type2;
+	default:
+		break;
+	}
+
+	return -1;
+}
+
 void intel_bios_init_panel(struct drm_i915_private *i915,
-			   struct intel_panel *panel,
+			   struct intel_connector *intel_connector,
 			   const struct edid *edid)
 {
+	struct intel_panel *panel = &intel_connector->panel;
+	struct intel_encoder *encoder = intel_connector->encoder;
+	const struct intel_bios_encoder_data *devdata = i915->vbt.ports[encoder->port];
+	int lfp_inst = 0, panel_index;
+
 	init_vbt_panel_defaults(panel);
 
-	parse_panel_options(i915, panel, edid);
+	if (devdata->child.handle == HANDLE_LFP_1)
+		lfp_inst = 1;
+	else if (devdata->child.handle == HANDLE_LFP_2)
+		lfp_inst = 2;
+
+	if (lfp_inst == 0)
+		return;
+
+	panel_index = get_lfp_panel_index(i915, lfp_inst);
+
+	parse_panel_options(i915, panel, edid, panel_index);
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
index 1bc1f6458e81..3e9b4263e1bc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5213,8 +5213,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	}
 	intel_connector->edid = edid;
 
-	intel_bios_init_panel(dev_priv, &intel_connector->panel,
-			      IS_ERR(edid) ? NULL : edid);
+	intel_bios_init_panel(dev_priv, intel_connector, IS_ERR(edid) ? NULL : edid);
 
 	intel_panel_add_edid_fixed_modes(intel_connector,
 					 intel_connector->panel.vbt.drrs_type != DRRS_TYPE_NONE);
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 595f03343939..2c60267f9d37 100644
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
index d9de2c4d67a7..3b7fe117bc5b 100644
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
index 4b98bab3b890..fbda64e3a34d 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -349,6 +349,10 @@ enum vbt_gmbus_ddi {
 #define BDB_230_VBT_DP_MAX_LINK_RATE_UHBR13P5	6
 #define BDB_230_VBT_DP_MAX_LINK_RATE_UHBR20	7
 
+/* VBT info for DUAL LFP */
+#define HANDLE_LFP_1 0x0008
+#define HANDLE_LFP_2 0x0080
+
 /*
  * The child device config, aka the display device data structure, provides a
  * description of a port and its configuration on the platform.
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

