Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2EE3FB682
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Aug 2021 14:54:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E8DC89D39;
	Mon, 30 Aug 2021 12:54:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 262BC89D39
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Aug 2021 12:54:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10091"; a="218273669"
X-IronPort-AV: E=Sophos;i="5.84,363,1620716400"; d="scan'208";a="218273669"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2021 05:54:12 -0700
X-IronPort-AV: E=Sophos;i="5.84,363,1620716400"; d="scan'208";a="687228748"
Received: from anikolae-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.249.47.21])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2021 05:54:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Date: Mon, 30 Aug 2021 15:53:43 +0300
Message-Id: <346562ccef2282ccdbdea54409fab1d2b48f313c.1630327990.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1630327990.git.jani.nikula@intel.com>
References: <cover.1630327990.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/display: stop returning errors
 from debugfs registration
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

Failures to register debugfs should be ignored anyway, so stop
propagating errors altogether for clarity and simplicity. No functional
changes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 19 +++++--------------
 .../drm/i915/display/intel_display_debugfs.h  |  8 ++++----
 2 files changed, 9 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index c1cd5d005e08..845e2dc76f87 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -2443,17 +2443,15 @@ static const struct file_operations i915_dsc_bpp_fops = {
  *
  * Cleanup will be done by drm_connector_unregister() through a call to
  * drm_debugfs_connector_remove().
- *
- * Returns 0 on success, negative error codes on error.
  */
-int intel_connector_debugfs_add(struct drm_connector *connector)
+void intel_connector_debugfs_add(struct drm_connector *connector)
 {
 	struct dentry *root = connector->debugfs_entry;
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 
 	/* The connector must have been registered beforehands. */
 	if (!root)
-		return -ENODEV;
+		return;
 
 	if (connector->connector_type == DRM_MODE_CONNECTOR_eDP) {
 		debugfs_create_file("i915_panel_timings", S_IRUGO, root,
@@ -2493,23 +2491,16 @@ int intel_connector_debugfs_add(struct drm_connector *connector)
 	    connector->connector_type == DRM_MODE_CONNECTOR_HDMIB)
 		debugfs_create_file("i915_lpsp_capability", 0444, root,
 				    connector, &i915_lpsp_capability_fops);
-
-	return 0;
 }
 
 /**
  * intel_crtc_debugfs_add - add i915 specific crtc debugfs files
  * @crtc: pointer to a drm_crtc
  *
- * Returns 0 on success, negative error codes on error.
- *
  * Failure to add debugfs entries should generally be ignored.
  */
-int intel_crtc_debugfs_add(struct drm_crtc *crtc)
+void intel_crtc_debugfs_add(struct drm_crtc *crtc)
 {
-	if (!crtc->debugfs_entry)
-		return -ENODEV;
-
-	crtc_updates_add(crtc);
-	return 0;
+	if (crtc->debugfs_entry)
+		crtc_updates_add(crtc);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.h b/drivers/gpu/drm/i915/display/intel_display_debugfs.h
index 557901f3eb90..c72e35ecba1f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.h
@@ -12,12 +12,12 @@ struct drm_i915_private;
 
 #ifdef CONFIG_DEBUG_FS
 void intel_display_debugfs_register(struct drm_i915_private *i915);
-int intel_connector_debugfs_add(struct drm_connector *connector);
-int intel_crtc_debugfs_add(struct drm_crtc *crtc);
+void intel_connector_debugfs_add(struct drm_connector *connector);
+void intel_crtc_debugfs_add(struct drm_crtc *crtc);
 #else
 static inline void intel_display_debugfs_register(struct drm_i915_private *i915) {}
-static inline int intel_connector_debugfs_add(struct drm_connector *connector) { return 0; }
-static inline int intel_crtc_debugfs_add(struct drm_crtc *crtc) { return 0; }
+static inline void intel_connector_debugfs_add(struct drm_connector *connector) {}
+static inline void intel_crtc_debugfs_add(struct drm_crtc *crtc) {}
 #endif
 
 #endif /* __INTEL_DISPLAY_DEBUGFS_H__ */
-- 
2.20.1

