Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68086311833
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Feb 2021 03:10:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8906E6F557;
	Sat,  6 Feb 2021 02:10:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF4906F54E
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 Feb 2021 02:10:42 +0000 (UTC)
IronPort-SDR: iKIVJaGCZPjLUOKHNvaW7MUcjtiCF7gd8LpHZ/O+N0UFtnqiowGsCIvt/nj1yQN1Nrm7LuZ3Tl
 DePXdZQyE5hw==
X-IronPort-AV: E=McAfee;i="6000,8403,9886"; a="181577468"
X-IronPort-AV: E=Sophos;i="5.81,156,1610438400"; d="scan'208";a="181577468"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 18:10:42 -0800
IronPort-SDR: SOnwxF5aGDTOsj0/nC7hbjlFVuj6qsuOLC7Vg9wVnyt2G26pUe8Hm/3hnCUbJ8uXBNqlrtHGih
 9oQrIcJCjjgA==
X-IronPort-AV: E=Sophos;i="5.81,156,1610438400"; d="scan'208";a="394141448"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 18:10:42 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Feb 2021 18:09:21 -0800
Message-Id: <20210206020925.36729-11-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210206020925.36729-1-daniele.ceraolospurio@intel.com>
References: <20210206020925.36729-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 10/14] drm/i915/pxp: Enable PXP power management
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
Cc: "Huang, Sean Z" <sean.z.huang@intel.com>, Huang@freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: "Huang, Sean Z" <sean.z.huang@intel.com>

During the power event S3+ sleep/resume, hardware will lose all the
encryption keys for every hardware session, even though the
software session state was marked as alive after resume. So to
handle such case, PXP should unconditionally terminate the hardware
sessions and cleanup all the software states after the power cycle.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/Makefile              |  1 +
 drivers/gpu/drm/i915/gt/intel_gt_pm.c      |  6 ++
 drivers/gpu/drm/i915/i915_drv.c            |  4 +
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.c   | 10 ++-
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c    | 94 ++++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h    | 36 +++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h |  1 +
 7 files changed, 148 insertions(+), 4 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index f45275c0034e..51c56889cfeb 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -273,6 +273,7 @@ i915-$(CONFIG_DRM_I915_PXP) += \
 	pxp/intel_pxp.o \
 	pxp/intel_pxp_cmd.o \
 	pxp/intel_pxp_irq.o \
+	pxp/intel_pxp_pm.o \
 	pxp/intel_pxp_session.o \
 	pxp/intel_pxp_tee.o
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index 0bd303d2823e..160a60e701dc 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -19,6 +19,7 @@
 #include "intel_rc6.h"
 #include "intel_rps.h"
 #include "intel_wakeref.h"
+#include "pxp/intel_pxp_pm.h"
 
 static void user_forcewake(struct intel_gt *gt, bool suspend)
 {
@@ -260,6 +261,8 @@ int intel_gt_resume(struct intel_gt *gt)
 
 	intel_uc_resume(&gt->uc);
 
+	intel_pxp_pm_resume(&gt->pxp);
+
 	user_forcewake(gt, false);
 
 out_fw:
@@ -294,6 +297,7 @@ void intel_gt_suspend_prepare(struct intel_gt *gt)
 	user_forcewake(gt, true);
 	wait_for_suspend(gt);
 
+	intel_pxp_pm_prepare_suspend(&gt->pxp);
 	intel_uc_suspend(&gt->uc);
 }
 
@@ -355,6 +359,8 @@ int intel_gt_runtime_resume(struct intel_gt *gt)
 	intel_gt_init_swizzling(gt);
 	intel_ggtt_restore_fences(gt->ggtt);
 
+	intel_pxp_runtime_resume(&gt->pxp);
+
 	return intel_uc_runtime_resume(&gt->uc);
 }
 
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index d1344eb6c849..172fd97de5eb 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -70,6 +70,8 @@
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_rc6.h"
 
+#include "pxp/intel_pxp_pm.h"
+
 #include "i915_debugfs.h"
 #include "i915_drm_client.h"
 #include "i915_drv.h"
@@ -1364,6 +1366,8 @@ static int i915_drm_resume_early(struct drm_device *dev)
 
 	intel_power_domains_resume(dev_priv);
 
