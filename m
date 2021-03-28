Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A2B34BFAE
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Mar 2021 00:58:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0F436E17A;
	Sun, 28 Mar 2021 22:58:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39E886E05C
 for <intel-gfx@lists.freedesktop.org>; Sun, 28 Mar 2021 22:57:53 +0000 (UTC)
IronPort-SDR: pd5qVH4PVlParAbhoQM6BbW4JiIb6GP50l2p4+Wqs0CCGXk0KkY901ZoCLpGn2uRqbjMeRRflh
 LrwekMUBp4YA==
X-IronPort-AV: E=McAfee;i="6000,8403,9937"; a="255444004"
X-IronPort-AV: E=Sophos;i="5.81,285,1610438400"; d="scan'208";a="255444004"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2021 15:57:53 -0700
IronPort-SDR: PO2eMT7Y0ECbbcDLb6MGTdWOEvaLPHuzIPEHgs90Kt5FPQ2bJhjV3tHQ2vKcsTUWUWguLylos7
 Xtgd5CUT150w==
X-IronPort-AV: E=Sophos;i="5.81,285,1610438400"; d="scan'208";a="376213787"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2021 15:57:52 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 28 Mar 2021 15:57:02 -0700
Message-Id: <20210328225709.18541-11-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210328225709.18541-1-daniele.ceraolospurio@intel.com>
References: <20210328225709.18541-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 10/16] drm/i915/pxp: Enable PXP power
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
v3: fix return codes, simplify rpm ops (Chris), use the new worker func

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/Makefile                |  1 +
 drivers/gpu/drm/i915/gt/intel_gt_pm.c        | 14 +++++++-
 drivers/gpu/drm/i915/i915_drv.c              |  2 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.c     | 11 +++---
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c      | 37 +++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h      | 23 ++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c | 38 ++++++++++++++------
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     |  8 +++++
 8 files changed, 119 insertions(+), 15 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 9e6e61aca95f..f6d7e11e0e90 100644
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
index aef3084e8b16..9ed8c17dda0d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -19,6 +19,7 @@
 #include "intel_rc6.h"
 #include "intel_rps.h"
 #include "intel_wakeref.h"
+#include "pxp/intel_pxp_pm.h"
 
 static void user_forcewake(struct intel_gt *gt, bool suspend)
 {
@@ -265,6 +266,8 @@ int intel_gt_resume(struct intel_gt *gt)
 
 	intel_uc_resume(&gt->uc);
 
+	intel_pxp_resume(&gt->pxp);
+
 	user_forcewake(gt, false);
 
 out_fw:
@@ -299,6 +302,7 @@ void intel_gt_suspend_prepare(struct intel_gt *gt)
 	user_forcewake(gt, true);
 	wait_for_suspend(gt);
 
+	intel_pxp_suspend(&gt->pxp);
 	intel_uc_suspend(&gt->uc);
 }
 
@@ -349,6 +353,7 @@ void intel_gt_suspend_late(struct intel_gt *gt)
 
 void intel_gt_runtime_suspend(struct intel_gt *gt)
 {
+	intel_pxp_suspend(&gt->pxp);
 	intel_uc_runtime_suspend(&gt->uc);
 
 	GT_TRACE(gt, "\n");
@@ -356,11 +361,18 @@ void intel_gt_runtime_suspend(struct intel_gt *gt)
 
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
+		intel_pxp_resume(&gt->pxp);
+
+	return ret;
 }
 
 static ktime_t __intel_gt_get_awake_time(const struct intel_gt *gt)
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index b2018e85afc2..02d5b2b6ee39 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -67,6 +67,8 @@
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_rc6.h"
 
+#include "pxp/intel_pxp_pm.h"
+
 #include "i915_debugfs.h"
 #include "i915_drv.h"
 #include "i915_ioc32.h"
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
index 196449243515..2a58ce1fa788 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
@@ -9,6 +9,7 @@
 #include "gt/intel_gt_irq.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
