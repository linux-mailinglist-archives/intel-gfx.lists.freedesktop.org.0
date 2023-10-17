Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2977CCA87
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Oct 2023 20:19:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C41D810E31D;
	Tue, 17 Oct 2023 18:19:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0435D10E314
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Oct 2023 18:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697566731; x=1729102731;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ObPAswrHSwtxsfIYn6SOj8O+YKxT3Uj4RqZWbBORPx4=;
 b=Xo2DFmMSHZnTDhU0Ap8igT2wN6rmEm3p3zN+XoZYNtt4I8fNHMX0slP+
 LCPYYSbI+SBlv8BSPIFJyAfsusR9uWKJwEL5tBgZQgKNjuqvnXxPSGA1C
 +8QHkda7BVZATvlSwiPYoBLDo1bLbsAeyT+as+fVoA+QHDMueJOIltaWz
 feg4NB9NdpCMgh5o5BR/uxM4VwrOcy7+OF0GxHPBxLIEyGb/tFuELgAK7
 40Maa9ENW1vrI/5f3rKjopJ0ej6hvD67V7NMHLYSTCmp7MnbpK6rsZoHu
 V1v0kX6hg5P0lDJQLL0ovYqWZsjzLMxH2mntuCt1y/3+R10cyXy5dmRYO A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="472078886"
X-IronPort-AV: E=Sophos;i="6.03,232,1694761200"; d="scan'208";a="472078886"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 11:18:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,232,1694761200"; 
   d="scan'208";a="4037636"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 11:17:43 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Oct 2023 11:08:04 -0700
Message-Id: <20231017180806.3054290-6-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231017180806.3054290-1-jonathan.cavitt@intel.com>
References: <20231017180806.3054290-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v17 5/7] drm/i915: No TLB invalidation on wedged
 GT
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
 matthew.d.roper@intel.com, jonathan.cavitt@intel.com, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It is not an error for GuC TLB invalidations to fail when the GT is
wedged or disabled, so do not process a wait failure as one in
guc_send_invalidate_tlb.

Signed-off-by: Fei Yang <fei.yang@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
CC: John Harrison <john.c.harrison@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Acked-by: Nirmoy Das <nirmoy.das@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 32 ++++++++++++++++++-
 1 file changed, 31 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 1b04b1692e48d..d37698bd6b91a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -32,6 +32,7 @@
 
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_irq.h"
 #include "i915_trace.h"
 
 /**
@@ -1935,6 +1936,12 @@ void intel_guc_submission_cancel_requests(struct intel_guc *guc)
 
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
@@ -4749,10 +4756,19 @@ static long must_wait_woken(struct wait_queue_entry *wq_entry, long timeout)
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
 static int guc_send_invalidate_tlb(struct intel_guc *guc,
 				   enum intel_guc_tlb_invalidation_type type)
 {
 	struct intel_guc_tlb_wait _wq, *wq = &_wq;
+	struct intel_gt *gt = guc_to_gt(guc);
 	DEFINE_WAIT_FUNC(wait, woken_wake_function);
 	int err;
 	u32 seqno;
@@ -4766,6 +4782,13 @@ static int guc_send_invalidate_tlb(struct intel_guc *guc,
 	};
 	u32 size = ARRAY_SIZE(action);
 
+	/*
+	 * Early guard against GT enablement.  TLB invalidation should not be
+	 * attempted if the GT is disabled due to suspend/wedge.
+	 */
+	if (!intel_gt_is_enabled(gt))
+		return -EINVAL;
+
 	init_waitqueue_head(&_wq.wq);
 
 	if (xa_alloc_cyclic_irq(&guc->tlb_lookup, &seqno, wq,
@@ -4798,7 +4821,14 @@ static int guc_send_invalidate_tlb(struct intel_guc *guc,
 	if (err)
 		goto out;
 
-	if (!must_wait_woken(&wait, intel_guc_ct_max_queue_time_jiffies())) {
+	/*
+	 * Late guard against GT enablement.  It is not an error for the TLB
+	 * invalidation to time out if the GT is disabled during the process
+	 * due to suspend/wedge.  In fact, the TLB invalidation is cancelled
+	 * in this case.
+	 */
+	if (!must_wait_woken(&wait, intel_guc_ct_max_queue_time_jiffies()) &&
+	    intel_gt_is_enabled(gt)) {
 		guc_err(guc,
 			"TLB invalidation response timed out for seqno %u\n", seqno);
 		err = -ETIME;
-- 
2.25.1

