Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5FA77B974F
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 00:18:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC78810E0EA;
	Wed,  4 Oct 2023 22:18:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D52310E07E
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 22:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696457904; x=1727993904;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NkglVtxEjyMA1GrvH3vAaz3U45mAgfzmshimIGtrtpA=;
 b=SU0JNq2jWHr32jnzMcWa7hTxW07bxX6QyVsaGa+zHdMjaPz/qX93WonU
 n7sj/2KgFWv5YaevpBC3UbYrUvChMea1CYyaKO0KG5ONB/GjCPsyfmV6R
 X+Za/8nU9xLu12mEdeesGIWWp4SDzGoJlHwAeCy/ScskfL4J6YC3stDz4
 OfStYkOet2trMvmvWKZVtfXi2JLP9oLcZ13x7vGIyhdu1wQ3+mGa6qbdo
 TEugdwE95y7Aq+j7wwv7W1+vMFlhlzGXouzUPak8hk8ZSQbsuVRa90DVO
 NLeITkLzcf96Mt+NlnmeFJmcV7DHDyZp3c3gT/jv96ePM0EOBZ26gTGWo w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="382195130"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; d="scan'208";a="382195130"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 15:18:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="867611822"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; d="scan'208";a="867611822"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 15:18:23 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Oct 2023 15:07:37 -0700
Message-Id: <20231004220739.1313307-5-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231004220739.1313307-1-jonathan.cavitt@intel.com>
References: <20231004220739.1313307-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH dii-client v6 3/5] drm/i915: No TLB invalidation
 on wedged or suspended GT
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
 drivers/gpu/drm/i915/gt/intel_gt.h            |  1 +
 drivers/gpu/drm/i915/gt/intel_tlb.c           | 25 ++++++++++++
 drivers/gpu/drm/i915/gt/intel_tlb.h           |  3 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  1 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 39 +++++++++++++++----
 drivers/gpu/drm/i915/i915_driver.c            |  6 +++
 6 files changed, 68 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index 970bedf6b78a7..4e3bb221d2f4d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -179,4 +179,5 @@ enum i915_map_type intel_gt_coherent_map_type(struct intel_gt *gt,
 void intel_gt_bind_context_set_ready(struct intel_gt *gt);
 void intel_gt_bind_context_set_unready(struct intel_gt *gt);
 bool intel_gt_is_bind_context_ready(struct intel_gt *gt);
+
 #endif /* __INTEL_GT_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_tlb.c b/drivers/gpu/drm/i915/gt/intel_tlb.c
index a84563c178bc6..c6bb1b34abdaa 100644
--- a/drivers/gpu/drm/i915/gt/intel_tlb.c
+++ b/drivers/gpu/drm/i915/gt/intel_tlb.c
@@ -166,6 +166,31 @@ void intel_gt_fini_tlb(struct intel_gt *gt)
 	mutex_destroy(&gt->tlb.invalidate_lock);
 }
 
+void intel_gt_tlb_suspend_all(struct drm_i915_private *i915)
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
+void intel_gt_tlb_resume_all(struct drm_i915_private *i915)
+{
+	struct intel_gt *gt;
+	int i;
+
+	if (!HAS_GUC_TLB_INVALIDATION(i915))
+		return;
+	for_each_gt(gt, i915, i) {
+		/* Perform tlb invalidation on both GT and GuC, in that order. */
+		intel_guc_invalidate_tlb_full(&gt->uc.guc);
+		intel_guc_invalidate_tlb(&gt->uc.guc);
+	}
+}
+
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
 #include "selftest_tlb.c"
 #endif
diff --git a/drivers/gpu/drm/i915/gt/intel_tlb.h b/drivers/gpu/drm/i915/gt/intel_tlb.h
index 337327af92ac4..1a34ec0c447f2 100644
--- a/drivers/gpu/drm/i915/gt/intel_tlb.h
+++ b/drivers/gpu/drm/i915/gt/intel_tlb.h
@@ -26,4 +26,7 @@ static inline u32 intel_gt_next_invalidate_tlb_full(const struct intel_gt *gt)
 	return intel_gt_tlb_seqno(gt) | 1;
 }
 
+void intel_gt_tlb_suspend_all(struct drm_i915_private *i915);
+void intel_gt_tlb_resume_all(struct drm_i915_private *i915);
+
 #endif /* INTEL_TLB_H */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index d7203ba88b0c0..e76b26095eef2 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -536,4 +536,5 @@ void intel_guc_dump_time_info(struct intel_guc *guc, struct drm_printer *p);
 
 int intel_guc_sched_disable_gucid_threshold_max(struct intel_guc *guc);
 
+void wake_up_all_tlb_invalidate(struct intel_guc *guc);
 #endif
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 7b484d1573f16..7172335199c76 100644
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
+	if (!HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915))
+		return;
+	xa_for_each(&guc->tlb_lookup, i, wait) {
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
@@ -1833,9 +1844,7 @@ void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stall
 	 * The full GT reset will have cleared the TLB caches and flushed the
 	 * G2H message queue; we can release all the blocked waiters.
 	 */
-	xa_for_each(&guc->tlb_lookup, i, wait) {
-		wake_up(&wait->wq);
-	}
+	wake_up_all_tlb_invalidate(guc);
 }
 
 static void guc_cancel_context_requests(struct intel_context *ce)
@@ -1931,6 +1940,12 @@ void intel_guc_submission_cancel_requests(struct intel_guc *guc)
 
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
@@ -4746,6 +4761,14 @@ static long must_wait_woken(struct wait_queue_entry *wq_entry, long timeout)
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
@@ -4763,7 +4786,8 @@ static int guc_send_invalidate_tlb(struct intel_guc *guc, u32 type)
 	};
 	u32 size = ARRAY_SIZE(action);
 
-	if (!intel_guc_ct_enabled(&guc->ct))
+	if (!intel_gt_is_enabled(gt) ||
+	    !intel_guc_ct_enabled(&guc->ct))
 		return -EINVAL;
 
 	init_waitqueue_head(&_wq.wq);
@@ -4806,7 +4830,8 @@ static int guc_send_invalidate_tlb(struct intel_guc *guc, u32 type)
 	 * can be queued in CT buffer.
 	 */
 #define OUTSTANDING_GUC_TIMEOUT_PERIOD  (HZ * 2)
-	if (!must_wait_woken(&wait, OUTSTANDING_GUC_TIMEOUT_PERIOD)) {
+	if (intel_gt_is_enabled(gt) &&
+	    !must_wait_woken(&wait, OUTSTANDING_GUC_TIMEOUT_PERIOD)) {
 		gt_err(gt,
 		       "TLB invalidation response timed out for seqno %u\n", seqno);
 		err = -ETIME;
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index ccbb2834cde07..0c9d9826d2f41 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -72,6 +72,7 @@
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_rc6.h"
+#include "gt/intel_tlb.h"
 
 #include "pxp/intel_pxp.h"
 #include "pxp/intel_pxp_debugfs.h"
@@ -1093,6 +1094,9 @@ static int i915_drm_suspend(struct drm_device *dev)
 	intel_dp_mst_suspend(dev_priv);
 
 	intel_runtime_pm_disable_interrupts(dev_priv);
+
+	intel_gt_tlb_suspend_all(dev_priv);
+
 	intel_hpd_cancel_work(dev_priv);
 
 	intel_suspend_encoders(dev_priv);
@@ -1264,6 +1268,8 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	intel_gvt_resume(dev_priv);
 
+	intel_gt_tlb_resume_all(dev_priv);
+
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	return 0;
-- 
2.25.1

