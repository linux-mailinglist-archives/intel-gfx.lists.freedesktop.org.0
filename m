Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 335A54F3CF3
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 19:35:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33F6110ED94;
	Tue,  5 Apr 2022 17:35:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F12010ED94
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 17:35:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649180120; x=1680716120;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=n6TN6tMNWajlQNZcp85jXFBHF4EWcgmfVi+Bf07yJco=;
 b=dzF3Pip3MJrOV6ipnJdzuzY+FjMeyUyMF8O3VgIORJFa1BYre0zq9S/j
 zPpLOG1FjqbYwaEX/s3ODA6W5UYJQ8QCoSuKFZ+t09TLr6AVDV0hoY7Cp
 RiJ6GeKCTfkwG0mEMAQoRZ8ltkrCwl07QYWrgkgXd8U+BBeNXF1VJ7oOH
 DzX0sWVSJKSrTF0KG7LfeImXr1KQI78eH4PFx2BHifeSKAkTgPe1VMtwH
 63yRSoj8QQuC1HuzywUog8FVhU/3IZBNzk+zAGpRphz1by1BU6SVUu2cz
 /zjFExH6NIvB/XHBjLhwwmZoYy16H4Okf2YzdVc8kDrnMPnBmBtZAI+Jw g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="242959672"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="242959672"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 10:34:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="697021963"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga001.fm.intel.com with SMTP; 05 Apr 2022 10:34:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Apr 2022 20:34:46 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Apr 2022 20:34:00 +0300
Message-Id: <20220405173410.11436-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 12/22] drm/i915/bios: Split VBT parsing to
 global vs. panel specific parts
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

Parsing the panel specific data from VBT is currently happening
too early. Split the whole thing into global vs. panel specific
parts so that we can start doing the panel specific parsing at
a later time.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c    | 50 +++++++++++++-------
 drivers/gpu/drm/i915/display/intel_bios.h    |  1 +
 drivers/gpu/drm/i915/display/intel_display.c |  1 +
 3 files changed, 35 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 1a7f1aa79827..da2b1932e10d 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -723,6 +723,9 @@ parse_generic_dtd(struct drm_i915_private *i915)
 	struct drm_display_mode *panel_fixed_mode;
 	int num_dtd;
 
+	if (i915->vbt.lfp_lvds_vbt_mode)
+		return;
+
 	generic_dtd = find_section(i915, BDB_GENERIC_DTD);
 	if (!generic_dtd)
 		return;
@@ -891,6 +894,9 @@ parse_sdvo_panel_data(struct drm_i915_private *i915)
 	struct drm_display_mode *panel_fixed_mode;
 	int index;
 
+	if (i915->vbt.sdvo_lvds_vbt_mode)
+		return;
+
 	index = i915->params.vbt_sdvo_panel_type;
 	if (index == -2) {
 		drm_dbg_kms(&i915->drm,
@@ -1419,6 +1425,9 @@ parse_mipi_config(struct drm_i915_private *i915)
 	int panel_type = i915->vbt.panel_type;
 	enum port port;
 
+	if (i915->vbt.dsi.config)
+		return;
+
 	/* parse MIPI blocks only if LFP type is MIPI */
 	if (!intel_bios_is_dsi_present(i915, &port))
 		return;
@@ -1739,6 +1748,9 @@ parse_mipi_sequence(struct drm_i915_private *i915)
 	u8 *data;
 	int index = 0;
 
+	if (i915->vbt.dsi.data)
+		return;
+
 	/* Only our generic panel driver uses the sequence block. */
 	if (i915->vbt.dsi.panel_id != MIPI_DSI_GENERIC_PANEL_ID)
 		return;
@@ -2878,6 +2890,27 @@ void intel_bios_init(struct drm_i915_private *i915)
 	/* Grab useful general definitions */
 	parse_general_features(i915);
 	parse_general_definitions(i915);
+	parse_driver_features(i915);
+
+	/* Depends on child device list */
+	parse_compression_parameters(i915);
+
+out:
+	if (!vbt) {
+		drm_info(&i915->drm,
+			 "Failed to find VBIOS tables (VBT)\n");
+		init_vbt_missing_defaults(i915);
+	}
+
+	/* Further processing on pre-parsed or generated child device data */
+	parse_sdvo_device_mapping(i915);
+	parse_ddi_ports(i915);
+
+	kfree(oprom_vbt);
+}
+
+void intel_bios_init_panel(struct drm_i915_private *i915)
+{
 	parse_panel_options(i915);
 	/*
 	 * Older VBTs provided DTD information for internal displays through
@@ -2892,29 +2925,12 @@ void intel_bios_init(struct drm_i915_private *i915)
 	parse_lfp_data(i915);
 	parse_lfp_backlight(i915);
 	parse_sdvo_panel_data(i915);
-	parse_driver_features(i915);
 	parse_panel_driver_features(i915);
 	parse_power_conservation_features(i915);
 	parse_edp(i915);
 	parse_psr(i915);
 	parse_mipi_config(i915);
 	parse_mipi_sequence(i915);
-
-	/* Depends on child device list */
-	parse_compression_parameters(i915);
-
-out:
-	if (!vbt) {
-		drm_info(&i915->drm,
-			 "Failed to find VBIOS tables (VBT)\n");
-		init_vbt_missing_defaults(i915);
-	}
-
-	/* Further processing on pre-parsed or generated child device data */
-	parse_sdvo_device_mapping(i915);
-	parse_ddi_ports(i915);
-
-	kfree(oprom_vbt);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 4709c4d29805..c744d75fa435 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -230,6 +230,7 @@ struct mipi_pps_data {
 } __packed;
 
 void intel_bios_init(struct drm_i915_private *dev_priv);
+void intel_bios_init_panel(struct drm_i915_private *dev_priv);
 void intel_bios_driver_remove(struct drm_i915_private *dev_priv);
 bool intel_bios_is_valid_vbt(const void *buf, size_t size);
 bool intel_bios_is_tv_present(struct drm_i915_private *dev_priv);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index eee185ed41c3..4ece4e7d0296 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -9650,6 +9650,7 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
 	}
 
 	intel_bios_init(i915);
+	intel_bios_init_panel(i915);
 
 	ret = intel_vga_register(i915);
 	if (ret)
-- 
2.35.1

