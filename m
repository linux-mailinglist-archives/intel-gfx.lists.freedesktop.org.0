Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB4B44EA28
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Nov 2021 16:34:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E23006E0BC;
	Fri, 12 Nov 2021 15:34:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 905FF6E0BC;
 Fri, 12 Nov 2021 15:34:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10165"; a="256867531"
X-IronPort-AV: E=Sophos;i="5.87,229,1631602800"; d="scan'208";a="256867531"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2021 07:34:17 -0800
X-IronPort-AV: E=Sophos;i="5.87,229,1631602800"; d="scan'208";a="493057596"
Received: from druttled-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.21.12])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2021 07:34:15 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Nov 2021 15:32:12 +0000
Message-Id: <20211112153216.630452-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211112153216.630452-1-matthew.auld@intel.com>
References: <20211112153216.630452-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/6] drm/i915: Create a dummy object for gen6
 ppgtt
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

We currently have to special case vma->obj being NULL because
of gen6 ppgtt and mock_engine. Fix gen6 ppgtt, so we may soon
be able to remove a few checks. As the object only exists as
a fake object pointing to ggtt, we have no backing storage,
so no real object is created. It just has to look real enough.

Also kill pin_mutex, it's not compatible with ww locking,
and we can use the vm lock instead.

v2:
  - Drop IS_SHRINKABLE and shorten overly long line
v3:
  - Checkpatch fix for alignment

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_internal.c |  44 ++++---
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c         | 123 +++++++++++--------
 drivers/gpu/drm/i915/gt/gen6_ppgtt.h         |   1 -
 drivers/gpu/drm/i915/i915_drv.h              |   4 +
 4 files changed, 100 insertions(+), 72 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_internal.c b/drivers/gpu/drm/i915/gem/i915_gem_internal.c
index a57a6b7013c2..c5150a1ee3d2 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_internal.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_internal.c
@@ -145,24 +145,10 @@ static const struct drm_i915_gem_object_ops i915_gem_object_internal_ops = {
 	.put_pages = i915_gem_object_put_pages_internal,
 };
 
-/**
- * i915_gem_object_create_internal: create an object with volatile pages
- * @i915: the i915 device
- * @size: the size in bytes of backing storage to allocate for the object
- *
- * Creates a new object that wraps some internal memory for private use.
- * This object is not backed by swappable storage, and as such its contents
- * are volatile and only valid whilst pinned. If the object is reaped by the
- * shrinker, its pages and data will be discarded. Equally, it is not a full
- * GEM object and so not valid for access from userspace. This makes it useful
- * for hardware interfaces like ringbuffers (which are pinned from the time
- * the request is written to the time the hardware stops accessing it), but
- * not for contexts (which need to be preserved when not active for later
- * reuse). Note that it is not cleared upon allocation.
- */
 struct drm_i915_gem_object *
