Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C773025F7
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 15:02:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 337A86E194;
	Mon, 25 Jan 2021 14:02:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68A0B89D8E
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 14:02:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23693639-1500050 
 for multiple; Mon, 25 Jan 2021 14:01:39 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jan 2021 14:01:12 +0000
Message-Id: <20210125140136.10494-17-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210125140136.10494-1-chris@chris-wilson.co.uk>
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 17/41] drm/i915: Move scheduler queue
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
Cc: thomas.hellstrom@intel.com, Chris Wilson <chris@chris-wilson.co.uk>
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
 drivers/gpu/drm/i915/i915_scheduler_types.h   | 14 +++++++
 .../gpu/drm/i915/selftests/i915_scheduler.c   |  2 +-
 13 files changed, 83 insertions(+), 54 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index 085f6a3735e8..d5bc75508048 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -19,7 +19,7 @@
 
 #include "gt/intel_context_types.h"
 
-#include "i915_scheduler.h"
+#include "i915_scheduler_types.h"
 #include "i915_sw_fence.h"
 
 struct pid;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_wait.c b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
index d79bf16083bd..4d1897c347b9 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_wait.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
@@ -13,6 +13,7 @@
 #include "dma_resv_utils.h"
 #include "i915_gem_ioctls.h"
 #include "i915_gem_object.h"
+#include "i915_scheduler.h"
 
 static long
 i915_gem_object_wait_fence(struct dma_fence *fence,
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 54b394bd9429..ef225da35399 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -575,7 +575,6 @@ void intel_engine_init_execlists(struct intel_engine_cs *engine)
 		memset(execlists->inflight, 0, sizeof(execlists->inflight));
 
 	execlists->queue_priority_hint = INT_MIN;
-	execlists->queue = RB_ROOT_CACHED;
 }
 
 static void cleanup_status_page(struct intel_engine_cs *engine)
@@ -902,7 +901,7 @@ int intel_engines_init(struct intel_gt *gt)
  */
 void intel_engine_cleanup_common(struct intel_engine_cs *engine)
 {
-	GEM_BUG_ON(!list_empty(&engine->active.requests));
+	i915_sched_fini_engine(&engine->active);
 	tasklet_kill(&engine->execlists.tasklet); /* flush the callback */
 
 	intel_breadcrumbs_free(engine->breadcrumbs);
@@ -1234,7 +1233,7 @@ bool intel_engine_is_idle(struct intel_engine_cs *engine)
 	}
 
 	/* ELSP is empty, but there are ready requests? E.g. after reset */
-	if (!RB_EMPTY_ROOT(&engine->execlists.queue.rb_root))
+	if (!i915_sched_is_idle(&engine->active))
 		return false;
 
 	/* Ring stopped? */
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index 6372d7826bc9..205feeaf0e76 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -4,6 +4,7 @@
  */
 
 #include "i915_drv.h"
+#include "i915_scheduler.h"
 
 #include "intel_breadcrumbs.h"
 #include "intel_context.h"
@@ -276,7 +277,7 @@ static int __engine_park(struct intel_wakeref *wf)
 	if (engine->park)
 		engine->park(engine);
 
