Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A3642CC60
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 22:57:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCAAD6EB9F;
	Wed, 13 Oct 2021 20:56:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A8046EBAC;
 Wed, 13 Oct 2021 20:56:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="207649428"
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="207649428"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 13:47:21 -0700
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="524782743"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 13:47:21 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Cc: <john.c.harrison@intel.com>
Date: Wed, 13 Oct 2021 13:42:19 -0700
Message-Id: <20211013204231.19287-14-matthew.brost@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211013204231.19287-1-matthew.brost@intel.com>
References: <20211013204231.19287-1-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/25] drm/i915/guc: Insert submit fences
 between requests in parent-child relationship
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

The GuC must receive requests in the order submitted for contexts in a
parent-child relationship to function correctly. To ensure this, insert
a submit fence between the current request and last request submitted
for requests / contexts in a parent child relationship. This is
conceptually similar to a single timeline.

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.h       |   5 +
 drivers/gpu/drm/i915/gt/intel_context_types.h |   6 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   5 +-
 drivers/gpu/drm/i915/i915_request.c           | 120 ++++++++++++++----
 4 files changed, 108 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index b63c10a144af..1bc705f98e2a 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -75,6 +75,11 @@ intel_context_to_parent(struct intel_context *ce)
 	}
 }
 
+static inline bool intel_context_is_parallel(struct intel_context *ce)
+{
+	return intel_context_is_child(ce) || intel_context_is_parent(ce);
+}
+
 void intel_context_bind_parent_child(struct intel_context *parent,
 				     struct intel_context *child);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 48decb5ee954..8309d1141d0a 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -237,6 +237,12 @@ struct intel_context {
 		};
 		/** @parent: pointer to parent if child */
 		struct intel_context *parent;
+		/**
+		 * @last_rq: last request submitted on a parallel context, used
+		 * to insert submit fences between requests in the parallel
+		 * context
+		 */
+		struct i915_request *last_rq;
 		/** @number_children: number of children if parent */
 		u8 number_children;
 		/** @guc: GuC specific members for parallel submission */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 77591e764195..f690b7c2b295 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -685,8 +685,7 @@ static inline int rq_prio(const struct i915_request *rq)
 
 static bool is_multi_lrc_rq(struct i915_request *rq)
 {
-	return intel_context_is_child(rq->context) ||
-		intel_context_is_parent(rq->context);
+	return intel_context_is_parallel(rq->context);
 }
 
 static bool can_merge_rq(struct i915_request *rq,
@@ -2874,6 +2873,8 @@ static void guc_parent_context_unpin(struct intel_context *ce)
 	GEM_BUG_ON(!intel_context_is_parent(ce));
 	GEM_BUG_ON(!intel_engine_is_virtual(ce->engine));
 
+	if (ce->parallel.last_rq)
+		i915_request_put(ce->parallel.last_rq);
 	unpin_guc_id(guc, ce);
 	lrc_unpin(ce);
 }
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index c0d27072c28d..8bdf9f2f9b90 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1525,36 +1525,62 @@ i915_request_await_object(struct i915_request *to,
 	return ret;
 }
 
+static inline bool is_parallel_rq(struct i915_request *rq)
+{
+	return intel_context_is_parallel(rq->context);
+}
+
+static inline struct intel_context *request_to_parent(struct i915_request *rq)
+{
+	return intel_context_to_parent(rq->context);
+}
+
 static struct i915_request *
