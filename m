Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC96544332C
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Nov 2021 17:39:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 984A6731E3;
	Tue,  2 Nov 2021 16:39:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 625E9731DF;
 Tue,  2 Nov 2021 16:39:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="231267883"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="231267883"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 09:34:36 -0700
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="531614883"
Received: from vanderss-mobl.ger.corp.intel.com (HELO
 thellstr-mobl1.intel.com) ([10.249.254.234])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 09:34:34 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue,  2 Nov 2021 17:34:24 +0100
Message-Id: <20211102163425.505732-2-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211102163425.505732-1-thomas.hellstrom@linux.intel.com>
References: <20211102163425.505732-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/2] drm/i915/ttm: Reorganize the ttm move
 code
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

We are about to introduce failsafe- and asynchronous migration and
ttm moves.
This will add complexity and code to the TTM move code so it makes sense
to split it out to a separate file to make the i915 TTM code easer to
digest.
Split the i915 TTM move code out and since we will have to change the name
of the gpu_binds_iomem() and cpu_maps_iomem() functions anyway,
we alter the name of gpu_binds_iomem() to i915_ttm_gtt_binds_lmem() which
is more reflecting what it is used for.
With this we also add some more documentation. Otherwise there should be
no functional change.

Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/Makefile                |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c      | 328 +++----------------
 drivers/gpu/drm/i915/gem/i915_gem_ttm.h      |  35 ++
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c | 308 +++++++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.h |  38 +++
 5 files changed, 430 insertions(+), 280 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 467872cca027..7d0d0b814670 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -154,6 +154,7 @@ gem-y += \
 	gem/i915_gem_throttle.o \
 	gem/i915_gem_tiling.o \
 	gem/i915_gem_ttm.o \
+	gem/i915_gem_ttm_move.o \
 	gem/i915_gem_ttm_pm.o \
 	gem/i915_gem_userptr.o \
 	gem/i915_gem_wait.o \
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 6a05369e2705..6369fb9b2455 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -14,13 +14,9 @@
 #include "gem/i915_gem_object.h"
 #include "gem/i915_gem_region.h"
 #include "gem/i915_gem_ttm.h"
+#include "gem/i915_gem_ttm_move.h"
 #include "gem/i915_gem_ttm_pm.h"
 
-
-#include "gt/intel_engine_pm.h"
-#include "gt/intel_gt.h"
-#include "gt/intel_migrate.h"
-
 #define I915_TTM_PRIO_PURGE     0
 #define I915_TTM_PRIO_NO_PAGES  1
 #define I915_TTM_PRIO_HAS_PAGES 2
@@ -108,28 +104,6 @@ static int i915_ttm_err_to_gem(int err)
 	return err;
 }
 
