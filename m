Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 894D0220C6B
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 13:53:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29DD96EB16;
	Wed, 15 Jul 2020 11:53:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 639806EADA
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 11:52:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21826113-1500050 
 for multiple; Wed, 15 Jul 2020 12:51:50 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jul 2020 12:50:48 +0100
Message-Id: <20200715115147.11866-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200715115147.11866-1-chris@chris-wilson.co.uk>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/66] drm/i915: Keep the most recently used
 active-fence upon discard
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

Whenever an i915_active idles, we prune its tree of old fence slots to
prevent a gradual leak should it be used to track many, many timelines.
The downside is that we then have to frequently reallocate the rbtree.
A compromise is that we keep the most recently used fence slot, and
reuse that for the next active reference as that is the most likely
timeline to be reused.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_active.c | 27 ++++++++++++++++++++-------
 drivers/gpu/drm/i915/i915_active.h |  4 ----
 2 files changed, 20 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index 799282fb1bb9..0854b1552bc1 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -130,8 +130,8 @@ static inline void debug_active_assert(struct i915_active *ref) { }
 static void
 __active_retire(struct i915_active *ref)
 {
+	struct rb_root root = RB_ROOT;
 	struct active_node *it, *n;
-	struct rb_root root;
 	unsigned long flags;
 
 	GEM_BUG_ON(i915_active_is_idle(ref));
@@ -143,9 +143,21 @@ __active_retire(struct i915_active *ref)
 	GEM_BUG_ON(rcu_access_pointer(ref->excl.fence));
 	debug_active_deactivate(ref);
 
-	root = ref->tree;
-	ref->tree = RB_ROOT;
-	ref->cache = NULL;
+	/* Even if we have not used the cache, we may still have a barrier */
+	if (!ref->cache)
+		ref->cache = fetch_node(ref->tree.rb_node);
+
+	/* Keep the MRU cached node for reuse */
+	if (ref->cache) {
+		/* Discard all other nodes in the tree */
+		rb_erase(&ref->cache->node, &ref->tree);
+		root = ref->tree;
+
+		/* Rebuild the tree with only the cached node */
+		rb_link_node(&ref->cache->node, NULL, &ref->tree.rb_node);
+		rb_insert_color(&ref->cache->node, &ref->tree);
+		GEM_BUG_ON(ref->tree.rb_node != &ref->cache->node);
+	}
 
 	spin_unlock_irqrestore(&ref->tree_lock, flags);
 
@@ -156,6 +168,7 @@ __active_retire(struct i915_active *ref)
 	/* ... except if you wait on it, you must manage your own references! */
 	wake_up_var(ref);
 
+	/* Finally free the discarded timeline tree  */
 	rbtree_postorder_for_each_entry_safe(it, n, &root, node) {
 		GEM_BUG_ON(i915_active_fence_isset(&it->base));
 		kmem_cache_free(global.slab_cache, it);
@@ -750,16 +763,16 @@ int i915_sw_fence_await_active(struct i915_sw_fence *fence,
 	return await_active(ref, flags, sw_await_fence, fence, fence);
 }
 
-#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM)
 void i915_active_fini(struct i915_active *ref)
 {
 	debug_active_fini(ref);
 	GEM_BUG_ON(atomic_read(&ref->count));
 	GEM_BUG_ON(work_pending(&ref->work));
-	GEM_BUG_ON(!RB_EMPTY_ROOT(&ref->tree));
 	mutex_destroy(&ref->mutex);
+
+	if (ref->cache)
+		kmem_cache_free(global.slab_cache, ref->cache);
 }
-#endif
 
 static inline bool is_idle_barrier(struct active_node *node, u64 idx)
 {
diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
index 73ded3c52a04..b9e0394e2975 100644
--- a/drivers/gpu/drm/i915/i915_active.h
+++ b/drivers/gpu/drm/i915/i915_active.h
@@ -217,11 +217,7 @@ i915_active_is_idle(const struct i915_active *ref)
 	return !atomic_read(&ref->count);
 }
 
-#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM)
 void i915_active_fini(struct i915_active *ref);
-#else
-static inline void i915_active_fini(struct i915_active *ref) { }
-#endif
 
 int i915_active_acquire_preallocate_barrier(struct i915_active *ref,
 					    struct intel_engine_cs *engine);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
