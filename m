Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81889498127
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 14:32:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 678B410EBAD;
	Mon, 24 Jan 2022 13:32:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08ED310E4B8
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 22:23:30 +0000 (UTC)
Received: from sobremesa.fritz.box (unknown
 [IPv6:2a02:8010:65b5:0:bbb0:f8ec:7bc9:dbe4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: alarumbe)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B79D51F465E6;
 Fri, 21 Jan 2022 22:23:28 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1642803808;
 bh=h9nqFMqQnKzLKiOAsSriqiIDif58boUmUN8s1JFPvTM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DYcQM7K0Q572nNg3Mtfk7le/s4gC+5yu8CN3NibXExroGwodmuilfiXWG4zTx8MLl
 PiYS15OOOLG+S0CvNrKNyHDkqcggXodv6Zjf0sp9j8Kr9YTtvFfV7/IyuRBNFpvO4l
 PPnwdtHNDH06dx8C/v2jTaWlc1hAKtytvmtTQ6d/VOQxmxWWUbVi4uGVtSkqOykcGU
 cRGEcQa/JN342pMHT+HLDnV0ls97T+zL1cJ/TL9CWPSmUS/kgsFuSEPsHzqME7r6la
 UB0DDVW/7StFUBMoBAC0byUQzU9ek88V88w0edXMlMGIvEJsp95Fj9muQeu7cwy3V0
 61HjeNgvbzSOg==
From: Adrian Larumbe <adrian.larumbe@collabora.com>
To: daniel@ffwll.ch, ramalingam.c@intel.com, intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jan 2022 22:22:52 +0000
Message-Id: <20220121222252.3296117-6-adrian.larumbe@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220121222252.3296117-1-adrian.larumbe@collabora.com>
References: <20220121222252.3296117-1-adrian.larumbe@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 24 Jan 2022 13:32:09 +0000
Subject: [Intel-gfx] [RFC PATCH 5/5] drm/i915/flat-CCS: handle creation and
 destruction of flat CCS bo's
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
Cc: adrian.larumbe@collabora.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When a flat-CCS lmem-bound BO is evicted onto smem for the first time, a
separate swap gem object is created to hold the contents of the CCS block.
It is assumed that, for a flat-CCS bo to be migrated back onto lmem, it
should've begun its life in lmem.

It also handles destruction of the swap bo when the original TTM object
reaches the end of its life.

Signed-off-by: Adrian Larumbe <adrian.larumbe@collabora.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c      | 11 +++
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c | 78 +++++++++++++++++++-
 2 files changed, 87 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 84cae740b4a5..24708d6bfd9c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -474,11 +474,22 @@ static int i915_ttm_shrink(struct drm_i915_gem_object *obj, unsigned int flags)
 static void i915_ttm_delete_mem_notify(struct ttm_buffer_object *bo)
 {
 	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
+	struct drm_i915_private *i915 =
+		container_of(bo->bdev, typeof(*i915), bdev);
 
 	if (likely(obj)) {
 		__i915_gem_object_pages_fini(obj);
 		i915_ttm_free_cached_io_rsgt(obj);
 	}
+
+	if (HAS_FLAT_CCS(i915) && obj->flat_css.enabled) {
+		struct drm_i915_gem_object *swap_obj = obj->flat_css.swap;
+
+		if (swap_obj) {
+			swap_obj->base.funcs->free(&swap_obj->base);
+			obj->flat_css.swap = NULL;
+		}
+	}
 }
 
 static struct i915_refct_sgt *i915_ttm_tt_get_st(struct ttm_tt *ttm)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
index 1de306c03aaf..3479c4a37bd8 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
@@ -162,6 +162,56 @@ int i915_ttm_move_notify(struct ttm_buffer_object *bo)
 	return 0;
 }
 