-	engine->execlists.no_priolist = false;
+	i915_sched_park_engine(&engine->active);
 
 	/* While gt calls i915_vma_parked(), we have to break the lock cycle */
 	intel_gt_pm_put_async(engine->gt);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 36bcd85cc73b..c46d70b7e484 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -153,11 +153,6 @@ struct intel_engine_execlists {
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
@@ -192,11 +187,6 @@ struct intel_engine_execlists {
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
@@ -252,10 +242,6 @@ struct intel_engine_execlists {
 	 */
 	int queue_priority_hint;
 
-	/**
-	 * @queue: queue of requests, in priority lists
-	 */
-	struct rb_root_cached queue;
 	struct rb_root_cached virtual;
 
 	/**
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index ff5025f18560..756ac388a4a8 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -272,11 +272,11 @@ static int effective_prio(const struct i915_request *rq)
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
 
@@ -339,7 +339,7 @@ static bool need_preempt(const struct intel_engine_cs *engine,
 	 * context, it's priority would not exceed ELSP[0] aka last_prio.
 	 */
 	return max(virtual_prio(&engine->execlists),
-		   queue_prio(&engine->execlists)) > last_prio;
+		   queue_prio(&engine->active)) > last_prio;
 }
 
 __maybe_unused static bool
@@ -1030,13 +1030,13 @@ static bool needs_timeslice(const struct intel_engine_cs *engine,
 		return false;
 
 	/* If ELSP[1] is occupied, always check to see if worth slicing */
-	if (!list_is_last_rcu(&rq->sched.link, &engine->active.requests)) {
+	if (!i915_sched_is_last_request(&engine->active, rq)) {
 		ENGINE_TRACE(engine, "timeslice required for second inflight context\n");
 		return true;
 	}
 
 	/* Otherwise, ELSP[0] is by itself, but may be waiting in the queue */
-	if (!RB_EMPTY_ROOT(&engine->execlists.queue.rb_root)) {
+	if (!i915_sched_is_idle(&engine->active)) {
 		ENGINE_TRACE(engine, "timeslice required for queue\n");
 		return true;
 	}
@@ -1281,7 +1281,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		GEM_BUG_ON(rq->engine != &ve->base);
 		GEM_BUG_ON(rq->context != &ve->context);
 
-		if (unlikely(rq_prio(rq) < queue_prio(execlists))) {
+		if (unlikely(rq_prio(rq) < queue_prio(&engine->active))) {
 			spin_unlock(&ve->base.active.lock);
 			break;
 		}
@@ -1347,7 +1347,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			break;
 	}
 
-	while ((rb = rb_first_cached(&execlists->queue))) {
+	while ((rb = rb_first_cached(&engine->active.queue))) {
 		struct i915_priolist *p = to_priolist(rb);
 		struct i915_request *rq, *rn;
 
@@ -1426,7 +1426,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			}
 		}
 
-		rb_erase_cached(&p->node, &execlists->queue);
+		rb_erase_cached(&p->node, &engine->active.queue);
 		i915_priolist_free(p);
 	}
 done:
@@ -1448,7 +1448,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 * request triggering preemption on the next dequeue (or subsequent
 	 * interrupt for secondary ports).
 	 */
-	execlists->queue_priority_hint = queue_prio(execlists);
+	execlists->queue_priority_hint = queue_prio(&engine->active);
 	spin_unlock(&engine->active.lock);
 
 	/*
@@ -2662,7 +2662,7 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 	intel_engine_signal_breadcrumbs(engine);
 
 	/* Flush the queued requests to the timeline list (for retiring). */
-	while ((rb = rb_first_cached(&execlists->queue))) {
+	while ((rb = rb_first_cached(&engine->active.queue))) {
 		struct i915_priolist *p = to_priolist(rb);
 
 		priolist_for_each_request_consume(rq, rn, p) {
@@ -2670,9 +2670,10 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 			__i915_request_submit(rq);
 		}
 
-		rb_erase_cached(&p->node, &execlists->queue);
+		rb_erase_cached(&p->node, &engine->active.queue);
 		i915_priolist_free(p);
 	}
+	GEM_BUG_ON(!i915_sched_is_idle(&engine->active));
 
 	/* On-hold requests will be flushed to timeline upon their release */
 	list_for_each_entry(rq, &engine->active.hold, sched.link)
@@ -2703,7 +2704,7 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 	/* Remaining _unready_ requests will be nop'ed when submitted */
 
 	execlists->queue_priority_hint = INT_MIN;
-	execlists->queue = RB_ROOT_CACHED;
+	engine->active.queue = RB_ROOT_CACHED;
 
 	GEM_BUG_ON(__tasklet_is_enabled(&execlists->tasklet));
 	execlists->tasklet.func = nop_submission_tasklet;
@@ -2939,7 +2940,7 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 
 static struct list_head *virtual_queue(struct virtual_engine *ve)
 {
-	return &ve->base.execlists.default_priolist.requests;
+	return &ve->base.active.default_priolist.requests;
 }
 
 static void rcu_virtual_context_destroy(struct work_struct *wrk)
@@ -3532,7 +3533,7 @@ void intel_execlists_show_requests(struct intel_engine_cs *engine,
 
 	last = NULL;
 	count = 0;
-	for (rb = rb_first_cached(&execlists->queue); rb; rb = rb_next(rb)) {
+	for (rb = rb_first_cached(&engine->active.queue); rb; rb = rb_next(rb)) {
 		struct i915_priolist *p = rb_entry(rb, typeof(*p), node);
 
 		priolist_for_each_request(rq, p) {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 56ec738a9ce7..70b2e23a9644 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -203,7 +203,7 @@ static void __guc_dequeue(struct intel_engine_cs *engine)
 	 * event.
 	 */
 	port = first;
-	while ((rb = rb_first_cached(&execlists->queue))) {
+	while ((rb = rb_first_cached(&engine->active.queue))) {
 		struct i915_priolist *p = to_priolist(rb);
 		struct i915_request *rq, *rn;
 
@@ -223,7 +223,7 @@ static void __guc_dequeue(struct intel_engine_cs *engine)
 			last = rq;
 		}
 
-		rb_erase_cached(&p->node, &execlists->queue);
+		rb_erase_cached(&p->node, &engine->active.queue);
 		i915_priolist_free(p);
 	}
 done:
@@ -357,7 +357,7 @@ static void guc_reset_cancel(struct intel_engine_cs *engine)
 	}
 
 	/* Flush the queued requests to the timeline list (for retiring). */
-	while ((rb = rb_first_cached(&execlists->queue))) {
+	while ((rb = rb_first_cached(&engine->active.queue))) {
 		struct i915_priolist *p = to_priolist(rb);
 
 		priolist_for_each_request_consume(rq, rn, p) {
@@ -367,14 +367,15 @@ static void guc_reset_cancel(struct intel_engine_cs *engine)
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
index e0fcfc5590d9..f281c5799133 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -99,7 +99,6 @@
 #include "i915_gpu_error.h"
 #include "i915_perf_types.h"
 #include "i915_request.h"
-#include "i915_scheduler.h"
 #include "gt/intel_timeline.h"
 #include "i915_vma.h"
 #include "i915_irq.h"
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 1bfe214a47e9..199dffea28ec 100644
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
index 14c69543a98d..76a11452c361 100644
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
@@ -623,7 +635,7 @@ void i915_request_enqueue(struct i915_request *rq)
 	} else {
 		queue_request(engine, rq);
 
-		GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
+		GEM_BUG_ON(i915_sched_is_idle(&engine->active));
 
 		kick = submit_queue(engine, rq);
 	}
@@ -658,7 +670,7 @@ __intel_engine_rewind_requests(struct intel_engine_cs *engine)
 			prio = rq_prio(rq);
 			pl = lookup_priolist(engine, prio);
 		}
-		GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
+		GEM_BUG_ON(i915_sched_is_idle(&engine->active));
 
 		list_move(&rq->sched.link, pl);
 		set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index 5c543124bdb9..e89bf5ed61b3 100644
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
 
@@ -64,6 +67,18 @@ static inline void i915_priolist_free(struct i915_priolist *p)
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
index f1e9bfa662e2..aa8a2d1e890a 100644
--- a/drivers/gpu/drm/i915/i915_scheduler_types.h
+++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
@@ -85,8 +85,22 @@ struct i915_sched_engine {
 
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
index ad2a44449c44..000b68a40d4c 100644
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
