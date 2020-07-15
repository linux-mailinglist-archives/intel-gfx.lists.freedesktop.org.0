Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 210F2220C5B
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 13:52:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B2D96EADE;
	Wed, 15 Jul 2020 11:52:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90D786EACC
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 11:52:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21826161-1500050 
 for multiple; Wed, 15 Jul 2020 12:51:58 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jul 2020 12:51:34 +0100
Message-Id: <20200715115147.11866-53-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200715115147.11866-1-chris@chris-wilson.co.uk>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 53/66] drm/i915: Restructure priority inheritance
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
governing the entire priority inheritance depth-first search, to a small
lock around a single list.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_scheduler.c       | 277 +++++++++++---------
 drivers/gpu/drm/i915/i915_scheduler_types.h |   6 +-
 2 files changed, 162 insertions(+), 121 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 2e4d512e61d8..3f261b4fee66 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -17,7 +17,65 @@ static struct i915_global_scheduler {
 	struct kmem_cache *slab_priorities;
 } global;
 
-static DEFINE_SPINLOCK(schedule_lock);
+static DEFINE_SPINLOCK(ipi_lock);
+static LIST_HEAD(ipi_list);
+
+static inline int rq_prio(const struct i915_request *rq)
+{
+	return READ_ONCE(rq->sched.attr.priority);
+}
+
+static void ipi_schedule(struct irq_work *wrk)
+{
+	rcu_read_lock();
+	do {
+		struct i915_dependency *p;
+		struct i915_request *rq;
+		unsigned long flags;
+		int prio;
+
+		spin_lock_irqsave(&ipi_lock, flags);
+		p = list_first_entry_or_null(&ipi_list, typeof(*p), ipi_link);
+		if (p) {
+			rq = container_of(p->signaler, typeof(*rq), sched);
+			list_del_init(&p->ipi_link);
+
+			prio = p->ipi_priority;
+			p->ipi_priority = I915_PRIORITY_INVALID;
+		}
+		spin_unlock_irqrestore(&ipi_lock, flags);
+		if (!p)
+			break;
+
+		if (i915_request_completed(rq))
+			continue;
+
+		i915_request_set_priority(rq, prio);
+	} while (1);
+	rcu_read_unlock();
+}
+
+static DEFINE_IRQ_WORK(ipi_work, ipi_schedule);
+
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
 
 static const struct i915_request *
 node_to_request(const struct i915_sched_node *node)
@@ -126,42 +184,6 @@ void __i915_priolist_free(struct i915_priolist *p)
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
@@ -216,25 +238,15 @@ static void kick_submission(struct intel_engine_cs *engine,
 	rcu_read_unlock();
 }
 
