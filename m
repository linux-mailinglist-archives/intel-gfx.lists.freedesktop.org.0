Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7FDF328ED4
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 20:40:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D1FE6E897;
	Mon,  1 Mar 2021 19:40:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D27B76E897
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Mar 2021 19:40:34 +0000 (UTC)
IronPort-SDR: zXAR+YLUsWQcKrp9PoX6lA9+N9O4cKiQhZzEWzkx+E5q8PCJXXAKSxyPacZ+BJf/r6cuZqaO8E
 DEbryB6/9oDg==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="247987605"
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="247987605"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 11:40:27 -0800
IronPort-SDR: iPZqnClx3NmVFAwyAOqcLoqwpVciyjTcufqZeBgvYxD32aux6P/yZR6NgX+LFgpGAwjXzhsvtz
 eDJJuRFJXB7w==
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="435485395"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 11:39:46 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Mar 2021 11:31:54 -0800
Message-Id: <20210301193200.1369-11-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210301193200.1369-1-daniele.ceraolospurio@intel.com>
References: <20210301193200.1369-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 10/16] drm/i915/pxp: Enable PXP power
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
Cc: "Huang, Sean Z" <sean.z.huang@intel.com>, Huang@freedesktop.org,
	Chris Wilson <chris@chris-wilson.co.uk>
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

v2: runtime suspend also invalidates the keys

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/Makefile                |  1 +
 drivers/gpu/drm/i915/gt/intel_gt_pm.c        | 14 ++-
 drivers/gpu/drm/i915/i915_drv.c              |  2 +
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.c     | 10 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c      | 99 ++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h      | 33 +++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c | 28 ++++--
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     |  8 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h   |  1 +
 9 files changed, 183 insertions(+), 13 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 5e9bd34dec38..1a175c7f2a4e 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -275,6 +275,7 @@ i915-$(CONFIG_DRM_I915_PXP) += \
 	pxp/intel_pxp.o \
 	pxp/intel_pxp_cmd.o \
 	pxp/intel_pxp_irq.o \
+	pxp/intel_pxp_pm.o \
 	pxp/intel_pxp_session.o \
 	pxp/intel_pxp_tee.o
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index 0bd303d2823e..16f03651a6b7 100644
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
 
