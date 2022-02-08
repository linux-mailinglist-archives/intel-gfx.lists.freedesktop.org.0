Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D79424ADEB2
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 17:54:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B02DB10E7B4;
	Tue,  8 Feb 2022 16:54:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E63C10E7AB
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 16:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644339257; x=1675875257;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x1QeVxOcAOh3rmGd3qYlFKLD34b5s9gYqr7l1wo3xPY=;
 b=cwnzKmk0gvwMwvshKl/VOmPC6ZdMbBTZokkzc1MMYIdzJYZXQXS6GL1L
 1OAmxz5qqsn9VwMCfuExfB/D4/2bNIwwJR6giE5ZGtYL4yyZn/d1ZDh7S
 ERmaEq0cRPHe5nFVbpAJgLgk6gQXYN4SMj6ypuxd/OCn+7De7tq0MaqLZ
 v5AZDmy/3xsC1uUu9k+h1lnQmf8bp/WrVNSPrKPKhYIi6GRcq3jSxhUsc
 CkWCX9E7uZQoEl4SD0VytIjgEweeYTXJDB8eFYv1qfQ1Sep7fDxC8tOtg
 YPfuiqrQGJg+VtQLyWXi8d3OSBKF3KQbEs6wK2rdV1yeNARVLpDMuBdc7 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="248756146"
X-IronPort-AV: E=Sophos;i="5.88,353,1635231600"; d="scan'208";a="248756146"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 08:54:13 -0800
X-IronPort-AV: E=Sophos;i="5.88,353,1635231600"; d="scan'208";a="525617236"
Received: from ijbeckin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.19.63])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 08:54:11 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Feb 2022 18:54:02 +0200
Message-Id: <28c3c0c0ae47e4bea06ccc90ebc0b7266aa21fde.1644339170.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1644339170.git.jani.nikula@intel.com>
References: <cover.1644339170.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/2] drm/i915: split out intel_vtd.[ch] from
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

v4: Rebase

v3: Rebase

v2: Turns out asm/hypervisor.h is not self-contained

Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
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
 drivers/gpu/drm/i915/gt/intel_ggtt.c         |  8 +--
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
 19 files changed, 87 insertions(+), 50 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/intel_vtd.c
 create mode 100644 drivers/gpu/drm/i915/intel_vtd.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index a26e6736bebb..d79c06b362f1 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -55,6 +55,7 @@ i915-y += i915_driver.o \
 	  intel_sbi.o \
 	  intel_step.o \
 	  intel_uncore.o \
+	  intel_vtd.o \
 	  intel_wakeref.o \
 	  vlv_sideband.o \
 	  vlv_suspend.o
diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 5dce3cf0ed12..edcf77d3694d 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -12,6 +12,7 @@
 #include "intel_display_types.h"
 #include "intel_pcode.h"
 #include "intel_pm.h"
+#include "intel_vtd.h"
 
 /* Parameters for Qclk Geyserville (QGV) */
 struct intel_qgv_point {
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7f512f9e9e5c..2af5eca2fe12 100644
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
index c4b3d76341f3..05339b3bc39b 100644
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
index 1de73a644965..361378846127 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -16,6 +16,7 @@
 #include "i915_gem_stolen.h"
 #include "i915_reg.h"
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
index 8850d4e0f9cc..e49d8d17095a 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -14,14 +14,14 @@
 
 #include "gem/i915_gem_lmem.h"
 
-#include "intel_gt.h"
-#include "intel_gt_regs.h"
+#include "gen8_ppgtt.h"
 #include "i915_drv.h"
 #include "i915_scatterlist.h"
 #include "i915_vgpu.h"
-
+#include "intel_gt.h"
+#include "intel_gt_regs.h"
 #include "intel_gtt.h"
-#include "gen8_ppgtt.h"
+#include "intel_vtd.h"
 
 static void i915_ggtt_color_adjust(const struct drm_mm_node *node,
 				   unsigned long color,
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 0d6bbc8c57f2..524f3c3eb027 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -15,6 +15,7 @@
 #include "intel_gt.h"
 #include "intel_gt_regs.h"
 #include "intel_gtt.h"
+#include "intel_vtd.h"
 
 struct drm_i915_gem_object *alloc_pt_lmem(struct i915_address_space *vm, int sz)
 {
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index ca52ee0742ce..001958238cfe 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -50,6 +50,7 @@
 #include "i915_irq.h"
 #include "i915_scheduler.h"
 #include "intel_pm.h"
+#include "intel_vtd.h"
 
 static inline struct drm_i915_private *node_to_i915(struct drm_info_node *node)
 {
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 3d41f532a5d6..32a3265a177a 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -92,6 +92,7 @@
 #include "intel_pcode.h"
 #include "intel_pm.h"
 #include "intel_region_ttm.h"
+#include "intel_vtd.h"
 #include "vlv_suspend.h"
 
 static const struct drm_driver i915_drm_driver;
@@ -746,12 +747,6 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
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
index 8c1706fd81f9..b82528ebe70a 100644
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
@@ -1562,43 +1559,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_GUC_DEPRIVILEGE(dev_priv) \
 	(INTEL_INFO(dev_priv)->has_guc_deprivilege)
 
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
-	return DISPLAY_VER(dev_priv) >= 6 && intel_vtd_active(dev_priv);
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
index 127ff56c8ce6..ccb6d62a51df 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -50,6 +50,7 @@
 #include "i915_gpu_error.h"
 #include "i915_memcpy.h"
 #include "i915_scatterlist.h"
+#include "intel_vtd.h"
 
 #define ALLOW_FAIL (__GFP_KSWAPD_RECLAIM | __GFP_RETRY_MAYFAIL | __GFP_NOWARN)
 #define ATOMIC_MAYFAIL (GFP_ATOMIC | __GFP_NOWARN)
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 94da5aa37391..13abae12cf10 100644
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
index 23d4bb011fc8..23f0e2473e27 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -52,6 +52,7 @@
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

