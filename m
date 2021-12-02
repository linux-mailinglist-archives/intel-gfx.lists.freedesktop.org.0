Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8899465F9D
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Dec 2021 09:38:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F08926E9D5;
	Thu,  2 Dec 2021 08:38:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16EDB6E9DA
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Dec 2021 08:38:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="236600065"
X-IronPort-AV: E=Sophos;i="5.87,281,1631602800"; d="scan'208";a="236600065"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 00:37:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,281,1631602800"; d="scan'208";a="500642645"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by orsmga007.jf.intel.com with ESMTP; 02 Dec 2021 00:37:07 -0800
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Dec 2021 14:01:24 +0530
Message-Id: <20211202083125.3999668-3-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211202083125.3999668-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
References: <20211202083125.3999668-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Introduce guard pages to i915_vma
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

From: Chris Wilson <chris@chris-wilson.co.uk>

Introduce the concept of padding the i915_vma with guard pages before
and aft. The major consequence is that all ordinary uses of i915_vma
must use i915_vma_offset/i915_vma_size and not i915_vma.node.start/size
directly, as the drm_mm_node will include the guard pages that surround
our object.

The biggest connundrum is how exactly to mix requesting a fixed address
with guard pages, particularly through the existing uABI. The user does
not know about guard pages, so such must be transparent to the user, and
so the execobj.offset must be that of the object itself excluding the
guard. So a PIN_OFFSET_FIXED must then be exclusive of the guard pages.
The caveat is that some placements will be impossible with guard pages,
as wrap arounds need to be avoided, and the vma itself will require a
larger node. We must we not report EINVAL but ENOSPC as these are
unavailable locations within the GTT rather than conflicting user
requirements.

In the next patch, we start using guard pages for scanout objects. While
these are limited to GGTT vma, on a few platforms these vma (or at least
an alias of the vma) is shared with userspace, so we may leak the
existence of such guards if we are not careful to ensure that the
execobj.offset is transparent and excludes the guards. (On such platforms
like ivb, without full-ppgtt, userspace has to use relocations so the
presence of more untouchable regions within its GTT such be of no further
issue.)

v2: Include the guard range in the overflow checks and placement
restrictions.

v3: Fix the check on the placement upper bound. The request user offset
is relative to the guard offset (not the node.start) and so we should
not include the initial guard offset again when computing the upper
bound of the node.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c  | 12 ++++++++++--
 drivers/gpu/drm/i915/i915_vma.c       | 26 +++++++++++++++++++++-----
 drivers/gpu/drm/i915/i915_vma.h       |  5 +++--
 drivers/gpu/drm/i915/i915_vma_types.h |  3 ++-
 4 files changed, 36 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 07133f0c529e..282ed6dd3ca2 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -256,8 +256,12 @@ static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
 
 	gte = (gen8_pte_t __iomem *)ggtt->gsm;
 	gte += vma->node.start / I915_GTT_PAGE_SIZE;
-	end = gte + vma->node.size / I915_GTT_PAGE_SIZE;
 
+	end = gte + vma->guard / I915_GTT_PAGE_SIZE;
+	while (gte < end)
+		gen8_set_pte(gte++, vm->scratch[0]->encode);
+
+	end += (vma->node.size - vma->guard) / I915_GTT_PAGE_SIZE;
 	for_each_sgt_daddr(addr, iter, vma->pages)
 		gen8_set_pte(gte++, pte_encode | addr);
 	GEM_BUG_ON(gte > end);
