Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D48063D193C
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 23:34:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE0726EA36;
	Wed, 21 Jul 2021 21:33:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62AA46E951;
 Wed, 21 Jul 2021 21:33:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="198724338"
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="198724338"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 14:33:13 -0700
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="470296686"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 14:33:12 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Wed, 21 Jul 2021 14:50:53 -0700
Message-Id: <20210721215101.139794-11-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210721215101.139794-1-matthew.brost@intel.com>
References: <20210721215101.139794-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/18] drm/i915/guc: Extend deregistration fence
 to schedule disable
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Extend the deregistration context fence to fence whne a GuC context has
scheduling disable pending.

v2:
 (John H)
  - Update comment why we check the pin count within spin lock

Cc: John Harrison <john.c.harrison@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: John Harrison <john.c.harrison@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 40 +++++++++++++++----
 1 file changed, 33 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 2f393d9dba0d..fc0b36ab1e68 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -930,7 +930,22 @@ static void guc_context_sched_disable(struct intel_context *ce)
 		goto unpin;
 
 	spin_lock_irqsave(&ce->guc_state.lock, flags);
+
+	/*
+	 * We have to check if the context has been pinned again as another pin
+	 * operation is allowed to pass this function. Checking the pin count,
+	 * within ce->guc_state.lock, synchronizes this function with
+	 * guc_request_alloc ensuring a request doesn't slip through the
+	 * 'context_pending_disable' fence. Checking within the spin lock (can't
+	 * sleep) ensures another process doesn't pin this context and generate
+	 * a request before we set the 'context_pending_disable' flag here.
+	 */
+	if (unlikely(atomic_add_unless(&ce->pin_count, -2, 2))) {
+		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
+		return;
+	}
 	guc_id = prep_context_pending_disable(ce);
+
 	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
 
 	with_intel_runtime_pm(runtime_pm, wakeref)
@@ -1135,19 +1150,22 @@ static int guc_request_alloc(struct i915_request *rq)
 out:
 	/*
 	 * We block all requests on this context if a G2H is pending for a
-	 * context deregistration as the GuC will fail a context registration
-	 * while this G2H is pending. Once a G2H returns, the fence is released
-	 * that is blocking these requests (see guc_signal_context_fence).
+	 * schedule disable or context deregistration as the GuC will fail a
+	 * schedule enable or context registration if either G2H is pending
+	 * respectfully. Once a G2H returns, the fence is released that is
+	 * blocking these requests (see guc_signal_context_fence).
 	 *
-	 * We can safely check the below field outside of the lock as it isn't
-	 * possible for this field to transition from being clear to set but
+	 * We can safely check the below fields outside of the lock as it isn't
+	 * possible for these fields to transition from being clear to set but
 	 * converse is possible, hence the need for the check within the lock.
 	 */
-	if (likely(!context_wait_for_deregister_to_register(ce)))
+	if (likely(!context_wait_for_deregister_to_register(ce) &&
+		   !context_pending_disable(ce)))
 		return 0;
 
 	spin_lock_irqsave(&ce->guc_state.lock, flags);
-	if (context_wait_for_deregister_to_register(ce)) {
+	if (context_wait_for_deregister_to_register(ce) ||
+	    context_pending_disable(ce)) {
 		i915_sw_fence_await(&rq->submit);
 
 		list_add_tail(&rq->guc_fence_link, &ce->guc_state.fences);
@@ -1491,10 +1509,18 @@ int intel_guc_sched_done_process_msg(struct intel_guc *guc,
 	if (context_pending_enable(ce)) {
 		clr_context_pending_enable(ce);
 	} else if (context_pending_disable(ce)) {
+		/*
+		 * Unpin must be done before __guc_signal_context_fence,
+		 * otherwise a race exists between the requests getting
+		 * submitted + retired before this unpin completes resulting in
+		 * the pin_count going to zero and the context still being
+		 * enabled.
+		 */
 		intel_context_sched_disable_unpin(ce);
 
 		spin_lock_irqsave(&ce->guc_state.lock, flags);
 		clr_context_pending_disable(ce);
+		__guc_signal_context_fence(ce);
 		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
 	}
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
