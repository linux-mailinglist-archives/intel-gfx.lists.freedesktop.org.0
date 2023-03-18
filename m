Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 895B46BF7B6
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Mar 2023 05:20:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BFE68908B;
	Sat, 18 Mar 2023 04:20:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C21310E036
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Mar 2023 04:20:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679113251; x=1710649251;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pQl79i+LtVzERhRdVFbkIf3XgkT00SC/43Uo4dQ35vY=;
 b=j6AwB5QtXkwPvOPb10QdAkQI6Cg4E3teK1Ufu1DANKCQr1oDsKhE/Zbe
 +JiiFIdSon75SS6Dt0WDzapst5J5YhOLijUr9Xv3EshikXMU9H5Cq82RO
 GO215npBCzFF2vdu+1lsx1KSQCwguAXm+a/4yBHJS0rhNO3381JX/cflT
 hOz/cgSx/6Uu7B5zNfHMnOvLvkczpeCEdGNi1a33PAaWF6cCrv0P0ui4d
 M6UJ4/Cj67YEfTQK4tyFiNMc89vUJKgiQ6IH6Iu/OkNqCt4eG54075P3c
 6YbzSuc89bBfy9yYL2odFtaT8PR725fityKNwT6zkk+AO0hIWAOmM/LbD w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="424681851"
X-IronPort-AV: E=Sophos;i="5.98,270,1673942400"; d="scan'208";a="424681851"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 21:20:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="680511420"
X-IronPort-AV: E=Sophos;i="5.98,270,1673942400"; d="scan'208";a="680511420"
Received: from bhanu-nuclab.iind.intel.com ([10.145.169.172])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 21:20:49 -0700
From: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Mar 2023 09:47:03 +0530
Message-Id: <20230318041704.2714520-2-bhanuprakash.modem@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230318041704.2714520-1-bhanuprakash.modem@intel.com>
References: <20230318041704.2714520-1-bhanuprakash.modem@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [V2 1/2] drm/i915/debugfs: switch crtc debugfs to
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Jani Nikula <jani.nikula@intel.com>

Convert the crtc debugfs code to use struct intel_crtc instead of struct
drm_crtc.

V2: - Fix build failures in CI

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c     |  2 +-
 .../drm/i915/display/intel_display_debugfs.c  | 22 ++++++++++---------
 .../drm/i915/display/intel_display_debugfs.h  |  6 ++---
 3 files changed, 16 insertions(+), 14 deletions(-)

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
index 65585f19c6c8..29c049aac252 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -805,10 +805,10 @@ static const struct file_operations crtc_updates_fops = {
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
2.40.0

