Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7DD95721E3
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jul 2022 19:41:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F34799591F;
	Tue, 12 Jul 2022 17:41:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3F4395911;
 Tue, 12 Jul 2022 17:41:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657647662; x=1689183662;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ew3rqz5Ur0C2SBEi4zYGWbn9Ek/Zk+1eOiNyVaTmbDE=;
 b=JuAPzxgR1G8mqIoiILV8AGXV7DeaEEg3CS/+U9bcQkZ4DXCjT+RySF7I
 zJnu3BSq4Fzbou4Drf33pYCE77y011xM2DlEkgeHLfw4vrdqb9ojQAQF7
 rYdoIFarwAFtDOuATa2dYobyVZaPfnET997UYjdQ/yLcXX787cxgIK2x+
 6VGHpuahump+JFK4UBqn4/bFLBuazvPgBAtWDpkbW3VmpdV1j50dRgB+7
 dtD/qUDb7rz8FsuSCP/yruS1LhiqdHsuzlMpgBL8bj6NiaEQAJ4dcejI9
 X8RKonzuBpJSuuFLa9e3X9YLOTc3aZz62vwqyWDxLpkW5lUO/Ff8tf+kI w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10406"; a="265413417"
X-IronPort-AV: E=Sophos;i="5.92,266,1650956400"; d="scan'208";a="265413417"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2022 10:41:01 -0700
X-IronPort-AV: E=Sophos;i="5.92,266,1650956400"; d="scan'208";a="684854205"
Received: from llai1-mobl.gar.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.214.153.162])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2022 10:40:58 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Jul 2022 18:40:50 +0100
Message-Id: <20220712174050.592550-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/ttm: fix 32b build
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

Since segment_pages is no longer a compile time constant, it looks the
DIV_ROUND_UP(node->size, segment_pages) breaks the 32b build. Simplest
is just to use the ULL variant, but really we should need not need more
than u32 for the page alignment (also we are limited by that due to the
sg->length type), so also make it all u32.

Reported-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Fixes: bc99f1209f19 ("drm/i915/ttm: fix sg_table construction")
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_region.c |  2 ++
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c    |  2 +-
 drivers/gpu/drm/i915/i915_scatterlist.c    | 16 ++++++++--------
 drivers/gpu/drm/i915/i915_scatterlist.h    |  4 ++--
 drivers/gpu/drm/i915/intel_region_ttm.c    |  2 +-
 drivers/gpu/drm/i915/intel_region_ttm.h    |  2 +-
 6 files changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_region.c b/drivers/gpu/drm/i915/gem/i915_gem_region.c
