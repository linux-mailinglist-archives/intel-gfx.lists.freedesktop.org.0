Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 156EB2E8ABF
	for <lists+intel-gfx@lfdr.de>; Sun,  3 Jan 2021 06:41:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 434FD89A74;
	Sun,  3 Jan 2021 05:41:37 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A83489A62
 for <Intel-gfx@lists.freedesktop.org>; Sun,  3 Jan 2021 05:41:35 +0000 (UTC)
IronPort-SDR: RSv5hGwR2xXSPpv0xmwzCXVAhOepQuzCjnoXvg/pFoz+K0BHHUgeA+p9Rghnhv62cY1+JFsBqF
 E65J9d0PjAlg==
X-IronPort-AV: E=McAfee;i="6000,8403,9852"; a="163916486"
X-IronPort-AV: E=Sophos;i="5.78,471,1599548400"; d="scan'208";a="163916486"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2021 21:41:34 -0800
IronPort-SDR: NG2PQ0OIywfOb8F+ePyg1dRnA/g8pAn1Hi1icse9U4p7ml2Vm4XG5STQDVQqx8/8Nu+hMgruyi
 aOjDm8BbzWQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,471,1599548400"; d="scan'208";a="461562829"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga001.fm.intel.com with ESMTP; 02 Jan 2021 21:41:34 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Sat,  2 Jan 2021 21:41:22 -0800
Message-Id: <20210103054134.10148-2-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210103054134.10148-1-sean.z.huang@intel.com>
References: <20210103054134.10148-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v17 01/13] drm/i915/pxp: Introduce Intel PXP
 component
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PXP (Protected Xe Path) is an i915 componment, available on GEN12+,
that helps to establish the hardware protected session and manage
the status of the alive software session, as well as its life cycle.

This patch series is to allow the kernel space to create and
manage a single hardware session (a.k.a default session or
arbitrary session). So Mesa can allocate the protected buffer,
which is encrypted with the leverage of the arbitrary hardware
session.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/Kconfig                 | 22 +++++++++++++++
 drivers/gpu/drm/i915/Makefile                |  5 ++++
 drivers/gpu/drm/i915/gt/intel_gt.c           |  4 +++
 drivers/gpu/drm/i915/gt/intel_gt_types.h     |  3 ++
 drivers/gpu/drm/i915/pxp/intel_pxp.c         | 29 ++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h         | 25 +++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_context.c | 25 +++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_context.h | 15 ++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h   | 23 ++++++++++++++++
 9 files changed, 151 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_context.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_context.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_types.h

diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index 1e1cb245fca7..594775c11e19 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -130,6 +130,28 @@ config DRM_I915_GVT_KVMGT
 	  Choose this option if you want to enable KVMGT support for
 	  Intel GVT-g.
 
+config DRM_I915_PXP
+	bool "Enable Intel PXP support for Intel Gen12+ platform"
+	depends on DRM_I915
+	select INTEL_MEI
+	select INTEL_MEI_ME
+	select INTEL_MEI_TXE
+	select INTEL_MEI_PXP
+	default y
+	help
+	  This option selects INTEL_MEI_ME if it isn't already selected to
+	  enabled full PXP Services on Intel platforms.
+
+	  PXP (Protected Xe Path) is an i915 componment, available on GEN12+,
+	  that helps to establish the hardware protected session and manage
+	  the status of the alive software session, as well as its life cycle.
+
+	  This patch series is to allow the kernel space to create and
+	  manage a single hardware session (a.k.a default session or
+	  arbitrary session). So Mesa can allocate the protected buffer,
+	  which is encrypted with the leverage of the arbitrary hardware
+	  session.
+
 menu "drm/i915 Debugging"
 depends on DRM_I915
 depends on EXPERT
diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index f9ef5199b124..53be29dbc07d 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -255,6 +255,11 @@ i915-y += \
 
 i915-y += i915_perf.o
 
+# Protected execution platform (PXP) support
+i915-$(CONFIG_DRM_I915_PXP) += \
+	pxp/intel_pxp.o \
+	pxp/intel_pxp_context.o
+
 # Post-mortem debug and GPU hang state capture
 i915-$(CONFIG_DRM_I915_CAPTURE_ERROR) += i915_gpu_error.o
 i915-$(CONFIG_DRM_I915_SELFTEST) += \
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 44f1d51e5ae5..d2448be36ded 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -18,6 +18,7 @@
 #include "intel_uncore.h"
 #include "intel_pm.h"
 #include "shmem_utils.h"
