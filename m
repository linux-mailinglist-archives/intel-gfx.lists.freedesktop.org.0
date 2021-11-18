Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D11B455C21
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Nov 2021 14:03:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 874DD6E995;
	Thu, 18 Nov 2021 13:03:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E46F46E98D;
 Thu, 18 Nov 2021 13:03:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10171"; a="297596152"
X-IronPort-AV: E=Sophos;i="5.87,244,1631602800"; d="scan'208";a="297596152"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2021 05:02:50 -0800
X-IronPort-AV: E=Sophos;i="5.87,244,1631602800"; d="scan'208";a="455319640"
Received: from ntaiyeby-mobl1.ger.corp.intel.com (HELO
 thellstr-mobl1.intel.com) ([10.249.254.166])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2021 05:02:48 -0800
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 18 Nov 2021 14:02:29 +0100
Message-Id: <20211118130230.154988-6-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211118130230.154988-1-thomas.hellstrom@linux.intel.com>
References: <20211118130230.154988-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 5/6] drm/i915/ttm: Implement asynchronous TTM
 moves
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Don't wait sync while migrating, but rather make the GPU blit await the
dependencies and add a moving fence to the object.

This also enables asynchronous VRAM management in that on eviction,
rather than waiting for the moving fence to expire before freeing VRAM,
it is freed immediately and the fence is stored with the VRAM manager and
handed out to newly allocated objects to await before clears and swapins,
or for kernel objects before setting up gpu vmas or mapping.

To collect dependencies before migrating, add a set of utilities that
coalesce these to a single dma_fence.

What is still missing for fully asynchronous operation is asynchronous vma
unbinding, which is still to be implemented.

This commit substantially reduces execution time in the gem_lmem_swapping
test.