@@ -344,6 +348,7 @@ void intel_gt_suspend_late(struct intel_gt *gt)
 
 void intel_gt_runtime_suspend(struct intel_gt *gt)
 {
+	intel_pxp_runtime_suspend(&gt->pxp);
 	intel_uc_runtime_suspend(&gt->uc);
 
 	GT_TRACE(gt, "\n");
@@ -351,11 +356,18 @@ void intel_gt_runtime_suspend(struct intel_gt *gt)
 
 int intel_gt_runtime_resume(struct intel_gt *gt)
 {
+	int ret;
+
 	GT_TRACE(gt, "\n");
 	intel_gt_init_swizzling(gt);
 	intel_ggtt_restore_fences(gt->ggtt);
 
-	return intel_uc_runtime_resume(&gt->uc);
+	ret = intel_uc_runtime_resume(&gt->uc);
+
+	if (!ret)
+		ret = intel_pxp_runtime_resume(&gt->pxp);
+
+	return ret;
 }
 
 ktime_t intel_gt_get_awake_time(const struct intel_gt *gt)
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 3edd5e47ad68..d0a39ec29d50 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -67,6 +67,8 @@
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_rc6.h"
 
+#include "pxp/intel_pxp_pm.h"
+
 #include "i915_debugfs.h"
 #include "i915_drm_client.h"
 #include "i915_drv.h"
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
index 40115bf0b6bb..5b03b17eaa48 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
@@ -125,11 +125,13 @@ void intel_pxp_irq_enable(struct intel_pxp *pxp)
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
index 000000000000..0dd2e100bab5
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
@@ -0,0 +1,99 @@
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
+static void __pxp_suspend(struct intel_pxp *pxp)
+{
+	if (!intel_pxp_is_enabled(pxp))
+		return;
+
+	intel_pxp_irq_disable(pxp);
+
+	pxp->global_state_attacked = false;
+	pxp->arb_is_in_play = false;
+	pxp->global_state_in_suspend = true;
+}
+
+void intel_pxp_pm_prepare_suspend(struct intel_pxp *pxp)
+{
+	__pxp_suspend(pxp);
+}
+
+int intel_pxp_pm_resume(struct intel_pxp *pxp)
+{
+	struct intel_gt *gt = pxp_to_gt(pxp);
+	int ret = 0;
+
+	if (!intel_pxp_is_enabled(pxp))
+		return 0;
+
+	intel_pxp_irq_enable(pxp);
+
+	if (!pxp->global_state_in_suspend)
+		return 0;
+
+	mutex_lock(&pxp->mutex);
+
+	/*
+	 * Note: we won't re-create the session as part of the irq generated by
+	 * this termination because pxp->global_state_attacked is not set. The
+	 * session will be recreated as part of the mei component re-binding.
+	 */
+	intel_pxp_mark_termination_in_progress(pxp);
+	ret = intel_pxp_arb_terminate_session_with_global_terminate(pxp);
+	if (ret) {
+		drm_err(&gt->i915->drm,
+			"Failed to terminate the arb session on resume\n");
+	} else {
+		pxp->global_state_in_suspend = false;
+	}
+
+	mutex_unlock(&pxp->mutex);
+
+	if (!ret) {
+		ret = intel_pxp_wait_for_termination_completion(pxp);
+		if (ret) {
+			drm_err(&gt->i915->drm,
+				"Didn't recevive the PXP termination irq\n");
+		}
+	}
+
+	return ret;
+}
+
+void intel_pxp_runtime_suspend(struct intel_pxp *pxp)
+{
+	__pxp_suspend(pxp);
+}
+
+int intel_pxp_runtime_resume(struct intel_pxp *pxp)
+{
+	struct intel_gt *gt = pxp_to_gt(pxp);
+	int ret;
+
+	if (!intel_pxp_is_enabled(pxp))
+		return 0;
+
+	intel_pxp_irq_enable(pxp);
+	pxp->global_state_in_suspend = false;
+
+	/*
+	 * if the display loses power during runtime suspend it will cause the
+	 * session to become invalid, so to be safe we always re-create it. The
+	 * MEI module is still bound, so this is the same as a teardown event,
+	 * hence we can just pretend we received the irq.
+	 */
+	intel_pxp_mark_termination_in_progress(pxp);
+
+	spin_lock_irq(&gt->irq_lock);
+	intel_pxp_irq_handler(pxp, GEN12_DISPLAY_PXP_STATE_TERMINATED_INTERRUPT);
+	spin_unlock_irq(&gt->irq_lock);
+
+	return ret;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
new file mode 100644
index 000000000000..9feb84c0aa14
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
@@ -0,0 +1,33 @@
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
+int intel_pxp_pm_resume(struct intel_pxp *pxp);
+void intel_pxp_runtime_suspend(struct intel_pxp *pxp);
+int intel_pxp_runtime_resume(struct intel_pxp *pxp);
+#else
+static inline void intel_pxp_pm_prepare_suspend(struct intel_pxp *pxp)
+{
+}
+static inline int intel_pxp_pm_resume(struct intel_pxp *pxp)
+{
+	return 0;
+}
+static inline void intel_pxp_runtime_suspend(struct intel_pxp *pxp)
+{
+}
+static inline int intel_pxp_runtime_resume(struct intel_pxp *pxp)
+{
+	return 0;
+}
+#endif
+
+#endif /* __INTEL_PXP_PM_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
index 488006a0cf39..bb981d38c2fe 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
@@ -25,8 +25,14 @@ static bool intel_pxp_session_is_in_play(struct intel_pxp *pxp, u32 id)
 	intel_wakeref_t wakeref;
 	u32 sip = 0;
 
-	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
-		sip = intel_uncore_read(gt->uncore, GEN12_KCR_SIP);
+	/* if we're suspended the session is considered off */
+	wakeref = intel_runtime_pm_get_if_in_use(gt->uncore->rpm);
+	if (!wakeref)
+		return false;
+
+	sip = intel_uncore_read(gt->uncore, GEN12_KCR_SIP);
+
+	intel_runtime_pm_put(gt->uncore->rpm, wakeref);
 
 	return sip & BIT(id);
 }
@@ -43,12 +49,18 @@ static int pxp_wait_for_session_state(struct intel_pxp *pxp, u32 id, bool in_pla
 	u32 mask = BIT(id);
 	int ret;
 
-	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
-		ret = intel_wait_for_register(gt->uncore,
-					      GEN12_KCR_SIP,
-					      mask,
-					      in_play ? mask : 0,
-					      100);
+	/* if we're suspended the session is considered off */
+	wakeref = intel_runtime_pm_get_if_in_use(gt->uncore->rpm);
+	if (!wakeref)
+		return in_play ? -ENODEV : 0;
+
+	ret = intel_wait_for_register(gt->uncore,
+				      GEN12_KCR_SIP,
+				      mask,
+				      in_play ? mask : 0,
+				      100);
+
+	intel_runtime_pm_put(gt->uncore->rpm, wakeref);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index b84f675c588e..e1d3fe28535d 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -91,11 +91,17 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
 {
 	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
 	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
+	intel_wakeref_t wakeref;
 	int ret = 0;
 
 	pxp->pxp_component = data;
 	pxp->pxp_component->tee_dev = tee_kdev;
 
+	/* if we are suspended, the session will be re-created on resume */
+	wakeref = intel_runtime_pm_get_if_in_use(&i915->runtime_pm);
+	if (!wakeref)
+		return 0;
+
 	mutex_lock(&pxp->mutex);
 
 	/* Create arb session only if tee is ready, during system boot or sleep/resume */
@@ -120,6 +126,8 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
 		return ret;
 	}
 
+	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
index 5e5ee7225a72..6f659a6f8f1c 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
@@ -22,6 +22,7 @@ struct intel_pxp {
 	struct mutex mutex;
 	bool arb_is_in_play;
 	bool global_state_attacked;
+	bool global_state_in_suspend;
 	struct completion termination;
 
 	struct work_struct irq_work;
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
