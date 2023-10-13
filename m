Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FBE7C9044
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Oct 2023 00:26:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82A1710E646;
	Fri, 13 Oct 2023 22:26:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FF4610E071
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Oct 2023 22:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697235959; x=1728771959;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9ndy/BlwDCJqgbjAyE76jp+rHEoCaMNDF+eEqMnfRLU=;
 b=kXrwjcaj5TtG2gWaX1TUydcCgL9XK8HMW0a6sp1fo54IsZBCnB8zkHaX
 aW+AFW0vP9vET+BsBM2Ztd2eilwEcIfF3afOVOVajZXHxkPjmL2n5HF/D
 1rDmp/kOiKEn/EkUAWlich8YpGPQlaVGGjndFxV21mhOY7E8E4k2HBin6
 NAq0Oa/IfE1JPTgTxMaJeiKTnx+BBFYpIWoUo5MqyBI/0N0s2xPSmrpht
 Zl3HRVvDreS5GTWy1KeiwxgmTqFAu9QKqmZDGsXPrvkmhJ9xI2lqr0U8V
 +nHgzN6brDeMlk7DoPR82KQEIjUDvDeQyL6PoBjhRzQ5lIwBBPOPp6/8Q A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="385115682"
X-IronPort-AV: E=Sophos;i="6.03,223,1694761200"; d="scan'208";a="385115682"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 15:25:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="845641475"
X-IronPort-AV: E=Sophos;i="6.03,223,1694761200"; d="scan'208";a="845641475"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 15:25:04 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Oct 2023 15:14:17 -0700
Message-Id: <20231013221419.2710833-6-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231013221419.2710833-1-jonathan.cavitt@intel.com>
References: <20231013221419.2710833-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v15 5/7] drm/i915: No TLB invalidation on wedged
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
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c  | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 1b04b1692e48d..c67628f238588 100644
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
@@ -4749,6 +4756,14 @@ static long must_wait_woken(struct wait_queue_entry *wq_entry, long timeout)
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
@@ -4798,7 +4813,8 @@ static int guc_send_invalidate_tlb(struct intel_guc *guc,
 	if (err)
 		goto out;
 
-	if (!must_wait_woken(&wait, intel_guc_ct_max_queue_time_jiffies())) {
+	if (intel_gt_is_enabled(guc_to_gt(guc)) &&
+	    !must_wait_woken(&wait, intel_guc_ct_max_queue_time_jiffies())) {
 		guc_err(guc,
 			"TLB invalidation response timed out for seqno %u\n", seqno);
 		err = -ETIME;
-- 
2.25.1

