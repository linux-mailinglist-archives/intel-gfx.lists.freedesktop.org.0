Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FEF26C1225
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 13:44:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7EA810E386;
	Mon, 20 Mar 2023 12:44:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7409210E386
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 12:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679316279; x=1710852279;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6/TgsTuAlijHnrRK7pY8AqdsFs1Q9uaPIvg2v7+zzYY=;
 b=MYbVcBdgUdPnO4MJT8xLbrmJwZxUohKJ8+x0eUTbnV4JaTANTwOzSc/G
 X2D71AhSSIm5KLp+QOOuEKj4DBWrnBb98gpNQrNtxtvkFS1pzMq4V9ELU
 55Ou8B6dQSBp6eXGlm8qEBNwvwRX46aAkm13lr8OgBIJZiGt9fdjgjTZG
 AYIvPRUyBYq6CSgT6V2tj68eI8wjwqdE7KdryEj/RXXNmHCBMAfpoGpgd
 KK2wnBAq2+ag0NdfFHkG+sa37nsKXnLSeMkRxw8NI73uxPyvm4pSYpTFa
 iexC433GCiTip7/rzdR310KL0AzEoM/CH+7Md0CaInHdU2uZgef0Piq0s w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="336154694"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="336154694"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 05:44:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="824463746"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="824463746"
Received: from mseifert-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.61.180])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 05:44:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Mar 2023 14:44:28 +0200
Message-Id: <20230320124429.786985-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/debugfs: switch crtc debugfs to
 struct intel_crtc
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Convert the crtc debugfs code to use struct intel_crtc instead of struct
drm_crtc.

v2: Fix build for CONFIG_DRM_I915_DEBUG_VBLANK_EVADE=y (kernel test robot)

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c     |  2 +-
 .../drm/i915/display/intel_display_debugfs.c  | 22 ++++++++++---------
 .../drm/i915/display/intel_display_debugfs.h  |  6 ++---
 3 files changed, 16 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 41d381bbb57a..ed45a6934854 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -212,7 +212,7 @@ static void intel_crtc_destroy(struct drm_crtc *_crtc)
 
 static int intel_crtc_late_register(struct drm_crtc *crtc)
 {
-	intel_crtc_debugfs_add(crtc);
+	intel_crtc_debugfs_add(to_intel_crtc(crtc));
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 4d8ebf3fed11..3c76e718b951 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -542,10 +542,10 @@ static const struct file_operations crtc_updates_fops = {
 	.write = crtc_updates_write
 };
 
-static void crtc_updates_add(struct drm_crtc *crtc)
+static void crtc_updates_add(struct intel_crtc *crtc)
 {
-	debugfs_create_file("i915_update_info", 0644, crtc->debugfs_entry,
-			    to_intel_crtc(crtc), &crtc_updates_fops);
+	debugfs_create_file("i915_update_info", 0644, crtc->base.debugfs_entry,
+			    crtc, &crtc_updates_fops);
 }
 
 #else
@@ -555,7 +555,7 @@ static void crtc_updates_info(struct seq_file *m,
 {
 }
 
-static void crtc_updates_add(struct drm_crtc *crtc)
+static void crtc_updates_add(struct intel_crtc *crtc)
 {
 }
 #endif
@@ -1366,7 +1366,7 @@ static const struct file_operations i915_dsc_bpc_fops = {
  */
 static int i915_current_bpc_show(struct seq_file *m, void *data)
 {
-	struct intel_crtc *crtc = to_intel_crtc(m->private);
+	struct intel_crtc *crtc = m->private;
 	struct intel_crtc_state *crtc_state;
 	int ret;
 
@@ -1440,15 +1440,17 @@ void intel_connector_debugfs_add(struct intel_connector *intel_connector)
  *
  * Failure to add debugfs entries should generally be ignored.
  */
-void intel_crtc_debugfs_add(struct drm_crtc *crtc)
+void intel_crtc_debugfs_add(struct intel_crtc *crtc)
 {
-	if (!crtc->debugfs_entry)
+	struct dentry *root = crtc->base.debugfs_entry;
+
+	if (!root)
 		return;
 
 	crtc_updates_add(crtc);
-	intel_drrs_crtc_debugfs_add(to_intel_crtc(crtc));
-	intel_fbc_crtc_debugfs_add(to_intel_crtc(crtc));
+	intel_drrs_crtc_debugfs_add(crtc);
+	intel_fbc_crtc_debugfs_add(crtc);
 
-	debugfs_create_file("i915_current_bpc", 0444, crtc->debugfs_entry, crtc,
+	debugfs_create_file("i915_current_bpc", 0444, root, crtc,
 			    &i915_current_bpc_fops);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.h b/drivers/gpu/drm/i915/display/intel_display_debugfs.h
index d3a79c07c384..e1f479b7acd1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.h
@@ -6,18 +6,18 @@
 #ifndef __INTEL_DISPLAY_DEBUGFS_H__
 #define __INTEL_DISPLAY_DEBUGFS_H__
 
-struct drm_crtc;
 struct drm_i915_private;
 struct intel_connector;
+struct intel_crtc;
 
 #ifdef CONFIG_DEBUG_FS
 void intel_display_debugfs_register(struct drm_i915_private *i915);
 void intel_connector_debugfs_add(struct intel_connector *connector);
-void intel_crtc_debugfs_add(struct drm_crtc *crtc);
+void intel_crtc_debugfs_add(struct intel_crtc *crtc);
 #else
 static inline void intel_display_debugfs_register(struct drm_i915_private *i915) {}
 static inline void intel_connector_debugfs_add(struct intel_connector *connector) {}
-static inline void intel_crtc_debugfs_add(struct drm_crtc *crtc) {}
+static inline void intel_crtc_debugfs_add(struct intel_crtc *crtc) {}
 #endif
 
 #endif /* __INTEL_DISPLAY_DEBUGFS_H__ */
-- 
2.39.2

