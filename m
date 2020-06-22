Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0935D20341D
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 11:59:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 314056E21F;
	Mon, 22 Jun 2020 09:59:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2A5A6E21F
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 09:59:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21574662-1500050 
 for multiple; Mon, 22 Jun 2020 10:59:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Jun 2020 10:59:17 +0100
Message-Id: <20200622095921.15530-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200622095921.15530-1-chris@chris-wilson.co.uk>
References: <20200622095921.15530-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/7] drm/i915/gem: Track the fences for object
 allocations
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

While often the allocation fence is a part of the implicit fences used
for accessing the object, we also want to identify the pages allocation
fence individually as different stages of the pipeline will want to only
be queued for the pages.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.c    | 23 +++++++++
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  2 +
 drivers/gpu/drm/i915/gem/i915_gem_pages.c     | 50 ++++++++++++++++---
 drivers/gpu/drm/i915/i915_active.c            | 18 +++++++
 drivers/gpu/drm/i915/i915_active.h            |  7 +++
 5 files changed, 93 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 37b3fb0eb943..b7fc0da239f5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -26,6 +26,7 @@
 
 #include "display/intel_frontbuffer.h"
 #include "gt/intel_gt.h"
+#include "i915_active.h"
 #include "i915_drv.h"
 #include "i915_gem_clflush.h"
 #include "i915_gem_context.h"
@@ -49,6 +50,24 @@ void i915_gem_object_free(struct drm_i915_gem_object *obj)
 	return kmem_cache_free(global.slab_objects, obj);
 }
 
+static int i915_mm_active(struct i915_active *ref)
+{
+	struct drm_i915_gem_object *obj =
+		container_of(ref, typeof(*obj), mm.active);
+
+	i915_gem_object_get(obj);
+	return 0;
+}
+
+__i915_active_call
+static void i915_mm_retire(struct i915_active *ref)
+{
+	struct drm_i915_gem_object *obj =
+		container_of(ref, typeof(*obj), mm.active);
+
+	i915_gem_object_put(obj);
+}
+
 void i915_gem_object_init(struct drm_i915_gem_object *obj,
 			  const struct drm_i915_gem_object_ops *ops,
 			  struct lock_class_key *key)
@@ -70,6 +89,8 @@ void i915_gem_object_init(struct drm_i915_gem_object *obj,
 	obj->mm.madv = I915_MADV_WILLNEED;
 	INIT_RADIX_TREE(&obj->mm.get_page.radix, GFP_KERNEL | __GFP_NOWARN);
 	mutex_init(&obj->mm.get_page.lock);
+
+	i915_active_init(&obj->mm.active, i915_mm_active, i915_mm_retire);
 }
 
 /**
@@ -149,6 +170,8 @@ static void __i915_gem_free_object_rcu(struct rcu_head *head)
 		container_of(head, typeof(*obj), rcu);
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 
+	i915_active_fini(&obj->mm.active);
+
 	dma_resv_fini(&obj->base._resv);
 	i915_gem_object_free(obj);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index dbb33aac7828..668b249fd109 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -189,6 +189,8 @@ struct drm_i915_gem_object {
 		atomic_t pages_pin_count;
 		atomic_t shrink_pin;
 
+		struct i915_active active;
+
 		/**
 		 * Memory region for this object.
 		 */
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 2ff1036ef91f..d0cdf1c93a67 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -81,25 +81,59 @@ void __i915_gem_object_set_pages(struct drm_i915_gem_object *obj,
 	}
 }
 
