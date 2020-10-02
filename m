Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E9228136E
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Oct 2020 15:00:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BA7F6E98A;
	Fri,  2 Oct 2020 12:59:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE4686E973
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Oct 2020 12:59:49 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Oct 2020 14:59:06 +0200
Message-Id: <20201002125939.50817-29-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201002125939.50817-1-maarten.lankhorst@linux.intel.com>
References: <20201002125939.50817-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 28/61] drm/i915: Defer pin calls in buffer pool
 until first use by caller.
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

We need to take the obj lock to pin pages, so wait until the callers
have done so, before making the object unshrinkable.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  2 +
 .../gpu/drm/i915/gem/i915_gem_object_blt.c    |  6 +++
 .../gpu/drm/i915/gt/intel_gt_buffer_pool.c    | 47 +++++++++----------
 .../gpu/drm/i915/gt/intel_gt_buffer_pool.h    |  5 ++
 .../drm/i915/gt/intel_gt_buffer_pool_types.h  |  1 +
 5 files changed, 35 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 46ef71196f7d..7ef52c876cb8 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1338,6 +1338,7 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 		err = PTR_ERR(cmd);
 		goto err_pool;
 	}
+	intel_gt_buffer_pool_mark_used(pool);
 
 	batch = i915_vma_instance(pool->obj, vma->vm, NULL);
 	if (IS_ERR(batch)) {
@@ -2625,6 +2626,7 @@ static int eb_parse(struct i915_execbuffer *eb)
 		err = PTR_ERR(shadow);
 		goto err;
 	}
+	intel_gt_buffer_pool_mark_used(pool);
 	i915_gem_object_set_readonly(shadow->obj);
 	shadow->private = pool;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
index aee7ad3cc3c6..e0b873c3f46a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
@@ -54,6 +54,9 @@ struct i915_vma *intel_emit_vma_fill_blt(struct intel_context *ce,
 	if (unlikely(err))
 		goto out_put;
 
+	/* we pinned the pool, mark it as such */
+	intel_gt_buffer_pool_mark_used(pool);
+
 	cmd = i915_gem_object_pin_map(pool->obj, I915_MAP_WC);
 	if (IS_ERR(cmd)) {
 		err = PTR_ERR(cmd);
@@ -276,6 +279,9 @@ struct i915_vma *intel_emit_vma_copy_blt(struct intel_context *ce,
 	if (unlikely(err))
 		goto out_put;
 
+	/* we pinned the pool, mark it as such */
+	intel_gt_buffer_pool_mark_used(pool);
+
 	cmd = i915_gem_object_pin_map(pool->obj, I915_MAP_WC);
 	if (IS_ERR(cmd)) {
 		err = PTR_ERR(cmd);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
index 104cb30e8c13..030759305196 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
@@ -98,28 +98,6 @@ static void pool_free_work(struct work_struct *wrk)
 				      round_jiffies_up_relative(HZ));
 }
 
-static int pool_active(struct i915_active *ref)
-{
-	struct intel_gt_buffer_pool_node *node =
-		container_of(ref, typeof(*node), active);
-	struct dma_resv *resv = node->obj->base.resv;
-	int err;
-
-	if (dma_resv_trylock(resv)) {
-		dma_resv_add_excl_fence(resv, NULL);
-		dma_resv_unlock(resv);
-	}
-
-	err = i915_gem_object_pin_pages(node->obj);
-	if (err)
-		return err;
-
-	/* Hide this pinned object from the shrinker until retired */
-	i915_gem_object_make_unshrinkable(node->obj);
-
-	return 0;
-}
-
 __i915_active_call
 static void pool_retire(struct i915_active *ref)
 {
@@ -129,10 +107,13 @@ static void pool_retire(struct i915_active *ref)
 	struct list_head *list = bucket_for_size(pool, node->obj->base.size);
 	unsigned long flags;
 
-	i915_gem_object_unpin_pages(node->obj);
+	if (node->pinned) {
+		i915_gem_object_unpin_pages(node->obj);
 
-	/* Return this object to the shrinker pool */
-	i915_gem_object_make_purgeable(node->obj);
+		/* Return this object to the shrinker pool */
+		i915_gem_object_make_purgeable(node->obj);
+		node->pinned = false;
+	}
 
 	GEM_BUG_ON(node->age);
 	spin_lock_irqsave(&pool->lock, flags);
@@ -144,6 +125,19 @@ static void pool_retire(struct i915_active *ref)
 			      round_jiffies_up_relative(HZ));
 }
 
+void intel_gt_buffer_pool_mark_used(struct intel_gt_buffer_pool_node *node)
+{
+	assert_object_held(node->obj);
+
+	if (node->pinned)
+		return;
+
+	__i915_gem_object_pin_pages(node->obj);
+	/* Hide this pinned object from the shrinker until retired */
+	i915_gem_object_make_unshrinkable(node->obj);
+	node->pinned = true;
+}
+
 static struct intel_gt_buffer_pool_node *
 node_create(struct intel_gt_buffer_pool *pool, size_t sz)
 {
@@ -158,7 +152,8 @@ node_create(struct intel_gt_buffer_pool *pool, size_t sz)
 
 	node->age = 0;
 	node->pool = pool;
-	i915_active_init(&node->active, pool_active, pool_retire);
+	node->pinned = false;
+	i915_active_init(&node->active, NULL, pool_retire);
 
 	obj = i915_gem_object_create_internal(gt->i915, sz);
 	if (IS_ERR(obj)) {
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.h b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.h
index 42cbac003e8a..9878ce9a07ab 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.h
@@ -17,10 +17,15 @@ struct i915_request;
 struct intel_gt_buffer_pool_node *
 intel_gt_get_buffer_pool(struct intel_gt *gt, size_t size);
 
+void intel_gt_buffer_pool_mark_used(struct intel_gt_buffer_pool_node *node);
+
 static inline int
 intel_gt_buffer_pool_mark_active(struct intel_gt_buffer_pool_node *node,
 				 struct i915_request *rq)
 {
+	/* did we call mark_used? */
+	GEM_WARN_ON(!node->pinned);
+
 	return i915_active_add_request(&node->active, rq);
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool_types.h b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool_types.h
index bcf1658c9633..0401825e829d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool_types.h
@@ -31,6 +31,7 @@ struct intel_gt_buffer_pool_node {
 		struct rcu_head rcu;
 	};
 	unsigned long age;
+	bool pinned;
 };
 
 #endif /* INTEL_GT_BUFFER_POOL_TYPES_H */
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
