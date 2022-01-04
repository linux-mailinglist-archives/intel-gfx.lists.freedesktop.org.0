Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 207A14840D4
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jan 2022 12:29:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40EFF10E230;
	Tue,  4 Jan 2022 11:29:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2107510E230
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jan 2022 11:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641295740; x=1672831740;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ulw+17fR2iID7TBnMAthFpG4aYXdO2XBnp6s6v3QJUY=;
 b=UNqrYSafOf/bqxzazoEg4zZUJzBOK6N8HAyTsTat1MPk0/qhW0k6clLV
 cU0uV0jkZXYPSh6Q7fN04BCeKdqVNUh29IvyMwzC4C92J/LciqoyyMKqV
 y5aAAp5AhcvDOCiNzuWDoGsy3OSKrydt0hG/AqLfFTkDjlNANrCbpapRF
 6hEcfpvUmIsAGIYn2i1X5akmRg6m2MpPZdpL1rO7gSCsIrCGaYyGJy8oR
 +v6DB6fP22SAQ8K4U9IwZyFbv8doSIfx+8MSzvlanJe7iRuFME29gTu+c
 /t1TUd6wJkzbhWL0R2TriPU1Wo7RQMqDOdkt6UAkSe+v1Mz4Z44cD3sqz Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10216"; a="239749234"
X-IronPort-AV: E=Sophos;i="5.88,260,1635231600"; d="scan'208";a="239749234"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 03:28:59 -0800
X-IronPort-AV: E=Sophos;i="5.88,260,1635231600"; d="scan'208";a="512476755"
Received: from gtobin-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.11.253])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 03:28:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jan 2022 13:28:52 +0200
Message-Id: <20220104112853.495572-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: split out intel_vtd.[ch] from
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Perhaps a bit contrived, but we need to reduce the size of i915_drv.h
from all the accumulated cruft.

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
index 1b62b9f65196..8e94638a7afc 100644
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
index 465dc4e97ea8..7f9dc69972e9 100644
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
index cc927e49d21f..01000f9071c4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
@@ -16,6 +16,7 @@
 #include "gt/intel_gt_requests.h"
 
 #include "i915_trace.h"
+#include "intel_vtd.h"
 
 static bool swap_available(void)
 {
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 7df50fd6cc7b..2a91715bd327 100644
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
index 5263dda7f8d5..5444bdd20eb1 100644
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
index a94be0306464..281d12908457 100644
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
index e0e052cdf8b8..5ef9d0af8572 100644
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
index 95174938b160..fc3b531021d2 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -89,6 +89,7 @@
 #include "intel_pcode.h"
 #include "intel_pm.h"
 #include "intel_region_ttm.h"
+#include "intel_vtd.h"
 #include "vlv_suspend.h"
 
 static const struct drm_driver i915_drm_driver;
@@ -741,12 +742,6 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
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
index beeb42a14aae..d6c1c40db860 100644
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
@@ -1568,43 +1565,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
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
 /* i915_getparam.c */
 int i915_getparam_ioctl(struct drm_device *dev, void *data,
 			struct drm_file *file_priv);
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 5ae812d60abe..7b9cdfbefd78 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -49,6 +49,7 @@
 #include "i915_memcpy.h"
 #include "i915_scatterlist.h"
 #include "i915_vma_snapshot.h"
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
index bdf97a8c9ef3..55249d0f3e90 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -50,6 +50,7 @@
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
index 000000000000..3afc5a2a704a
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
+#include <asm/hypervisor.h>
+#include <linux/device.h>
+#include <linux/types.h>
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

