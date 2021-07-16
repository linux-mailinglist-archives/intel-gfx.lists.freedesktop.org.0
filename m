Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4127D3CBD04
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 21:59:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 416136E9D4;
	Fri, 16 Jul 2021 19:59:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 767976E9D9;
 Fri, 16 Jul 2021 19:59:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10047"; a="210596710"
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="210596710"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 12:59:36 -0700
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="507238887"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 12:59:36 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Fri, 16 Jul 2021 13:16:40 -0700
Message-Id: <20210716201724.54804-8-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210716201724.54804-1-matthew.brost@intel.com>
References: <20210716201724.54804-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/51] drm/i915/guc: Insert fence on context
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

Sometimes during context pinning a context with the same guc_id is
registered with the GuC. In this a case deregister must be done before
the context can be registered. A fence is inserted on all requests while
the deregister is in flight. Once the G2H is received indicating the
deregistration is complete the context is registered and the fence is
released.

v2:
 (John H)
  - Fix commit message

Cc: John Harrison <john.c.harrison@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: John Harrison <john.c.harrison@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c       |  1 +
 drivers/gpu/drm/i915/gt/intel_context_types.h |  5 ++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 51 ++++++++++++++++++-
 drivers/gpu/drm/i915/i915_request.h           |  8 +++
 4 files changed, 63 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index 32fd6647154b..ad7197c5910f 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -385,6 +385,7 @@ intel_context_init(struct intel_context *ce, struct intel_engine_cs *engine)
 	mutex_init(&ce->pin_mutex);
 
 	spin_lock_init(&ce->guc_state.lock);
+	INIT_LIST_HEAD(&ce->guc_state.fences);
 
 	ce->guc_id = GUC_INVALID_LRC_ID;
 	INIT_LIST_HEAD(&ce->guc_id_link);
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 606c480aec26..e0e3a937f709 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -147,6 +147,11 @@ struct intel_context {
 		 * submission
 		 */
 		u8 sched_state;
+		/*
+		 * fences: maintains of list of requests that have a submit
+		 * fence related to GuC submission
+		 */
+		struct list_head fences;
 	} guc_state;
 
 	/* GuC scheduling state flags that do not require a lock. */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index a47b3813b4d0..a438aecfe93f 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -926,6 +926,30 @@ static const struct intel_context_ops guc_context_ops = {
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
@@ -936,6 +960,7 @@ static int guc_request_alloc(struct i915_request *rq)
 {
 	struct intel_context *ce = rq->context;
 	struct intel_guc *guc = ce_to_guc(ce);
+	unsigned long flags;
 	int ret;
 
 	GEM_BUG_ON(!intel_context_is_pinned(rq->context));
@@ -980,7 +1005,7 @@ static int guc_request_alloc(struct i915_request *rq)
 	 * increment (in pin_guc_id) is needed to seal a race with unpin_guc_id.
 	 */
 	if (atomic_add_unless(&ce->guc_id_ref, 1, 0))
-		return 0;
+		goto out;
 
 	ret = pin_guc_id(guc, ce);	/* returns 1 if new guc_id assigned */
 	if (unlikely(ret < 0))
@@ -996,6 +1021,28 @@ static int guc_request_alloc(struct i915_request *rq)
 
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
 
@@ -1297,7 +1344,7 @@ int intel_guc_deregister_done_process_msg(struct intel_guc *guc,
 		 */
 		with_intel_runtime_pm(runtime_pm, wakeref)
 			register_context(ce);
-		clr_context_wait_for_deregister_to_register(ce);
+		guc_signal_context_fence(ce);
 		intel_context_put(ce);
 	} else if (context_destroyed(ce)) {
 		/* Context has been destroyed */
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 5deb65ec5fa5..717e5b292046 100644
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
