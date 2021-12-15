Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F90447567E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Dec 2021 11:36:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79BC289C13;
	Wed, 15 Dec 2021 10:36:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1738110E1DE;
 Wed, 15 Dec 2021 10:36:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10198"; a="219214505"
X-IronPort-AV: E=Sophos;i="5.88,207,1635231600"; d="scan'208";a="219214505"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2021 02:36:29 -0800
X-IronPort-AV: E=Sophos;i="5.88,207,1635231600"; d="scan'208";a="682442087"
Received: from asparren-mobl2.ger.corp.intel.com (HELO
 thellstr-mobl1.intel.com) ([10.249.254.165])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2021 02:36:27 -0800
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 15 Dec 2021 11:36:05 +0100
Message-Id: <20211215103611.777665-2-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211215103611.777665-1-thomas.hellstrom@linux.intel.com>
References: <20211215103611.777665-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/7] drm/i915: Avoid using the i915_fence_array
 when collecting dependencies
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

Since the gt migration code was using only a single fence for
dependencies, these were collected in a dma_fence_array. However, it
turns out that it's illegal to use some dma_fences in a dma_fence_array,
in particular other dma_fence_arrays and dma_fence_chains, and this
causes trouble for us moving forward.

Have the gt migration code instead take a const struct i915_deps for
dependencies. This means we can skip the dma_fence_array creation
and instead pass the struct i915_deps instead to circumvent the
problem.

Fixes: 5652df829b3c ("drm/i915/ttm: Update i915_gem_obj_copy_ttm() to be asynchronous")
Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c | 115 +++++--------------
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.h |  17 +++
 drivers/gpu/drm/i915/gt/intel_migrate.c      |  24 ++--
 drivers/gpu/drm/i915/gt/intel_migrate.h      |   9 +-
 drivers/gpu/drm/i915/i915_request.c          |  22 ++++
 drivers/gpu/drm/i915/i915_request.h          |   2 +
 6 files changed, 86 insertions(+), 103 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
index 80df9f592407..09463874ef24 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
@@ -3,8 +3,6 @@
  * Copyright © 2021 Intel Corporation
  */
 
-#include <linux/dma-fence-array.h>
-
 #include <drm/ttm/ttm_bo_driver.h>
 
 #include "i915_drv.h"
