Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 978147B731F
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 23:12:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B38610E321;
	Tue,  3 Oct 2023 21:12:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4AF610E31D
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 21:12:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696367559; x=1727903559;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dVo0e7yl8ykNAySGrTdMC0tudo5o6JlnrJYn4lMSMGg=;
 b=Bjiku3xRghjBLMcNuuf4TsPl3SoR/db7bsmAHVOkiURwMwk5QGrbtJ4r
 uJdQO7FW2ZYq3A9Y+MRM7urGxRpqY/asEg8wFMlRi6zfuC+2sPzLs+md8
 cQkOMaVyqs7eoOrzUeWYvt3oThtKmHNM+cUGDGDY0U7XeYEIavtFY/ilp
 3a4Em8y3C6+Ct7NvCtsZjsrVRet1Q/rsG9y9RagtPjyI5kboEMnWWD/+t
 H5kfzxnvcKKmMENBHrfcdWVWOd+PmUEkVBVCR6z9mEqq8Cmcp0en/VbFz
 YspX2Fa42GW/C90hUy/QodWSNVhM79+BqOGEMqH+gtb3Pu43ECW4PuFON g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="449472899"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="449472899"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 14:12:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="821399835"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="821399835"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 14:12:37 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Oct 2023 14:01:56 -0700
Message-Id: <20231003210156.1172732-3-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231003210156.1172732-1-jonathan.cavitt@intel.com>
References: <20231003210156.1172732-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 3/3] drm/i915: No TLB invalidation on wedged
 or suspended GT
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, jonathan.cavitt@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In case of GT is suspended or wedged, don't allow submission of new TLB
invalidation request and cancel all pending requests. The TLB entries
will be invalidated either during GuC reload or on system resume.

Signed-off-by: Fei Yang <fei.yang@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
CC: John Harrison <john.c.harrison@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.h            | 26 ++++++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  1 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 41 +++++++++++++++----
 drivers/gpu/drm/i915/i915_driver.c            |  5 +++
 4 files changed, 64 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index 970bedf6b78a7..71a0e376ded40 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -9,6 +9,7 @@
 #include "intel_engine_types.h"
 #include "intel_gt_types.h"
 #include "intel_reset.h"
+#include "i915_drv.h"
 
 struct drm_i915_private;
 struct drm_printer;
@@ -179,4 +180,29 @@ enum i915_map_type intel_gt_coherent_map_type(struct intel_gt *gt,
 void intel_gt_bind_context_set_ready(struct intel_gt *gt);
 void intel_gt_bind_context_set_unready(struct intel_gt *gt);
 bool intel_gt_is_bind_context_ready(struct intel_gt *gt);
+
+static inline void intel_tlb_suspend(struct drm_i915_private *i915)
+{
+	struct intel_gt *gt;
+	int i;
+
+	if (!HAS_GUC_TLB_INVALIDATION(i915))
+		return;
+	for_each_gt(gt, i915, i)
+		wake_up_all_tlb_invalidate(&gt->uc.guc);
+}
+
+static inline void intel_tlb_resume(struct drm_i915_private *i915)
+{
+	struct intel_gt *gt;
+	int i;
+
+	if (!HAS_GUC_TLB_INVALIDATION(i915))
+		return;
+	for_each_gt(gt, i915, i) {
+		intel_guc_invalidate_tlb_full(&gt->uc.guc);
+		intel_guc_invalidate_tlb(&gt->uc.guc);
+	}
+}
+
 #endif /* __INTEL_GT_H__ */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 636edf598946c..e2491f489f1bc 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -536,4 +536,5 @@ void intel_guc_dump_time_info(struct intel_guc *guc, struct drm_printer *p);
 
 int intel_guc_sched_disable_gucid_threshold_max(struct intel_guc *guc);
 
+void wake_up_all_tlb_invalidate(struct intel_guc *guc);
 #endif
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 872014a801c7e..20e9076cf099e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -32,6 +32,7 @@
 
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_irq.h"
 #include "i915_trace.h"
 
 /**
@@ -1796,13 +1797,23 @@ static void __guc_reset_context(struct intel_context *ce, intel_engine_mask_t st
 	intel_context_put(parent);
 }
 
-void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stalled)
+void wake_up_all_tlb_invalidate(struct intel_guc *guc)
 {
 	struct intel_guc_tlb_wait *wait;
+	unsigned long i;
+
+	xa_for_each(&guc->tlb_lookup, i, wait) {
+		/* Barrier to ensure the store is observed by the woken thread */
+		smp_store_mb(wait->busy, 0);
+		wake_up(&wait->wq);
+	}
+}
+
+void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stalled)
+{
 	struct intel_context *ce;
 	unsigned long index;
 	unsigned long flags;
-	unsigned long i;
 
 	if (unlikely(!guc_submission_initialized(guc))) {
 		/* Reset called during driver load? GuC not yet initialised! */
@@ -1833,11 +1844,7 @@ void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stall
 	 * The full GT reset will have cleared the TLB caches and flushed the
 	 * G2H message queue; we can release all the blocked waiters.
 	 */
-	xa_for_each(&guc->tlb_lookup, i, wait) {
-		/* Barrier to ensure the store is observed by the woken thread */
-		smp_store_mb(wait->busy, 0);
-		wake_up(&wait->wq);
-	}
+	wake_up_all_tlb_invalidate(guc);
 }
 
 static void guc_cancel_context_requests(struct intel_context *ce)
@@ -1933,6 +1940,12 @@ void intel_guc_submission_cancel_requests(struct intel_guc *guc)
 
 	/* GuC is blown away, drop all references to contexts */
 	xa_destroy(&guc->context_lookup);
+
+	/*
+	 * Wedged GT won't respond to any TLB invalidation request. Simply
+	 * release all the blocked waiters.
+	 */
+	wake_up_all_tlb_invalidate(guc);
 }
 
 void intel_guc_submission_reset_finish(struct intel_guc *guc)
