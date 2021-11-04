Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E216D4451F2
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Nov 2021 12:07:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA1206EDA8;
	Thu,  4 Nov 2021 11:07:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D01B96EDA8
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Nov 2021 11:07:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="292518105"
X-IronPort-AV: E=Sophos;i="5.87,208,1631602800"; d="scan'208";a="292518105"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 04:07:38 -0700
X-IronPort-AV: E=Sophos;i="5.87,208,1631602800"; d="scan'208";a="542050635"
Received: from fnygreen-mobl1.ger.corp.intel.com (HELO
 thellstr-mobl1.intel.com) ([10.249.254.164])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 04:07:36 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Nov 2021 12:07:18 +0100
Message-Id: <20211104110718.688420-3-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211104110718.688420-1-thomas.hellstrom@linux.intel.com>
References: <20211104110718.688420-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 2/2] drm/i915/ttm: Failsafe migration blits
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

If the initial fill blit or copy blit of an object fails, the old
content of the data might be exposed and read as soon as either CPU- or
GPU PTEs are set up to point at the pages.

Intercept the blit fence with an async callback that checks the
blit fence for errors and if there are errors performs an async cpu blit
instead. If there is a failure to allocate the async dma_fence_work,
allocate it on the stack and sync wait for the blit to complete.

Add selftests that simulate gpu blit failures and failure to allocate
the async dma_fence_work.

A previous version of this pach used dma_fence_work, now that's
opencoded which adds more code but might lower the latency
somewhat in the common non-error case.

v3:
- Style fixes (Matthew Auld)
v4:
- Use "#if IS_ENABLED()" instead of #ifdef (Matthew Auld)
v5:
- Fix an issue where we, if the dependency was already signaled, might
  end up waiting for a memcpy fence that would never signal.
v6:
- Add a missing i915_ttm_memcpy_release() (Matthew Auld)

Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c  | 325 +++++++++++++++---
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.h  |   5 +
 .../drm/i915/gem/selftests/i915_gem_migrate.c |  24 +-
 3 files changed, 298 insertions(+), 56 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
index 0ed6b7f2b95f..ef22d4ed66ad 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
@@ -18,6 +18,29 @@
 #include "gt/intel_gt.h"
 #include "gt/intel_migrate.h"
 
+/**
+ * DOC: Selftest failure modes for failsafe migration:
+ *
+ * For fail_gpu_migration, the gpu blit scheduled is always a clear blit
+ * rather than a copy blit, and then we force the failure paths as if
+ * the blit fence returned an error.
+ *
+ * For fail_work_allocation we fail the kmalloc of the async worker, we
+ * sync the gpu blit. If it then fails, or fail_gpu_migration is set to
+ * true, then a memcpy operation is performed sync.
+ */
+#if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
+static bool fail_gpu_migration;
+static bool fail_work_allocation;
+
+void i915_ttm_migrate_set_failure_modes(bool gpu_migration,
+					bool work_allocation)
+{
+	fail_gpu_migration = gpu_migration;
+	fail_work_allocation = work_allocation;
+}
+#endif
+
 static enum i915_cache_level
 i915_ttm_cache_level(struct drm_i915_private *i915, struct ttm_resource *res,
 		     struct ttm_tt *ttm)
@@ -129,11 +152,11 @@ int i915_ttm_move_notify(struct ttm_buffer_object *bo)
 	return 0;
 }
 
