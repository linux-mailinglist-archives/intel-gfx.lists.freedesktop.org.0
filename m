Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDBBF51A314
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 17:04:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AC5810EC3B;
	Wed,  4 May 2022 15:04:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AD3410EC3B
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 15:04:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651676687; x=1683212687;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yUu2acfHlJUIkyzTu1Gj4Ca8MpfF5ToWhPhZImttFAA=;
 b=CMlUbQcavcI7PTQ+Lo48xDzydzQDAZ1+g34JtWMcf+JzP+4TNCPLUuRj
 85+Pr86y3HMSmvb3EAtNXKoig0AgrfGZ1I7KyBZN0hOdUNg4kb9s9OoSy
 93xmZn5eJI2aCEQrksqNfvaIm6Ek5rbOD/vHHJt7iVt45ElEC4KPW0N8P
 iJ9j1JQf4942mCzxlF8svbOToKlfoSMBq+TL7sYBNdju6VmXo3BBa3t+W
 vJR4Vllc/4U4ZKKjfwkzIUj+HetGkR6j9ZJ4Y9a1oEtWNpykMxBZCXFfz
 qNbnMRaNsx2dXuWe8Ve1LQ4WJq39nTThc0B7McMFnKPu6eS9/KtkvJihz A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="266634360"
X-IronPort-AV: E=Sophos;i="5.91,198,1647327600"; d="scan'208";a="266634360"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 08:04:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,198,1647327600"; d="scan'208";a="536866879"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga006.jf.intel.com with SMTP; 04 May 2022 08:04:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 May 2022 18:04:43 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 May 2022 18:04:32 +0300
Message-Id: <20220504150440.13748-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220504150440.13748-1-ville.syrjala@linux.intel.com>
References: <20220504150440.13748-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/9] drm/i915/bios: Reorder panel DTD parsing
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

