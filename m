Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8BCB328E7C
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 20:36:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0D4A6E892;
	Mon,  1 Mar 2021 19:36:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF5E26E892
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Mar 2021 19:36:09 +0000 (UTC)
IronPort-SDR: Oyr+v56PE+NsAWfArULWrlUw3z+ii1P5XQ3TwdpJa0FGuoxVlZDZY3ey0HyXhJpn1lIh1BM1s0
 BFQMf7/z6bog==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="174208959"
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="174208959"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 11:36:09 -0800
IronPort-SDR: YIzsm2h6WN+LJ79ZcUJIHyQM/0+yJ2P3oSO3VtoEsZxY147CUq5wUNgZsevYWN7w5aVJRPb2JA
 m/+q/xKjFUug==
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="435484243"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 11:35:48 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Mar 2021 11:31:48 -0800
Message-Id: <20210301193200.1369-5-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210301193200.1369-1-daniele.ceraolospurio@intel.com>
References: <20210301193200.1369-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 04/16] drm/i915/pxp: allocate a vcs context
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The context is required to send the session termination commands to the
VCS, which will be implemented in a follow-up patch. We can also use the
presence of the context as a check of pxp initialization completion.

v2: use perma-pinned context (Chris)

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/Makefile              |  4 ++
 drivers/gpu/drm/i915/gt/intel_engine.h     | 10 ++++
 drivers/gpu/drm/i915/gt/intel_engine_cs.c  | 19 ++++---
 drivers/gpu/drm/i915/gt/intel_gt.c         |  5 ++
 drivers/gpu/drm/i915/gt/intel_gt_types.h   |  3 +
 drivers/gpu/drm/i915/pxp/intel_pxp.c       | 64 ++++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h       | 35 ++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h | 15 +++++
 8 files changed, 146 insertions(+), 9 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_types.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 4554f10a0fc7..8bcdd708d5c9 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -270,6 +270,10 @@ i915-y += \
 
 i915-y += i915_perf.o
 
+# Protected execution platform (PXP) support
+i915-$(CONFIG_DRM_I915_PXP) += \
+	pxp/intel_pxp.o
+
 # Post-mortem debug and GPU hang state capture
 i915-$(CONFIG_DRM_I915_CAPTURE_ERROR) += i915_gpu_error.o
 i915-$(CONFIG_DRM_I915_SELFTEST) += \
diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index c530839627bb..4719cdf541cf 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -21,6 +21,7 @@
 
 struct drm_printer;
 struct intel_gt;
