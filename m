Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D196D3FB5B1
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Aug 2021 14:10:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B336A89DBF;
	Mon, 30 Aug 2021 12:09:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F148289CF6
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Aug 2021 12:09:55 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Date: Mon, 30 Aug 2021 14:10:06 +0200
Message-Id: <20210830121006.2978297-20-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
References: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 19/19] drm/i915: Add accelerated migration to ttm
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Expose the fence to ttm_bo->moving, which will get picked up by i915
through the i915_gem_object_get_moving_fence call. Should be sufficient
for the needs we have.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 104 ++++++++++++------------
 1 file changed, 54 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index eaf2ff29dd4a..751abbc3ccd3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -353,10 +353,14 @@ static void i915_ttm_swap_notify(struct ttm_buffer_object *bo)
 
 static void i915_ttm_delete_mem_notify(struct ttm_buffer_object *bo)
 {
-	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
+	struct drm_i915_gem_object *obj;
 
-	if (likely(obj))
-		i915_ttm_free_cached_io_st(obj);
+	if (bo->destroy != i915_ttm_bo_destroy)
+		return;
+
+	obj = i915_ttm_to_gem(bo);
+
+	i915_ttm_free_cached_io_st(obj);
 }
 
 static struct intel_memory_region *
@@ -426,10 +430,10 @@ i915_ttm_resource_get_st(struct drm_i915_gem_object *obj,
 	return intel_region_ttm_resource_to_st(obj->mm.region, res);
 }
 
