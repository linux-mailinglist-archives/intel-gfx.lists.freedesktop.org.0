Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4199540502C
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 14:33:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C90E16E871;
	Thu,  9 Sep 2021 12:32:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CBFB6E883;
 Thu,  9 Sep 2021 12:32:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10101"; a="208005472"
X-IronPort-AV: E=Sophos;i="5.85,280,1624345200"; d="scan'208";a="208005472"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 05:32:07 -0700
X-IronPort-AV: E=Sophos;i="5.85,280,1624345200"; d="scan'208";a="470057776"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 05:32:06 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
	"Huang, Sean Z" <sean.z.huang@intel.com>, Huang@freedesktop.org,
	Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
	Chris Wilson <chris@chris-wilson.co.uk>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Thu,  9 Sep 2021 05:29:10 -0700
Message-Id: <20210909122915.971652-13-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210909122915.971652-1-daniele.ceraolospurio@intel.com>
References: <20210909122915.971652-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 12/17] drm/i915/pxp: Enable PXP power
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: "Huang, Sean Z" <sean.z.huang@intel.com>

During the power event S3+ sleep/resume, hardware will lose all the
encryption keys for every hardware session, even though the
session state might still be marked as alive after resume. Therefore,
we should consider the session as dead on suspend and invalidate all the
objects. The session will be automatically restarted on the first
protected submission on resume.

v2: runtime suspend also invalidates the keys
v3: fix return codes, simplify rpm ops (Chris), use the new worker func
v4: invalidate the objects on suspend, don't re-create the arb sesson on
resume (delayed to first submission).
v5: move irq changes back to irq patch (Rodrigo)

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/Makefile                |  1 +
 drivers/gpu/drm/i915/gt/intel_gt_pm.c        | 15 +++++++-
 drivers/gpu/drm/i915/i915_drv.c              |  2 +
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.c     |  1 +
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c      | 40 ++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h      | 23 +++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c | 38 ++++++++++++++-----
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     |  9 +++++
 8 files changed, 118 insertions(+), 11 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index b22b8c195bb8..366e82cec44d 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -286,6 +286,7 @@ i915-$(CONFIG_DRM_I915_PXP) += \
 	pxp/intel_pxp.o \
 	pxp/intel_pxp_cmd.o \
 	pxp/intel_pxp_irq.o \
+	pxp/intel_pxp_pm.o \
 	pxp/intel_pxp_session.o \
 	pxp/intel_pxp_tee.o
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index dea8e2479897..0fd1acab68c0 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -18,6 +18,7 @@
 #include "intel_rc6.h"
 #include "intel_rps.h"
 #include "intel_wakeref.h"
+#include "pxp/intel_pxp_pm.h"
 
 static void user_forcewake(struct intel_gt *gt, bool suspend)
 {
@@ -262,6 +263,8 @@ int intel_gt_resume(struct intel_gt *gt)
 
 	intel_uc_resume(&gt->uc);
 
+	intel_pxp_resume(&gt->pxp);
+
 	user_forcewake(gt, false);
 
 out_fw:
@@ -296,6 +299,7 @@ void intel_gt_suspend_prepare(struct intel_gt *gt)
 	user_forcewake(gt, true);
 	wait_for_suspend(gt);
 
+	intel_pxp_suspend(&gt->pxp);
 	intel_uc_suspend(&gt->uc);
 }
 
@@ -346,6 +350,7 @@ void intel_gt_suspend_late(struct intel_gt *gt)
 
 void intel_gt_runtime_suspend(struct intel_gt *gt)
 {
+	intel_pxp_suspend(&gt->pxp);
 	intel_uc_runtime_suspend(&gt->uc);
 
 	GT_TRACE(gt, "\n");
@@ -353,11 +358,19 @@ void intel_gt_runtime_suspend(struct intel_gt *gt)
 
 int intel_gt_runtime_resume(struct intel_gt *gt)
 {
+	int ret;
+
 	GT_TRACE(gt, "\n");
 	intel_gt_init_swizzling(gt);
 	intel_ggtt_restore_fences(gt->ggtt);
 
-	return intel_uc_runtime_resume(&gt->uc);
+	ret = intel_uc_runtime_resume(&gt->uc);
+	if (ret)
+		return ret;
+
+	intel_pxp_resume(&gt->pxp);
+
+	return 0;
 }
 
 static ktime_t __intel_gt_get_awake_time(const struct intel_gt *gt)
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 59fb4c710c8c..d5bcc70a22d4 100644
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
index 340f20d130a8..9e5847c653f2 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
@@ -9,6 +9,7 @@
 #include "gt/intel_gt_irq.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
+#include "intel_runtime_pm.h"
 
 /**
  * intel_pxp_irq_handler - Handles PXP interrupts.
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
new file mode 100644
index 000000000000..4507756b2977
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
@@ -0,0 +1,40 @@
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
+	/* invalidate protected objects */
+	intel_pxp_invalidate(pxp);
+
+	intel_pxp_fini_hw(pxp);
+
+	pxp->hw_state_invalidated = false;
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
+	 * hw init to the bind call.
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
index a95cc443a48d..d02732f04757 100644
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
@@ -135,6 +142,7 @@ void intel_pxp_session_work(struct work_struct *work)
 {
 	struct intel_pxp *pxp = container_of(work, typeof(*pxp), session_work);
 	struct intel_gt *gt = pxp_to_gt(pxp);
+	intel_wakeref_t wakeref;
 	u32 events = 0;
 
 	spin_lock_irq(&gt->irq_lock);
@@ -147,6 +155,14 @@ void intel_pxp_session_work(struct work_struct *work)
 	if (events & PXP_INVAL_REQUIRED)
 		intel_pxp_invalidate(pxp);
 
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
@@ -154,4 +170,6 @@ void intel_pxp_session_work(struct work_struct *work)
 
 	if (events & PXP_TERMINATION_COMPLETE)
 		pxp_terminate_complete(pxp);
+
+	intel_runtime_pm_put(gt->uncore->rpm, wakeref);
 }
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index 3fc3ddfd02b3..49508f31dcb7 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -78,16 +78,25 @@ static int intel_pxp_tee_io_message(struct intel_pxp *pxp,
 static int i915_pxp_tee_component_bind(struct device *i915_kdev,
 				       struct device *tee_kdev, void *data)
 {
+	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
 	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
+	intel_wakeref_t wakeref;
 
 	mutex_lock(&pxp->tee_mutex);
 	pxp->pxp_component = data;
 	pxp->pxp_component->tee_dev = tee_kdev;
 	mutex_unlock(&pxp->tee_mutex);
 
+	/* if we are suspended, the HW will be re-initialized on resume */
+	wakeref = intel_runtime_pm_get_if_in_use(&i915->runtime_pm);
+	if (!wakeref)
+		return 0;
+
 	/* the component is required to fully start the PXP HW */
 	intel_pxp_init_hw(pxp);
 
+	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+
 	return 0;
 }
 
-- 
2.25.1

