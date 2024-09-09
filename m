Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC03971B26
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 15:33:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED87D10E579;
	Mon,  9 Sep 2024 13:33:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M5TF+f8A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7CD110E578;
 Mon,  9 Sep 2024 13:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725888795; x=1757424795;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2MWUd4Om4+f8nful2nVI8QcPF+QMiUyiuXoxx+HcO2A=;
 b=M5TF+f8AcJgTRm5C9RsdRN+InIUV9UiZ0XTirZY9qA+YZQlyVGuNBuZf
 89eDJkP7Z9AqSAccgMotY97ZIA03mXJLvKyEu2SG1XYU1kdhQnKn5Ai1g
 vcp0A8tNz/XpO1cJwIjCLAAshdUIghnB55upqmJglx9yqANa8e2RwR/qc
 5kazwYp6vzpS3pz713SZXgq2lXxEDO8Uh6oyfY+Ry4P229zecfzF66po8
 GtKu9D6jluZKPw7lijg0RUUJwnrxZQfwhzFZ5CAAtHUi3XHHMERsXSnXl
 C2LPYohlEO94zS1C14fCHZwuhsteVcIlhEHusNWq4CGwyjHHg6f1O5pU5 Q==;
X-CSE-ConnectionGUID: RpA2haJAQLadcymHrYlFXQ==
X-CSE-MsgGUID: 5D37dWEmSICR52MF8zSkMQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="24527059"
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="24527059"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 06:33:15 -0700
X-CSE-ConnectionGUID: F9uxzNyjRlWXZVkUJCyuCQ==
X-CSE-MsgGUID: dqXUFSWtTkixwEp6zpfxng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="89961529"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 06:33:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, rodrigo.vivi@intel.com,
 jani.nikula@intel.com
Subject: [PATCH v2 2/4] drm/i915/display: add intel_display_snapshot
 abstraction
Date: Mon,  9 Sep 2024 16:32:57 +0300
Message-Id: <12b4ec2eea2a52ab59a6b2f02cad41ed6ce29f19.1725888718.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725888718.git.jani.nikula@intel.com>
References: <cover.1725888718.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
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

The error state capture still handles display info at a too detailed
level. Start abstracting the whole display snapshot capture and printing
at a higher level. Move overlay to display snapshot first.

Use the same nomenclature and style as in xe devcoredump, in preparation
for perhaps some day bolting the snapshots there as well.

v3: Fix build harder for CONFIG_DRM_I915_CAPTURE_ERROR=n

v2: Fix build for CONFIG_DRM_I915_CAPTURE_ERROR=n (kernel test robot)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  1 +
 .../drm/i915/display/intel_display_snapshot.c | 42 +++++++++++++++++++
 .../drm/i915/display/intel_display_snapshot.h | 16 +++++++
 drivers/gpu/drm/i915/display/intel_overlay.c  | 16 ++++---
 drivers/gpu/drm/i915/display/intel_overlay.h  | 25 +++++++----
 drivers/gpu/drm/i915/i915_gpu_error.c         | 12 +++---
 drivers/gpu/drm/i915/i915_gpu_error.h         |  6 +--
 7 files changed, 94 insertions(+), 24 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_snapshot.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_snapshot.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index c63fa2133ccb..9fcd9e09bc0b 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -242,6 +242,7 @@ i915-y += \
 	display/intel_display_power_well.o \
 	display/intel_display_reset.o \
 	display/intel_display_rps.o \
+	display/intel_display_snapshot.o \
 	display/intel_display_wa.o \
 	display/intel_dmc.o \
 	display/intel_dmc_wl.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display_snapshot.c b/drivers/gpu/drm/i915/display/intel_display_snapshot.c
