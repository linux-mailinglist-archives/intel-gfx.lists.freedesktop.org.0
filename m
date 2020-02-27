Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9313E172087
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 15:44:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 054E16ECC0;
	Thu, 27 Feb 2020 14:44:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5A616ECC0
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 14:44:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 06:44:16 -0800
X-IronPort-AV: E=Sophos;i="5.70,492,1574150400"; d="scan'208";a="242063914"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 06:44:14 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Feb 2020 16:44:06 +0200
Message-Id: <20200227144408.24345-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/vgpu: improve vgpu abstractions
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add intel_vgpu_register() abstraction, rename i915_detect_vgpu() to
intel_vgpu_detect() to match other function naming, un-inline
intel_vgpu_active(), intel_vgpu_has_full_ppgtt() and
intel_vgpu_has_huge_gtt() to reduce header interdependencies.

The i915_vgpu.[ch] filename and intel_vgpu_ prefix discrepancy remains.

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c    |  1 +
 drivers/gpu/drm/i915/display/intel_sprite.c |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c  |  1 +
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c        |  1 +
 drivers/gpu/drm/i915/gt/intel_rc6.c         |  1 +
 drivers/gpu/drm/i915/i915_drv.c             | 10 ++-----
 drivers/gpu/drm/i915/i915_drv.h             |  5 ----
 drivers/gpu/drm/i915/i915_gem_fence_reg.c   |  1 +
 drivers/gpu/drm/i915/i915_vgpu.c            | 31 +++++++++++++++++++--
 drivers/gpu/drm/i915/i915_vgpu.h            | 25 ++++++-----------
 drivers/gpu/drm/i915/intel_gvt.c            |  1 +
 11 files changed, 47 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index ddf8d3bb7a7d..6cfe14393885 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -42,6 +42,7 @@
 
 #include "i915_drv.h"
 #include "i915_trace.h"
+#include "i915_vgpu.h"
 #include "intel_display_types.h"
 #include "intel_fbc.h"
 #include "intel_frontbuffer.h"
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 22ad6dde46ce..ea5300cab9f4 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -40,6 +40,7 @@
 
 #include "i915_drv.h"
 #include "i915_trace.h"
+#include "i915_vgpu.h"
 #include "intel_atomic_plane.h"
 #include "intel_display_types.h"
 #include "intel_frontbuffer.h"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 491cfbaaa330..5557dfa83a7b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -13,6 +13,7 @@
 #include "gem/i915_gem_region.h"
 #include "i915_drv.h"
 #include "i915_gem_stolen.h"
+#include "i915_vgpu.h"
 
 /*
  * The BIOS typically reserves some of the system's memory for the exclusive
diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 4d1de2d97d5c..e70215cd40c0 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -8,6 +8,7 @@
 #include "gen8_ppgtt.h"
 #include "i915_scatterlist.h"
 #include "i915_trace.h"
+#include "i915_pvinfo.h"
 #include "i915_vgpu.h"
 #include "intel_gt.h"
 #include "intel_gtt.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index bef132709854..0392d2c79de9 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -7,6 +7,7 @@
 #include <linux/pm_runtime.h>
 
 #include "i915_drv.h"
+#include "i915_vgpu.h"
 #include "intel_gt.h"
 #include "intel_gt_pm.h"
 #include "intel_rc6.h"
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index b086132df1b7..254144678e19 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -758,13 +758,7 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
 	i915_gem_driver_register(dev_priv);
 	i915_pmu_register(dev_priv);
 
-	/*
-	 * Notify a valid surface after modesetting,
-	 * when running inside a VM.
-	 */
-	if (intel_vgpu_active(dev_priv))
-		intel_uncore_write(&dev_priv->uncore, vgtif_reg(display_ready),
-				   VGT_DRV_DISPLAY_READY);
+	intel_vgpu_register(dev_priv);
 
 	/* Reveal our presence to userspace */
 	if (drm_dev_register(dev, 0) == 0) {
@@ -971,7 +965,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	disable_rpm_wakeref_asserts(&i915->runtime_pm);
 
-	i915_detect_vgpu(i915);
+	intel_vgpu_detect(i915);
 
 	ret = i915_driver_mmio_probe(i915);
 	if (ret < 0)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index ea13fc0b409b..a306ebe44a08 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1755,11 +1755,6 @@ static inline bool intel_gvt_active(struct drm_i915_private *dev_priv)
 	return dev_priv->gvt;
 }
 
-static inline bool intel_vgpu_active(struct drm_i915_private *dev_priv)
-{
-	return dev_priv->vgpu.active;
-}
-
 int i915_getparam_ioctl(struct drm_device *dev, void *data,
 			struct drm_file *file_priv);
 
diff --git a/drivers/gpu/drm/i915/i915_gem_fence_reg.c b/drivers/gpu/drm/i915/i915_gem_fence_reg.c
index 3704e32ecd9c..d152b648c73c 100644
--- a/drivers/gpu/drm/i915/i915_gem_fence_reg.c
+++ b/drivers/gpu/drm/i915/i915_gem_fence_reg.c
@@ -23,6 +23,7 @@
 
 #include "i915_drv.h"
 #include "i915_scatterlist.h"
