Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8D256F971
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jul 2022 10:59:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A96C7112BF3;
	Mon, 11 Jul 2022 08:59:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6DA4112036;
 Mon, 11 Jul 2022 08:59:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657529953; x=1689065953;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/zT4REMIQhVJ1dl7wVsxOKRGFRnuVTI7qhfVW/JtBxU=;
 b=Lj84WgUot7XvjhlfqHhBi/WSAJPApwO8V2Q6LcD+JbVVRpS1rwDRhdl6
 skM+vGdiQeBFLQJkM3Nm6uS31pOE2e8yCTmVrpXGHsOsqM7NyQeB4/vS2
 n19TkZa3Pyp1OU/vyNkCdo5DuB6Nv2u2VCsA4VVzLSPl3wPih9l9YE87Y
 yWM0n612VgcpenDBWC+8pAhadFRrM25jSj7+uRAADqo39S9yknD56LOjU
 5qqktFnqThvguX6x/AOLa9aYFDP3DpjVXAxbof4hgVmEh16FAmP/3uXDl
 Jc/ILWDsh+C93v8uLrUT5jdD4i5UNNMtp0wBS7KMv8KSEq4uuzMWdctAV g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10404"; a="310214352"
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400"; d="scan'208";a="310214352"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2022 01:59:13 -0700
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400"; d="scan'208";a="652376634"
Received: from jinliguo-mobl.ccr.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.215.151.179])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2022 01:59:09 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Jul 2022 09:58:59 +0100
Message-Id: <20220711085859.24198-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/ttm: fix sg_table construction
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
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If we encounter some monster sized local-memory page that exceeds the
maximum sg length (UINT32_MAX), ensure that don't end up with some
misaligned address in the entry that follows, leading to fireworks
later. Also ensure we have some coverage of this in the selftests.

v2(Chris):
  - Use round_down consistently to avoid udiv errors
v3(Nirmoy):
  - Also update the max_segment in the selftest

