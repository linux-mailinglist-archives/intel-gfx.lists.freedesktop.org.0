Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4577328EAD
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 20:37:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA55A6E88C;
	Mon,  1 Mar 2021 19:37:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF5486E88C
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Mar 2021 19:37:32 +0000 (UTC)
IronPort-SDR: +vaZbIgeLKnoJQCvMuKoVt0LUMVqRvFJjXpKE1TQHRSr48Dr6Oa3B65qxdWsxvHSGGqwywRAK4
 qK5MqOG5jupA==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="206196043"
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="206196043"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 11:37:32 -0800
IronPort-SDR: lHYeilGIh0v5aeNHzo53/H5VbabZBOoOvpj+BlWlEX29r6RZp+9ecz3tZ3gB85P5EV+4rJlp73
 99PepntUjEIw==
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="435484619"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 11:36:57 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Mar 2021 11:31:50 -0800
Message-Id: <20210301193200.1369-7-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210301193200.1369-1-daniele.ceraolospurio@intel.com>
References: <20210301193200.1369-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 06/16] drm/i915/pxp: Implement funcs to
 create the TEE channel
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
Cc: "Huang, Sean Z" <sean.z.huang@intel.com>, Huang@freedesktop.org,
	Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: "Huang, Sean Z" <sean.z.huang@intel.com>

Implement the funcs to create the TEE channel, so kernel can
send the TEE commands directly to TEE for creating the arbitrary
(default) session.

v2: fix locking, don't pollute dev_priv (Chris)

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/Makefile              |  3 +-
 drivers/gpu/drm/i915/pxp/intel_pxp.c       | 10 +++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c   | 78 ++++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h   | 14 ++++
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h |  3 +
 5 files changed, 107 insertions(+), 1 deletion(-)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 8bcdd708d5c9..7745f73ce3dc 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -272,7 +272,8 @@ i915-y += i915_perf.o
 
 # Protected execution platform (PXP) support
 i915-$(CONFIG_DRM_I915_PXP) += \
-	pxp/intel_pxp.o
+	pxp/intel_pxp.o \
+	pxp/intel_pxp_tee.o
 
 # Post-mortem debug and GPU hang state capture
 i915-$(CONFIG_DRM_I915_CAPTURE_ERROR) += i915_gpu_error.o
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 9b2a67f8ab8e..a4497cd38609 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -3,6 +3,7 @@
  * Copyright(c) 2020 Intel Corporation.
  */
 #include "intel_pxp.h"
+#include "intel_pxp_tee.h"
 #include "gt/intel_context.h"
 #include "i915_drv.h"
 
@@ -70,10 +71,16 @@ void intel_pxp_init(struct intel_pxp *pxp)
 	if (ret)
 		goto out_kcr;
 
+	ret = intel_pxp_tee_component_init(pxp);
+	if (ret)
+		goto out_context;
+
 	drm_info(&gt->i915->drm, "Protected Xe Path (PXP) protected content support initialized\n");
 
 	return;
 
+out_context:
+	destroy_vcs_context(pxp);
 out_kcr:
 	kcr_pxp_disable(gt);
 }
@@ -85,7 +92,10 @@ void intel_pxp_fini(struct intel_pxp *pxp)
 	if (!intel_pxp_is_enabled(pxp))
 		return;
 
+	intel_pxp_tee_component_fini(pxp);
+
 	destroy_vcs_context(pxp);
 
 	kcr_pxp_disable(gt);
+
 }
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
new file mode 100644
index 000000000000..3225a90dc5af
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -0,0 +1,78 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright(c) 2020 Intel Corporation.
+ */
+
+#include <linux/component.h>
+#include "drm/i915_pxp_tee_interface.h"
+#include "drm/i915_component.h"
+#include "i915_drv.h"
+#include "intel_pxp.h"
+#include "intel_pxp_tee.h"
+
+static inline struct intel_pxp *i915_dev_to_pxp(struct device *i915_kdev)
+{
+	return &kdev_to_i915(i915_kdev)->gt.pxp;
+}
+
+
+/**
+ * i915_pxp_tee_component_bind - bind function to pass the function pointers to pxp_tee
+ * @i915_kdev: pointer to i915 kernel device
+ * @tee_kdev: pointer to tee kernel device
+ * @data: pointer to pxp_tee_master containing the function pointers
+ *
+ * This bind function is called during the system boot or resume from system sleep.
+ *
+ * Return: return 0 if successful.
+ */
+static int i915_pxp_tee_component_bind(struct device *i915_kdev,
+				       struct device *tee_kdev, void *data)
+{
+	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
+
+	pxp->pxp_component = data;
+	pxp->pxp_component->tee_dev = tee_kdev;
+
+	return 0;
+}
+
+static void i915_pxp_tee_component_unbind(struct device *i915_kdev,
+					  struct device *tee_kdev, void *data)
+{
+	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
+
+	pxp->pxp_component = NULL;
+}
+
+static const struct component_ops i915_pxp_tee_component_ops = {
+	.bind   = i915_pxp_tee_component_bind,
+	.unbind = i915_pxp_tee_component_unbind,
+};
+
+int intel_pxp_tee_component_init(struct intel_pxp *pxp)
+{
+	int ret;
+	struct intel_gt *gt = pxp_to_gt(pxp);
+	struct drm_i915_private *i915 = gt->i915;
+
+	ret = component_add_typed(i915->drm.dev, &i915_pxp_tee_component_ops,
+				  I915_COMPONENT_PXP);
+	if (ret < 0) {
+		drm_err(&i915->drm, "Failed to add PXP component (%d)\n", ret);
+		return ret;
+	}
+
+	return 0;
+}
+
+void intel_pxp_tee_component_fini(struct intel_pxp *pxp)
+{
+	struct intel_gt *gt = pxp_to_gt(pxp);
+	struct drm_i915_private *i915 = gt->i915;
+
+	if (!pxp->pxp_component)
+		return;
+
+	component_del(i915->drm.dev, &i915_pxp_tee_component_ops);
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
new file mode 100644
index 000000000000..23d050a5d3e7
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+
+#ifndef __INTEL_PXP_TEE_H__
+#define __INTEL_PXP_TEE_H__
+
+#include "intel_pxp.h"
+
+int intel_pxp_tee_component_init(struct intel_pxp *pxp);
+void intel_pxp_tee_component_fini(struct intel_pxp *pxp);
+
+#endif /* __INTEL_PXP_TEE_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
index bd12c520e60a..3e95d21513e8 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
@@ -7,8 +7,11 @@
 #define __INTEL_PXP_TYPES_H__
 
 struct intel_context;
+struct i915_pxp_component;
 
 struct intel_pxp {
+	struct i915_pxp_component *pxp_component;
+
 	struct intel_context *ce;
 };
 
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
