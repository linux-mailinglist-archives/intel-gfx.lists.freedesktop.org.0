Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 980EA203420
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 11:59:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A70216E24B;
	Mon, 22 Jun 2020 09:59:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F04DA6E22A
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 09:59:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21574664-1500050 
 for multiple; Mon, 22 Jun 2020 10:59:28 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Jun 2020 10:59:19 +0100
Message-Id: <20200622095921.15530-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200622095921.15530-1-chris@chris-wilson.co.uk>
References: <20200622095921.15530-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/7] drm/i915/gem: Convert the userptr-worker to
 use a fence
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

Now that we have fence tracking in place for object allocations, we can
remove the haphazard polling over a workqueue used for asynchronous
userptr allocations. All consumers will now wait for the fence
notification instead of leaking EAGAIN back to userspace.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |   5 -
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |   1 -
 drivers/gpu/drm/i915/gem/i915_gem_pages.c     |   6 +-
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c   | 136 ++++++++----------
 drivers/gpu/drm/i915/i915_drv.h               |   9 +-
 drivers/gpu/drm/i915/i915_gem.c               |   4 +-
 6 files changed, 66 insertions(+), 95 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 59750edd617f..60926209b1fc 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1456,11 +1456,6 @@ static int eb_reserve(struct i915_execbuffer *eb)
 		if (signal_pending(current))
 			return -EINTR;
 