-i915_gem_object_create_internal(struct drm_i915_private *i915,
-				phys_addr_t size)
+__i915_gem_object_create_internal(struct drm_i915_private *i915,
+				  const struct drm_i915_gem_object_ops *ops,
+				  phys_addr_t size)
 {
 	static struct lock_class_key lock_class;
 	struct drm_i915_gem_object *obj;
@@ -179,7 +165,7 @@ i915_gem_object_create_internal(struct drm_i915_private *i915,
 		return ERR_PTR(-ENOMEM);
 
 	drm_gem_private_object_init(&i915->drm, &obj->base, size);
-	i915_gem_object_init(obj, &i915_gem_object_internal_ops, &lock_class, 0);
+	i915_gem_object_init(obj, ops, &lock_class, 0);
 	obj->mem_flags |= I915_BO_FLAG_STRUCT_PAGE;
 
 	/*
@@ -199,3 +185,25 @@ i915_gem_object_create_internal(struct drm_i915_private *i915,
 
 	return obj;
 }
+
+/**
+ * i915_gem_object_create_internal: create an object with volatile pages
+ * @i915: the i915 device
+ * @size: the size in bytes of backing storage to allocate for the object
+ *
+ * Creates a new object that wraps some internal memory for private use.
+ * This object is not backed by swappable storage, and as such its contents
+ * are volatile and only valid whilst pinned. If the object is reaped by the
+ * shrinker, its pages and data will be discarded. Equally, it is not a full
+ * GEM object and so not valid for access from userspace. This makes it useful
+ * for hardware interfaces like ringbuffers (which are pinned from the time
+ * the request is written to the time the hardware stops accessing it), but
+ * not for contexts (which need to be preserved when not active for later
+ * reuse). Note that it is not cleared upon allocation.
+ */
+struct drm_i915_gem_object *
+i915_gem_object_create_internal(struct drm_i915_private *i915,
+				phys_addr_t size)
+{
+	return __i915_gem_object_create_internal(i915, &i915_gem_object_internal_ops, size);
+}
diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index ae693bf88ef0..4a166d25fe60 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -261,13 +261,10 @@ static void gen6_ppgtt_cleanup(struct i915_address_space *vm)
 {
 	struct gen6_ppgtt *ppgtt = to_gen6_ppgtt(i915_vm_to_ppgtt(vm));
 
-	__i915_vma_put(ppgtt->vma);
-
 	gen6_ppgtt_free_pd(ppgtt);
 	free_scratch(vm);
 
 	mutex_destroy(&ppgtt->flush);
-	mutex_destroy(&ppgtt->pin_mutex);
 
 	free_pd(&ppgtt->base.vm, ppgtt->base.pd);
 }
@@ -330,37 +327,6 @@ static const struct i915_vma_ops pd_vma_ops = {
 	.unbind_vma = pd_vma_unbind,
 };
 
-static struct i915_vma *pd_vma_create(struct gen6_ppgtt *ppgtt, int size)
-{
-	struct i915_ggtt *ggtt = ppgtt->base.vm.gt->ggtt;
-	struct i915_vma *vma;
-
-	GEM_BUG_ON(!IS_ALIGNED(size, I915_GTT_PAGE_SIZE));
-	GEM_BUG_ON(size > ggtt->vm.total);
-
-	vma = i915_vma_alloc();
-	if (!vma)
-		return ERR_PTR(-ENOMEM);
-
-	i915_active_init(&vma->active, NULL, NULL, 0);
-
-	kref_init(&vma->ref);
-	mutex_init(&vma->pages_mutex);
-	vma->vm = i915_vm_get(&ggtt->vm);
-	vma->ops = &pd_vma_ops;
-	vma->private = ppgtt;
-
-	vma->size = size;
-	vma->fence_size = size;
-	atomic_set(&vma->flags, I915_VMA_GGTT);
-	vma->ggtt_view.type = I915_GGTT_VIEW_ROTATED; /* prevent fencing */
-
-	INIT_LIST_HEAD(&vma->obj_link);
-	INIT_LIST_HEAD(&vma->closed_link);
-
-	return vma;
-}
-
 int gen6_ppgtt_pin(struct i915_ppgtt *base, struct i915_gem_ww_ctx *ww)
 {
 	struct gen6_ppgtt *ppgtt = to_gen6_ppgtt(base);
@@ -377,24 +343,85 @@ int gen6_ppgtt_pin(struct i915_ppgtt *base, struct i915_gem_ww_ctx *ww)
 	if (atomic_add_unless(&ppgtt->pin_count, 1, 0))
 		return 0;
 
-	if (mutex_lock_interruptible(&ppgtt->pin_mutex))
-		return -EINTR;
+	/* grab the ppgtt resv to pin the object */
+	err = i915_vm_lock_objects(&ppgtt->base.vm, ww);
+	if (err)
+		return err;
 
 	/*
 	 * PPGTT PDEs reside in the GGTT and consists of 512 entries. The
 	 * allocator works in address space sizes, so it's multiplied by page
 	 * size. We allocate at the top of the GTT to avoid fragmentation.
 	 */
-	err = 0;
-	if (!atomic_read(&ppgtt->pin_count))
+	if (!atomic_read(&ppgtt->pin_count)) {
 		err = i915_ggtt_pin(ppgtt->vma, ww, GEN6_PD_ALIGN, PIN_HIGH);
+
+		GEM_BUG_ON(ppgtt->vma->fence);
+		clear_bit(I915_VMA_CAN_FENCE_BIT, __i915_vma_flags(ppgtt->vma));
+	}
 	if (!err)
 		atomic_inc(&ppgtt->pin_count);
-	mutex_unlock(&ppgtt->pin_mutex);
 
 	return err;
 }
 
+static int pd_dummy_obj_get_pages(struct drm_i915_gem_object *obj)
+{
+	obj->mm.pages = ZERO_SIZE_PTR;
+	return 0;
+}
+
+static void pd_dummy_obj_put_pages(struct drm_i915_gem_object *obj,
+				   struct sg_table *pages)
+{
+}
+
+static const struct drm_i915_gem_object_ops pd_dummy_obj_ops = {
+	.name = "pd_dummy_obj",
+	.get_pages = pd_dummy_obj_get_pages,
+	.put_pages = pd_dummy_obj_put_pages,
+};
+
+static struct i915_page_directory *
+gen6_alloc_top_pd(struct gen6_ppgtt *ppgtt)
+{
+	struct i915_ggtt * const ggtt = ppgtt->base.vm.gt->ggtt;
+	struct i915_page_directory *pd;
+	int err;
+
+	pd = __alloc_pd(I915_PDES);
+	if (unlikely(!pd))
+		return ERR_PTR(-ENOMEM);
+
+	pd->pt.base = __i915_gem_object_create_internal(ppgtt->base.vm.gt->i915,
+							&pd_dummy_obj_ops,
+							I915_PDES * SZ_4K);
+	if (IS_ERR(pd->pt.base)) {
+		err = PTR_ERR(pd->pt.base);
+		pd->pt.base = NULL;
+		goto err_pd;
+	}
+
+	pd->pt.base->base.resv = i915_vm_resv_get(&ppgtt->base.vm);
+	pd->pt.base->shares_resv_from = &ppgtt->base.vm;
+
+	ppgtt->vma = i915_vma_instance(pd->pt.base, &ggtt->vm, NULL);
+	if (IS_ERR(ppgtt->vma)) {
+		err = PTR_ERR(ppgtt->vma);
+		ppgtt->vma = NULL;
+		goto err_pd;
+	}
+
+	/* The dummy object we create is special, override ops.. */
+	ppgtt->vma->ops = &pd_vma_ops;
+	ppgtt->vma->private = ppgtt;
+	return pd;
+
+err_pd:
+	free_pd(&ppgtt->base.vm, pd);
+	return ERR_PTR(err);
+}
+
 void gen6_ppgtt_unpin(struct i915_ppgtt *base)
 {
 	struct gen6_ppgtt *ppgtt = to_gen6_ppgtt(base);
@@ -415,7 +442,6 @@ struct i915_ppgtt *gen6_ppgtt_create(struct intel_gt *gt)
 		return ERR_PTR(-ENOMEM);
 
 	mutex_init(&ppgtt->flush);
-	mutex_init(&ppgtt->pin_mutex);
 
 	ppgtt_init(&ppgtt->base, gt, 0);
 	ppgtt->base.vm.pd_shift = ilog2(SZ_4K * SZ_4K / sizeof(gen6_pte_t));
@@ -430,19 +456,13 @@ struct i915_ppgtt *gen6_ppgtt_create(struct intel_gt *gt)
 	ppgtt->base.vm.alloc_pt_dma = alloc_pt_dma;
 	ppgtt->base.vm.pte_encode = ggtt->vm.pte_encode;
 
-	ppgtt->base.pd = __alloc_pd(I915_PDES);
-	if (!ppgtt->base.pd) {
-		err = -ENOMEM;
-		goto err_free;
-	}
-
 	err = gen6_ppgtt_init_scratch(ppgtt);
 	if (err)
-		goto err_pd;
+		goto err_free;
 
-	ppgtt->vma = pd_vma_create(ppgtt, GEN6_PD_SIZE);
-	if (IS_ERR(ppgtt->vma)) {
-		err = PTR_ERR(ppgtt->vma);
+	ppgtt->base.pd = gen6_alloc_top_pd(ppgtt);
+	if (IS_ERR(ppgtt->base.pd)) {
+		err = PTR_ERR(ppgtt->base.pd);
 		goto err_scratch;
 	}
 
@@ -450,10 +470,7 @@ struct i915_ppgtt *gen6_ppgtt_create(struct intel_gt *gt)
 
 err_scratch:
 	free_scratch(&ppgtt->base.vm);
-err_pd:
-	free_pd(&ppgtt->base.vm, ppgtt->base.pd);
 err_free:
-	mutex_destroy(&ppgtt->pin_mutex);
 	kfree(ppgtt);
 	return ERR_PTR(err);
 }
diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.h b/drivers/gpu/drm/i915/gt/gen6_ppgtt.h
index ab0eecb086dd..5e5cf2ec3309 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.h
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.h
@@ -19,7 +19,6 @@ struct gen6_ppgtt {
 	u32 pp_dir;
 
 	atomic_t pin_count;
-	struct mutex pin_mutex;
 
 	bool scan_for_unused_pt;
 };
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 21ff781b8149..da39bf5508ca 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1933,6 +1933,10 @@ int i915_gem_evict_vm(struct i915_address_space *vm);
 struct drm_i915_gem_object *
 i915_gem_object_create_internal(struct drm_i915_private *dev_priv,
 				phys_addr_t size);
+struct drm_i915_gem_object *
+__i915_gem_object_create_internal(struct drm_i915_private *dev_priv,
+				  const struct drm_i915_gem_object_ops *ops,
+				  phys_addr_t size);
 
 /* i915_gem_tiling.c */
 static inline bool i915_gem_object_needs_bit17_swizzle(struct drm_i915_gem_object *obj)
-- 
2.31.1

