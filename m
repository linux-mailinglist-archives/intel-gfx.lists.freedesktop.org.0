Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F60F5F602F
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Oct 2022 06:36:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D437B10E7D9;
	Thu,  6 Oct 2022 04:36:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C25110E7DA
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Oct 2022 04:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665030993; x=1696566993;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=SO6KsFfBS/bIPpsnFUnSfcQ3xTR96HTnKsFpKcdNK4E=;
 b=CsqOqHposD30Vz4DMT2hS0Tb5nYjXmZwPI4OPaDV/nETf1Nm9NtOHTXk
 yZTcIhZ1sZebbigRk0wo5HIEUHB5jdoDbbjsWCdvXxWAlsU3CU2ZKqGWd
 5/DnsSJAuXVGfKHcX4/jO7Y29ypzi/qGHStDgbTGSzh75eMCp0lpD0YdR
 ZqChI1gIAhfgPUjhz7xmWBFMBjHtkA4mn+6HPoQqDPwjXQ7aRp29tOLry
 CLo26D9s/3HYyBtUbZhrQ+ZBVJM0oHEjsOOyJV1FJ7zIQgPzrc4hWsmiv
 d8mO4ihqY/c3ITJRedL4dpoi2ZjKP7KMVHub4zyarFbC77n2ZiyXwgMVC Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="290599854"
X-IronPort-AV: E=Sophos;i="5.95,162,1661842800"; d="scan'208";a="290599854"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 21:36:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="953462916"
X-IronPort-AV: E=Sophos;i="5.95,162,1661842800"; d="scan'208";a="953462916"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga005.fm.intel.com with ESMTP; 05 Oct 2022 21:36:31 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Oct 2022 21:38:33 -0700
Message-Id: <20221006043834.606220-8-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221006043834.606220-1-alan.previn.teres.alexis@intel.com>
References: <20221006043834.606220-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 7/7] drm/i915/pxp: Make intel_pxp power
 management implicitly sort PXP-owning-GT
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

Make PXP suspend/ resume functions implicitly verify if the caller
is the PXP-owning-GT. PXP control structure still hangs off the intel_gt
structure that manages has gt-level power management events. Thus change
the input param to intel_gt structure and let PXP implicitly take the
expected action only if triggered from the PXP-owning-GT.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm.c   | 10 +++---
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c | 44 ++++++++++++++++++++-----
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h | 22 ++++++-------
 3 files changed, 51 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index f553e2173bda..0f477dfb392d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -276,7 +276,7 @@ int intel_gt_resume(struct intel_gt *gt)
 
 	intel_uc_resume(&gt->uc);
 
-	intel_pxp_resume(&gt->pxp);
+	intel_pxp_resume(gt);
 
 	user_forcewake(gt, false);
 
@@ -312,7 +312,7 @@ void intel_gt_suspend_prepare(struct intel_gt *gt)
 	user_forcewake(gt, true);
 	wait_for_suspend(gt);
 
-	intel_pxp_suspend_prepare(&gt->pxp);
+	intel_pxp_suspend_prepare(gt);
 }
 
 static suspend_state_t pm_suspend_target(void)
@@ -337,7 +337,7 @@ void intel_gt_suspend_late(struct intel_gt *gt)
 	GEM_BUG_ON(gt->awake);
 
 	intel_uc_suspend(&gt->uc);
