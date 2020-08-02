Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B31235923
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Aug 2020 18:44:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04E896E16D;
	Sun,  2 Aug 2020 16:44:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80EF36E159
 for <intel-gfx@lists.freedesktop.org>; Sun,  2 Aug 2020 16:44:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22010452-1500050 
 for multiple; Sun, 02 Aug 2020 17:44:19 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  2 Aug 2020 17:44:03 +0100
Message-Id: <20200802164412.2738-34-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200802164412.2738-1-chris@chris-wilson.co.uk>
References: <20200802164412.2738-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 33/42] drm/i915: Teach the i915_dependency to
 use a double-lock
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

Currently, we construct and teardown the i915_dependency chains using a
global spinlock. As the lists are entirely local, it should be possible
to use an double-lock with an explicit nesting [signaler -> waiter,
always] and so avoid the costly convenience of a global spinlock.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c         |  6 +--
 drivers/gpu/drm/i915/i915_request.c         |  2 +-
 drivers/gpu/drm/i915/i915_scheduler.c       | 44 +++++++++++++--------
 drivers/gpu/drm/i915/i915_scheduler.h       |  2 +-
 drivers/gpu/drm/i915/i915_scheduler_types.h |  1 +
 5 files changed, 34 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 3999bf6c6aee..cb53f350848f 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1847,7 +1847,7 @@ static void defer_request(struct i915_request *rq, struct list_head * const pl)
 			struct i915_request *w =
 				container_of(p->waiter, typeof(*w), sched);
 
-			if (p->flags & I915_DEPENDENCY_WEAK)
+			if (!p->waiter || p->flags & I915_DEPENDENCY_WEAK)
 				continue;
 
 			/* Leave semaphores spinning on the other engines */
@@ -2700,7 +2700,7 @@ static void __execlists_hold(struct i915_request *rq)
 			struct i915_request *w =
 				container_of(p->waiter, typeof(*w), sched);
 
-			if (p->flags & I915_DEPENDENCY_WEAK)
+			if (!p->waiter || p->flags & I915_DEPENDENCY_WEAK)
 				continue;
 
 			/* Leave semaphores spinning on the other engines */
@@ -2798,7 +2798,7 @@ static void __execlists_unhold(struct i915_request *rq)
 			struct i915_request *w =
 				container_of(p->waiter, typeof(*w), sched);
 
-			if (p->flags & I915_DEPENDENCY_WEAK)
+			if (!p->waiter || p->flags & I915_DEPENDENCY_WEAK)
 				continue;
 
 			/* Propagate any change in error status */
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 8a263556997c..3f9e3e6a34ed 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -329,7 +329,7 @@ bool i915_request_retire(struct i915_request *rq)
 	intel_context_unpin(rq->context);
 
 	free_capture_list(rq);
