Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 004C73F407F
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Aug 2021 18:30:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38CBE89F92;
	Sun, 22 Aug 2021 16:30:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3449089F77
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Aug 2021 16:30:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10084"; a="302567462"
X-IronPort-AV: E=Sophos;i="5.84,342,1620716400"; d="scan'208";a="302567462"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2021 09:30:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,342,1620716400"; d="scan'208";a="596395800"
Received: from ayazahma-nuc8i7beh.iind.intel.com ([10.145.162.59])
 by fmsmga001.fm.intel.com with ESMTP; 22 Aug 2021 09:30:36 -0700
From: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Matthew Auld <matthew.auld@intel.com>,
 Stuart Summers <stuart.summers@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Sun, 22 Aug 2021 21:57:03 +0530
Message-Id: <20210822162706.819507-11-ayaz.siddiqui@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210822162706.819507-1-ayaz.siddiqui@intel.com>
References: <20210822162706.819507-1-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 10/13] drm/i915/xehpsdv: implement memory coloring
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

From: Matthew Auld <matthew.auld@intel.com>

The basic idea is that each 2M block(page-table) has a color, depending
on if the page-table is occupied by LMEM objects(64K) or SMEM
objects(4K), where our goal is to prevent mixing 64K and 4K GTT pages in
the page-table, which is not supported by the HW.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Stuart Summers <stuart.summers@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c  | 16 ++++++++++
 drivers/gpu/drm/i915/gt/intel_gtt.h   |  6 ++++
 drivers/gpu/drm/i915/i915_gem_evict.c | 17 ++++++++++
 drivers/gpu/drm/i915/i915_vma.c       | 46 +++++++++++++++++++--------
 4 files changed, 71 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 8bf7c81064e1..67ac85e6a0b3 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -464,6 +464,19 @@ gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
 	return idx;
 }
 
+static void xehpsdv_ppgtt_color_adjust(const struct drm_mm_node *node,
+				       unsigned long color,
+				       u64 *start,
+				       u64 *end)
+{
+	if (i915_node_color_differs(node, color))
+		*start = round_up(*start, SZ_2M);
+
+	node = list_next_entry(node, node_list);
+	if (i915_node_color_differs(node, color))
+		*end = round_down(*end, SZ_2M);
+}
+
 static void
 xehpsdv_ppgtt_insert_huge(struct i915_vma *vma,
 			  struct sgt_dma *iter,
@@ -898,6 +911,9 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt)
 		ppgtt->vm.alloc_scratch_dma = alloc_pt_dma;
 	}
 
+	if (HAS_64K_PAGES(gt->i915))
+		ppgtt->vm.mm.color_adjust = xehpsdv_ppgtt_color_adjust;
+
 	err = gen8_init_scratch(&ppgtt->vm);
 	if (err)
 		goto err_free;
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index a4388dd06177..2dc79fade83b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -394,6 +394,12 @@ i915_vm_has_cache_coloring(struct i915_address_space *vm)
 	return i915_is_ggtt(vm) && vm->mm.color_adjust;
 }
 