-static int i915_ttm_accel_move(struct ttm_buffer_object *bo,
-			       bool clear,
-			       struct ttm_resource *dst_mem,
-			       struct sg_table *dst_st)
+static struct i915_request *i915_ttm_accel_move(struct ttm_buffer_object *bo,
+						bool clear,
+						struct ttm_resource *dst_mem,
+						struct sg_table *dst_st)
 {
 	struct drm_i915_private *i915 = container_of(bo->bdev, typeof(*i915),
 						     bdev);
@@ -437,18 +441,18 @@ static int i915_ttm_accel_move(struct ttm_buffer_object *bo,
 		ttm_manager_type(bo->bdev, bo->resource->mem_type);
 	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
 	struct sg_table *src_st;
-	struct i915_request *rq;
+	struct i915_request *rq = NULL;
 	struct ttm_tt *ttm = bo->ttm;
 	enum i915_cache_level src_level, dst_level;
 	int ret;
 
 	if (!i915->gt.migrate.context)
-		return -EINVAL;
+		return ERR_PTR(-EINVAL);
 
 	dst_level = i915_ttm_cache_level(i915, dst_mem, ttm);
 	if (clear) {
 		if (bo->type == ttm_bo_type_kernel)
-			return -EINVAL;
+			return ERR_PTR(-EINVAL);
 
 		intel_engine_pm_get(i915->gt.migrate.context->engine);
 		ret = intel_context_migrate_clear(i915->gt.migrate.context, NULL,
@@ -456,10 +460,6 @@ static int i915_ttm_accel_move(struct ttm_buffer_object *bo,
 						  gpu_binds_iomem(dst_mem),
 						  0, &rq);
 
-		if (!ret && rq) {
-			i915_request_wait(rq, 0, MAX_SCHEDULE_TIMEOUT);
-			i915_request_put(rq);
-		}
 		intel_engine_pm_put(i915->gt.migrate.context->engine);
 	} else {
 		src_st = src_man->use_tt ? i915_ttm_tt_get_st(ttm) :
@@ -473,49 +473,40 @@ static int i915_ttm_accel_move(struct ttm_buffer_object *bo,
 						 dst_st->sgl, dst_level,
 						 gpu_binds_iomem(dst_mem),
 						 &rq);
-		if (!ret && rq) {
-			i915_request_wait(rq, 0, MAX_SCHEDULE_TIMEOUT);
-			i915_request_put(rq);
-		}
 		intel_engine_pm_put(i915->gt.migrate.context->engine);
 	}
 
-	return ret;
+	return ret ? ERR_PTR(ret) : rq;
 }
 
-static void __i915_ttm_move(struct ttm_buffer_object *bo, bool clear,
+static void i915_ttm_memcpy(struct ttm_buffer_object *bo, bool clear,
 			    struct ttm_resource *dst_mem,
 			    struct sg_table *dst_st)
 {
-	int ret;
+	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
+	struct intel_memory_region *dst_reg, *src_reg;
+	union {
+		struct ttm_kmap_iter_tt tt;
+		struct ttm_kmap_iter_iomap io;
+	} _dst_iter, _src_iter;
+	struct ttm_kmap_iter *dst_iter, *src_iter;
 
-	ret = i915_ttm_accel_move(bo, clear, dst_mem, dst_st);
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
-		dst_iter = !cpu_maps_iomem(dst_mem) ?
-			ttm_kmap_iter_tt_init(&_dst_iter.tt, bo->ttm) :
-			ttm_kmap_iter_iomap_init(&_dst_iter.io, &dst_reg->iomap,
-						 dst_st, dst_reg->region.start);
-
-		src_iter = !cpu_maps_iomem(bo->resource) ?
-			ttm_kmap_iter_tt_init(&_src_iter.tt, bo->ttm) :
-			ttm_kmap_iter_iomap_init(&_src_iter.io, &src_reg->iomap,
-						 obj->ttm.cached_io_st,
-						 src_reg->region.start);
-
-		ttm_move_memcpy(clear, dst_mem->num_pages, dst_iter, src_iter);
-	}
+	dst_reg = i915_ttm_region(bo->bdev, dst_mem->mem_type);
+	src_reg = i915_ttm_region(bo->bdev, bo->resource->mem_type);
+	GEM_BUG_ON(!dst_reg || !src_reg);
+
+	dst_iter = !cpu_maps_iomem(dst_mem) ?
+		ttm_kmap_iter_tt_init(&_dst_iter.tt, bo->ttm) :
+		ttm_kmap_iter_iomap_init(&_dst_iter.io, &dst_reg->iomap,
+					  dst_st, dst_reg->region.start);
+
+	src_iter = !cpu_maps_iomem(bo->resource) ?
+		ttm_kmap_iter_tt_init(&_src_iter.tt, bo->ttm) :
+		ttm_kmap_iter_iomap_init(&_src_iter.io, &src_reg->iomap,
+					  obj->ttm.cached_io_st,
+					  src_reg->region.start);
+
+	ttm_move_memcpy(clear, dst_mem->num_pages, dst_iter, src_iter);
 }
 
 static int i915_ttm_move(struct ttm_buffer_object *bo, bool evict,
@@ -530,6 +521,7 @@ static int i915_ttm_move(struct ttm_buffer_object *bo, bool evict,
 	struct sg_table *dst_st;
 	bool clear;
 	int ret;
+	struct i915_request *rq;
 
 	/* Sync for now. We could do the actual copy async. */
 	ret = ttm_bo_wait_ctx(bo, ctx);
@@ -558,10 +550,22 @@ static int i915_ttm_move(struct ttm_buffer_object *bo, bool evict,
 		return PTR_ERR(dst_st);
 
 	clear = !cpu_maps_iomem(bo->resource) && (!ttm || !ttm_tt_is_populated(ttm));
+
+	rq = NULL;
 	if (!(clear && ttm && !(ttm->page_flags & TTM_PAGE_FLAG_ZERO_ALLOC)))
-		__i915_ttm_move(bo, clear, dst_mem, dst_st);
+		rq = i915_ttm_accel_move(bo, clear, dst_mem, dst_st);
+
+	if (IS_ERR(rq))
+		i915_ttm_memcpy(bo, clear, dst_mem, dst_st);
+
+	/* Below dst_mem becomes bo->resource. */
+	if (!IS_ERR_OR_NULL(rq)) {
+		ttm_bo_move_accel_cleanup(bo, &rq->fence, evict, true, dst_mem);
+		i915_request_put(rq);
+	} else {
+		ttm_bo_move_sync_cleanup(bo, dst_mem);
+	}
 
-	ttm_bo_move_sync_cleanup(bo, dst_mem);
 	i915_ttm_adjust_domains_after_move(obj);
 	i915_ttm_free_cached_io_st(obj);
 
-- 
2.32.0

