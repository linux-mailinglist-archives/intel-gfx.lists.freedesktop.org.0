Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF15B4198A
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 11:04:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FCAB10E5A4;
	Wed,  3 Sep 2025 09:04:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IVHdXqfI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4117710E126;
 Wed,  3 Sep 2025 09:04:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756890256; x=1788426256;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LK8Wt/isYEaxAyP3A0RAtyggcZs8LRL/NgBXCe6lEAw=;
 b=IVHdXqfIoIcZ4zst3bHlPWL8iz5xPMmPzs/FxphLa3eoEMnIpT9dX0l/
 KuDKdLRPb56B4yMvyIjga8jFuro8oeO1hc+O4nEE5baYJ8C/c4Bf/VQ4W
 avoQnLBZZzTZoKbSk515WWBxUH6f+xjOM6rhB9N1FtoBIjJk3272RQSjz
 +YddqSpimisz03GVB6+pQCFXQCXphn4C2O8XIE1lLl2P+/u6BR0gJB8HF
 fsZgbJpK8RxKL6QTb9r+yooQZFFW4FOZF3bsrJ0BKVh0neHZHdqkqo8RR
 MZ2hxb/vj5n1vZv3u69L/uy6+1pMJx7ci+MgKUKBhr5xXGw7YB94a7udl Q==;
X-CSE-ConnectionGUID: OR8ArhFSSnKcR2EVq0aXQQ==
X-CSE-MsgGUID: F5k0KZEGQQGvYFGmqlaZZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="84620465"
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="84620465"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 02:04:16 -0700
X-CSE-ConnectionGUID: uzsIkUaiSxKsjJJBW31Nsw==
X-CSE-MsgGUID: qctcWXK5RWqntpRDuv5gfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="172351077"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.246])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 02:04:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/display: add intel_display_device_present()
Date: Wed,  3 Sep 2025 12:04:08 +0300
Message-ID: <20250903090408.3492875-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
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

Add a proper function for display && HAS_DISPLAY(display) to hide
indirect struct intel_display access via the macro from a number of
places outside of display. This makes struct intel_display * an opaque
pointer in these places. All HAS_DISPLAY() usage is now constrained
within display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.c   |  5 +++
 .../drm/i915/display/intel_display_device.h   |  1 +
 .../i915/gem/selftests/i915_gem_client_blt.c  |  4 +--
 drivers/gpu/drm/i915/i915_driver.c            | 18 +++++-----
 drivers/gpu/drm/i915/i915_switcheroo.c        |  7 ++--
 drivers/gpu/drm/i915/soc/intel_dram.c         |  2 +-
 drivers/gpu/drm/xe/display/xe_display.c       | 33 ++++++++-----------
 7 files changed, 36 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 65f0efc35bb7..a002bc6ce7b0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1944,6 +1944,11 @@ void intel_display_device_info_print(const struct intel_display_device_info *inf
 	drm_printf(p, "rawclk rate: %u kHz\n", runtime->rawclk_freq);
 }
 
+bool intel_display_device_present(struct intel_display *display)
+{
+	return display && HAS_DISPLAY(display);
+}
+
 /*
  * Assuming the device has display hardware, should it be enabled?
  *
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 6e87b763fe7c..f329f1beafef 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -306,6 +306,7 @@ struct intel_display_device_info {
 	} color;
 };
 
+bool intel_display_device_present(struct intel_display *display);
 bool intel_display_device_enabled(struct intel_display *display);
 struct intel_display *intel_display_device_probe(struct pci_dev *pdev);
 void intel_display_device_remove(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
index e747f5ed195e..539c620364e3 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
@@ -5,7 +5,7 @@
 
 #include "i915_selftest.h"
 
-#include "display/intel_display_core.h"
+#include "display/intel_display_device.h"
 #include "gt/intel_context.h"
 #include "gt/intel_engine_regs.h"
 #include "gt/intel_engine_user.h"
@@ -122,7 +122,7 @@ static bool fastblit_supports_x_tiling(const struct drm_i915_private *i915)
 	if (GRAPHICS_VER_FULL(i915) < IP_VER(12, 55))
 		return false;
 
-	return HAS_DISPLAY(display);
+	return intel_display_device_present(display);
 }
 
 static bool fast_blit_ok(const struct blit_buffer *buf)
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 70f042ce8705..a28c3710c4d5 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -51,13 +51,15 @@
 #include "display/intel_bw.h"
 #include "display/intel_cdclk.h"
 #include "display/intel_crtc.h"
-#include "display/intel_display_core.h"
+#include "display/intel_display_device.h"
 #include "display/intel_display_driver.h"
+#include "display/intel_display_power.h"
 #include "display/intel_dmc.h"
 #include "display/intel_dp.h"
 #include "display/intel_dpt.h"
 #include "display/intel_encoder.h"
 #include "display/intel_fbdev.h"
+#include "display/intel_gmbus.h"
 #include "display/intel_hotplug.h"
 #include "display/intel_opregion.h"
 #include "display/intel_overlay.h"
@@ -977,7 +979,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
 	intel_power_domains_disable(display);
 
 	drm_client_dev_suspend(&i915->drm, false);
-	if (HAS_DISPLAY(display)) {
+	if (intel_display_device_present(display)) {
 		drm_kms_helper_poll_disable(&i915->drm);
 		intel_display_driver_disable_user_access(display);
 
@@ -989,7 +991,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
 	intel_irq_suspend(i915);
 	intel_hpd_cancel_work(display);
 
-	if (HAS_DISPLAY(display))
+	if (intel_display_device_present(display))
 		intel_display_driver_suspend_access(display);
 
 	intel_encoder_suspend_all(display);
@@ -1060,7 +1062,7 @@ static int i915_drm_suspend(struct drm_device *dev)
 	 * properly. */
 	intel_power_domains_disable(display);
 	drm_client_dev_suspend(dev, false);
