Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 299D12F9C3F
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 11:19:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9822A6E1A5;
	Mon, 18 Jan 2021 10:19:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 946A46E1A5
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 10:19:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23626677-1500050 
 for multiple; Mon, 18 Jan 2021 10:17:56 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Jan 2021 10:17:55 +0000
Message-Id: <20210118101755.476744-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <87lfcqobpl.fsf@intel.com>
References: <87lfcqobpl.fsf@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Check for rq->hwsp validity after
 acquiring RCU lock
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since we allow removing the timeline map at runtime, there is a risk
that rq->hwsp points into a stale page. To control that risk, we hold
the RCU read lock while reading *rq->hwsp, but we missed a couple of
important barriers. First, the unpinning / removal of the timeline map
must be after all RCU readers into that map are complete, i.e. after an
rcu barrier (in this case courtesy of call_rcu()). Secondly, we must
make sure that the rq->hwsp we are about to dereference under the RCU
lock is valid. In this case, we make the rq->hwsp pointer safe during
i915_request_retire() and so we know that rq->hwsp may become invalid
only after the request has been signaled. Therefore is the request is
not yet signaled when we acquire rq->hwsp under the RCU, we know that
rq->hwsp will remain valid for the duration of the RCU read lock.

This is a very small window that may lead to either considering the
request not completed (causing a delay until the request is checked
again, any wait for the request is not affected) or dereferencing an
invalid pointer.

Fixes: 3adac4689f58 ("drm/i915: Introduce concept of per-timeline (context) HWSP")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: <stable@vger.kernel.org> # v5.1+
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20201218122421.18344-1-chris@chris-wilson.co.uk
(cherry picked from commit 9bb36cf66091ddf2d8840e5aa705ad3c93a6279b)
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c |  9 ++---
 drivers/gpu/drm/i915/gt/intel_timeline.c    | 10 +++---
 drivers/gpu/drm/i915/i915_request.h         | 37 ++++++++++++++++++---
 3 files changed, 38 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index a24cc1ff08a0..0625cbb3b431 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -134,11 +134,6 @@ static bool remove_signaling_context(struct intel_breadcrumbs *b,
 	return true;
 }
 
-static inline bool __request_completed(const struct i915_request *rq)
-{
-	return i915_seqno_passed(__hwsp_seqno(rq), rq->fence.seqno);
-}
-
 __maybe_unused static bool
 check_signal_order(struct intel_context *ce, struct i915_request *rq)
 {
@@ -257,7 +252,7 @@ static void signal_irq_work(struct irq_work *work)
 		list_for_each_entry_rcu(rq, &ce->signals, signal_link) {
 			bool release;
 
-			if (!__request_completed(rq))
+			if (!__i915_request_is_complete(rq))
 				break;
 
 			if (!test_and_clear_bit(I915_FENCE_FLAG_SIGNAL,
@@ -379,7 +374,7 @@ static void insert_breadcrumb(struct i915_request *rq)
 	 * straight onto a signaled list, and queue the irq worker for
 	 * its signal completion.
 	 */
-	if (__request_completed(rq)) {
+	if (__i915_request_is_complete(rq)) {
 		if (__signal_request(rq) &&
 		    llist_add(&rq->signal_node, &b->signaled_requests))
 			irq_work_queue(&b->irq_work);
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
index 7ea94d201fe6..8015964043eb 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.c
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
@@ -126,6 +126,10 @@ static void __rcu_cacheline_free(struct rcu_head *rcu)
 	struct intel_timeline_cacheline *cl =
 		container_of(rcu, typeof(*cl), rcu);
 
+	/* Must wait until after all *rq->hwsp are complete before removing */
+	i915_gem_object_unpin_map(cl->hwsp->vma->obj);
+	__idle_hwsp_free(cl->hwsp, ptr_unmask_bits(cl->vaddr, CACHELINE_BITS));
+
 	i915_active_fini(&cl->active);
 	kfree(cl);
 }
@@ -133,11 +137,6 @@ static void __rcu_cacheline_free(struct rcu_head *rcu)
 static void __idle_cacheline_free(struct intel_timeline_cacheline *cl)
 {
 	GEM_BUG_ON(!i915_active_is_idle(&cl->active));
-
-	i915_gem_object_unpin_map(cl->hwsp->vma->obj);
-	i915_vma_put(cl->hwsp->vma);
-	__idle_hwsp_free(cl->hwsp, ptr_unmask_bits(cl->vaddr, CACHELINE_BITS));
-
 	call_rcu(&cl->rcu, __rcu_cacheline_free);
 }
 
@@ -179,7 +178,6 @@ cacheline_alloc(struct intel_timeline_hwsp *hwsp, unsigned int cacheline)
 		return ERR_CAST(vaddr);
 	}
 
-	i915_vma_get(hwsp->vma);
 	cl->hwsp = hwsp;
 	cl->vaddr = page_pack_bits(vaddr, cacheline);
 
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 620b6fab2c5c..92adfee30c7c 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -434,7 +434,7 @@ static inline u32 hwsp_seqno(const struct i915_request *rq)
 
 static inline bool __i915_request_has_started(const struct i915_request *rq)
 {
-	return i915_seqno_passed(hwsp_seqno(rq), rq->fence.seqno - 1);
+	return i915_seqno_passed(__hwsp_seqno(rq), rq->fence.seqno - 1);
 }
 
 /**
@@ -465,11 +465,19 @@ static inline bool __i915_request_has_started(const struct i915_request *rq)
  */
 static inline bool i915_request_started(const struct i915_request *rq)
 {
+	bool result;
+
 	if (i915_request_signaled(rq))
 		return true;
 
-	/* Remember: started but may have since been preempted! */
-	return __i915_request_has_started(rq);
+	result = true;
+	rcu_read_lock(); /* the HWSP may be freed at runtime */
+	if (likely(!i915_request_signaled(rq)))
+		/* Remember: started but may have since been preempted! */
+		result = __i915_request_has_started(rq);
+	rcu_read_unlock();
+
+	return result;
 }
 
 /**
@@ -482,10 +490,16 @@ static inline bool i915_request_started(const struct i915_request *rq)
  */
 static inline bool i915_request_is_running(const struct i915_request *rq)
 {
+	bool result;
+
 	if (!i915_request_is_active(rq))
 		return false;
 
-	return __i915_request_has_started(rq);
+	rcu_read_lock();
+	result = __i915_request_has_started(rq) && i915_request_is_active(rq);
+	rcu_read_unlock();
+
+	return result;
 }
 
 /**
@@ -509,12 +523,25 @@ static inline bool i915_request_is_ready(const struct i915_request *rq)
 	return !list_empty(&rq->sched.link);
 }
 
+static inline bool __i915_request_is_complete(const struct i915_request *rq)
+{
+	return i915_seqno_passed(__hwsp_seqno(rq), rq->fence.seqno);
+}
+
 static inline bool i915_request_completed(const struct i915_request *rq)
 {
+	bool result;
+
 	if (i915_request_signaled(rq))
 		return true;
 
-	return i915_seqno_passed(hwsp_seqno(rq), rq->fence.seqno);
+	result = true;
+	rcu_read_lock(); /* the HWSP may be freed at runtime */
+	if (likely(!i915_request_signaled(rq)))
+		result = __i915_request_is_complete(rq);
+	rcu_read_unlock();
+
+	return result;
 }
 
 static inline void i915_request_mark_complete(struct i915_request *rq)
-- 
2.30.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