-__i915_request_add_to_timeline(struct i915_request *rq)
+__i915_request_ensure_parallel_ordering(struct i915_request *rq,
+					struct intel_timeline *timeline)
 {
-	struct intel_timeline *timeline = i915_request_timeline(rq);
 	struct i915_request *prev;
 
-	/*
-	 * Dependency tracking and request ordering along the timeline
-	 * is special cased so that we can eliminate redundant ordering
-	 * operations while building the request (we know that the timeline
-	 * itself is ordered, and here we guarantee it).
-	 *
-	 * As we know we will need to emit tracking along the timeline,
-	 * we embed the hooks into our request struct -- at the cost of
-	 * having to have specialised no-allocation interfaces (which will
-	 * be beneficial elsewhere).
-	 *
-	 * A second benefit to open-coding i915_request_await_request is
-	 * that we can apply a slight variant of the rules specialised
-	 * for timelines that jump between engines (such as virtual engines).
-	 * If we consider the case of virtual engine, we must emit a dma-fence
-	 * to prevent scheduling of the second request until the first is
-	 * complete (to maximise our greedy late load balancing) and this
-	 * precludes optimising to use semaphores serialisation of a single
-	 * timeline across engines.
-	 */
+	GEM_BUG_ON(!is_parallel_rq(rq));
+
+	prev = request_to_parent(rq)->parallel.last_rq;
+	if (prev) {
+		if (!__i915_request_is_complete(prev)) {
+			i915_sw_fence_await_sw_fence(&rq->submit,
+						     &prev->submit,
+						     &rq->submitq);
+
+			if (rq->engine->sched_engine->schedule)
+				__i915_sched_node_add_dependency(&rq->sched,
+								 &prev->sched,
+								 &rq->dep,
+								 0);
+		}
+		i915_request_put(prev);
+	}
+
+	request_to_parent(rq)->parallel.last_rq = i915_request_get(rq);
+
+	return to_request(__i915_active_fence_set(&timeline->last_request,
+						  &rq->fence));
+}
+
+static struct i915_request *
+__i915_request_ensure_ordering(struct i915_request *rq,
+			       struct intel_timeline *timeline)
+{
+	struct i915_request *prev;
+
+	GEM_BUG_ON(is_parallel_rq(rq));
+
 	prev = to_request(__i915_active_fence_set(&timeline->last_request,
 						  &rq->fence));
+
 	if (prev && !__i915_request_is_complete(prev)) {
 		bool uses_guc = intel_engine_uses_guc(rq->engine);
+		bool pow2 = is_power_of_2(READ_ONCE(prev->engine)->mask |
+					  rq->engine->mask);
+		bool same_context = prev->context == rq->context;
 
 		/*
 		 * The requests are supposed to be kept in order. However,
@@ -1562,13 +1588,11 @@ __i915_request_add_to_timeline(struct i915_request *rq)
 		 * is used as a barrier for external modification to this
 		 * context.
 		 */
-		GEM_BUG_ON(prev->context == rq->context &&
+		GEM_BUG_ON(same_context &&
 			   i915_seqno_passed(prev->fence.seqno,
 					     rq->fence.seqno));
 
-		if ((!uses_guc &&
-		     is_power_of_2(READ_ONCE(prev->engine)->mask | rq->engine->mask)) ||
-		    (uses_guc && prev->context == rq->context))
+		if ((same_context && uses_guc) || (!uses_guc && pow2))
 			i915_sw_fence_await_sw_fence(&rq->submit,
 						     &prev->submit,
 						     &rq->submitq);
@@ -1583,6 +1607,50 @@ __i915_request_add_to_timeline(struct i915_request *rq)
 							 0);
 	}
 
+	return prev;
+}
+
+static struct i915_request *
+__i915_request_add_to_timeline(struct i915_request *rq)
+{
+	struct intel_timeline *timeline = i915_request_timeline(rq);
+	struct i915_request *prev;
+
+	/*
+	 * Dependency tracking and request ordering along the timeline
+	 * is special cased so that we can eliminate redundant ordering
+	 * operations while building the request (we know that the timeline
+	 * itself is ordered, and here we guarantee it).
+	 *
+	 * As we know we will need to emit tracking along the timeline,
+	 * we embed the hooks into our request struct -- at the cost of
+	 * having to have specialised no-allocation interfaces (which will
+	 * be beneficial elsewhere).
+	 *
+	 * A second benefit to open-coding i915_request_await_request is
+	 * that we can apply a slight variant of the rules specialised
+	 * for timelines that jump between engines (such as virtual engines).
+	 * If we consider the case of virtual engine, we must emit a dma-fence
+	 * to prevent scheduling of the second request until the first is
+	 * complete (to maximise our greedy late load balancing) and this
+	 * precludes optimising to use semaphores serialisation of a single
+	 * timeline across engines.
+	 *
+	 * We do not order parallel submission requests on the timeline as each
+	 * parallel submission context has its own timeline and the ordering
+	 * rules for parallel requests are that they must be submitted in the
+	 * order received from the execbuf IOCTL. So rather than using the
+	 * timeline we store a pointer to last request submitted in the
+	 * relationship in the gem context and insert a submission fence
+	 * between that request and request passed into this function or
+	 * alternatively we use completion fence if gem context has a single
+	 * timeline and this is the first submission of an execbuf IOCTL.
+	 */
+	if (likely(!is_parallel_rq(rq)))
+		prev = __i915_request_ensure_ordering(rq, timeline);
+	else
+		prev = __i915_request_ensure_parallel_ordering(rq, timeline);
+
 	/*
 	 * Make sure that no request gazumped us - if it was allocated after
 	 * our i915_request_alloc() and called __i915_request_add() before
-- 
2.32.0

