Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5238BAC5D
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:25:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B57931128A2;
	Fri,  3 May 2024 12:25:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="edd0CTH2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAB951128A2
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739107; x=1746275107;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=mCLoZLMX6sAbiBX6PA/PvbcwdlBg6leNpJbeI+/AkEo=;
 b=edd0CTH24r907ZY+KQXGLBg+hSXAuiGgpCyxdIQDdtw6/k93KzOactCJ
 JITD64RqlLY1wqNMcRvYPDWs+f3M0BwN5hA5aHxrUHOXCpnlLarxM9teX
 tetnOvoDWf221jmh3/bR3O4wUORa5lDUtYcEB6qHAf2BP3Ik5FFYaUvUH
 VKZvF/L+y/s6OFJ9Q3xEddbNT0hVkZnIfU0gbOEe06cM2srqNJkKWUTmS
 4FgTMLjA8YsH3AkxokPxtXzXmTlMoCIA+YKXh6zRAn5ecknsUWwqdhM2C
 O1004aSv/sxd+LzXcGPq+Efg/I62B+INOCN+IbcBDDRaYnFKiEZocOpXR w==;
X-CSE-ConnectionGUID: CFtGYSMRQ6Ou2DBbFbxeyw==
X-CSE-MsgGUID: de94wy5rTIWC76j8BXk+Iw==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372729"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372729"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:25:06 -0700
X-CSE-ConnectionGUID: zAnX+GxVSRCqGlrAQQvVog==
X-CSE-MsgGUID: d1YQbJZHQl6AXP2qbePfdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463619"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:25:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:25:03 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 05/35] drm/i915/bios: Rename SDVO DTD blocks a bit
Date: Fri,  3 May 2024 15:24:19 +0300
Message-ID: <20240503122449.27266-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The SDVO LVDS blocks are specifically about LVDS, so stick
to naming that reflects that. This also makes the names match
the spec.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 23 +++++++++----------
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 12 +++++-----
 2 files changed, 17 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index cde981c4b8b8..29873b972968 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -170,8 +170,8 @@ static const struct {
 	  .min_size = sizeof(struct bdb_driver_features), },
 	{ .section_id = BDB_SDVO_LVDS_OPTIONS,
 	  .min_size = sizeof(struct bdb_sdvo_lvds_options), },
-	{ .section_id = BDB_SDVO_PANEL_DTDS,
-	  .min_size = sizeof(struct bdb_sdvo_panel_dtds), },
+	{ .section_id = BDB_SDVO_LVDS_DTD,
+	  .min_size = sizeof(struct bdb_sdvo_lvds_dtd), },
 	{ .section_id = BDB_EDP,
 	  .min_size = sizeof(struct bdb_edp), },
 	{ .section_id = BDB_LFP_OPTIONS,
@@ -1102,19 +1102,18 @@ parse_lfp_backlight(struct drm_i915_private *i915,
 		    panel->vbt.backlight.controller);
 }
 
-/* Try to find sdvo panel data */
 static void
-parse_sdvo_panel_data(struct drm_i915_private *i915,
-		      struct intel_panel *panel)
+parse_sdvo_lvds_data(struct drm_i915_private *i915,
+		     struct intel_panel *panel)
 {
-	const struct bdb_sdvo_panel_dtds *dtds;
+	const struct bdb_sdvo_lvds_dtd *dtd;
 	struct drm_display_mode *panel_fixed_mode;
 	int index;
 
 	index = i915->display.params.vbt_sdvo_panel_type;
 	if (index == -2) {
 		drm_dbg_kms(&i915->drm,
-			    "Ignore SDVO panel mode from BIOS VBT tables.\n");
+			    "Ignore SDVO LVDS mode from BIOS VBT tables.\n");
 		return;
 	}
 
@@ -1128,20 +1127,20 @@ parse_sdvo_panel_data(struct drm_i915_private *i915,
 		index = sdvo_lvds_options->panel_type;
 	}
 
-	dtds = bdb_find_section(i915, BDB_SDVO_PANEL_DTDS);
-	if (!dtds)
+	dtd = bdb_find_section(i915, BDB_SDVO_LVDS_DTD);
+	if (!dtd)
 		return;
 
 	panel_fixed_mode = kzalloc(sizeof(*panel_fixed_mode), GFP_KERNEL);
 	if (!panel_fixed_mode)
 		return;
 
-	fill_detail_timing_data(i915, panel_fixed_mode, &dtds->dtds[index]);
+	fill_detail_timing_data(i915, panel_fixed_mode, &dtd->dtd[index]);
 
 	panel->vbt.sdvo_lvds_vbt_mode = panel_fixed_mode;
 
 	drm_dbg_kms(&i915->drm,
-		    "Found SDVO panel mode in BIOS VBT tables: " DRM_MODE_FMT "\n",
+		    "Found SDVO LVDS mode in BIOS VBT tables: " DRM_MODE_FMT "\n",
 		    DRM_MODE_ARG(panel_fixed_mode));
 }
 
@@ -3269,7 +3268,7 @@ static void intel_bios_init_panel(struct drm_i915_private *i915,
 	parse_generic_dtd(i915, panel);
 	parse_lfp_data(i915, panel);
 	parse_lfp_backlight(i915, panel);
-	parse_sdvo_panel_data(i915, panel);
+	parse_sdvo_lvds_data(i915, panel);
 	parse_panel_driver_features(i915, panel);
 	parse_power_conservation_features(i915, panel);
 	parse_edp(i915, panel);
diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 35c844b569a3..d090480d82eb 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -160,9 +160,9 @@ enum bdb_block_id {
 	BDB_OEM_CUSTOM			= 20,
 	BDB_EFP_LIST			= 21, /* workarounds for VGA hsync/vsync */
 	BDB_SDVO_LVDS_OPTIONS		= 22,
-	BDB_SDVO_PANEL_DTDS		= 23,
-	BDB_SDVO_LVDS_PNP_IDS		= 24,
-	BDB_SDVO_LVDS_POWER_SEQ		= 25,
+	BDB_SDVO_LVDS_DTD		= 23,
+	BDB_SDVO_LVDS_PNP_ID		= 24,
+	BDB_SDVO_LVDS_PPS		= 25,
 	BDB_TV_OPTIONS			= 26,
 	BDB_EDP				= 27,
 	BDB_LFP_OPTIONS			= 40,
@@ -686,11 +686,11 @@ struct bdb_sdvo_lvds_options {
 } __packed;
 
 /*
- * Block 23 - SDVO LVDS Panel DTDs
+ * Block 23 - SDVO LVDS DTD
  */
 
-struct bdb_sdvo_panel_dtds {
-	struct bdb_edid_dtd dtds[4];
+struct bdb_sdvo_lvds_dtd {
+	struct bdb_edid_dtd dtd[4];
 } __packed;
 
 /*
-- 
2.43.2

