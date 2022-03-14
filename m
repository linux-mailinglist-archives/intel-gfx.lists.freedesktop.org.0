Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACFD4D8FF3
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 23:59:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 603B410E1DD;
	Mon, 14 Mar 2022 22:59:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF5C410E1DD
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Mar 2022 22:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647298741; x=1678834741;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wagl1Yf6fwKSmfTz70SapuXUcgDyOm8pPua+hIzYlmQ=;
 b=KwaH0lecYPubnGfNSNOYXKAh0/MKwGAC7y6KPeHXnoXb2rDzt28VHH2C
 eoM5mImM3VITNoDte4dgELbiG290kX1oIylz0EEfyiP0NaIqGKejx/FjP
 057dHBEIGIBH57te3S0AxNhbix09f0w0ycXdzJiZu5PhhgYnoh+8U53++
 wdBBx4kN7Fffx5SDBtDaffRXZe1zWZx0Y0BRBPAIOOZ0NFk+T8MGXXIPa
 zYTLn/iVV0kcu1wDoGKXN7mRi/Dc0dSgOZg1dehFzBkG4xohRhogs3b+9
 S1DpguXfKb1L8b1pMF4SgxG265R2WIKlj/g++Z7ULURb67Bk8RYK0T9rH Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="243612153"
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="243612153"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 15:59:01 -0700
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="556653838"
Received: from mirceaau-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.33.88])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 15:58:59 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 00:58:36 +0200
Message-Id: <20220314225837.42816-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220314225837.42816-1-vinod.govindapillai@intel.com>
References: <20220314225837.42816-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 1/2] drm/i915/display: Add disable wait time
 for power state connector
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

From: Mohammed Khajapasha <mohammed.khajapasha@intel.com>

Add connector disable wait time for a power state connector
for monitor power sleep state.

Monitors like LG 27UL650-W, 27UK850 goes into power sleep state
and generates long duration hotplug events even the monitor
connected for display, create a debugfs entry to enable sleep
while monitor is in power sleep state with hotplug event.

Signed-off-by: Mohammed Khajapasha <mohammed.khajapasha@intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 .../gpu/drm/i915/display/intel_connector.c    |  3 +
 .../drm/i915/display/intel_display_debugfs.c  | 58 +++++++++++++++++++
 .../drm/i915/display/intel_display_debugfs.h  |  7 +++
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/i915_drv.h               |  2 +
 5 files changed, 72 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index c65f95a9a1ec..d7ad62df30e3 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -126,6 +126,9 @@ int intel_connector_register(struct drm_connector *connector)
 
 	intel_connector_debugfs_add(intel_connector);
 
+	intel_connector->disabled_time =
+		get_jiffies_64() - msecs_to_jiffies(MSEC_PER_SEC * 10);
+
 	return 0;
 
 err_backlight:
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 41b81d5dd5f4..e3fc42b53ea9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -26,6 +26,17 @@
 #include "intel_psr.h"
 #include "intel_sprite.h"
 
