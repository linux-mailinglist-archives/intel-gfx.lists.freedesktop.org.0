Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC0B48C2E7
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 12:14:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4828E10F876;
	Wed, 12 Jan 2022 11:14:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2E6E10E933
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jan 2022 11:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641986088; x=1673522088;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KDOydRibHY1vCof9/wdycdWs9f9wFehlSSzAXhgri48=;
 b=AImChRrqPlNsAwPELJEEhYQHev6qsP0JndPtiUHjxUnlATSgD9Hx9yY3
 NPBMoTYfdbYYQ0jV/x0TF4zSCPzEcGGFdG5AEetYef0Uy6CRglf8+a/Ra
 RPBvTB+P5aKwETvGXR1GThVrRi/WsiNKTr/yCOO/02NLQUNQUkaIw5yrB
 H8xFwnE5pIX/DCIperHjfNiKFx6c+TaWi8pnloJGnRXGcB6VycIx+sGKC
 ErsqzQmi0Nfq7Dg9Q6Ay2c89j1fi0I7hjEczpHeiK2ohyK6a/HJRsNaE0
 FnHPU750GbLPkaegMWwNBpfCzXz7obmQPT6tR9NfXF7H1i2CnVHnP+mSd g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="231054168"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="231054168"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 03:14:48 -0800
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="623404357"
Received: from pmasonx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.13.224])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 03:14:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Jan 2022 13:14:37 +0200
Message-Id: <20220112111438.1197944-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/2] drm/i915: split out intel_vtd.[ch] from
 i915_drv.h
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

Perhaps a bit contrived, but we need to reduce the size of i915_drv.h
from all the accumulated cruft.

v3: Rebase

v2: Turns out asm/hypervisor.h is not self-contained

Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                |  1 +
 drivers/gpu/drm/i915/display/intel_bw.c      |  1 +
 drivers/gpu/drm/i915/display/intel_display.c |  5 +-
 drivers/gpu/drm/i915/display/intel_fb_pin.c  |  1 +
 drivers/gpu/drm/i915/display/intel_fbc.c     |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c   |  1 +
 drivers/gpu/drm/i915/gem/i915_gemfs.c        |  1 +
 drivers/gpu/drm/i915/gt/intel_ggtt.c         |  6 +--
 drivers/gpu/drm/i915/gt/intel_gtt.c          |  1 +
 drivers/gpu/drm/i915/i915_debugfs.c          |  1 +
 drivers/gpu/drm/i915/i915_driver.c           |  7 +--
 drivers/gpu/drm/i915/i915_drv.h              | 37 --------------
 drivers/gpu/drm/i915/i915_gpu_error.c        |  1 +
 drivers/gpu/drm/i915/intel_device_info.c     |  3 +-
 drivers/gpu/drm/i915/intel_pch.c             |  1 +
 drivers/gpu/drm/i915/intel_pm.c              |  1 +
 drivers/gpu/drm/i915/intel_vtd.c             | 14 ++++++
 drivers/gpu/drm/i915/intel_vtd.h             | 51 ++++++++++++++++++++
 19 files changed, 86 insertions(+), 49 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/intel_vtd.c
 create mode 100644 drivers/gpu/drm/i915/intel_vtd.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index aa86ac33effc..1606146e39dd 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -54,6 +54,7 @@ i915-y += i915_driver.o \
 	  intel_sbi.o \
 	  intel_step.o \
 	  intel_uncore.o \
+	  intel_vtd.o \
 	  intel_wakeref.o \
 	  vlv_sideband.o \
 	  vlv_suspend.o
diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 2da4aacc956b..cc2b4a02bf59 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -11,6 +11,7 @@
 #include "intel_display_types.h"
 #include "intel_pcode.h"
 #include "intel_pm.h"