v2:
- Make a couple of functions static.
v4:
- Fix some style issues (Matthew Auld)
- Audit and add more checks for ghost objects (Matthew Auld)
- Add more documentation for the i915_deps utility (Mattew Auld)
- Simplify the i915_deps_sync() function

Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c      |  32 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.h      |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c | 338 +++++++++++++++++--
 drivers/gpu/drm/i915/gem/i915_gem_wait.c     |   4 +-
 4 files changed, 344 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index e37157b080e4..81e84c1763de 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -248,10 +248,13 @@ static struct ttm_tt *i915_ttm_tt_create(struct ttm_buffer_object *bo,
 	struct ttm_resource_manager *man =
 		ttm_manager_type(bo->bdev, bo->resource->mem_type);
 	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
-	enum ttm_caching caching = i915_ttm_select_tt_caching(obj);
+	enum ttm_caching caching;
 	struct i915_ttm_tt *i915_tt;
 	int ret;
 
+	if (!obj)
+		return NULL;
+
 	i915_tt = kzalloc(sizeof(*i915_tt), GFP_KERNEL);
 	if (!i915_tt)
 		return NULL;
@@ -260,6 +263,7 @@ static struct ttm_tt *i915_ttm_tt_create(struct ttm_buffer_object *bo,
 	    man->use_tt)
 		page_flags |= TTM_TT_FLAG_ZERO_ALLOC;
 
+	caching = i915_ttm_select_tt_caching(obj);
 	if (i915_gem_object_is_shrinkable(obj) && caching == ttm_cached) {
 		page_flags |= TTM_TT_FLAG_EXTERNAL |
 			      TTM_TT_FLAG_EXTERNAL_MAPPABLE;
@@ -326,6 +330,9 @@ static bool i915_ttm_eviction_valuable(struct ttm_buffer_object *bo,
 {
 	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
 
+	if (!obj)
+		return false;
+
 	/*
 	 * EXTERNAL objects should never be swapped out by TTM, instead we need
 	 * to handle that ourselves. TTM will already skip such objects for us,
@@ -552,8 +559,12 @@ i915_ttm_resource_get_st(struct drm_i915_gem_object *obj,
 static void i915_ttm_swap_notify(struct ttm_buffer_object *bo)
 {
 	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
-	int ret = i915_ttm_move_notify(bo);
+	int ret;
 
+	if (!obj)
+		return;
+
+	ret = i915_ttm_move_notify(bo);
 	GEM_WARN_ON(ret);
 	GEM_WARN_ON(obj->ttm.cached_io_rsgt);
 	if (!ret && obj->mm.madv != I915_MADV_WILLNEED)
@@ -575,17 +586,23 @@ static unsigned long i915_ttm_io_mem_pfn(struct ttm_buffer_object *bo,
 					 unsigned long page_offset)
 {
 	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
-	unsigned long base = obj->mm.region->iomap.base - obj->mm.region->region.start;
 	struct scatterlist *sg;
+	unsigned long base;
 	unsigned int ofs;
 
+	GEM_BUG_ON(!obj);
 	GEM_WARN_ON(bo->ttm);
 
+	base = obj->mm.region->iomap.base - obj->mm.region->region.start;
 	sg = __i915_gem_object_get_sg(obj, &obj->ttm.get_io_page, page_offset, &ofs, true);
 
 	return ((base + sg_dma_address(sg)) >> PAGE_SHIFT) + ofs;
 }
 
+/*
+ * All callbacks need to take care not to downcast a struct ttm_buffer_object
+ * without checking its subclass, since it might be a TTM ghost object.
+ */
 static struct ttm_device_funcs i915_ttm_bo_driver = {
 	.ttm_tt_create = i915_ttm_tt_create,
 	.ttm_tt_populate = i915_ttm_tt_populate,
@@ -847,13 +864,16 @@ static void i915_ttm_delayed_free(struct drm_i915_gem_object *obj)
 static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
 {
 	struct vm_area_struct *area = vmf->vma;
-	struct drm_i915_gem_object *obj =
-		i915_ttm_to_gem(area->vm_private_data);
-	struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
+	struct ttm_buffer_object *bo = area->vm_private_data;
 	struct drm_device *dev = bo->base.dev;
+	struct drm_i915_gem_object *obj;
 	vm_fault_t ret;
 	int idx;
 
+	obj = i915_ttm_to_gem(bo);
+	if (!obj)
+		return VM_FAULT_SIGBUS;
+
 	/* Sanity check that we allow writing into this object */
 	if (unlikely(i915_gem_object_is_readonly(obj) &&
 		     area->vm_flags & VM_WRITE))
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.h b/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
index 82cdabb542be..9d698ad00853 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
@@ -37,7 +37,7 @@ void i915_ttm_bo_destroy(struct ttm_buffer_object *bo);
 static inline struct drm_i915_gem_object *
 i915_ttm_to_gem(struct ttm_buffer_object *bo)
 {
-	if (GEM_WARN_ON(bo->destroy != i915_ttm_bo_destroy))
+	if (bo->destroy != i915_ttm_bo_destroy)
 		return NULL;
 
 	return container_of(bo, struct drm_i915_gem_object, __do_not_access);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
index f35b386c56ca..38623fde170a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
@@ -3,6 +3,8 @@
  * Copyright © 2021 Intel Corporation
  */
 
+#include <linux/dma-fence-array.h>
+
 #include <drm/ttm/ttm_bo_driver.h>
 
 #include "i915_drv.h"
@@ -41,6 +43,234 @@ void i915_ttm_migrate_set_failure_modes(bool gpu_migration,
 }
 #endif
 
+/**
+ * DOC: Set of utilities to dynamically collect dependencies and
+ * eventually coalesce them into a single fence which is fed into
+ * the GT migration code, since it only accepts a single dependency
+ * fence.
+ * The single fence returned from these utilities, in the case of
+ * dependencies from multiple fence contexts, a struct dma_fence_array,
+ * since the i915 request code can break that up and await the individual
+ * fences.
+ *
+ * Once we can do async unbinding, this is also needed to coalesce
+ * the migration fence with the unbind fences.
+ *
+ * While collecting the individual dependencies, we store the refcounted
+ * struct dma_fence pointers in a realloc-managed pointer array, since
+ * that can be easily fed into a dma_fence_array. Other options are
+ * available, like for example an xarray for similarity with drm/sched.
+ * Can be changed easily if needed.
+ *
+ * A struct i915_deps need to be initialized using i915_deps_init().
+ * If i915_deps_add_dependency() or i915_deps_add_resv() return an
+ * error code they will internally call i915_deps_fini(), which frees
+ * all internal references and allocations. After a call to
+ * i915_deps_to_fence(), or i915_deps_sync(), the struct should similarly
+ * be viewed as uninitialized.
+ *
+ * We might want to break this out into a separate file as a utility.
+ */
+
+#define I915_DEPS_MIN_ALLOC_CHUNK 8U
+
+/**
+ * struct i915_deps - Collect dependencies into a single dma-fence
+ * @single: Storage for pointer if the collection is a single fence.
+ * @fence: Allocated array of fence pointers if more than a single fence;
+ * otherwise points to the address of @single.
+ * @num_deps: Current number of dependency fences.
+ * @fences_size: Size of the @fences array in number of pointers.
+ * @gfp: Allocation mode.
+ */
+struct i915_deps {
+	struct dma_fence *single;
+	struct dma_fence **fences;
+	unsigned int num_deps;
+	unsigned int fences_size;
+	gfp_t gfp;
+};
+
+static void i915_deps_reset_fences(struct i915_deps *deps)
+{
+	if (deps->fences != &deps->single)
+		kfree(deps->fences);
+	deps->num_deps = 0;
+	deps->fences_size = 1;
+	deps->fences = &deps->single;
+}
+
+static void i915_deps_init(struct i915_deps *deps, gfp_t gfp)
+{
+	deps->fences = NULL;
+	deps->gfp = gfp;
+	i915_deps_reset_fences(deps);
+}
+
+static void i915_deps_fini(struct i915_deps *deps)
+{
+	unsigned int i;
+
+	for (i = 0; i < deps->num_deps; ++i)
+		dma_fence_put(deps->fences[i]);
+
+	if (deps->fences != &deps->single)
+		kfree(deps->fences);
+}
+
+static int i915_deps_grow(struct i915_deps *deps, struct dma_fence *fence,
+			  const struct ttm_operation_ctx *ctx)
+{
+	int ret;
+
+	if (deps->num_deps >= deps->fences_size) {
+		unsigned int new_size = 2 * deps->fences_size;
+		struct dma_fence **new_fences;
+
+		new_size = max(new_size, I915_DEPS_MIN_ALLOC_CHUNK);
+		new_fences = kmalloc_array(new_size, sizeof(*new_fences), deps->gfp);
+		if (!new_fences)
+			goto sync;
+
+		memcpy(new_fences, deps->fences,
+		       deps->fences_size * sizeof(*new_fences));
+		swap(new_fences, deps->fences);
+		if (new_fences != &deps->single)
+			kfree(new_fences);
+		deps->fences_size = new_size;
+	}
+	deps->fences[deps->num_deps++] = dma_fence_get(fence);
+	return 0;
+
+sync:
+	if (ctx->no_wait_gpu) {
+		ret = -EBUSY;
+		goto unref;
+	}
+
+	ret = dma_fence_wait(fence, ctx->interruptible);
+	if (ret)
+		goto unref;
+
+	ret = fence->error;
+	if (ret)
+		goto unref;
+
+	return 0;
+
+unref:
+	i915_deps_fini(deps);
+	return ret;
+}
+
+static int i915_deps_sync(struct i915_deps *deps,
+			  const struct ttm_operation_ctx *ctx)
+{
+	struct dma_fence **fences = deps->fences;
+	unsigned int i;
+	int ret = 0;
+
+	for (i = 0; i < deps->num_deps; ++i, ++fences) {
+		if (ctx->no_wait_gpu) {
+			ret = -EBUSY;
+			break;
+		}
+
+		ret = dma_fence_wait(*fences, ctx->interruptible);
+		if (!ret)
+			ret = (*fences)->error;
+		if (ret)
+			break;
+	}
+
+	i915_deps_fini(deps);
+	return ret;
+}
+
+static int i915_deps_add_dependency(struct i915_deps *deps,
+				    struct dma_fence *fence,
+				    const struct ttm_operation_ctx *ctx)
+{
+	unsigned int i;
+	int ret;
+
+	if (!fence)
+		return 0;
+
+	if (dma_fence_is_signaled(fence)) {
+		ret = fence->error;
+		if (ret)
+			i915_deps_fini(deps);
+		return ret;
+	}
+
+	for (i = 0; i < deps->num_deps; ++i) {
+		struct dma_fence *entry = deps->fences[i];
+
+		if (!entry->context || entry->context != fence->context)
+			continue;
+
+		if (dma_fence_is_later(fence, entry)) {
+			dma_fence_put(entry);
+			deps->fences[i] = dma_fence_get(fence);
+		}
+
+		return 0;
+	}
+
+	return i915_deps_grow(deps, fence, ctx);
+}
+
+static struct dma_fence *i915_deps_to_fence(struct i915_deps *deps,
+					    const struct ttm_operation_ctx *ctx)
+{
+	struct dma_fence_array *array;
+
+	if (deps->num_deps == 0)
+		return NULL;
+
+	if (deps->num_deps == 1) {
+		deps->num_deps = 0;
+		return deps->fences[0];
+	}
+
+	/*
+	 * TODO: Alter the allocation mode here to not try too hard to
+	 * make things async.
+	 */
+	array = dma_fence_array_create(deps->num_deps, deps->fences, 0, 0,
+				       false);
+	if (!array)
+		return ERR_PTR(i915_deps_sync(deps, ctx));
+
+	deps->fences = NULL;
+	i915_deps_reset_fences(deps);
+
+	return &array->base;
+}
+
+static int i915_deps_add_resv(struct i915_deps *deps, struct dma_resv *resv,
+			      bool all, const bool no_excl,
+			      const struct ttm_operation_ctx *ctx)
+{
+	struct dma_resv_iter iter;
+	struct dma_fence *fence;
+
+	dma_resv_assert_held(resv);
+	dma_resv_for_each_fence(&iter, resv, all, fence) {
+		int ret;
+
+		if (no_excl && !iter.index)
+			continue;
+
+		ret = i915_deps_add_dependency(deps, fence, ctx);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
 static enum i915_cache_level
 i915_ttm_cache_level(struct drm_i915_private *i915, struct ttm_resource *res,
 		     struct ttm_tt *ttm)
@@ -156,7 +386,8 @@ static struct dma_fence *i915_ttm_accel_move(struct ttm_buffer_object *bo,
 					     bool clear,
 					     struct ttm_resource *dst_mem,
 					     struct ttm_tt *dst_ttm,
-					     struct sg_table *dst_st)
+					     struct sg_table *dst_st,
+					     struct dma_fence *dep)
 {
 	struct drm_i915_private *i915 = container_of(bo->bdev, typeof(*i915),
 						     bdev);
@@ -180,7 +411,7 @@ static struct dma_fence *i915_ttm_accel_move(struct ttm_buffer_object *bo,
 			return ERR_PTR(-EINVAL);
 
 		intel_engine_pm_get(i915->gt.migrate.context->engine);
-		ret = intel_context_migrate_clear(i915->gt.migrate.context, NULL,
+		ret = intel_context_migrate_clear(i915->gt.migrate.context, dep,
 						  dst_st->sgl, dst_level,
 						  i915_ttm_gtt_binds_lmem(dst_mem),
 						  0, &rq);
@@ -194,7 +425,7 @@ static struct dma_fence *i915_ttm_accel_move(struct ttm_buffer_object *bo,
 		src_level = i915_ttm_cache_level(i915, bo->resource, src_ttm);
 		intel_engine_pm_get(i915->gt.migrate.context->engine);
 		ret = intel_context_migrate_copy(i915->gt.migrate.context,
-						 NULL, src_rsgt->table.sgl,
+						 dep, src_rsgt->table.sgl,
 						 src_level,
 						 i915_ttm_gtt_binds_lmem(bo->resource),
 						 dst_st->sgl, dst_level,
@@ -378,10 +609,11 @@ i915_ttm_memcpy_work_arm(struct i915_ttm_memcpy_work *work,
 	return &work->fence;
 }
 
-static void __i915_ttm_move(struct ttm_buffer_object *bo, bool clear,
-			    struct ttm_resource *dst_mem,
-			    struct ttm_tt *dst_ttm,
-			    struct i915_refct_sgt *dst_rsgt, bool allow_accel)
+static struct dma_fence *
+__i915_ttm_move(struct ttm_buffer_object *bo, bool clear,
+		struct ttm_resource *dst_mem, struct ttm_tt *dst_ttm,
+		struct i915_refct_sgt *dst_rsgt, bool allow_accel,
+		struct dma_fence *move_dep)
 {
 	struct i915_ttm_memcpy_work *copy_work = NULL;
 	struct i915_ttm_memcpy_arg _arg, *arg = &_arg;
@@ -389,7 +621,7 @@ static void __i915_ttm_move(struct ttm_buffer_object *bo, bool clear,
 
 	if (allow_accel) {
 		fence = i915_ttm_accel_move(bo, clear, dst_mem, dst_ttm,
-					    &dst_rsgt->table);
+					    &dst_rsgt->table, move_dep);
 
 		/*
 		 * We only need to intercept the error when moving to lmem.
@@ -423,6 +655,11 @@ static void __i915_ttm_move(struct ttm_buffer_object *bo, bool clear,
 
 		if (!IS_ERR(fence))
 			goto out;
+	} else if (move_dep) {
+		int err = dma_fence_wait(move_dep, true);
+
+		if (err)
+			return ERR_PTR(err);
 	}
 
 	/* Error intercept failed or no accelerated migration to start with */
@@ -433,16 +670,35 @@ static void __i915_ttm_move(struct ttm_buffer_object *bo, bool clear,
 	i915_ttm_memcpy_release(arg);
 	kfree(copy_work);
 
-	return;
+	return NULL;
 out:
-	/* Sync here for now, forward the fence to caller when fully async. */
-	if (fence) {
-		dma_fence_wait(fence, false);
-		dma_fence_put(fence);
-	} else if (copy_work) {
+	if (!fence && copy_work) {
 		i915_ttm_memcpy_release(arg);
 		kfree(copy_work);
 	}
+
+	return fence;
+}
+
+static struct dma_fence *prev_fence(struct ttm_buffer_object *bo,
+				    struct ttm_operation_ctx *ctx)
+{
+	struct i915_deps deps;
+	int ret;
+
+	/*
+	 * Instead of trying hard with GFP_KERNEL to allocate memory,
+	 * the dependency collection will just sync if it doesn't
+	 * succeed.
+	 */
+	i915_deps_init(&deps, GFP_KERNEL | __GFP_NORETRY | __GFP_NOWARN);
+	ret = i915_deps_add_dependency(&deps, bo->moving, ctx);
+	if (!ret)
+		ret = i915_deps_add_resv(&deps, bo->base.resv, false, false, ctx);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return i915_deps_to_fence(&deps, ctx);
 }
 
 /**
@@ -462,15 +718,16 @@ int i915_ttm_move(struct ttm_buffer_object *bo, bool evict,
 	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
 	struct ttm_resource_manager *dst_man =
 		ttm_manager_type(bo->bdev, dst_mem->mem_type);
+	struct dma_fence *migration_fence = NULL;
 	struct ttm_tt *ttm = bo->ttm;
 	struct i915_refct_sgt *dst_rsgt;
 	bool clear;
 	int ret;
 
-	/* Sync for now. We could do the actual copy async. */
-	ret = ttm_bo_wait_ctx(bo, ctx);
-	if (ret)
-		return ret;
+	if (GEM_WARN_ON(!obj)) {
+		ttm_bo_move_null(bo, dst_mem);
+		return 0;
+	}
 
 	ret = i915_ttm_move_notify(bo);
 	if (ret)
@@ -494,10 +751,37 @@ int i915_ttm_move(struct ttm_buffer_object *bo, bool evict,
 		return PTR_ERR(dst_rsgt);
 
 	clear = !i915_ttm_cpu_maps_iomem(bo->resource) && (!ttm || !ttm_tt_is_populated(ttm));
-	if (!(clear && ttm && !(ttm->page_flags & TTM_TT_FLAG_ZERO_ALLOC)))
-		__i915_ttm_move(bo, clear, dst_mem, bo->ttm, dst_rsgt, true);
+	if (!(clear && ttm && !(ttm->page_flags & TTM_TT_FLAG_ZERO_ALLOC))) {
+		struct dma_fence *dep = prev_fence(bo, ctx);
+
+		if (IS_ERR(dep)) {
+			i915_refct_sgt_put(dst_rsgt);
+			return PTR_ERR(dep);
+		}
+
+		migration_fence = __i915_ttm_move(bo, clear, dst_mem, bo->ttm,
+						  dst_rsgt, true, dep);
+		dma_fence_put(dep);
+	}
+
+	/* We can possibly get an -ERESTARTSYS here */
+	if (IS_ERR(migration_fence)) {
+		i915_refct_sgt_put(dst_rsgt);
+		return PTR_ERR(migration_fence);
+	}
+
+	if (migration_fence) {
+		ret = ttm_bo_move_accel_cleanup(bo, migration_fence, evict,
+						true, dst_mem);
+		if (ret) {
+			dma_fence_wait(migration_fence, false);
+			ttm_bo_move_sync_cleanup(bo, dst_mem);
+		}
+		dma_fence_put(migration_fence);
+	} else {
+		ttm_bo_move_sync_cleanup(bo, dst_mem);
+	}
 
-	ttm_bo_move_sync_cleanup(bo, dst_mem);
 	i915_ttm_adjust_domains_after_move(obj);
 	i915_ttm_free_cached_io_rsgt(obj);
 
@@ -538,6 +822,7 @@ int i915_gem_obj_copy_ttm(struct drm_i915_gem_object *dst,
 		.interruptible = intr,
 	};
 	struct i915_refct_sgt *dst_rsgt;
+	struct dma_fence *copy_fence;
 	int ret;
 
 	assert_object_held(dst);
@@ -553,10 +838,17 @@ int i915_gem_obj_copy_ttm(struct drm_i915_gem_object *dst,
 		return ret;
 
 	dst_rsgt = i915_ttm_resource_get_st(dst, dst_bo->resource);
-	__i915_ttm_move(src_bo, false, dst_bo->resource, dst_bo->ttm,
-			dst_rsgt, allow_accel);
+	copy_fence = __i915_ttm_move(src_bo, false, dst_bo->resource,
+				     dst_bo->ttm, dst_rsgt, allow_accel, NULL);
 
 	i915_refct_sgt_put(dst_rsgt);
+	if (IS_ERR(copy_fence))
+		return PTR_ERR(copy_fence);
+
+	if (copy_fence) {
+		dma_fence_wait(copy_fence, false);
+		dma_fence_put(copy_fence);
+	}
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_wait.c b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
index f909aaa09d9c..bae65796a6cc 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_wait.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
@@ -306,6 +306,6 @@ int i915_gem_object_wait_migration(struct drm_i915_gem_object *obj,
 				   unsigned int flags)
 {
 	might_sleep();
-	/* NOP for now. */
-	return 0;
+
+	return i915_gem_object_wait_moving_fence(obj, !!(flags & I915_WAIT_INTERRUPTIBLE));
 }
-- 
2.31.1