-		if (err == -EAGAIN) {
-			flush_workqueue(eb->i915->mm.userptr_wq);
-			continue;
-		}
-
 		/* Now safe to wait with no reservations held */
 		list_for_each_entry(ev, &eb->unbound, bind_link) {
 			struct i915_vma *vma = ev->vma;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index 668b249fd109..17a47186ba81 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -278,7 +278,6 @@ struct drm_i915_gem_object {
 
 			struct i915_mm_struct *mm;
 			struct i915_mmu_object *mmu_object;
-			struct work_struct *work;
 		} userptr;
 
 		unsigned long scratch;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 4efd1aeedc2d..99f50c9d0ed6 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -18,8 +18,6 @@ void __i915_gem_object_set_pages(struct drm_i915_gem_object *obj,
 	unsigned long supported = INTEL_INFO(i915)->page_sizes;
 	int i;
 
-	assert_object_held(obj);
-
 	if (i915_gem_object_is_volatile(obj))
 		obj->mm.madv = I915_MADV_DONTNEED;
 
@@ -34,8 +32,6 @@ void __i915_gem_object_set_pages(struct drm_i915_gem_object *obj,
 	obj->mm.get_page.sg_pos = pages->sgl;
 	obj->mm.get_page.sg_idx = 0;
 
-	obj->mm.pages = pages;
-
 	if (i915_gem_object_is_tiled(obj) &&
 	    i915->quirks & QUIRK_PIN_SWIZZLED_PAGES) {
 		GEM_BUG_ON(obj->mm.quirked);
@@ -61,6 +57,8 @@ void __i915_gem_object_set_pages(struct drm_i915_gem_object *obj,
 	}
 	GEM_BUG_ON(!HAS_PAGE_SIZES(i915, obj->mm.page_sizes.sg));
 
+	WRITE_ONCE(obj->mm.pages, pages);
+
 	if (i915_gem_object_is_shrinkable(obj)) {
 		struct list_head *list;
 		unsigned long flags;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 4cd79f425eac..a236df02bc44 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -14,6 +14,7 @@
 #include "i915_gem_ioctls.h"
 #include "i915_gem_object.h"
 #include "i915_scatterlist.h"
+#include "i915_sw_fence_work.h"
 
 struct i915_mm_struct {
 	struct mm_struct *mm;
@@ -398,7 +399,7 @@ i915_gem_userptr_release__mm_struct(struct drm_i915_gem_object *obj)
 }
 
 struct get_pages_work {
-	struct work_struct work;
+	struct dma_fence_work base;
 	struct drm_i915_gem_object *obj;
 	struct task_struct *task;
 };
@@ -446,12 +447,12 @@ __i915_gem_userptr_alloc_pages(struct drm_i915_gem_object *obj,
 	return st;
 }
 
-static void
-__i915_gem_userptr_get_pages_worker(struct work_struct *_work)
+static int gup_work(struct dma_fence_work *base)
 {
-	struct get_pages_work *work = container_of(_work, typeof(*work), work);
-	struct drm_i915_gem_object *obj = work->obj;
+	struct get_pages_work *gup = container_of(base, typeof(*gup), base);
+	struct drm_i915_gem_object *obj = gup->obj;
 	const unsigned long npages = obj->base.size >> PAGE_SHIFT;
+	struct sg_table *pages;
 	unsigned long pinned;
 	struct page **pvec;
 	int ret;
@@ -476,7 +477,7 @@ __i915_gem_userptr_get_pages_worker(struct work_struct *_work)
 					locked = 1;
 				}
 				ret = pin_user_pages_remote
-					(work->task, mm,
+					(gup->task, mm,
 					 obj->userptr.ptr + pinned * PAGE_SIZE,
 					 npages - pinned,
 					 flags,
@@ -492,37 +493,41 @@ __i915_gem_userptr_get_pages_worker(struct work_struct *_work)
 		}
 	}
 
-	i915_gem_object_lock(obj);
-	if (obj->userptr.work == &work->work) {
-		struct sg_table *pages = ERR_PTR(ret);
-
-		if (pinned == npages) {
-			pages = __i915_gem_userptr_alloc_pages(obj, pvec,
-							       npages);
-			if (!IS_ERR(pages)) {
-				pinned = 0;
-				pages = NULL;
-			}
+	if (pinned == npages) {
+		pages = __i915_gem_userptr_alloc_pages(obj, pvec, npages);
+		if (!IS_ERR(pages)) {
+			pinned = 0;
+			pages = NULL;
 		}
-
-		obj->userptr.work = ERR_CAST(pages);
-		if (IS_ERR(pages))
-			__i915_gem_userptr_set_active(obj, false);
+	} else {
+		pages = ERR_PTR(ret);
 	}
-	i915_gem_object_unlock(obj);
+	if (IS_ERR(pages))
+		__i915_gem_userptr_set_active(obj, false);
 
 	unpin_user_pages(pvec, pinned);
 	kvfree(pvec);
 
-	i915_gem_object_put(obj);
-	put_task_struct(work->task);
-	kfree(work);
+	return PTR_ERR_OR_ZERO(pages);
 }
 
-static struct sg_table *
+static void gup_release(struct dma_fence_work *base)
+{
+	struct get_pages_work *gup = container_of(base, typeof(*gup), base);
+
+	put_task_struct(gup->task);
+}
+
+static const struct dma_fence_work_ops gup_ops = {
+	.name = "userptr-getpages",
+	.work = gup_work,
+	.release = gup_release,
+};
+
+static bool
 __i915_gem_userptr_get_pages_schedule(struct drm_i915_gem_object *obj)
 {
-	struct get_pages_work *work;
+	struct get_pages_work *gup;
 
 	/* Spawn a worker so that we can acquire the
 	 * user pages without holding our mutex. Access
@@ -543,21 +548,21 @@ __i915_gem_userptr_get_pages_schedule(struct drm_i915_gem_object *obj)
 	 * that error back to this function through
 	 * obj->userptr.work = ERR_PTR.
 	 */
-	work = kmalloc(sizeof(*work), GFP_KERNEL);
-	if (work == NULL)
-		return ERR_PTR(-ENOMEM);
-
-	obj->userptr.work = &work->work;
+	gup = kmalloc(sizeof(*gup), GFP_KERNEL);
+	if (!gup)
+		return false;
 
-	work->obj = i915_gem_object_get(obj);
+	dma_fence_work_init(&gup->base, &gup_ops);
 
-	work->task = current;
-	get_task_struct(work->task);
+	gup->obj = obj;
+	i915_active_set_exclusive(&obj->mm.active, &gup->base.dma);
 
-	INIT_WORK(&work->work, __i915_gem_userptr_get_pages_worker);
-	queue_work(to_i915(obj->base.dev)->mm.userptr_wq, &work->work);
+	gup->task = current;
+	get_task_struct(gup->task);
 
-	return ERR_PTR(-EAGAIN);
+	dma_resv_add_excl_fence(obj->base.resv, &gup->base.dma);
+	dma_fence_work_commit(&gup->base);
+	return true;
 }
 
 static int i915_gem_userptr_get_pages(struct drm_i915_gem_object *obj)
@@ -566,7 +571,6 @@ static int i915_gem_userptr_get_pages(struct drm_i915_gem_object *obj)
 	struct mm_struct *mm = obj->userptr.mm->mm;
 	struct page **pvec;
 	struct sg_table *pages;
-	bool active;
 	int pinned;
 	unsigned int gup_flags = 0;
 
@@ -587,14 +591,6 @@ static int i915_gem_userptr_get_pages(struct drm_i915_gem_object *obj)
 	 * egregious cases from causing harm.
 	 */
 
-	if (obj->userptr.work) {
-		/* active flag should still be held for the pending work */
-		if (IS_ERR(obj->userptr.work))
-			return PTR_ERR(obj->userptr.work);
-		else
-			return -EAGAIN;
-	}
-
 	pvec = NULL;
 	pinned = 0;
 
@@ -618,28 +614,31 @@ static int i915_gem_userptr_get_pages(struct drm_i915_gem_object *obj)
 			pinned = pin_user_pages_fast_only(obj->userptr.ptr,
 							  num_pages, gup_flags,
 							  pvec);
+			if (pinned < 0)
+				goto out;
 		}
 	}
 
-	active = false;
-	if (pinned < 0) {
-		pages = ERR_PTR(pinned);
-		pinned = 0;
-	} else if (pinned < num_pages) {
-		pages = __i915_gem_userptr_get_pages_schedule(obj);
-		active = pages == ERR_PTR(-EAGAIN);
-	} else {
+	if (pinned == num_pages) {
 		pages = __i915_gem_userptr_alloc_pages(obj, pvec, num_pages);
-		active = !IS_ERR(pages);
+		if (IS_ERR(pages)) {
+			unpin_user_pages(pvec, pinned);
+			pinned = PTR_ERR(pages);
+			goto out;
+		}
+	} else {
+		unpin_user_pages(pvec, pinned);
+		if (!__i915_gem_userptr_get_pages_schedule(obj)) {
+			pinned = -ENOMEM;
+			goto out;
+		}
 	}
-	if (active)
-		__i915_gem_userptr_set_active(obj, true);
+	__i915_gem_userptr_set_active(obj, true);
+	pinned = 0;
 
-	if (IS_ERR(pages))
-		unpin_user_pages(pvec, pinned);
+out:
 	kvfree(pvec);
-
-	return PTR_ERR_OR_ZERO(pages);
+	return pinned;
 }
 
 static void
@@ -650,7 +649,6 @@ i915_gem_userptr_put_pages(struct drm_i915_gem_object *obj,
 	struct page *page;
 
 	/* Cancel any inflight work and force them to restart their gup */
-	obj->userptr.work = NULL;
 	__i915_gem_userptr_set_active(obj, false);
 	if (!pages)
 		return;
@@ -853,22 +851,12 @@ i915_gem_userptr_ioctl(struct drm_device *dev,
 	return 0;
 }
 
-int i915_gem_init_userptr(struct drm_i915_private *dev_priv)
+void i915_gem_init_userptr(struct drm_i915_private *dev_priv)
 {
 	spin_lock_init(&dev_priv->mm_lock);
 	hash_init(dev_priv->mm_structs);
-
-	dev_priv->mm.userptr_wq =
-		alloc_workqueue("i915-userptr-acquire",
-				WQ_HIGHPRI | WQ_UNBOUND,
-				0);
-	if (!dev_priv->mm.userptr_wq)
-		return -ENOMEM;
-
-	return 0;
 }
 
 void i915_gem_cleanup_userptr(struct drm_i915_private *dev_priv)
 {
-	destroy_workqueue(dev_priv->mm.userptr_wq);
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 072b1e19d86a..85c11912288a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -604,13 +604,6 @@ struct i915_gem_mm {
 	struct notifier_block vmap_notifier;
 	struct shrinker shrinker;
 
-	/**
-	 * Workqueue to fault in userptr pages, flushed by the execbuf
-	 * when required but otherwise left to userspace to try again
-	 * on EAGAIN.
-	 */
-	struct workqueue_struct *userptr_wq;
-
 	/* shrinker accounting, also useful for userland debugging */
 	u64 shrink_memory;
 	u32 shrink_count;
@@ -1724,7 +1717,7 @@ int i915_getparam_ioctl(struct drm_device *dev, void *data,
 			struct drm_file *file_priv);
 
 /* i915_gem.c */
-int i915_gem_init_userptr(struct drm_i915_private *dev_priv);
+void i915_gem_init_userptr(struct drm_i915_private *dev_priv);
 void i915_gem_cleanup_userptr(struct drm_i915_private *dev_priv);
 void i915_gem_init_early(struct drm_i915_private *dev_priv);
 void i915_gem_cleanup_early(struct drm_i915_private *dev_priv);
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 0fbe438c4523..f886a98dc2ae 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1133,9 +1133,7 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
 		mkwrite_device_info(dev_priv)->page_sizes =
 			I915_GTT_PAGE_SIZE_4K;
 
-	ret = i915_gem_init_userptr(dev_priv);
-	if (ret)
-		return ret;
+	i915_gem_init_userptr(dev_priv);
 
 	intel_uc_fetch_firmwares(&dev_priv->gt.uc);
 	intel_wopcm_init(&dev_priv->wopcm);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
