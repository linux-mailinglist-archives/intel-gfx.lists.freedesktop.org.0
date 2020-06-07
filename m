Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DDDF1F1039
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 00:21:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 843786E44A;
	Sun,  7 Jun 2020 22:21:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66D316E41D
 for <intel-gfx@lists.freedesktop.org>; Sun,  7 Jun 2020 22:21:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21425606-1500050 
 for multiple; Sun, 07 Jun 2020 23:21:13 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  7 Jun 2020 23:20:58 +0100
Message-Id: <20200607222108.14401-18-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200607222108.14401-1-chris@chris-wilson.co.uk>
References: <20200607222108.14401-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 18/28] drm/i915: Strip out internal priorities
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since we are not using any internal priority levels, and in the next few
patches will introduce a new index for which the optimisation is not so
lear cut, discard the small table within the priolist.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gt/intel_engine_heartbeat.c  |  2 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 22 ++------
 drivers/gpu/drm/i915/gt/selftest_lrc.c        |  2 -
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  6 +--
 drivers/gpu/drm/i915/i915_priolist_types.h    |  8 +--
 drivers/gpu/drm/i915/i915_scheduler.c         | 51 +++----------------
 drivers/gpu/drm/i915/i915_scheduler.h         | 18 ++-----
 7 files changed, 21 insertions(+), 88 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
index f67ad937eefb..eecf666c772d 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
@@ -97,7 +97,7 @@ static void heartbeat(struct work_struct *wrk)
 			 * low latency and no jitter] the chance to naturally
 			 * complete before being preempted.
 			 */
