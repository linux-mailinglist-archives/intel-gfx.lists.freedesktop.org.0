Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7050931181A
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Feb 2021 02:20:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A6026F54A;
	Sat,  6 Feb 2021 01:20:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 485FD6F542
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 Feb 2021 01:20:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from build.alporthouse.com (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23803960-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sat, 06 Feb 2021 01:20:20 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  6 Feb 2021 01:20:16 +0000
Message-Id: <20210206012019.27451-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210206012019.27451-1-chris@chris-wilson.co.uk>
References: <20210206012019.27451-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/5] drm/i915: Move common active lists from engine
 to i915_scheduler
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

Extract the scheduler lists into a related structure, stop sprawling
over struct intel_engine_cs. Also transfer the responsibility of tracing
the scheduler events from ENGINE_TRACE() to SCHED_TRACE().

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  8 +--
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 22 ++----
 drivers/gpu/drm/i915/gt/intel_engine_types.h  | 10 +--
 .../drm/i915/gt/intel_execlists_submission.c  | 27 +++++---
 drivers/gpu/drm/i915/gt/mock_engine.c         |  7 +-
 drivers/gpu/drm/i915/i915_request.c           |  8 +--
 drivers/gpu/drm/i915/i915_request.h           |  8 ++-
 drivers/gpu/drm/i915/i915_scheduler.c         | 68 +++++++++++++------
 drivers/gpu/drm/i915/i915_scheduler.h         | 13 +++-
 drivers/gpu/drm/i915/i915_scheduler_types.h   | 31 +++++++--
 .../gpu/drm/i915/selftests/i915_scheduler.c   |  1 +
 11 files changed, 133 insertions(+), 70 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index ecacfae8412d..ca37d93ef5e7 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -422,11 +422,11 @@ __active_engine(struct i915_request *rq, struct intel_engine_cs **active)
 	 * check that we have acquired the lock on the final engine.
 	 */
 	locked = READ_ONCE(rq->engine);
-	spin_lock_irq(&locked->active.lock);
+	spin_lock_irq(&locked->sched.lock);
 	while (unlikely(locked != (engine = READ_ONCE(rq->engine)))) {
-		spin_unlock(&locked->active.lock);
+		spin_unlock(&locked->sched.lock);
 		locked = engine;
-		spin_lock(&locked->active.lock);
+		spin_lock(&locked->sched.lock);
 	}
 
 	if (i915_request_is_active(rq)) {
@@ -435,7 +435,7 @@ __active_engine(struct i915_request *rq, struct intel_engine_cs **active)
 		ret = true;
 	}
 
-	spin_unlock_irq(&locked->active.lock);
+	spin_unlock_irq(&locked->sched.lock);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index b8ff82c442b8..9fbb2e924522 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -582,8 +582,6 @@ void intel_engine_init_execlists(struct intel_engine_cs *engine)
 
 	execlists->queue_priority_hint = INT_MIN;
 	execlists->queue = RB_ROOT_CACHED;
-
-	i915_sched_init_ipi(&execlists->ipi);
 }
 
 static void cleanup_status_page(struct intel_engine_cs *engine)
@@ -699,7 +697,12 @@ static int engine_setup_common(struct intel_engine_cs *engine)
 		goto err_status;
 	}
 
-	intel_engine_init_active(engine, ENGINE_PHYSICAL);
+	i915_sched_init(&engine->sched,
+			engine->i915->drm.dev,
+			engine->name,
+			engine->mask,
+			ENGINE_PHYSICAL);
+
 	intel_engine_init_execlists(engine);
 	intel_engine_init_cmd_parser(engine);
 	intel_engine_init__pm(engine);
@@ -768,17 +771,6 @@ static int measure_breadcrumb_dw(struct intel_context *ce)
 	return dw;
 }
 
