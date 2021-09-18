Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A2941035A
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Sep 2021 06:19:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E41586E0D5;
	Sat, 18 Sep 2021 04:19:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A26856E0D5
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Sep 2021 04:19:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10110"; a="222948821"
X-IronPort-AV: E=Sophos;i="5.85,303,1624345200"; d="scan'208";a="222948821"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 21:19:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,303,1624345200"; d="scan'208";a="652066397"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga005.jf.intel.com with ESMTP; 17 Sep 2021 21:19:45 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Fri, 17 Sep 2021 21:19:55 -0700
Message-Id: <20210918042008.29468-5-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210918042008.29468-1-alan.previn.teres.alexis@intel.com>
References: <20210918042008.29468-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v10 04/17] drm/i915/pxp: allocate a vcs context
 for pxp usage
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

From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

The context is required to send the session termination commands to the
VCS, which will be implemented in a follow-up patch. We can also use the
presence of the context as a check of pxp initialization completion.

v2: use perma-pinned context (Chris)
v3: rename pinned_context functions (Chris)
v4: split export of pinned_context functions to a separate patch (Rodrigo)

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/Makefile              |  4 ++
 drivers/gpu/drm/i915/gt/intel_engine.h     |  2 +
 drivers/gpu/drm/i915/gt/intel_gt.c         |  5 ++
 drivers/gpu/drm/i915/gt/intel_gt_types.h   |  3 +
 drivers/gpu/drm/i915/pxp/intel_pxp.c       | 67 ++++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h       | 30 ++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h | 17 ++++++
 7 files changed, 128 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_types.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 9d371be7dc5c..94ff5d5b673e 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -280,6 +280,10 @@ i915-y += \
 
 i915-y += i915_perf.o
 
+# Protected execution platform (PXP) support
+i915-$(CONFIG_DRM_I915_PXP) += \
+	pxp/intel_pxp.o
+
 # Post-mortem debug and GPU hang state capture
 i915-$(CONFIG_DRM_I915_CAPTURE_ERROR) += i915_gpu_error.o
 i915-$(CONFIG_DRM_I915_SELFTEST) += \
diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index 87579affb952..eed4634c08cd 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -175,6 +175,8 @@ intel_write_status_page(struct intel_engine_cs *engine, int reg, u32 value)
 #define I915_GEM_HWS_SEQNO		0x40
 #define I915_GEM_HWS_SEQNO_ADDR		(I915_GEM_HWS_SEQNO * sizeof(u32))
 #define I915_GEM_HWS_MIGRATE		(0x42 * sizeof(u32))
+#define I915_GEM_HWS_PXP		0x60
+#define I915_GEM_HWS_PXP_ADDR		(I915_GEM_HWS_PXP * sizeof(u32))
 #define I915_GEM_HWS_SCRATCH		0x80
 
 #define I915_HWS_CSB_BUF0_INDEX		0x10
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 55e87aff51d2..065c7a8ad285 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -21,6 +21,7 @@
 #include "intel_uncore.h"
 #include "intel_pm.h"
 #include "shmem_utils.h"
