Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78AA52D6A7E
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 23:39:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 055F689CF8;
	Thu, 10 Dec 2020 22:39:39 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8260894E3
 for <Intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 22:39:35 +0000 (UTC)
IronPort-SDR: LS38JA/8DSyFPWogLwbToCxl+hCY5PUHzNiiEFFNZZ0w7j0VldCHfJthopFI6kzqAFt5np2u8e
 /j54UurJyk7g==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="192676657"
X-IronPort-AV: E=Sophos;i="5.78,409,1599548400"; d="scan'208";a="192676657"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 14:39:32 -0800
IronPort-SDR: Ob6brn4GGvHA8BSs/lqdoKs+LfwcLZf7pmEAFnSYct4Ejg0d9BB4z7M3A2QwrSgCSVaKW3GEqM
 evGNeJBLoVCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,409,1599548400"; d="scan'208";a="544016875"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga005.fm.intel.com with ESMTP; 10 Dec 2020 14:39:32 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 10 Dec 2020 14:38:39 -0800
Message-Id: <20201210223859.23882-2-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201210223859.23882-1-sean.z.huang@intel.com>
References: <20201210223859.23882-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v6 01/21] drm/i915/pxp: Introduce Intel PXP
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
 drivers/gpu/drm/i915/Kconfig                 | 19 +++++++++++++
 drivers/gpu/drm/i915/Makefile                |  5 ++++
 drivers/gpu/drm/i915/gt/intel_gt.c           |  7 +++++
 drivers/gpu/drm/i915/gt/intel_gt_types.h     |  3 ++
 drivers/gpu/drm/i915/pxp/intel_pxp.c         | 27 ++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h         | 29 ++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_context.c | 27 ++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_context.h | 22 +++++++++++++++
 8 files changed, 139 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.h
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_context.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_context.h

diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index 1e1cb245fca7..a42b9b031455 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -130,6 +130,25 @@ config DRM_I915_GVT_KVMGT
 	  Choose this option if you want to enable KVMGT support for
 	  Intel GVT-g.
 
+config DRM_I915_PXP
+	bool "Enable Intel PXP support for Intel Gen12+ platform"
+	depends on DRM_I915
+	select INTEL_MEI_PXP
+	default n
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
index e5574e506a5c..99efac469cc2 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -254,6 +254,11 @@ i915-y += \
 
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
index 44f1d51e5ae5..d8e20ede7326 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -584,6 +584,12 @@ int intel_gt_init(struct intel_gt *gt)
 	if (err)
 		goto err_gt;
 
+	if (INTEL_GEN(gt->i915) >= 12) {
+		err = intel_pxp_init(&gt->pxp);
+		if (err)
+			goto err_gt;
+	}
+
 	goto out_fw;
 err_gt:
 	__intel_gt_disable(gt);
@@ -638,6 +644,7 @@ void intel_gt_driver_release(struct intel_gt *gt)
 	if (vm) /* FIXME being called twice on error paths :( */
 		i915_vm_put(vm);
 
+	intel_pxp_uninit(&gt->pxp);
 	intel_gt_pm_fini(gt);
 	intel_gt_fini_scratch(gt);
 	intel_gt_fini_buffer_pool(gt);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 6d39a4a11bf3..05255632c2c0 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -23,6 +23,7 @@
 #include "intel_rc6_types.h"
 #include "intel_rps_types.h"
 #include "intel_wakeref.h"
+#include "pxp/intel_pxp.h"
 
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
index 000000000000..ba43b2c923c7
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -0,0 +1,27 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright(c) 2020 Intel Corporation.
+ */
+#include "i915_drv.h"
+#include "intel_pxp.h"
+#include "intel_pxp_context.h"
+
+int intel_pxp_init(struct intel_pxp *pxp)
+{
+	struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
+
+	/* PXP only available for GEN12+ */
+	if (INTEL_GEN(gt->i915) < 12)
+		return -ENODEV;
+
+	intel_pxp_ctx_init(&pxp->ctx);
+
+	drm_info(&gt->i915->drm, "Protected Xe Path (PXP) protected content support initialized\n");
+
+	return 0;
+}
+
+void intel_pxp_uninit(struct intel_pxp *pxp)
+{
+	intel_pxp_ctx_fini(&pxp->ctx);
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
new file mode 100644
index 000000000000..7c3d49a6a3ab
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -0,0 +1,29 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+
+#ifndef __INTEL_PXP_H__
+#define __INTEL_PXP_H__
+
+#include "intel_pxp_context.h"
+
+struct intel_pxp {
+	struct pxp_context ctx;
+};
+
+#ifdef CONFIG_DRM_I915_PXP
+int intel_pxp_init(struct intel_pxp *pxp);
+void intel_pxp_uninit(struct intel_pxp *pxp);
+#else
+static inline int intel_pxp_init(struct intel_pxp *pxp)
+{
+	return 0;
+}
+
+static inline void intel_pxp_uninit(struct intel_pxp *pxp)
+{
+}
+#endif
+
+#endif /* __INTEL_PXP_PM_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_context.c b/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
new file mode 100644
index 000000000000..5ffaf55dc7df
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
@@ -0,0 +1,27 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+
+#include "intel_pxp_context.h"
+#include <linux/random.h>
+
+/**
+ * intel_pxp_ctx_init - To init a pxp context.
+ * @ctx: pointer to ctx structure.
+ */
+void intel_pxp_ctx_init(struct pxp_context *ctx)
+{
+	get_random_bytes(&ctx->id, sizeof(ctx->id));
+
+	mutex_init(&ctx->mutex);
+}
+
+/**
+ * intel_pxp_ctx_fini - To finish the pxp context.
+ * @ctx: pointer to ctx structure.
+ */
+void intel_pxp_ctx_fini(struct pxp_context *ctx)
+{
+	ctx->id = 0;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_context.h b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
new file mode 100644
index 000000000000..953a2e700931
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+
+#ifndef __INTEL_PXP_CONTEXT_H__
+#define __INTEL_PXP_CONTEXT_H__
+
+#include <linux/mutex.h>
+
+/* struct pxp_context - Represents combined view of driver and logical HW states. */
+struct pxp_context {
+	/** @mutex: mutex to protect the pxp context */
+	struct mutex mutex;
+
+	int id;
+};
+
+void intel_pxp_ctx_init(struct pxp_context *ctx);
+void intel_pxp_ctx_fini(struct pxp_context *ctx);
+
+#endif /* __INTEL_PXP_CONTEXT_H__ */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