-static bool gpu_binds_iomem(struct ttm_resource *mem)
-{
-	return mem->mem_type != TTM_PL_SYSTEM;
-}
-
-static bool cpu_maps_iomem(struct ttm_resource *mem)
-{
-	/* Once / if we support GGTT, this is also false for cached ttm_tts */
-	return mem->mem_type != TTM_PL_SYSTEM;
-}
-
-static enum i915_cache_level
-i915_ttm_cache_level(struct drm_i915_private *i915, struct ttm_resource *res,
-		     struct ttm_tt *ttm)
-{
-	return ((HAS_LLC(i915) || HAS_SNOOP(i915)) && !gpu_binds_iomem(res) &&
-		ttm->caching == ttm_cached) ? I915_CACHE_LLC :
-		I915_CACHE_NONE;
-}
-
-static void i915_ttm_adjust_lru(struct drm_i915_gem_object *obj);
-
 static enum ttm_caching
 i915_ttm_select_tt_caching(const struct drm_i915_gem_object *obj)
 {
@@ -370,23 +344,14 @@ static void i915_ttm_evict_flags(struct ttm_buffer_object *bo,
 	*placement = i915_sys_placement;
 }
 
-static int i915_ttm_move_notify(struct ttm_buffer_object *bo)
-{
-	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
-	int ret;
-
-	ret = i915_gem_object_unbind(obj, I915_GEM_OBJECT_UNBIND_ACTIVE);
-	if (ret)
-		return ret;
-
-	ret = __i915_gem_object_put_pages(obj);
-	if (ret)
-		return ret;
-
-	return 0;
-}
-
-static void i915_ttm_free_cached_io_rsgt(struct drm_i915_gem_object *obj)
+/**
+ * i915_ttm_free_cached_io_rsgt - Free object cached LMEM information
+ * @obj: The GEM object
+ * This function frees any LMEM-related information that is cached on
+ * the object. For example the radix tree for fast page lookup and the
+ * cached refcounted sg-table
+ */
+void i915_ttm_free_cached_io_rsgt(struct drm_i915_gem_object *obj)
 {
 	struct radix_tree_iter iter;
 	void __rcu **slot;
@@ -403,56 +368,16 @@ static void i915_ttm_free_cached_io_rsgt(struct drm_i915_gem_object *obj)
 	obj->ttm.cached_io_rsgt = NULL;
 }
 
-static void
-i915_ttm_adjust_domains_after_move(struct drm_i915_gem_object *obj)
-{
-	struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
-
-	if (cpu_maps_iomem(bo->resource) || bo->ttm->caching != ttm_cached) {
-		obj->write_domain = I915_GEM_DOMAIN_WC;
-		obj->read_domains = I915_GEM_DOMAIN_WC;
-	} else {
-		obj->write_domain = I915_GEM_DOMAIN_CPU;
-		obj->read_domains = I915_GEM_DOMAIN_CPU;
-	}
-}
-
-static void i915_ttm_adjust_gem_after_move(struct drm_i915_gem_object *obj)
-{
-	struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
-	unsigned int cache_level;
-	unsigned int i;
-
-	/*
-	 * If object was moved to an allowable region, update the object
-	 * region to consider it migrated. Note that if it's currently not
-	 * in an allowable region, it's evicted and we don't update the
-	 * object region.
-	 */
-	if (intel_region_to_ttm_type(obj->mm.region) != bo->resource->mem_type) {
-		for (i = 0; i < obj->mm.n_placements; ++i) {
-			struct intel_memory_region *mr = obj->mm.placements[i];
-
-			if (intel_region_to_ttm_type(mr) == bo->resource->mem_type &&
-			    mr != obj->mm.region) {
-				i915_gem_object_release_memory_region(obj);
-				i915_gem_object_init_memory_region(obj, mr);
-				break;
-			}
-		}
-	}
-
-	obj->mem_flags &= ~(I915_BO_FLAG_STRUCT_PAGE | I915_BO_FLAG_IOMEM);
-
-	obj->mem_flags |= cpu_maps_iomem(bo->resource) ? I915_BO_FLAG_IOMEM :
-		I915_BO_FLAG_STRUCT_PAGE;
-
-	cache_level = i915_ttm_cache_level(to_i915(bo->base.dev), bo->resource,
-					   bo->ttm);
-	i915_gem_object_set_cache_coherency(obj, cache_level);
-}
-
-static int i915_ttm_purge(struct drm_i915_gem_object *obj)
+/**
+ * i915_ttm_purge - Clear an object of its memory
+ * @obj: The object
+ *
+ * This function is called to clear an object of it's memory when it is
+ * marked as not needed anymore.
+ *
+ * Return: 0 on success, negative error code on failure.
+ */
+int i915_ttm_purge(struct drm_i915_gem_object *obj)
 {
 	struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
 	struct i915_ttm_tt *i915_tt =
@@ -488,6 +413,7 @@ static int i915_ttm_purge(struct drm_i915_gem_object *obj)
 	i915_ttm_adjust_gem_after_move(obj);
 	i915_ttm_free_cached_io_rsgt(obj);
 	obj->mm.madv = __I915_MADV_PURGED;
+
 	return 0;
 }
 
@@ -535,17 +461,6 @@ static int i915_ttm_shrinker_release_pages(struct drm_i915_gem_object *obj,
 	return 0;
 }
 
-static void i915_ttm_swap_notify(struct ttm_buffer_object *bo)
-{
-	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
-	int ret = i915_ttm_move_notify(bo);
-
-	GEM_WARN_ON(ret);
-	GEM_WARN_ON(obj->ttm.cached_io_rsgt);
-	if (!ret && obj->mm.madv != I915_MADV_WILLNEED)
-		i915_ttm_purge(obj);
-}
-
 static void i915_ttm_delete_mem_notify(struct ttm_buffer_object *bo)
 {
 	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
@@ -556,22 +471,6 @@ static void i915_ttm_delete_mem_notify(struct ttm_buffer_object *bo)
 	}
 }
 
