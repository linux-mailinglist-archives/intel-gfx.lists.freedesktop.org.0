Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 074BF4F3CF2
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 19:35:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4628710ED9B;
	Tue,  5 Apr 2022 17:35:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0484410EDB6
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 17:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649180119; x=1680716119;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=dbkPrDndxblPh+pN7niVJ3D//aAdrovfLf6qtMzZb+U=;
 b=InRO+g6gASEqqK5c3w+DmRNv8XLmni58noL8373CRAMR6iWUT/D9ydgX
 3QiuXak3To7ah2QQ6Ds1RRJFGABA56+GrO/xYfD9tZuva7K027tinvhIz
 AbY6IlhbR+6BNG1FwgZG7Y9UFmPG2dJT/QORkz0FPlzdHwXNmv/fAihhS
 FxNl8L1ok7xogUaDHgFfoBSdrjvat+iRtkFuqV+i4CzYPdbNpCiiyai0a
 j9oETIKFX0JxWuXsfyc5oyZheVKidAxc7ogGNYEV9mAs6p+QHN0XmteJz
 ENRk/ixZF0att2/y501l29/DP44uLGAZ0czmApX3GplCX/7vjdwZzcrN1 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="258402617"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="258402617"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 10:35:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="588016685"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga001.jf.intel.com with SMTP; 05 Apr 2022 10:34:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Apr 2022 20:34:58 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Apr 2022 20:34:04 +0300
Message-Id: <20220405173410.11436-17-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 16/22] drm/i915/bios: Extract get_panel_type()
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

Pull the code to determine the panel type into its own set of
sane functions.

v2: rebase

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 58 +++++++++++++++--------
 1 file changed, 39 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index da2b1932e10d..26839263abf0 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -589,6 +589,44 @@ get_lfp_data_tail(const struct bdb_lvds_lfp_data *data,
 		return NULL;
 }
 
+static int vbt_panel_type(struct drm_i915_private *i915)
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
+	ret = vbt_panel_type(i915);
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
@@ -596,7 +634,6 @@ parse_panel_options(struct drm_i915_private *i915)
 	const struct bdb_lvds_options *lvds_options;
 	int panel_type;
 	int drrs_mode;
-	int ret;
 
 	lvds_options = find_section(i915, BDB_LVDS_OPTIONS);
 	if (!lvds_options)
@@ -604,24 +641,7 @@ parse_panel_options(struct drm_i915_private *i915)
 
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