new file mode 100644
index 000000000000..78b019dcd41d
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_snapshot.c
@@ -0,0 +1,42 @@
+// SPDX-License-Identifier: MIT
+/* Copyright © 2024 Intel Corporation */
+
+#include <linux/slab.h>
+
+#include "intel_display_snapshot.h"
+#include "intel_overlay.h"
+
+struct intel_display_snapshot {
+	struct intel_overlay_snapshot *overlay;
+};
+
+struct intel_display_snapshot *intel_display_snapshot_capture(struct intel_display *display)
+{
+	struct intel_display_snapshot *snapshot;
+
+	snapshot = kzalloc(sizeof(*snapshot), GFP_ATOMIC);
+	if (!snapshot)
+		return NULL;
+
+	snapshot->overlay = intel_overlay_snapshot_capture(display);
+
+	return snapshot;
+}
+
+void intel_display_snapshot_print(const struct intel_display_snapshot *snapshot,
+				  struct drm_printer *p)
+{
+	if (!snapshot)
+		return;
+
+	intel_overlay_snapshot_print(snapshot->overlay, p);
+}
+
+void intel_display_snapshot_free(struct intel_display_snapshot *snapshot)
+{
+	if (!snapshot)
+		return;
+
+	kfree(snapshot->overlay);
+	kfree(snapshot);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_snapshot.h b/drivers/gpu/drm/i915/display/intel_display_snapshot.h
new file mode 100644
index 000000000000..7ed27cdea644
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_snapshot.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2024 Intel Corporation */
+
+#ifndef __INTEL_DISPLAY_SNAPSHOT_H__
+#define __INTEL_DISPLAY_SNAPSHOT_H__
+
+struct drm_printer;
+struct intel_display;
+struct intel_display_snapshot;
+
+struct intel_display_snapshot *intel_display_snapshot_capture(struct intel_display *display);
+void intel_display_snapshot_print(const struct intel_display_snapshot *snapshot,
+				  struct drm_printer *p);
+void intel_display_snapshot_free(struct intel_display_snapshot *snapshot);
+
+#endif /* __INTEL_DISPLAY_SNAPSHOT_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 06b1122ec13e..b89541458765 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -1457,18 +1457,19 @@ void intel_overlay_cleanup(struct drm_i915_private *dev_priv)
 
 #if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
 
-struct intel_overlay_error_state {
+struct intel_overlay_snapshot {
 	struct overlay_registers regs;
 	unsigned long base;
 	u32 dovsta;
 	u32 isr;
 };
 
-struct intel_overlay_error_state *
-intel_overlay_capture_error_state(struct drm_i915_private *dev_priv)
+struct intel_overlay_snapshot *
+intel_overlay_snapshot_capture(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_overlay *overlay = dev_priv->display.overlay;
-	struct intel_overlay_error_state *error;
+	struct intel_overlay_snapshot *error;
 
 	if (!overlay || !overlay->active)
 		return NULL;
@@ -1487,9 +1488,12 @@ intel_overlay_capture_error_state(struct drm_i915_private *dev_priv)
 }
 
 void
-intel_overlay_print_error_state(struct drm_printer *p,
-				struct intel_overlay_error_state *error)
+intel_overlay_snapshot_print(const struct intel_overlay_snapshot *error,
+			     struct drm_printer *p)
 {
+	if (!error)
+		return;
+
 	drm_printf(p, "Overlay, status: 0x%08x, interrupt: 0x%08x\n",
 		   error->dovsta, error->isr);
 	drm_printf(p, "  Register file at 0x%08lx:\n", error->base);
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.h b/drivers/gpu/drm/i915/display/intel_overlay.h
index f28a09c062d0..eafac24d1de8 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.h
+++ b/drivers/gpu/drm/i915/display/intel_overlay.h
@@ -6,12 +6,15 @@
 #ifndef __INTEL_OVERLAY_H__
 #define __INTEL_OVERLAY_H__
 
+#include <linux/types.h>
+
 struct drm_device;
 struct drm_file;
 struct drm_i915_private;
 struct drm_printer;
+struct intel_display;
 struct intel_overlay;
-struct intel_overlay_error_state;
+struct intel_overlay_snapshot;
 
 #ifdef I915
 void intel_overlay_setup(struct drm_i915_private *dev_priv);
@@ -22,10 +25,6 @@ int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
 int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
 			      struct drm_file *file_priv);
 void intel_overlay_reset(struct drm_i915_private *dev_priv);
-struct intel_overlay_error_state *
-intel_overlay_capture_error_state(struct drm_i915_private *dev_priv);
-void intel_overlay_print_error_state(struct drm_printer *p,
-				     struct intel_overlay_error_state *error);
 #else
 static inline void intel_overlay_setup(struct drm_i915_private *dev_priv)
 {
@@ -50,13 +49,21 @@ static inline int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
 static inline void intel_overlay_reset(struct drm_i915_private *dev_priv)
 {
 }
-static inline struct intel_overlay_error_state *
-intel_overlay_capture_error_state(struct drm_i915_private *dev_priv)
+#endif
+
+#if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR) && defined(I915)
+struct intel_overlay_snapshot *
+intel_overlay_snapshot_capture(struct intel_display *display);
+void intel_overlay_snapshot_print(const struct intel_overlay_snapshot *error,
+				  struct drm_printer *p);
+#else
+static inline struct intel_overlay_snapshot *
+intel_overlay_snapshot_capture(struct intel_display *display)
 {
 	return NULL;
 }
-static inline void intel_overlay_print_error_state(struct drm_printer *p,
-						   struct intel_overlay_error_state *error)
+static inline void intel_overlay_snapshot_print(const struct intel_overlay_snapshot *error,
+						struct drm_printer *p)
 {
 }
 #endif
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index f23769ccf050..b047b24a90d5 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -40,8 +40,8 @@
 #include <drm/drm_cache.h>
 #include <drm/drm_print.h>
 
+#include "display/intel_display_snapshot.h"
 #include "display/intel_dmc.h"
-#include "display/intel_overlay.h"
 
 #include "gem/i915_gem_context.h"
 #include "gem/i915_gem_lmem.h"
@@ -905,11 +905,10 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
 		err_print_gt_info(m, error->gt);
 	}
 
-	if (error->overlay)
-		intel_overlay_print_error_state(&p, error->overlay);
-
 	err_print_capabilities(m, error);
 	err_print_params(m, &error->params);
+
+	intel_display_snapshot_print(error->display_snapshot, &p);
 }
 
 static int err_print_to_sgl(struct i915_gpu_coredump *error)
@@ -1077,7 +1076,7 @@ void __i915_gpu_coredump_free(struct kref *error_ref)
 		cleanup_gt(gt);
 	}
 
