Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0DC38FA2E
	for <lists+intel-gfx@lfdr.de>; Tue, 25 May 2021 07:48:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5952A6E82E;
	Tue, 25 May 2021 05:48:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 591D06E3F9;
 Tue, 25 May 2021 05:48:29 +0000 (UTC)
IronPort-SDR: KusOs6yJhnegCwZ9oHhNbuJL8ruXXzcC5UtxSD9bM+Sdh6RvPKe0luHdaBWPMcPjvEVIdLiuNY
 aAvd6F9pJHHg==
X-IronPort-AV: E=McAfee;i="6200,9189,9994"; a="266005420"
X-IronPort-AV: E=Sophos;i="5.82,327,1613462400"; d="scan'208";a="266005420"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 22:48:28 -0700
IronPort-SDR: ufxUgqTCpGM0nQWZK8O599QVWyWca4yUt6gbkVU1UoukNnZRxIwcg55UQEnmchdzbPOKFoJwRZ
 HEj8dkOqi4TQ==
X-IronPort-AV: E=Sophos;i="5.82,327,1613462400"; d="scan'208";a="397231709"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 22:48:26 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 May 2021 22:47:52 -0700
Message-Id: <20210525054803.7387-7-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210525054803.7387-1-daniele.ceraolospurio@intel.com>
References: <20210525054803.7387-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 06/17] drm/i915/pxp: Implement funcs to
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
Cc: "Huang, Sean Z" <sean.z.huang@intel.com>,
	dri-devel@lists.freedesktop.org,
	Chris Wilson <chris@chris-wilson.co.uk>, Huang@freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: "Huang, Sean Z" <sean.z.huang@intel.com>

Implement the funcs to create the TEE channel, so kernel can
send the TEE commands directly to TEE for creating the arbitrary
(default) session.

v2: fix locking, don't pollute dev_priv (Chris)

v3: wait for mei PXP component to be bound.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com> #v2
---
 drivers/gpu/drm/i915/Makefile              |  3 +-
 drivers/gpu/drm/i915/pxp/intel_pxp.c       | 13 ++++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c   | 87 ++++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h   | 14 ++++
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h |  3 +
 5 files changed, 119 insertions(+), 1 deletion(-)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index efd950122e40..0dfff52fea24 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -275,7 +275,8 @@ i915-y += i915_perf.o
 
 # Protected execution platform (PXP) support
 i915-$(CONFIG_DRM_I915_PXP) += \
-	pxp/intel_pxp.o
+	pxp/intel_pxp.o \
+	pxp/intel_pxp_tee.o
 
 # Post-mortem debug and GPU hang state capture
 i915-$(CONFIG_DRM_I915_CAPTURE_ERROR) += i915_gpu_error.o
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 3255c6da34e8..5df2a09c9e4b 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -3,6 +3,7 @@
  * Copyright(c) 2020 Intel Corporation.
  */
 #include "intel_pxp.h"
+#include "intel_pxp_tee.h"
 #include "gt/intel_context.h"
 #include "i915_drv.h"
 
@@ -50,7 +51,16 @@ void intel_pxp_init(struct intel_pxp *pxp)
 	if (ret)
 		return;
 
+	ret = intel_pxp_tee_component_init(pxp);
+	if (ret)
+		goto out_context;
+
 	drm_info(&gt->i915->drm, "Protected Xe Path (PXP) protected content support initialized\n");
+
+	return;
+
+out_context:
+	destroy_vcs_context(pxp);
 }
 
 void intel_pxp_fini(struct intel_pxp *pxp)
@@ -58,5 +68,8 @@ void intel_pxp_fini(struct intel_pxp *pxp)
 	if (!intel_pxp_is_enabled(pxp))
 		return;
 
+	intel_pxp_tee_component_fini(pxp);
+
 	destroy_vcs_context(pxp);
+
 }
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
new file mode 100644
index 000000000000..4ed234d8584f
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -0,0 +1,87 @@
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
+	/*
+	 * Adding the component does not guarantee that it will bind properly,
+	 * so make sure to wait until it does.
+	 */
+	ret = wait_for(pxp->pxp_component, 50);
+	if (ret) {
+		drm_err(&i915->drm, "Failed to bind PXP component (%d)\n", ret);
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
