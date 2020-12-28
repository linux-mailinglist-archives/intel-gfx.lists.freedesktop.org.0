Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7622E64C0
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Dec 2020 16:53:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D961B89B4D;
	Mon, 28 Dec 2020 15:53:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E9DA899D4
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Dec 2020 15:52:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23448209-1500050 
 for multiple; Mon, 28 Dec 2020 15:52:37 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Dec 2020 15:52:05 +0000
Message-Id: <20201228155229.9516-30-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201228155229.9516-1-chris@chris-wilson.co.uk>
References: <20201228155229.9516-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 30/54] drm/i915: Move scheduler queue
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
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  5 +--
 drivers/gpu/drm/i915/gt/intel_engine_pm.c     |  3 +-
 drivers/gpu/drm/i915/gt/intel_engine_types.h  | 14 -------
 .../drm/i915/gt/intel_execlists_submission.c  | 29 +++++++-------
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 11 +++---
 drivers/gpu/drm/i915/i915_drv.h               |  1 -
 drivers/gpu/drm/i915/i915_request.h           |  2 +-
 drivers/gpu/drm/i915/i915_scheduler.c         | 38 ++++++++++++-------
 drivers/gpu/drm/i915/i915_scheduler.h         | 15 ++++++++
 drivers/gpu/drm/i915/i915_scheduler_types.h   | 15 ++++++++
 .../gpu/drm/i915/selftests/i915_scheduler.c   |  2 +-
 13 files changed, 84 insertions(+), 54 deletions(-)

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
index a5d7efe67021..0d9dea4b0b65 100644
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
index 007c5e228452..db17d9fe3333 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -593,7 +593,6 @@ void intel_engine_init_execlists(struct intel_engine_cs *engine)
 		memset(execlists->inflight, 0, sizeof(execlists->inflight));
 
 	execlists->queue_priority_hint = INT_MIN;
-	execlists->queue = RB_ROOT_CACHED;
 }
 
 static void cleanup_status_page(struct intel_engine_cs *engine)
@@ -915,7 +914,7 @@ int intel_engines_init(struct intel_gt *gt)
  */
 void intel_engine_cleanup_common(struct intel_engine_cs *engine)
 {
-	GEM_BUG_ON(!list_empty(&engine->active.requests));
+	i915_sched_fini_engine(&engine->active);
 	tasklet_kill(&engine->execlists.tasklet); /* flush the callback */
 
 	intel_breadcrumbs_free(engine->breadcrumbs);
@@ -1236,7 +1235,7 @@ bool intel_engine_is_idle(struct intel_engine_cs *engine)
 	}
 
 	/* ELSP is empty, but there are ready requests? E.g. after reset */
-	if (!RB_EMPTY_ROOT(&engine->execlists.queue.rb_root))
+	if (!i915_sched_is_idle(&engine->active))
 		return false;
 
 	/* Ring stopped? */
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index 2843db731b7d..14378e3a7a50 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -5,6 +5,7 @@
  */
 
 #include "i915_drv.h"
+#include "i915_scheduler.h"
 
 #include "intel_breadcrumbs.h"
 #include "intel_context.h"
@@ -277,7 +278,7 @@ static int __engine_park(struct intel_wakeref *wf)
 	if (engine->park)
 		engine->park(engine);
 