index f46ee16a323a..a4fb577eceb4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_region.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_region.c
@@ -60,6 +60,8 @@ __i915_gem_object_create_region(struct intel_memory_region *mem,
 	if (page_size)
 		default_page_size = page_size;
 
+	/* We should be able to fit a page within an sg entry */
+	GEM_BUG_ON(overflows_type(default_page_size, u32));
 	GEM_BUG_ON(!is_power_of_2_u64(default_page_size));
 	GEM_BUG_ON(default_page_size < PAGE_SIZE);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 053b0022ddd0..5a5cf332d8a5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -602,7 +602,7 @@ i915_ttm_resource_get_st(struct drm_i915_gem_object *obj,
 			 struct ttm_resource *res)
 {
 	struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
-	u64 page_alignment;
+	u32 page_alignment;
 
 	if (!i915_ttm_gtt_binds_lmem(res))
 		return i915_ttm_tt_get_st(bo->ttm);
diff --git a/drivers/gpu/drm/i915/i915_scatterlist.c b/drivers/gpu/drm/i915/i915_scatterlist.c
index f63b50b71e10..dcc081874ec8 100644
--- a/drivers/gpu/drm/i915/i915_scatterlist.c
+++ b/drivers/gpu/drm/i915/i915_scatterlist.c
@@ -79,10 +79,10 @@ void i915_refct_sgt_init(struct i915_refct_sgt *rsgt, size_t size)
  */
 struct i915_refct_sgt *i915_rsgt_from_mm_node(const struct drm_mm_node *node,
 					      u64 region_start,
-					      u64 page_alignment)
+					      u32 page_alignment)
 {
-	const u64 max_segment = round_down(UINT_MAX, page_alignment);
-	u64 segment_pages = max_segment >> PAGE_SHIFT;
+	const u32 max_segment = round_down(UINT_MAX, page_alignment);
+	const u32 segment_pages = max_segment >> PAGE_SHIFT;
 	u64 block_size, offset, prev_end;
 	struct i915_refct_sgt *rsgt;
 	struct sg_table *st;
@@ -96,7 +96,7 @@ struct i915_refct_sgt *i915_rsgt_from_mm_node(const struct drm_mm_node *node,
 
 	i915_refct_sgt_init(rsgt, node->size << PAGE_SHIFT);
 	st = &rsgt->table;
-	if (sg_alloc_table(st, DIV_ROUND_UP(node->size, segment_pages),
+	if (sg_alloc_table(st, DIV_ROUND_UP_ULL(node->size, segment_pages),
 			   GFP_KERNEL)) {
 		i915_refct_sgt_put(rsgt);
 		return ERR_PTR(-ENOMEM);
@@ -123,7 +123,7 @@ struct i915_refct_sgt *i915_rsgt_from_mm_node(const struct drm_mm_node *node,
 			st->nents++;
 		}
 
-		len = min(block_size, max_segment - sg->length);
+		len = min_t(u64, block_size, max_segment - sg->length);
 		sg->length += len;
 		sg_dma_len(sg) += len;
 
@@ -155,11 +155,11 @@ struct i915_refct_sgt *i915_rsgt_from_mm_node(const struct drm_mm_node *node,
  */
 struct i915_refct_sgt *i915_rsgt_from_buddy_resource(struct ttm_resource *res,
 						     u64 region_start,
-						     u64 page_alignment)
+						     u32 page_alignment)
 {
 	struct i915_ttm_buddy_resource *bman_res = to_ttm_buddy_resource(res);
 	const u64 size = res->num_pages << PAGE_SHIFT;
-	const u64 max_segment = round_down(UINT_MAX, page_alignment);
+	const u32 max_segment = round_down(UINT_MAX, page_alignment);
 	struct drm_buddy *mm = bman_res->mm;
 	struct list_head *blocks = &bman_res->blocks;
 	struct drm_buddy_block *block;
@@ -207,7 +207,7 @@ struct i915_refct_sgt *i915_rsgt_from_buddy_resource(struct ttm_resource *res,
 				st->nents++;
 			}
 
-			len = min(block_size, max_segment - sg->length);
+			len = min_t(u64, block_size, max_segment - sg->length);
 			sg->length += len;
 			sg_dma_len(sg) += len;
 
diff --git a/drivers/gpu/drm/i915/i915_scatterlist.h b/drivers/gpu/drm/i915/i915_scatterlist.h
index b13e4cdea923..9ddb3e743a3e 100644
--- a/drivers/gpu/drm/i915/i915_scatterlist.h
+++ b/drivers/gpu/drm/i915/i915_scatterlist.h
@@ -214,10 +214,10 @@ void i915_refct_sgt_init(struct i915_refct_sgt *rsgt, size_t size);
 
 struct i915_refct_sgt *i915_rsgt_from_mm_node(const struct drm_mm_node *node,
 					      u64 region_start,
-					      u64 page_alignment);
+					      u32 page_alignment);
 
 struct i915_refct_sgt *i915_rsgt_from_buddy_resource(struct ttm_resource *res,
 						     u64 region_start,
-						     u64 page_alignment);
+						     u32 page_alignment);
 
 #endif
diff --git a/drivers/gpu/drm/i915/intel_region_ttm.c b/drivers/gpu/drm/i915/intel_region_ttm.c
index 6873808a7015..575d67bc6ffe 100644
--- a/drivers/gpu/drm/i915/intel_region_ttm.c
+++ b/drivers/gpu/drm/i915/intel_region_ttm.c
@@ -163,7 +163,7 @@ int intel_region_ttm_fini(struct intel_memory_region *mem)
 struct i915_refct_sgt *
 intel_region_ttm_resource_to_rsgt(struct intel_memory_region *mem,
 				  struct ttm_resource *res,
-				  u64 page_alignment)
+				  u32 page_alignment)
 {
 	if (mem->is_range_manager) {
 		struct ttm_range_mgr_node *range_node =
diff --git a/drivers/gpu/drm/i915/intel_region_ttm.h b/drivers/gpu/drm/i915/intel_region_ttm.h
index 98fba5155619..5bb8d8b582ae 100644
--- a/drivers/gpu/drm/i915/intel_region_ttm.h
+++ b/drivers/gpu/drm/i915/intel_region_ttm.h
@@ -25,7 +25,7 @@ int intel_region_ttm_fini(struct intel_memory_region *mem);
 struct i915_refct_sgt *
 intel_region_ttm_resource_to_rsgt(struct intel_memory_region *mem,
 				  struct ttm_resource *res,
-				  u64 page_alignment);
+				  u32 page_alignment);
 
 void intel_region_ttm_resource_free(struct intel_memory_region *mem,
 				    struct ttm_resource *res);
-- 
2.36.1