-	if (HAS_DISPLAY(display)) {
+	if (intel_display_device_present(display)) {
 		drm_kms_helper_poll_disable(dev);
 		intel_display_driver_disable_user_access(display);
 	}
@@ -1072,7 +1074,7 @@ static int i915_drm_suspend(struct drm_device *dev)
 	intel_irq_suspend(dev_priv);
 	intel_hpd_cancel_work(display);
 
-	if (HAS_DISPLAY(display))
+	if (intel_display_device_present(display))
 		intel_display_driver_suspend_access(display);
 
 	intel_encoder_suspend_all(display);
@@ -1219,7 +1221,7 @@ static int i915_drm_resume(struct drm_device *dev)
 	 */
 	intel_irq_resume(dev_priv);
 
-	if (HAS_DISPLAY(display))
+	if (intel_display_device_present(display))
 		drm_mode_config_reset(dev);
 
 	i915_gem_resume(dev_priv);
@@ -1228,14 +1230,14 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	intel_clock_gating_init(dev_priv);
 
-	if (HAS_DISPLAY(display))
+	if (intel_display_device_present(display))
 		intel_display_driver_resume_access(display);
 
 	intel_hpd_init(display);
 
 	intel_display_driver_resume(display);
 
-	if (HAS_DISPLAY(display)) {
+	if (intel_display_device_present(display)) {
 		intel_display_driver_enable_user_access(display);
 		drm_kms_helper_poll_enable(dev);
 	}
diff --git a/drivers/gpu/drm/i915/i915_switcheroo.c b/drivers/gpu/drm/i915/i915_switcheroo.c
index 3a95a55b2e87..d5b6d8ab31a2 100644
--- a/drivers/gpu/drm/i915/i915_switcheroo.c
+++ b/drivers/gpu/drm/i915/i915_switcheroo.c
@@ -5,7 +5,7 @@
 
 #include <linux/vga_switcheroo.h>
 
-#include "display/intel_display_core.h"
+#include "display/intel_display_device.h"
 
 #include "i915_driver.h"
 #include "i915_drv.h"
@@ -22,7 +22,7 @@ static void i915_switcheroo_set_state(struct pci_dev *pdev,
 		dev_err(&pdev->dev, "DRM not initialized, aborting switch.\n");
 		return;
 	}
-	if (!HAS_DISPLAY(display)) {
+	if (!intel_display_device_present(display)) {
 		dev_err(&pdev->dev, "Device state not initialized, aborting switch.\n");
 		return;
 	}
@@ -52,7 +52,8 @@ static bool i915_switcheroo_can_switch(struct pci_dev *pdev)
 	 * locking inversion with the driver load path. And the access here is
 	 * completely racy anyway. So don't bother with locking for now.
 	 */
-	return i915 && HAS_DISPLAY(display) && atomic_read(&i915->drm.open_count) == 0;
+	return i915 && intel_display_device_present(display) &&
+		atomic_read(&i915->drm.open_count) == 0;
 }
 
 static const struct vga_switcheroo_client_ops i915_switcheroo_ops = {
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 3eb748ab44d9..00d3d834a83d 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -725,7 +725,7 @@ int intel_dram_detect(struct drm_i915_private *i915)
 	struct dram_info *dram_info;
 	int ret;
 
-	if (IS_DG2(i915) || !HAS_DISPLAY(display))
+	if (IS_DG2(i915) || !intel_display_device_present(display))
 		return 0;
 
 	dram_info = drmm_kzalloc(&i915->drm, sizeof(*dram_info), GFP_KERNEL);
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 8b68d70db6c8..19e691fccf8c 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -20,7 +20,7 @@
 #include "intel_audio.h"
 #include "intel_bw.h"
 #include "intel_display.h"
-#include "intel_display_core.h"
+#include "intel_display_device.h"
 #include "intel_display_driver.h"
 #include "intel_display_irq.h"
 #include "intel_display_types.h"
@@ -37,13 +37,6 @@
 
 /* Xe device functions */
 
-static bool has_display(struct xe_device *xe)
-{
-	struct intel_display *display = xe->display;
-
-	return HAS_DISPLAY(display);
-}
-
 /**
  * xe_display_driver_probe_defer - Detect if we need to wait for other drivers
  *				   early on
@@ -290,7 +283,7 @@ static void xe_display_enable_d3cold(struct xe_device *xe)
 
 	intel_dmc_suspend(display);
 
-	if (has_display(xe))
+	if (intel_display_device_present(display))
 		intel_hpd_poll_enable(display);
 }
 
@@ -303,14 +296,14 @@ static void xe_display_disable_d3cold(struct xe_device *xe)
 
 	intel_dmc_resume(display);
 
-	if (has_display(xe))
+	if (intel_display_device_present(display))
 		drm_mode_config_reset(&xe->drm);
 
 	intel_display_driver_init_hw(display);
 
 	intel_hpd_init(display);
 
-	if (has_display(xe))
+	if (intel_display_device_present(display))
 		intel_hpd_poll_disable(display);
 
 	intel_opregion_resume(display);
@@ -333,7 +326,7 @@ void xe_display_pm_suspend(struct xe_device *xe)
 	intel_power_domains_disable(display);
 	drm_client_dev_suspend(&xe->drm, false);
 
-	if (has_display(xe)) {
+	if (intel_display_device_present(display)) {
 		drm_kms_helper_poll_disable(&xe->drm);
 		intel_display_driver_disable_user_access(display);
 		intel_display_driver_suspend(display);
@@ -345,7 +338,7 @@ void xe_display_pm_suspend(struct xe_device *xe)
 
 	intel_hpd_cancel_work(display);
 
-	if (has_display(xe)) {
+	if (intel_display_device_present(display)) {
 		intel_display_driver_suspend_access(display);
 		intel_encoder_suspend_all(display);
 	}
@@ -365,7 +358,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
 	intel_power_domains_disable(display);
 	drm_client_dev_suspend(&xe->drm, false);
 
-	if (has_display(xe)) {
+	if (intel_display_device_present(display)) {
 		drm_kms_helper_poll_disable(&xe->drm);
 		intel_display_driver_disable_user_access(display);
 		intel_display_driver_suspend(display);
@@ -376,7 +369,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
 	intel_encoder_block_all_hpds(display);
 	intel_hpd_cancel_work(display);
 
-	if (has_display(xe))
+	if (intel_display_device_present(display))
 		intel_display_driver_suspend_access(display);
 
 	intel_encoder_suspend_all(display);
@@ -465,25 +458,25 @@ void xe_display_pm_resume(struct xe_device *xe)
 
 	intel_dmc_resume(display);
 
-	if (has_display(xe))
+	if (intel_display_device_present(display))
 		drm_mode_config_reset(&xe->drm);
 
 	intel_display_driver_init_hw(display);
 
-	if (has_display(xe))
+	if (intel_display_device_present(display))
 		intel_display_driver_resume_access(display);
 
 	intel_hpd_init(display);
 
 	intel_encoder_unblock_all_hpds(display);
 
-	if (has_display(xe)) {
+	if (intel_display_device_present(display)) {
 		intel_display_driver_resume(display);
 		drm_kms_helper_poll_enable(&xe->drm);
 		intel_display_driver_enable_user_access(display);
 	}
 
-	if (has_display(xe))
+	if (intel_display_device_present(display))
 		intel_hpd_poll_disable(display);
 
 	intel_opregion_resume(display);
@@ -548,7 +541,7 @@ int xe_display_probe(struct xe_device *xe)
 
 	xe->display = display;
 
-	if (has_display(xe))
+	if (intel_display_device_present(display))
 		return 0;
 
 no_display:
-- 
2.47.2