-void
-intel_engine_init_active(struct intel_engine_cs *engine, unsigned int subclass)
-{
-	INIT_LIST_HEAD(&engine->active.requests);
-	INIT_LIST_HEAD(&engine->active.hold);
-
-	spin_lock_init(&engine->active.lock);
-	lockdep_set_subclass(&engine->active.lock, subclass);
-	mark_lock_used_irq(&engine->active.lock);
-}
-
 static struct intel_context *
 create_pinned_context(struct intel_engine_cs *engine,
 		      unsigned int hwsp,
@@ -926,7 +918,7 @@ int intel_engines_init(struct intel_gt *gt)
  */
 void intel_engine_cleanup_common(struct intel_engine_cs *engine)
 {
-	GEM_BUG_ON(!list_empty(&engine->active.requests));
+	GEM_BUG_ON(!list_empty(&engine->sched.requests));
 	tasklet_kill(&engine->execlists.tasklet); /* flush the callback */
 
 	intel_breadcrumbs_free(engine->breadcrumbs);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 13b3c83f74fc..5a28113c9a98 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -258,8 +258,6 @@ struct intel_engine_execlists {
 	struct rb_root_cached queue;
 	struct rb_root_cached virtual;
 
-	struct i915_sched_ipi ipi;
-
 	/**
 	 * @csb_write: control register for Context Switch buffer
 	 *
@@ -329,11 +327,7 @@ struct intel_engine_cs {
 
 	struct intel_sseu sseu;
 
-	struct i915_sched {
-		spinlock_t lock;
-		struct list_head requests;
-		struct list_head hold; /* ready requests, but on hold */
-	} active;
+	struct i915_sched sched;
 
 	/* keep a request in reserve for a [pm] barrier under oom */
 	struct i915_request *request_pool;
@@ -620,7 +614,7 @@ intel_engine_has_relative_mmio(const struct intel_engine_cs * const engine)
 static inline struct i915_sched *
 intel_engine_get_scheduler(struct intel_engine_cs *engine)
 {
-	return &engine->active;
+	return &engine->sched;
 }
 
 #endif /* __INTEL_ENGINE_TYPES_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 36bdb963852e..1b65df24cacd 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -294,7 +294,7 @@ static int virtual_prio(const struct intel_engine_execlists *el)
 static bool need_preempt(const struct intel_engine_cs *engine,
 			 const struct i915_request *rq)
 {
-	const struct i915_sched *se = &engine->active;
+	const struct i915_sched *se = &engine->sched;
 	int last_prio;
 
 	if (!intel_engine_has_semaphores(engine))
@@ -1020,7 +1020,7 @@ timeslice_yield(const struct intel_engine_execlists *el,
 static bool needs_timeslice(const struct intel_engine_cs *engine,
 			    const struct i915_request *rq)
 {
-	const struct i915_sched *se = &engine->active;
+	const struct i915_sched *se = &engine->sched;
 
 	if (!intel_engine_has_timeslices(engine))
 		return false;
@@ -1277,7 +1277,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	while ((ve = first_virtual_engine(engine))) {
 		struct i915_request *rq;
 
-		spin_lock(&ve->base.active.lock);
+		spin_lock(&ve->base.sched.lock);
 
 		rq = ve->request;
 		if (unlikely(!virtual_matches(ve, rq, engine)))
@@ -1287,12 +1287,12 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		GEM_BUG_ON(rq->context != &ve->context);
 
 		if (unlikely(rq_prio(rq) < queue_prio(execlists))) {
-			spin_unlock(&ve->base.active.lock);
+			spin_unlock(&ve->base.sched.lock);
 			break;
 		}
 
 		if (last && !can_merge_rq(last, rq)) {
-			spin_unlock(&ve->base.active.lock);
+			spin_unlock(&ve->base.sched.lock);
 			spin_unlock(&se->lock);
 			return; /* leave this for another sibling */
 		}
@@ -1339,7 +1339,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 
 		i915_request_put(rq);
 unlock:
-		spin_unlock(&ve->base.active.lock);
+		spin_unlock(&ve->base.sched.lock);
 
 		/*
 		 * Hmm, we have a bunch of virtual engine requests,
@@ -2724,7 +2724,7 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 		rb_erase_cached(rb, &execlists->virtual);
 		RB_CLEAR_NODE(rb);
 
-		spin_lock(&ve->base.active.lock);
+		spin_lock(&ve->base.sched.lock);
 		rq = fetch_and_zero(&ve->request);
 		if (rq) {
 			if (i915_request_mark_eio(rq)) {
@@ -2736,7 +2736,7 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 
 			ve->base.execlists.queue_priority_hint = INT_MIN;
 		}
-		spin_unlock(&ve->base.active.lock);
+		spin_unlock(&ve->base.sched.lock);
 	}
 
 	/* Remaining _unready_ requests will be nop'ed when submitted */
@@ -3029,13 +3029,13 @@ static void rcu_virtual_context_destroy(struct work_struct *wrk)
 		if (RB_EMPTY_NODE(node))
 			continue;
 
-		spin_lock_irq(&sibling->active.lock);
+		spin_lock_irq(&sibling->sched.lock);
 
 		/* Detachment is lazily performed in the execlists tasklet */
 		if (!RB_EMPTY_NODE(node))
 			rb_erase_cached(node, &sibling->execlists.virtual);
 
-		spin_unlock_irq(&sibling->active.lock);
+		spin_unlock_irq(&sibling->sched.lock);
 	}
 	GEM_BUG_ON(__tasklet_is_scheduled(&ve->base.execlists.tasklet));
 	GEM_BUG_ON(!list_empty(virtual_queue(ve)));
@@ -3382,7 +3382,6 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 
 	snprintf(ve->base.name, sizeof(ve->base.name), "virtual");
 
-	intel_engine_init_active(&ve->base, ENGINE_VIRTUAL);
 	intel_engine_init_execlists(&ve->base);
 
 	ve->base.cops = &virtual_context_ops;
@@ -3468,6 +3467,12 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 
 	ve->base.flags |= I915_ENGINE_IS_VIRTUAL;
 
+	i915_sched_init(&ve->base.sched,
+			ve->base.i915->drm.dev,
+			ve->base.name,
+			ve->base.mask,
+			ENGINE_VIRTUAL);
+
 	virtual_engine_initial_hint(ve);
 	return &ve->context;
 
diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
index b4d26d3bf39f..8b1c2727d25c 100644
--- a/drivers/gpu/drm/i915/gt/mock_engine.c
+++ b/drivers/gpu/drm/i915/gt/mock_engine.c
@@ -328,7 +328,12 @@ int mock_engine_init(struct intel_engine_cs *engine)
 {
 	struct intel_context *ce;
 
-	intel_engine_init_active(engine, ENGINE_MOCK);
+	i915_sched_init(&engine->sched,
+			engine->i915->drm.dev,
+			engine->name,
+			engine->mask,
+			ENGINE_MOCK);
+
 	intel_engine_init_execlists(engine);
 	intel_engine_init__pm(engine);
 	intel_engine_init_retire(engine);
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 947e4fad7cf0..d736c1aae6e5 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -255,10 +255,10 @@ static void remove_from_engine(struct i915_request *rq)
 	 * check that the rq still belongs to the newly locked engine.
 	 */
 	locked = READ_ONCE(rq->engine);
-	spin_lock_irq(&locked->active.lock);
+	spin_lock_irq(&locked->sched.lock);
 	while (unlikely(locked != (engine = READ_ONCE(rq->engine)))) {
-		spin_unlock(&locked->active.lock);
-		spin_lock(&engine->active.lock);
+		spin_unlock(&locked->sched.lock);
+		spin_lock(&engine->sched.lock);
 		locked = engine;
 	}
 	list_del_init(&rq->sched.link);
@@ -269,7 +269,7 @@ static void remove_from_engine(struct i915_request *rq)
 	/* Prevent further __await_execution() registering a cb, then flush */
 	set_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags);
 
-	spin_unlock_irq(&locked->active.lock);
+	spin_unlock_irq(&locked->sched.lock);
 
 	__notify_execute_cb_imm(rq);
 }
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index e320edd718f3..3a5d6bdcd8dd 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -51,11 +51,13 @@ struct i915_capture_list {
 	struct i915_vma *vma;
 };
 
+#define RQ_FMT "%llx:%lld"
+#define RQ_ARG(rq) (rq) ? (rq)->fence.context : 0, (rq) ? (rq)->fence.seqno : 0
+
 #define RQ_TRACE(rq, fmt, ...) do {					\
 	const struct i915_request *rq__ = (rq);				\
-	ENGINE_TRACE(rq__->engine, "fence %llx:%lld, current %d " fmt,	\
-		     rq__->fence.context, rq__->fence.seqno,		\
-		     hwsp_seqno(rq__), ##__VA_ARGS__);			\
+	ENGINE_TRACE(rq__->engine, "fence " RQ_FMT ", current %d " fmt,	\
+		     RQ_ARG(rq__), hwsp_seqno(rq__), ##__VA_ARGS__);	\
 } while (0)
 
 enum {
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 034a186017ae..aec99142f712 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -13,6 +13,7 @@
 #include "i915_globals.h"
 #include "i915_request.h"
 #include "i915_scheduler.h"
+#include "i915_utils.h"
 
 static struct i915_global_scheduler {
 	struct i915_global base;
@@ -30,11 +31,11 @@ static struct i915_global_scheduler {
 	struct i915_request * const rq__ = (rq); \
 	struct intel_engine_cs *engine__ = READ_ONCE(rq__->engine); \
 \
-	spin_lock_irqsave(&engine__->active.lock, (flags)); \
+	spin_lock_irqsave(&engine__->sched.lock, (flags)); \
 	while (engine__ != READ_ONCE((rq__)->engine)) { \
-		spin_unlock(&engine__->active.lock); \
+		spin_unlock(&engine__->sched.lock); \
 		engine__ = READ_ONCE(rq__->engine); \
-		spin_lock(&engine__->active.lock); \
+		spin_lock(&engine__->sched.lock); \
 	} \
 \
 	engine__; \
@@ -105,16 +106,37 @@ static void ipi_schedule(struct work_struct *wrk)
 	} while (rq);
 }
 
-void i915_sched_init_ipi(struct i915_sched_ipi *ipi)
+static void init_ipi(struct i915_sched_ipi *ipi)
 {
 	INIT_WORK(&ipi->work, ipi_schedule);
 	ipi->list = NULL;
 }
 
+void i915_sched_init(struct i915_sched *se,
+		     struct device *dev,
+		     const char *name,
+		     unsigned long mask,
+		     unsigned int subclass)
+{
+	spin_lock_init(&se->lock);
+	lockdep_set_subclass(&se->lock, subclass);
+	mark_lock_used_irq(&se->lock);
+
+	se->dbg.dev = dev;
+	se->dbg.name = name;
+
+	se->mask = mask;
+
+	INIT_LIST_HEAD(&se->requests);
+	INIT_LIST_HEAD(&se->hold);
+
+	init_ipi(&se->ipi);
+}
+
 static void __ipi_add(struct i915_request *rq)
 {
 #define STUB ((struct i915_request *)1)
-	struct intel_engine_cs *engine = READ_ONCE(rq->engine);
+	struct i915_sched *se = i915_request_get_scheduler(rq);
 	struct i915_request *first;
 
 	if (!i915_request_get_rcu(rq))
@@ -134,13 +156,13 @@ static void __ipi_add(struct i915_request *rq)
 	}
 
 	/* Carefully insert ourselves into the head of the llist */
-	first = READ_ONCE(engine->execlists.ipi.list);
+	first = READ_ONCE(se->ipi.list);
 	do {
 		rq->sched.ipi_link = ptr_pack_bits(first, 1, 1);
-	} while (!try_cmpxchg(&engine->execlists.ipi.list, &first, rq));
+	} while (!try_cmpxchg(&se->ipi.list, &first, rq));
 
 	if (!first)
-		queue_work(system_unbound_wq, &engine->execlists.ipi.work);
+		queue_work(system_unbound_wq, &se->ipi.work);
 }
 
 static const struct i915_request *
@@ -303,12 +325,11 @@ static void kick_submission(struct intel_engine_cs *engine,
 	if (inflight->context == rq->context)
 		return;
 
-	ENGINE_TRACE(engine,
-		     "bumping queue-priority-hint:%d for rq:%llx:%lld, inflight:%llx:%lld prio %d\n",
-		     prio,
-		     rq->fence.context, rq->fence.seqno,
-		     inflight->fence.context, inflight->fence.seqno,
-		     inflight->sched.attr.priority);
+	SCHED_TRACE(&engine->sched,
+		    "bumping queue-priority-hint:%d for rq:" RQ_FMT ", inflight:" RQ_FMT " prio %d\n",
+		    prio,
+		    RQ_ARG(rq), RQ_ARG(inflight),
+		    inflight->sched.attr.priority);
 
 	engine->execlists.queue_priority_hint = prio;
 	if (need_preempt(prio, rq_prio(inflight)))
@@ -333,6 +354,9 @@ static void __i915_request_set_priority(struct i915_request *rq, int prio)
 	struct list_head *pos = &rq->sched.signalers_list;
 	struct list_head *plist;
 
+	SCHED_TRACE(&engine->sched, "PI for " RQ_FMT ", prio:%d\n",
+		    RQ_ARG(rq), prio);
+
 	plist = lookup_priolist(engine, prio);
 
 	/*
@@ -461,7 +485,7 @@ void i915_request_set_priority(struct i915_request *rq, int prio)
 	GEM_BUG_ON(rq_prio(rq) != prio);
 
 unlock:
-	spin_unlock_irqrestore(&engine->active.lock, flags);
+	spin_unlock_irqrestore(&engine->sched.lock, flags);
 }
 
 void __i915_sched_defer_request(struct intel_engine_cs *engine,
@@ -471,6 +495,8 @@ void __i915_sched_defer_request(struct intel_engine_cs *engine,
 	struct list_head *pl;
 	LIST_HEAD(list);
 
+	SCHED_TRACE(se, "defer request " RQ_FMT "\n", RQ_ARG(rq));
+
 	lockdep_assert_held(&se->lock);
 	GEM_BUG_ON(!test_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags));
 
@@ -577,6 +603,8 @@ void i915_request_enqueue(struct i915_request *rq)
 	unsigned long flags;
 	bool kick = false;
 
+	SCHED_TRACE(se, "queue request " RQ_FMT "\n", RQ_ARG(rq));
+
 	/* Will be called from irq-context when using foreign fences. */
 	spin_lock_irqsave(&se->lock, flags);
 	GEM_BUG_ON(test_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags));
@@ -636,6 +664,10 @@ __i915_sched_rewind_requests(struct intel_engine_cs *engine)
 		active = rq;
 	}
 
+	SCHED_TRACE(se,
+		    "rewind requests, active request " RQ_FMT "\n",
+		    RQ_ARG(active));
+
 	return active;
 }
 
@@ -654,8 +686,7 @@ bool __i915_sched_suspend_request(struct intel_engine_cs *engine,
 	if (i915_request_on_hold(rq))
 		return false;
 
-	ENGINE_TRACE(engine, "suspending request %llx:%lld\n",
-		     rq->fence.context, rq->fence.seqno);
+	SCHED_TRACE(se, "suspending request " RQ_FMT "\n", RQ_ARG(rq));
 
 	/*
 	 * Transfer this request onto the hold queue to prevent it
@@ -737,8 +768,7 @@ void __i915_sched_resume_request(struct intel_engine_cs *engine,
 	if (!i915_request_on_hold(rq))
 		return;
 
-	ENGINE_TRACE(engine, "resuming request %llx:%lld\n",
-		     rq->fence.context, rq->fence.seqno);
+	SCHED_TRACE(se, "resuming request " RQ_FMT "\n", RQ_ARG(rq));
 
 	/*
 	 * Move this request back to the priority queue, and all of its
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index 00ce0a9d519d..ebd93ae303b4 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -16,6 +16,13 @@
 struct drm_printer;
 struct intel_engine_cs;
 
+#define SCHED_TRACE(se, fmt, ...) do {					\
+	const struct i915_sched *se__ __maybe_unused = (se);		\
+	GEM_TRACE("%s sched:%s: " fmt,					\
+		  dev_name(se__->dbg.dev), se__->dbg.name,		\
+		  ##__VA_ARGS__);					\
+} while (0)
+
 #define priolist_for_each_request(it, plist) \
 	list_for_each_entry(it, &(plist)->requests, sched.link)
 
@@ -36,7 +43,11 @@ int i915_sched_node_add_dependency(struct i915_sched_node *node,
 
 void i915_sched_node_retire(struct i915_sched_node *node);
 
-void i915_sched_init_ipi(struct i915_sched_ipi *ipi);
+void i915_sched_init(struct i915_sched *se,
+		     struct device *dev,
+		     const char *name,
+		     unsigned long mask,
+		     unsigned int subclass);
 
 void i915_request_set_priority(struct i915_request *request, int prio);
 
diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
index f2b0ac3a05a5..b7ee122d4f28 100644
--- a/drivers/gpu/drm/i915/i915_scheduler_types.h
+++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
@@ -14,10 +14,33 @@
 
 struct i915_request;
 
-/* Inter-engine scheduling delegation */
-struct i915_sched_ipi {
-	struct i915_request *list;
-	struct work_struct work;
+/**
+ * struct i915_sched - funnels requests towards hardware
+ *
+ * The struct i915_sched captures all the requests as they become ready
+ * to execute (on waking the i915_request.submit fence) puts them into
+ * a queue where they may be reordered according to priority and then
+ * wakes the backend tasklet to feed the queue to HW.
+ */
+struct i915_sched {
+	spinlock_t lock; /* protects the scheduling lists and queue */
+
+	unsigned long mask; /* available scheduling channels */
+
+	struct list_head requests; /* active request, on HW */
+	struct list_head hold; /* ready requests, but on hold */
+
+	/* Inter-engine scheduling delegate */
+	struct i915_sched_ipi {
+		struct i915_request *list;
+		struct work_struct work;
+	} ipi;
+
+	/* Pretty device names for debug messages */
+	struct {
+		struct device *dev;
+		const char *name;
+	} dbg;
 };
 
 struct i915_sched_attr {
diff --git a/drivers/gpu/drm/i915/selftests/i915_scheduler.c b/drivers/gpu/drm/i915/selftests/i915_scheduler.c
index 8c53c613decf..88ebe92bed2d 100644
--- a/drivers/gpu/drm/i915/selftests/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/selftests/i915_scheduler.c
@@ -878,6 +878,7 @@ int i915_scheduler_perf_selftests(struct drm_i915_private *i915)
 #define T(t) { #t, sizeof(struct t) }
 		T(i915_dependency),
 		T(i915_priolist),
+		T(i915_sched),
 		T(i915_sched_attr),
 		T(i915_sched_node),
 		T(i915_request),
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