Fixes: f701b16d4cc5 ("drm/i915/ttm: add i915_sg_from_buddy_resource")
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6379
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c       | 11 ++++++++--
 drivers/gpu/drm/i915/i915_scatterlist.c       | 19 +++++++++++++----
 drivers/gpu/drm/i915/i915_scatterlist.h       |  6 ++++--
 drivers/gpu/drm/i915/intel_region_ttm.c       | 10 ++++++---
 drivers/gpu/drm/i915/intel_region_ttm.h       |  3 ++-
 .../drm/i915/selftests/intel_memory_region.c  | 21 +++++++++++++++++--
 drivers/gpu/drm/i915/selftests/mock_region.c  |  3 ++-
 7 files changed, 58 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 7e1f8b83077f..c5c8aa1f8558 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -602,10 +602,15 @@ i915_ttm_resource_get_st(struct drm_i915_gem_object *obj,
 			 struct ttm_resource *res)
 {
 	struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
+	u64 page_alignment;
 
 	if (!i915_ttm_gtt_binds_lmem(res))
 		return i915_ttm_tt_get_st(bo->ttm);
 
+	page_alignment = bo->page_alignment << PAGE_SHIFT;
+	if (!page_alignment)
+		page_alignment = obj->mm.region->min_page_size;
+
 	/*
 	 * If CPU mapping differs, we need to add the ttm_tt pages to
 	 * the resulting st. Might make sense for GGTT.
@@ -616,7 +621,8 @@ i915_ttm_resource_get_st(struct drm_i915_gem_object *obj,
 			struct i915_refct_sgt *rsgt;
 
 			rsgt = intel_region_ttm_resource_to_rsgt(obj->mm.region,
-								 res);
+								 res,
+								 page_alignment);
 			if (IS_ERR(rsgt))
 				return rsgt;
 
@@ -625,7 +631,8 @@ i915_ttm_resource_get_st(struct drm_i915_gem_object *obj,
 		return i915_refct_sgt_get(obj->ttm.cached_io_rsgt);
 	}
 
-	return intel_region_ttm_resource_to_rsgt(obj->mm.region, res);
+	return intel_region_ttm_resource_to_rsgt(obj->mm.region, res,
+						 page_alignment);
 }
 
 static int i915_ttm_truncate(struct drm_i915_gem_object *obj)
diff --git a/drivers/gpu/drm/i915/i915_scatterlist.c b/drivers/gpu/drm/i915/i915_scatterlist.c
index 159571b9bd24..f63b50b71e10 100644
--- a/drivers/gpu/drm/i915/i915_scatterlist.c
+++ b/drivers/gpu/drm/i915/i915_scatterlist.c
@@ -68,6 +68,7 @@ void i915_refct_sgt_init(struct i915_refct_sgt *rsgt, size_t size)
  * drm_mm_node
  * @node: The drm_mm_node.
  * @region_start: An offset to add to the dma addresses of the sg list.
+ * @page_alignment: Required page alignment for each sg entry. Power of two.
  *
  * Create a struct sg_table, initializing it from a struct drm_mm_node,
  * taking a maximum segment length into account, splitting into segments
@@ -77,15 +78,18 @@ void i915_refct_sgt_init(struct i915_refct_sgt *rsgt, size_t size)
  * error code cast to an error pointer on failure.
  */
 struct i915_refct_sgt *i915_rsgt_from_mm_node(const struct drm_mm_node *node,
-					      u64 region_start)
+					      u64 region_start,
+					      u64 page_alignment)
 {
-	const u64 max_segment = SZ_1G; /* Do we have a limit on this? */
+	const u64 max_segment = round_down(UINT_MAX, page_alignment);
 	u64 segment_pages = max_segment >> PAGE_SHIFT;
 	u64 block_size, offset, prev_end;
 	struct i915_refct_sgt *rsgt;
 	struct sg_table *st;
 	struct scatterlist *sg;
 
+	GEM_BUG_ON(!max_segment);
+
 	rsgt = kmalloc(sizeof(*rsgt), GFP_KERNEL);
 	if (!rsgt)
 		return ERR_PTR(-ENOMEM);
@@ -112,6 +116,8 @@ struct i915_refct_sgt *i915_rsgt_from_mm_node(const struct drm_mm_node *node,
 				sg = __sg_next(sg);
 
 			sg_dma_address(sg) = region_start + offset;
+			GEM_BUG_ON(!IS_ALIGNED(sg_dma_address(sg),
+					       page_alignment));
 			sg_dma_len(sg) = 0;
 			sg->length = 0;
 			st->nents++;
@@ -138,6 +144,7 @@ struct i915_refct_sgt *i915_rsgt_from_mm_node(const struct drm_mm_node *node,
  * i915_buddy_block list
  * @res: The struct i915_ttm_buddy_resource.
  * @region_start: An offset to add to the dma addresses of the sg list.
+ * @page_alignment: Required page alignment for each sg entry. Power of two.
  *
  * Create a struct sg_table, initializing it from struct i915_buddy_block list,
  * taking a maximum segment length into account, splitting into segments
@@ -147,11 +154,12 @@ struct i915_refct_sgt *i915_rsgt_from_mm_node(const struct drm_mm_node *node,
  * error code cast to an error pointer on failure.
  */
 struct i915_refct_sgt *i915_rsgt_from_buddy_resource(struct ttm_resource *res,
-						     u64 region_start)
+						     u64 region_start,
+						     u64 page_alignment)
 {
 	struct i915_ttm_buddy_resource *bman_res = to_ttm_buddy_resource(res);
 	const u64 size = res->num_pages << PAGE_SHIFT;
-	const u64 max_segment = rounddown(UINT_MAX, PAGE_SIZE);
+	const u64 max_segment = round_down(UINT_MAX, page_alignment);
 	struct drm_buddy *mm = bman_res->mm;
 	struct list_head *blocks = &bman_res->blocks;
 	struct drm_buddy_block *block;
@@ -161,6 +169,7 @@ struct i915_refct_sgt *i915_rsgt_from_buddy_resource(struct ttm_resource *res,
 	resource_size_t prev_end;
 
 	GEM_BUG_ON(list_empty(blocks));
+	GEM_BUG_ON(!max_segment);
 
 	rsgt = kmalloc(sizeof(*rsgt), GFP_KERNEL);
 	if (!rsgt)
@@ -191,6 +200,8 @@ struct i915_refct_sgt *i915_rsgt_from_buddy_resource(struct ttm_resource *res,
 					sg = __sg_next(sg);
 
 				sg_dma_address(sg) = region_start + offset;
+				GEM_BUG_ON(!IS_ALIGNED(sg_dma_address(sg),
+						       page_alignment));
 				sg_dma_len(sg) = 0;
 				sg->length = 0;
 				st->nents++;
diff --git a/drivers/gpu/drm/i915/i915_scatterlist.h b/drivers/gpu/drm/i915/i915_scatterlist.h
index 12c6a1684081..b13e4cdea923 100644
--- a/drivers/gpu/drm/i915/i915_scatterlist.h
+++ b/drivers/gpu/drm/i915/i915_scatterlist.h
@@ -213,9 +213,11 @@ static inline void __i915_refct_sgt_init(struct i915_refct_sgt *rsgt,
 void i915_refct_sgt_init(struct i915_refct_sgt *rsgt, size_t size);
 
 struct i915_refct_sgt *i915_rsgt_from_mm_node(const struct drm_mm_node *node,
-					      u64 region_start);
+					      u64 region_start,
+					      u64 page_alignment);
 
 struct i915_refct_sgt *i915_rsgt_from_buddy_resource(struct ttm_resource *res,
-						     u64 region_start);
+						     u64 region_start,
+						     u64 page_alignment);
 
 #endif
diff --git a/drivers/gpu/drm/i915/intel_region_ttm.c b/drivers/gpu/drm/i915/intel_region_ttm.c
index 62ff77445b01..6873808a7015 100644
--- a/drivers/gpu/drm/i915/intel_region_ttm.c
+++ b/drivers/gpu/drm/i915/intel_region_ttm.c
@@ -152,6 +152,7 @@ int intel_region_ttm_fini(struct intel_memory_region *mem)
  * Convert an opaque TTM resource manager resource to a refcounted sg_table.
  * @mem: The memory region.
  * @res: The resource manager resource obtained from the TTM resource manager.
+ * @page_alignment: Required page alignment for each sg entry. Power of two.
  *
  * The gem backends typically use sg-tables for operations on the underlying
  * io_memory. So provide a way for the backends to translate the
@@ -161,16 +162,19 @@ int intel_region_ttm_fini(struct intel_memory_region *mem)
  */
 struct i915_refct_sgt *
 intel_region_ttm_resource_to_rsgt(struct intel_memory_region *mem,
-				  struct ttm_resource *res)
+				  struct ttm_resource *res,
+				  u64 page_alignment)
 {
 	if (mem->is_range_manager) {
 		struct ttm_range_mgr_node *range_node =
 			to_ttm_range_mgr_node(res);
 
 		return i915_rsgt_from_mm_node(&range_node->mm_nodes[0],
-					      mem->region.start);
+					      mem->region.start,
+					      page_alignment);
 	} else {
-		return i915_rsgt_from_buddy_resource(res, mem->region.start);
+		return i915_rsgt_from_buddy_resource(res, mem->region.start,
+						     page_alignment);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/intel_region_ttm.h b/drivers/gpu/drm/i915/intel_region_ttm.h
index cf9d86dcf409..98fba5155619 100644
--- a/drivers/gpu/drm/i915/intel_region_ttm.h
+++ b/drivers/gpu/drm/i915/intel_region_ttm.h
@@ -24,7 +24,8 @@ int intel_region_ttm_fini(struct intel_memory_region *mem);
 
 struct i915_refct_sgt *
 intel_region_ttm_resource_to_rsgt(struct intel_memory_region *mem,
-				  struct ttm_resource *res);
+				  struct ttm_resource *res,
+				  u64 page_alignment);
 
 void intel_region_ttm_resource_free(struct intel_memory_region *mem,
 				    struct ttm_resource *res);
diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
index 73eb53edb8de..3b18e5905c86 100644
--- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
@@ -451,7 +451,6 @@ static int igt_mock_splintered_region(void *arg)
 
 static int igt_mock_max_segment(void *arg)
 {
-	const unsigned int max_segment = rounddown(UINT_MAX, PAGE_SIZE);
 	struct intel_memory_region *mem = arg;
 	struct drm_i915_private *i915 = mem->i915;
 	struct i915_ttm_buddy_resource *res;
@@ -460,7 +459,10 @@ static int igt_mock_max_segment(void *arg)
 	struct drm_buddy *mm;
 	struct list_head *blocks;
 	struct scatterlist *sg;
+	I915_RND_STATE(prng);
 	LIST_HEAD(objects);
+	unsigned int max_segment;
+	unsigned int ps;
 	u64 size;
 	int err = 0;
 
@@ -472,7 +474,13 @@ static int igt_mock_max_segment(void *arg)
 	 */
 
 	size = SZ_8G;
-	mem = mock_region_create(i915, 0, size, PAGE_SIZE, 0, 0);
+	ps = PAGE_SIZE;
+	if (i915_prandom_u64_state(&prng) & 1)
+		ps = SZ_64K; /* For something like DG2 */
+
+	max_segment = round_down(UINT_MAX, ps);
+
+	mem = mock_region_create(i915, 0, size, ps, 0, 0);
 	if (IS_ERR(mem))
 		return PTR_ERR(mem);
 
@@ -498,12 +506,21 @@ static int igt_mock_max_segment(void *arg)
 	}
 
 	for (sg = obj->mm.pages->sgl; sg; sg = sg_next(sg)) {
+		dma_addr_t daddr = sg_dma_address(sg);
+
 		if (sg->length > max_segment) {
 			pr_err("%s: Created an oversized scatterlist entry, %u > %u\n",
 			       __func__, sg->length, max_segment);
 			err = -EINVAL;
 			goto out_close;
 		}
+
+		if (!IS_ALIGNED(daddr, ps)) {
+			pr_err("%s: Created an unaligned scatterlist entry, addr=%pa, ps=%u\n",
+			       __func__,  &daddr, ps);
+			err = -EINVAL;
+			goto out_close;
+		}
 	}
 
 out_close:
diff --git a/drivers/gpu/drm/i915/selftests/mock_region.c b/drivers/gpu/drm/i915/selftests/mock_region.c
index 670557ce1024..bac21fe84ca5 100644
--- a/drivers/gpu/drm/i915/selftests/mock_region.c
+++ b/drivers/gpu/drm/i915/selftests/mock_region.c
@@ -33,7 +33,8 @@ static int mock_region_get_pages(struct drm_i915_gem_object *obj)
 		return PTR_ERR(obj->mm.res);
 
 	obj->mm.rsgt = intel_region_ttm_resource_to_rsgt(obj->mm.region,
-							 obj->mm.res);
+							 obj->mm.res,
+							 obj->mm.region->min_page_size);
 	if (IS_ERR(obj->mm.rsgt)) {
 		err = PTR_ERR(obj->mm.rsgt);
 		goto err_free_resource;
-- 
2.36.1