+#include "pxp/intel_pxp.h"
 
 void intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915)
 {
@@ -712,6 +713,8 @@ int intel_gt_init(struct intel_gt *gt)
 
 	intel_migrate_init(&gt->migrate, gt);
 
+	intel_pxp_init(&gt->pxp);
+
 	goto out_fw;
 err_gt:
 	__intel_gt_disable(gt);
@@ -747,6 +750,8 @@ void intel_gt_driver_unregister(struct intel_gt *gt)
 
 	intel_rps_driver_unregister(&gt->rps);
 
+	intel_pxp_fini(&gt->pxp);
+
 	/*
 	 * Upon unregistering the device to prevent any new users, cancel
 	 * all in-flight requests so that we can quickly unbind the active
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 6fdcde64c180..8001a61f42e5 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -26,6 +26,7 @@
 #include "intel_rps_types.h"
 #include "intel_migrate_types.h"
 #include "intel_wakeref.h"
+#include "pxp/intel_pxp_types.h"
 
 struct drm_i915_private;
 struct i915_ggtt;
@@ -196,6 +197,8 @@ struct intel_gt {
 	struct {
 		u8 uc_index;
 	} mocs;
+
+	struct intel_pxp pxp;
 };
 
 enum intel_gt_scratch_field {
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
new file mode 100644
index 000000000000..e18c32d242d3
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -0,0 +1,67 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright(c) 2020 Intel Corporation.
+ */
+#include "intel_pxp.h"
+#include "gt/intel_context.h"
+#include "i915_drv.h"
+
+struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp)
+{
+	return container_of(pxp, struct intel_gt, pxp);
+}
+
+static int create_vcs_context(struct intel_pxp *pxp)
+{
+	static struct lock_class_key pxp_lock;
+	struct intel_gt *gt = pxp_to_gt(pxp);
+	struct intel_engine_cs *engine;
+	struct intel_context *ce;
+
+	/*
+	 * Find the first VCS engine present. We're guaranteed there is one
+	 * if we're in this function due to the check in has_pxp
+	 */
+	for (engine = gt->engine_class[VIDEO_DECODE_CLASS][0]; !engine; engine++);
+	GEM_BUG_ON(!engine || engine->class != VIDEO_DECODE_CLASS);
+
+	ce = intel_engine_create_pinned_context(engine, engine->gt->vm, SZ_4K,
+						I915_GEM_HWS_PXP_ADDR,
+						&pxp_lock, "pxp_context");
+	if (IS_ERR(ce)) {
+		drm_err(&gt->i915->drm, "failed to create VCS ctx for PXP\n");
+		return PTR_ERR(ce);
+	}
+
+	pxp->ce = ce;
+
+	return 0;
+}
+
+static void destroy_vcs_context(struct intel_pxp *pxp)
+{
+	intel_engine_destroy_pinned_context(fetch_and_zero(&pxp->ce));
+}
+
+void intel_pxp_init(struct intel_pxp *pxp)
+{
+	struct intel_gt *gt = pxp_to_gt(pxp);
+	int ret;
+
+	if (!HAS_PXP(gt->i915))
+		return;
+
+	ret = create_vcs_context(pxp);
+	if (ret)
+		return;
+
+	drm_info(&gt->i915->drm, "Protected Xe Path (PXP) protected content support initialized\n");
+}
+
+void intel_pxp_fini(struct intel_pxp *pxp)
+{
+	if (!intel_pxp_is_enabled(pxp))
+		return;
+
+	destroy_vcs_context(pxp);
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
new file mode 100644
index 000000000000..73acd879f2fb
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -0,0 +1,30 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+
+#ifndef __INTEL_PXP_H__
+#define __INTEL_PXP_H__
+
+#include "intel_pxp_types.h"
+
+static inline bool intel_pxp_is_enabled(const struct intel_pxp *pxp)
+{
+	return pxp->ce;
+}
+
+#ifdef CONFIG_DRM_I915_PXP
+struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp);
+void intel_pxp_init(struct intel_pxp *pxp);
+void intel_pxp_fini(struct intel_pxp *pxp);
+#else
+static inline void intel_pxp_init(struct intel_pxp *pxp)
+{
+}
+
+static inline void intel_pxp_fini(struct intel_pxp *pxp)
+{
+}
+#endif
+
+#endif /* __INTEL_PXP_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
new file mode 100644
index 000000000000..db98df723dbb
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+
+#ifndef __INTEL_PXP_TYPES_H__
+#define __INTEL_PXP_TYPES_H__
+
+#include <linux/types.h>
+
+struct intel_context;
+
+struct intel_pxp {
+	struct intel_context *ce;
+};
+
+#endif /* __INTEL_PXP_TYPES_H__ */
-- 
2.25.1