+#include "pxp/intel_pxp.h"
 
 void intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915)
 {
@@ -584,6 +585,8 @@ int intel_gt_init(struct intel_gt *gt)
 	if (err)
 		goto err_gt;
 
+	intel_pxp_init(&gt->pxp);
+
 	goto out_fw;
 err_gt:
 	__intel_gt_disable(gt);
@@ -638,6 +641,7 @@ void intel_gt_driver_release(struct intel_gt *gt)
 	if (vm) /* FIXME being called twice on error paths :( */
 		i915_vm_put(vm);
 
+	intel_pxp_fini(&gt->pxp);
 	intel_gt_pm_fini(gt);
 	intel_gt_fini_scratch(gt);
 	intel_gt_fini_buffer_pool(gt);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 6d39a4a11bf3..caa3e1403945 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -23,6 +23,7 @@
 #include "intel_rc6_types.h"
 #include "intel_rps_types.h"
 #include "intel_wakeref.h"
+#include "pxp/intel_pxp_types.h"
 
 struct drm_i915_private;
 struct i915_ggtt;
@@ -120,6 +121,8 @@ struct intel_gt {
 		/* Slice/subslice/EU info */
 		struct sseu_dev_info sseu;
 	} info;
+
+	struct intel_pxp pxp;
 };
 
 enum intel_gt_scratch_field {
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
new file mode 100644
index 000000000000..9bc3c7e30654
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -0,0 +1,29 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright(c) 2020 Intel Corporation.
+ */
+#include "i915_drv.h"
+#include "intel_pxp.h"
+#include "intel_pxp_context.h"
+
+void intel_pxp_init(struct intel_pxp *pxp)
+{
+	struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
+
+	if (INTEL_GEN(gt->i915) < 12)
+		return;
+
+	intel_pxp_ctx_init(&pxp->ctx);
+
+	drm_info(&gt->i915->drm, "Protected Xe Path (PXP) protected content support initialized\n");
+}
+
+void intel_pxp_fini(struct intel_pxp *pxp)
+{
+	struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
+
+	if (INTEL_GEN(gt->i915) < 12)
+		return;
+
+	intel_pxp_ctx_fini(&pxp->ctx);
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
new file mode 100644
index 000000000000..f47bc6bea34f
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -0,0 +1,25 @@
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
+#ifdef CONFIG_DRM_I915_PXP
+void intel_pxp_init(struct intel_pxp *pxp);
+void intel_pxp_fini(struct intel_pxp *pxp);
+#else
+static inline void intel_pxp_init(struct intel_pxp *pxp)
+{
+	return 0;
+}
+
+static inline void intel_pxp_fini(struct intel_pxp *pxp)
+{
+}
+#endif
+
+#endif /* __INTEL_PXP_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_context.c b/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
new file mode 100644
index 000000000000..2be6bf2f0d0f
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+
+#include "intel_pxp_context.h"
+
+/**
+ * intel_pxp_ctx_init - To init a pxp context.
+ * @ctx: pointer to ctx structure.
+ */
+void intel_pxp_ctx_init(struct pxp_context *ctx)
+{
+	mutex_init(&ctx->mutex);
+	ctx->inited = true;
+}
+
+/**
+ * intel_pxp_ctx_fini - To finish the pxp context.
+ * @ctx: pointer to ctx structure.
+ */
+void intel_pxp_ctx_fini(struct pxp_context *ctx)
+{
+	ctx->inited = false;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_context.h b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
new file mode 100644
index 000000000000..f51021c33d45
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+
+#ifndef __INTEL_PXP_CONTEXT_H__
+#define __INTEL_PXP_CONTEXT_H__
+
+#include <linux/mutex.h>
+#include "intel_pxp_types.h"
+
+void intel_pxp_ctx_init(struct pxp_context *ctx);
+void intel_pxp_ctx_fini(struct pxp_context *ctx);
+
+#endif /* __INTEL_PXP_CONTEXT_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
new file mode 100644
index 000000000000..f9b40ea98b1b
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+
+#ifndef __INTEL_PXP_TYPES_H__
+#define __INTEL_PXP_TYPES_H__
+
+#include <linux/mutex.h>
+
+/* struct pxp_context - Represents combined view of driver and logical HW states. */
+struct pxp_context {
+	/** @mutex: mutex to protect the pxp context */
+	struct mutex mutex;
+
+	bool inited;
+};
+
+struct intel_pxp {
+	struct pxp_context ctx;
+};
+
+#endif /* __INTEL_PXP_TYPES_H__ */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
