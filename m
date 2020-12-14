Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2A72D95DA
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 11:10:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 379B06E18F;
	Mon, 14 Dec 2020 10:10:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D1156E15A
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 10:10:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23317848-1500050 
 for multiple; Mon, 14 Dec 2020 10:09:58 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Dec 2020 10:09:36 +0000
Message-Id: <20201214100949.11387-56-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201214100949.11387-1-chris@chris-wilson.co.uk>
References: <20201214100949.11387-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 56/69] drm/i915: Move scheduler queue
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

Extract the scheduling queue from "execlists" into the per-engine
scheduling structs, for reuse by other backends.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_context_types.h |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_wait.c      |  1 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  6 +--
 drivers/gpu/drm/i915/gt/intel_engine_pm.c     |  2 +-
 drivers/gpu/drm/i915/gt/intel_engine_types.h  | 14 -------
 .../drm/i915/gt/intel_execlists_submission.c  | 26 ++++++------
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 10 ++---
 drivers/gpu/drm/i915/i915_drv.h               |  1 -
 drivers/gpu/drm/i915/i915_request.h           |  2 +-
 drivers/gpu/drm/i915/i915_scheduler.c         | 40 +++++++++++--------
 drivers/gpu/drm/i915/i915_scheduler.h         | 14 +++++++
 drivers/gpu/drm/i915/i915_scheduler_types.h   | 15 +++++++
 .../gpu/drm/i915/selftests/i915_scheduler.c   |  2 +-
 13 files changed, 77 insertions(+), 58 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index 1449f54924e0..99bd7b4f4ffe 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -19,7 +19,7 @@
 
 #include "gt/intel_context_types.h"
 
-#include "i915_scheduler.h"
+#include "i915_scheduler_types.h"
 #include "i915_sw_fence.h"
 
 struct pid;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_wait.c b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
index b8b91a7564cf..d905d1111412 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_wait.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
@@ -12,6 +12,7 @@
 #include "dma_resv_utils.h"
 #include "i915_gem_ioctls.h"
 #include "i915_gem_object.h"
+#include "i915_scheduler.h"
 
 static long
 i915_gem_object_wait_fence(struct dma_fence *fence,
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 01499390aed7..8e9dfa3efe9f 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -591,8 +591,6 @@ void intel_engine_init_execlists(struct intel_engine_cs *engine)
 	memset(execlists->pending, 0, sizeof(execlists->pending));
 	execlists->active =
 		memset(execlists->inflight, 0, sizeof(execlists->inflight));
-
-	execlists->queue = RB_ROOT_CACHED;
 }
 
 static void cleanup_status_page(struct intel_engine_cs *engine)
@@ -899,7 +897,7 @@ int intel_engines_init(struct intel_gt *gt)
  */
 void intel_engine_cleanup_common(struct intel_engine_cs *engine)
 {
-	GEM_BUG_ON(!list_empty(&engine->active.requests));
+	i915_sched_fini_engine(&engine->active);
 	tasklet_kill(&engine->execlists.tasklet); /* flush the callback */
 
 	cleanup_status_page(engine);
@@ -1222,7 +1220,7 @@ bool intel_engine_is_idle(struct intel_engine_cs *engine)
 	}
 
 	/* ELSP is empty, but there are ready requests? E.g. after reset */
-	if (!RB_EMPTY_ROOT(&engine->execlists.queue.rb_root))
+	if (!i915_sched_is_idle(&engine->active))
 		return false;
 
 	/* Ring stopped? */
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index c3bb96bf8b69..aea8b6eab5ee 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -273,7 +273,7 @@ static int __engine_park(struct intel_wakeref *wf)
 	if (engine->park)
 		engine->park(engine);
 
