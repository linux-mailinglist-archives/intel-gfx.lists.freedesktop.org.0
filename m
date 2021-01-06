Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E75302EC698
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jan 2021 00:12:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABA5E6E33F;
	Wed,  6 Jan 2021 23:12:26 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 972796E30F
 for <Intel-gfx@lists.freedesktop.org>; Wed,  6 Jan 2021 23:12:24 +0000 (UTC)
IronPort-SDR: vCOfuB0NrGHwwb6kDEGsOArCbhrfyBM8pXnQTx3i5QyeOQgPTq3Ib8KE/ABq8Qg6RY/+vhcFro
 ndb3Z8zNhmVA==
X-IronPort-AV: E=McAfee;i="6000,8403,9856"; a="195900073"
X-IronPort-AV: E=Sophos;i="5.79,328,1602572400"; d="scan'208";a="195900073"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2021 15:12:23 -0800
IronPort-SDR: rQN8OJ5iz70SXq6Vxa356NxhPjOj8PPru2b8PnKB5dZPlJBSu1ZfP0iDjFlNhB8Rgb2evxEMGz
 7/4N4NJEIySg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,328,1602572400"; d="scan'208";a="567566126"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga006.fm.intel.com with ESMTP; 06 Jan 2021 15:12:23 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed,  6 Jan 2021 15:12:18 -0800
Message-Id: <20210106231223.8323-9-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210106231223.8323-1-sean.z.huang@intel.com>
References: <20210106231223.8323-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v19 08/13] drm/i915/pxp: Enable PXP power
 management
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

During the power event S3+ sleep/resume, hardware will lose all the
encryption keys for every hardware session, even though the
software session state was marked as alive after resume. So to
handle such case, PXP should terminate all the hardware sessions
and cleanup all the software states after the power cycle.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/Makefile              |  1 +
 drivers/gpu/drm/i915/gt/intel_gt_pm.c      |  4 ++
 drivers/gpu/drm/i915/i915_drv.c            |  4 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c    | 65 ++++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h    | 31 +++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h |  1 +
 6 files changed, 106 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 5599b92bea9b..7592fc8cbd89 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -265,6 +265,7 @@ i915-$(CONFIG_DRM_I915_PXP) += \
 	pxp/intel_pxp_arb.o \
 	pxp/intel_pxp_cmd.o \
 	pxp/intel_pxp_context.o \
+	pxp/intel_pxp_pm.o \
 	pxp/intel_pxp_tee.o
 
 # Post-mortem debug and GPU hang state capture
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index c94e8ac884eb..ae0387e419a2 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -20,6 +20,7 @@
 #include "intel_rc6.h"
 #include "intel_rps.h"
 #include "intel_wakeref.h"
+#include "pxp/intel_pxp_pm.h"
 
 static void user_forcewake(struct intel_gt *gt, bool suspend)
 {
@@ -266,6 +267,8 @@ int intel_gt_resume(struct intel_gt *gt)
 
 	intel_uc_resume(&gt->uc);
 
+	intel_pxp_pm_resume(&gt->pxp);
+
 	user_forcewake(gt, false);
 
 out_fw:
@@ -300,6 +303,7 @@ void intel_gt_suspend_prepare(struct intel_gt *gt)
 	user_forcewake(gt, true);
 	wait_for_suspend(gt);
 
+	intel_pxp_pm_prepare_suspend(&gt->pxp);
 	intel_uc_suspend(&gt->uc);
 }
 
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 207d50226e64..5923db004d9b 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -68,6 +68,8 @@
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_rc6.h"
 
+#include "pxp/intel_pxp_pm.h"
+
 #include "i915_debugfs.h"
 #include "i915_drv.h"
 #include "i915_ioc32.h"
@@ -1338,6 +1340,8 @@ static int i915_drm_resume_early(struct drm_device *dev)
 
 	intel_power_domains_resume(dev_priv);
 
+	intel_pxp_pm_resume_early(&dev_priv->gt.pxp);
+
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	return ret;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
new file mode 100644
index 000000000000..ebe89262485c
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
@@ -0,0 +1,65 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright(c) 2020 Intel Corporation.
+ */
+
+#include "intel_pxp_context.h"
+#include "intel_pxp_arb.h"
+#include "intel_pxp_pm.h"
+
+void intel_pxp_pm_prepare_suspend(struct intel_pxp *pxp)
+{
+	if (!pxp->ctx.inited)
+		return;
+
+	mutex_lock(&pxp->ctx.mutex);
+
+	/* Disable PXP-IOCTLs */
+	pxp->ctx.global_state_in_suspend = true;
+
+	mutex_unlock(&pxp->ctx.mutex);
+}
+
+void intel_pxp_pm_resume_early(struct intel_pxp *pxp)
+{
+	if (!pxp->ctx.inited)
+		return;
+
+	mutex_lock(&pxp->ctx.mutex);
+
+	if (pxp->ctx.global_state_in_suspend) {
+		/* reset the attacked flag even there was a pending */
+		pxp->ctx.global_state_attacked = false;
+
+		pxp->ctx.flag_display_hm_surface_keys = false;
+	}
+
+	mutex_unlock(&pxp->ctx.mutex);
+}
+
+int intel_pxp_pm_resume(struct intel_pxp *pxp)
+{
+	int ret = 0;
+	struct intel_gt *gt = container_of(pxp, typeof(*gt), pxp);
+
+	if (!pxp->ctx.inited)
+		return 0;
+
+	mutex_lock(&pxp->ctx.mutex);
+
+	/* Re-enable PXP-IOCTLs */
+	if (pxp->ctx.global_state_in_suspend) {
+		ret = intel_pxp_arb_terminate_session(pxp);
+		if (ret) {
+			drm_err(&gt->i915->drm, "Failed to terminate the arb session\n");
+			goto end;
+		}
+
+		pxp->ctx.global_state_in_suspend = false;
+	}
+
+end:
+	mutex_unlock(&pxp->ctx.mutex);
+
+	return ret;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
new file mode 100644
index 000000000000..135bfb59aaf7
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+
+#ifndef __INTEL_PXP_PM_H__
+#define __INTEL_PXP_PM_H__
+
+#include "i915_drv.h"
+
+#ifdef CONFIG_DRM_I915_PXP
+void intel_pxp_pm_prepare_suspend(struct intel_pxp *pxp);
+
+void intel_pxp_pm_resume_early(struct intel_pxp *pxp);
+int intel_pxp_pm_resume(struct intel_pxp *pxp);
+#else
+static inline void intel_pxp_pm_prepare_suspend(struct intel_pxp *pxp)
+{
+}
+
+static inline void intel_pxp_pm_resume_early(struct intel_pxp *pxp)
+{
+}
+
+static inline int intel_pxp_pm_resume(struct intel_pxp *pxp)
+{
+	return 0;
+}
+#endif
+
+#endif /* __INTEL_PXP_PM_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
index 0b140aaeb6ed..13d7b502b7f9 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
@@ -44,6 +44,7 @@ struct pxp_context {
 
 	bool flag_display_hm_surface_keys;
 	bool global_state_attacked;
+	bool global_state_in_suspend;
 };
 
 struct intel_pxp {
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