@@ -65,32 +63,13 @@ void i915_ttm_migrate_set_failure_modes(bool gpu_migration,
  * A struct i915_deps need to be initialized using i915_deps_init().
  * If i915_deps_add_dependency() or i915_deps_add_resv() return an
  * error code they will internally call i915_deps_fini(), which frees
- * all internal references and allocations. After a call to
- * i915_deps_to_fence(), or i915_deps_sync(), the struct should similarly
- * be viewed as uninitialized.
+ * all internal references and allocations.
  *
  * We might want to break this out into a separate file as a utility.
  */
 
 #define I915_DEPS_MIN_ALLOC_CHUNK 8U
 
-/**
- * struct i915_deps - Collect dependencies into a single dma-fence
- * @single: Storage for pointer if the collection is a single fence.
- * @fence: Allocated array of fence pointers if more than a single fence;
- * otherwise points to the address of @single.
- * @num_deps: Current number of dependency fences.
- * @fences_size: Size of the @fences array in number of pointers.
- * @gfp: Allocation mode.
- */
-struct i915_deps {
-	struct dma_fence *single;
-	struct dma_fence **fences;
-	unsigned int num_deps;
-	unsigned int fences_size;
-	gfp_t gfp;
-};
-
 static void i915_deps_reset_fences(struct i915_deps *deps)
 {
 	if (deps->fences != &deps->single)
@@ -163,7 +142,7 @@ static int i915_deps_grow(struct i915_deps *deps, struct dma_fence *fence,
 	return ret;
 }
 
-static int i915_deps_sync(struct i915_deps *deps,
+static int i915_deps_sync(const struct i915_deps *deps,
 			  const struct ttm_operation_ctx *ctx)
 {
 	struct dma_fence **fences = deps->fences;
@@ -183,7 +162,6 @@ static int i915_deps_sync(struct i915_deps *deps,
 			break;
 	}
 
-	i915_deps_fini(deps);
 	return ret;
 }
 
@@ -221,34 +199,6 @@ static int i915_deps_add_dependency(struct i915_deps *deps,
 	return i915_deps_grow(deps, fence, ctx);
 }
 
-static struct dma_fence *i915_deps_to_fence(struct i915_deps *deps,
-					    const struct ttm_operation_ctx *ctx)
-{
-	struct dma_fence_array *array;
-
-	if (deps->num_deps == 0)
-		return NULL;
-
-	if (deps->num_deps == 1) {
-		deps->num_deps = 0;
-		return deps->fences[0];
-	}
-
-	/*
-	 * TODO: Alter the allocation mode here to not try too hard to
-	 * make things async.
-	 */
-	array = dma_fence_array_create(deps->num_deps, deps->fences, 0, 0,
-				       false);
-	if (!array)
-		return ERR_PTR(i915_deps_sync(deps, ctx));
-
-	deps->fences = NULL;
-	i915_deps_reset_fences(deps);
-
-	return &array->base;
-}
-
 static int i915_deps_add_resv(struct i915_deps *deps, struct dma_resv *resv,
 			      bool all, const bool no_excl,
 			      const struct ttm_operation_ctx *ctx)
@@ -387,7 +337,7 @@ static struct dma_fence *i915_ttm_accel_move(struct ttm_buffer_object *bo,
 					     struct ttm_resource *dst_mem,
 					     struct ttm_tt *dst_ttm,
 					     struct sg_table *dst_st,
-					     struct dma_fence *dep)
+					     const struct i915_deps *deps)
 {
 	struct drm_i915_private *i915 = container_of(bo->bdev, typeof(*i915),
 						     bdev);
@@ -411,7 +361,7 @@ static struct dma_fence *i915_ttm_accel_move(struct ttm_buffer_object *bo,
 			return ERR_PTR(-EINVAL);
 
 		intel_engine_pm_get(i915->gt.migrate.context->engine);
-		ret = intel_context_migrate_clear(i915->gt.migrate.context, dep,
+		ret = intel_context_migrate_clear(i915->gt.migrate.context, deps,
 						  dst_st->sgl, dst_level,
 						  i915_ttm_gtt_binds_lmem(dst_mem),
 						  0, &rq);
@@ -425,7 +375,7 @@ static struct dma_fence *i915_ttm_accel_move(struct ttm_buffer_object *bo,
 		src_level = i915_ttm_cache_level(i915, bo->resource, src_ttm);
 		intel_engine_pm_get(i915->gt.migrate.context->engine);
 		ret = intel_context_migrate_copy(i915->gt.migrate.context,
-						 dep, src_rsgt->table.sgl,
+						 deps, src_rsgt->table.sgl,
 						 src_level,
 						 i915_ttm_gtt_binds_lmem(bo->resource),
 						 dst_st->sgl, dst_level,
@@ -610,10 +560,11 @@ i915_ttm_memcpy_work_arm(struct i915_ttm_memcpy_work *work,
 }
 
 static struct dma_fence *
-__i915_ttm_move(struct ttm_buffer_object *bo, bool clear,
+__i915_ttm_move(struct ttm_buffer_object *bo,
+		const struct ttm_operation_ctx *ctx, bool clear,
 		struct ttm_resource *dst_mem, struct ttm_tt *dst_ttm,
 		struct i915_refct_sgt *dst_rsgt, bool allow_accel,
-		struct dma_fence *move_dep)
+		const struct i915_deps *move_deps)
 {
 	struct i915_ttm_memcpy_work *copy_work = NULL;
 	struct i915_ttm_memcpy_arg _arg, *arg = &_arg;
@@ -621,7 +572,7 @@ __i915_ttm_move(struct ttm_buffer_object *bo, bool clear,
 
 	if (allow_accel) {
 		fence = i915_ttm_accel_move(bo, clear, dst_mem, dst_ttm,
-					    &dst_rsgt->table, move_dep);
+					    &dst_rsgt->table, move_deps);
 
 		/*
 		 * We only need to intercept the error when moving to lmem.
@@ -655,8 +606,8 @@ __i915_ttm_move(struct ttm_buffer_object *bo, bool clear,
 
 		if (!IS_ERR(fence))
 			goto out;
-	} else if (move_dep) {
-		int err = dma_fence_wait(move_dep, true);
+	} else if (move_deps) {
+		int err = i915_deps_sync(move_deps, ctx);
 
 		if (err)
 			return ERR_PTR(err);
@@ -680,29 +631,20 @@ __i915_ttm_move(struct ttm_buffer_object *bo, bool clear,
 	return fence;
 }
 
-static struct dma_fence *prev_fence(struct ttm_buffer_object *bo,
-				    struct ttm_operation_ctx *ctx)
+int prev_deps(struct ttm_buffer_object *bo, struct ttm_operation_ctx *ctx,
+	      struct i915_deps *deps)
 {
-	struct i915_deps deps;
 	int ret;
 
-	/*
-	 * Instead of trying hard with GFP_KERNEL to allocate memory,
-	 * the dependency collection will just sync if it doesn't
-	 * succeed.
-	 */
-	i915_deps_init(&deps, GFP_KERNEL | __GFP_NORETRY | __GFP_NOWARN);
-	ret = i915_deps_add_dependency(&deps, bo->moving, ctx);
+	ret = i915_deps_add_dependency(deps, bo->moving, ctx);
 	if (!ret)
 		/*
 		 * TODO: Only await excl fence here, and shared fences before
 		 * signaling the migration fence.
 		 */
-		ret = i915_deps_add_resv(&deps, bo->base.resv, true, false, ctx);
-	if (ret)
-		return ERR_PTR(ret);
+		ret = i915_deps_add_resv(deps, bo->base.resv, true, false, ctx);
 
-	return i915_deps_to_fence(&deps, ctx);
+	return ret;
 }
 
 /**
@@ -756,16 +698,18 @@ int i915_ttm_move(struct ttm_buffer_object *bo, bool evict,
 
 	clear = !i915_ttm_cpu_maps_iomem(bo->resource) && (!ttm || !ttm_tt_is_populated(ttm));
 	if (!(clear && ttm && !(ttm->page_flags & TTM_TT_FLAG_ZERO_ALLOC))) {
-		struct dma_fence *dep = prev_fence(bo, ctx);
+		struct i915_deps deps;
 
-		if (IS_ERR(dep)) {
+		i915_deps_init(&deps, GFP_KERNEL | __GFP_NORETRY | __GFP_NOWARN);
+		ret = prev_deps(bo, ctx, &deps);
+		if (ret) {
 			i915_refct_sgt_put(dst_rsgt);
-			return PTR_ERR(dep);
+			return ret;
 		}
 
-		migration_fence = __i915_ttm_move(bo, clear, dst_mem, bo->ttm,
-						  dst_rsgt, true, dep);
-		dma_fence_put(dep);
+		migration_fence = __i915_ttm_move(bo, ctx, clear, dst_mem, bo->ttm,
+						  dst_rsgt, true, &deps);
+		i915_deps_fini(&deps);
 	}
 
 	/* We can possibly get an -ERESTARTSYS here */
@@ -826,7 +770,7 @@ int i915_gem_obj_copy_ttm(struct drm_i915_gem_object *dst,
 		.interruptible = intr,
 	};
 	struct i915_refct_sgt *dst_rsgt;
-	struct dma_fence *copy_fence, *dep_fence;
+	struct dma_fence *copy_fence;
 	struct i915_deps deps;
 	int ret, shared_err;
 
@@ -847,15 +791,12 @@ int i915_gem_obj_copy_ttm(struct drm_i915_gem_object *dst,
 	if (ret)
 		return ret;
 
-	dep_fence = i915_deps_to_fence(&deps, &ctx);
-	if (IS_ERR(dep_fence))
-		return PTR_ERR(dep_fence);
-
 	dst_rsgt = i915_ttm_resource_get_st(dst, dst_bo->resource);
-	copy_fence = __i915_ttm_move(src_bo, false, dst_bo->resource,
+	copy_fence = __i915_ttm_move(src_bo, &ctx, false, dst_bo->resource,
 				     dst_bo->ttm, dst_rsgt, allow_accel,
-				     dep_fence);
+				     &deps);
 
+	i915_deps_fini(&deps);
 	i915_refct_sgt_put(dst_rsgt);
 	if (IS_ERR_OR_NULL(copy_fence))
 		return PTR_ERR_OR_ZERO(copy_fence);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.h b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.h
index d2e7f149e05c..138b7647a558 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.h
@@ -18,6 +18,23 @@ struct ttm_tt;
 struct drm_i915_gem_object;
 struct i915_refct_sgt;
 
+/**
+ * struct i915_deps - Collect dependencies into a single dma-fence
+ * @single: Storage for pointer if the collection is a single fence.
+ * @fences: Allocated array of fence pointers if more than a single fence;
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
 int i915_ttm_move_notify(struct ttm_buffer_object *bo);
 
 I915_SELFTEST_DECLARE(void i915_ttm_migrate_set_failure_modes(bool gpu_migration,
diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
index 19a01878fee3..18b44af56969 100644
--- a/drivers/gpu/drm/i915/gt/intel_migrate.c
+++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
@@ -404,7 +404,7 @@ static int emit_copy(struct i915_request *rq, int size)
 
 int
 intel_context_migrate_copy(struct intel_context *ce,
-			   struct dma_fence *await,
+			   const struct i915_deps *deps,
 			   struct scatterlist *src,
 			   enum i915_cache_level src_cache_level,
 			   bool src_is_lmem,
@@ -431,8 +431,8 @@ intel_context_migrate_copy(struct intel_context *ce,
 			goto out_ce;
 		}
 
-		if (await) {
-			err = i915_request_await_dma_fence(rq, await);
+		if (deps) {
+			err = i915_request_await_deps(rq, deps);
 			if (err)
 				goto out_rq;
 
@@ -442,7 +442,7 @@ intel_context_migrate_copy(struct intel_context *ce,
 					goto out_rq;
 			}
 
-			await = NULL;
+			deps = NULL;
 		}
 
 		/* The PTE updates + copy must not be interrupted. */
@@ -525,7 +525,7 @@ static int emit_clear(struct i915_request *rq, int size, u32 value)
 
 int
 intel_context_migrate_clear(struct intel_context *ce,
-			    struct dma_fence *await,
+			    const struct i915_deps *deps,
 			    struct scatterlist *sg,
 			    enum i915_cache_level cache_level,
 			    bool is_lmem,
@@ -550,8 +550,8 @@ intel_context_migrate_clear(struct intel_context *ce,
 			goto out_ce;
 		}
 
-		if (await) {
-			err = i915_request_await_dma_fence(rq, await);
+		if (deps) {
+			err = i915_request_await_deps(rq, deps);
 			if (err)
 				goto out_rq;
 
@@ -561,7 +561,7 @@ intel_context_migrate_clear(struct intel_context *ce,
 					goto out_rq;
 			}
 
-			await = NULL;
+			deps = NULL;
 		}
 
 		/* The PTE updates + clear must not be interrupted. */
@@ -599,7 +599,7 @@ intel_context_migrate_clear(struct intel_context *ce,
 
 int intel_migrate_copy(struct intel_migrate *m,
 		       struct i915_gem_ww_ctx *ww,
-		       struct dma_fence *await,
+		       const struct i915_deps *deps,
 		       struct scatterlist *src,
 		       enum i915_cache_level src_cache_level,
 		       bool src_is_lmem,
@@ -624,7 +624,7 @@ int intel_migrate_copy(struct intel_migrate *m,
 	if (err)
 		goto out;
 
-	err = intel_context_migrate_copy(ce, await,
+	err = intel_context_migrate_copy(ce, deps,
 					 src, src_cache_level, src_is_lmem,
 					 dst, dst_cache_level, dst_is_lmem,
 					 out);
@@ -638,7 +638,7 @@ int intel_migrate_copy(struct intel_migrate *m,
 int
 intel_migrate_clear(struct intel_migrate *m,
 		    struct i915_gem_ww_ctx *ww,
-		    struct dma_fence *await,
+		    const struct i915_deps *deps,
 		    struct scatterlist *sg,
 		    enum i915_cache_level cache_level,
 		    bool is_lmem,
@@ -661,7 +661,7 @@ intel_migrate_clear(struct intel_migrate *m,
 	if (err)
 		goto out;
 
-	err = intel_context_migrate_clear(ce, await, sg, cache_level,
+	err = intel_context_migrate_clear(ce, deps, sg, cache_level,
 					  is_lmem, value, out);
 
 	intel_context_unpin(ce);
diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.h b/drivers/gpu/drm/i915/gt/intel_migrate.h
index 4e18e755a00b..ccc677ec4aa3 100644
--- a/drivers/gpu/drm/i915/gt/intel_migrate.h
+++ b/drivers/gpu/drm/i915/gt/intel_migrate.h
@@ -11,6 +11,7 @@
 #include "intel_migrate_types.h"
 
 struct dma_fence;
+struct i915_deps;
 struct i915_request;
 struct i915_gem_ww_ctx;
 struct intel_gt;
@@ -23,7 +24,7 @@ struct intel_context *intel_migrate_create_context(struct intel_migrate *m);
 
 int intel_migrate_copy(struct intel_migrate *m,
 		       struct i915_gem_ww_ctx *ww,
-		       struct dma_fence *await,
+		       const struct i915_deps *deps,
 		       struct scatterlist *src,
 		       enum i915_cache_level src_cache_level,
 		       bool src_is_lmem,
@@ -33,7 +34,7 @@ int intel_migrate_copy(struct intel_migrate *m,
 		       struct i915_request **out);
 
 int intel_context_migrate_copy(struct intel_context *ce,
-			       struct dma_fence *await,
+			       const struct i915_deps *deps,
 			       struct scatterlist *src,
 			       enum i915_cache_level src_cache_level,
 			       bool src_is_lmem,
@@ -45,7 +46,7 @@ int intel_context_migrate_copy(struct intel_context *ce,
 int
 intel_migrate_clear(struct intel_migrate *m,
 		    struct i915_gem_ww_ctx *ww,
-		    struct dma_fence *await,
+		    const struct i915_deps *deps,
 		    struct scatterlist *sg,
 		    enum i915_cache_level cache_level,
 		    bool is_lmem,
@@ -53,7 +54,7 @@ intel_migrate_clear(struct intel_migrate *m,
 		    struct i915_request **out);
 int
 intel_context_migrate_clear(struct intel_context *ce,
-			    struct dma_fence *await,
+			    const struct i915_deps *deps,
 			    struct scatterlist *sg,
 			    enum i915_cache_level cache_level,
 			    bool is_lmem,
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 40cf8ec0b9fc..7d804df27546 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -32,6 +32,7 @@
 #include <linux/sched/mm.h>
 
 #include "gem/i915_gem_context.h"
+#include "gem/i915_gem_ttm_move.h"
 #include "gt/intel_breadcrumbs.h"
 #include "gt/intel_context.h"
 #include "gt/intel_engine.h"
@@ -1543,6 +1544,27 @@ i915_request_await_dma_fence(struct i915_request *rq, struct dma_fence *fence)
 	return 0;
 }
 
+/**
+ * i915_request_await_deps - set this request to (async) wait upon a struct
+ * i915_deps dma_fence collection
+ * @rq: request we are wishing to use
+ * @deps: The struct i915_deps containing the dependencies.
+ *
+ * Returns 0 if successful, negative error code on error.
+ */
+int i915_request_await_deps(struct i915_request *rq, const struct i915_deps *deps)
+{
+	int i, err;
+
+	for (i = 0; i < deps->num_deps; ++i) {
+		err = i915_request_await_dma_fence(rq, deps->fences[i]);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
 /**
  * i915_request_await_object - set this request to (async) wait upon a bo
  * @to: request we are wishing to use
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index ce7714210697..170ee78c2858 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -47,6 +47,7 @@
 struct drm_file;
 struct drm_i915_gem_object;
 struct drm_printer;
+struct i915_deps;
 struct i915_request;
 
 #if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
@@ -411,6 +412,7 @@ int i915_request_await_object(struct i915_request *to,
 			      bool write);
 int i915_request_await_dma_fence(struct i915_request *rq,
 				 struct dma_fence *fence);
+int i915_request_await_deps(struct i915_request *rq, const struct i915_deps *deps);
 int i915_request_await_execution(struct i915_request *rq,
 				 struct dma_fence *fence);
 
-- 
2.31.1