-int ____i915_gem_object_get_pages(struct drm_i915_gem_object *obj)
+static int __i915_gem_object_wait_for_pages(struct drm_i915_gem_object *obj)
+{
+	int err;
+
+	err = i915_active_wait_for_exclusive(&obj->mm.active);
+	if (err)
+		return err;
+
+	if (IS_ERR(obj->mm.pages))
+		return PTR_ERR(obj->mm.pages);
+
+	return 0;
+}
+
+static int ____i915_gem_object_get_pages_async(struct drm_i915_gem_object *obj)
 {
-	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	int err;
 
 	assert_object_held(obj);
 
+	if (i915_active_has_exclusive(&obj->mm.active))
+		return 0;
+
+	if (i915_gem_object_has_pages(obj))
+		return PTR_ERR_OR_ZERO(obj->mm.pages);
+
 	if (unlikely(obj->mm.madv != I915_MADV_WILLNEED)) {
-		drm_dbg(&i915->drm,
+		drm_dbg(obj->base.dev,
 			"Attempting to obtain a purgeable object\n");
 		return -EFAULT;
 	}
 
+	err = i915_active_acquire(&obj->mm.active);
+	if (err)
+		return err;
+
 	err = obj->ops->get_pages(obj);
-	GEM_BUG_ON(!err && !i915_gem_object_has_pages(obj));
+	i915_active_release(&obj->mm.active);
 
 	return err;
 }
 
+int ____i915_gem_object_get_pages(struct drm_i915_gem_object *obj)
+{
+	int err;
+
+	err = ____i915_gem_object_get_pages_async(obj);
+	if (err)
+		return err;
+
+	return __i915_gem_object_wait_for_pages(obj);
+}
+
 /* Ensure that the associated pages are gathered from the backing storage
  * and pinned into our object. i915_gem_object_pin_pages() may be called
  * multiple times before they are released by a single call to
@@ -203,14 +237,16 @@ __i915_gem_object_unset_pages(struct drm_i915_gem_object *obj)
 int __i915_gem_object_put_pages(struct drm_i915_gem_object *obj)
 {
 	struct sg_table *pages;
+	int err;
 
 	/* May be called by shrinker from within get_pages() (on another bo) */
 	assert_object_held(obj);
 
-	if (i915_gem_object_has_pinned_pages(obj))
-		return -EBUSY;
+	err = i915_active_wait(&obj->mm.active);
+	if (err)
+		return err;
 
-	if (unlikely(atomic_read(&obj->mm.pages_pin_count)))
+	if (i915_gem_object_has_pinned_pages(obj))
 		return -EBUSY;
 
 	i915_gem_object_release_mmap_offset(obj);
diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index 3f595446fd44..886685d6e1e2 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -1073,6 +1073,24 @@ int i915_active_fence_set(struct i915_active_fence *active,
 	return err;
 }
 
+int i915_active_fence_wait(struct i915_active_fence *active)
+{
+	struct dma_fence *fence;
+	int err;
+
+	if (GEM_WARN_ON(is_barrier(active)))
+		return -EBUSY;
+
+	fence = i915_active_fence_get(active);
+	if (!fence)
+		return 0;
+
+	err = dma_fence_wait(fence, true);
+	dma_fence_put(fence);
+
+	return err;
+}
+
 void i915_active_noop(struct dma_fence *fence, struct dma_fence_cb *cb)
 {
 	active_fence_cb(fence, cb);
diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
index 2e0bcb3289ec..eefcc2344509 100644
--- a/drivers/gpu/drm/i915/i915_active.h
+++ b/drivers/gpu/drm/i915/i915_active.h
@@ -123,6 +123,8 @@ i915_active_fence_isset(const struct i915_active_fence *active)
 	return rcu_access_pointer(active->fence);
 }
 
+int i915_active_fence_wait(struct i915_active_fence *active);
+
 /*
  * GPU activity tracking
  *
@@ -191,6 +193,11 @@ static inline int i915_active_wait(struct i915_active *ref)
 	return __i915_active_wait(ref, TASK_INTERRUPTIBLE);
 }
 
+static inline int i915_active_wait_for_exclusive(struct i915_active *ref)
+{
+	return i915_active_fence_wait(&ref->excl);
+}
+
 int i915_sw_fence_await_active(struct i915_sw_fence *fence,
 			       struct i915_active *ref,
 			       unsigned int flags);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
