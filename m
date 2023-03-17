Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0440D6BE9AE
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 13:54:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9CDA10E3AC;
	Fri, 17 Mar 2023 12:54:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 548BA10E37A
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 12:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679057640; x=1710593640;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=G26T21HDHDSVPxZTvOe10J5MsLTcSQ7Q3umAy3elaUs=;
 b=SDJ96W+pNX+uq7aFXsL/1UC8QJFoXiCNDntjGOVfL3ZFRVtb/XKID7F2
 td4c+fjrOA6bKQyyhaJsMI+qF95BzaxSW7UVvm+Vfkz3kGFbUaZ/sCWSr
 lNxrDZSJdmV7DhutZSFe045xXf6xUMLl0kD1QKkM9pTFcKqjSVZi90f5h
 a85o7FDEBJtkH9GCgaZfTmzIAqkVc6ma1xa2sIOV8/N4aMmPGyVPnNCCb
 5Tw8l6tfzZCRLbaTCPGqmLi4Fwq2qrTwyQAwLISdEKIKXesRLWeMEuZKO
 UjmwhAaD9R28+BtgrmrzDS/EYpg9is6ssWCbnFKwaKZxZc34gzZyWHBuN w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="317907067"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="317907067"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 05:53:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="790701610"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="790701610"
Received: from shuchen-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.60.191])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 05:53:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Mar 2023 14:53:51 +0200
Message-Id: <20230317125352.198042-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/debugfs: switch crtc debugfs to
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

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c     |  2 +-
 .../drm/i915/display/intel_display_debugfs.c  | 20 ++++++++++---------
 .../drm/i915/display/intel_display_debugfs.h  |  6 +++---
 3 files changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index b79a8834559f..60e52c5abd82 100644
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
index 65585f19c6c8..faa44fb80aac 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -805,10 +805,10 @@ static const struct file_operations crtc_updates_fops = {
 	.write = crtc_updates_write
 };
 
-static void crtc_updates_add(struct drm_crtc *crtc)
+static void crtc_updates_add(struct intel_crtc *crtc)
 {
 	debugfs_create_file("i915_update_info", 0644, crtc->debugfs_entry,
-			    to_intel_crtc(crtc), &crtc_updates_fops);
+			    crtc, &crtc_updates_fops);
 }
 
 #else
@@ -818,7 +818,7 @@ static void crtc_updates_info(struct seq_file *m,
 {
 }
 
-static void crtc_updates_add(struct drm_crtc *crtc)
+static void crtc_updates_add(struct intel_crtc *crtc)
 {
 }
 #endif
@@ -1640,7 +1640,7 @@ static const struct file_operations i915_dsc_bpc_fops = {
  */
 static int i915_current_bpc_show(struct seq_file *m, void *data)
 {
-	struct intel_crtc *crtc = to_intel_crtc(m->private);
+	struct intel_crtc *crtc = m->private;
 	struct intel_crtc_state *crtc_state;
 	int ret;
 
@@ -1722,15 +1722,17 @@ void intel_connector_debugfs_add(struct intel_connector *intel_connector)
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

