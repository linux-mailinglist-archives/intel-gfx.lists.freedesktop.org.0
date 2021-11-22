Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B80844588A5
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 05:33:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D61EA6E0D6;
	Mon, 22 Nov 2021 04:33:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 469CC6E0D6
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 04:33:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10175"; a="258537073"
X-IronPort-AV: E=Sophos;i="5.87,253,1631602800"; d="scan'208";a="258537073"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2021 20:33:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,253,1631602800"; d="scan'208";a="508798619"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by orsmga008.jf.intel.com with ESMTP; 21 Nov 2021 20:33:21 -0800
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Nov 2021 09:57:30 +0530
Message-Id: <20211122042730.3743330-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/pxp: Trybot - run CI with PXP and
 MEI_PXP enabled
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

Please do not merge this is trybot patch to run CI with PXP
and MEI PXP enabled to get premegre results for
https://patchwork.freedesktop.org/series/96658/#rev3 change.

Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/Kconfig.debug      |  2 ++
 drivers/gpu/drm/i915/gt/intel_gt_pm.c   |  7 +++--
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c | 37 +++++++++++++++++--------
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h | 19 +++++++++++--
 4 files changed, 48 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
index e7fd3e76f8a2..fa181693184b 100644
--- a/drivers/gpu/drm/i915/Kconfig.debug
+++ b/drivers/gpu/drm/i915/Kconfig.debug
@@ -48,6 +48,8 @@ config DRM_I915_DEBUG
 	select DRM_I915_DEBUG_RUNTIME_PM
 	select DRM_I915_SW_FENCE_DEBUG_OBJECTS
 	select DRM_I915_SELFTEST
+	select INTEL_MEI_PXP # used by igt/gem_pxp
+	select DRM_I915_PXP # used by igt/gem_pxp
 	select BROKEN # for prototype uAPI
 	default n
 	help
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index b4a8594bc46c..c0fa41e4c803 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -303,7 +303,7 @@ void intel_gt_suspend_prepare(struct intel_gt *gt)
 	user_forcewake(gt, true);
 	wait_for_suspend(gt);
 
-	intel_pxp_suspend(&gt->pxp, false);
+	intel_pxp_suspend_prepare(&gt->pxp);
 }
 
 static suspend_state_t pm_suspend_target(void)
@@ -328,6 +328,7 @@ void intel_gt_suspend_late(struct intel_gt *gt)
 	GEM_BUG_ON(gt->awake);
 
 	intel_uc_suspend(&gt->uc);
+	intel_pxp_suspend(&gt->pxp);
 
 	/*
 	 * On disabling the device, we want to turn off HW access to memory
@@ -355,7 +356,7 @@ void intel_gt_suspend_late(struct intel_gt *gt)
 
 void intel_gt_runtime_suspend(struct intel_gt *gt)
 {
-	intel_pxp_suspend(&gt->pxp, true);
+	intel_pxp_runtime_suspend(&gt->pxp);
 	intel_uc_runtime_suspend(&gt->uc);
 
 	GT_TRACE(gt, "\n");
@@ -373,7 +374,7 @@ int intel_gt_runtime_resume(struct intel_gt *gt)
 	if (ret)
 		return ret;
 
-	intel_pxp_resume(&gt->pxp);
+	intel_pxp_runtime_resume(&gt->pxp);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
index 23fd86de5a24..6a7d4e2ee138 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
@@ -7,26 +7,29 @@
 #include "intel_pxp_irq.h"
 #include "intel_pxp_pm.h"
 #include "intel_pxp_session.h"
+#include "i915_drv.h"
 
-void intel_pxp_suspend(struct intel_pxp *pxp, bool runtime)
+void intel_pxp_suspend_prepare(struct intel_pxp *pxp)
 {
 	if (!intel_pxp_is_enabled(pxp))
 		return;
 
 	pxp->arb_is_valid = false;
 
-	/*
-	 * Contexts using protected objects keep a runtime PM reference, so we
-	 * can only runtime suspend when all of them have been either closed
-	 * or banned. Therefore, there is no need to invalidate in that
-	 * scenario.
-	 */
-	if (!runtime)
-		intel_pxp_invalidate(pxp);
+	intel_pxp_invalidate(pxp);
+}
 
-	intel_pxp_fini_hw(pxp);
+void intel_pxp_suspend(struct intel_pxp *pxp)
+{
+	intel_wakeref_t wakeref;
 
-	pxp->hw_state_invalidated = false;
+	if (!intel_pxp_is_enabled(pxp))
+		return;
+
+	with_intel_runtime_pm(&pxp_to_gt(pxp)->i915->runtime_pm, wakeref) {
+		intel_pxp_fini_hw(pxp);
+		pxp->hw_state_invalidated = false;
+	}
 }
 
 void intel_pxp_resume(struct intel_pxp *pxp)
@@ -44,3 +47,15 @@ void intel_pxp_resume(struct intel_pxp *pxp)
 
 	intel_pxp_init_hw(pxp);
 }
+
+void intel_pxp_runtime_suspend(struct intel_pxp *pxp)
+{
+	if (!intel_pxp_is_enabled(pxp))
+		return;
+
+	pxp->arb_is_valid = false;
+
+	intel_pxp_fini_hw(pxp);
+
+	pxp->hw_state_invalidated = false;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
index c89e97a0c3d0..16990a3f2f85 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
@@ -9,16 +9,29 @@
 #include "intel_pxp_types.h"
 
 #ifdef CONFIG_DRM_I915_PXP
-void intel_pxp_suspend(struct intel_pxp *pxp, bool runtime);
+void intel_pxp_suspend_prepare(struct intel_pxp *pxp);
+void intel_pxp_suspend(struct intel_pxp *pxp);
 void intel_pxp_resume(struct intel_pxp *pxp);
+void intel_pxp_runtime_suspend(struct intel_pxp *pxp);
 #else
-static inline void intel_pxp_suspend(struct intel_pxp *pxp, bool runtime)
+static inline void intel_pxp_suspend_prepare(struct intel_pxp *pxp)
+{
+}
+
+static inline void intel_pxp_suspend(struct intel_pxp *pxp)
 {
 }
 
 static inline void intel_pxp_resume(struct intel_pxp *pxp)
 {
 }
-#endif
 
+static inline void intel_pxp_runtime_suspend(struct intel_pxp *pxp)
+{
+}
+#endif
+static inline void intel_pxp_runtime_resume(struct intel_pxp *pxp)
+{
+	intel_pxp_resume(pxp);
+}
 #endif /* __INTEL_PXP_PM_H__ */
-- 
2.31.1

