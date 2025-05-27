Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C233AC4DD7
	for <lists+intel-gfx@lfdr.de>; Tue, 27 May 2025 13:46:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F48D10E46D;
	Tue, 27 May 2025 11:46:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NhIR6n9A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED4C010E45D;
 Tue, 27 May 2025 11:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748346413; x=1779882413;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BeFtSUmRvGpu1K9Oe4gL0xRUu5ZXnZkCRTw4eGx6BLI=;
 b=NhIR6n9AxObFgoM5TVm4gkFTkwjemjRqpck4NvJzY8N7+OwcN3XMlWTc
 8eIWNxZMv8sCjNK0lzrFse8q5m6TgxMjQKL7tzH9JNxlmRB6sx5tbk8RA
 8WCib6Q26XZRykGB1kRs9eop70ow/IfizwFCUwaGKVuQ4TqFvoRLrt9dn
 ZJsdrKduEvJMZ2F92Gz09pYzxr9HtIGzAMeSHgLGVlshJYJ5MQJ4osINe
 P5Cwsl5FN0yTUJsvSd+U++ujdXLS1ifmh2tCzLFjB97s4P+wOrbIUCkFT
 OYThT3xXDizGQzh5QmvA0+3spN6JoOBT3/5/S0Y0rOSuts60kWjbQ9BGh w==;
X-CSE-ConnectionGUID: WLgGa7JKQt2fGImUvRWyRQ==
X-CSE-MsgGUID: V6h8vdfHRhuz1LOGo4YelQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11445"; a="37956973"
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="37956973"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 04:46:52 -0700
X-CSE-ConnectionGUID: /nDf9oYnQzStdg1khMLSRQ==
X-CSE-MsgGUID: zRvEIIhASFOt8mFBJijLnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="142784368"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.119])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 04:46:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/display: add intel_display_device_present()
Date: Tue, 27 May 2025 14:46:45 +0300
Message-Id: <20250527114645.3683025-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

Add a proper function for display && HAS_DISPLAY(display) to hide direct
struct intel_display access from a number of places outside of display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.c   |  5 +++
 .../drm/i915/display/intel_display_device.h   |  1 +
 .../i915/gem/selftests/i915_gem_client_blt.c  |  4 +--
 drivers/gpu/drm/i915/i915_driver.c            | 17 +++++-----
 drivers/gpu/drm/i915/i915_switcheroo.c        |  7 ++--
 drivers/gpu/drm/i915/soc/intel_dram.c         |  3 +-
 drivers/gpu/drm/xe/display/xe_display.c       | 33 ++++++++-----------
 7 files changed, 36 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 1d8c2036d967..765243e3e22d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1929,6 +1929,11 @@ void intel_display_device_info_print(const struct intel_display_device_info *inf
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
index 0ac5484c0043..f676aa9ecdf8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -308,6 +308,7 @@ struct intel_display_device_info {
 	} color;
 };
 
+bool intel_display_device_present(struct intel_display *display);
 bool intel_display_device_enabled(struct intel_display *display);
 struct intel_display *intel_display_device_probe(struct pci_dev *pdev);
 void intel_display_device_remove(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
index 86d9d2fcb6a6..4fa5caa1ec6d 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
@@ -5,7 +5,7 @@
 
 #include "i915_selftest.h"
 
-#include "display/intel_display_core.h"
+#include "display/intel_display_device.h"
 #include "gt/intel_context.h"
 #include "gt/intel_engine_regs.h"
 #include "gt/intel_engine_user.h"
@@ -121,7 +121,7 @@ static bool fastblit_supports_x_tiling(const struct drm_i915_private *i915)
 	if (GRAPHICS_VER_FULL(i915) < IP_VER(12, 55))
 		return false;
 
-	return HAS_DISPLAY(i915);
+	return intel_display_device_present(i915->display);
 }
 
 static bool fast_blit_ok(const struct blit_buffer *buf)
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 3b0bda74697d..937495eb5690 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -51,13 +51,14 @@
 #include "display/intel_bw.h"
 #include "display/intel_cdclk.h"
 #include "display/intel_crtc.h"
