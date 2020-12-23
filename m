Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4400C2E1B78
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Dec 2020 12:11:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F1536E90E;
	Wed, 23 Dec 2020 11:11:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98BD76E900
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Dec 2020 11:11:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23412203-1500050 
 for multiple; Wed, 23 Dec 2020 11:11:32 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Dec 2020 11:10:51 +0000
Message-Id: <20201223111126.3338-27-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201223111126.3338-1-chris@chris-wilson.co.uk>
References: <20201223111126.3338-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 27/62] drm/i915: Restructure priority inheritance
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

In anticipation of wanting to be able to call pi from underneath an
engine's active.lock, rework the priority inheritance to primarily work
along an engine's priority queue, delegating any other engine that the
chain may traverse to a worker. This reduces the global spinlock from
governing the multi-entire priority inheritance depth-first search, to a
smaller lock on each engine around a single list on that engine.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    |   2 +
 drivers/gpu/drm/i915/gt/intel_engine_types.h |   3 +
 drivers/gpu/drm/i915/i915_scheduler.c        | 338 ++++++++++++-------
 drivers/gpu/drm/i915/i915_scheduler.h        |   2 +
 drivers/gpu/drm/i915/i915_scheduler_types.h  |  19 +-
 5 files changed, 229 insertions(+), 135 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index bc3fca62b628..78b41dc36cd7 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -594,6 +594,8 @@ void intel_engine_init_execlists(struct intel_engine_cs *engine)
 
 	execlists->queue_priority_hint = INT_MIN;
 	execlists->queue = RB_ROOT_CACHED;
+
+	i915_sched_init_ipi(&execlists->ipi);
 }
 
 static void cleanup_status_page(struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 08ed958292af..d19710191690 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -21,6 +21,7 @@
 #include "i915_gem.h"
 #include "i915_pmu.h"
 #include "i915_priolist_types.h"
+#include "i915_scheduler_types.h"
 #include "i915_selftest.h"
 #include "intel_breadcrumbs_types.h"
 #include "intel_sseu.h"
@@ -258,6 +259,8 @@ struct intel_engine_execlists {
 	struct rb_root_cached queue;
 	struct rb_root_cached virtual;
 
+	struct i915_sched_ipi ipi;
+
 	/**
 	 * @csb_write: control register for Context Switch buffer
 	 *
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 8391841d927d..5fda1d29381b 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -17,8 +17,6 @@ static struct i915_global_scheduler {
 	struct kmem_cache *slab_priorities;
 } global;
 
-static DEFINE_SPINLOCK(schedule_lock);
-
 static struct i915_sched_node *node_get(struct i915_sched_node *node)
 {
 	i915_request_get(container_of(node, struct i915_request, sched));
@@ -30,15 +28,114 @@ static void node_put(struct i915_sched_node *node)
 	i915_request_put(container_of(node, struct i915_request, sched));
 }
 
-static const struct i915_request *
-node_to_request(const struct i915_sched_node *node)
+static inline int rq_prio(const struct i915_request *rq)
 {
-	return container_of(node, const struct i915_request, sched);
+	return READ_ONCE(rq->sched.attr.priority);
+}
+
+static int ipi_get_prio(struct i915_request *rq)
+{
+	if (READ_ONCE(rq->sched.ipi_priority) == I915_PRIORITY_INVALID)
+		return I915_PRIORITY_INVALID;
+
+	return xchg(&rq->sched.ipi_priority, I915_PRIORITY_INVALID);
+}
+
+static void ipi_schedule(struct work_struct *wrk)
+{
+	struct i915_sched_ipi *ipi = container_of(wrk, typeof(*ipi), work);
+	struct i915_request *rq = xchg(&ipi->list, NULL);
+
+	do {
+		struct i915_request *rn = xchg(&rq->sched.ipi_link, NULL);
+		int prio;
+
+		prio = ipi_get_prio(rq);
+
+		/*
+		 * For cross-engine scheduling to work we rely on one of two
+		 * things:
+		 *
+		 * a) The requests are using dma-fence fences and so will not
+		 * be scheduled until the previous engine is completed, and
+		 * so we cannot cross back onto the original engine and end up
+		 * queuing an earlier request after the first (due to the
+		 * interrupted DFS).
+		 *
+		 * b) The requests are using semaphores and so may be already
+		 * be in flight, in which case if we cross back onto the same
+		 * engine, we will already have put the interrupted DFS into
+		 * the priolist, and the continuation will now be queued
+		 * afterwards [out-of-order]. However, since we are using
+		 * semaphores in this case, we also perform yield on semaphore
+		 * waits and so will reorder the requests back into the correct
+		 * sequence. This occurrence (of promoting a request chain
+		 * that crosses the engines using semaphores back unto itself)
+		 * should be unlikely enough that it probably does not matter...
+		 */
+		local_bh_disable();
+		i915_request_set_priority(rq, prio);
+		local_bh_enable();
+
+		i915_request_put(rq);
+		rq = ptr_mask_bits(rn, 1);
+	} while (rq);
+}
+
+void i915_sched_init_ipi(struct i915_sched_ipi *ipi)
+{
+	INIT_WORK(&ipi->work, ipi_schedule);
+	ipi->list = NULL;
+}
+
+static void __ipi_add(struct i915_request *rq)
+{
+#define STUB ((struct i915_request *)1)
+	struct intel_engine_cs *engine = READ_ONCE(rq->engine);
+	struct i915_request *first;
+
+	if (!i915_request_get_rcu(rq))
+		return;
+
+	if (__i915_request_is_complete(rq) ||
+	    cmpxchg(&rq->sched.ipi_link, NULL, STUB)) { /* already queued */
+		i915_request_put(rq);
+		return;
+	}
+
+	first = READ_ONCE(engine->execlists.ipi.list);
+	do
+		rq->sched.ipi_link = ptr_pack_bits(first, 1, 1);
+	while (!try_cmpxchg(&engine->execlists.ipi.list, &first, rq));
+
+	if (!first)
+		queue_work(system_unbound_wq, &engine->execlists.ipi.work);
 }
 
