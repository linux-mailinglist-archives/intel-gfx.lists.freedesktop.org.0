Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DEA922CB33
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 18:38:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79B5A6E133;
	Fri, 24 Jul 2020 16:38:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 406C56E117
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jul 2020 16:38:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21921776-1500050 
 for multiple; Fri, 24 Jul 2020 17:37:58 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jul 2020 17:37:57 +0100
Message-Id: <20200724163757.10737-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Delay taking the spinlock for
 grabbing from the buffer pool
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

Some very low hanging fruit, but contention on the pool->lock is
noticeable between intel_gt_get_buffer_pool() and pool_retire(), with
the majority of the hold time due to the locked list iteration. If we
make the node itself RCU protected, we can perform the search for an
suitable node just under RCU, reserving taking the lock itself for
claiming the node and manipulating the list.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gt/intel_gt_buffer_pool.c    | 57 ++++++++++++-------
 .../drm/i915/gt/intel_gt_buffer_pool_types.h  |  7 ++-
 2 files changed, 44 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
index 418ae184cecf..7c688dee982b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
@@ -35,37 +35,46 @@ static void node_free(struct intel_gt_buffer_pool_node *node)
 {
 	i915_gem_object_put(node->obj);
 	i915_active_fini(&node->active);
-	kfree(node);
+	kfree_rcu(node, rcu);
 }
 
 static void pool_free_work(struct work_struct *wrk)
 {
 	struct intel_gt_buffer_pool *pool =
 		container_of(wrk, typeof(*pool), work.work);
-	struct intel_gt_buffer_pool_node *node, *next;
+	struct intel_gt_buffer_pool_node *node, *stale = NULL;
 	unsigned long old = jiffies - HZ;
 	bool active = false;
-	LIST_HEAD(stale);
 	int n;
 
 	/* Free buffers that have not been used in the past second */
-	spin_lock_irq(&pool->lock);
 	for (n = 0; n < ARRAY_SIZE(pool->cache_list); n++) {
 		struct list_head *list = &pool->cache_list[n];
 
-		/* Most recent at head; oldest at tail */
-		list_for_each_entry_safe_reverse(node, next, list, link) {
-			if (time_before(node->age, old))
-				break;
+		if (list_empty(list))
+			continue;
 
-			list_move(&node->link, &stale);
+		/* Most recent at head; oldest at tail */
+		if (spin_trylock_irq(&pool->lock)) {
+			list_for_each_entry_reverse(node, list, link) {
+				if (time_before(node->age, old))
+					break;
+
+				node->age = 0;
+				list_del_rcu(&node->link);
+				node->free = stale;
+				stale = node;
+			}
+			spin_unlock_irq(&pool->lock);
 		}
+
 		active |= !list_empty(list);
 	}
-	spin_unlock_irq(&pool->lock);
 
-	list_for_each_entry_safe(node, next, &stale, link)
+	while ((node = stale)) {
+		stale = stale->free;
 		node_free(node);
+	}
 
 	if (active)
 		schedule_delayed_work(&pool->work,
@@ -110,7 +119,7 @@ static void pool_retire(struct i915_active *ref)
 
 	spin_lock_irqsave(&pool->lock, flags);
 	node->age = jiffies;
-	list_add(&node->link, list);
+	list_add_rcu(&node->link, list);
 	spin_unlock_irqrestore(&pool->lock, flags);
 
 	schedule_delayed_work(&pool->work,
@@ -151,22 +160,32 @@ intel_gt_get_buffer_pool(struct intel_gt *gt, size_t size)
 	struct intel_gt_buffer_pool *pool = &gt->buffer_pool;
 	struct intel_gt_buffer_pool_node *node;
 	struct list_head *list;
-	unsigned long flags;
+	bool found = false;
 	int ret;
 
 	size = PAGE_ALIGN(size);
 	list = bucket_for_size(pool, size);
 
-	spin_lock_irqsave(&pool->lock, flags);
-	list_for_each_entry(node, list, link) {
+	rcu_read_lock();
+	list_for_each_entry_rcu(node, list, link) {
+		unsigned long flags;
+
 		if (node->obj->base.size < size)
 			continue;
-		list_del(&node->link);
-		break;
+
+		spin_lock_irqsave(&pool->lock, flags);
+		if (node->age) {
+			list_del_rcu(&node->link);
+			node->age = 0;
+			found = true;
+		}
+		spin_unlock_irqrestore(&pool->lock, flags);
+		if (found)
+			break;
 	}
-	spin_unlock_irqrestore(&pool->lock, flags);
+	rcu_read_unlock();
 
-	if (&node->link == list) {
+	if (!found) {
 		node = node_create(pool, size);
 		if (IS_ERR(node))
 			return node;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool_types.h b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool_types.h
index e28bdda771ed..d30dc6d32f10 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool_types.h
@@ -25,8 +25,13 @@ struct intel_gt_buffer_pool_node {
 	struct i915_active active;
 	struct drm_i915_gem_object *obj;
 	struct list_head link;
-	struct intel_gt_buffer_pool *pool;
+	union {
+		struct intel_gt_buffer_pool *pool;
+		struct intel_gt_buffer_pool_node *free;
+		struct rcu_head rcu;
+	};
 	unsigned long age;
+
 };
 
 #endif /* INTEL_GT_BUFFER_POOL_TYPES_H */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