-	intel_pxp_suspend(&gt->pxp);
+	intel_pxp_suspend(gt);
 
 	/*
 	 * On disabling the device, we want to turn off HW access to memory
@@ -365,7 +365,7 @@ void intel_gt_suspend_late(struct intel_gt *gt)
 
 void intel_gt_runtime_suspend(struct intel_gt *gt)
 {
-	intel_pxp_runtime_suspend(&gt->pxp);
+	intel_pxp_runtime_suspend(gt);
 	intel_uc_runtime_suspend(&gt->uc);
 
 	GT_TRACE(gt, "\n");
@@ -383,7 +383,7 @@ int intel_gt_runtime_resume(struct intel_gt *gt)
 	if (ret)
 		return ret;
 
-	intel_pxp_runtime_resume(&gt->pxp);
+	intel_pxp_runtime_resume(gt);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
index 5f713ac5c3ce..81e03c4eea71 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
@@ -9,34 +9,54 @@
 #include "intel_pxp_session.h"
 #include "i915_drv.h"
 
-void intel_pxp_suspend_prepare(struct intel_pxp *pxp)
+void intel_pxp_suspend_prepare(struct intel_gt *gt)
 {
-	if (!intel_pxp_is_enabled(pxp_to_gt(pxp)->i915))
+	struct intel_pxp *pxp;
+
+	if (!intel_pxp_is_enabled(gt->i915))
+		return;
+
+	if (!gt->pxptee_iface_owner)
 		return;
 
+	pxp = &gt->pxp;
+
 	pxp->arb_is_valid = false;
 
 	intel_pxp_invalidate(pxp);
 }
 
-void intel_pxp_suspend(struct intel_pxp *pxp)
+void intel_pxp_suspend(struct intel_gt *gt)
 {
+	struct intel_pxp *pxp;
 	intel_wakeref_t wakeref;
 
-	if (!intel_pxp_is_enabled(pxp_to_gt(pxp)->i915))
+	if (!intel_pxp_is_enabled(gt->i915))
 		return;
 
-	with_intel_runtime_pm(&pxp_to_gt(pxp)->i915->runtime_pm, wakeref) {
+	if (!gt->pxptee_iface_owner)
+		return;
+
+	pxp = &gt->pxp;
+
+	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref) {
 		intel_pxp_fini_hw(pxp);
 		pxp->hw_state_invalidated = false;
 	}
 }
 
-void intel_pxp_resume(struct intel_pxp *pxp)
+void intel_pxp_resume(struct intel_gt *gt)
 {
-	if (!intel_pxp_is_enabled(pxp_to_gt(pxp)->i915))
+	struct intel_pxp *pxp;
+
+	if (!intel_pxp_is_enabled(gt->i915))
+		return;
+
+	if (!gt->pxptee_iface_owner)
 		return;
 
+	pxp = &gt->pxp;
+
 	/*
 	 * The PXP component gets automatically unbound when we go into S3 and
 	 * re-bound after we come out, so in that scenario we can defer the
@@ -48,11 +68,17 @@ void intel_pxp_resume(struct intel_pxp *pxp)
 	intel_pxp_init_hw(pxp);
 }
 
-void intel_pxp_runtime_suspend(struct intel_pxp *pxp)
+void intel_pxp_runtime_suspend(struct intel_gt *gt)
 {
-	if (!intel_pxp_is_enabled(pxp_to_gt(pxp)->i915))
+	struct intel_pxp *pxp;
+
+	if (!intel_pxp_is_enabled(gt->i915))
+		return;
+
+	if (!gt->pxptee_iface_owner)
 		return;
 
+	pxp = &gt->pxp;
 	pxp->arb_is_valid = false;
 
 	intel_pxp_fini_hw(pxp);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
index 586be769104f..c87d54699793 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
@@ -6,32 +6,32 @@
 #ifndef __INTEL_PXP_PM_H__
 #define __INTEL_PXP_PM_H__
 
-struct intel_pxp;
+struct intel_gt;
 
 #ifdef CONFIG_DRM_I915_PXP
-void intel_pxp_suspend_prepare(struct intel_pxp *pxp);
-void intel_pxp_suspend(struct intel_pxp *pxp);
-void intel_pxp_resume(struct intel_pxp *pxp);
-void intel_pxp_runtime_suspend(struct intel_pxp *pxp);
+void intel_pxp_suspend_prepare(struct intel_gt *gt);
+void intel_pxp_suspend(struct intel_gt *gt);
+void intel_pxp_resume(struct intel_gt *gt);
+void intel_pxp_runtime_suspend(struct intel_gt *gt);
 #else
-static inline void intel_pxp_suspend_prepare(struct intel_pxp *pxp)
+static inline void intel_pxp_suspend_prepare(struct intel_gt *gt)
 {
 }
 
-static inline void intel_pxp_suspend(struct intel_pxp *pxp)
+static inline void intel_pxp_suspend(struct intel_gt *gt)
 {
 }
 
-static inline void intel_pxp_resume(struct intel_pxp *pxp)
+static inline void intel_pxp_resume(struct intel_gt *gt)
 {
 }
 
-static inline void intel_pxp_runtime_suspend(struct intel_pxp *pxp)
+static inline void intel_pxp_runtime_suspend(struct intel_gt *gt)
 {
 }
 #endif
-static inline void intel_pxp_runtime_resume(struct intel_pxp *pxp)
+static inline void intel_pxp_runtime_resume(struct intel_gt *gt)
 {
-	intel_pxp_resume(pxp);
+	intel_pxp_resume(gt);
 }
 #endif /* __INTEL_PXP_PM_H__ */
-- 
2.34.1

