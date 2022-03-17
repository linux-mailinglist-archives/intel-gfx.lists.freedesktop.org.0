Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0DCD4DCC3F
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 18:20:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3118510E636;
	Thu, 17 Mar 2022 17:20:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BEB110E60B
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 17:20:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647537612; x=1679073612;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=83kSjEsn7OyYcNOFKr2k1h5LHnmWZMtiGQu0tTyg4Sc=;
 b=HyGeHLY9GjkTK68OwjFeTsfeVQRcC9wD8enquL4zEqx4VSyKiGFeaJ2y
 yCnMnX2ALGHDN6+aiPAEzCSsP7TGrWpRhy2YqeuVvZ2St2F9l0Mnd7mcL
 0aMaj+wnHC35X4NsRZJwTHI8AxsqDJzIGF6t94GqmGST/wLVR2VjDrYdJ
 g16BeVqQAnA1HixwRAuahucu2Wb5+VKWmd08+ecIQT6dP9JZdrlBEvPvZ
 Ak+n5w9Ox7XZI9M8qExa1HhfeOeTqfFgoidOkL8jgBjpqiVij14YmeG4J
 XkAqIqpefXrMk5QIcsJeGsRCs67hB1AzhWtEPF4gA6ASUpOBo2NIWgBDg Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="237540188"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="237540188"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 10:20:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="550419026"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga007.fm.intel.com with SMTP; 17 Mar 2022 10:20:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Mar 2022 19:20:09 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Mar 2022 19:19:44 +0200
Message-Id: <20220317171948.10400-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220317171948.10400-1-ville.syrjala@linux.intel.com>
References: <20220317171948.10400-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/11] drm/i915/bios: Reorder panel DTD parsing
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
 drivers/gpu/drm/i915/display/intel_bios.c | 67 ++++++++++++-----------
 1 file changed, 34 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 59f16c460d7b..7633933a4920 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -448,28 +448,16 @@ parse_panel_options(struct drm_i915_private *i915,
 	}
 }
 
-/* Try to find integrated panel timing data */
 static void
 parse_lfp_panel_dtd(struct drm_i915_private *i915,
-		    const struct bdb_header *bdb)
+		    const struct bdb_lvds_lfp_data *lvds_lfp_data,
+		    const struct bdb_lvds_lfp_data_ptrs *lvds_lfp_data_ptrs)
 {
-	const struct bdb_lvds_lfp_data *lvds_lfp_data;
-	const struct bdb_lvds_lfp_data_ptrs *lvds_lfp_data_ptrs;
 	const struct lvds_dvo_timing *panel_dvo_timing;
 	const struct lvds_fp_timing *fp_timing;
 	struct drm_display_mode *panel_fixed_mode;
 	int panel_type = i915->vbt.panel_type;
 
-	lvds_lfp_data = find_section(i915, bdb, BDB_LVDS_LFP_DATA,
-				     sizeof(*lvds_lfp_data));
-	if (!lvds_lfp_data)
-		return;
-
-	lvds_lfp_data_ptrs = find_section(i915, bdb, BDB_LVDS_LFP_DATA_PTRS,
-					  sizeof(*lvds_lfp_data_ptrs));
-	if (!lvds_lfp_data_ptrs)
-		return;
-
 	panel_dvo_timing = get_lvds_dvo_timing(lvds_lfp_data,
 					       lvds_lfp_data_ptrs,
 					       panel_type);
@@ -500,6 +488,27 @@ parse_lfp_panel_dtd(struct drm_i915_private *i915,
 	}
 }
 
+static void
+parse_lfp_data(struct drm_i915_private *i915,
+	       const struct bdb_header *bdb)
+{
+	const struct bdb_lvds_lfp_data *data;
+	const struct bdb_lvds_lfp_data_ptrs *ptrs;
+
+	ptrs = find_section(i915, bdb, BDB_LVDS_LFP_DATA_PTRS,
+			    sizeof(*ptrs));
+	if (!ptrs)
+		return;
+
+	data = find_section(i915, bdb, BDB_LVDS_LFP_DATA,
+			    sizeof(*data));
+	if (!data)
+		return;
+
+	if (!i915->vbt.lfp_lvds_vbt_mode)
+		parse_lfp_panel_dtd(i915, data, ptrs);
+}
+
 static void
 parse_generic_dtd(struct drm_i915_private *i915,
 		  const struct bdb_header *bdb)
@@ -580,24 +589,6 @@ parse_generic_dtd(struct drm_i915_private *i915,
 	i915->vbt.lfp_lvds_vbt_mode = panel_fixed_mode;
 }
 
-static void
-parse_panel_dtd(struct drm_i915_private *i915,
-		const struct bdb_header *bdb)
-{
-	/*
-	 * Older VBTs provided provided DTD information for internal displays
-	 * through the "LFP panel DTD" block (42).  As of VBT revision 229,
-	 * that block is now deprecated and DTD information should be provided
-	 * via a newer "generic DTD" block (58).  Just to be safe, we'll
-	 * try the new generic DTD block first on VBT >= 229, but still fall
-	 * back to trying the old LFP block if that fails.
-	 */
-	if (bdb->version >= 229)
-		parse_generic_dtd(i915, bdb);
-	if (!i915->vbt.lfp_lvds_vbt_mode)
-		parse_lfp_panel_dtd(i915, bdb);
-}
-
 static void
 parse_lfp_backlight(struct drm_i915_private *i915,
 		    const struct bdb_header *bdb)
@@ -2693,7 +2684,17 @@ void intel_bios_init(struct drm_i915_private *i915)
 	parse_general_features(i915, bdb);
 	parse_general_definitions(i915, bdb);
 	parse_panel_options(i915, bdb);
-	parse_panel_dtd(i915, bdb);
+	/*
+	 * Older VBTs provided DTD information for internal displays through
+	 * the "LFP panel tables" block (42).  As of VBT revision 229 the
+	 * DTD information should be provided via a newer "generic DTD"
+	 * block (58).  Just to be safe, we'll try the new generic DTD block
+	 * first on VBT >= 229, but still fall back to trying the old LFP
+	 * block if that fails.
+	 */
+	if (bdb->version >= 229)
+		parse_generic_dtd(i915, bdb);
+	parse_lfp_data(i915, bdb);
 	parse_lfp_backlight(i915, bdb);
 	parse_sdvo_panel_data(i915, bdb);
 	parse_driver_features(i915, bdb);
-- 
2.34.1