+	intel_pxp_pm_resume_early(&dev_priv->gt.pxp);
+
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	return ret;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
index 5ca0218a27d8..c20990f8943c 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
@@ -119,11 +119,13 @@ void intel_pxp_irq_enable(struct intel_pxp *pxp)
 	struct intel_gt *gt = pxp_to_gt(pxp);
 
 	spin_lock_irq(&gt->irq_lock);
-	if (!pxp->irq_enabled) {
+
+	if (!pxp->irq_enabled)
 		WARN_ON_ONCE(gen11_gt_reset_one_iir(gt, 0, GEN11_KCR));
-		__pxp_set_interrupts(gt, GEN12_PXP_INTERRUPTS);
-		pxp->irq_enabled = true;
-	}
+
+	__pxp_set_interrupts(gt, GEN12_PXP_INTERRUPTS);
+	pxp->irq_enabled = true;
+
 	spin_unlock_irq(&gt->irq_lock);
 }
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
new file mode 100644
index 000000000000..f227634c2956
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
@@ -0,0 +1,94 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright(c) 2020 Intel Corporation.
+ */
+
+#include "intel_pxp.h"
+#include "intel_pxp_irq.h"
+#include "intel_pxp_pm.h"
+#include "intel_pxp_session.h"
+
+void intel_pxp_pm_prepare_suspend(struct intel_pxp *pxp)
+{
+	if (!intel_pxp_is_enabled(pxp))
+		return;
+
+	mutex_lock(&pxp->mutex);
+
+	/* Mark PXP ops as disabled */
+	pxp->global_state_in_suspend = true;
+
+	mutex_unlock(&pxp->mutex);
+
+	intel_pxp_irq_disable(pxp);
+}
+
+void intel_pxp_pm_resume_early(struct intel_pxp *pxp)
+{
+	if (!intel_pxp_is_enabled(pxp))
+		return;
+
+	mutex_lock(&pxp->mutex);
+
+	/* reset the attacked flag even if there was a pending */
+	if (pxp->global_state_in_suspend)
+		pxp->global_state_attacked = false;
+
+	mutex_unlock(&pxp->mutex);
+}
+
+int intel_pxp_pm_resume(struct intel_pxp *pxp)
+{
+	int ret = 0;
+	struct intel_gt *gt = pxp_to_gt(pxp);
+
+	if (!intel_pxp_is_enabled(pxp))
+		return 0;
+
+	intel_pxp_irq_enable(pxp);
+
+	mutex_lock(&pxp->mutex);
+
+	/* Re-enable PXP ops */
+	if (pxp->global_state_in_suspend) {
+		/*
+		 * Note: we won't re-create the session as part of the irq
+		 * generated by this termination because
+		 * pxp->global_state_attacked is not set. The session
+		 * will be recreated as part of the mei component re-binding.
+		 */
+		ret = intel_pxp_arb_terminate_session_with_global_terminate(pxp);
+		if (ret) {
+			drm_err(&gt->i915->drm,
+				"Failed to terminate the arb session on resume\n");
+			goto end;
+		}
+
+		pxp->global_state_in_suspend = false;
+	}
+
+end:
+	mutex_unlock(&pxp->mutex);
+
+	if (!ret) {
+		ret = wait_for(!pxp->termination_in_progress, 10);
+		if (ret) {
+			drm_err(&gt->i915->drm,
+				"Didn't recevive the PXP termination irq\n");
+		}
+	}
+
+	return ret;
+}
+
+void intel_pxp_runtime_resume(struct intel_pxp *pxp)
+{
+	if (!intel_pxp_is_enabled(pxp))
+		return;
+
+	/* interrupts are reset in the rpm resume path, so turn them back on */
+	intel_pxp_irq_enable(pxp);
+
+	return;
+}
+
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
new file mode 100644
index 000000000000..0150f28c0940
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
@@ -0,0 +1,36 @@
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
+void intel_pxp_runtime_resume(struct intel_pxp *pxp);
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
+
+static inline void intel_pxp_runtime_resume(struct intel_pxp *pxp)
+{
+}
+#endif
+
+#endif /* __INTEL_PXP_PM_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
index 51915f7b1521..5e400fb3cd15 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
@@ -19,6 +19,7 @@ struct intel_pxp {
 	bool arb_is_in_play;
 	bool termination_in_progress;
 	bool global_state_attacked;
+	bool global_state_in_suspend;
 
 	struct work_struct irq_work;
 	bool irq_enabled;
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
