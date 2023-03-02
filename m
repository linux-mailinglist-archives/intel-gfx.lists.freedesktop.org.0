Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D826A85F8
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 17:16:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E21010E120;
	Thu,  2 Mar 2023 16:16:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 172BE10E108
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Mar 2023 16:16:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677773784; x=1709309784;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rZk+xqLOBXXypaN4v8vPDuoyxHGN3+ipSXHT7UUldxg=;
 b=GaXfcEzLIBp08MVxRet7jk6q2s70m78lYdoY97i3eayLHufc/nb1aZ7S
 WslW80bVr6gZ7u1G8OLrizVebtuJS/d1L/OScKz9HxjeIbub2QHEemTDx
 yHvilDTgwqaCZo/VV6SpM2l4cuxDpF2x4iTvhpcEH1NfiiLURoTQxMi+n
 KvQoOQ9C15W1UI4lObDCPiVbWTou9cU/gl2IBhODjJ/e3hShGFjLcdcSG
 rQDX3f8mflRfIHIkOCqY1lQRjywBu0Vo4zhGatSuPbUoeMMKfez4xnhbd
 OWSdQ25PDbNDPkc2BwaY5oxiwsaOTbuyxY66ylKXm9X6bseiJbsBYjTx0 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="337079511"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="337079511"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 08:16:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="675009379"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="675009379"
Received: from martamon-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.57.129])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 08:16:20 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Mar 2023 18:16:17 +0200
Message-Id: <20230302161617.2978821-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/debugfs: move IPS debugfs to hsw_ips.c
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

Follow the style of placing debugfs next to the implementation.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/hsw_ips.c        | 37 +++++++++++++++++++
 drivers/gpu/drm/i915/display/hsw_ips.h        |  2 +
 .../drm/i915/display/intel_display_debugfs.c  | 30 +--------------
 3 files changed, 41 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
index 83aa3800245f..2910f5d0f3e2 100644
--- a/drivers/gpu/drm/i915/display/hsw_ips.c
+++ b/drivers/gpu/drm/i915/display/hsw_ips.c
@@ -267,3 +267,40 @@ void hsw_ips_get_config(struct intel_crtc_state *crtc_state)
 		crtc_state->ips_enabled = true;
 	}
 }
+
+static int hsw_ips_debugfs_status_show(struct seq_file *m, void *unused)
+{
+	struct drm_i915_private *i915 = m->private;
+	intel_wakeref_t wakeref;
+
+	if (!HAS_IPS(i915))
+		return -ENODEV;
+
+	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
+
+	seq_printf(m, "Enabled by kernel parameter: %s\n",
+		   str_yes_no(i915->params.enable_ips));
+
+	if (DISPLAY_VER(i915) >= 8) {
+		seq_puts(m, "Currently: unknown\n");
+	} else {
+		if (intel_de_read(i915, IPS_CTL) & IPS_ENABLE)
+			seq_puts(m, "Currently: enabled\n");
+		else
+			seq_puts(m, "Currently: disabled\n");
+	}
+
+	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+
+	return 0;
+}
+
+DEFINE_SHOW_ATTRIBUTE(hsw_ips_debugfs_status);
+
+void hsw_ips_debugfs_register(struct drm_i915_private *i915)
+{
+	struct drm_minor *minor = i915->drm.primary;
+
+	debugfs_create_file("i915_ips_status", 0444, minor->debugfs_root,
+			    i915, &hsw_ips_debugfs_status_fops);
+}
diff --git a/drivers/gpu/drm/i915/display/hsw_ips.h b/drivers/gpu/drm/i915/display/hsw_ips.h
index 4564dee497d7..7ed6061874f7 100644
--- a/drivers/gpu/drm/i915/display/hsw_ips.h
+++ b/drivers/gpu/drm/i915/display/hsw_ips.h
@@ -8,6 +8,7 @@
 
 #include <linux/types.h>
 
+struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
@@ -22,5 +23,6 @@ bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state);
 int hsw_ips_compute_config(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc);
 void hsw_ips_get_config(struct intel_crtc_state *crtc_state);
+void hsw_ips_debugfs_register(struct drm_i915_private *i915);
 
 #endif /* __HSW_IPS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 25013f303c82..8be606bfd2b4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -8,6 +8,7 @@
 #include <drm/drm_debugfs.h>
 #include <drm/drm_fourcc.h>
 
+#include "hsw_ips.h"
 #include "i915_debugfs.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
@@ -49,33 +50,6 @@ static int i915_frontbuffer_tracking(struct seq_file *m, void *unused)
 	return 0;
 }
 
-static int i915_ips_status(struct seq_file *m, void *unused)
-{
-	struct drm_i915_private *dev_priv = node_to_i915(m->private);
-	intel_wakeref_t wakeref;
-
-	if (!HAS_IPS(dev_priv))
-		return -ENODEV;
-
-	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
-
-	seq_printf(m, "Enabled by kernel parameter: %s\n",
-		   str_yes_no(dev_priv->params.enable_ips));
-
-	if (DISPLAY_VER(dev_priv) >= 8) {
-		seq_puts(m, "Currently: unknown\n");
-	} else {
-		if (intel_de_read(dev_priv, IPS_CTL) & IPS_ENABLE)
-			seq_puts(m, "Currently: enabled\n");
-		else
-			seq_puts(m, "Currently: disabled\n");
-	}
-
-	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
-
-	return 0;
-}
-
 static int i915_sr_status(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
@@ -1343,7 +1317,6 @@ static const struct file_operations i915_fifo_underrun_reset_ops = {
 
 static const struct drm_info_list intel_display_debugfs_list[] = {
 	{"i915_frontbuffer_tracking", i915_frontbuffer_tracking, 0},
-	{"i915_ips_status", i915_ips_status, 0},
 	{"i915_sr_status", i915_sr_status, 0},
 	{"i915_opregion", i915_opregion, 0},
 	{"i915_vbt", i915_vbt, 0},
@@ -1385,6 +1358,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
 				 ARRAY_SIZE(intel_display_debugfs_list),
 				 minor->debugfs_root, minor);
 
+	hsw_ips_debugfs_register(i915);
 	intel_dmc_debugfs_register(i915);
 	intel_fbc_debugfs_register(i915);
 	intel_hpd_debugfs_register(i915);
-- 
2.39.1

