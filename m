Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E15B177246
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 10:20:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75DC56EA4F;
	Tue,  3 Mar 2020 09:20:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E41C56EA4F
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 09:20:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20423568-1500050 
 for multiple; Tue, 03 Mar 2020 09:20:12 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Mar 2020 09:20:11 +0000
Message-Id: <20200303092011.1151535-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200303092011.1151535-1-chris@chris-wilson.co.uk>
References: <20200303092011.1151535-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/gem: Check that the context wasn't
 closed during setup
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As setup takes a long time, the user may close the context during the
construction of the execbuf. In order to make sure we correctly track
all outstanding work with non-persistent contexts, we need to serialise
the submission with the context closure and mop up any leaks.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 67 ++++++++++++++++++-
 drivers/gpu/drm/i915/i915_request.c           | 54 +++------------
 2 files changed, 74 insertions(+), 47 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index ac0e5fc5675e..84bc820a4608 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2566,6 +2566,71 @@ signal_fence_array(struct i915_execbuffer *eb,
 	}
 }
 
+static void retire_requests(struct intel_timeline *tl, struct i915_request *end)
+{
+	struct i915_request *rq, *rn;
+
+	list_for_each_entry_safe(rq, rn, &tl->requests, link)
+		if (rq == end || !i915_request_retire(rq))
+			break;
+}
+
+static void eb_request_add(struct i915_execbuffer *eb)
+{
+	struct i915_request *rq = eb->request;
+	struct intel_timeline * const tl = i915_request_timeline(rq);
+	struct i915_sched_attr attr = {};
+	struct i915_request *prev;
+
+	lockdep_assert_held(&tl->mutex);
+	lockdep_unpin_lock(&tl->mutex, rq->cookie);
+
+	trace_i915_request_add(rq);
+
+	prev = __i915_request_commit(rq);
+
+	/* Check that the context wasn't destroyed before submission */
+	if (likely(rcu_access_pointer(eb->context->gem_context))) {
+		attr = eb->gem_context->sched;
+
+		/*
+		 * Boost actual workloads past semaphores!
+		 *
+		 * With semaphores we spin on one engine waiting for another,
+		 * simply to reduce the latency of starting our work when
+		 * the signaler completes. However, if there is any other
+		 * work that we could be doing on this engine instead, that
+		 * is better utilisation and will reduce the overall duration
+		 * of the current work. To avoid PI boosting a semaphore
+		 * far in the distance past over useful work, we keep a history
+		 * of any semaphore use along our dependency chain.
+		 */
+		if (!(rq->sched.flags & I915_SCHED_HAS_SEMAPHORE_CHAIN))
+			attr.priority |= I915_PRIORITY_NOSEMAPHORE;
+
+		/*
+		 * Boost priorities to new clients (new request flows).
+		 *
+		 * Allow interactive/synchronous clients to jump ahead of
+		 * the bulk clients. (FQ_CODEL)
+		 */
+		if (list_empty(&rq->sched.signalers_list))
+			attr.priority |= I915_PRIORITY_WAIT;
+	} else {
+		/* Serialise with context_close via the add_to_timeline */
+		i915_request_skip(rq, -ENOENT);
+	}
+
+	local_bh_disable();
+	__i915_request_queue(rq, &attr);
+	local_bh_enable(); /* Kick the execlists tasklet if just scheduled */
+
+	/* Try to clean up the client's timeline after submitting the request */
+	retire_requests(tl, prev);
+
+	mutex_unlock(&tl->mutex);
+}
+
 static int
 i915_gem_do_execbuffer(struct drm_device *dev,
 		       struct drm_file *file,
@@ -2778,7 +2843,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 err_request:
 	add_to_client(eb.request, file);
 	i915_request_get(eb.request);
-	i915_request_add(eb.request);
+	eb_request_add(&eb);
 
 	if (fences)
 		signal_fence_array(&eb, fences);
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index feccf29381aa..d837c1380015 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1339,39 +1339,23 @@ void i915_request_add(struct i915_request *rq)
 {
 	struct intel_timeline * const tl = i915_request_timeline(rq);
 	struct i915_sched_attr attr = {};
-	struct i915_request *prev;
+	struct i915_gem_context *ctx;
 
 	lockdep_assert_held(&tl->mutex);
 	lockdep_unpin_lock(&tl->mutex, rq->cookie);
 
 	trace_i915_request_add(rq);
+	__i915_request_commit(rq);
 
-	prev = __i915_request_commit(rq);
-
-	if (rcu_access_pointer(rq->context->gem_context))
-		attr = i915_request_gem_context(rq)->sched;
+	/* XXX placeholder for selftests */
+	rcu_read_lock();
+	ctx = rcu_dereference(rq->context->gem_context);
+	if (ctx)
+		attr = ctx->sched;
+	rcu_read_unlock();
 
-	/*
-	 * Boost actual workloads past semaphores!
-	 *
-	 * With semaphores we spin on one engine waiting for another,
-	 * simply to reduce the latency of starting our work when
-	 * the signaler completes. However, if there is any other
-	 * work that we could be doing on this engine instead, that
-	 * is better utilisation and will reduce the overall duration
-	 * of the current work. To avoid PI boosting a semaphore
-	 * far in the distance past over useful work, we keep a history
-	 * of any semaphore use along our dependency chain.
-	 */
 	if (!(rq->sched.flags & I915_SCHED_HAS_SEMAPHORE_CHAIN))
 		attr.priority |= I915_PRIORITY_NOSEMAPHORE;
-
-	/*
-	 * Boost priorities to new clients (new request flows).
-	 *
-	 * Allow interactive/synchronous clients to jump ahead of
-	 * the bulk clients. (FQ_CODEL)
-	 */
 	if (list_empty(&rq->sched.signalers_list))
 		attr.priority |= I915_PRIORITY_WAIT;
 
@@ -1379,28 +1363,6 @@ void i915_request_add(struct i915_request *rq)
 	__i915_request_queue(rq, &attr);
 	local_bh_enable(); /* Kick the execlists tasklet if just scheduled */
 
-	/*
-	 * In typical scenarios, we do not expect the previous request on
-	 * the timeline to be still tracked by timeline->last_request if it
-	 * has been completed. If the completed request is still here, that
-	 * implies that request retirement is a long way behind submission,
-	 * suggesting that we haven't been retiring frequently enough from
-	 * the combination of retire-before-alloc, waiters and the background
-	 * retirement worker. So if the last request on this timeline was
-	 * already completed, do a catch up pass, flushing the retirement queue
-	 * up to this client. Since we have now moved the heaviest operations
-	 * during retirement onto secondary workers, such as freeing objects
-	 * or contexts, retiring a bunch of requests is mostly list management
-	 * (and cache misses), and so we should not be overly penalizing this
-	 * client by performing excess work, though we may still performing
-	 * work on behalf of others -- but instead we should benefit from
-	 * improved resource management. (Well, that's the theory at least.)
-	 */
-	if (prev &&
-	    i915_request_completed(prev) &&
-	    rcu_access_pointer(prev->timeline) == tl)
-		i915_request_retire_upto(prev);
-
 	mutex_unlock(&tl->mutex);
 }
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