-static inline bool node_started(const struct i915_sched_node *node)
+/*
+ * Virtual engines complicate acquiring the engine timeline lock,
+ * as their rq->engine pointer is not stable until under that
+ * engine lock. The simple ploy we use is to take the lock then
+ * check that the rq still belongs to the newly locked engine.
+ */
+#define lock_engine_irqsave(rq, flags) ({ \
+	struct i915_request * const rq__ = (rq); \
+	struct intel_engine_cs *engine__ = READ_ONCE(rq__->engine); \
+\
+	spin_lock_irqsave(&engine__->active.lock, (flags)); \
+	while (engine__ != READ_ONCE((rq__)->engine)) { \
+		spin_unlock(&engine__->active.lock); \
+		engine__ = READ_ONCE(rq__->engine); \
+		spin_lock(&engine__->active.lock); \
+	} \
+\
+	engine__; \
+})
+
+static const struct i915_request *
+node_to_request(const struct i915_sched_node *node)
 {
-	return i915_request_started(node_to_request(node));
+	return container_of(node, const struct i915_request, sched);
 }
 
 static inline bool node_signaled(const struct i915_sched_node *node)
@@ -137,42 +234,6 @@ void __i915_priolist_free(struct i915_priolist *p)
 	kmem_cache_free(global.slab_priorities, p);
 }
 
