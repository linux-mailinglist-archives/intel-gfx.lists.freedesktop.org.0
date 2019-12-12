Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0852911C2A5
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 02:46:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 094B96EC2C;
	Thu, 12 Dec 2019 01:46:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B88C6EC2B
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 01:46:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19548545-1500050 
 for multiple; Thu, 12 Dec 2019 01:46:28 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Dec 2019 01:46:28 +0000
Message-Id: <20191212014629.854076-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191212014629.854076-1-chris@chris-wilson.co.uk>
References: <20191212014629.854076-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/gt: Pull intel_timeline.requests
 list under a spinlock
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

Currently we use the intel_timeline.mutex to guard constructing and
retiring requests in the timeline, including the adding and removing of
the request from the list of requests (intel_timeline.requests).
However, we want to peek at neighbouring elements in the request list
while constructing a request on another timeline (see
i915_request_await_start) and this implies nesting timeline mutexes. To
avoid the nested mutex, we currently use a mutex_trylock() but this is
fraught with a potential race causing an -EBUSY. We can eliminate the
nested mutex here with a spinlock guarding list operations within the
broader mutex, so callers can choose between locking everything with the
mutex or just the list with the spinlock. (The mutex caters for
virtually all of the current users, but maybe being able to easily peek
at the request list, we will do so more often in the future.)

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_timeline.c      |  1 +
 .../gpu/drm/i915/gt/intel_timeline_types.h    |  1 +
 .../gpu/drm/i915/gt/selftests/mock_timeline.c |  1 +
 drivers/gpu/drm/i915/i915_request.c           | 58 +++++++++++--------
 4 files changed, 36 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
index d71aafb66d6e..728da39e8ace 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.c
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
@@ -256,6 +256,7 @@ int intel_timeline_init(struct intel_timeline *timeline,
 
 	INIT_ACTIVE_FENCE(&timeline->last_request);
 	INIT_LIST_HEAD(&timeline->requests);
+	spin_lock_init(&timeline->request_lock);
 
 	i915_syncmap_init(&timeline->sync);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline_types.h b/drivers/gpu/drm/i915/gt/intel_timeline_types.h
index aaf15cbe1ce1..7c9f49f46626 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_timeline_types.h
@@ -57,6 +57,7 @@ struct intel_timeline {
 	 * outstanding.
 	 */
 	struct list_head requests;
+	spinlock_t request_lock;
 
 	/*
 	 * Contains an RCU guarded pointer to the last request. No reference is
diff --git a/drivers/gpu/drm/i915/gt/selftests/mock_timeline.c b/drivers/gpu/drm/i915/gt/selftests/mock_timeline.c
index aeb1d1f616e8..540729250fef 100644
--- a/drivers/gpu/drm/i915/gt/selftests/mock_timeline.c
+++ b/drivers/gpu/drm/i915/gt/selftests/mock_timeline.c
@@ -17,6 +17,7 @@ void mock_timeline_init(struct intel_timeline *timeline, u64 context)
 
 	INIT_ACTIVE_FENCE(&timeline->last_request);
 	INIT_LIST_HEAD(&timeline->requests);
+	spin_lock_init(&timeline->request_lock);
 
 	i915_syncmap_init(&timeline->sync);
 
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index fb8738987aeb..5d8b11e64373 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -184,6 +184,27 @@ remove_from_client(struct i915_request *request)
 	rcu_read_unlock();
 }
 
+static inline void remove_from_timeline(struct i915_request *rq)
+{
+	struct intel_timeline *tl = i915_request_timeline(rq);
+
+	/*
+	 * We know the GPU must have read the request to have
+	 * sent us the seqno + interrupt, so use the position
+	 * of tail of the request to update the last known position
+	 * of the GPU head.
+	 *
+	 * Note this requires that we are always called in request
+	 * completion order.
+	 */
+	GEM_BUG_ON(!list_is_first(&rq->link, &tl->requests));
+	rq->ring->head = rq->postfix;
+
+	spin_lock(&tl->request_lock);
+	list_del(&rq->link);
+	spin_unlock(&tl->request_lock);
+}
+
 static void free_capture_list(struct i915_request *request)
 {
 	struct i915_capture_list *capture;
@@ -231,19 +252,6 @@ bool i915_request_retire(struct i915_request *rq)
 	GEM_BUG_ON(!i915_sw_fence_signaled(&rq->submit));
 	trace_i915_request_retire(rq);
 
-	/*
-	 * We know the GPU must have read the request to have
-	 * sent us the seqno + interrupt, so use the position
-	 * of tail of the request to update the last known position
-	 * of the GPU head.
-	 *
-	 * Note this requires that we are always called in request
-	 * completion order.
-	 */
-	GEM_BUG_ON(!list_is_first(&rq->link,
-				  &i915_request_timeline(rq)->requests));
-	rq->ring->head = rq->postfix;
-
 	/*
 	 * We only loosely track inflight requests across preemption,
 	 * and so we may find ourselves attempting to retire a _completed_
@@ -270,7 +278,7 @@ bool i915_request_retire(struct i915_request *rq)
 	spin_unlock_irq(&rq->lock);
 
 	remove_from_client(rq);
-	list_del(&rq->link);
+	remove_from_timeline(rq);
 
 	intel_context_exit(rq->hw_context);
 	intel_context_unpin(rq->hw_context);
@@ -783,19 +791,17 @@ i915_request_await_start(struct i915_request *rq, struct i915_request *signal)
 	if (!tl) /* already started or maybe even completed */
 		return 0;
 
-	fence = ERR_PTR(-EAGAIN);
-	if (mutex_trylock(&tl->mutex)) {
-		fence = NULL;
-		if (!i915_request_started(signal) &&
-		    !list_is_first(&signal->link, &tl->requests)) {
-			signal = list_prev_entry(signal, link);
-			fence = dma_fence_get(&signal->fence);
-		}
-		mutex_unlock(&tl->mutex);
+	fence = NULL;
+	spin_lock(&tl->request_lock);
+	if (!i915_request_started(signal) &&
+	    !list_is_first(&signal->link, &tl->requests)) {
+		signal = list_prev_entry(signal, link);
+		fence = dma_fence_get(&signal->fence);
 	}
+	spin_unlock(&tl->request_lock);
 	intel_timeline_put(tl);
-	if (IS_ERR_OR_NULL(fence))
-		return PTR_ERR_OR_ZERO(fence);
+	if (!fence)
+		return 0;
 
 	err = 0;
 	if (intel_timeline_sync_is_later(i915_request_timeline(rq), fence))
@@ -1238,7 +1244,9 @@ __i915_request_add_to_timeline(struct i915_request *rq)
 							 0);
 	}
 
+	spin_lock(&timeline->request_lock);
 	list_add_tail(&rq->link, &timeline->requests);
+	spin_unlock(&timeline->request_lock);
 
 	/*
 	 * Make sure that no request gazumped us - if it was allocated after
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
