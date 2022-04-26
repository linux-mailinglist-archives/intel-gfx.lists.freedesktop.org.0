Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7490510919
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 21:33:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0401A10E5CF;
	Tue, 26 Apr 2022 19:33:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D7B810E588
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 19:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651001582; x=1682537582;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jTTc8qp37+BrfgJoFdZUauwMbLf7eQgVhIx+R9gIlOo=;
 b=aS24kZi4NPXoXqFHbW75Zvd9v7c99WR3Ab8fQxfX8mEGTMViPNujrrbP
 X09FJWmOxNDWWDpkIwKIRsNzN0LDiw5aDV2Mu2icWrMm0816aAW02Q7d9
 LICvBJoKhVxO1Z7+MaYsO8cM08cZCLod/NEpMBISqUt8EkiOWiEApvNtE
 HRzvHlk1kgyH3/lAhfuynD531l5zWxwPrUK6xCfE+1gJ3BCw9aYuPI237
 9Xz5OYp3mV0L9xr6zxxtZJDM98TbsdIQzXZsiMtIoTsAMgZyDnbWtTpiy
 ffJyD2m6Qjs4Ul0RyOxOZ4vCh+mdIv2ftLr4nRSYKLLiA+p4X2CeOhyeM g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="265862488"
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="265862488"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 12:33:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="595923034"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga001.jf.intel.com with SMTP; 26 Apr 2022 12:32:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Apr 2022 22:32:58 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Apr 2022 22:32:16 +0300
Message-Id: <20220426193222.3422-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
References: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 12/18] drm/i915/bios: Extract get_panel_type()
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
index 24e3b2f2485e..c68e4d987b81 100644
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