+static inline bool
+i915_vm_has_memory_coloring(struct i915_address_space *vm)
+{
+	return !i915_is_ggtt(vm) && vm->mm.color_adjust;
+}
+
 static inline struct i915_ggtt *
 i915_vm_to_ggtt(struct i915_address_space *vm)
 {
diff --git a/drivers/gpu/drm/i915/i915_gem_evict.c b/drivers/gpu/drm/i915/i915_gem_evict.c
index 2b73ddb11c66..006bf4924c24 100644
--- a/drivers/gpu/drm/i915/i915_gem_evict.c
+++ b/drivers/gpu/drm/i915/i915_gem_evict.c
@@ -292,6 +292,13 @@ int i915_gem_evict_for_node(struct i915_address_space *vm,
 
 		/* Always look at the page afterwards to avoid the end-of-GTT */
 		end += I915_GTT_PAGE_SIZE;
+	} else if (i915_vm_has_memory_coloring(vm)) {
+		/*
+		 * Expand the search the cover the page-table boundries, in
+		 * case we need to flip the color of the page-table(s).
+		 */
+		start = round_down(start, SZ_2M);
+		end = round_up(end, SZ_2M);
 	}
 	GEM_BUG_ON(start >= end);
 
@@ -321,6 +328,16 @@ int i915_gem_evict_for_node(struct i915_address_space *vm,
 				if (node->color == target->color)
 					continue;
 			}
+		} else if (i915_vm_has_memory_coloring(vm)) {
+			if (node->start + node->size <= target->start) {
+				if (node->color == target->color)
+					continue;
+			}
+
+			if (node->start >= target->start + target->size) {
+				if (node->color == target->color)
+					continue;
+			}
 		}
 
 		if (i915_vma_is_pinned(vma)) {
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 1ea1fa08efdf..2664d3ab49b9 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -585,6 +585,10 @@ bool i915_gem_valid_gtt_space(struct i915_vma *vma, unsigned long color)
 	struct drm_mm_node *node = &vma->node;
 	struct drm_mm_node *other;
 
+	/* Only valid to be called on an already inserted vma */
+	GEM_BUG_ON(!drm_mm_node_allocated(node));
+	GEM_BUG_ON(list_empty(&node->node_list));
+
 	/*
 	 * On some machines we have to be careful when putting differing types
 	 * of snoopable memory together to avoid the prefetcher crossing memory
@@ -592,22 +596,34 @@ bool i915_gem_valid_gtt_space(struct i915_vma *vma, unsigned long color)
 	 * these constraints apply and set the drm_mm.color_adjust
 	 * appropriately.
 	 */
-	if (!i915_vm_has_cache_coloring(vma->vm))
-		return true;
-
-	/* Only valid to be called on an already inserted vma */
-	GEM_BUG_ON(!drm_mm_node_allocated(node));
-	GEM_BUG_ON(list_empty(&node->node_list));
+	if (i915_vm_has_cache_coloring(vma->vm)) {
+		other = list_prev_entry(node, node_list);
+		if (i915_node_color_differs(other, color) &&
+		    !drm_mm_hole_follows(other))
+			return false;
 
-	other = list_prev_entry(node, node_list);
-	if (i915_node_color_differs(other, color) &&
-	    !drm_mm_hole_follows(other))
-		return false;
+		other = list_next_entry(node, node_list);
+		if (i915_node_color_differs(other, color) &&
+		    !drm_mm_hole_follows(node))
+			return false;
+	/*
+	 * On XEHPSDV we need to make sure we are not mixing LMEM and SMEM objects
+	 * in the same page-table, i.e mixing 64K and 4K gtt pages in the same
+	 * page-table.
+	 */
+	} else if (i915_vm_has_memory_coloring(vma->vm)) {
+		other = list_prev_entry(node, node_list);
+		if (i915_node_color_differs(other, color) &&
+		    !drm_mm_hole_follows(other) &&
+		    !IS_ALIGNED(other->start + other->size, SZ_2M))
+			return false;
 
-	other = list_next_entry(node, node_list);
-	if (i915_node_color_differs(other, color) &&
-	    !drm_mm_hole_follows(node))
-		return false;
+		other = list_next_entry(node, node_list);
+		if (i915_node_color_differs(other, color) &&
+		    !drm_mm_hole_follows(node) &&
+		    !IS_ALIGNED(other->start, SZ_2M))
+			return false;
+	}
 
 	return true;
 }
@@ -676,6 +692,8 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 
 		if (i915_vm_has_cache_coloring(vma->vm))
 			color = vma->obj->cache_level;
+		else if (i915_vm_has_memory_coloring(vma->vm))
+			color = i915_gem_object_is_lmem(vma->obj);
 	}
 
 	if (flags & PIN_OFFSET_FIXED) {
-- 
2.26.2