-static struct intel_memory_region *
-i915_ttm_region(struct ttm_device *bdev, int ttm_mem_type)
-{
-	struct drm_i915_private *i915 = container_of(bdev, typeof(*i915), bdev);
-
-	/* There's some room for optimization here... */
-	GEM_BUG_ON(ttm_mem_type != I915_PL_SYSTEM &&
-		   ttm_mem_type < I915_PL_LMEM0);
-	if (ttm_mem_type == I915_PL_SYSTEM)
-		return intel_memory_region_lookup(i915, INTEL_MEMORY_SYSTEM,
-						  0);
-
-	return intel_memory_region_lookup(i915, INTEL_MEMORY_LOCAL,
-					  ttm_mem_type - I915_PL_LMEM0);
-}
-
 static struct i915_refct_sgt *i915_ttm_tt_get_st(struct ttm_tt *ttm)
 {
 	struct i915_ttm_tt *i915_tt = container_of(ttm, typeof(*i915_tt), ttm);
@@ -600,20 +499,34 @@ static struct i915_refct_sgt *i915_ttm_tt_get_st(struct ttm_tt *ttm)
 	return i915_refct_sgt_get(&i915_tt->cached_rsgt);
 }
 
-static struct i915_refct_sgt *
+/**
+ * i915_ttm_resource_get_st - Get a refcounted sg-table pointing to the
+ * resource memory
+ * @obj: The GEM object used for sg-table caching
+ * @res: The struct ttm_resource for which an sg-table is requested.
+ *
+ * This function returns a refcounted sg-table representing the memory
+ * pointed to by @res. If @res is the object's current resource it may also
+ * cache the sg_table on the object or attempt to access an already cached
+ * sg-table. The refcounted sg-table needs to be put when no-longer in use.
+ *
+ * Return: A valid pointer to a struct i915_refct_sgt or error pointer on
+ * failure.
+ */
+struct i915_refct_sgt *
 i915_ttm_resource_get_st(struct drm_i915_gem_object *obj,
 			 struct ttm_resource *res)
 {
 	struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
 
-	if (!gpu_binds_iomem(res))
+	if (!i915_ttm_gtt_binds_lmem(res))
 		return i915_ttm_tt_get_st(bo->ttm);
 
 	/*
 	 * If CPU mapping differs, we need to add the ttm_tt pages to
 	 * the resulting st. Might make sense for GGTT.
 	 */
-	GEM_WARN_ON(!cpu_maps_iomem(res));
+	GEM_WARN_ON(!i915_ttm_cpu_maps_iomem(res));
 	if (bo->resource == res) {
 		if (!obj->ttm.cached_io_rsgt) {
 			struct i915_refct_sgt *rsgt;
@@ -631,169 +544,20 @@ i915_ttm_resource_get_st(struct drm_i915_gem_object *obj,
 	return intel_region_ttm_resource_to_rsgt(obj->mm.region, res);
 }
 
-static int i915_ttm_accel_move(struct ttm_buffer_object *bo,
-			       bool clear,
-			       struct ttm_resource *dst_mem,
-			       struct ttm_tt *dst_ttm,
-			       struct sg_table *dst_st)
-{
-	struct drm_i915_private *i915 = container_of(bo->bdev, typeof(*i915),
-						     bdev);
-	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
-	struct i915_request *rq;
-	struct ttm_tt *src_ttm = bo->ttm;
-	enum i915_cache_level src_level, dst_level;
-	int ret;
-
-	if (!i915->gt.migrate.context || intel_gt_is_wedged(&i915->gt))
-		return -EINVAL;
-
-	dst_level = i915_ttm_cache_level(i915, dst_mem, dst_ttm);
-	if (clear) {
-		if (bo->type == ttm_bo_type_kernel)
-			return -EINVAL;
-
-		intel_engine_pm_get(i915->gt.migrate.context->engine);
-		ret = intel_context_migrate_clear(i915->gt.migrate.context, NULL,
-						  dst_st->sgl, dst_level,
-						  gpu_binds_iomem(dst_mem),
-						  0, &rq);
-
-		if (!ret && rq) {
-			i915_request_wait(rq, 0, MAX_SCHEDULE_TIMEOUT);
-			i915_request_put(rq);
-		}
-		intel_engine_pm_put(i915->gt.migrate.context->engine);
-	} else {
-		struct i915_refct_sgt *src_rsgt =
-			i915_ttm_resource_get_st(obj, bo->resource);
-
-		if (IS_ERR(src_rsgt))
-			return PTR_ERR(src_rsgt);
-
-		src_level = i915_ttm_cache_level(i915, bo->resource, src_ttm);
-		intel_engine_pm_get(i915->gt.migrate.context->engine);
-		ret = intel_context_migrate_copy(i915->gt.migrate.context,
-						 NULL, src_rsgt->table.sgl,
-						 src_level,
-						 gpu_binds_iomem(bo->resource),
-						 dst_st->sgl, dst_level,
-						 gpu_binds_iomem(dst_mem),
-						 &rq);
-		i915_refct_sgt_put(src_rsgt);
-		if (!ret && rq) {
-			i915_request_wait(rq, 0, MAX_SCHEDULE_TIMEOUT);
-			i915_request_put(rq);
-		}
-		intel_engine_pm_put(i915->gt.migrate.context->engine);
-	}
-
-	return ret;
-}
-
-static void __i915_ttm_move(struct ttm_buffer_object *bo, bool clear,
-			    struct ttm_resource *dst_mem,
-			    struct ttm_tt *dst_ttm,
-			    struct i915_refct_sgt *dst_rsgt,
-			    bool allow_accel)
-{
-	int ret = -EINVAL;
-
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
-		dst_iter = !cpu_maps_iomem(dst_mem) ?
-			ttm_kmap_iter_tt_init(&_dst_iter.tt, dst_ttm) :
-			ttm_kmap_iter_iomap_init(&_dst_iter.io, &dst_reg->iomap,
-						 &dst_rsgt->table,
-						 dst_reg->region.start);
-
-		src_iter = !cpu_maps_iomem(bo->resource) ?
-			ttm_kmap_iter_tt_init(&_src_iter.tt, bo->ttm) :
-			ttm_kmap_iter_iomap_init(&_src_iter.io, &src_reg->iomap,
-						 &obj->ttm.cached_io_rsgt->table,
-						 src_reg->region.start);
-
-		ttm_move_memcpy(clear, dst_mem->num_pages, dst_iter, src_iter);
-	}
-}
-
-static int i915_ttm_move(struct ttm_buffer_object *bo, bool evict,
-			 struct ttm_operation_ctx *ctx,
-			 struct ttm_resource *dst_mem,
-			 struct ttm_place *hop)
+static void i915_ttm_swap_notify(struct ttm_buffer_object *bo)
 {
 	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
-	struct ttm_resource_manager *dst_man =
-		ttm_manager_type(bo->bdev, dst_mem->mem_type);
-	struct ttm_tt *ttm = bo->ttm;
-	struct i915_refct_sgt *dst_rsgt;
-	bool clear;
-	int ret;
-
-	/* Sync for now. We could do the actual copy async. */
-	ret = ttm_bo_wait_ctx(bo, ctx);
-	if (ret)
-		return ret;
-
-	ret = i915_ttm_move_notify(bo);
-	if (ret)
-		return ret;
+	int ret = i915_ttm_move_notify(bo);
 
-	if (obj->mm.madv != I915_MADV_WILLNEED) {
+	GEM_WARN_ON(ret);
+	GEM_WARN_ON(obj->ttm.cached_io_rsgt);
+	if (!ret && obj->mm.madv != I915_MADV_WILLNEED)
 		i915_ttm_purge(obj);
-		ttm_resource_free(bo, &dst_mem);
-		return 0;
-	}
-
-	/* Populate ttm with pages if needed. Typically system memory. */
-	if (ttm && (dst_man->use_tt || (ttm->page_flags & TTM_TT_FLAG_SWAPPED))) {
-		ret = ttm_tt_populate(bo->bdev, ttm, ctx);
-		if (ret)
-			return ret;
-	}
-
-	dst_rsgt = i915_ttm_resource_get_st(obj, dst_mem);
-	if (IS_ERR(dst_rsgt))
-		return PTR_ERR(dst_rsgt);
-
-	clear = !cpu_maps_iomem(bo->resource) && (!ttm || !ttm_tt_is_populated(ttm));
-	if (!(clear && ttm && !(ttm->page_flags & TTM_TT_FLAG_ZERO_ALLOC)))
-		__i915_ttm_move(bo, clear, dst_mem, bo->ttm, dst_rsgt, true);
-
-	ttm_bo_move_sync_cleanup(bo, dst_mem);
-	i915_ttm_adjust_domains_after_move(obj);
-	i915_ttm_free_cached_io_rsgt(obj);
-
-	if (gpu_binds_iomem(dst_mem) || cpu_maps_iomem(dst_mem)) {
-		obj->ttm.cached_io_rsgt = dst_rsgt;
-		obj->ttm.get_io_page.sg_pos = dst_rsgt->table.sgl;
-		obj->ttm.get_io_page.sg_idx = 0;
-	} else {
-		i915_refct_sgt_put(dst_rsgt);
-	}
-
-	i915_ttm_adjust_lru(obj);
-	i915_ttm_adjust_gem_after_move(obj);
-	return 0;
 }
 
 static int i915_ttm_io_mem_reserve(struct ttm_device *bdev, struct ttm_resource *mem)
 {
-	if (!cpu_maps_iomem(mem))
+	if (!i915_ttm_cpu_maps_iomem(mem))
 		return 0;
 
 	mem->bus.caching = ttm_write_combined;
@@ -973,7 +737,11 @@ static void i915_ttm_put_pages(struct drm_i915_gem_object *obj,
 		i915_refct_sgt_put(fetch_and_zero(&obj->mm.rsgt));
 }
 
-static void i915_ttm_adjust_lru(struct drm_i915_gem_object *obj)
+/**
+ * i915_ttm_adjust_lru - Adjust an object's position on relevant LRU lists.
+ * @obj: The object
+ */
+void i915_ttm_adjust_lru(struct drm_i915_gem_object *obj)
 {
 	struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
 	struct i915_ttm_tt *i915_tt =
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.h b/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
index 0b7291dd897c..074a7c08ff31 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
@@ -5,6 +5,8 @@
 #ifndef _I915_GEM_TTM_H_
 #define _I915_GEM_TTM_H_
 
+#include <drm/ttm/ttm_placement.h>
+
 #include "gem/i915_gem_object_types.h"
 
 /**
@@ -60,4 +62,37 @@ int i915_gem_obj_copy_ttm(struct drm_i915_gem_object *dst,
 
 struct ttm_placement *i915_ttm_sys_placement(void);
 
+void i915_ttm_free_cached_io_rsgt(struct drm_i915_gem_object *obj);
+
+struct i915_refct_sgt *
+i915_ttm_resource_get_st(struct drm_i915_gem_object *obj,
+			 struct ttm_resource *res);
+
+void i915_ttm_adjust_lru(struct drm_i915_gem_object *obj);
+
+int i915_ttm_purge(struct drm_i915_gem_object *obj);
+
+/**
+ * i915_ttm_gtt_binds_lmem - Should the memory be viewed as LMEM by the GTT?
+ * @mem: struct ttm_resource representing the memory.
+ *
+ * Return: true if memory should be viewed as LMEM for GTT binding purposes,
+ * false otherwise.
+ */
+static inline bool i915_ttm_gtt_binds_lmem(struct ttm_resource *mem)
+{
+	return mem->mem_type != I915_PL_SYSTEM;
+}
+
+/**
+ * i915_ttm_cpu_maps_iomem - Should the memory be viewed as IOMEM by the CPU?
+ * @mem: struct ttm_resource representing the memory.
+ *
+ * Return: true if memory should be viewed as IOMEM for CPU mapping purposes.
+ */
+static inline bool i915_ttm_cpu_maps_iomem(struct ttm_resource *mem)
+{
+	/* Once / if we support GGTT, this is also false for cached ttm_tts */
+	return mem->mem_type != I915_PL_SYSTEM;
+}
 #endif
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
new file mode 100644
index 000000000000..0ed6b7f2b95f
--- /dev/null
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
@@ -0,0 +1,308 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#include <drm/ttm/ttm_bo_driver.h>
+
+#include "i915_drv.h"
+#include "intel_memory_region.h"
+#include "intel_region_ttm.h"
+
+#include "gem/i915_gem_object.h"
+#include "gem/i915_gem_region.h"
+#include "gem/i915_gem_ttm.h"
+#include "gem/i915_gem_ttm_move.h"
+
+#include "gt/intel_engine_pm.h"
+#include "gt/intel_gt.h"
+#include "gt/intel_migrate.h"
+
+static enum i915_cache_level
+i915_ttm_cache_level(struct drm_i915_private *i915, struct ttm_resource *res,
+		     struct ttm_tt *ttm)
+{
+	return ((HAS_LLC(i915) || HAS_SNOOP(i915)) &&
+		!i915_ttm_gtt_binds_lmem(res) &&
+		ttm->caching == ttm_cached) ? I915_CACHE_LLC :
+		I915_CACHE_NONE;
+}
+
+static struct intel_memory_region *
+i915_ttm_region(struct ttm_device *bdev, int ttm_mem_type)
+{
+	struct drm_i915_private *i915 = container_of(bdev, typeof(*i915), bdev);
+
+	/* There's some room for optimization here... */
+	GEM_BUG_ON(ttm_mem_type != I915_PL_SYSTEM &&
+		   ttm_mem_type < I915_PL_LMEM0);
+	if (ttm_mem_type == I915_PL_SYSTEM)
+		return intel_memory_region_lookup(i915, INTEL_MEMORY_SYSTEM,
+						  0);
+
+	return intel_memory_region_lookup(i915, INTEL_MEMORY_LOCAL,
+					  ttm_mem_type - I915_PL_LMEM0);
+}
+
+/**
+ * i915_ttm_adjust_domains_after_move - Adjust the GEM domains after a
+ * TTM move
+ * @obj: The gem object
+ */
+void i915_ttm_adjust_domains_after_move(struct drm_i915_gem_object *obj)
+{
+	struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
+
+	if (i915_ttm_cpu_maps_iomem(bo->resource) || bo->ttm->caching != ttm_cached) {
+		obj->write_domain = I915_GEM_DOMAIN_WC;
+		obj->read_domains = I915_GEM_DOMAIN_WC;
+	} else {
+		obj->write_domain = I915_GEM_DOMAIN_CPU;
+		obj->read_domains = I915_GEM_DOMAIN_CPU;
+	}
+}
+
+/**
+ * i915_ttm_adjust_gem_after_move - Adjust the GEM state after a TTM move
+ * @obj: The gem object
+ *
+ * Adjusts the GEM object's region, mem_flags and cache coherency after a
+ * TTM move.
+ */
+void i915_ttm_adjust_gem_after_move(struct drm_i915_gem_object *obj)
+{
+	struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
+	unsigned int cache_level;
+	unsigned int i;
+
+	/*
+	 * If object was moved to an allowable region, update the object
+	 * region to consider it migrated. Note that if it's currently not
+	 * in an allowable region, it's evicted and we don't update the
+	 * object region.
+	 */
+	if (intel_region_to_ttm_type(obj->mm.region) != bo->resource->mem_type) {
+		for (i = 0; i < obj->mm.n_placements; ++i) {
+			struct intel_memory_region *mr = obj->mm.placements[i];
+
+			if (intel_region_to_ttm_type(mr) == bo->resource->mem_type &&
+			    mr != obj->mm.region) {
+				i915_gem_object_release_memory_region(obj);
+				i915_gem_object_init_memory_region(obj, mr);
+				break;
+			}
+		}
+	}
+
+	obj->mem_flags &= ~(I915_BO_FLAG_STRUCT_PAGE | I915_BO_FLAG_IOMEM);
+
+	obj->mem_flags |= i915_ttm_cpu_maps_iomem(bo->resource) ? I915_BO_FLAG_IOMEM :
+		I915_BO_FLAG_STRUCT_PAGE;
+
+	cache_level = i915_ttm_cache_level(to_i915(bo->base.dev), bo->resource,
+					   bo->ttm);
+	i915_gem_object_set_cache_coherency(obj, cache_level);
+}
+
+/**
+ * i915_ttm_move_notify - Prepare an object for move
+ * @bo: The ttm buffer object.
+ *
+ * This function prepares an object for move by removing all GPU bindings,
+ * removing all CPU mapings and finally releasing the pages sg-table.
+ *
+ * Return: 0 if successful, negative error code on error.
+ */
+int i915_ttm_move_notify(struct ttm_buffer_object *bo)
+{
+	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
+	int ret;
+
+	ret = i915_gem_object_unbind(obj, I915_GEM_OBJECT_UNBIND_ACTIVE);
+	if (ret)
+		return ret;
+
+	ret = __i915_gem_object_put_pages(obj);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int i915_ttm_accel_move(struct ttm_buffer_object *bo,
+			       bool clear,
+			       struct ttm_resource *dst_mem,
+			       struct ttm_tt *dst_ttm,
+			       struct sg_table *dst_st)
+{
+	struct drm_i915_private *i915 = container_of(bo->bdev, typeof(*i915),
+						     bdev);
+	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
+	struct i915_request *rq;
+	struct ttm_tt *src_ttm = bo->ttm;
+	enum i915_cache_level src_level, dst_level;
+	int ret;
+
+	if (!i915->gt.migrate.context || intel_gt_is_wedged(&i915->gt))
+		return -EINVAL;
+
+	dst_level = i915_ttm_cache_level(i915, dst_mem, dst_ttm);
+	if (clear) {
+		if (bo->type == ttm_bo_type_kernel)
+			return -EINVAL;
+
+		intel_engine_pm_get(i915->gt.migrate.context->engine);
+		ret = intel_context_migrate_clear(i915->gt.migrate.context, NULL,
+						  dst_st->sgl, dst_level,
+						  i915_ttm_gtt_binds_lmem(dst_mem),
+						  0, &rq);
+
+		if (!ret && rq) {
+			i915_request_wait(rq, 0, MAX_SCHEDULE_TIMEOUT);
+			i915_request_put(rq);
+		}
+		intel_engine_pm_put(i915->gt.migrate.context->engine);
+	} else {
+		struct i915_refct_sgt *src_rsgt =
+			i915_ttm_resource_get_st(obj, bo->resource);
+
+		if (IS_ERR(src_rsgt))
+			return PTR_ERR(src_rsgt);
+
+		src_level = i915_ttm_cache_level(i915, bo->resource, src_ttm);
+		intel_engine_pm_get(i915->gt.migrate.context->engine);
+		ret = intel_context_migrate_copy(i915->gt.migrate.context,
+						 NULL, src_rsgt->table.sgl,
+						 src_level,
+						 i915_ttm_gtt_binds_lmem(bo->resource),
+						 dst_st->sgl, dst_level,
+						 i915_ttm_gtt_binds_lmem(dst_mem),
+						 &rq);
+		i915_refct_sgt_put(src_rsgt);
+		if (!ret && rq) {
+			i915_request_wait(rq, 0, MAX_SCHEDULE_TIMEOUT);
+			i915_request_put(rq);
+		}
+		intel_engine_pm_put(i915->gt.migrate.context->engine);
+	}
+
+	return ret;
+}
+
+/**
+ * __i915_ttm_move - helper to perform TTM moves or clears.
+ * @bo: The source buffer object.
+ * @clear: Whether this is a clear operation.
+ * @dst_mem: The destination ttm resource.
+ * @dst_ttm: The destination ttm page vector.
+ * @dst_rsgt: The destination refcounted sg-list.
+ * @allow_accel: Whether to allow acceleration.
+ */
+void __i915_ttm_move(struct ttm_buffer_object *bo, bool clear,
+		     struct ttm_resource *dst_mem,
+		     struct ttm_tt *dst_ttm,
+		     struct i915_refct_sgt *dst_rsgt,
+		     bool allow_accel)
+{
+	int ret = -EINVAL;
+
+	if (allow_accel)
+		ret = i915_ttm_accel_move(bo, clear, dst_mem, dst_ttm,
+					  &dst_rsgt->table);
+	if (ret) {
+		struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
+		struct intel_memory_region *dst_reg, *src_reg;
+		union {
+			struct ttm_kmap_iter_tt tt;
+			struct ttm_kmap_iter_iomap io;
+		} _dst_iter, _src_iter;
+		struct ttm_kmap_iter *dst_iter, *src_iter;
+
+		dst_reg = i915_ttm_region(bo->bdev, dst_mem->mem_type);
+		src_reg = i915_ttm_region(bo->bdev, bo->resource->mem_type);
+		GEM_BUG_ON(!dst_reg || !src_reg);
+
+		dst_iter = !i915_ttm_cpu_maps_iomem(dst_mem) ?
+			ttm_kmap_iter_tt_init(&_dst_iter.tt, dst_ttm) :
+			ttm_kmap_iter_iomap_init(&_dst_iter.io, &dst_reg->iomap,
+						 &dst_rsgt->table,
+						 dst_reg->region.start);
+
+		src_iter = !i915_ttm_cpu_maps_iomem(bo->resource) ?
+			ttm_kmap_iter_tt_init(&_src_iter.tt, bo->ttm) :
+			ttm_kmap_iter_iomap_init(&_src_iter.io, &src_reg->iomap,
+						 &obj->ttm.cached_io_rsgt->table,
+						 src_reg->region.start);
+
+		ttm_move_memcpy(clear, dst_mem->num_pages, dst_iter, src_iter);
+	}
+}
+
+/**
+ * i915_ttm_move - The TTM move callback used by i915.
+ * @bo: The buffer object.
+ * @evict: Whether this is an eviction.
+ * @dst_mem: The destination ttm resource.
+ * @hop: If we need multihop, what temporary memory type to move to.
+ *
+ * Return: 0 if successful, negative error code otherwise.
+ */
+int i915_ttm_move(struct ttm_buffer_object *bo, bool evict,
+		  struct ttm_operation_ctx *ctx,
+		  struct ttm_resource *dst_mem,
+		  struct ttm_place *hop)
+{
+	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
+	struct ttm_resource_manager *dst_man =
+		ttm_manager_type(bo->bdev, dst_mem->mem_type);
+	struct ttm_tt *ttm = bo->ttm;
+	struct i915_refct_sgt *dst_rsgt;
+	bool clear;
+	int ret;
+
+	/* Sync for now. We could do the actual copy async. */
+	ret = ttm_bo_wait_ctx(bo, ctx);
+	if (ret)
+		return ret;
+
+	ret = i915_ttm_move_notify(bo);
+	if (ret)
+		return ret;
+
+	if (obj->mm.madv != I915_MADV_WILLNEED) {
+		i915_ttm_purge(obj);
+		ttm_resource_free(bo, &dst_mem);
+		return 0;
+	}
+
+	/* Populate ttm with pages if needed. Typically system memory. */
+	if (ttm && (dst_man->use_tt || (ttm->page_flags & TTM_TT_FLAG_SWAPPED))) {
+		ret = ttm_tt_populate(bo->bdev, ttm, ctx);
+		if (ret)
+			return ret;
+	}
+
+	dst_rsgt = i915_ttm_resource_get_st(obj, dst_mem);
+	if (IS_ERR(dst_rsgt))
+		return PTR_ERR(dst_rsgt);
+
+	clear = !i915_ttm_cpu_maps_iomem(bo->resource) && (!ttm || !ttm_tt_is_populated(ttm));
+	if (!(clear && ttm && !(ttm->page_flags & TTM_TT_FLAG_ZERO_ALLOC)))
+		__i915_ttm_move(bo, clear, dst_mem, bo->ttm, dst_rsgt, true);
+
+	ttm_bo_move_sync_cleanup(bo, dst_mem);
+	i915_ttm_adjust_domains_after_move(obj);
+	i915_ttm_free_cached_io_rsgt(obj);
+
+	if (i915_ttm_gtt_binds_lmem(dst_mem) || i915_ttm_cpu_maps_iomem(dst_mem)) {
+		obj->ttm.cached_io_rsgt = dst_rsgt;
+		obj->ttm.get_io_page.sg_pos = dst_rsgt->table.sgl;
+		obj->ttm.get_io_page.sg_idx = 0;
+	} else {
+		i915_refct_sgt_put(dst_rsgt);
+	}
+
+	i915_ttm_adjust_lru(obj);
+	i915_ttm_adjust_gem_after_move(obj);
+	return 0;
+}
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.h b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.h
new file mode 100644
index 000000000000..68294b16e5c2
--- /dev/null
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.h
@@ -0,0 +1,38 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+#ifndef _I915_GEM_TTM_MOVE_H_
+#define _I915_GEM_TTM_MOVE_H_
+
+#include <linux/types.h>
+
+struct ttm_buffer_object;
+struct ttm_operation_ctx;
+struct ttm_place;
+struct ttm_resource;
+struct ttm_tt;
+
+struct drm_i915_gem_object;
+struct i915_refct_sgt;
+
+int i915_ttm_move_notify(struct ttm_buffer_object *bo);
+
+/* Internal I915 TTM declarations and definitions below. */
+
+void __i915_ttm_move(struct ttm_buffer_object *bo, bool clear,
+		     struct ttm_resource *dst_mem,
+		     struct ttm_tt *dst_ttm,
+		     struct i915_refct_sgt *dst_rsgt,
+		     bool allow_accel);
+
+int i915_ttm_move(struct ttm_buffer_object *bo, bool evict,
+		  struct ttm_operation_ctx *ctx,
+		  struct ttm_resource *dst_mem,
+		  struct ttm_place *hop);
+
+void i915_ttm_adjust_domains_after_move(struct drm_i915_gem_object *obj);
+
+void i915_ttm_adjust_gem_after_move(struct drm_i915_gem_object *obj);
+
+#endif
-- 
2.31.1

