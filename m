Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC82730A3D6
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 09:58:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C050C6E51D;
	Mon,  1 Feb 2021 08:57:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 742186E4CF
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 08:57:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23757735-1500050 
 for multiple; Mon, 01 Feb 2021 08:57:19 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Feb 2021 08:56:40 +0000
Message-Id: <20210201085715.27435-22-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210201085715.27435-1-chris@chris-wilson.co.uk>
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 22/57] drm/i915: Move scheduler queue
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
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  7 ++-
 drivers/gpu/drm/i915/gt/intel_engine_pm.c     |  3 +-
 drivers/gpu/drm/i915/gt/intel_engine_types.h  | 14 -----
 .../drm/i915/gt/intel_execlists_submission.c  | 29 +++++-----
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 11 ++--
 drivers/gpu/drm/i915/i915_drv.h               |  1 -
 drivers/gpu/drm/i915/i915_request.h           |  2 +-
 drivers/gpu/drm/i915/i915_scheduler.c         | 57 ++++++++++++-------
 drivers/gpu/drm/i915/i915_scheduler.h         | 15 +++++
 drivers/gpu/drm/i915/i915_scheduler_types.h   | 14 +++++
 .../gpu/drm/i915/selftests/i915_scheduler.c   | 13 ++---
 13 files changed, 100 insertions(+), 69 deletions(-)

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
index d7ff84d92936..4c07c6f61924 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -574,7 +574,6 @@ void intel_engine_init_execlists(struct intel_engine_cs *engine)
 		memset(execlists->inflight, 0, sizeof(execlists->inflight));
 
 	execlists->queue_priority_hint = INT_MIN;
-	execlists->queue = RB_ROOT_CACHED;
 }
 
 static void cleanup_status_page(struct intel_engine_cs *engine)