-	i915_sched_node_fini(&rq->sched);
+	i915_sched_node_retire(&rq->sched);
 	i915_request_put(rq);
 
 	return true;
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 4760d7c9b7cd..247d2e2bb3c8 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -389,6 +389,8 @@ void i915_request_set_priority(struct i915_request *rq, int prio)
 
 void i915_sched_node_init(struct i915_sched_node *node)
 {
+	spin_lock_init(&node->lock);
+
 	INIT_LIST_HEAD(&node->signalers_list);
 	INIT_LIST_HEAD(&node->waiters_list);
 	INIT_LIST_HEAD(&node->link);
@@ -426,7 +428,8 @@ bool __i915_sched_node_add_dependency(struct i915_sched_node *node,
 {
 	bool ret = false;
 
-	spin_lock_irq(&schedule_lock);
+	/* The signal->lock is always the outer lock in this double-lock. */
+	spin_lock_irq(&signal->lock);
 
 	if (!node_signaled(signal)) {
 		INIT_LIST_HEAD(&dep->dfs_link);
@@ -435,15 +438,17 @@ bool __i915_sched_node_add_dependency(struct i915_sched_node *node,
 		dep->flags = flags;
 
 		/* All set, now publish. Beware the lockless walkers. */
+		spin_lock_nested(&node->lock, SINGLE_DEPTH_NESTING);
 		list_add_rcu(&dep->signal_link, &node->signalers_list);
 		list_add_rcu(&dep->wait_link, &signal->waiters_list);
+		spin_unlock(&node->lock);
 
 		/* Propagate the chains */
 		node->flags |= signal->flags;
 		ret = true;
 	}
 
-	spin_unlock_irq(&schedule_lock);
+	spin_unlock_irq(&signal->lock);
 
 	return ret;
 }
@@ -469,39 +474,46 @@ int i915_sched_node_add_dependency(struct i915_sched_node *node,
 	return 0;
 }
 
-void i915_sched_node_fini(struct i915_sched_node *node)
+void i915_sched_node_retire(struct i915_sched_node *node)
 {
 	struct i915_dependency *dep, *tmp;
 
-	spin_lock_irq(&schedule_lock);
+	spin_lock_irq(&node->lock);
 
 	/*
 	 * Everyone we depended upon (the fences we wait to be signaled)
 	 * should retire before us and remove themselves from our list.
 	 * However, retirement is run independently on each timeline and
-	 * so we may be called out-of-order.
+	 * so we may be called out-of-order. As we need to avoid taking
+	 * the signaler's lock, just mark up our completion and be wary
+	 * in traversing the signalers->waiters_list.
 	 */
-	list_for_each_entry_safe(dep, tmp, &node->signalers_list, signal_link) {
-		GEM_BUG_ON(!list_empty(&dep->dfs_link));
-
-		list_del_rcu(&dep->wait_link);
-		if (dep->flags & I915_DEPENDENCY_ALLOC)
-			i915_dependency_free(dep);
+	list_for_each_entry(dep, &node->signalers_list, signal_link) {
+		GEM_BUG_ON(dep->waiter != node);
+		WRITE_ONCE(dep->waiter, NULL);
 	}
-	INIT_LIST_HEAD(&node->signalers_list);
+	INIT_LIST_HEAD_RCU(&node->signalers_list);
 
 	/* Remove ourselves from everyone who depends upon us */
 	list_for_each_entry_safe(dep, tmp, &node->waiters_list, wait_link) {
+		struct i915_sched_node *w;
+
 		GEM_BUG_ON(dep->signaler != node);
-		GEM_BUG_ON(!list_empty(&dep->dfs_link));
 
-		list_del_rcu(&dep->signal_link);
+		w = READ_ONCE(dep->waiter);
+		if (w) {
+			spin_lock_nested(&w->lock, SINGLE_DEPTH_NESTING);
+			if (READ_ONCE(dep->waiter))
+				list_del_rcu(&dep->signal_link);
+			spin_unlock(&w->lock);
+		}
+
 		if (dep->flags & I915_DEPENDENCY_ALLOC)
 			i915_dependency_free(dep);
 	}
-	INIT_LIST_HEAD(&node->waiters_list);
+	INIT_LIST_HEAD_RCU(&node->waiters_list);
 
-	spin_unlock_irq(&schedule_lock);
+	spin_unlock_irq(&node->lock);
 }
 
 static void i915_global_scheduler_shrink(void)
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index ccee9acbd101..f9a9d102863b 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -31,7 +31,7 @@ int i915_sched_node_add_dependency(struct i915_sched_node *node,
 				   struct i915_sched_node *signal,
 				   unsigned long flags);
 
-void i915_sched_node_fini(struct i915_sched_node *node);
+void i915_sched_node_retire(struct i915_sched_node *node);
 
 void i915_request_set_priority(struct i915_request *request, int prio);
 
diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
index 343ed44d5ed4..3246430eb1c1 100644
--- a/drivers/gpu/drm/i915/i915_scheduler_types.h
+++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
@@ -60,6 +60,7 @@ struct i915_sched_attr {
  * others.
  */
 struct i915_sched_node {
+	spinlock_t lock; /* protect the lists */
 	struct list_head signalers_list; /* those before us, we depend upon */
 	struct list_head waiters_list; /* those after us, they depend upon us */
 	struct list_head link;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
