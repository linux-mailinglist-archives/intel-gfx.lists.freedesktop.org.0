Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5DC989BC29
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 11:44:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE98611238B;
	Mon,  8 Apr 2024 09:44:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i2xi4COe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A12C11238B
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Apr 2024 09:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712569444; x=1744105444;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VaG5FKHEhL2b9xKaXGAugWPHzGoEKNW2ToGb11L7scM=;
 b=i2xi4COeqzV0+SKWaNCuLfHsU3EOG7w+6fPXnmZdVbj9vfF0Mq6S19n7
 8y1HcombY5b3eYyZKCYqgfHRHm5hNSMbnmcLH/CpfVmnf+7cvrQjlXHc1
 I/jLYq1nhIYzfSzutaU440V4O5MxTvDHUqvMbrciYnswXPojTa3FUEPIQ
 47+0b3fwp/dXapjjD/eoQM+2QbT2iGsArUqFt1PtGNxRGdJpqTlLjgRoO
 PlkL3X7aEoudlS43fs4bz0ZI9M+GjAB6UhE5TSsHK4DWonozRnjzkpH+6
 tZE4NQGS4zmQpMjVxqU75uftodpFDSqk8+HzSN4DsAMgeb/Pkw6DEMaVW w==;
X-CSE-ConnectionGUID: kxDSCKnnQ7K5ua5tJnCn0w==
X-CSE-MsgGUID: krv+trNwTieXoIhN0DtBNA==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="18980379"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="18980379"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 02:44:03 -0700
X-CSE-ConnectionGUID: 7nJe2DtmS6eXeY5TyokmNg==
X-CSE-MsgGUID: UalTgGD4RU6qD8LQDSFluA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="19864817"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.42.71])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 02:44:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/pps: move pps debugfs file to intel_pps.c
Date: Mon,  8 Apr 2024 12:43:57 +0300
Message-Id: <20240408094357.3085319-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Continue with placing debugfs next to the implementation.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 27 ++--------------
 drivers/gpu/drm/i915/display/intel_pps.c      | 32 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_pps.h      |  2 ++
 3 files changed, 36 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 5235f8758ef1..0feffe8d4e45 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -31,6 +31,7 @@
 #include "intel_hdmi.h"
 #include "intel_hotplug.h"
 #include "intel_panel.h"
+#include "intel_pps.h"
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
 #include "intel_wm.h"
@@ -1095,27 +1096,6 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
 	intel_display_debugfs_params(i915);
 }
 
-static int i915_panel_show(struct seq_file *m, void *data)
-{
-	struct intel_connector *connector = m->private;
-	struct intel_dp *intel_dp = intel_attached_dp(connector);
-
-	if (connector->base.status != connector_status_connected)
-		return -ENODEV;
-
-	seq_printf(m, "Panel power up delay: %d\n",
-		   intel_dp->pps.panel_power_up_delay);
-	seq_printf(m, "Panel power down delay: %d\n",
-		   intel_dp->pps.panel_power_down_delay);
-	seq_printf(m, "Backlight on delay: %d\n",
-		   intel_dp->pps.backlight_on_delay);
-	seq_printf(m, "Backlight off delay: %d\n",
-		   intel_dp->pps.backlight_off_delay);
-
-	return 0;
-}
-DEFINE_SHOW_ATTRIBUTE(i915_panel);
-
 static int i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
 {
 	struct intel_connector *connector = m->private;
@@ -1560,12 +1540,9 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 		return;
 
 	intel_drrs_connector_debugfs_add(connector);
+	intel_pps_connector_debugfs_add(connector);
 	intel_psr_connector_debugfs_add(connector);
 
-	if (connector_type == DRM_MODE_CONNECTOR_eDP)
-		debugfs_create_file("i915_panel_timings", 0444, root,
-				    connector, &i915_panel_fops);
-
 	if (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
 	    connector_type == DRM_MODE_CONNECTOR_HDMIA ||
 	    connector_type == DRM_MODE_CONNECTOR_HDMIB) {
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index b5d9920f8341..88a44d93f82b 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1670,6 +1670,38 @@ void intel_pps_setup(struct drm_i915_private *i915)
 		i915->display.pps.mmio_base = PPS_BASE;
 }
 
+static int intel_pps_show(struct seq_file *m, void *data)
+{
+	struct intel_connector *connector = m->private;
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+
+	if (connector->base.status != connector_status_connected)
+		return -ENODEV;
+
+	seq_printf(m, "Panel power up delay: %d\n",
+		   intel_dp->pps.panel_power_up_delay);
+	seq_printf(m, "Panel power down delay: %d\n",
+		   intel_dp->pps.panel_power_down_delay);
+	seq_printf(m, "Backlight on delay: %d\n",
+		   intel_dp->pps.backlight_on_delay);
+	seq_printf(m, "Backlight off delay: %d\n",
+		   intel_dp->pps.backlight_off_delay);
+
+	return 0;
+}
+DEFINE_SHOW_ATTRIBUTE(intel_pps);
+
+void intel_pps_connector_debugfs_add(struct intel_connector *connector)
+{
+	struct dentry *root = connector->base.debugfs_entry;
+	int connector_type = connector->base.connector_type;
+
+	if (connector_type == DRM_MODE_CONNECTOR_eDP)
+		debugfs_create_file("i915_panel_timings", 0444, root,
+				    connector, &intel_pps_fops);
+
+}
+
 void assert_pps_unlocked(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
 	i915_reg_t pp_reg;
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index a2c2467e3c22..07ef96ca8da2 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -51,6 +51,8 @@ void vlv_pps_init(struct intel_encoder *encoder,
 void intel_pps_unlock_regs_wa(struct drm_i915_private *i915);
 void intel_pps_setup(struct drm_i915_private *i915);
 
+void intel_pps_connector_debugfs_add(struct intel_connector *connector);
+
 void assert_pps_unlocked(struct drm_i915_private *i915, enum pipe pipe);
 
 #endif /* __INTEL_PPS_H__ */
-- 
2.39.2