@@ -911,7 +910,7 @@ int intel_engines_init(struct intel_gt *gt)
  */
 void intel_engine_cleanup_common(struct intel_engine_cs *engine)
 {
-	GEM_BUG_ON(!list_empty(&engine->sched.requests));
+	i915_sched_fini(intel_engine_get_scheduler(engine));
 	tasklet_kill(&engine->execlists.tasklet); /* flush the callback */
 
 	intel_breadcrumbs_free(engine->breadcrumbs);
@@ -1225,6 +1224,8 @@ void __intel_engine_flush_submission(struct intel_engine_cs *engine, bool sync)
  */
 bool intel_engine_is_idle(struct intel_engine_cs *engine)
 {
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
+
 	/* More white lies, if wedged, hw state is inconsistent */
 	if (intel_gt_is_wedged(engine->gt))
 		return true;
@@ -1237,7 +1238,7 @@ bool intel_engine_is_idle(struct intel_engine_cs *engine)
 	intel_engine_flush_submission(engine);
 
 	/* ELSP is empty, but there are ready requests? E.g. after reset */
-	if (!RB_EMPTY_ROOT(&engine->execlists.queue.rb_root))
+	if (!i915_sched_is_idle(se))
 		return false;
 
 	/* Ring stopped? */
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index 6372d7826bc9..3510c9236334 100644
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
+	i915_sched_park(intel_engine_get_scheduler(engine));
 
 	/* While gt calls i915_vma_parked(), we have to break the lock cycle */
 	intel_gt_pm_put_async(engine->gt);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 0936b0699cbb..c36bdd957f8f 100644
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
index dd1429a476d5..95208d45ffb1 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -272,11 +272,11 @@ static int effective_prio(const struct i915_request *rq)
 	return prio;
 }
 
-static int queue_prio(const struct intel_engine_execlists *execlists)
+static int queue_prio(const struct i915_sched *se)
 {
 	struct rb_node *rb;
 
-	rb = rb_first_cached(&execlists->queue);
+	rb = rb_first_cached(&se->queue);
 	if (!rb)
 		return INT_MIN;
 
@@ -340,7 +340,7 @@ static bool need_preempt(const struct intel_engine_cs *engine,
 	 * context, it's priority would not exceed ELSP[0] aka last_prio.
 	 */
 	return max(virtual_prio(&engine->execlists),
-		   queue_prio(&engine->execlists)) > last_prio;
+		   queue_prio(se)) > last_prio;
 }
 
 __maybe_unused static bool
@@ -1033,13 +1033,13 @@ static bool needs_timeslice(const struct intel_engine_cs *engine,
 		return false;
 
 	/* If ELSP[1] is occupied, always check to see if worth slicing */
-	if (!list_is_last_rcu(&rq->sched.link, &se->requests)) {
+	if (!i915_sched_is_last_request(se, rq)) {
 		ENGINE_TRACE(engine, "timeslice required for second inflight context\n");
 		return true;
 	}
 
 	/* Otherwise, ELSP[0] is by itself, but may be waiting in the queue */
-	if (!RB_EMPTY_ROOT(&engine->execlists.queue.rb_root)) {
+	if (!i915_sched_is_idle(se)) {
 		ENGINE_TRACE(engine, "timeslice required for queue\n");
 		return true;
 	}
@@ -1285,7 +1285,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		GEM_BUG_ON(rq->engine != &ve->base);
 		GEM_BUG_ON(rq->context != &ve->context);
 
-		if (unlikely(rq_prio(rq) < queue_prio(execlists))) {
+		if (unlikely(rq_prio(rq) < queue_prio(se))) {
 			spin_unlock(&ve->base.sched.lock);
 			break;
 		}
@@ -1351,7 +1351,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			break;
 	}
 
-	while ((rb = rb_first_cached(&execlists->queue))) {
+	while ((rb = rb_first_cached(&se->queue))) {
 		struct i915_priolist *p = to_priolist(rb);
 		struct i915_request *rq, *rn;
 
@@ -1430,7 +1430,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			}
 		}
 
-		rb_erase_cached(&p->node, &execlists->queue);
+		rb_erase_cached(&p->node, &se->queue);
 		i915_priolist_free(p);
 	}
 done:
@@ -1452,7 +1452,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 * request triggering preemption on the next dequeue (or subsequent
 	 * interrupt for secondary ports).
 	 */
-	execlists->queue_priority_hint = queue_prio(execlists);
+	execlists->queue_priority_hint = queue_prio(se);
 	spin_unlock(&se->lock);
 
 	/*
@@ -2678,7 +2678,7 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 	intel_engine_signal_breadcrumbs(engine);
 
 	/* Flush the queued requests to the timeline list (for retiring). */
-	while ((rb = rb_first_cached(&execlists->queue))) {
+	while ((rb = rb_first_cached(&se->queue))) {
 		struct i915_priolist *p = to_priolist(rb);
 
 		priolist_for_each_request_consume(rq, rn, p) {
@@ -2688,9 +2688,10 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 			}
 		}
 
-		rb_erase_cached(&p->node, &execlists->queue);
+		rb_erase_cached(&p->node, &se->queue);
 		i915_priolist_free(p);
 	}
+	GEM_BUG_ON(!i915_sched_is_idle(se));
 
 	/* On-hold requests will be flushed to timeline upon their release */
 	list_for_each_entry(rq, &se->hold, sched.link)
@@ -2722,7 +2723,7 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 	/* Remaining _unready_ requests will be nop'ed when submitted */
 
 	execlists->queue_priority_hint = INT_MIN;
-	execlists->queue = RB_ROOT_CACHED;
+	se->queue = RB_ROOT_CACHED;
 
 	GEM_BUG_ON(__tasklet_is_enabled(&execlists->tasklet));
 	execlists->tasklet.callback = nop_submission_tasklet;
@@ -2957,7 +2958,7 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 
 static struct list_head *virtual_queue(struct virtual_engine *ve)
 {
-	return &ve->base.execlists.default_priolist.requests;
+	return &ve->base.sched.default_priolist.requests;
 }
 
 static void rcu_virtual_context_destroy(struct work_struct *wrk)
@@ -3558,7 +3559,7 @@ void intel_execlists_show_requests(struct intel_engine_cs *engine,
 
 	last = NULL;
 	count = 0;
-	for (rb = rb_first_cached(&execlists->queue); rb; rb = rb_next(rb)) {
+	for (rb = rb_first_cached(&se->queue); rb; rb = rb_next(rb)) {
 		struct i915_priolist *p = rb_entry(rb, typeof(*p), node);
 
 		priolist_for_each_request(rq, p) {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 45f6d38341ef..6f07f1124a13 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -204,7 +204,7 @@ static void __guc_dequeue(struct intel_engine_cs *engine)
 	 * event.
 	 */
 	port = first;
-	while ((rb = rb_first_cached(&execlists->queue))) {
+	while ((rb = rb_first_cached(&se->queue))) {
 		struct i915_priolist *p = to_priolist(rb);
 		struct i915_request *rq, *rn;
 
@@ -224,7 +224,7 @@ static void __guc_dequeue(struct intel_engine_cs *engine)
 			last = rq;
 		}
 
-		rb_erase_cached(&p->node, &execlists->queue);
+		rb_erase_cached(&p->node, &se->queue);
 		i915_priolist_free(p);
 	}
 done:
@@ -362,7 +362,7 @@ static void guc_reset_cancel(struct intel_engine_cs *engine)
 	}
 
 	/* Flush the queued requests to the timeline list (for retiring). */
-	while ((rb = rb_first_cached(&execlists->queue))) {
+	while ((rb = rb_first_cached(&se->queue))) {
 		struct i915_priolist *p = to_priolist(rb);
 
 		priolist_for_each_request_consume(rq, rn, p) {
@@ -372,14 +372,15 @@ static void guc_reset_cancel(struct intel_engine_cs *engine)
 			i915_request_mark_complete(rq);
 		}
 
-		rb_erase_cached(&p->node, &execlists->queue);
+		rb_erase_cached(&p->node, &se->queue);
 		i915_priolist_free(p);
 	}
+	GEM_BUG_ON(!i915_sched_is_idle(se));
 
 	/* Remaining _unready_ requests will be nop'ed when submitted */
 
 	execlists->queue_priority_hint = INT_MIN;
-	execlists->queue = RB_ROOT_CACHED;
+	se->queue = RB_ROOT_CACHED;
 
 	spin_unlock_irqrestore(&se->lock, flags);
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index f684147290cb..0e4d7998be53 100644
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
index 3a5d6bdcd8dd..c41582b96b46 100644
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
index 5eea8c6b85a8..aef14e4463c3 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -107,6 +107,7 @@ void i915_sched_init(struct i915_sched *se,
 
 	INIT_LIST_HEAD(&se->requests);
 	INIT_LIST_HEAD(&se->hold);
+	se->queue = RB_ROOT_CACHED;
 
 	i915_sched_init_ipi(&se->ipi);
 
@@ -123,6 +124,19 @@ void i915_sched_init(struct i915_sched *se,
 #endif
 }
 
+void i915_sched_park(struct i915_sched *se)
+{
+	GEM_BUG_ON(!i915_sched_is_idle(se));
+	se->no_priolist = false;
+}
+
+void i915_sched_fini(struct i915_sched *se)
+{
+	GEM_BUG_ON(!list_empty(&se->requests));
+
+	i915_sched_park(se);
+}
+
 static void __ipi_add(struct i915_request *rq)
 {
 #define STUB ((struct i915_request *)1)
@@ -191,7 +205,7 @@ static inline struct i915_priolist *to_priolist(struct rb_node *rb)
 	return rb_entry(rb, struct i915_priolist, node);
 }
 
-static void assert_priolists(struct intel_engine_execlists * const execlists)
+static void assert_priolists(struct i915_sched * const se)
 {
 	struct rb_node *rb;
 	long last_prio;
@@ -199,11 +213,11 @@ static void assert_priolists(struct intel_engine_execlists * const execlists)
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
@@ -212,24 +226,22 @@ static void assert_priolists(struct intel_engine_execlists * const execlists)
 }
 
 static struct list_head *
-lookup_priolist(struct intel_engine_cs *engine, int prio)
+lookup_priolist(struct i915_sched *se, int prio)
 {
-	struct intel_engine_execlists * const execlists = &engine->execlists;
-	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	struct i915_priolist *p;
 	struct rb_node **parent, *rb;
 	bool first = true;
 
 	lockdep_assert_held(&se->lock);
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
@@ -244,7 +256,7 @@ lookup_priolist(struct intel_engine_cs *engine, int prio)
 	}
 
 	if (prio == I915_PRIORITY_NORMAL) {
-		p = &execlists->default_priolist;
+		p = &se->default_priolist;
 	} else {
 		p = kmem_cache_alloc(global.slab_priorities, GFP_ATOMIC);
 		/* Convert an allocation failure to a priority bump */
@@ -259,7 +271,7 @@ lookup_priolist(struct intel_engine_cs *engine, int prio)
 			 * requests, so if userspace lied about their
 			 * dependencies that reordering may be visible.
 			 */
-			execlists->no_priolist = true;
+			se->no_priolist = true;
 			goto find_priolist;
 		}
 	}
@@ -268,7 +280,7 @@ lookup_priolist(struct intel_engine_cs *engine, int prio)
 	INIT_LIST_HEAD(&p->requests);
 
 	rb_link_node(&p->node, rb, parent);
-	rb_insert_color_cached(&p->node, &execlists->queue, first);
+	rb_insert_color_cached(&p->node, &se->queue, first);
 
 	return &p->requests;
 }
@@ -361,13 +373,14 @@ static void ipi_priority(struct i915_request *rq, int prio)
 static void __i915_request_set_priority(struct i915_request *rq, int prio)
 {
 	struct intel_engine_cs *engine = rq->engine;
+	struct i915_sched *se = intel_engine_get_scheduler(engine);
 	struct list_head *pos = &rq->sched.signalers_list;
 	struct list_head *plist;
 
 	SCHED_TRACE(&engine->sched, "PI for " RQ_FMT ", prio:%d\n",
 		    RQ_ARG(rq), prio);
 
-	plist = lookup_priolist(engine, prio);
+	plist = lookup_priolist(se, prio);
 
 	/*
 	 * Recursively bump all dependent priorities to match the new request.
@@ -570,18 +583,18 @@ void __i915_sched_defer_request(struct intel_engine_cs *engine,
 		clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
 	} while ((rq = stack_pop(rq, &pos)));
 
-	pos = lookup_priolist(engine, prio);
+	pos = lookup_priolist(se, prio);
 	list_for_each_entry_safe(rq, rn, &dfs, sched.link) {
 		set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
 		list_add_tail(&rq->sched.link, pos);
 	}
 }
 
-static void queue_request(struct intel_engine_cs *engine,
+static void queue_request(struct i915_sched *se,
 			  struct i915_request *rq)
 {
 	GEM_BUG_ON(!list_empty(&rq->sched.link));
-	list_add_tail(&rq->sched.link, lookup_priolist(engine, rq_prio(rq)));
+	list_add_tail(&rq->sched.link, lookup_priolist(se, rq_prio(rq)));
 	set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
 }
 
@@ -648,9 +661,9 @@ void i915_request_enqueue(struct i915_request *rq)
 		list_add_tail(&rq->sched.link, &se->hold);
 		i915_request_set_hold(rq);
 	} else {
-		queue_request(engine, rq);
+		queue_request(se, rq);
 
-		GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
+		GEM_BUG_ON(i915_sched_is_idle(se));
 
 		kick = submit_queue(engine, rq);
 	}
@@ -682,9 +695,9 @@ __i915_sched_rewind_requests(struct intel_engine_cs *engine)
 		GEM_BUG_ON(rq_prio(rq) == I915_PRIORITY_INVALID);
 		if (rq_prio(rq) != prio) {
 			prio = rq_prio(rq);
-			pl = lookup_priolist(engine, prio);
+			pl = lookup_priolist(se, prio);
 		}
-		GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
+		GEM_BUG_ON(i915_sched_is_idle(se));
 
 		list_move(&rq->sched.link, pl);
 		set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
@@ -819,7 +832,7 @@ void __i915_sched_resume_request(struct intel_engine_cs *engine,
 		i915_request_clear_hold(rq);
 		list_del_init(&rq->sched.link);
 
-		queue_request(engine, rq);
+		queue_request(se, rq);
 
 		/* Also release any children on this engine that are ready */
 		for_each_waiter(p, rq) {
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index ebd93ae303b4..71bef75859b4 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -12,6 +12,7 @@
 #include <linux/kernel.h>
 
 #include "i915_scheduler_types.h"
+#include "i915_request.h"
 
 struct drm_printer;
 struct intel_engine_cs;
@@ -48,6 +49,8 @@ void i915_sched_init(struct i915_sched *se,
 		     const char *name,
 		     unsigned long mask,
 		     unsigned int subclass);
+void i915_sched_park(struct i915_sched *se);
+void i915_sched_fini(struct i915_sched *se);
 
 void i915_request_set_priority(struct i915_request *request, int prio);
 
@@ -75,6 +78,18 @@ static inline void i915_priolist_free(struct i915_priolist *p)
 		__i915_priolist_free(p);
 }
 
+static inline bool i915_sched_is_idle(const struct i915_sched *se)
+{
+	return RB_EMPTY_ROOT(&se->queue.rb_root);
+}
+
+static inline bool
+i915_sched_is_last_request(const struct i915_sched *se,
+			   const struct i915_request *rq)
+{
+	return list_is_last_rcu(&rq->sched.link, &se->requests);
+}
+
 void i915_request_show_with_schedule(struct drm_printer *m,
 				     const struct i915_request *rq,
 				     const char *prefix,
diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
index b7ee122d4f28..44dae932e5af 100644
--- a/drivers/gpu/drm/i915/i915_scheduler_types.h
+++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
@@ -29,6 +29,10 @@ struct i915_sched {
 
 	struct list_head requests; /* active request, on HW */
 	struct list_head hold; /* ready requests, but on hold */
+	/**
+	 * @queue: queue of requests, in priority lists
+	 */
+	struct rb_root_cached queue;
 
 	/* Inter-engine scheduling delegate */
 	struct i915_sched_ipi {
@@ -36,6 +40,16 @@ struct i915_sched {
 		struct work_struct work;
 	} ipi;
 
+	/**
+	 * @default_priolist: priority list for I915_PRIORITY_NORMAL
+	 */
+	struct i915_priolist default_priolist;
+
+	/**
+	 * @no_priolist: priority lists disabled
+	 */
+	bool no_priolist;
+
 	/* Pretty device names for debug messages */
 	struct {
 		struct device *dev;
diff --git a/drivers/gpu/drm/i915/selftests/i915_scheduler.c b/drivers/gpu/drm/i915/selftests/i915_scheduler.c
index b1a0a711e01f..56d785581535 100644
--- a/drivers/gpu/drm/i915/selftests/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/selftests/i915_scheduler.c
@@ -77,8 +77,7 @@ static int all_engines(struct drm_i915_private *i915,
 	return 0;
 }
 
-static bool check_context_order(struct i915_sched *se,
-				struct intel_engine_cs *engine)
+static bool check_context_order(struct i915_sched *se)
 {
 	u64 last_seqno, last_context;
 	unsigned long count;
@@ -93,7 +92,7 @@ static bool check_context_order(struct i915_sched *se,
 	last_context = 0;
 	last_seqno = 0;
 	last_prio = 0;
-	for (rb = rb_first_cached(&engine->execlists.queue); rb; rb = rb_next(rb)) {
+	for (rb = rb_first_cached(&se->queue); rb; rb = rb_next(rb)) {
 		struct i915_priolist *p = rb_entry(rb, typeof(*p), node);
 		struct i915_request *rq;
 
@@ -175,7 +174,7 @@ static int __single_chain(struct intel_engine_cs *engine, unsigned long length,
 	intel_engine_flush_submission(engine);
 
 	execlists_active_lock_bh(&engine->execlists);
-	if (fn(rq, count, count - 1) && !check_context_order(se, engine))
+	if (fn(rq, count, count - 1) && !check_context_order(se))
 		err = -EINVAL;
 	execlists_active_unlock_bh(&engine->execlists);
 
@@ -260,7 +259,7 @@ static int __wide_chain(struct intel_engine_cs *engine, unsigned long width,
 	intel_engine_flush_submission(engine);
 
 	execlists_active_lock_bh(&engine->execlists);
-	if (fn(rq[i - 1], i, count) && !check_context_order(se, engine))
+	if (fn(rq[i - 1], i, count) && !check_context_order(se))
 		err = -EINVAL;
 	execlists_active_unlock_bh(&engine->execlists);
 
@@ -349,7 +348,7 @@ static int __inv_chain(struct intel_engine_cs *engine, unsigned long width,
 	intel_engine_flush_submission(engine);
 
 	execlists_active_lock_bh(&engine->execlists);
-	if (fn(rq[i - 1], i, count) && !check_context_order(se, engine))
+	if (fn(rq[i - 1], i, count) && !check_context_order(se))
 		err = -EINVAL;
 	execlists_active_unlock_bh(&engine->execlists);
 
@@ -455,7 +454,7 @@ static int __sparse_chain(struct intel_engine_cs *engine, unsigned long width,
 	intel_engine_flush_submission(engine);
 
 	execlists_active_lock_bh(&engine->execlists);
-	if (fn(rq[i - 1], i, count) && !check_context_order(se, engine))
+	if (fn(rq[i - 1], i, count) && !check_context_order(se))
 		err = -EINVAL;
 	execlists_active_unlock_bh(&engine->execlists);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