-#include "display/intel_display_core.h"
+#include "display/intel_display_device.h"
 #include "display/intel_display_driver.h"
 #include "display/intel_dmc.h"
 #include "display/intel_dp.h"
 #include "display/intel_dpt.h"
 #include "display/intel_encoder.h"
 #include "display/intel_fbdev.h"
+#include "display/intel_gmbus.h"
 #include "display/intel_hotplug.h"
 #include "display/intel_opregion.h"
 #include "display/intel_overlay.h"
@@ -975,7 +976,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
 	intel_power_domains_disable(display);
 
 	drm_client_dev_suspend(&i915->drm, false);
-	if (HAS_DISPLAY(i915)) {
+	if (intel_display_device_present(i915->display)) {
 		drm_kms_helper_poll_disable(&i915->drm);
 		intel_display_driver_disable_user_access(display);
 
@@ -987,7 +988,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
 	intel_irq_suspend(i915);
 	intel_hpd_cancel_work(display);
 
-	if (HAS_DISPLAY(i915))
+	if (intel_display_device_present(i915->display))
 		intel_display_driver_suspend_access(display);
 
 	intel_encoder_suspend_all(display);
@@ -1058,7 +1059,7 @@ static int i915_drm_suspend(struct drm_device *dev)
 	 * properly. */
 	intel_power_domains_disable(display);
 	drm_client_dev_suspend(dev, false);
-	if (HAS_DISPLAY(dev_priv)) {
+	if (intel_display_device_present(dev_priv->display)) {
 		drm_kms_helper_poll_disable(dev);
 		intel_display_driver_disable_user_access(display);
 	}
@@ -1070,7 +1071,7 @@ static int i915_drm_suspend(struct drm_device *dev)
 	intel_irq_suspend(dev_priv);
 	intel_hpd_cancel_work(display);
 
-	if (HAS_DISPLAY(dev_priv))
+	if (intel_display_device_present(dev_priv->display))
 		intel_display_driver_suspend_access(display);
 
 	intel_encoder_suspend_all(display);
@@ -1217,7 +1218,7 @@ static int i915_drm_resume(struct drm_device *dev)
 	 */
 	intel_irq_resume(dev_priv);
 
-	if (HAS_DISPLAY(dev_priv))
+	if (intel_display_device_present(dev_priv->display))
 		drm_mode_config_reset(dev);
 
 	i915_gem_resume(dev_priv);
@@ -1226,14 +1227,14 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	intel_clock_gating_init(dev_priv);
 
-	if (HAS_DISPLAY(dev_priv))
+	if (intel_display_device_present(dev_priv->display))
 		intel_display_driver_resume_access(display);
 
 	intel_hpd_init(display);
 
 	intel_display_driver_resume(display);
 
-	if (HAS_DISPLAY(dev_priv)) {
+	if (intel_display_device_present(dev_priv->display)) {
 		intel_display_driver_enable_user_access(display);
 		drm_kms_helper_poll_enable(dev);
 	}
diff --git a/drivers/gpu/drm/i915/i915_switcheroo.c b/drivers/gpu/drm/i915/i915_switcheroo.c
index 4c02a04be681..431a8559e489 100644
--- a/drivers/gpu/drm/i915/i915_switcheroo.c
+++ b/drivers/gpu/drm/i915/i915_switcheroo.c
@@ -5,7 +5,7 @@
 
 #include <linux/vga_switcheroo.h>
 
-#include "display/intel_display_core.h"
+#include "display/intel_display_device.h"
 
 #include "i915_driver.h"
 #include "i915_drv.h"
@@ -21,7 +21,7 @@ static void i915_switcheroo_set_state(struct pci_dev *pdev,
 		dev_err(&pdev->dev, "DRM not initialized, aborting switch.\n");
 		return;
 	}
-	if (!HAS_DISPLAY(i915)) {
+	if (!intel_display_device_present(i915->display)) {
 		dev_err(&pdev->dev, "Device state not initialized, aborting switch.\n");
 		return;
 	}
@@ -50,7 +50,8 @@ static bool i915_switcheroo_can_switch(struct pci_dev *pdev)
 	 * locking inversion with the driver load path. And the access here is
 	 * completely racy anyway. So don't bother with locking for now.
 	 */
-	return i915 && HAS_DISPLAY(i915) && atomic_read(&i915->drm.open_count) == 0;
+	return i915 && intel_display_device_present(i915->display) &&
+		atomic_read(&i915->drm.open_count) == 0;
 }
 
 static const struct vga_switcheroo_client_ops i915_switcheroo_ops = {
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 9f806ce0eb9e..ecfa5347ffd6 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -716,7 +716,8 @@ void intel_dram_detect(struct drm_i915_private *i915)
 	detect_fsb_freq(i915);
 	detect_mem_freq(i915);
 
-	if (GRAPHICS_VER(i915) < 9 || IS_DG2(i915) || !HAS_DISPLAY(i915))
+	if (GRAPHICS_VER(i915) < 9 || IS_DG2(i915) ||
+	    !intel_display_device_present(i915->display))
 		return;
 
 	/*
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 3f92bf51813e..142e2065fce8 100644
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
@@ -287,7 +280,7 @@ static void xe_display_enable_d3cold(struct xe_device *xe)
 
 	intel_dmc_suspend(display);
 
-	if (has_display(xe))
+	if (intel_display_device_present(display))
 		intel_hpd_poll_enable(display);
 }
 
@@ -300,14 +293,14 @@ static void xe_display_disable_d3cold(struct xe_device *xe)
 
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
@@ -330,7 +323,7 @@ void xe_display_pm_suspend(struct xe_device *xe)
 	intel_power_domains_disable(display);
 	drm_client_dev_suspend(&xe->drm, false);
 
-	if (has_display(xe)) {
+	if (intel_display_device_present(display)) {
 		drm_kms_helper_poll_disable(&xe->drm);
 		intel_display_driver_disable_user_access(display);
 		intel_display_driver_suspend(display);
@@ -340,7 +333,7 @@ void xe_display_pm_suspend(struct xe_device *xe)
 
 	intel_hpd_cancel_work(display);
 
-	if (has_display(xe)) {
+	if (intel_display_device_present(display)) {
 		intel_display_driver_suspend_access(display);
 		intel_encoder_suspend_all(display);
 	}
@@ -360,7 +353,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
 	intel_power_domains_disable(display);
 	drm_client_dev_suspend(&xe->drm, false);
 
-	if (has_display(xe)) {
+	if (intel_display_device_present(display)) {
 		drm_kms_helper_poll_disable(&xe->drm);
 		intel_display_driver_disable_user_access(display);
 		intel_display_driver_suspend(display);
@@ -370,7 +363,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
 	intel_dp_mst_suspend(display);
 	intel_hpd_cancel_work(display);
 
-	if (has_display(xe))
+	if (intel_display_device_present(display))
 		intel_display_driver_suspend_access(display);
 
 	intel_encoder_suspend_all(display);
@@ -459,23 +452,23 @@ void xe_display_pm_resume(struct xe_device *xe)
 
 	intel_dmc_resume(display);
 
-	if (has_display(xe))
+	if (intel_display_device_present(display))
 		drm_mode_config_reset(&xe->drm);
 
 	intel_display_driver_init_hw(display);
 
-	if (has_display(xe))
+	if (intel_display_device_present(display))
 		intel_display_driver_resume_access(display);
 
 	intel_hpd_init(display);
 
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
@@ -540,7 +533,7 @@ int xe_display_probe(struct xe_device *xe)
 
 	xe->display = display;
 
-	if (has_display(xe))
+	if (intel_display_device_present(display))
 		return 0;
 
 no_display:
-- 
2.39.5

