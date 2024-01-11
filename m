Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CDF082B3EB
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jan 2024 18:21:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FDF610E0B8;
	Thu, 11 Jan 2024 17:21:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0602910E0B8
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jan 2024 17:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704993698; x=1736529698;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vjfrqmr5/yxuMp81uffINF+9mjbvic8AjBaNKOVYe78=;
 b=RFAWbP8lgILLeyaaS5SLzuBaErcNMIwwc3VefBhBCLOnSX1EaicZfIxU
 lZ24HFuFnLI3yVCmvw/Xo86rePrHkIHHnOltXO97rH67N0NWVw1sXO8aW
 s1bt9iDRVhAdfkBgYHP5lDNNIhmLa//+f+BNKe5hFAtkruI3GdYcF0oZ0
 MwjEN363OSLVMdqowrJIyvQON5WJ/V0Y6fpom6+J7PNc7KAvjATqEI+9N
 Kt3A9c1acnpdRFpP2cO03yhbsKgIBgBm5XT+SJkVXpN7OZ4Korqwvyn8S
 +W4PZ1NlIJtdBrpn2pvGLJA58AvBHSlO13CGTcmp1YiJYhpb4z1cLbGzN g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="5657756"
X-IronPort-AV: E=Sophos;i="6.04,186,1695711600"; 
   d="scan'208";a="5657756"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 09:21:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="853030741"
X-IronPort-AV: E=Sophos;i="6.04,186,1695711600"; d="scan'208";a="853030741"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 09:21:36 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/6] drm/i915/opregion: move i915_opregion debugfs to
 intel_opregion.c
Date: Thu, 11 Jan 2024 19:21:15 +0200
Message-Id: <c10103d2dd775edc1e9f93f09d0834480f880596.1704992868.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1704992868.git.jani.nikula@intel.com>
References: <cover.1704992868.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

All things about opregion should be placed in intel_opregion.c.

Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 13 +-----------
 drivers/gpu/drm/i915/display/intel_opregion.c | 21 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_opregion.h |  6 ++++++
 3 files changed, 28 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 9ee7e0738059..6f2d13c8ccf7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -86,17 +86,6 @@ static int i915_sr_status(struct seq_file *m, void *unused)
 	return 0;
 }
 
-static int i915_opregion(struct seq_file *m, void *unused)
-{
-	struct drm_i915_private *i915 = node_to_i915(m->private);
-	struct intel_opregion *opregion = &i915->display.opregion;
-
-	if (opregion->header)
-		seq_write(m, opregion->header, OPREGION_SIZE);
-
-	return 0;
-}
-
 static int i915_gem_framebuffer_info(struct seq_file *m, void *data)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
@@ -1055,7 +1044,6 @@ static const struct file_operations i915_fifo_underrun_reset_ops = {
 static const struct drm_info_list intel_display_debugfs_list[] = {
 	{"i915_frontbuffer_tracking", i915_frontbuffer_tracking, 0},
 	{"i915_sr_status", i915_sr_status, 0},
-	{"i915_opregion", i915_opregion, 0},
 	{"i915_gem_framebuffer", i915_gem_framebuffer_info, 0},
 	{"i915_power_domain_info", i915_power_domain_info, 0},
 	{"i915_display_info", i915_display_info, 0},
@@ -1098,6 +1086,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
 	intel_dmc_debugfs_register(i915);
 	intel_fbc_debugfs_register(i915);
 	intel_hpd_debugfs_register(i915);
+	intel_opregion_debugfs_register(i915);
 	intel_psr_debugfs_register(i915);
 	intel_wm_debugfs_register(i915);
 	intel_display_debugfs_params(i915);
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 1ce785db6a5e..26c92ab4ee8a 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -1265,3 +1265,24 @@ void intel_opregion_cleanup(struct drm_i915_private *i915)
 	opregion->vbt = NULL;
 	opregion->lid_state = NULL;
 }
+
+static int intel_opregion_show(struct seq_file *m, void *unused)
+{
+	struct drm_i915_private *i915 = m->private;
+	struct intel_opregion *opregion = &i915->display.opregion;
+
+	if (opregion->header)
+		seq_write(m, opregion->header, OPREGION_SIZE);
+
+	return 0;
+}
+
+DEFINE_SHOW_ATTRIBUTE(intel_opregion);
+
+void intel_opregion_debugfs_register(struct drm_i915_private *i915)
+{
+	struct drm_minor *minor = i915->drm.primary;
+
+	debugfs_create_file("i915_opregion", 0444, minor->debugfs_root,
+			    i915, &intel_opregion_fops);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
index fd2ea8ef0fa2..7177f50ab0d3 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.h
+++ b/drivers/gpu/drm/i915/display/intel_opregion.h
@@ -79,6 +79,8 @@ const struct drm_edid *intel_opregion_get_edid(struct intel_connector *connector
 
 bool intel_opregion_headless_sku(struct drm_i915_private *i915);
 
+void intel_opregion_debugfs_register(struct drm_i915_private *i915);
+
 #else /* CONFIG_ACPI*/
 
 static inline int intel_opregion_setup(struct drm_i915_private *dev_priv)
@@ -139,6 +141,10 @@ static inline bool intel_opregion_headless_sku(struct drm_i915_private *i915)
 	return false;
 }
 
+static inline void intel_opregion_debugfs_register(struct drm_i915_private *i915)
+{
+}
+
 #endif /* CONFIG_ACPI */
 
 #endif
-- 
2.39.2