-struct sched_cache {
-	struct list_head *priolist;
-};
-
-static struct intel_engine_cs *
-sched_lock_engine(const struct i915_sched_node *node,
-		  struct intel_engine_cs *locked,
-		  struct sched_cache *cache)
-{
-	const struct i915_request *rq = node_to_request(node);
-	struct intel_engine_cs *engine;
-
-	GEM_BUG_ON(!locked);
-
-	/*
-	 * Virtual engines complicate acquiring the engine timeline lock,
-	 * as their rq->engine pointer is not stable until under that
-	 * engine lock. The simple ploy we use is to take the lock then
-	 * check that the rq still belongs to the newly locked engine.
-	 */
-	while (locked != (engine = READ_ONCE(rq->engine))) {
-		spin_unlock(&locked->active.lock);
-		memset(cache, 0, sizeof(*cache));
-		spin_lock(&engine->active.lock);
-		locked = engine;
-	}
-
-	GEM_BUG_ON(locked != engine);
-	return locked;
-}
-
-static inline int rq_prio(const struct i915_request *rq)
-{
-	return rq->sched.attr.priority;
-}
-
 static inline bool need_preempt(int prio, int active)
 {
 	/*
@@ -198,19 +259,17 @@ static void kick_submission(struct intel_engine_cs *engine,
 	if (prio <= engine->execlists.queue_priority_hint)
 		return;
 
-	rcu_read_lock();
-
 	/* Nothing currently active? We're overdue for a submission! */
 	inflight = execlists_active(&engine->execlists);
 	if (!inflight)
-		goto unlock;
+		return;
 
 	/*
 	 * If we are already the currently executing context, don't
 	 * bother evaluating if we should preempt ourselves.
 	 */
 	if (inflight->context == rq->context)
-		goto unlock;
+		return;
 
 	ENGINE_TRACE(engine,
 		     "bumping queue-priority-hint:%d for rq:%llx:%lld, inflight:%llx:%lld prio %d\n",
@@ -222,30 +281,28 @@ static void kick_submission(struct intel_engine_cs *engine,
 	engine->execlists.queue_priority_hint = prio;
 	if (need_preempt(prio, rq_prio(inflight)))
 		tasklet_hi_schedule(&engine->execlists.tasklet);
-
-unlock:
-	rcu_read_unlock();
 }
 
-static void __i915_schedule(struct i915_sched_node *node, int prio)
+static void ipi_priority(struct i915_request *rq, int prio)
 {
-	struct intel_engine_cs *engine;
-	struct i915_dependency *dep, *p;
-	struct i915_dependency stack;
-	struct sched_cache cache;
-	LIST_HEAD(dfs);
+	int old = READ_ONCE(rq->sched.ipi_priority);
 
-	/* Needed in order to use the temporary link inside i915_dependency */
-	lockdep_assert_held(&schedule_lock);
-	GEM_BUG_ON(prio == I915_PRIORITY_INVALID);
+	do {
+		if (prio <= old)
+			return;
+	} while (!try_cmpxchg(&rq->sched.ipi_priority, &old, prio));
 
-	if (node_signaled(node))
-		return;
+	__ipi_add(rq);
+}
 
-	prio = max(prio, node->attr.priority);
+static void __i915_request_set_priority(struct i915_request *rq, int prio)
+{
+	struct intel_engine_cs *engine = rq->engine;
+	struct i915_request *rn;
+	struct list_head *plist;
+	LIST_HEAD(dfs);
 
-	stack.signaler = node;
-	list_add(&stack.dfs_link, &dfs);
+	list_add(&rq->sched.dfs, &dfs);
 
 	/*
 	 * Recursively bump all dependent priorities to match the new request.
@@ -265,66 +322,41 @@ static void __i915_schedule(struct i915_sched_node *node, int prio)
 	 * end result is a topological list of requests in reverse order, the
 	 * last element in the list is the request we must execute first.
 	 */
-	list_for_each_entry(dep, &dfs, dfs_link) {
-		struct i915_sched_node *node = dep->signaler;
+	list_for_each_entry(rq, &dfs, sched.dfs) {
+		struct i915_dependency *p;
 
-		/* If we are already flying, we know we have no signalers */
-		if (node_started(node))
-			continue;
+		/* Also release any children on this engine that are ready */
+		GEM_BUG_ON(rq->engine != engine);
 
-		/*
-		 * Within an engine, there can be no cycle, but we may
-		 * refer to the same dependency chain multiple times
-		 * (redundant dependencies are not eliminated) and across
-		 * engines.
-		 */
-		list_for_each_entry(p, &node->signalers_list, signal_link) {
-			GEM_BUG_ON(p == dep); /* no cycles! */
+		for_each_signaler(p, rq) {
+			struct i915_request *s =
+				container_of(p->signaler, typeof(*s), sched);
 
-			if (node_signaled(p->signaler))
-				continue;
+			GEM_BUG_ON(s == rq);
 
-			if (prio > READ_ONCE(p->signaler->attr.priority))
-				list_move_tail(&p->dfs_link, &dfs);
-		}
-	}
+			if (rq_prio(s) >= prio)
+				continue;
 
-	/*
-	 * If we didn't need to bump any existing priorities, and we haven't
-	 * yet submitted this request (i.e. there is no potential race with
-	 * execlists_submit_request()), we can set our own priority and skip
-	 * acquiring the engine locks.
-	 */
-	if (node->attr.priority == I915_PRIORITY_INVALID) {
-		GEM_BUG_ON(!list_empty(&node->link));
-		node->attr.priority = prio;
+			if (__i915_request_is_complete(s))
+				continue;
 
-		if (stack.dfs_link.next == stack.dfs_link.prev)
-			return;
+			if (s->engine != rq->engine) {
+				ipi_priority(s, prio);
+				continue;
+			}
 
-		__list_del_entry(&stack.dfs_link);
+			list_move_tail(&s->sched.dfs, &dfs);
+		}
 	}
 
-	memset(&cache, 0, sizeof(cache));
-	engine = node_to_request(node)->engine;
-	spin_lock(&engine->active.lock);
-
-	/* Fifo and depth-first replacement ensure our deps execute before us */
-	engine = sched_lock_engine(node, engine, &cache);
-	list_for_each_entry_safe_reverse(dep, p, &dfs, dfs_link) {
-		INIT_LIST_HEAD(&dep->dfs_link);
+	plist = i915_sched_lookup_priolist(engine, prio);
 
-		node = dep->signaler;
-		engine = sched_lock_engine(node, engine, &cache);
-		lockdep_assert_held(&engine->active.lock);
-
-		/* Recheck after acquiring the engine->timeline.lock */
-		if (prio <= node->attr.priority || node_signaled(node))
-			continue;
+	/* Fifo and depth-first replacement ensure our deps execute first */
+	list_for_each_entry_safe_reverse(rq, rn, &dfs, sched.dfs) {
+		GEM_BUG_ON(rq->engine != engine);
 
-		GEM_BUG_ON(node_to_request(node)->engine != engine);
-
-		WRITE_ONCE(node->attr.priority, prio);
+		INIT_LIST_HEAD(&rq->sched.dfs);
+		WRITE_ONCE(rq->sched.attr.priority, prio);
 
 		/*
 		 * Once the request is ready, it will be placed into the
@@ -334,32 +366,73 @@ static void __i915_schedule(struct i915_sched_node *node, int prio)
 		 * any preemption required, be dealt with upon submission.
 		 * See engine->submit_request()
 		 */
-		if (list_empty(&node->link))
+		if (!i915_request_is_ready(rq))
 			continue;
 
-		if (i915_request_in_priority_queue(node_to_request(node))) {
-			if (!cache.priolist)
-				cache.priolist =
-					i915_sched_lookup_priolist(engine,
-								   prio);
-			list_move_tail(&node->link, cache.priolist);
-		}
+		if (i915_request_in_priority_queue(rq))
+			list_move_tail(&rq->sched.link, plist);
 
-		/* Defer (tasklet) submission until after all of our updates. */
-		kick_submission(engine, node_to_request(node), prio);
+		/* Defer (tasklet) submission until after all updates. */
+		kick_submission(engine, rq, prio);
 	}
-
-	spin_unlock(&engine->active.lock);
 }
 
 void i915_request_set_priority(struct i915_request *rq, int prio)
 {
-	if (!intel_engine_has_scheduler(rq->engine))
+	struct intel_engine_cs *engine;
+	unsigned long flags;
+
+	if (prio <= rq_prio(rq))
 		return;
 
-	spin_lock_irq(&schedule_lock);
-	__i915_schedule(&rq->sched, prio);
-	spin_unlock_irq(&schedule_lock);
+	/*
+	 * If we are setting the priority before being submitted, see if we
+	 * can quickly adjust our own priority in-situ and avoid taking
+	 * the contended engine->active.lock. If we need priority inheritance,
+	 * take the slow route.
+	 */
+	if (rq_prio(rq) == I915_PRIORITY_INVALID) {
+		struct i915_dependency *p;
+
+		rcu_read_lock();
+		for_each_signaler(p, rq) {
+			struct i915_request *s =
+				container_of(p->signaler, typeof(*s), sched);
+
+			if (rq_prio(s) >= prio)
+				continue;
+
+			if (__i915_request_is_complete(s))
+				continue;
+
+			break;
+		}
+		rcu_read_unlock();
+
+		if (&p->signal_link == &rq->sched.signalers_list &&
+		    cmpxchg(&rq->sched.attr.priority,
+			    I915_PRIORITY_INVALID,
+			    prio) == I915_PRIORITY_INVALID)
+			return;
+	}
+
+	engine = lock_engine_irqsave(rq, flags);
+	if (!intel_engine_has_scheduler(engine))
+		goto unlock;
+
+	if (i915_request_completed(rq))
+		goto unlock;
+
+	if (prio <= rq_prio(rq))
+		goto unlock;
+
+	rcu_read_lock();
+	__i915_request_set_priority(rq, prio);
+	rcu_read_unlock();
+	GEM_BUG_ON(rq_prio(rq) != prio);
+
+unlock:
+	spin_unlock_irqrestore(&engine->active.lock, flags);
 }
 
 void i915_sched_node_init(struct i915_sched_node *node)
@@ -369,6 +442,9 @@ void i915_sched_node_init(struct i915_sched_node *node)
 	INIT_LIST_HEAD(&node->signalers_list);
 	INIT_LIST_HEAD(&node->waiters_list);
 	INIT_LIST_HEAD(&node->link);
+	INIT_LIST_HEAD(&node->dfs);
+
+	node->ipi_link = NULL;
 
 	i915_sched_node_reinit(node);
 }
@@ -379,6 +455,9 @@ void i915_sched_node_reinit(struct i915_sched_node *node)
 	node->semaphores = 0;
 	node->flags = 0;
 
+	GEM_BUG_ON(node->ipi_link);
+	node->ipi_priority = I915_PRIORITY_INVALID;
+
 	GEM_BUG_ON(!list_empty(&node->signalers_list));
 	GEM_BUG_ON(!list_empty(&node->waiters_list));
 	GEM_BUG_ON(!list_empty(&node->link));
@@ -414,7 +493,6 @@ bool __i915_sched_node_add_dependency(struct i915_sched_node *node,
 	spin_lock(&signal->lock);
 
 	if (!node_signaled(signal)) {
-		INIT_LIST_HEAD(&dep->dfs_link);
 		dep->signaler = signal;
 		dep->waiter = node_get(node);
 		dep->flags = flags;
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index a045be784c67..5be7f90e7896 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -35,6 +35,8 @@ int i915_sched_node_add_dependency(struct i915_sched_node *node,
 
 void i915_sched_node_retire(struct i915_sched_node *node);
 
+void i915_sched_init_ipi(struct i915_sched_ipi *ipi);
+
 void i915_request_set_priority(struct i915_request *request, int prio);
 
 struct list_head *
diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
index 623bf41fcf35..5a84d59134ee 100644
--- a/drivers/gpu/drm/i915/i915_scheduler_types.h
+++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
@@ -8,8 +8,8 @@
 #define _I915_SCHEDULER_TYPES_H_
 
 #include <linux/list.h>
+#include <linux/workqueue.h>
 
-#include "gt/intel_engine_types.h"
 #include "i915_priolist_types.h"
 
 struct drm_i915_private;
@@ -61,13 +61,23 @@ struct i915_sched_attr {
  */
 struct i915_sched_node {
 	spinlock_t lock; /* protect the lists */
+
 	struct list_head signalers_list; /* those before us, we depend upon */
 	struct list_head waiters_list; /* those after us, they depend upon us */
-	struct list_head link;
+	struct list_head link; /* guarded by engine->active.lock */
+	struct list_head dfs; /* guarded by engine->active.lock */
 	struct i915_sched_attr attr;
-	unsigned int flags;
+	unsigned long flags;
 #define I915_SCHED_HAS_EXTERNAL_CHAIN	BIT(0)
-	intel_engine_mask_t semaphores;
+	unsigned long semaphores;
+
+	struct i915_request *ipi_link;
+	int ipi_priority;
+};
+
+struct i915_sched_ipi {
+	struct i915_request *list;
+	struct work_struct work;
 };
 
 struct i915_dependency {
@@ -75,7 +85,6 @@ struct i915_dependency {
 	struct i915_sched_node *waiter;
 	struct list_head signal_link;
 	struct list_head wait_link;
-	struct list_head dfs_link;
 	struct rcu_head rcu;
 	unsigned long flags;
 #define I915_DEPENDENCY_ALLOC		BIT(0)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