+struct {
+	/* manufacturer and product code of connector from edid data */
+	u8 edid_manuf_code[2];
+	u8 edid_prod_code[2];
+} wakeup_hpd_monitor_list[] = {
+	/* LG 27UL650-W, 27UK850 */
+	{{0x1e, 0x6d}, {0x06, 0x77}},
+	{{0x1e, 0x6d}, {0x07, 0x77}},
+	{{0x26, 0xcd}, {0x40, 0x66}},
+};
+
 static inline struct drm_i915_private *node_to_i915(struct drm_info_node *node)
 {
 	return to_i915(node->minor->dev);
@@ -2021,6 +2032,52 @@ static const struct file_operations i915_fifo_underrun_reset_ops = {
 	.llseek = default_llseek,
 };
 
+bool intel_connector_need_suppress_wakeup_hpd(struct intel_connector *connector)
+{
+	int i;
+	struct edid *edid = connector->detect_edid;
+
+	if (!edid)
+		return false;
+
+	for (i = 0; i < ARRAY_SIZE(wakeup_hpd_monitor_list); i++) {
+		if (*((u16 *)&wakeup_hpd_monitor_list[i].edid_manuf_code) !=
+		    *((u16 *)&edid->mfg_id))
+			continue;
+
+		if (*((u16 *)&wakeup_hpd_monitor_list[i].edid_prod_code) !=
+		    *((u16 *)&edid->prod_code))
+			continue;
+
+		return true;
+	}
+
+	return false;
+}
+
+static int i915_suppress_wakeup_hpd_set(void *data, u64 val)
+{
+	struct drm_i915_private *i915 = data;
+
+	drm_dbg(&i915->drm, "Suppress wakeup HPDs enabled: %s\n", yesno(val));
+
+	i915->hotplug.suppress_wakeup_hpd_enabled = val;
+
+	return 0;
+}
+
+static int i915_suppress_wakeup_hpd_get(void *data, u64 *val)
+{
+	struct drm_i915_private *i915 = data;
+
+	*val = i915->hotplug.suppress_wakeup_hpd_enabled;
+
+	return 0;
+}
+
+DEFINE_SIMPLE_ATTRIBUTE(i915_suppress_wakeup_hpd_fops, i915_suppress_wakeup_hpd_get,
+			i915_suppress_wakeup_hpd_set, "%llu\n");
+
 static const struct drm_info_list intel_display_debugfs_list[] = {
 	{"i915_frontbuffer_tracking", i915_frontbuffer_tracking, 0},
 	{"i915_ips_status", i915_ips_status, 0},
@@ -2055,6 +2112,7 @@ static const struct {
 	{"i915_ipc_status", &i915_ipc_status_fops},
 	{"i915_drrs_ctl", &i915_drrs_ctl_fops},
 	{"i915_edp_psr_debug", &i915_edp_psr_debug_fops},
+	{"i915_suppress_wakeup_hpd", &i915_suppress_wakeup_hpd_fops}
 };
 
 void intel_display_debugfs_register(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.h b/drivers/gpu/drm/i915/display/intel_display_debugfs.h
index d3a79c07c384..58be26fcdf46 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.h
@@ -6,6 +6,8 @@
 #ifndef __INTEL_DISPLAY_DEBUGFS_H__
 #define __INTEL_DISPLAY_DEBUGFS_H__
 
+#include <linux/types.h>
+
 struct drm_crtc;
 struct drm_i915_private;
 struct intel_connector;
@@ -14,10 +16,15 @@ struct intel_connector;
 void intel_display_debugfs_register(struct drm_i915_private *i915);
 void intel_connector_debugfs_add(struct intel_connector *connector);
 void intel_crtc_debugfs_add(struct drm_crtc *crtc);
+bool intel_connector_need_suppress_wakeup_hpd(struct intel_connector *connector);
 #else
 static inline void intel_display_debugfs_register(struct drm_i915_private *i915) {}
 static inline void intel_connector_debugfs_add(struct intel_connector *connector) {}
 static inline void intel_crtc_debugfs_add(struct drm_crtc *crtc) {}
+static inline bool intel_connector_need_suppress_wakeup_hpd(struct intel_connector *connector)
+{
+	return false;
+}
 #endif
 
 #endif /* __INTEL_DISPLAY_DEBUGFS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 5e8d7394a394..deac7cea82c7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -538,6 +538,8 @@ struct intel_connector {
 	struct work_struct modeset_retry_work;
 
 	struct intel_hdcp hdcp;
+	/* Timestamp when the connector got disabled */
+	u64 disabled_time;
 };
 
 struct intel_digital_connector_state {
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 943267393ecb..522c9a278172 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -145,6 +145,8 @@ struct i915_hotplug {
 	 * blocked behind the non-DP one.
 	 */
 	struct workqueue_struct *dp_wq;
+
+	bool suppress_wakeup_hpd_enabled;
 };
 
 #define I915_GEM_GPU_DOMAINS \
-- 
2.25.1