-			attr.priority = I915_PRIORITY_MASK;
+			attr.priority = 0;
 			if (rq->sched.attr.priority >= attr.priority)
 				attr.priority |= I915_USER_PRIORITY(I915_PRIORITY_HEARTBEAT);
 			if (rq->sched.attr.priority >= attr.priority)
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 5f5ac05ccbe4..0ca3604ab846 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -434,22 +434,13 @@ static int effective_prio(const struct i915_request *rq)
 
 static int queue_prio(const struct intel_engine_execlists *execlists)
 {
-	struct i915_priolist *p;
 	struct rb_node *rb;
 
 	rb = rb_first_cached(&execlists->queue);
 	if (!rb)
 		return INT_MIN;
 
-	/*
-	 * As the priolist[] are inverted, with the highest priority in [0],
-	 * we have to flip the index value to become priority.
-	 */
-	p = to_priolist(rb);
-	if (!I915_USER_PRIORITY_SHIFT)
-		return p->priority;
-
-	return ((p->priority + 1) << I915_USER_PRIORITY_SHIFT) - ffs(p->used);
+	return to_priolist(rb)->priority;
 }
 
 static inline bool need_preempt(const struct intel_engine_cs *engine,
@@ -2324,9 +2315,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	while ((rb = rb_first_cached(&execlists->queue))) {
 		struct i915_priolist *p = to_priolist(rb);
 		struct i915_request *rq, *rn;
-		int i;
 
-		priolist_for_each_request_consume(rq, rn, p, i) {
+		priolist_for_each_request_consume(rq, rn, p) {
 			bool merge = true;
 
 			/*
@@ -4323,9 +4313,8 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 	/* Flush the queued requests to the timeline list (for retiring). */
 	while ((rb = rb_first_cached(&execlists->queue))) {
 		struct i915_priolist *p = to_priolist(rb);
-		int i;
 
-		priolist_for_each_request_consume(rq, rn, p, i) {
+		priolist_for_each_request_consume(rq, rn, p) {
 			mark_eio(rq);
 			__i915_request_submit(rq);
 		}
@@ -5337,7 +5326,7 @@ static int __execlists_context_alloc(struct intel_context *ce,
 
 static struct list_head *virtual_queue(struct virtual_engine *ve)
 {
-	return &ve->base.execlists.default_priolist.requests[0];
+	return &ve->base.execlists.default_priolist.requests;
 }
 
 static void virtual_context_destroy(struct kref *kref)
@@ -5896,9 +5885,8 @@ void intel_execlists_show_requests(struct intel_engine_cs *engine,
 	count = 0;
 	for (rb = rb_first_cached(&execlists->queue); rb; rb = rb_next(rb)) {
 		struct i915_priolist *p = rb_entry(rb, typeof(*p), node);
-		int i;
 
-		priolist_for_each_request(rq, p, i) {
+		priolist_for_each_request(rq, p) {
 			if (count++ < max - 1)
 				show_request(m, rq, "\t\tQ ");
 			else
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index a8bcea8aa1b4..a0248c47d7bd 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -964,7 +964,6 @@ create_rewinder(struct intel_context *ce,
 
 	intel_ring_advance(rq, cs);
 
-	rq->sched.attr.priority = I915_PRIORITY_MASK;
 	err = 0;
 err:
 	i915_request_get(rq);
@@ -5059,7 +5058,6 @@ create_timestamp(struct intel_context *ce, void *slot, int idx)
 
 	intel_ring_advance(rq, cs);
 
-	rq->sched.attr.priority = I915_PRIORITY_MASK;
 	err = 0;
 err:
 	i915_request_get(rq);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 94eb63f309ce..0c42e8b0c211 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -312,9 +312,8 @@ static void __guc_dequeue(struct intel_engine_cs *engine)
 	while ((rb = rb_first_cached(&execlists->queue))) {
 		struct i915_priolist *p = to_priolist(rb);
 		struct i915_request *rq, *rn;
-		int i;
 
-		priolist_for_each_request_consume(rq, rn, p, i) {
+		priolist_for_each_request_consume(rq, rn, p) {
 			if (last && rq->context != last->context) {
 				if (port == last_port)
 					goto done;
@@ -463,9 +462,8 @@ static void guc_reset_cancel(struct intel_engine_cs *engine)
 	/* Flush the queued requests to the timeline list (for retiring). */
 	while ((rb = rb_first_cached(&execlists->queue))) {
 		struct i915_priolist *p = to_priolist(rb);
-		int i;
 
-		priolist_for_each_request_consume(rq, rn, p, i) {
+		priolist_for_each_request_consume(rq, rn, p) {
 			list_del_init(&rq->sched.link);
 			__i915_request_submit(rq);
 			dma_fence_set_error(&rq->fence, -EIO);
diff --git a/drivers/gpu/drm/i915/i915_priolist_types.h b/drivers/gpu/drm/i915/i915_priolist_types.h
index 8aa7866ec6b6..9a7657bb002e 100644
--- a/drivers/gpu/drm/i915/i915_priolist_types.h
+++ b/drivers/gpu/drm/i915/i915_priolist_types.h
@@ -27,11 +27,8 @@ enum {
 #define I915_USER_PRIORITY_SHIFT 0
 #define I915_USER_PRIORITY(x) ((x) << I915_USER_PRIORITY_SHIFT)
 
-#define I915_PRIORITY_COUNT BIT(I915_USER_PRIORITY_SHIFT)
-#define I915_PRIORITY_MASK (I915_PRIORITY_COUNT - 1)
-
 /* Smallest priority value that cannot be bumped. */
-#define I915_PRIORITY_INVALID (INT_MIN | (u8)I915_PRIORITY_MASK)
+#define I915_PRIORITY_INVALID (INT_MIN)
 
 /*
  * Requests containing performance queries must not be preempted by
@@ -45,9 +42,8 @@ enum {
 #define I915_PRIORITY_BARRIER (I915_PRIORITY_UNPREEMPTABLE - 1)
 
 struct i915_priolist {
-	struct list_head requests[I915_PRIORITY_COUNT];
+	struct list_head requests;
 	struct rb_node node;
-	unsigned long used;
 	int priority;
 };
 
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 250832768279..7945cc161a12 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -43,7 +43,7 @@ static inline struct i915_priolist *to_priolist(struct rb_node *rb)
 static void assert_priolists(struct intel_engine_execlists * const execlists)
 {
 	struct rb_node *rb;
-	long last_prio, i;
+	long last_prio;
 
 	if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
 		return;
@@ -57,14 +57,6 @@ static void assert_priolists(struct intel_engine_execlists * const execlists)
 
 		GEM_BUG_ON(p->priority > last_prio);
 		last_prio = p->priority;
-
-		GEM_BUG_ON(!p->used);
-		for (i = 0; i < ARRAY_SIZE(p->requests); i++) {
-			if (list_empty(&p->requests[i]))
-				continue;
-
-			GEM_BUG_ON(!(p->used & BIT(i)));
-		}
 	}
 }
 
@@ -75,13 +67,10 @@ i915_sched_lookup_priolist(struct intel_engine_cs *engine, int prio)
 	struct i915_priolist *p;
 	struct rb_node **parent, *rb;
 	bool first = true;
-	int idx, i;
 
 	lockdep_assert_held(&engine->active.lock);
 	assert_priolists(execlists);
 
-	/* buckets sorted from highest [in slot 0] to lowest priority */
-	idx = I915_PRIORITY_COUNT - (prio & I915_PRIORITY_MASK) - 1;
 	prio >>= I915_USER_PRIORITY_SHIFT;
 	if (unlikely(execlists->no_priolist))
 		prio = I915_PRIORITY_NORMAL;
@@ -99,7 +88,7 @@ i915_sched_lookup_priolist(struct intel_engine_cs *engine, int prio)
 			parent = &rb->rb_right;
 			first = false;
 		} else {
-			goto out;
+			return &p->requests;
 		}
 	}
 
@@ -125,15 +114,12 @@ i915_sched_lookup_priolist(struct intel_engine_cs *engine, int prio)
 	}
 
 	p->priority = prio;
-	for (i = 0; i < ARRAY_SIZE(p->requests); i++)
-		INIT_LIST_HEAD(&p->requests[i]);
+	INIT_LIST_HEAD(&p->requests);
+
 	rb_link_node(&p->node, rb, parent);
 	rb_insert_color_cached(&p->node, &execlists->queue, first);
-	p->used = 0;
 
-out:
-	p->used |= BIT(idx);
-	return &p->requests[idx];
+	return &p->requests;
 }
 
 void __i915_priolist_free(struct i915_priolist *p)
@@ -363,30 +349,6 @@ void i915_schedule(struct i915_request *rq, const struct i915_sched_attr *attr)
 	spin_unlock_irq(&schedule_lock);
 }
 
-static void __bump_priority(struct i915_sched_node *node, unsigned int bump)
-{
-	struct i915_sched_attr attr = node->attr;
-
-	if (attr.priority & bump)
-		return;
-
-	attr.priority |= bump;
-	__i915_schedule(node, &attr);
-}
-
-void i915_schedule_bump_priority(struct i915_request *rq, unsigned int bump)
-{
-	unsigned long flags;
-
-	GEM_BUG_ON(bump & ~I915_PRIORITY_MASK);
-	if (READ_ONCE(rq->sched.attr.priority) & bump)
-		return;
-
-	spin_lock_irqsave(&schedule_lock, flags);
-	__bump_priority(&rq->sched, bump);
-	spin_unlock_irqrestore(&schedule_lock, flags);
-}
-
 void i915_sched_node_init(struct i915_sched_node *node)
 {
 	INIT_LIST_HEAD(&node->signalers_list);
@@ -570,8 +532,7 @@ int __init i915_global_scheduler_init(void)
 	if (!global.slab_dependencies)
 		return -ENOMEM;
 
-	global.slab_priorities = KMEM_CACHE(i915_priolist,
-					    SLAB_HWCACHE_ALIGN);
+	global.slab_priorities = KMEM_CACHE(i915_priolist, 0);
 	if (!global.slab_priorities)
 		goto err_priorities;
 
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index 13432add8929..1b3c1e1a6ec5 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -13,17 +13,11 @@
 
 #include "i915_scheduler_types.h"
 
-#define priolist_for_each_request(it, plist, idx) \
-	for (idx = 0; idx < ARRAY_SIZE((plist)->requests); idx++) \
-		list_for_each_entry(it, &(plist)->requests[idx], sched.link)
-
-#define priolist_for_each_request_consume(it, n, plist, idx) \
-	for (; \
-	     (plist)->used ? (idx = __ffs((plist)->used)), 1 : 0; \
-	     (plist)->used &= ~BIT(idx)) \
-		list_for_each_entry_safe(it, n, \
-					 &(plist)->requests[idx], \
-					 sched.link)
+#define priolist_for_each_request(it, plist) \
+	list_for_each_entry(it, &(plist)->requests, sched.link)
+
+#define priolist_for_each_request_consume(it, n, plist) \
+	list_for_each_entry_safe(it, n, &(plist)->requests, sched.link)
 
 void i915_sched_node_init(struct i915_sched_node *node);
 void i915_sched_node_reinit(struct i915_sched_node *node);
@@ -45,8 +39,6 @@ void i915_sched_node_fini(struct i915_sched_node *node);
 void i915_schedule(struct i915_request *request,
 		   const struct i915_sched_attr *attr);
 
-void i915_schedule_bump_priority(struct i915_request *rq, unsigned int bump);
-
 struct list_head *
 i915_sched_lookup_priolist(struct intel_engine_cs *engine, int prio);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