+struct lock_class_key;
 
 /* Early gen2 devices have a cacheline of just 32 bytes, using 64 is overkill,
  * but keeps the logic simple. Indeed, the whole purpose of this macro is just
@@ -170,6 +171,8 @@ intel_write_status_page(struct intel_engine_cs *engine, int reg, u32 value)
 #define I915_GEM_HWS_PREEMPT_ADDR	(I915_GEM_HWS_PREEMPT * sizeof(u32))
 #define I915_GEM_HWS_SEQNO		0x40
 #define I915_GEM_HWS_SEQNO_ADDR		(I915_GEM_HWS_SEQNO * sizeof(u32))
+#define I915_GEM_HWS_PXP		0x60
+#define I915_GEM_HWS_PXP_ADDR		(I915_GEM_HWS_PXP * sizeof(u32))
 #define I915_GEM_HWS_SCRATCH		0x80
 
 #define I915_HWS_CSB_BUF0_INDEX		0x10
@@ -232,6 +235,13 @@ ktime_t intel_engine_get_busy_time(struct intel_engine_cs *engine,
 
 u32 intel_engine_context_size(struct intel_gt *gt, u8 class);
 
+struct intel_context *
+intel_engine_pinned_context_create(struct intel_engine_cs *engine,
+				   unsigned int hwsp,
+				   struct lock_class_key *key,
+				   const char *name);
+void intel_engine_pinned_context_destroy(struct intel_context *ce);
+
 void intel_engine_init_active(struct intel_engine_cs *engine,
 			      unsigned int subclass);
 #define ENGINE_PHYSICAL	0
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 577ebd4a324f..5fb7c6202146 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -770,11 +770,11 @@ static int measure_breadcrumb_dw(struct intel_context *ce)
 	return dw;
 }
 
-static struct intel_context *
-create_pinned_context(struct intel_engine_cs *engine,
-		      unsigned int hwsp,
-		      struct lock_class_key *key,
-		      const char *name)
+struct intel_context *
+intel_engine_pinned_context_create(struct intel_engine_cs *engine,
+				   unsigned int hwsp,
+				   struct lock_class_key *key,
+				   const char *name)
 {
 	struct intel_context *ce;
 	int err;
@@ -803,7 +803,7 @@ create_pinned_context(struct intel_engine_cs *engine,
 	return ce;
 }
 
-static void destroy_pinned_context(struct intel_context *ce)
+void intel_engine_pinned_context_destroy(struct intel_context *ce)
 {
 	struct intel_engine_cs *engine = ce->engine;
 	struct i915_vma *hwsp = engine->status_page.vma;
@@ -823,8 +823,9 @@ create_kernel_context(struct intel_engine_cs *engine)
 {
 	static struct lock_class_key kernel;
 
-	return create_pinned_context(engine, I915_GEM_HWS_SEQNO_ADDR,
-				     &kernel, "kernel_context");
+	return intel_engine_pinned_context_create(engine,
+						  I915_GEM_HWS_SEQNO_ADDR,
+						  &kernel, "kernel_context");
 }
 
 /**
@@ -928,7 +929,7 @@ void intel_engine_cleanup_common(struct intel_engine_cs *engine)
 		fput(engine->default_state);
 
 	if (engine->kernel_context)
-		destroy_pinned_context(engine->kernel_context);
+		intel_engine_pinned_context_destroy(engine->kernel_context);
 
 	GEM_BUG_ON(!llist_empty(&engine->barrier_tasks));
 	cleanup_status_page(engine);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index ca76f93bc03d..daf61db620d6 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -20,6 +20,7 @@
 #include "intel_uncore.h"
 #include "intel_pm.h"
 #include "shmem_utils.h"
+#include "pxp/intel_pxp.h"
 
 void intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915)
 {
@@ -624,6 +625,8 @@ int intel_gt_init(struct intel_gt *gt)
 	if (err)
 		goto err_gt;
 
+	intel_pxp_init(&gt->pxp);
+
 	goto out_fw;
 err_gt:
 	__intel_gt_disable(gt);
@@ -658,6 +661,8 @@ void intel_gt_driver_unregister(struct intel_gt *gt)
 
 	intel_rps_driver_unregister(&gt->rps);
 
+	intel_pxp_fini(&gt->pxp);
+
 	/*
 	 * Upon unregistering the device to prevent any new users, cancel
 	 * all in-flight requests so that we can quickly unbind the active
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 626af37c7790..324d267eee15 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -23,6 +23,7 @@
 #include "intel_rc6_types.h"
 #include "intel_rps_types.h"
 #include "intel_wakeref.h"
+#include "pxp/intel_pxp_types.h"
 
 struct drm_i915_private;
 struct i915_ggtt;
@@ -145,6 +146,8 @@ struct intel_gt {
 		/* Slice/subslice/EU info */
 		struct sseu_dev_info sseu;
 	} info;
+
+	struct intel_pxp pxp;
 };
 
 enum intel_gt_scratch_field {
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
new file mode 100644
index 000000000000..c2b1c8ff845d
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -0,0 +1,64 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright(c) 2020 Intel Corporation.
+ */
+#include "intel_pxp.h"
+#include "gt/intel_context.h"
+#include "i915_drv.h"
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
+	ce = intel_engine_pinned_context_create(engine,
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
+	intel_engine_pinned_context_destroy(fetch_and_zero(&pxp->ce));
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
+
+	return;
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
index 000000000000..e87550fb9821
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -0,0 +1,35 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+
+#ifndef __INTEL_PXP_H__
+#define __INTEL_PXP_H__
+
+#include "gt/intel_gt_types.h"
+#include "intel_pxp_types.h"
+
+static inline struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp)
+{
+	return container_of(pxp, struct intel_gt, pxp);
+}
+
+static inline bool intel_pxp_is_enabled(const struct intel_pxp *pxp)
+{
+	return pxp->ce;
+}
+
+#ifdef CONFIG_DRM_I915_PXP
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
index 000000000000..bd12c520e60a
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+
+#ifndef __INTEL_PXP_TYPES_H__
+#define __INTEL_PXP_TYPES_H__
+
+struct intel_context;
+
+struct intel_pxp {
+	struct intel_context *ce;
+};
+
+#endif /* __INTEL_PXP_TYPES_H__ */
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
