Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A04FA3B279D
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 08:48:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5721A6E9FF;
	Thu, 24 Jun 2021 06:47:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9A156E9F5;
 Thu, 24 Jun 2021 06:47:29 +0000 (UTC)
IronPort-SDR: PXKZFt/7IohvIVecF7ene0Bu08x+OfvIMiLXxGxSsdXUqtII2Fs3lKNXooRCAFLjoLinkh/UKh
 cOdrVhX32A7Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="207346753"
X-IronPort-AV: E=Sophos;i="5.83,295,1616482800"; d="scan'208";a="207346753"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 23:47:25 -0700
IronPort-SDR: mBSFCGQ2cpiJ4C37vamuHxyQtZOmgzVA+I8RDDxfAwPegmkAfO7j3VbJz2E8KDzlRQ8Wj+s26O
 yaf+3PFvwpjQ==
X-IronPort-AV: E=Sophos;i="5.83,295,1616482800"; d="scan'208";a="556390905"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 23:47:25 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Thu, 24 Jun 2021 00:04:43 -0700
Message-Id: <20210624070516.21893-15-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210624070516.21893-1-matthew.brost@intel.com>
References: <20210624070516.21893-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/47] drm/i915/guc: Insert fence on context
 when deregistering
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

Sometime during context pinning a context with the same guc_id is
registered with the GuC. In this a case deregister must be before before
the context can be registered. A fence is inserted on all requests while
the deregister is in flight. Once the G2H is received indicating the
deregistration is complete the context is registered and the fence is
released.

Cc: John Harrison <john.c.harrison@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c       |  1 +
 drivers/gpu/drm/i915/gt/intel_context_types.h |  5 ++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 51 ++++++++++++++++++-
 drivers/gpu/drm/i915/i915_request.h           |  8 +++
 4 files changed, 63 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index 2b68af16222c..f750c826e19d 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -384,6 +384,7 @@ intel_context_init(struct intel_context *ce, struct intel_engine_cs *engine)
 	mutex_init(&ce->pin_mutex);
 
 	spin_lock_init(&ce->guc_state.lock);
+	INIT_LIST_HEAD(&ce->guc_state.fences);
 
 	ce->guc_id = GUC_INVALID_LRC_ID;
 	INIT_LIST_HEAD(&ce->guc_id_link);
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index ce7c69b34cd1..beafe55a9101 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -146,6 +146,11 @@ struct intel_context {
 		 * submission
 		 */
 		u8 sched_state;
+		/*
+		 * fences: maintains of list of requests that have a submit
+		 * fence related to GuC submission
+		 */
+		struct list_head fences;
 	} guc_state;
 
 	/* GuC scheduling state that does not require a lock. */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index d39579ac2faa..49e5d460d54b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -924,6 +924,30 @@ static const struct intel_context_ops guc_context_ops = {
 	.destroy = guc_context_destroy,
 };
 
+static void __guc_signal_context_fence(struct intel_context *ce)
+{
+	struct i915_request *rq;
+
+	lockdep_assert_held(&ce->guc_state.lock);
+
+	list_for_each_entry(rq, &ce->guc_state.fences, guc_fence_link)
+		i915_sw_fence_complete(&rq->submit);
+
+	INIT_LIST_HEAD(&ce->guc_state.fences);
+}
+
+static void guc_signal_context_fence(struct intel_context *ce)
+{
+	unsigned long flags;
+
+	GEM_BUG_ON(!context_wait_for_deregister_to_register(ce));
+
+	spin_lock_irqsave(&ce->guc_state.lock, flags);
+	clr_context_wait_for_deregister_to_register(ce);
+	__guc_signal_context_fence(ce);
+	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
+}
+
 static bool context_needs_register(struct intel_context *ce, bool new_guc_id)
 {
 	return new_guc_id || test_bit(CONTEXT_LRCA_DIRTY, &ce->flags) ||
@@ -934,6 +958,7 @@ static int guc_request_alloc(struct i915_request *rq)
 {
 	struct intel_context *ce = rq->context;
 	struct intel_guc *guc = ce_to_guc(ce);
+	unsigned long flags;
 	int ret;
 
 	GEM_BUG_ON(!intel_context_is_pinned(rq->context));
@@ -978,7 +1003,7 @@ static int guc_request_alloc(struct i915_request *rq)
 	 * increment (in pin_guc_id) is needed to seal a race with unpin_guc_id.
 	 */
 	if (atomic_add_unless(&ce->guc_id_ref, 1, 0))
-		return 0;
+		goto out;
 
 	ret = pin_guc_id(guc, ce);	/* returns 1 if new guc_id assigned */
 	if (unlikely(ret < 0))
@@ -994,6 +1019,28 @@ static int guc_request_alloc(struct i915_request *rq)
 
 	clear_bit(CONTEXT_LRCA_DIRTY, &ce->flags);
 
+out:
+	/*
+	 * We block all requests on this context if a G2H is pending for a
+	 * context deregistration as the GuC will fail a context registration
+	 * while this G2H is pending. Once a G2H returns, the fence is released
+	 * that is blocking these requests (see guc_signal_context_fence).
+	 *
+	 * We can safely check the below field outside of the lock as it isn't
+	 * possible for this field to transition from being clear to set but
+	 * converse is possible, hence the need for the check within the lock.
+	 */
+	if (likely(!context_wait_for_deregister_to_register(ce)))
+		return 0;
+
+	spin_lock_irqsave(&ce->guc_state.lock, flags);
+	if (context_wait_for_deregister_to_register(ce)) {
+		i915_sw_fence_await(&rq->submit);
+
+		list_add_tail(&rq->guc_fence_link, &ce->guc_state.fences);
+	}
+	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
+
 	return 0;
 }
 
@@ -1295,7 +1342,7 @@ int intel_guc_deregister_done_process_msg(struct intel_guc *guc,
 		 */
 		with_intel_runtime_pm(runtime_pm, wakeref)
 			register_context(ce);
-		clr_context_wait_for_deregister_to_register(ce);
+		guc_signal_context_fence(ce);
 		intel_context_put(ce);
 	} else if (context_destroyed(ce)) {
 		/* Context has been destroyed */
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 239964bec1fa..f870cd75a001 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -285,6 +285,14 @@ struct i915_request {
 		struct hrtimer timer;
 	} watchdog;
 
+	/*
+	 * Requests may need to be stalled when using GuC submission waiting for
+	 * certain GuC operations to complete. If that is the case, stalled
+	 * requests are added to a per context list of stalled requests. The
+	 * below list_head is the link in that list.
+	 */
+	struct list_head guc_fence_link;
+
 	I915_SELFTEST_DECLARE(struct {
 		struct list_head link;
 		unsigned long delay;
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