-	engine->execlists.no_priolist = false;
+	i915_sched_park_engine(&engine->active);
 
 	/* While gt calls i915_vma_parked(), we have to break the lock cycle */
 	intel_gt_pm_put_async(engine->gt);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 6379b1e0b7ea..a2a49e51b92d 100644
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
@@ -253,10 +243,6 @@ struct intel_engine_execlists {
 	 */
 	int queue_priority_hint;
 
-	/**
-	 * @queue: queue of requests, in priority lists
-	 */
-	struct rb_root_cached queue;
 	struct rb_root_cached virtual;
 
 	/**
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index b3bbcf76a6b1..5d76a02d945e 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -284,11 +284,11 @@ static int effective_prio(const struct i915_request *rq)
 	return prio;
 }
 
-static int queue_prio(const struct intel_engine_execlists *execlists)
+static int queue_prio(const struct i915_sched_engine *se)
 {
 	struct rb_node *rb;
 
-	rb = rb_first_cached(&execlists->queue);
+	rb = rb_first_cached(&se->queue);
 	if (!rb)
 		return INT_MIN;
 
@@ -351,7 +351,7 @@ static inline bool need_preempt(const struct intel_engine_cs *engine,
 	 * context, it's priority would not exceed ELSP[0] aka last_prio.
 	 */
 	return max(virtual_prio(&engine->execlists),
-		   queue_prio(&engine->execlists)) > last_prio;
+		   queue_prio(&engine->active)) > last_prio;
 }
 
 __maybe_unused static inline bool
@@ -1047,11 +1047,11 @@ static bool needs_timeslice(const struct intel_engine_cs *engine,
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
@@ -1270,7 +1270,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		GEM_BUG_ON(rq->engine != &ve->base);
 		GEM_BUG_ON(rq->context != &ve->context);
 
-		if (unlikely(rq_prio(rq) < queue_prio(execlists))) {
+		if (unlikely(rq_prio(rq) < queue_prio(&engine->active))) {
 			spin_unlock(&ve->base.active.lock);
 			break;
 		}
@@ -1338,7 +1338,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			break;
 	}
 
-	while ((rb = rb_first_cached(&execlists->queue))) {
+	while ((rb = rb_first_cached(&engine->active.queue))) {
 		struct i915_priolist *p = to_priolist(rb);
 		struct i915_request *rq, *rn;
 
@@ -1417,7 +1417,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			}
 		}
 
-		rb_erase_cached(&p->node, &execlists->queue);
+		rb_erase_cached(&p->node, &engine->active.queue);
 		i915_priolist_free(p);
 	}
 done:
@@ -1439,7 +1439,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 * request triggering preemption on the next dequeue (or subsequent
 	 * interrupt for secondary ports).
 	 */
-	execlists->queue_priority_hint = queue_prio(execlists);
+	execlists->queue_priority_hint = queue_prio(&engine->active);
 	spin_unlock(&engine->active.lock);
 
 	/*
@@ -2673,7 +2673,7 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 	intel_engine_signal_breadcrumbs(engine);
 
 	/* Flush the queued requests to the timeline list (for retiring). */