@@ -4740,6 +4753,14 @@ static long must_wait_woken(struct wait_queue_entry *wq_entry, long timeout)
 	return timeout;
 }
 
+static bool intel_gt_is_enabled(const struct intel_gt *gt)
+{
+	/* Check if GT is wedged or suspended */
+	if (intel_gt_is_wedged(gt) || !intel_irqs_enabled(gt->i915))
+		return false;
+	return true;
+}
+
 static int guc_send_invalidate_tlb(struct intel_guc *guc, u32 type)
 {
 	struct intel_guc_tlb_wait _wq, *wq = &_wq;
@@ -4757,7 +4778,8 @@ static int guc_send_invalidate_tlb(struct intel_guc *guc, u32 type)
 	};
 	u32 size = ARRAY_SIZE(action);
 
-	if (!intel_guc_ct_enabled(&guc->ct))
+	if (!intel_gt_is_enabled(gt) ||
+	    !intel_guc_ct_enabled(&guc->ct))
 		return -EINVAL;
 
 	init_waitqueue_head(&_wq.wq);
@@ -4800,7 +4822,8 @@ static int guc_send_invalidate_tlb(struct intel_guc *guc, u32 type)
 	 * requests that can be queued in CT buffer.
 	 */
 #define OUTSTANDING_GUC_TIMEOUT_PERIOD  (HZ * 2)
-	if (!must_wait_woken(&wait, OUTSTANDING_GUC_TIMEOUT_PERIOD)) {
+	if (intel_gt_is_enabled(gt) &&
+	    !must_wait_woken(&wait, OUTSTANDING_GUC_TIMEOUT_PERIOD)) {
 		gt_err(gt,
 		       "TLB invalidation response timed out for seqno %u\n", seqno);
 		err = -ETIME;
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 78501a83ba109..66bd765d00302 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1092,6 +1092,9 @@ static int i915_drm_suspend(struct drm_device *dev)
 	intel_dp_mst_suspend(dev_priv);
 
 	intel_runtime_pm_disable_interrupts(dev_priv);
+
+	intel_tlb_suspend(dev_priv);
+
 	intel_hpd_cancel_work(dev_priv);
 
 	intel_suspend_encoders(dev_priv);
@@ -1263,6 +1266,8 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	intel_gvt_resume(dev_priv);
 
+	intel_tlb_resume(dev_priv);
+
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	return 0;
-- 
2.25.1