+static int
+i915_ccs_handle_move(struct drm_i915_gem_object *obj,
+		     struct ttm_resource *dst_mem)
+{
+	struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
+	struct drm_i915_private *i915 = container_of(bo->bdev, typeof(*i915),
+						     bdev);
+	struct intel_memory_region *dst_reg;
+	size_t ccs_blk_size;
+	int ret;
+
+	dst_reg = i915_ttm_region(bo->bdev, dst_mem->mem_type);
+	ccs_blk_size = GET_CCS_SIZE(i915, obj->base.size);
+
+	if (dst_reg->type != INTEL_MEMORY_LOCAL &&
+	    dst_reg->type != INTEL_MEMORY_SYSTEM) {
+		DRM_DEBUG_DRIVER("Wrong memory region when using flat CCS.\n");
+		return -EINVAL;
+	}
+
+	if (dst_reg->type == INTEL_MEMORY_LOCAL &&
+	    (obj->flat_css.swap == NULL || !i915_gem_object_has_pages(obj->flat_css.swap))) {
+		/*
+		 * All BOs begin their life cycle in smem, even if meant to be
+		 * lmem-bound. Then, upon running the execbuf2 ioctl, get moved
+		 * onto lmem before first use. Therefore, migrating a flat-CCS
+		 * lmem-only buffer into lmem means a CCS swap buffer had already
+		 * been allocated when first migrating it onto smem from lmem.
+		 */
+
+		drm_err(&i915->drm, "BO hasn't been evicted into smem yet\n");
+		return -EINVAL;
+
+	} else if (dst_reg->type == INTEL_MEMORY_SYSTEM &&
+		   !obj->flat_css.swap) {
+		/* First time object is swapped out onto smem */
+		obj->flat_css.swap =
+			i915_gem_object_create_region(i915->mm.regions[INTEL_REGION_SMEM],
+						      ccs_blk_size, 0, 0);
+		if (IS_ERR(obj->flat_css.swap))
+			return -ENOMEM;
+
+		ret = __i915_gem_object_get_pages(obj->flat_css.swap);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
 static struct dma_fence *i915_ttm_accel_move(struct ttm_buffer_object *bo,
 					     bool clear,
 					     struct ttm_resource *dst_mem,
@@ -172,9 +222,10 @@ static struct dma_fence *i915_ttm_accel_move(struct ttm_buffer_object *bo,
 	struct drm_i915_private *i915 = container_of(bo->bdev, typeof(*i915),
 						     bdev);
 	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
+	struct i915_refct_sgt *ccs_rsgt = NULL;
 	struct i915_request *rq;
 	struct ttm_tt *src_ttm = bo->ttm;
-	enum i915_cache_level src_level, dst_level;
+	enum i915_cache_level src_level, dst_level, ccs_level;
 	int ret;
 
 	if (!to_gt(i915)->migrate.context || intel_gt_is_wedged(to_gt(i915)))
@@ -196,6 +247,7 @@ static struct dma_fence *i915_ttm_accel_move(struct ttm_buffer_object *bo,
 						  i915_ttm_gtt_binds_lmem(dst_mem),
 						  0, &rq);
 	} else {
+		struct ttm_buffer_object *swap_bo;
 		struct i915_refct_sgt *src_rsgt =
 			i915_ttm_resource_get_st(obj, bo->resource);
 
@@ -203,6 +255,25 @@ static struct dma_fence *i915_ttm_accel_move(struct ttm_buffer_object *bo,
 			return ERR_CAST(src_rsgt);
 
 		src_level = i915_ttm_cache_level(i915, bo->resource, src_ttm);
+		ccs_level = I915_CACHE_NONE;
+
+		/* Handle CCS block */
+		if (HAS_FLAT_CCS(i915) && obj->flat_css.enabled) {
+			ret = i915_ccs_handle_move(obj, dst_mem);
+			if (ret) {
+				drm_err(&i915->drm,
+					"CCS block migration failed (%d)\n", ret);
+				return ERR_PTR(ret);
+			}
+
+			swap_bo = i915_gem_to_ttm(obj->flat_css.swap);
+			ccs_level = i915_ttm_cache_level(i915, swap_bo->resource, swap_bo->ttm);
+			ccs_rsgt = i915_ttm_resource_get_st(i915_ttm_to_gem(swap_bo),
+							    swap_bo->resource);
+			if (IS_ERR(ccs_rsgt))
+				return ERR_CAST(ccs_rsgt);
+		}
+
 		intel_engine_pm_get(to_gt(i915)->migrate.context->engine);
 		ret = intel_context_migrate_copy(to_gt(i915)->migrate.context,
 						 deps, src_rsgt->table.sgl,
@@ -210,9 +281,12 @@ static struct dma_fence *i915_ttm_accel_move(struct ttm_buffer_object *bo,
 						 i915_ttm_gtt_binds_lmem(bo->resource),
 						 dst_st->sgl, dst_level,
 						 i915_ttm_gtt_binds_lmem(dst_mem),
-						 &rq);
+						 ccs_rsgt ? ccs_rsgt->table.sgl : NULL,
+						 ccs_level, &rq);
 
 		i915_refct_sgt_put(src_rsgt);
+		if (ccs_rsgt)
+			i915_refct_sgt_put(ccs_rsgt);
 	}
 
 	intel_engine_pm_put(to_gt(i915)->migrate.context->engine);
-- 
2.34.1

