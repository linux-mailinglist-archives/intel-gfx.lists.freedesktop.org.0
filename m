Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F115E304D50
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 00:21:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DA5888FD4;
	Tue, 26 Jan 2021 23:21:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDB166E48F
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 23:21:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23708646-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 23:21:36 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jan 2021 23:21:38 +0000
Message-Id: <20210126232138.30167-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915: Teach the i915_dependency to use a
 double-lock
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

Currently, we construct and teardown the i915_dependency chains using a
global spinlock. As the lists are entirely local, it should be possible
to use an double-lock with an explicit nesting [signaler -> waiter,
always] and so avoid the costly convenience of a global spinlock.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_request.c         |  2 +-
 drivers/gpu/drm/i915/i915_scheduler.c       | 65 +++++++++++++--------
 drivers/gpu/drm/i915/i915_scheduler.h       |  2 +-
 drivers/gpu/drm/i915/i915_scheduler_types.h |  2 +
 4 files changed, 46 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 22e39d938f17..d66981b083cd 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -330,7 +330,7 @@ bool i915_request_retire(struct i915_request *rq)
 	intel_context_unpin(rq->context);
 
 	free_capture_list(rq);
-	i915_sched_node_fini(&rq->sched);
+	i915_sched_node_retire(&rq->sched);
 	i915_request_put(rq);
 
 	return true;
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index efa638c3acc7..11f5a11418f6 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -19,6 +19,17 @@ static struct i915_global_scheduler {
 
 static DEFINE_SPINLOCK(schedule_lock);
 
+static struct i915_sched_node *node_get(struct i915_sched_node *node)
+{
+	i915_request_get(container_of(node, struct i915_request, sched));
+	return node;
+}
+
+static void node_put(struct i915_sched_node *node)
+{
+	i915_request_put(container_of(node, struct i915_request, sched));
+}
+
 static const struct i915_request *
 node_to_request(const struct i915_sched_node *node)
 {
@@ -350,6 +361,8 @@ void i915_schedule(struct i915_request *rq, const struct i915_sched_attr *attr)
 
 void i915_sched_node_init(struct i915_sched_node *node)
 {
+	spin_lock_init(&node->lock);
+
 	INIT_LIST_HEAD(&node->signalers_list);
 	INIT_LIST_HEAD(&node->waiters_list);
 	INIT_LIST_HEAD(&node->link);
@@ -374,10 +387,17 @@ i915_dependency_alloc(void)
 	return kmem_cache_alloc(global.slab_dependencies, GFP_KERNEL);
 }
 
+static void
+rcu_dependency_free(struct rcu_head *rcu)
+{
+	kmem_cache_free(global.slab_dependencies,
+			container_of(rcu, typeof(struct i915_dependency), rcu));
+}
+
 static void
 i915_dependency_free(struct i915_dependency *dep)
 {
-	kmem_cache_free(global.slab_dependencies, dep);
+	call_rcu(&dep->rcu, rcu_dependency_free);
 }
 
 bool __i915_sched_node_add_dependency(struct i915_sched_node *node,
@@ -387,24 +407,27 @@ bool __i915_sched_node_add_dependency(struct i915_sched_node *node,
 {
 	bool ret = false;
 
-	spin_lock_irq(&schedule_lock);
+	/* The signal->lock is always the outer lock in this double-lock. */
+	spin_lock(&signal->lock);
 
 	if (!node_signaled(signal)) {
 		INIT_LIST_HEAD(&dep->dfs_link);
 		dep->signaler = signal;
-		dep->waiter = node;
+		dep->waiter = node_get(node);
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
+	spin_unlock(&signal->lock);
 
 	return ret;
 }
@@ -426,39 +449,36 @@ int i915_sched_node_add_dependency(struct i915_sched_node *node,
 	return 0;
 }
 
-void i915_sched_node_fini(struct i915_sched_node *node)
+void i915_sched_node_retire(struct i915_sched_node *node)
 {
 	struct i915_dependency *dep, *tmp;
 
-	spin_lock_irq(&schedule_lock);
-
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
-	}
-	INIT_LIST_HEAD(&node->signalers_list);
 
 	/* Remove ourselves from everyone who depends upon us */
+	spin_lock(&node->lock);
 	list_for_each_entry_safe(dep, tmp, &node->waiters_list, wait_link) {
-		GEM_BUG_ON(dep->signaler != node);
-		GEM_BUG_ON(!list_empty(&dep->dfs_link));
+		struct i915_sched_node *w = dep->waiter;
 
+		GEM_BUG_ON(dep->signaler != node);
+
+		spin_lock_nested(&w->lock, SINGLE_DEPTH_NESTING);
 		list_del_rcu(&dep->signal_link);
+		spin_unlock(&w->lock);
+		node_put(w);
+
 		if (dep->flags & I915_DEPENDENCY_ALLOC)
 			i915_dependency_free(dep);
 	}
-	INIT_LIST_HEAD(&node->waiters_list);
-
-	spin_unlock_irq(&schedule_lock);
+	INIT_LIST_HEAD_RCU(&node->waiters_list);
+	spin_unlock(&node->lock);
 }
 
 void i915_request_show_with_schedule(struct drm_printer *m,
@@ -509,8 +529,7 @@ static struct i915_global_scheduler global = { {
 int __init i915_global_scheduler_init(void)
 {
 	global.slab_dependencies = KMEM_CACHE(i915_dependency,
-					      SLAB_HWCACHE_ALIGN |
-					      SLAB_TYPESAFE_BY_RCU);
+					      SLAB_HWCACHE_ALIGN);
 	if (!global.slab_dependencies)
 		return -ENOMEM;
 
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index 858a0938f47a..8c5ed6fe0994 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -33,7 +33,7 @@ int i915_sched_node_add_dependency(struct i915_sched_node *node,
 				   struct i915_sched_node *signal,
 				   unsigned long flags);
 
-void i915_sched_node_fini(struct i915_sched_node *node);
+void i915_sched_node_retire(struct i915_sched_node *node);
 
 void i915_schedule(struct i915_request *request,
 		   const struct i915_sched_attr *attr);
diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
index 343ed44d5ed4..623bf41fcf35 100644
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
@@ -75,6 +76,7 @@ struct i915_dependency {
 	struct list_head signal_link;
 	struct list_head wait_link;
 	struct list_head dfs_link;
+	struct rcu_head rcu;
 	unsigned long flags;
 #define I915_DEPENDENCY_ALLOC		BIT(0)
 #define I915_DEPENDENCY_EXTERNAL	BIT(1)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
