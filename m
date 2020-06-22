Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A4120341F
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 11:59:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 719F46E241;
	Mon, 22 Jun 2020 09:59:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C75D6E241
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 09:59:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21574663-1500050 
 for multiple; Mon, 22 Jun 2020 10:59:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Jun 2020 10:59:18 +0100
Message-Id: <20200622095921.15530-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200622095921.15530-1-chris@chris-wilson.co.uk>
References: <20200622095921.15530-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/7] drm/i915: Update vma to use async page
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

Since we have asynchronous vma bindings, we are ready to utilise
asynchronous page allocations. All we have to do is ask for the
get_pages not to wait on our behalf, as our workqueue will.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  2 +
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_pages.c     |  2 +-
 drivers/gpu/drm/i915/i915_vma.c               | 42 +++++++++----------
 drivers/gpu/drm/i915/i915_vma_types.h         |  1 +
 5 files changed, 25 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 678e7f82f6c9..59750edd617f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -699,6 +699,8 @@ static int set_bind_fence(struct i915_vma *vma, struct eb_vm_work *work)
 
 	lockdep_assert_held(&vma->vm->mutex);
 	prev = i915_active_set_exclusive(&vma->active, &work->base.dma);
+	if (!prev)
+		prev = i915_active_fence_get(&vma->obj->mm.active.excl);
 	if (unlikely(prev)) {
 		err = i915_sw_fence_await_dma_fence(&work->base.chain, prev, 0,
 						    GFP_NOWAIT | __GFP_NOWARN);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 03a1b859aeef..3bb0939dce99 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -275,6 +275,7 @@ void __i915_gem_object_set_pages(struct drm_i915_gem_object *obj,
 				 struct sg_table *pages,
 				 unsigned int sg_page_sizes);
 
+int ____i915_gem_object_get_pages_async(struct drm_i915_gem_object *obj);
 int ____i915_gem_object_get_pages(struct drm_i915_gem_object *obj);
 int __i915_gem_object_get_pages(struct drm_i915_gem_object *obj);
 int __i915_gem_object_get_pages_locked(struct drm_i915_gem_object *obj);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index d0cdf1c93a67..4efd1aeedc2d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -95,7 +95,7 @@ static int __i915_gem_object_wait_for_pages(struct drm_i915_gem_object *obj)
 	return 0;
 }
 
-static int ____i915_gem_object_get_pages_async(struct drm_i915_gem_object *obj)
+int ____i915_gem_object_get_pages_async(struct drm_i915_gem_object *obj)
 {
 	int err;
 
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index dc656c7d3191..dc8fdb656e8b 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -123,6 +123,7 @@ vma_create(struct drm_i915_gem_object *obj,
 	vma->display_alignment = I915_GTT_MIN_ALIGNMENT;
 
 	i915_active_init(&vma->active, __i915_vma_active, __i915_vma_retire);
+	vma->fence_context = dma_fence_context_alloc(1);
 
 	/* Declare ourselves safe for use inside shrinkers */
 	if (IS_ENABLED(CONFIG_LOCKDEP)) {
@@ -295,7 +296,6 @@ i915_vma_instance(struct drm_i915_gem_object *obj,
 struct i915_vma_work {
 	struct dma_fence_work base;
 	struct i915_vma *vma;
-	struct drm_i915_gem_object *pinned;
 	struct i915_sw_dma_fence_cb cb;
 	enum i915_cache_level cache_level;
 	unsigned int flags;
@@ -331,9 +331,6 @@ static int __vma_bind(struct dma_fence_work *work)
 static void __vma_release(struct dma_fence_work *work)
 {
 	struct i915_vma_work *vw = container_of(work, typeof(*vw), base);
-
-	if (vw->pinned)
-		__i915_gem_object_unpin_pages(vw->pinned);
 }
 
 static const struct dma_fence_work_ops bind_ops = {
@@ -444,6 +441,8 @@ int i915_vma_bind(struct i915_vma *vma,
 	 * execution and not content or object's backing store lifetime.
 	 */
 	prev = i915_active_set_exclusive(&vma->active, &work->base.dma);
+	if (!prev && vma->obj)
+		prev = i915_active_fence_get(&vma->obj->mm.active.excl);
 	if (prev) {
 		__i915_sw_fence_await_dma_fence(&work->base.chain,
 						prev,
@@ -453,11 +452,6 @@ int i915_vma_bind(struct i915_vma *vma,
 
 	work->base.dma.error = 0; /* enable the queue_work() */
 
-	if (vma->obj) {
-		__i915_gem_object_pin_pages(vma->obj);
-		work->pinned = vma->obj;
-	}
-
 	atomic_or(bind_flags, &vma->flags);
 	return 0;
 }
@@ -826,20 +820,27 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 	if (try_qad_pin(vma, flags & I915_VMA_BIND_MASK))
 		return 0;
 
-	if (vma->obj) {
-		err = i915_gem_object_pin_pages(vma->obj);
-		if (err)
-			return err;
-	}
-
 	err = __wait_for_unbind(vma, flags);
 	if (err)
-		goto err_pages;
+		return err;
 
 	work = i915_vma_work();
-	if (!work) {
-		err = -ENOMEM;
-		goto err_pages;
+	if (!work)
+		return -ENOMEM;
+
+	if (vma->obj) {
+		if (dma_resv_lock_interruptible(vma->resv, NULL))
+			return -EINTR;
+
+		err = ____i915_gem_object_get_pages_async(vma->obj);
+		if (err == 0) {
+			err = i915_active_ref(&vma->obj->mm.active,
+					      vma->fence_context,
+					      &work->base.dma);
+		}
+		dma_resv_unlock(vma->resv);
+		if (err)
+			return err;
 	}
 
 	if (flags & PIN_GLOBAL)
@@ -934,9 +935,6 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 	dma_fence_work_commit_imm(&work->base);
 	if (wakeref)
 		intel_runtime_pm_put(&vma->vm->i915->runtime_pm, wakeref);
-err_pages:
-	if (vma->obj)
-		i915_gem_object_unpin_pages(vma->obj);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
index 02c1640bb034..10757319c2a4 100644
--- a/drivers/gpu/drm/i915/i915_vma_types.h
+++ b/drivers/gpu/drm/i915/i915_vma_types.h
@@ -250,6 +250,7 @@ struct i915_vma {
 #define I915_VMA_GGTT_WRITE	((int)BIT(I915_VMA_GGTT_WRITE_BIT))
 
 	struct i915_active active;
+	u64 fence_context;
 
 	/**
 	 * Support different GGTT views into the same object.
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
