Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E6B510905
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 21:32:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23D5C10E532;
	Tue, 26 Apr 2022 19:32:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1154D10E4F0
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 19:32:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651001550; x=1682537550;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yUu2acfHlJUIkyzTu1Gj4Ca8MpfF5ToWhPhZImttFAA=;
 b=YnZGSCk3cU61kD3rkCl6aj9lvOwJVLFXFslmAXvXnLxq1fJ+Nzskz7nH
 rGPrZ7TgFQItQQPXvIYHynbu/V6YBz2J8q+yJDXjbviuCtyfsui4S+idT
 ybM0a0Ls7fZSvypnFUNACknMqJUAHQbSXF9jIFHha6/pHJb6Lw5BMe3TK
 XURnJQSxqqCx/jXabxhNrGGfn2GdWrl499lEFQVx5qBC+cnLkReKXivDn
 7uNn+PDjVR/XLzRyCsbOmfuynUauGVnBN413JUuBrje0X436c7aYEvfJU
 u+FzTUciZr8n41ObjvlS4rDqxyOge+6rvyHQT5MkRh1ERBuF9H8kBK0sZ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="290846440"
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="290846440"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 12:32:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="532827946"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga006.jf.intel.com with SMTP; 26 Apr 2022 12:32:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Apr 2022 22:32:25 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Apr 2022 22:32:05 +0300
Message-Id: <20220426193222.3422-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
References: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 01/18] drm/i915/bios: Reorder panel DTD
 parsing
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reorder things so that we can parse the entier LFP data block
in one go. For now we just stick to parsing the DTD from it.

Also fix the misleading comment about block 42 being deprecated.
Only the DTD part is deprecated, the rest is still very much needed.

v2: Move the version check+comment into parse_generic_dtd() (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 64 ++++++++++++-----------
 1 file changed, 34 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 81949c36ab96..8a1086721525 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -489,25 +489,16 @@ parse_panel_options(struct drm_i915_private *i915)
 	}
 }
 
-/* Try to find integrated panel timing data */
 static void
-parse_lfp_panel_dtd(struct drm_i915_private *i915)
+parse_lfp_panel_dtd(struct drm_i915_private *i915,
+		    const struct bdb_lvds_lfp_data *lvds_lfp_data,
+		    const struct bdb_lvds_lfp_data_ptrs *lvds_lfp_data_ptrs)
 {
-	const struct bdb_lvds_lfp_data *lvds_lfp_data;
-	const struct bdb_lvds_lfp_data_ptrs *lvds_lfp_data_ptrs;
 	const struct lvds_dvo_timing *panel_dvo_timing;
 	const struct lvds_fp_timing *fp_timing;
 	struct drm_display_mode *panel_fixed_mode;
 	int panel_type = i915->vbt.panel_type;
 
-	lvds_lfp_data = find_section(i915, BDB_LVDS_LFP_DATA);
-	if (!lvds_lfp_data)
-		return;
-
-	lvds_lfp_data_ptrs = find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
-	if (!lvds_lfp_data_ptrs)
-		return;
-
 	panel_dvo_timing = get_lvds_dvo_timing(lvds_lfp_data,
 					       lvds_lfp_data_ptrs,
 					       panel_type);
@@ -538,6 +529,24 @@ parse_lfp_panel_dtd(struct drm_i915_private *i915)
 	}
 }
 
+static void
+parse_lfp_data(struct drm_i915_private *i915)
+{
+	const struct bdb_lvds_lfp_data *data;
+	const struct bdb_lvds_lfp_data_ptrs *ptrs;
+
+	ptrs = find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
+	if (!ptrs)
+		return;
+
+	data = find_section(i915, BDB_LVDS_LFP_DATA);
+	if (!data)
+		return;
+
+	if (!i915->vbt.lfp_lvds_vbt_mode)
+		parse_lfp_panel_dtd(i915, data, ptrs);
+}
+
 static void
 parse_generic_dtd(struct drm_i915_private *i915)
 {
@@ -546,6 +555,17 @@ parse_generic_dtd(struct drm_i915_private *i915)
 	struct drm_display_mode *panel_fixed_mode;
 	int num_dtd;
 
+	/*
+	 * Older VBTs provided DTD information for internal displays through
+	 * the "LFP panel tables" block (42).  As of VBT revision 229 the
+	 * DTD information should be provided via a newer "generic DTD"
+	 * block (58).  Just to be safe, we'll try the new generic DTD block
+	 * first on VBT >= 229, but still fall back to trying the old LFP
+	 * block if that fails.
+	 */
+	if (i915->vbt.version < 229)
+		return;
+
 	generic_dtd = find_section(i915, BDB_GENERIC_DTD);
 	if (!generic_dtd)
 		return;
@@ -616,23 +636,6 @@ parse_generic_dtd(struct drm_i915_private *i915)
 	i915->vbt.lfp_lvds_vbt_mode = panel_fixed_mode;
 }
 
-static void
-parse_panel_dtd(struct drm_i915_private *i915)
-{
-	/*
-	 * Older VBTs provided provided DTD information for internal displays
-	 * through the "LFP panel DTD" block (42).  As of VBT revision 229,
-	 * that block is now deprecated and DTD information should be provided
-	 * via a newer "generic DTD" block (58).  Just to be safe, we'll
-	 * try the new generic DTD block first on VBT >= 229, but still fall
-	 * back to trying the old LFP block if that fails.
-	 */
-	if (i915->vbt.version >= 229)
-		parse_generic_dtd(i915);
-	if (!i915->vbt.lfp_lvds_vbt_mode)
-		parse_lfp_panel_dtd(i915);
-}
-
 static void
 parse_lfp_backlight(struct drm_i915_private *i915)
 {
@@ -2709,7 +2712,8 @@ void intel_bios_init(struct drm_i915_private *i915)
 	parse_general_features(i915);
 	parse_general_definitions(i915);
 	parse_panel_options(i915);
-	parse_panel_dtd(i915);
+	parse_generic_dtd(i915);
+	parse_lfp_data(i915);
 	parse_lfp_backlight(i915);
 	parse_sdvo_panel_data(i915);
 	parse_driver_features(i915);
-- 
2.35.1

