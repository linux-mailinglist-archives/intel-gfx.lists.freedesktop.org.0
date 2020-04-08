Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF451A1F29
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 12:48:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92C946EA24;
	Wed,  8 Apr 2020 10:48:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5E316EA20
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 10:48:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20837633-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Apr 2020 11:48:13 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Apr 2020 11:48:09 +0100
Message-Id: <20200408104812.22386-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200408104812.22386-1-chris@chris-wilson.co.uk>
References: <20200408104812.22386-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 6/9] drm/i915: Export a preallocate variant of
 i915_active_acquire()
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

Sometimes we have to be very careful not to allocate underneath a mutex
(or spinlock) and yet still want to track activity. Enter
i915_active_acquire_for_context(). This raises the activity counter on
i915_active prior to use and ensures that the fence-tree contains a slot
for the context.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_active.c | 107 ++++++++++++++++++++++++++---
 drivers/gpu/drm/i915/i915_active.h |   5 ++
 2 files changed, 103 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index d960d0be5bd2..71ad0d452680 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -217,11 +217,10 @@ excl_retire(struct dma_fence *fence, struct dma_fence_cb *cb)
 }
 
 static struct i915_active_fence *
-active_instance(struct i915_active *ref, struct intel_timeline *tl)
+active_instance(struct i915_active *ref, u64 idx)
 {
 	struct active_node *node, *prealloc;
 	struct rb_node **p, *parent;
-	u64 idx = tl->fence_context;
 
 	/*
 	 * We track the most recently used timeline to skip a rbtree search
@@ -367,7 +366,7 @@ int i915_active_ref(struct i915_active *ref,
 	if (err)
 		return err;
 
-	active = active_instance(ref, tl);
+	active = active_instance(ref, tl->fence_context);
 	if (!active) {
 		err = -ENOMEM;
 		goto out;
@@ -384,32 +383,104 @@ int i915_active_ref(struct i915_active *ref,
 		atomic_dec(&ref->count);
 	}
 	if (!__i915_active_fence_set(active, fence))
-		atomic_inc(&ref->count);
+		__i915_active_acquire(ref);
 
 out:
 	i915_active_release(ref);
 	return err;
 }
 
-struct dma_fence *
-i915_active_set_exclusive(struct i915_active *ref, struct dma_fence *f)
+static struct dma_fence *
+__i915_active_set_fence(struct i915_active *ref,
+			struct i915_active_fence *active,
+			struct dma_fence *fence)
 {
 	struct dma_fence *prev;
 
 	/* We expect the caller to manage the exclusive timeline ordering */
 	GEM_BUG_ON(i915_active_is_idle(ref));
 
+	if (is_barrier(active)) { /* proto-node used by our idle barrier */
+		/*
+		 * This request is on the kernel_context timeline, and so
+		 * we can use it to substitute for the pending idle-barrer
+		 * request that we want to emit on the kernel_context.
+		 */
+		__active_del_barrier(ref, node_from_active(active));
+		RCU_INIT_POINTER(active->fence, NULL);
+		atomic_dec(&ref->count);
+	}
+
 	rcu_read_lock();
-	prev = __i915_active_fence_set(&ref->excl, f);
+	prev = __i915_active_fence_set(active, fence);
 	if (prev)
 		prev = dma_fence_get_rcu(prev);
 	else
-		atomic_inc(&ref->count);
+		__i915_active_acquire(ref);
 	rcu_read_unlock();
 
 	return prev;
 }
 
+static struct i915_active_fence *
+__active_lookup(struct i915_active *ref, u64 idx)
+{
+	struct active_node *node;
+	struct rb_node *p;
+
+	/* Like active_instance() but with no malloc */
+
+	node = READ_ONCE(ref->cache);
+	if (node && node->timeline == idx)
+		return &node->base;
+
+	spin_lock_irq(&ref->tree_lock);
+	GEM_BUG_ON(i915_active_is_idle(ref));
+
+	p = ref->tree.rb_node;
+	while (p) {
+		node = rb_entry(p, struct active_node, node);
+		if (node->timeline == idx) {
+			ref->cache = node;
+			spin_unlock_irq(&ref->tree_lock);
+			return &node->base;
+		}
+
+		if (node->timeline < idx)
+			p = p->rb_right;
+		else
+			p = p->rb_left;
+	}
+
+	spin_unlock_irq(&ref->tree_lock);
+
+	return NULL;
+}
+
+struct dma_fence *
+__i915_active_ref(struct i915_active *ref, u64 idx, struct dma_fence *fence)
+{
+	struct dma_fence *prev = ERR_PTR(-ENOENT);
+	struct i915_active_fence *active;
+
+	if (!i915_active_acquire_if_busy(ref))
+		return ERR_PTR(-EINVAL);
+
+	active = __active_lookup(ref, idx);
+	if (active)
+		prev = __i915_active_set_fence(ref, active, fence);
+
+	i915_active_release(ref);
+	return prev;
+}
+
+struct dma_fence *
+i915_active_set_exclusive(struct i915_active *ref, struct dma_fence *f)
+{
+	/* We expect the caller to manage the exclusive timeline ordering */
+	return __i915_active_set_fence(ref, &ref->excl, f);
+}
+
 bool i915_active_acquire_if_busy(struct i915_active *ref)
 {
 	debug_active_assert(ref);
@@ -443,6 +514,24 @@ int i915_active_acquire(struct i915_active *ref)
 	return err;
 }
 
+int i915_active_acquire_for_context(struct i915_active *ref, u64 idx)
+{
+	struct i915_active_fence *active;
+	int err;
+
+	err = i915_active_acquire(ref);
+	if (err)
+		return err;
+
+	active = active_instance(ref, idx);
+	if (!active) {
+		i915_active_release(ref);
+		return -ENOMEM;
+	}
+
+	return 0; /* return with active ref */
+}
+
 void i915_active_release(struct i915_active *ref)
 {
 	debug_active_assert(ref);
@@ -804,7 +893,7 @@ int i915_active_acquire_preallocate_barrier(struct i915_active *ref,
 			 */
 			RCU_INIT_POINTER(node->base.fence, ERR_PTR(-EAGAIN));
 			node->base.cb.node.prev = (void *)engine;
-			atomic_inc(&ref->count);
+			__i915_active_acquire(ref);
 		}
 		GEM_BUG_ON(rcu_access_pointer(node->base.fence) != ERR_PTR(-EAGAIN));
 
diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
index cf4058150966..042502abefe5 100644
--- a/drivers/gpu/drm/i915/i915_active.h
+++ b/drivers/gpu/drm/i915/i915_active.h
@@ -163,6 +163,9 @@ void __i915_active_init(struct i915_active *ref,
 	__i915_active_init(ref, active, retire, &__mkey, &__wkey);	\
 } while (0)
 
+struct dma_fence *
+__i915_active_ref(struct i915_active *ref, u64 idx, struct dma_fence *fence);
+
 int i915_active_ref(struct i915_active *ref,
 		    struct intel_timeline *tl,
 		    struct dma_fence *fence);
@@ -198,7 +201,9 @@ int i915_request_await_active(struct i915_request *rq,
 #define I915_ACTIVE_AWAIT_BARRIER BIT(2)
 
 int i915_active_acquire(struct i915_active *ref);
+int i915_active_acquire_for_context(struct i915_active *ref, u64 idx);
 bool i915_active_acquire_if_busy(struct i915_active *ref);
+
 void i915_active_release(struct i915_active *ref);
 
 static inline void __i915_active_acquire(struct i915_active *ref)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