-	kfree(error->overlay);
+	intel_display_snapshot_free(error->display_snapshot);
 
 	cleanup_params(error);
 
@@ -2097,6 +2096,7 @@ static struct i915_gpu_coredump *
 __i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask, u32 dump_flags)
 {
 	struct drm_i915_private *i915 = gt->i915;
+	struct intel_display *display = &i915->display;
 	struct i915_gpu_coredump *error;
 
 	/* Check if GPU capture has been disabled */
@@ -2138,7 +2138,7 @@ __i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask, u32 du
 		error->simulated |= error->gt->simulated;
 	}
 
-	error->overlay = intel_overlay_capture_error_state(i915);
+	error->display_snapshot = intel_display_snapshot_capture(display);
 
 	return error;
 }
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index 7c255bb1c319..1a11942d7800 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -31,7 +31,7 @@
 struct drm_i915_private;
 struct i915_vma_compress;
 struct intel_engine_capture_vma;
-struct intel_overlay_error_state;
+struct intel_display_snapshot;
 
 struct i915_vma_coredump {
 	struct i915_vma_coredump *next;
@@ -218,9 +218,9 @@ struct i915_gpu_coredump {
 	struct i915_params params;
 	struct intel_display_params display_params;
 
-	struct intel_overlay_error_state *overlay;
-
 	struct scatterlist *sgl, *fit;
+
+	struct intel_display_snapshot *display_snapshot;
 };
 
 struct i915_gpu_error {
-- 
2.39.2