+#include "intel_vtd.h"
 
 /* Parameters for Qclk Geyserville (QGV) */
 struct intel_qgv_point {
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index bf7ce684dd8e..00b07f00bb6f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -75,6 +75,7 @@
 #include "g4x_dp.h"
 #include "g4x_hdmi.h"
 #include "i915_drv.h"
+#include "i9xx_plane.h"
 #include "icl_dsi.h"
 #include "intel_acpi.h"
 #include "intel_atomic.h"
@@ -109,12 +110,12 @@
 #include "intel_sprite.h"
 #include "intel_tc.h"
 #include "intel_vga.h"
-#include "i9xx_plane.h"
+#include "intel_vtd.h"
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
+#include "vlv_dsi.h"
 #include "vlv_dsi_pll.h"
 #include "vlv_sideband.h"
-#include "vlv_dsi.h"
 
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
 static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index 31c15e5fca95..d4196ea1bbca 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -14,6 +14,7 @@
 #include "intel_dpt.h"
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
+#include "intel_vtd.h"
 
 static struct i915_vma *
 intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index bcdffe62f3cb..4c5a5aed7ca7 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -48,6 +48,7 @@
 #include "intel_display_types.h"
 #include "intel_fbc.h"
 #include "intel_frontbuffer.h"
+#include "intel_vtd.h"
 
 #define for_each_fbc_id(__dev_priv, __fbc_id) \
 	for ((__fbc_id) = INTEL_FBC_A; (__fbc_id) < I915_MAX_FBCS; (__fbc_id)++) \
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
index 6a6ff98a8746..0fb0921c81ab 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
@@ -16,6 +16,7 @@
 #include "gt/intel_gt_requests.h"
 
 #include "i915_trace.h"
+#include "intel_vtd.h"
 
 static bool swap_available(void)
 {
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 26975d857776..d9ad64cf75a4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -15,6 +15,7 @@
 #include "i915_drv.h"
 #include "i915_gem_stolen.h"
 #include "i915_vgpu.h"
+#include "intel_vtd.h"
 
 /*
  * The BIOS typically reserves some of the system's memory for the exclusive
diff --git a/drivers/gpu/drm/i915/gem/i915_gemfs.c b/drivers/gpu/drm/i915/gem/i915_gemfs.c
index 7271fbf813fa..7eb4b5ff9147 100644
--- a/drivers/gpu/drm/i915/gem/i915_gemfs.c
+++ b/drivers/gpu/drm/i915/gem/i915_gemfs.c
@@ -9,6 +9,7 @@
 
 #include "i915_drv.h"
 #include "i915_gemfs.h"
+#include "intel_vtd.h"
 
 int i915_gemfs_init(struct drm_i915_private *i915)
 {
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index a1b2761bc16e..b4c99460ce45 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -14,13 +14,13 @@
 
 #include "gem/i915_gem_lmem.h"
 
-#include "intel_gt.h"
+#include "gen8_ppgtt.h"
 #include "i915_drv.h"
 #include "i915_scatterlist.h"
 #include "i915_vgpu.h"
-
+#include "intel_gt.h"
 #include "intel_gtt.h"
-#include "gen8_ppgtt.h"
+#include "intel_vtd.h"
 
 static void i915_ggtt_color_adjust(const struct drm_mm_node *node,
 				   unsigned long color,
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 46be4197b93f..bf596c9a2494 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -14,6 +14,7 @@
 #include "i915_trace.h"
 #include "intel_gt.h"
 #include "intel_gtt.h"
+#include "intel_vtd.h"
 
 struct drm_i915_gem_object *alloc_pt_lmem(struct i915_address_space *vm, int sz)
 {
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index f3141b58d912..b944b3b4fca3 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -49,6 +49,7 @@
 #include "i915_irq.h"
 #include "i915_scheduler.h"
 #include "intel_pm.h"
+#include "intel_vtd.h"
 
 static inline struct drm_i915_private *node_to_i915(struct drm_info_node *node)
 {
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 8bef67cb6c33..18063e2d2e28 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -91,6 +91,7 @@
 #include "intel_pcode.h"
 #include "intel_pm.h"
 #include "intel_region_ttm.h"
+#include "intel_vtd.h"
 #include "vlv_suspend.h"
 
 static const struct drm_driver i915_drm_driver;
@@ -745,12 +746,6 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
 	i915_gem_driver_unregister(dev_priv);
 }
 
-void
-i915_print_iommu_status(struct drm_i915_private *i915, struct drm_printer *p)
-{
-	drm_printf(p, "iommu: %s\n", enableddisabled(intel_vtd_active(i915)));
-}
-
 static void i915_welcome_messages(struct drm_i915_private *dev_priv)
 {
 	if (drm_debug_enabled(DRM_UT_DRIVER)) {
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6caec2eca8cd..ef007298f96b 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -33,14 +33,11 @@
 #include <uapi/drm/i915_drm.h>
 #include <uapi/drm/drm_fourcc.h>
 
-#include <asm/hypervisor.h>
-
 #include <linux/io-mapping.h>
 #include <linux/i2c.h>
 #include <linux/i2c-algo-bit.h>
 #include <linux/backlight.h>
 #include <linux/hash.h>
-#include <linux/intel-iommu.h>
 #include <linux/kref.h>
 #include <linux/mm_types.h>
 #include <linux/perf_event.h>
@@ -1565,43 +1562,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define INTEL_DISPLAY_ENABLED(dev_priv) \
 	(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)), !(dev_priv)->params.disable_display)
 
-static inline bool run_as_guest(void)
-{
-	return !hypervisor_is_type(X86_HYPER_NATIVE);
-}
-
 #define HAS_D12_PLANE_MINIMIZATION(dev_priv) (IS_ROCKETLAKE(dev_priv) || \
 					      IS_ALDERLAKE_S(dev_priv))
 
-static inline bool intel_vtd_active(struct drm_i915_private *i915)
-{
-	if (device_iommu_mapped(i915->drm.dev))
-		return true;
-
-	/* Running as a guest, we assume the host is enforcing VT'd */
-	return run_as_guest();
-}
-
-void
-i915_print_iommu_status(struct drm_i915_private *i915, struct drm_printer *p);
-
-static inline bool intel_scanout_needs_vtd_wa(struct drm_i915_private *dev_priv)
-{
-	return GRAPHICS_VER(dev_priv) >= 6 && intel_vtd_active(dev_priv);
-}
-
-static inline bool
-intel_ggtt_update_needs_vtd_wa(struct drm_i915_private *i915)
-{
-	return IS_BROXTON(i915) && intel_vtd_active(i915);
-}
-
-static inline bool
-intel_vm_no_concurrent_access_wa(struct drm_i915_private *i915)
-{
-	return IS_CHERRYVIEW(i915) || intel_ggtt_update_needs_vtd_wa(i915);
-}
-
 /* i915_gem.c */
 void i915_gem_init_early(struct drm_i915_private *dev_priv);
 void i915_gem_cleanup_early(struct drm_i915_private *dev_priv);
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 67f3515f07e7..3151ea6fe5df 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -49,6 +49,7 @@
 #include "i915_gpu_error.h"
 #include "i915_memcpy.h"
 #include "i915_scatterlist.h"
+#include "intel_vtd.h"
 
 #define ALLOW_FAIL (__GFP_KSWAPD_RECLAIM | __GFP_RETRY_MAYFAIL | __GFP_NOWARN)
 #define ATOMIC_MAYFAIL (GFP_ATOMIC | __GFP_NOWARN)
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 93b251b25aba..f189da713401 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -27,8 +27,9 @@
 
 #include "display/intel_cdclk.h"
 #include "display/intel_de.h"
-#include "intel_device_info.h"
 #include "i915_drv.h"
+#include "intel_device_info.h"
+#include "intel_vtd.h"
 
 #define PLATFORM_NAME(x) [INTEL_##x] = #x
 static const char * const platform_names[] = {
diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
index da8f82c2342f..4d8a98dbf465 100644
--- a/drivers/gpu/drm/i915/intel_pch.c
+++ b/drivers/gpu/drm/i915/intel_pch.c
@@ -5,6 +5,7 @@
 
 #include "i915_drv.h"
 #include "intel_pch.h"
+#include "intel_vtd.h"
 
 /* Map PCH device id to PCH type, or PCH_NONE if unknown. */
 static enum intel_pch
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 4ecd995c5cc7..c84ce6110717 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -51,6 +51,7 @@
 #include "i915_irq.h"
 #include "intel_pcode.h"
 #include "intel_pm.h"
+#include "intel_vtd.h"
 #include "vlv_sideband.h"
 #include "../../../platform/x86/intel_ips.h"
 
diff --git a/drivers/gpu/drm/i915/intel_vtd.c b/drivers/gpu/drm/i915/intel_vtd.c
new file mode 100644
index 000000000000..e52432141081
--- /dev/null
+++ b/drivers/gpu/drm/i915/intel_vtd.c
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#include <drm/drm_print.h>
+
+#include "intel_vtd.h"
+
+void
+i915_print_iommu_status(struct drm_i915_private *i915, struct drm_printer *p)
+{
+	drm_printf(p, "iommu: %s\n", enableddisabled(intel_vtd_active(i915)));
+}
diff --git a/drivers/gpu/drm/i915/intel_vtd.h b/drivers/gpu/drm/i915/intel_vtd.h
new file mode 100644
index 000000000000..421bf8ca0b36
--- /dev/null
+++ b/drivers/gpu/drm/i915/intel_vtd.h
@@ -0,0 +1,51 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_VTD_H__
+#define __INTEL_VTD_H__
+
+#include <linux/device.h>
+#include <linux/types.h>
+#include <asm/hypervisor.h>
+
+#include "i915_drv.h"
+
+struct drm_printer;
+
+static inline bool run_as_guest(void)
+{
+	return !hypervisor_is_type(X86_HYPER_NATIVE);
+}
+
+static inline bool intel_vtd_active(struct drm_i915_private *i915)
+{
+	if (device_iommu_mapped(i915->drm.dev))
+		return true;
+
+	/* Running as a guest, we assume the host is enforcing VT'd */
+	return run_as_guest();
+}
+
+static inline bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915)
+{
+	return GRAPHICS_VER(i915) >= 6 && intel_vtd_active(i915);
+}
+
+static inline bool
+intel_ggtt_update_needs_vtd_wa(struct drm_i915_private *i915)
+{
+	return IS_BROXTON(i915) && intel_vtd_active(i915);
+}
+
+static inline bool
+intel_vm_no_concurrent_access_wa(struct drm_i915_private *i915)
+{
+	return IS_CHERRYVIEW(i915) || intel_ggtt_update_needs_vtd_wa(i915);
+}
+
+void
+i915_print_iommu_status(struct drm_i915_private *i915, struct drm_printer *p);
+
+#endif /* __INTEL_VTD_H__ */
-- 
2.30.2

