Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 118D151A31A
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 17:05:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12F6E10ECE2;
	Wed,  4 May 2022 15:05:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA56210ECE2
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 15:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651676709; x=1683212709;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gnfezxiT3rXEjOIa/VZTC9+vcOxGwHkpzlQK8IZyKaU=;
 b=Q8fWqQzA6Gt7Gpaop/E9VbHzzdioiPkWUXal8/xsukT7LXR9NOdG8viL
 m+xuD5blyjY1bUwREJr79HIqMbkexCGU+ub71stYS4tBAcEYUPVLf3j+P
 CFmC7M0vTCgN9DOYSuF0wnGKImHXajo1EBsELvwtWU1fLUBgLcA2RAgei
 9N/kAHqs5bp3Ot1AcZB9AdQxQX8iPl2ccO0SOMQftsbodEmviRkeFsfw6
 U9Dz0LaX6ic35bqHZRxIn8ZDRH2HovE3KqyuwifYhVRkpME02a3bpuwCb
 ULhKDMrx6wDofoKcF9j5vegE/rce0wCSdUOkfJj8DA9+KUkCCjLxoFi55 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="330779031"
X-IronPort-AV: E=Sophos;i="5.91,198,1647327600"; d="scan'208";a="330779031"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 08:05:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,198,1647327600"; d="scan'208";a="664505933"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga002.fm.intel.com with SMTP; 04 May 2022 08:05:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 May 2022 18:04:59 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 May 2022 18:04:37 +0300
Message-Id: <20220504150440.13748-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220504150440.13748-1-ville.syrjala@linux.intel.com>
References: <20220504150440.13748-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/9] drm/i915/bios: Extract get_panel_type()
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

Pull the code to determine the panel type into its own set of
sane functions.

v2: rebase

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 58 +++++++++++++++--------
 1 file changed, 39 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 53a7a16df231..63f50d219be4 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -595,6 +595,44 @@ get_lfp_data_tail(const struct bdb_lvds_lfp_data *data,
 		return NULL;
 }
 
+static int vbt_get_panel_type(struct drm_i915_private *i915)
+{
+	const struct bdb_lvds_options *lvds_options;
+
+	lvds_options = find_section(i915, BDB_LVDS_OPTIONS);
+	if (!lvds_options)
+		return -1;
+
+	if (lvds_options->panel_type > 0xf) {
+		drm_dbg_kms(&i915->drm, "Invalid VBT panel type 0x%x\n",
+			    lvds_options->panel_type);
+		return -1;
+	}
+
+	return lvds_options->panel_type;
+}
+
+static int get_panel_type(struct drm_i915_private *i915)
+{
+	int ret;
+
+	ret = intel_opregion_get_panel_type(i915);
+	if (ret >= 0) {
+		drm_WARN_ON(&i915->drm, ret > 0xf);
+		drm_dbg_kms(&i915->drm, "Panel type: %d (OpRegion)\n", ret);
+		return ret;
+	}
+
+	ret = vbt_get_panel_type(i915);
+	if (ret >= 0) {
+		drm_WARN_ON(&i915->drm, ret > 0xf);
+		drm_dbg_kms(&i915->drm, "Panel type: %d (VBT)\n", ret);
+		return ret;
+	}
+
+	return 0; /* fallback */
+}
+
 /* Parse general panel options */
 static void
 parse_panel_options(struct drm_i915_private *i915)
@@ -602,7 +640,6 @@ parse_panel_options(struct drm_i915_private *i915)
 	const struct bdb_lvds_options *lvds_options;
 	int panel_type;
 	int drrs_mode;
-	int ret;
 
 	lvds_options = find_section(i915, BDB_LVDS_OPTIONS);
 	if (!lvds_options)
@@ -610,24 +647,7 @@ parse_panel_options(struct drm_i915_private *i915)
 
 	i915->vbt.lvds_dither = lvds_options->pixel_dither;
 
-	ret = intel_opregion_get_panel_type(i915);
-	if (ret >= 0) {
-		drm_WARN_ON(&i915->drm, ret > 0xf);
-		panel_type = ret;
-		drm_dbg_kms(&i915->drm, "Panel type: %d (OpRegion)\n",
-			    panel_type);
-	} else {
-		if (lvds_options->panel_type > 0xf) {
-			drm_dbg_kms(&i915->drm,
-				    "Invalid VBT panel type 0x%x, assuming 0\n",
-				    lvds_options->panel_type);
-			panel_type = 0;
-		} else {
-			panel_type = lvds_options->panel_type;
-			drm_dbg_kms(&i915->drm, "Panel type: %d (VBT)\n",
-				    panel_type);
-		}
-	}
+	panel_type = get_panel_type(i915);
 
 	i915->vbt.panel_type = panel_type;
 
-- 
2.35.1