-	engine->execlists.no_priolist = false;
+	engine->active.no_priolist = false;
 
 	/* While gt calls i915_vma_parked(), we have to break the lock cycle */
 	intel_gt_pm_put_async(engine->gt);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 16e1c5299df4..ec719eac4dd2 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -154,11 +154,6 @@ struct intel_engine_execlists {
 	 */
 	struct timer_list preempt;
 
-	/**
-	 * @default_priolist: priority list for I915_PRIORITY_NORMAL
-	 */
-	struct i915_priolist default_priolist;
-
 	/**
 	 * @ccid: identifier for contexts submitted to this engine
 	 */
@@ -193,11 +188,6 @@ struct intel_engine_execlists {
 	 */
 	u32 reset_ccid;
 
-	/**
-	 * @no_priolist: priority lists disabled
-	 */
-	bool no_priolist;
-
 	/**
 	 * @submit_reg: gen-specific execlist submission register
 	 * set to the ExecList Submission Port (elsp) register pre-Gen11 and to
@@ -239,10 +229,6 @@ struct intel_engine_execlists {
 	 */
 	unsigned int port_mask;
 
-	/**
-	 * @queue: queue of requests, in priority lists
-	 */
-	struct rb_root_cached queue;
 	struct rb_root_cached virtual;
 
 	/**
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 996f12e3dba8..bcb852203fc4 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -396,13 +396,13 @@ static inline u64 rq_deadline(const struct i915_request *rq)
 static const struct i915_request *
 first_queue_request(struct intel_engine_cs *engine)
 {
-	struct intel_engine_execlists *el = &engine->execlists;
+	struct i915_sched_engine *se = &engine->active;
 
 	do {
 		struct i915_priolist *p;
 		struct rb_node *rb;
 
-		rb = rb_first_cached(&el->queue);
+		rb = rb_first_cached(&se->queue);
 		if (!rb)
 			return NULL;
 
@@ -412,7 +412,7 @@ first_queue_request(struct intel_engine_cs *engine)
 						struct i915_request,
 						sched.link);
 
-		rb_erase_cached(&p->node, &el->queue);
+		rb_erase_cached(&p->node, &se->queue);
 		i915_priolist_free(p);
 	} while (1);
 }
@@ -1120,7 +1120,7 @@ __unwind_incomplete_requests(struct intel_engine_cs *engine)
 			deadline = rq_deadline(rq);
 			pl = i915_sched_lookup_priolist(engine, deadline);
 		}
-		GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
+		GEM_BUG_ON(i915_sched_is_idle(&engine->active));
 
 		GEM_BUG_ON(i915_request_in_priority_queue(rq));
 		list_move(&rq->sched.link, pl);
@@ -1910,11 +1910,11 @@ static bool needs_timeslice(const struct intel_engine_cs *engine,
 		return false;
 
 	/* If ELSP[1] is occupied, always check to see if worth slicing */
-	if (!list_is_last_rcu(&rq->sched.link, &engine->active.requests))
+	if (!i915_sched_is_last_request(&engine->active, rq))
 		return true;
 
 	/* Otherwise, ELSP[0] is by itself, but may be waiting in the queue */
-	if (!RB_EMPTY_ROOT(&engine->execlists.queue.rb_root))
+	if (!i915_sched_is_idle(&engine->active))
 		return true;
 
 	return !RB_EMPTY_ROOT(&engine->execlists.virtual.rb_root);
@@ -2197,7 +2197,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			break;
 	}
 
-	while ((rb = rb_first_cached(&execlists->queue))) {
+	while ((rb = rb_first_cached(&engine->active.queue))) {
 		struct i915_priolist *p = to_priolist(rb);
 		struct i915_request *rq, *rn;
 
@@ -2280,7 +2280,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		}
 
 		/* Remove the node, but defer the free for later */
-		rb_erase_cached(&p->node, &execlists->queue);
+		rb_erase_cached(&p->node, &engine->active.queue);
 		free = i915_priolist_free_defer(p, free);
 	}
 done:
@@ -4062,7 +4062,7 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 	intel_engine_signal_breadcrumbs(engine);
 
 	/* Flush the queued requests to the timeline list (for retiring). */
-	while ((rb = rb_first_cached(&execlists->queue))) {
+	while ((rb = rb_first_cached(&engine->active.queue))) {
 		struct i915_priolist *p = to_priolist(rb);
 
 		priolist_for_each_request_consume(rq, rn, p) {
@@ -4070,10 +4070,10 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 			__i915_request_submit(rq);
 		}
 
-		rb_erase_cached(&p->node, &execlists->queue);
+		rb_erase_cached(&p->node, &engine->active.queue);
 		i915_priolist_free(p);
 	}
-	GEM_BUG_ON(!RB_EMPTY_ROOT(&execlists->queue.rb_root));
+	GEM_BUG_ON(!i915_sched_is_idle(&engine->active));
 
 	/* On-hold requests will be flushed to timeline upon their release */
 	list_for_each_entry(rq, &engine->active.hold, sched.link)
@@ -4550,7 +4550,7 @@ static int __execlists_context_alloc(struct intel_context *ce,
 
 static struct list_head *virtual_queue(struct virtual_engine *ve)
 {
-	return &ve->base.execlists.default_priolist.requests;
+	return &ve->base.active.default_priolist.requests;
 }
 
 static void rcu_virtual_context_destroy(struct work_struct *wrk)
@@ -5134,7 +5134,7 @@ void intel_execlists_show_requests(struct intel_engine_cs *engine,
 
 	last = NULL;
 	count = 0;
-	for (rb = rb_first_cached(&execlists->queue); rb; rb = rb_next(rb)) {
+	for (rb = rb_first_cached(&engine->active.queue); rb; rb = rb_next(rb)) {
 		struct i915_priolist *p = rb_entry(rb, typeof(*p), node);
 
 		priolist_for_each_request(rq, p) {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index c423c9861100..facd9d4457ed 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -310,7 +310,7 @@ static void __guc_dequeue(struct intel_engine_cs *engine)
 	 * event.
 	 */
 	port = first;
-	while ((rb = rb_first_cached(&execlists->queue))) {
+	while ((rb = rb_first_cached(&engine->active.queue))) {
 		struct i915_priolist *p = to_priolist(rb);
 		struct i915_request *rq, *rn;
 
@@ -330,7 +330,7 @@ static void __guc_dequeue(struct intel_engine_cs *engine)
 			last = rq;
 		}
 
-		rb_erase_cached(&p->node, &execlists->queue);
+		rb_erase_cached(&p->node, &engine->active.queue);
 		i915_priolist_free(p);
 	}
 done:
@@ -459,7 +459,7 @@ static void guc_reset_cancel(struct intel_engine_cs *engine)
 	}
 
 	/* Flush the queued requests to the timeline list (for retiring). */
-	while ((rb = rb_first_cached(&execlists->queue))) {
+	while ((rb = rb_first_cached(&engine->active.queue))) {
 		struct i915_priolist *p = to_priolist(rb);
 
 		priolist_for_each_request_consume(rq, rn, p) {
@@ -469,10 +469,10 @@ static void guc_reset_cancel(struct intel_engine_cs *engine)
 			i915_request_mark_complete(rq);
 		}
 
-		rb_erase_cached(&p->node, &execlists->queue);
+		rb_erase_cached(&p->node, &engine->active.queue);
 		i915_priolist_free(p);
 	}
-	GEM_BUG_ON(!RB_EMPTY_ROOT(&execlists->queue.rb_root));
+	GEM_BUG_ON(!i915_sched_is_idle(&engine->active));
 
 	/* Remaining _unready_ requests will be nop'ed when submitted */
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 5bba7475e9fd..91cea2f0f6ff 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -97,7 +97,6 @@
 #include "i915_gpu_error.h"
 #include "i915_perf_types.h"
 #include "i915_request.h"
-#include "i915_scheduler.h"
 #include "gt/intel_timeline.h"
 #include "i915_vma.h"
 #include "i915_irq.h"
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index c528ab33c9bd..6949dc83b3e5 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -35,7 +35,7 @@
 #include "gt/intel_timeline_types.h"
 
 #include "i915_gem.h"
-#include "i915_scheduler.h"
+#include "i915_scheduler_types.h"
 #include "i915_selftest.h"
 #include "i915_sw_fence.h"
 
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 88b2c0bf853c..412a60cd2951 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -129,6 +129,7 @@ void i915_sched_init_engine(struct i915_sched_engine *se,
 
 	INIT_LIST_HEAD(&se->requests);
 	INIT_LIST_HEAD(&se->hold);
+	se->queue = RB_ROOT_CACHED;
 
 	i915_sched_init_ipi(&se->ipi);
 
@@ -145,6 +146,11 @@ void i915_sched_init_engine(struct i915_sched_engine *se,
 #endif
 }
 
+void i915_sched_fini_engine(struct i915_sched_engine *se)
+{
+	GEM_BUG_ON(!list_empty(&se->requests));
+}
+
 static void __ipi_add(struct i915_request *rq)
 {
 #define STUB ((struct i915_request *)1)
@@ -205,7 +211,7 @@ static inline struct i915_priolist *to_priolist(struct rb_node *rb)
 	return rb_entry(rb, struct i915_priolist, node);
 }
 
-static void assert_priolists(struct intel_engine_execlists * const execlists)
+static void assert_priolists(struct intel_engine_cs * const engine)
 {
 	struct rb_node *rb;
 	u64 last_deadline;
@@ -213,11 +219,11 @@ static void assert_priolists(struct intel_engine_execlists * const execlists)
 	if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
 		return;
 
-	GEM_BUG_ON(rb_first_cached(&execlists->queue) !=
-		   rb_first(&execlists->queue.rb_root));
+	GEM_BUG_ON(rb_first_cached(&engine->active.queue) !=
+		   rb_first(&engine->active.queue.rb_root));
 
 	last_deadline = 0;
-	for (rb = rb_first_cached(&execlists->queue); rb; rb = rb_next(rb)) {
+	for (rb = rb_first_cached(&engine->active.queue); rb; rb = rb_next(rb)) {
 		const struct i915_priolist *p = to_priolist(rb);
 
 		GEM_BUG_ON(p->deadline < last_deadline);
@@ -228,24 +234,24 @@ static void assert_priolists(struct intel_engine_execlists * const execlists)
 struct list_head *
 i915_sched_lookup_priolist(struct intel_engine_cs *engine, u64 deadline)
 {
-	struct intel_engine_execlists * const execlists = &engine->execlists;
+	struct i915_sched_engine * const se = &engine->active;
 	struct list_head *free = NULL;
 	struct rb_node **parent, *rb;
 	struct i915_priolist *p;
 	bool first;
 
 	GEM_BUG_ON(deadline == I915_DEADLINE_NEVER);
-	lockdep_assert_held(&engine->active.lock);
-	assert_priolists(execlists);
+	lockdep_assert_held(&se->lock);
+	assert_priolists(engine);
 
-	if (unlikely(execlists->no_priolist))
+	if (unlikely(se->no_priolist))
 		deadline = 0;
 
 find_priolist:
 	/* Earliest deadline is scheduled first, equal deadlines fifo. */
 	rb = NULL;
 	first = true;
-	parent = &execlists->queue.rb_root.rb_node;
+	parent = &se->queue.rb_root.rb_node;
 	while (*parent) {
 		rb = *parent;
 		p = to_priolist(rb);
@@ -261,8 +267,8 @@ i915_sched_lookup_priolist(struct intel_engine_cs *engine, u64 deadline)
 		 */
 		if (list_empty(&p->requests)) {
 			rb = rb_parent(&p->node);
-			parent = rb ? &rb : &execlists->queue.rb_root.rb_node;
-			rb_erase_cached(&p->node, &execlists->queue);
+			parent = rb ? &rb : &se->queue.rb_root.rb_node;
+			rb_erase_cached(&p->node, &se->queue);
 			free = i915_priolist_free_defer(p, free);
 			continue;
 		}
@@ -274,7 +280,7 @@ i915_sched_lookup_priolist(struct intel_engine_cs *engine, u64 deadline)
 	}
 
 	if (!deadline) {
-		p = &execlists->default_priolist;
+		p = &se->default_priolist;
 	} else if (free) {
 		p = container_of(free, typeof(*p), requests);
 		free = p->requests.next;
@@ -292,7 +298,7 @@ i915_sched_lookup_priolist(struct intel_engine_cs *engine, u64 deadline)
 			 * requests, so if userspace lied about their
 			 * dependencies that reordering may be visible.
 			 */
-			execlists->no_priolist = true;
+			se->no_priolist = true;
 			goto find_priolist;
 		}
 	}
@@ -301,9 +307,9 @@ i915_sched_lookup_priolist(struct intel_engine_cs *engine, u64 deadline)
 	INIT_LIST_HEAD(&p->requests);
 
 	rb_link_node(&p->node, rb, parent);
-	rb_insert_color_cached(&p->node, &execlists->queue, first);
-	GEM_BUG_ON(rb_first_cached(&execlists->queue) !=
-		   rb_first(&execlists->queue.rb_root));
+	rb_insert_color_cached(&p->node, &se->queue, first);
+	GEM_BUG_ON(rb_first_cached(&se->queue) !=
+		   rb_first(&se->queue.rb_root));
 
 out:
 	i915_priolist_free_many(free);
@@ -367,7 +373,7 @@ static bool is_first_priolist(const struct intel_engine_cs *engine,
 	struct rb_node *node =
 		&container_of(plist, struct i915_priolist, requests)->node;
 
-	return node == rb_first_cached(&engine->execlists.queue);
+	return node == rb_first_cached(&engine->active.queue);
 }
 
 static bool __i915_request_set_deadline(struct i915_request *rq, u64 deadline)
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index bd87a5c67c2f..9d1c7b88a9f7 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -12,6 +12,7 @@
 #include <linux/kernel.h>
 
 #include "i915_scheduler_types.h"
+#include "i915_request.h"
 
 struct drm_printer;
 
@@ -37,6 +38,7 @@ void i915_sched_node_retire(struct i915_sched_node *node);
 
 void i915_sched_init_engine(struct i915_sched_engine *se,
 			    unsigned int subclass);
+void i915_sched_fini_engine(struct i915_sched_engine *se);
 
 void i915_request_set_priority(struct i915_request *request, int prio);
 void i915_request_set_deadline(struct i915_request *request, u64 deadline);
@@ -84,6 +86,18 @@ i915_priolist_free_defer(struct i915_priolist *p, struct list_head *free)
 	return free;
 }
 
+static inline bool i915_sched_is_idle(const struct i915_sched_engine *se)
+{
+	return RB_EMPTY_ROOT(&se->queue.rb_root);
+}
+
+static inline bool
+i915_sched_is_last_request(const struct i915_sched_engine *se,
+			   const struct i915_request *rq)
+{
+	return list_is_last_rcu(&rq->sched.link, &se->requests);
+}
+
 void i915_request_show_with_schedule(struct drm_printer *m,
 				     const struct i915_request *rq,
 				     const char *prefix,
diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
index e56e89b0e8cb..26aac48625c1 100644
--- a/drivers/gpu/drm/i915/i915_scheduler_types.h
+++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
@@ -105,10 +105,25 @@ struct i915_sched_ipi {
 
 struct i915_sched_engine {
 	spinlock_t lock;
+
 	struct list_head requests;
 	struct list_head hold; /* ready requests, but on hold */
+	/**
+	 * @queue: queue of requests, in priority lists
+	 */
+	struct rb_root_cached queue;
 
 	struct i915_sched_ipi ipi;
+
+	/**
+	 * @default_priolist: priority list for I915_PRIORITY_NORMAL
+	 */
+	struct i915_priolist default_priolist;
+
+	/**
+	 * @no_priolist: priority lists disabled
+	 */
+	bool no_priolist;
 };
 
 struct i915_dependency {
diff --git a/drivers/gpu/drm/i915/selftests/i915_scheduler.c b/drivers/gpu/drm/i915/selftests/i915_scheduler.c
index b342bd9f5861..14f842397859 100644
--- a/drivers/gpu/drm/i915/selftests/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/selftests/i915_scheduler.c
@@ -134,7 +134,7 @@ static bool check_context_order(struct intel_engine_cs *engine)
 	last_context = 0;
 	last_seqno = 0;
 	last_prio = 0;
-	for (rb = rb_first_cached(&engine->execlists.queue); rb; rb = rb_next(rb)) {
+	for (rb = rb_first_cached(&engine->active.queue); rb; rb = rb_next(rb)) {
 		struct i915_priolist *p = rb_entry(rb, typeof(*p), node);
 		struct i915_request *rq;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