+#include "intel_runtime_pm.h"
 
 /**
  * intel_pxp_irq_handler - Handles PXP interrupts.
@@ -62,11 +63,13 @@ void intel_pxp_irq_enable(struct intel_pxp *pxp)
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
index 000000000000..bd2a8d550419
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
@@ -0,0 +1,37 @@
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
+void intel_pxp_suspend(struct intel_pxp *pxp)
+{
+	if (!intel_pxp_is_enabled(pxp))
+		return;
+
+	pxp->arb_is_valid = false;
+
+	intel_pxp_fini_hw(pxp);
+
+	pxp->global_state_attacked = false;
+}
+
+void intel_pxp_resume(struct intel_pxp *pxp)
+{
+	if (!intel_pxp_is_enabled(pxp))
+		return;
+
+	/*
+	 * The PXP component gets automatically unbound when we go into S3 and
+	 * re-bound after we come out, so in that scenario we can defer the
+	 * termination and re-creation of the arb session to the bind call.
+	 */
+	if (!pxp->pxp_component)
+		return;
+
+	intel_pxp_init_hw(pxp);
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
new file mode 100644
index 000000000000..6f488789db6a
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
@@ -0,0 +1,23 @@
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
+void intel_pxp_suspend(struct intel_pxp *pxp);
+void intel_pxp_resume(struct intel_pxp *pxp);
+#else
+static inline void intel_pxp_suspend(struct intel_pxp *pxp)
+{
+}
+static inline void intel_pxp_resume(struct intel_pxp *pxp)
+{
+}
+#endif
+
+#endif /* __INTEL_PXP_PM_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
index e751122cb24a..ef7c891cef14 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
@@ -21,29 +21,36 @@
 
 static bool intel_pxp_session_is_in_play(struct intel_pxp *pxp, u32 id)
 {
-	struct intel_gt *gt = pxp_to_gt(pxp);
+	struct intel_uncore *uncore = pxp_to_gt(pxp)->uncore;
 	intel_wakeref_t wakeref;
 	u32 sip = 0;
 
-	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
-		sip = intel_uncore_read(gt->uncore, GEN12_KCR_SIP);
+	/* if we're suspended the session is considered off */
+	with_intel_runtime_pm_if_in_use(uncore->rpm, wakeref)
+		sip = intel_uncore_read(uncore, GEN12_KCR_SIP);
 
 	return sip & BIT(id);
 }
 
 static int pxp_wait_for_session_state(struct intel_pxp *pxp, u32 id, bool in_play)
 {
-	struct intel_gt *gt = pxp_to_gt(pxp);
+	struct intel_uncore *uncore = pxp_to_gt(pxp)->uncore;
 	intel_wakeref_t wakeref;
 	u32 mask = BIT(id);
 	int ret;
 
-	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
-		ret = intel_wait_for_register(gt->uncore,
-					      GEN12_KCR_SIP,
-					      mask,
-					      in_play ? mask : 0,
-					      100);
+	/* if we're suspended the session is considered off */
+	wakeref = intel_runtime_pm_get_if_in_use(uncore->rpm);
+	if (!wakeref)
+		return in_play ? -ENODEV : 0;
+
+	ret = intel_wait_for_register(uncore,
+				      GEN12_KCR_SIP,
+				      mask,
+				      in_play ? mask : 0,
+				      100);
+
+	intel_runtime_pm_put(uncore->rpm, wakeref);
 
 	return ret;
 }
@@ -132,6 +139,7 @@ void intel_pxp_session_work(struct work_struct *work)
 {
 	struct intel_pxp *pxp = container_of(work, typeof(*pxp), session_work);
 	struct intel_gt *gt = pxp_to_gt(pxp);
+	intel_wakeref_t wakeref;
 	u32 events = 0;
 
 	spin_lock_irq(&gt->irq_lock);
@@ -141,6 +149,14 @@ void intel_pxp_session_work(struct work_struct *work)
 	if (!events)
 		return;
 
+	/*
+	 * If we're processing an event while suspending then don't bother,
+	 * we're going to re-init everything on resume anyway.
+	 */
+	wakeref = intel_runtime_pm_get_if_in_use(gt->uncore->rpm);
+	if (!wakeref)
+		return;
+
 	if (events & PXP_TERMINATION_REQUEST) {
 		events &= ~PXP_TERMINATION_COMPLETE;
 		pxp_terminate(pxp);
@@ -148,4 +164,6 @@ void intel_pxp_session_work(struct work_struct *work)
 
 	if (events & PXP_TERMINATION_COMPLETE)
 		pxp_terminate_complete(pxp);
+
+	intel_runtime_pm_put(gt->uncore->rpm, wakeref);
 }
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index 6d82531af11c..524a4c83179a 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -89,11 +89,17 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
 {
 	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
 	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
+	intel_wakeref_t wakeref;
 	int ret;
 
 	pxp->pxp_component = data;
 	pxp->pxp_component->tee_dev = tee_kdev;
 
+	/* if we are suspended, the HW will be re-initialized on resume */
+	wakeref = intel_runtime_pm_get_if_in_use(&i915->runtime_pm);
+	if (!wakeref)
+		return 0;
+
 	/* the component is required to fully start the PXP HW */
 	intel_pxp_init_hw(pxp);
 	ret = intel_pxp_wait_for_arb_start(pxp);
@@ -103,6 +109,8 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
 		pxp->pxp_component = NULL;
 	}
 
+	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+
 	return ret;
 }
 
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
