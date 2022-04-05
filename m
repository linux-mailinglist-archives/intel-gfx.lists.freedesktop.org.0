Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9972B4F3CEC
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 19:35:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD7E210EB35;
	Tue,  5 Apr 2022 17:35:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0C5D10EDC6
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 17:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649180100; x=1680716100;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=i0XCeBu+5L19TWn3l7CtZO5il5EwtBe/Fzs95OnFUsc=;
 b=E1fx0mCqFMKWXZ6zmto6MeCHGc3ygAGOqKFfMlN3pHMOFiDSrpw/X476
 c+2gqZp843a0+o6fblivKgfShaBoP3T+3rAMv2doMtD4QuklwsNghvNPZ
 isaGroLLTP/ImluhPxyGIMQDDIU2BHBn/K5p9oTltmTkNWIFqVMKCeVH7
 wSPEtuMs0B7Yiob0JBGfYSRXfDLVQuT2TReIffSFS+eQXbg+tBVnFpYZY
 o+rIDgnM8ncbKDAxgDiZTsRKPhnL4Iw4nAaa4vv6vKZMr4pa9r+G+lz7L
 O9jukT+Jofrc0S5zLv0sLECWPWu/qP/kKRxV2B2MQ+7Mzvn7BGG9EcrA/ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="258402427"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="258402427"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 10:34:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="523551354"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga002.jf.intel.com with SMTP; 05 Apr 2022 10:34:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Apr 2022 20:34:31 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Apr 2022 20:33:55 +0300
Message-Id: <20220405173410.11436-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 07/22] drm/i915/bios: Reorder panel DTD
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reorder things so that we can parse the entier LFP data block
in one go. For now we just stick to parsing the DTD from it.

Also fix the misleading comment about block 42 being deprecated.
Only the DTD part is deprecated, the rest is still very much needed.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 62 ++++++++++++-----------
 1 file changed, 32 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 799c1fe36b23..f90991cac438 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -488,25 +488,16 @@ parse_panel_options(struct drm_i915_private *i915)
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
@@ -537,6 +528,24 @@ parse_lfp_panel_dtd(struct drm_i915_private *i915)
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
@@ -615,23 +624,6 @@ parse_generic_dtd(struct drm_i915_private *i915)
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
@@ -2708,7 +2700,17 @@ void intel_bios_init(struct drm_i915_private *i915)
 	parse_general_features(i915);
 	parse_general_definitions(i915);
 	parse_panel_options(i915);
-	parse_panel_dtd(i915);
+	/*
+	 * Older VBTs provided DTD information for internal displays through
+	 * the "LFP panel tables" block (42).  As of VBT revision 229 the
+	 * DTD information should be provided via a newer "generic DTD"
+	 * block (58).  Just to be safe, we'll try the new generic DTD block
+	 * first on VBT >= 229, but still fall back to trying the old LFP
+	 * block if that fails.
+	 */
+	if (i915->vbt.version >= 229)
+		parse_generic_dtd(i915);
+	parse_lfp_data(i915);
 	parse_lfp_backlight(i915);
 	parse_sdvo_panel_data(i915);
 	parse_driver_features(i915);
-- 
2.35.1

