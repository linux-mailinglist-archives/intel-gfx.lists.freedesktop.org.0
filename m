Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19ECA210687
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 10:41:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 507A06E852;
	Wed,  1 Jul 2020 08:41:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 889F36E44B
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 08:41:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21671948-1500050 
 for multiple; Wed, 01 Jul 2020 09:41:02 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jul 2020 09:40:40 +0100
Message-Id: <20200701084053.6086-20-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200701084053.6086-1-chris@chris-wilson.co.uk>
References: <20200701084053.6086-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 20/33] drm/i915: Teach the i915_dependency to
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
index 94fd214c91c8..4bfbfafa94c7 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1852,7 +1852,7 @@ static void defer_request(struct i915_request *rq, struct list_head * const pl)
 			struct i915_request *w =
 				container_of(p->waiter, typeof(*w), sched);
 
-			if (p->flags & I915_DEPENDENCY_WEAK)
+			if (!p->waiter || p->flags & I915_DEPENDENCY_WEAK)
 				continue;
 
 			/* Leave semaphores spinning on the other engines */
@@ -2697,7 +2697,7 @@ static void __execlists_hold(struct i915_request *rq)
 			struct i915_request *w =
 				container_of(p->waiter, typeof(*w), sched);
 
-			if (p->flags & I915_DEPENDENCY_WEAK)
+			if (!p->waiter || p->flags & I915_DEPENDENCY_WEAK)
 				continue;
 
 			/* Leave semaphores spinning on the other engines */
@@ -2795,7 +2795,7 @@ static void __execlists_unhold(struct i915_request *rq)
 			struct i915_request *w =
 				container_of(p->waiter, typeof(*w), sched);
 
-			if (p->flags & I915_DEPENDENCY_WEAK)
+			if (!p->waiter || p->flags & I915_DEPENDENCY_WEAK)
 				continue;
 
 			/* Propagate any change in error status */
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 295c0c63039e..8a9399608cf2 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -337,7 +337,7 @@ bool i915_request_retire(struct i915_request *rq)
 	intel_context_unpin(rq->context);
 
 	free_capture_list(rq);
-	i915_sched_node_fini(&rq->sched);
+	i915_sched_node_retire(&rq->sched);
 	i915_request_put(rq);
 
 	return true;
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 9f744f470556..2e4d512e61d8 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -353,6 +353,8 @@ void i915_request_set_priority(struct i915_request *rq, int prio)
 
 void i915_sched_node_init(struct i915_sched_node *node)
 {
+	spin_lock_init(&node->lock);
+
 	INIT_LIST_HEAD(&node->signalers_list);
 	INIT_LIST_HEAD(&node->waiters_list);
 	INIT_LIST_HEAD(&node->link);
@@ -390,7 +392,8 @@ bool __i915_sched_node_add_dependency(struct i915_sched_node *node,
 {
 	bool ret = false;
 
-	spin_lock_irq(&schedule_lock);
+	/* The signal->lock is always the outer lock in this double-lock. */
+	spin_lock_irq(&signal->lock);
 
 	if (!node_signaled(signal)) {
 		INIT_LIST_HEAD(&dep->dfs_link);
@@ -399,15 +402,17 @@ bool __i915_sched_node_add_dependency(struct i915_sched_node *node,
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
@@ -433,39 +438,46 @@ int i915_sched_node_add_dependency(struct i915_sched_node *node,
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
index c30bf8af045d..53ac819cc786 100644
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