+#include "i915_pvinfo.h"
 #include "i915_vgpu.h"
 
 /**
diff --git a/drivers/gpu/drm/i915/i915_vgpu.c b/drivers/gpu/drm/i915/i915_vgpu.c
index 4afe21662266..70fca72f5162 100644
--- a/drivers/gpu/drm/i915/i915_vgpu.c
+++ b/drivers/gpu/drm/i915/i915_vgpu.c
@@ -21,6 +21,8 @@
  * SOFTWARE.
  */
 
+#include "i915_drv.h"
+#include "i915_pvinfo.h"
 #include "i915_vgpu.h"
 
 /**
@@ -51,13 +53,13 @@
  */
 
 /**
- * i915_detect_vgpu - detect virtual GPU
+ * intel_vgpu_detect - detect virtual GPU
  * @dev_priv: i915 device private
  *
  * This function is called at the initialization stage, to detect whether
  * running on a vGPU.
  */
-void i915_detect_vgpu(struct drm_i915_private *dev_priv)
+void intel_vgpu_detect(struct drm_i915_private *dev_priv)
 {
 	struct pci_dev *pdev = dev_priv->drm.pdev;
 	u64 magic;
@@ -102,11 +104,36 @@ void i915_detect_vgpu(struct drm_i915_private *dev_priv)
 	pci_iounmap(pdev, shared_area);
 }
 
+void intel_vgpu_register(struct drm_i915_private *i915)
+{
+	/*
+	 * Notify a valid surface after modesetting, when running inside a VM.
+	 */
+	if (intel_vgpu_active(i915))
+		intel_uncore_write(&i915->uncore, vgtif_reg(display_ready),
+				   VGT_DRV_DISPLAY_READY);
+}
+
+bool intel_vgpu_active(struct drm_i915_private *dev_priv)
+{
+	return dev_priv->vgpu.active;
+}
+
 bool intel_vgpu_has_full_ppgtt(struct drm_i915_private *dev_priv)
 {
 	return dev_priv->vgpu.caps & VGT_CAPS_FULL_PPGTT;
 }
 
+bool intel_vgpu_has_hwsp_emulation(struct drm_i915_private *dev_priv)
+{
+	return dev_priv->vgpu.caps & VGT_CAPS_HWSP_EMULATION;
+}
+
+bool intel_vgpu_has_huge_gtt(struct drm_i915_private *dev_priv)
+{
+	return dev_priv->vgpu.caps & VGT_CAPS_HUGE_GTT;
+}
+
 struct _balloon_info_ {
 	/*
 	 * There are up to 2 regions per mappable/unmappable graphic
diff --git a/drivers/gpu/drm/i915/i915_vgpu.h b/drivers/gpu/drm/i915/i915_vgpu.h
index 8b3663dad193..ffbb77d08048 100644
--- a/drivers/gpu/drm/i915/i915_vgpu.h
+++ b/drivers/gpu/drm/i915/i915_vgpu.h
@@ -24,24 +24,17 @@
 #ifndef _I915_VGPU_H_
 #define _I915_VGPU_H_
 
-#include "i915_drv.h"
-#include "i915_pvinfo.h"
+#include <linux/types.h>
 
-void i915_detect_vgpu(struct drm_i915_private *dev_priv);
+struct drm_i915_private;
+struct i915_ggtt;
 
-bool intel_vgpu_has_full_ppgtt(struct drm_i915_private *dev_priv);
-
-static inline bool
-intel_vgpu_has_hwsp_emulation(struct drm_i915_private *dev_priv)
-{
-	return dev_priv->vgpu.caps & VGT_CAPS_HWSP_EMULATION;
-}
-
-static inline bool
-intel_vgpu_has_huge_gtt(struct drm_i915_private *dev_priv)
-{
-	return dev_priv->vgpu.caps & VGT_CAPS_HUGE_GTT;
-}
+void intel_vgpu_detect(struct drm_i915_private *i915);
+bool intel_vgpu_active(struct drm_i915_private *i915);
+void intel_vgpu_register(struct drm_i915_private *i915);
+bool intel_vgpu_has_full_ppgtt(struct drm_i915_private *i915);
+bool intel_vgpu_has_hwsp_emulation(struct drm_i915_private *i915);
+bool intel_vgpu_has_huge_gtt(struct drm_i915_private *i915);
 
 int intel_vgt_balloon(struct i915_ggtt *ggtt);
 void intel_vgt_deballoon(struct i915_ggtt *ggtt);
diff --git a/drivers/gpu/drm/i915/intel_gvt.c b/drivers/gpu/drm/i915/intel_gvt.c
index e73fd752adef..28753cf227a2 100644
--- a/drivers/gpu/drm/i915/intel_gvt.c
+++ b/drivers/gpu/drm/i915/intel_gvt.c
@@ -22,6 +22,7 @@
  */
 
 #include "i915_drv.h"
+#include "i915_vgpu.h"
 #include "intel_gvt.h"
 
 /**
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