-	while ((rb = rb_first_cached(&execlists->queue))) {
+	while ((rb = rb_first_cached(&engine->active.queue))) {
 		struct i915_priolist *p = to_priolist(rb);
 
 		priolist_for_each_request_consume(rq, rn, p) {
@@ -2681,9 +2681,10 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 			__i915_request_submit(rq);
 		}
 
-		rb_erase_cached(&p->node, &execlists->queue);
+		rb_erase_cached(&p->node, &engine->active.queue);
 		i915_priolist_free(p);
 	}
+	GEM_BUG_ON(!i915_sched_is_idle(&engine->active));
 
 	/* On-hold requests will be flushed to timeline upon their release */
 	list_for_each_entry(rq, &engine->active.hold, sched.link)
@@ -2714,7 +2715,7 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 	/* Remaining _unready_ requests will be nop'ed when submitted */
 
 	execlists->queue_priority_hint = INT_MIN;
-	execlists->queue = RB_ROOT_CACHED;
+	engine->active.queue = RB_ROOT_CACHED;
 
 	GEM_BUG_ON(__tasklet_is_enabled(&execlists->tasklet));
 	execlists->tasklet.func = nop_submission_tasklet;
@@ -2947,7 +2948,7 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 
 static struct list_head *virtual_queue(struct virtual_engine *ve)
 {
-	return &ve->base.execlists.default_priolist.requests;
+	return &ve->base.active.default_priolist.requests;
 }
 
 static void rcu_virtual_context_destroy(struct work_struct *wrk)
@@ -3538,7 +3539,7 @@ void intel_execlists_show_requests(struct intel_engine_cs *engine,
 
 	last = NULL;
 	count = 0;
-	for (rb = rb_first_cached(&execlists->queue); rb; rb = rb_next(rb)) {
+	for (rb = rb_first_cached(&engine->active.queue); rb; rb = rb_next(rb)) {
 		struct i915_priolist *p = rb_entry(rb, typeof(*p), node);
 
 		priolist_for_each_request(rq, p) {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 7097aece016a..6d97b5ad09b5 100644
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
@@ -483,7 +483,7 @@ static void guc_reset_cancel(struct intel_engine_cs *engine)
 	}
 
 	/* Flush the queued requests to the timeline list (for retiring). */
-	while ((rb = rb_first_cached(&execlists->queue))) {
+	while ((rb = rb_first_cached(&engine->active.queue))) {
 		struct i915_priolist *p = to_priolist(rb);
 
 		priolist_for_each_request_consume(rq, rn, p) {
@@ -493,14 +493,15 @@ static void guc_reset_cancel(struct intel_engine_cs *engine)
 			i915_request_mark_complete(rq);
 		}
 
-		rb_erase_cached(&p->node, &execlists->queue);
+		rb_erase_cached(&p->node, &engine->active.queue);
 		i915_priolist_free(p);
 	}
+	GEM_BUG_ON(!i915_sched_is_idle(&engine->active));
 
 	/* Remaining _unready_ requests will be nop'ed when submitted */
 
 	execlists->queue_priority_hint = INT_MIN;
-	execlists->queue = RB_ROOT_CACHED;
+	engine->active.queue = RB_ROOT_CACHED;
 
 	spin_unlock_irqrestore(&engine->active.lock, flags);
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index e38a10d5c128..795be17ce239 100644
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
index a8c413203f72..adfe863f778e 100644
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
index 61b110ff33d4..61150ba22733 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -99,6 +99,7 @@ void i915_sched_init_engine(struct i915_sched_engine *se,
 
 	INIT_LIST_HEAD(&se->requests);
 	INIT_LIST_HEAD(&se->hold);
+	se->queue = RB_ROOT_CACHED;
 
 	i915_sched_init_ipi(&se->ipi);
 
@@ -115,6 +116,17 @@ void i915_sched_init_engine(struct i915_sched_engine *se,
 #endif
 }
 
+void i915_sched_park_engine(struct i915_sched_engine *se)
+{
+	GEM_BUG_ON(!i915_sched_is_idle(se));
+	se->no_priolist = false;
+}
+
+void i915_sched_fini_engine(struct i915_sched_engine *se)
+{
+	GEM_BUG_ON(!list_empty(&se->requests));
+}
+
 static void __ipi_add(struct i915_request *rq)
 {
 #define STUB ((struct i915_request *)1)
@@ -175,7 +187,7 @@ static inline struct i915_priolist *to_priolist(struct rb_node *rb)
 	return rb_entry(rb, struct i915_priolist, node);
 }
 
-static void assert_priolists(struct intel_engine_execlists * const execlists)
+static void assert_priolists(struct i915_sched_engine * const se)
 {
 	struct rb_node *rb;
 	long last_prio;
@@ -183,11 +195,11 @@ static void assert_priolists(struct intel_engine_execlists * const execlists)
 	if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
 		return;
 
-	GEM_BUG_ON(rb_first_cached(&execlists->queue) !=
-		   rb_first(&execlists->queue.rb_root));
+	GEM_BUG_ON(rb_first_cached(&se->queue) !=
+		   rb_first(&se->queue.rb_root));
 
 	last_prio = INT_MAX;
-	for (rb = rb_first_cached(&execlists->queue); rb; rb = rb_next(rb)) {
+	for (rb = rb_first_cached(&se->queue); rb; rb = rb_next(rb)) {
 		const struct i915_priolist *p = to_priolist(rb);
 
 		GEM_BUG_ON(p->priority > last_prio);
@@ -198,21 +210,21 @@ static void assert_priolists(struct intel_engine_execlists * const execlists)
 static struct list_head *
 lookup_priolist(struct intel_engine_cs *engine, int prio)
 {
-	struct intel_engine_execlists * const execlists = &engine->execlists;
+	struct i915_sched_engine * const se = &engine->active;
 	struct i915_priolist *p;
 	struct rb_node **parent, *rb;
 	bool first = true;
 
 	lockdep_assert_held(&engine->active.lock);
-	assert_priolists(execlists);
+	assert_priolists(se);
 
-	if (unlikely(execlists->no_priolist))
+	if (unlikely(se->no_priolist))
 		prio = I915_PRIORITY_NORMAL;
 
 find_priolist:
 	/* most positive priority is scheduled first, equal priorities fifo */
 	rb = NULL;
-	parent = &execlists->queue.rb_root.rb_node;
+	parent = &se->queue.rb_root.rb_node;
 	while (*parent) {
 		rb = *parent;
 		p = to_priolist(rb);
@@ -227,7 +239,7 @@ lookup_priolist(struct intel_engine_cs *engine, int prio)
 	}
 
 	if (prio == I915_PRIORITY_NORMAL) {
-		p = &execlists->default_priolist;
+		p = &se->default_priolist;
 	} else {
 		p = kmem_cache_alloc(global.slab_priorities, GFP_ATOMIC);
 		/* Convert an allocation failure to a priority bump */
@@ -242,7 +254,7 @@ lookup_priolist(struct intel_engine_cs *engine, int prio)
 			 * requests, so if userspace lied about their
 			 * dependencies that reordering may be visible.
 			 */
-			execlists->no_priolist = true;
+			se->no_priolist = true;
 			goto find_priolist;
 		}
 	}
@@ -251,7 +263,7 @@ lookup_priolist(struct intel_engine_cs *engine, int prio)
 	INIT_LIST_HEAD(&p->requests);
 
 	rb_link_node(&p->node, rb, parent);
-	rb_insert_color_cached(&p->node, &execlists->queue, first);
+	rb_insert_color_cached(&p->node, &se->queue, first);
 
 	return &p->requests;
 }
@@ -621,7 +633,7 @@ void i915_request_enqueue(struct i915_request *rq)
 	} else {
 		queue_request(engine, rq);
 
-		GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
+		GEM_BUG_ON(i915_sched_is_idle(&engine->active));
 
 		kick = submit_queue(engine, rq);
 	}
@@ -656,7 +668,7 @@ __intel_engine_rewind_requests(struct intel_engine_cs *engine)
 			prio = rq_prio(rq);
 			pl = lookup_priolist(engine, prio);
 		}
-		GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
+		GEM_BUG_ON(i915_sched_is_idle(&engine->active));
 
 		list_move(&rq->sched.link, pl);
 		set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index ea5595188f8e..6bb9d8c3519a 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -12,6 +12,7 @@
 #include <linux/kernel.h>
 
 #include "i915_scheduler_types.h"
+#include "i915_request.h"
 
 struct drm_printer;
 
@@ -37,6 +38,8 @@ void i915_sched_node_retire(struct i915_sched_node *node);
 
 void i915_sched_init_engine(struct i915_sched_engine *se,
 			    unsigned int subclass);
+void i915_sched_park_engine(struct i915_sched_engine *se);
+void i915_sched_fini_engine(struct i915_sched_engine *se);
 
 void i915_request_set_priority(struct i915_request *request, int prio);
 
@@ -59,6 +62,18 @@ static inline void i915_priolist_free(struct i915_priolist *p)
 		__i915_priolist_free(p);
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
index 5f21f5ac6dd9..1a4cf7e52186 100644
--- a/drivers/gpu/drm/i915/i915_scheduler_types.h
+++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
@@ -82,10 +82,25 @@ struct i915_sched_ipi {
 
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
index e6910f4c429d..5c5b574af253 100644
--- a/drivers/gpu/drm/i915/selftests/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/selftests/i915_scheduler.c
@@ -92,7 +92,7 @@ static bool check_context_order(struct intel_engine_cs *engine)
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