-static void __i915_schedule(struct i915_sched_node *node, int prio)
+static void __i915_request_set_priority(struct i915_request *rq, int prio)
 {
-	struct intel_engine_cs *engine;
-	struct i915_dependency *dep, *p;
-	struct i915_dependency stack;
-	struct sched_cache cache;
+	struct intel_engine_cs *engine = rq->engine;
+	struct i915_request *rn;
+	struct list_head *plist;
 	LIST_HEAD(dfs);
 
-	/* Needed in order to use the temporary link inside i915_dependency */
-	lockdep_assert_held(&schedule_lock);
-	GEM_BUG_ON(prio == I915_PRIORITY_INVALID);
-
-	if (node_signaled(node))
-		return;
-
-	prio = max(prio, node->attr.priority);
-
-	stack.signaler = node;
-	list_add(&stack.dfs_link, &dfs);
+	lockdep_assert_held(&engine->active.lock);
+	list_add(&rq->sched.dfs, &dfs);
 
 	/*
 	 * Recursively bump all dependent priorities to match the new request.
@@ -254,66 +266,47 @@ static void __i915_schedule(struct i915_sched_node *node, int prio)
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
+			if (i915_request_completed(s))
+				continue;
 
-		if (stack.dfs_link.next == stack.dfs_link.prev)
-			return;
+			if (s->engine != rq->engine) {
+				spin_lock(&ipi_lock);
+				if (prio > p->ipi_priority) {
+					p->ipi_priority = prio;
+					list_move(&p->ipi_link, &ipi_list);
+					irq_work_queue(&ipi_work);
+				}
+				spin_unlock(&ipi_lock);
+				continue;
+			}
 
-		__list_del_entry(&stack.dfs_link);
+			list_move_tail(&s->sched.dfs, &dfs);
+		}
 	}
 
-	memset(&cache, 0, sizeof(cache));
-	engine = node_to_request(node)->engine;
-	spin_lock(&engine->active.lock);
+	plist = i915_sched_lookup_priolist(engine, prio);
 
-	/* Fifo and depth-first replacement ensure our deps execute before us */
-	engine = sched_lock_engine(node, engine, &cache);
-	list_for_each_entry_safe_reverse(dep, p, &dfs, dfs_link) {
-		INIT_LIST_HEAD(&dep->dfs_link);
+	/* Fifo and depth-first replacement ensure our deps execute first */
+	list_for_each_entry_safe_reverse(rq, rn, &dfs, sched.dfs) {
+		GEM_BUG_ON(rq->engine != engine);
 
-		node = dep->signaler;
-		engine = sched_lock_engine(node, engine, &cache);
-		lockdep_assert_held(&engine->active.lock);
-
-		/* Recheck after acquiring the engine->timeline.lock */
-		if (prio <= node->attr.priority || node_signaled(node))
-			continue;
-
-		GEM_BUG_ON(node_to_request(node)->engine != engine);
-
-		WRITE_ONCE(node->attr.priority, prio);
+		INIT_LIST_HEAD(&rq->sched.dfs);
+		WRITE_ONCE(rq->sched.attr.priority, prio);
 
 		/*
 		 * Once the request is ready, it will be placed into the
@@ -323,32 +316,70 @@ static void __i915_schedule(struct i915_sched_node *node, int prio)
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
+			if (i915_request_completed(s))
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
+	__i915_request_set_priority(rq, prio);
+
+unlock:
+	spin_unlock_irqrestore(&engine->active.lock, flags);
 }
 
 void i915_sched_node_init(struct i915_sched_node *node)
@@ -358,6 +389,7 @@ void i915_sched_node_init(struct i915_sched_node *node)
 	INIT_LIST_HEAD(&node->signalers_list);
 	INIT_LIST_HEAD(&node->waiters_list);
 	INIT_LIST_HEAD(&node->link);
+	INIT_LIST_HEAD(&node->dfs);
 
 	i915_sched_node_reinit(node);
 }
@@ -396,7 +428,8 @@ bool __i915_sched_node_add_dependency(struct i915_sched_node *node,
 	spin_lock_irq(&signal->lock);
 
 	if (!node_signaled(signal)) {
-		INIT_LIST_HEAD(&dep->dfs_link);
+		INIT_LIST_HEAD(&dep->ipi_link);
+		dep->ipi_priority = I915_PRIORITY_INVALID;
 		dep->signaler = signal;
 		dep->waiter = node;
 		dep->flags = flags;
@@ -464,6 +497,12 @@ void i915_sched_node_retire(struct i915_sched_node *node)
 
 		GEM_BUG_ON(dep->signaler != node);
 
+		if (unlikely(!list_empty(&dep->ipi_link))) {
+			spin_lock(&ipi_lock);
+			list_del(&dep->ipi_link);
+			spin_unlock(&ipi_lock);
+		}
+
 		w = READ_ONCE(dep->waiter);
 		if (w) {
 			spin_lock_nested(&w->lock, SINGLE_DEPTH_NESTING);
diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
index 3246430eb1c1..ce60577df2bf 100644
--- a/drivers/gpu/drm/i915/i915_scheduler_types.h
+++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
@@ -63,7 +63,8 @@ struct i915_sched_node {
 	spinlock_t lock; /* protect the lists */
 	struct list_head signalers_list; /* those before us, we depend upon */
 	struct list_head waiters_list; /* those after us, they depend upon us */
-	struct list_head link;
+	struct list_head link; /* guarded by engine->active.lock */
+	struct list_head dfs; /* guarded by engine->active.lock */
 	struct i915_sched_attr attr;
 	unsigned int flags;
 #define I915_SCHED_HAS_EXTERNAL_CHAIN	BIT(0)
@@ -75,11 +76,12 @@ struct i915_dependency {
 	struct i915_sched_node *waiter;
 	struct list_head signal_link;
 	struct list_head wait_link;
-	struct list_head dfs_link;
+	struct list_head ipi_link;
 	unsigned long flags;
 #define I915_DEPENDENCY_ALLOC		BIT(0)
 #define I915_DEPENDENCY_EXTERNAL	BIT(1)
 #define I915_DEPENDENCY_WEAK		BIT(2)
+	int ipi_priority;
 };
 
 #define for_each_waiter(p__, rq__) \
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