-static int i915_ttm_accel_move(struct ttm_buffer_object *bo,
-			       bool clear,
-			       struct ttm_resource *dst_mem,
-			       struct ttm_tt *dst_ttm,
-			       struct sg_table *dst_st)
+static struct dma_fence *i915_ttm_accel_move(struct ttm_buffer_object *bo,
+					     bool clear,
+					     struct ttm_resource *dst_mem,
+					     struct ttm_tt *dst_ttm,
+					     struct sg_table *dst_st)
 {
 	struct drm_i915_private *i915 = container_of(bo->bdev, typeof(*i915),
 						     bdev);
@@ -144,30 +167,29 @@ static int i915_ttm_accel_move(struct ttm_buffer_object *bo,
 	int ret;
 
 	if (!i915->gt.migrate.context || intel_gt_is_wedged(&i915->gt))
-		return -EINVAL;
+		return ERR_PTR(-EINVAL);
+
+	/* With fail_gpu_migration, we always perform a GPU clear. */
+	if (I915_SELFTEST_ONLY(fail_gpu_migration))
+		clear = true;
 
 	dst_level = i915_ttm_cache_level(i915, dst_mem, dst_ttm);
 	if (clear) {
-		if (bo->type == ttm_bo_type_kernel)
-			return -EINVAL;
+		if (bo->type == ttm_bo_type_kernel &&
+		    !I915_SELFTEST_ONLY(fail_gpu_migration))
+			return ERR_PTR(-EINVAL);
 
 		intel_engine_pm_get(i915->gt.migrate.context->engine);
 		ret = intel_context_migrate_clear(i915->gt.migrate.context, NULL,
 						  dst_st->sgl, dst_level,
 						  i915_ttm_gtt_binds_lmem(dst_mem),
 						  0, &rq);
-
-		if (!ret && rq) {
-			i915_request_wait(rq, 0, MAX_SCHEDULE_TIMEOUT);
-			i915_request_put(rq);
-		}
-		intel_engine_pm_put(i915->gt.migrate.context->engine);
 	} else {
 		struct i915_refct_sgt *src_rsgt =
 			i915_ttm_resource_get_st(obj, bo->resource);
 
 		if (IS_ERR(src_rsgt))
-			return PTR_ERR(src_rsgt);
+			return ERR_CAST(src_rsgt);
 
 		src_level = i915_ttm_cache_level(i915, bo->resource, src_ttm);
 		intel_engine_pm_get(i915->gt.migrate.context->engine);
@@ -178,15 +200,182 @@ static int i915_ttm_accel_move(struct ttm_buffer_object *bo,
 						 dst_st->sgl, dst_level,
 						 i915_ttm_gtt_binds_lmem(dst_mem),
 						 &rq);
+
 		i915_refct_sgt_put(src_rsgt);
-		if (!ret && rq) {
-			i915_request_wait(rq, 0, MAX_SCHEDULE_TIMEOUT);
-			i915_request_put(rq);
-		}
-		intel_engine_pm_put(i915->gt.migrate.context->engine);
 	}
 
-	return ret;
+	intel_engine_pm_put(i915->gt.migrate.context->engine);
+
+	if (ret && rq) {
+		i915_request_wait(rq, 0, MAX_SCHEDULE_TIMEOUT);
+		i915_request_put(rq);
+	}
+
+	return ret ? ERR_PTR(ret) : &rq->fence;
+}
+
+/**
+ * struct i915_ttm_memcpy_arg - argument for the bo memcpy functionality.
+ * @_dst_iter: Storage space for the destination kmap iterator.
+ * @_src_iter: Storage space for the source kmap iterator.
+ * @dst_iter: Pointer to the destination kmap iterator.
+ * @src_iter: Pointer to the source kmap iterator.
+ * @clear: Whether to clear instead of copy.
+ * @src_rsgt: Refcounted scatter-gather list of source memory.
+ * @dst_rsgt: Refcounted scatter-gather list of destination memory.
+ */
+struct i915_ttm_memcpy_arg {
+	union {
+		struct ttm_kmap_iter_tt tt;
+		struct ttm_kmap_iter_iomap io;
+	} _dst_iter,
+	_src_iter;
+	struct ttm_kmap_iter *dst_iter;
+	struct ttm_kmap_iter *src_iter;
+	unsigned long num_pages;
+	bool clear;
+	struct i915_refct_sgt *src_rsgt;
+	struct i915_refct_sgt *dst_rsgt;
+};
+
+/**
+ * struct i915_ttm_memcpy_work - Async memcpy worker under a dma-fence.
+ * @fence: The dma-fence.
+ * @work: The work struct use for the memcpy work.
+ * @lock: The fence lock. Not used to protect anything else ATM.
+ * @irq_work: Low latency worker to signal the fence since it can't be done
+ * from the callback for lockdep reasons.
+ * @cb: Callback for the accelerated migration fence.
+ * @arg: The argument for the memcpy functionality.
+ */
+struct i915_ttm_memcpy_work {
+	struct dma_fence fence;
+	struct work_struct work;
+	/* The fence lock */
+	spinlock_t lock;
+	struct irq_work irq_work;
+	struct dma_fence_cb cb;
+	struct i915_ttm_memcpy_arg arg;
+};
+
+static void i915_ttm_move_memcpy(struct i915_ttm_memcpy_arg *arg)
+{
+	ttm_move_memcpy(arg->clear, arg->num_pages,
+			arg->dst_iter, arg->src_iter);
+}
+
+static void i915_ttm_memcpy_init(struct i915_ttm_memcpy_arg *arg,
+				 struct ttm_buffer_object *bo, bool clear,
+				 struct ttm_resource *dst_mem,
+				 struct ttm_tt *dst_ttm,
+				 struct i915_refct_sgt *dst_rsgt)
+{
+	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
+	struct intel_memory_region *dst_reg, *src_reg;
+
+	dst_reg = i915_ttm_region(bo->bdev, dst_mem->mem_type);
+	src_reg = i915_ttm_region(bo->bdev, bo->resource->mem_type);
+	GEM_BUG_ON(!dst_reg || !src_reg);
+
+	arg->dst_iter = !i915_ttm_cpu_maps_iomem(dst_mem) ?
+		ttm_kmap_iter_tt_init(&arg->_dst_iter.tt, dst_ttm) :
+		ttm_kmap_iter_iomap_init(&arg->_dst_iter.io, &dst_reg->iomap,
+					 &dst_rsgt->table, dst_reg->region.start);
+
+	arg->src_iter = !i915_ttm_cpu_maps_iomem(bo->resource) ?
+		ttm_kmap_iter_tt_init(&arg->_src_iter.tt, bo->ttm) :
+		ttm_kmap_iter_iomap_init(&arg->_src_iter.io, &src_reg->iomap,
+					 &obj->ttm.cached_io_rsgt->table,
+					 src_reg->region.start);
+	arg->clear = clear;
+	arg->num_pages = bo->base.size >> PAGE_SHIFT;
+
+	arg->dst_rsgt = i915_refct_sgt_get(dst_rsgt);
+	arg->src_rsgt = clear ? NULL :
+		i915_ttm_resource_get_st(obj, bo->resource);
+}
+
+static void i915_ttm_memcpy_release(struct i915_ttm_memcpy_arg *arg)
+{
+	i915_refct_sgt_put(arg->src_rsgt);
+	i915_refct_sgt_put(arg->dst_rsgt);
+}
+
+static void __memcpy_work(struct work_struct *work)
+{
+	struct i915_ttm_memcpy_work *copy_work =
+		container_of(work, typeof(*copy_work), work);
+	struct i915_ttm_memcpy_arg *arg = &copy_work->arg;
+	bool cookie = dma_fence_begin_signalling();
+
+	i915_ttm_move_memcpy(arg);
+	dma_fence_end_signalling(cookie);
+
+	dma_fence_signal(&copy_work->fence);
+
+	i915_ttm_memcpy_release(arg);
+	dma_fence_put(&copy_work->fence);
+}
+
+static void __memcpy_irq_work(struct irq_work *irq_work)
+{
+	struct i915_ttm_memcpy_work *copy_work =
+		container_of(irq_work, typeof(*copy_work), irq_work);
+	struct i915_ttm_memcpy_arg *arg = &copy_work->arg;
+
+	dma_fence_signal(&copy_work->fence);
+	i915_ttm_memcpy_release(arg);
+	dma_fence_put(&copy_work->fence);
+}
+
+static void __memcpy_cb(struct dma_fence *fence, struct dma_fence_cb *cb)
+{
+	struct i915_ttm_memcpy_work *copy_work =
+		container_of(cb, typeof(*copy_work), cb);
+
+	if (unlikely(fence->error || I915_SELFTEST_ONLY(fail_gpu_migration))) {
+		INIT_WORK(&copy_work->work, __memcpy_work);
+		queue_work(system_unbound_wq, &copy_work->work);
+	} else {
+		init_irq_work(&copy_work->irq_work, __memcpy_irq_work);
+		irq_work_queue(&copy_work->irq_work);
+	}
+}
+
+static const char *get_driver_name(struct dma_fence *fence)
+{
+	return "i915_ttm_memcpy_work";
+}
+
+static const char *get_timeline_name(struct dma_fence *fence)
+{
+	return "unbound";
+}
+
+static const struct dma_fence_ops dma_fence_memcpy_ops = {
+	.get_driver_name = get_driver_name,
+	.get_timeline_name = get_timeline_name,
+};
+
+static struct dma_fence *
+i915_ttm_memcpy_work_arm(struct i915_ttm_memcpy_work *work,
+			 struct dma_fence *dep)
+{
+	int ret;
+
+	spin_lock_init(&work->lock);
+	dma_fence_init(&work->fence, &dma_fence_memcpy_ops, &work->lock, 0, 0);
+	dma_fence_get(&work->fence);
+	ret = dma_fence_add_callback(dep, &work->cb, __memcpy_cb);
+	if (ret) {
+		if (ret != -ENOENT)
+			dma_fence_wait(dep, false);
+
+		return ERR_PTR(I915_SELFTEST_ONLY(fail_gpu_migration) ? -EINVAL :
+			       dep->error);
+	}
+
+	return &work->fence;
 }
 
 /**
@@ -199,42 +388,68 @@ static int i915_ttm_accel_move(struct ttm_buffer_object *bo,
  * @allow_accel: Whether to allow acceleration.
  */
 void __i915_ttm_move(struct ttm_buffer_object *bo, bool clear,
-		     struct ttm_resource *dst_mem,
-		     struct ttm_tt *dst_ttm,
-		     struct i915_refct_sgt *dst_rsgt,
-		     bool allow_accel)
+		     struct ttm_resource *dst_mem, struct ttm_tt *dst_ttm,
+		     struct i915_refct_sgt *dst_rsgt, bool allow_accel)
 {
-	int ret = -EINVAL;
+	struct i915_ttm_memcpy_work *copy_work = NULL;
+	struct i915_ttm_memcpy_arg _arg, *arg = &_arg;
+	struct dma_fence *fence = ERR_PTR(-EINVAL);
+
+	if (allow_accel) {
+		fence = i915_ttm_accel_move(bo, clear, dst_mem, dst_ttm,
+					    &dst_rsgt->table);
+
+		/*
+		 * We only need to intercept the error when moving to lmem.
+		 * When moving to system, TTM or shmem will provide us with
+		 * cleared pages.
+		 */
+		if (!IS_ERR(fence) && !i915_ttm_gtt_binds_lmem(dst_mem) &&
+		    !I915_SELFTEST_ONLY(fail_gpu_migration ||
+					fail_work_allocation))
+			goto out;
+	}
 
-	if (allow_accel)
-		ret = i915_ttm_accel_move(bo, clear, dst_mem, dst_ttm,
-					  &dst_rsgt->table);
-	if (ret) {
-		struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
-		struct intel_memory_region *dst_reg, *src_reg;
-		union {
-			struct ttm_kmap_iter_tt tt;
-			struct ttm_kmap_iter_iomap io;
-		} _dst_iter, _src_iter;
-		struct ttm_kmap_iter *dst_iter, *src_iter;
-
-		dst_reg = i915_ttm_region(bo->bdev, dst_mem->mem_type);
-		src_reg = i915_ttm_region(bo->bdev, bo->resource->mem_type);
-		GEM_BUG_ON(!dst_reg || !src_reg);
-
-		dst_iter = !i915_ttm_cpu_maps_iomem(dst_mem) ?
-			ttm_kmap_iter_tt_init(&_dst_iter.tt, dst_ttm) :
-			ttm_kmap_iter_iomap_init(&_dst_iter.io, &dst_reg->iomap,
-						 &dst_rsgt->table,
-						 dst_reg->region.start);
-
-		src_iter = !i915_ttm_cpu_maps_iomem(bo->resource) ?
-			ttm_kmap_iter_tt_init(&_src_iter.tt, bo->ttm) :
-			ttm_kmap_iter_iomap_init(&_src_iter.io, &src_reg->iomap,
-						 &obj->ttm.cached_io_rsgt->table,
-						 src_reg->region.start);
-
-		ttm_move_memcpy(clear, dst_mem->num_pages, dst_iter, src_iter);
+	/* If we've scheduled gpu migration. Try to arm error intercept. */
+	if (!IS_ERR(fence)) {
+		struct dma_fence *dep = fence;
+
+		if (!I915_SELFTEST_ONLY(fail_work_allocation))
+			copy_work = kzalloc(sizeof(*copy_work), GFP_KERNEL);
+
+		if (copy_work) {
+			arg = &copy_work->arg;
+			i915_ttm_memcpy_init(arg, bo, clear, dst_mem, dst_ttm,
+					     dst_rsgt);
+			fence = i915_ttm_memcpy_work_arm(copy_work, dep);
+		} else {
+			dma_fence_wait(dep, false);
+			fence = ERR_PTR(I915_SELFTEST_ONLY(fail_gpu_migration) ?
+					-EINVAL : fence->error);
+		}
+		dma_fence_put(dep);
+
+		if (!IS_ERR(fence))
+			goto out;
+	}
+
+	/* Error intercept failed or no accelerated migration to start with */
+	if (!copy_work)
+		i915_ttm_memcpy_init(arg, bo, clear, dst_mem, dst_ttm,
+				     dst_rsgt);
+	i915_ttm_move_memcpy(arg);
+	i915_ttm_memcpy_release(arg);
+	kfree(copy_work);
+
+	return;
+out:
+	/* Sync here for now, forward the fence to caller when fully async. */
+	if (fence) {
+		dma_fence_wait(fence, false);
+		dma_fence_put(fence);
+	} else if (copy_work) {
+		i915_ttm_memcpy_release(arg);
+		kfree(copy_work);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.h b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.h
index 68294b16e5c2..75b87e752af2 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.h
@@ -7,6 +7,8 @@
 
 #include <linux/types.h>
 
+#include "i915_selftest.h"
+
 struct ttm_buffer_object;
 struct ttm_operation_ctx;
 struct ttm_place;
@@ -18,6 +20,9 @@ struct i915_refct_sgt;
 
 int i915_ttm_move_notify(struct ttm_buffer_object *bo);
 
+I915_SELFTEST_DECLARE(void i915_ttm_migrate_set_failure_modes(bool gpu_migration,
+							      bool work_allocation));
+
 /* Internal I915 TTM declarations and definitions below. */
 
 void __i915_ttm_move(struct ttm_buffer_object *bo, bool clear,
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
index 28a700f08b49..4b8e6b098659 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
@@ -4,6 +4,7 @@
  */
 
 #include "gt/intel_migrate.h"
+#include "gem/i915_gem_ttm_move.h"
 
 static int igt_fill_check_buffer(struct drm_i915_gem_object *obj,
 				 bool fill)
@@ -227,13 +228,34 @@ static int igt_lmem_pages_migrate(void *arg)
 	return err;
 }
 
+static int igt_lmem_pages_failsafe_migrate(void *arg)
+{
+	int fail_gpu, fail_alloc, ret;
+
+	for (fail_gpu = 0; fail_gpu < 2; ++fail_gpu) {
+		for (fail_alloc = 0; fail_alloc < 2; ++fail_alloc) {
+			pr_info("Simulated failure modes: gpu: %d, alloc: %d\n",
+				fail_gpu, fail_alloc);
+			i915_ttm_migrate_set_failure_modes(fail_gpu,
+							   fail_alloc);
+			ret = igt_lmem_pages_migrate(arg);
+			if (ret)
+				goto out_err;
+		}
+	}
+
+out_err:
+	i915_ttm_migrate_set_failure_modes(false, false);
+	return ret;
+}
+
 int i915_gem_migrate_live_selftests(struct drm_i915_private *i915)
 {
 	static const struct i915_subtest tests[] = {
 		SUBTEST(igt_smem_create_migrate),
 		SUBTEST(igt_lmem_create_migrate),
 		SUBTEST(igt_same_create_migrate),
-		SUBTEST(igt_lmem_pages_migrate),
+		SUBTEST(igt_lmem_pages_failsafe_migrate),
 	};
 
 	if (!HAS_LMEM(i915))
-- 
2.31.1