@@ -307,8 +311,12 @@ static void gen6_ggtt_insert_entries(struct i915_address_space *vm,
 
 	gte = (gen6_pte_t __iomem *)ggtt->gsm;
 	gte += vma->node.start / I915_GTT_PAGE_SIZE;
-	end = gte + vma->node.size / I915_GTT_PAGE_SIZE;
 
+	end = gte + vma->guard / I915_GTT_PAGE_SIZE;
+	while (gte < end)
+		gen8_set_pte(gte++, vm->scratch[0]->encode);
+
+	end += (vma->node.size - vma->guard) / I915_GTT_PAGE_SIZE;
 	for_each_sgt_daddr(addr, iter, vma->pages)
 		iowrite32(vm->pte_encode(addr, level, flags), gte++);
 	GEM_BUG_ON(gte > end);
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 10473ce8a047..080ffa583edf 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -658,7 +658,7 @@ bool i915_gem_valid_gtt_space(struct i915_vma *vma, unsigned long color)
 static int
 i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 {
-	unsigned long color;
+	unsigned long color, guard;
 	u64 start, end;
 	int ret;
 
@@ -666,7 +666,7 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 	GEM_BUG_ON(drm_mm_node_allocated(&vma->node));
 
 	size = max(size, vma->size);
-	alignment = max(alignment, vma->display_alignment);
+	alignment = max_t(typeof(alignment), alignment, vma->display_alignment);
 	if (flags & PIN_MAPPABLE) {
 		size = max_t(typeof(size), size, vma->fence_size);
 		alignment = max_t(typeof(alignment),
@@ -677,6 +677,9 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 	GEM_BUG_ON(!IS_ALIGNED(alignment, I915_GTT_MIN_ALIGNMENT));
 	GEM_BUG_ON(!is_power_of_2(alignment));
 
+	guard = vma->guard; /* retain guard across rebinds */
+	guard = ALIGN(guard, alignment);
+
 	start = flags & PIN_OFFSET_BIAS ? flags & PIN_OFFSET_MASK : 0;
 	GEM_BUG_ON(!IS_ALIGNED(start, I915_GTT_PAGE_SIZE));
 
@@ -686,12 +689,13 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 	if (flags & PIN_ZONE_4G)
 		end = min_t(u64, end, (1ULL << 32) - I915_GTT_PAGE_SIZE);
 	GEM_BUG_ON(!IS_ALIGNED(end, I915_GTT_PAGE_SIZE));
+	GEM_BUG_ON(2 * guard > end);
 
 	/* If binding the object/GGTT view requires more space than the entire
 	 * aperture has, reject it early before evicting everything in a vain
 	 * attempt to find space.
 	 */
-	if (size > end) {
+	if (size > end - 2 * guard) {
 		DRM_DEBUG("Attempting to bind an object larger than the aperture: request=%llu > %s aperture=%llu\n",
 			  size, flags & PIN_MAPPABLE ? "mappable" : "total",
 			  end);
@@ -707,13 +711,24 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 		if (!IS_ALIGNED(offset, alignment) ||
 		    range_overflows(offset, size, end))
 			return -EINVAL;
+		/*
+		 * The caller knows not of the guard added by others and
+		 * requests for the offset of the start of its buffer
+		 * to be fixed, which may not be the same as the position
+		 * of the vma->node due to the guard pages.
+		 */
+		if (offset < guard || offset + size > end - guard)
+			return -ENOSPC;
+
 
 		ret = i915_gem_gtt_reserve(vma->vm, &vma->node,
-					   size, offset, color,
-					   flags);
+					   size + 2 * guard,
+					   offset - guard,
+					   color, flags);
 		if (ret)
 			return ret;
 	} else {
+		size += 2 * guard;
 		/*
 		 * We only support huge gtt pages through the 48b PPGTT,
 		 * however we also don't want to force any alignment for
@@ -760,6 +775,7 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 	GEM_BUG_ON(!i915_gem_valid_gtt_space(vma, color));
 
 	list_add_tail(&vma->vm_link, &vma->vm->bound_list);
+	vma->guard = guard;
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index 1d13d619ff86..d35ce4e7170c 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -128,12 +128,13 @@ static inline bool i915_vma_is_closed(const struct i915_vma *vma)
 static inline u64 i915_vma_size(const struct i915_vma *vma)
 {
 	GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
-	return vma->node.size;
+	return vma->node.size - 2 * vma->guard;
 }
 
 static inline u64 __i915_vma_offset(const struct i915_vma *vma)
 {
-	return vma->node.start;
+	/* The actual start of the vma->pages is after the guard pages. */
+	return vma->node.start + vma->guard;
 }
 
 static inline u64 i915_vma_offset(const struct i915_vma *vma)
diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
index f03fa96a1701..a224daf1044e 100644
--- a/drivers/gpu/drm/i915/i915_vma_types.h
+++ b/drivers/gpu/drm/i915/i915_vma_types.h
@@ -195,14 +195,15 @@ struct i915_vma {
 	struct i915_fence_reg *fence;
 
 	u64 size;
-	u64 display_alignment;
 	struct i915_page_sizes page_sizes;
 
 	/* mmap-offset associated with fencing for this vma */
 	struct i915_mmap_offset	*mmo;
 
+	u32 guard; /* padding allocated around vma->pages within the node */
 	u32 fence_size;
 	u32 fence_alignment;
+	u32 display_alignment;
 
 	/**
 	 * Count of the number of times this vma has been opened by different
-- 
2.31.1

