Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76FD43FB779
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Aug 2021 16:02:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A95589E01;
	Mon, 30 Aug 2021 14:02:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F54189E01
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Aug 2021 14:02:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10092"; a="205492178"
X-IronPort-AV: E=Sophos;i="5.84,363,1620716400"; d="scan'208";a="205492178"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2021 07:02:29 -0700
X-IronPort-AV: E=Sophos;i="5.84,363,1620716400"; d="scan'208";a="497756700"
Received: from anikolae-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.249.47.21])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2021 07:02:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>,
	intel-gfx@lists.freedesktop.org
Date: Mon, 30 Aug 2021 17:02:22 +0300
Message-Id: <20210830140222.12228-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <a557a46d452b20c186f4735e9f15bf37e2845c99.1630327990.git.jani.nikula@intel.com>
References: <a557a46d452b20c186f4735e9f15bf37e2845c99.1630327990.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/debugfs: pass intel_connector to
 intel_connector_debugfs_add()
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

Prefer the intel_ types. No functional changes.

v2: Fix build.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_connector.c       | 2 +-
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 3 ++-
 drivers/gpu/drm/i915/display/intel_display_debugfs.h | 6 +++---
 3 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index 4f49d782eca2..c65f95a9a1ec 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -124,7 +124,7 @@ int intel_connector_register(struct drm_connector *connector)
 		goto err_backlight;
 	}
 
-	intel_connector_debugfs_add(connector);
+	intel_connector_debugfs_add(intel_connector);
 
 	return 0;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 845e2dc76f87..82043a71e91f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -2444,8 +2444,9 @@ static const struct file_operations i915_dsc_bpp_fops = {
  * Cleanup will be done by drm_connector_unregister() through a call to
  * drm_debugfs_connector_remove().
  */
-void intel_connector_debugfs_add(struct drm_connector *connector)
+void intel_connector_debugfs_add(struct intel_connector *intel_connector)
 {
+	struct drm_connector *connector = &intel_connector->base;
 	struct dentry *root = connector->debugfs_entry;
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.h b/drivers/gpu/drm/i915/display/intel_display_debugfs.h
index c72e35ecba1f..d3a79c07c384 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.h
@@ -6,17 +6,17 @@
 #ifndef __INTEL_DISPLAY_DEBUGFS_H__
 #define __INTEL_DISPLAY_DEBUGFS_H__
 
-struct drm_connector;
 struct drm_crtc;
 struct drm_i915_private;
+struct intel_connector;
 
 #ifdef CONFIG_DEBUG_FS
 void intel_display_debugfs_register(struct drm_i915_private *i915);
-void intel_connector_debugfs_add(struct drm_connector *connector);
+void intel_connector_debugfs_add(struct intel_connector *connector);
 void intel_crtc_debugfs_add(struct drm_crtc *crtc);
 #else
 static inline void intel_display_debugfs_register(struct drm_i915_private *i915) {}
-static inline void intel_connector_debugfs_add(struct drm_connector *connector) {}
+static inline void intel_connector_debugfs_add(struct intel_connector *connector) {}
 static inline void intel_crtc_debugfs_add(struct drm_crtc *crtc) {}
 #endif
 
-- 
2.20.1

