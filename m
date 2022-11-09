Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4856231AA
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 18:42:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4EA410E60A;
	Wed,  9 Nov 2022 17:42:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7B0F10E608;
 Wed,  9 Nov 2022 17:42:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668015723; x=1699551723;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P0Y/TuIx5G7EesaKwYLhuje65QYeN8VrseQmO3KDzWY=;
 b=Mhwcyi8oFAdMyzTbfUtwXGHU/7d6n5gi4i1NJsoqrqNqB5LvT2tVzhF1
 sDJWxU6lWXh3hs3bCoXL3TknouAyCzno7NJuJ9La9xsNbE41mnahcPCS0
 PdMWFWdyVioAbE/7kMjqT7P3onf/sl8TK80uGKJ3mAysYQ+RtDe8PduZG
 qTOAaHxTqrovn3KIE1XZaGetizyfFX9K9QDL6HAapv8Ft/dAaco+QI8sM
 V5WltRLk2BmRFMhF2xnQv7HPFmAhA55W51o1pqTZ8yqY+eW4zOobWqz7v
 pPXerssm5QzzQbLM0M0iMyBVLpUlM/Mc87bVR31SG9r3j08lpvoS2hKYh A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="309761566"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="309761566"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 09:41:37 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="779433379"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="779433379"
Received: from dvorobye-mobl.ccr.corp.intel.com (HELO intel.com)
 ([10.252.32.169])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 09:41:33 -0800
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed,  9 Nov 2022 18:40:57 +0100
Message-Id: <20221109174058.912720-3-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20221109174058.912720-1-andi.shyti@linux.intel.com>
References: <20221109174058.912720-1-andi.shyti@linux.intel.com>
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris@chris-wilson.co.uk>

Introduce the concept of padding the i915_vma with guard pages before
and after. The major consequence is that all ordinary uses of i915_vma
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
larger node. We must not report EINVAL but ENOSPC as these are unavailable
locations within the GTT rather than conflicting user requirements.

In the next patch, we start using guard pages for scanout objects. While
these are limited to GGTT vma, on a few platforms these vma (or at least
an alias of the vma) is shared with userspace, so we may leak the
existence of such guards if we are not careful to ensure that the
execobj.offset is transparent and excludes the guards. (On such platforms
like ivb, without full-ppgtt, userspace has to use relocations so the
presence of more untouchable regions within its GTT such be of no further
issue.)

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c     | 14 ++++++++----
 drivers/gpu/drm/i915/i915_gem_gtt.h      |  3 ++-
 drivers/gpu/drm/i915/i915_vma.c          | 27 ++++++++++++++++++------
 drivers/gpu/drm/i915/i915_vma.h          |  5 +++--
 drivers/gpu/drm/i915/i915_vma_resource.c |  4 ++--
 drivers/gpu/drm/i915/i915_vma_resource.h |  7 +++++-
 drivers/gpu/drm/i915/i915_vma_types.h    |  3 ++-
 7 files changed, 46 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 2518cebbf931c..0dd81b18716c3 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -287,8 +287,11 @@ static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
 	 */
 
 	gte = (gen8_pte_t __iomem *)ggtt->gsm;
-	gte += vma_res->start / I915_GTT_PAGE_SIZE;
-	end = gte + vma_res->node_size / I915_GTT_PAGE_SIZE;
+	gte += (vma_res->start - vma_res->guard) / I915_GTT_PAGE_SIZE;
+	end = gte + vma_res->guard / I915_GTT_PAGE_SIZE;
+	while (gte < end)
+		gen8_set_pte(gte++, vm->scratch[0]->encode);
+	end += (vma_res->node_size + vma_res->guard) / I915_GTT_PAGE_SIZE;
 
 	for_each_sgt_daddr(addr, iter, vma_res->bi.pages)
 		gen8_set_pte(gte++, pte_encode | addr);
@@ -338,9 +341,12 @@ static void gen6_ggtt_insert_entries(struct i915_address_space *vm,
 	dma_addr_t addr;
 
 	gte = (gen6_pte_t __iomem *)ggtt->gsm;
-	gte += vma_res->start / I915_GTT_PAGE_SIZE;
-	end = gte + vma_res->node_size / I915_GTT_PAGE_SIZE;
+	gte += (vma_res->start - vma_res->guard) / I915_GTT_PAGE_SIZE;
 
+	end = gte + vma_res->guard / I915_GTT_PAGE_SIZE;
+	while (gte < end)
+		iowrite32(vm->scratch[0]->encode, gte++);
+	end += (vma_res->node_size + vma_res->guard) / I915_GTT_PAGE_SIZE;
 	for_each_sgt_daddr(addr, iter, vma_res->bi.pages)
 		iowrite32(vm->pte_encode(addr, level, flags), gte++);
 	GEM_BUG_ON(gte > end);
diff --git a/drivers/gpu/drm/i915/i915_gem_gtt.h b/drivers/gpu/drm/i915/i915_gem_gtt.h
index 8c2f57eb5ddaa..2434197830523 100644
--- a/drivers/gpu/drm/i915/i915_gem_gtt.h
+++ b/drivers/gpu/drm/i915/i915_gem_gtt.h
@@ -44,7 +44,8 @@ int i915_gem_gtt_insert(struct i915_address_space *vm,
 #define PIN_HIGH		BIT_ULL(5)
 #define PIN_OFFSET_BIAS		BIT_ULL(6)
 #define PIN_OFFSET_FIXED	BIT_ULL(7)
-#define PIN_VALIDATE		BIT_ULL(8) /* validate placement only, no need to call unpin() */
+#define PIN_OFFSET_GUARD	BIT_ULL(8)
+#define PIN_VALIDATE		BIT_ULL(9) /* validate placement only, no need to call unpin() */
 
 #define PIN_GLOBAL		BIT_ULL(10) /* I915_VMA_GLOBAL_BIND */
 #define PIN_USER		BIT_ULL(11) /* I915_VMA_LOCAL_BIND */
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 2be43885a2b5d..ff24a654565f6 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -417,7 +417,7 @@ i915_vma_resource_init_from_vma(struct i915_vma_resource *vma_res,
 			       obj->mm.rsgt, i915_gem_object_is_readonly(obj),
 			       i915_gem_object_is_lmem(obj), obj->mm.region,
 			       vma->ops, vma->private, __i915_vma_offset(vma),
-			       __i915_vma_size(vma), vma->size);
+			       __i915_vma_size(vma), vma->size, vma->guard);
 }
 
 /**
@@ -747,7 +747,7 @@ static int
 i915_vma_insert(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 		u64 size, u64 alignment, u64 flags)
 {
-	unsigned long color;
+	unsigned long color, guard;
 	u64 start, end;
 	int ret;
 
@@ -755,7 +755,7 @@ i915_vma_insert(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 	GEM_BUG_ON(drm_mm_node_allocated(&vma->node));
 
 	size = max(size, vma->size);
-	alignment = max(alignment, vma->display_alignment);
+	alignment = max_t(typeof(alignment), alignment, vma->display_alignment);
 	if (flags & PIN_MAPPABLE) {
 		size = max_t(typeof(size), size, vma->fence_size);
 		alignment = max_t(typeof(alignment),
@@ -766,6 +766,9 @@ i915_vma_insert(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 	GEM_BUG_ON(!IS_ALIGNED(alignment, I915_GTT_MIN_ALIGNMENT));
 	GEM_BUG_ON(!is_power_of_2(alignment));
 
+	guard = vma->guard; /* retain guard across rebinds */
+	guard = ALIGN(guard, alignment);
+
 	start = flags & PIN_OFFSET_BIAS ? flags & PIN_OFFSET_MASK : 0;
 	GEM_BUG_ON(!IS_ALIGNED(start, I915_GTT_PAGE_SIZE));
 
@@ -775,6 +778,7 @@ i915_vma_insert(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 	if (flags & PIN_ZONE_4G)
 		end = min_t(u64, end, (1ULL << 32) - I915_GTT_PAGE_SIZE);
 	GEM_BUG_ON(!IS_ALIGNED(end, I915_GTT_PAGE_SIZE));
+	GEM_BUG_ON(2 * guard > end);
 
 	alignment = max(alignment, i915_vm_obj_min_alignment(vma->vm, vma->obj));
 
@@ -782,7 +786,7 @@ i915_vma_insert(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 	 * aperture has, reject it early before evicting everything in a vain
 	 * attempt to find space.
 	 */
-	if (size > end) {
+	if (size > end - 2 * guard) {
 		DRM_DEBUG("Attempting to bind an object larger than the aperture: request=%llu > %s aperture=%llu\n",
 			  size, flags & PIN_MAPPABLE ? "mappable" : "total",
 			  end);
@@ -799,13 +803,23 @@ i915_vma_insert(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
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
 
 		ret = i915_gem_gtt_reserve(vma->vm, ww, &vma->node,
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
@@ -853,6 +867,7 @@ i915_vma_insert(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 	GEM_BUG_ON(!i915_gem_valid_gtt_space(vma, color));
 
 	list_move_tail(&vma->vm_link, &vma->vm->bound_list);
+	vma->guard = guard;
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index 0954f8a933869..6acc986190137 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -127,7 +127,7 @@ static inline bool i915_vma_is_closed(const struct i915_vma *vma)
 /* Internal use only. */
 static inline u64 __i915_vma_size(const struct i915_vma *vma)
 {
-	return vma->node.size;
+	return vma->node.size - 2 * vma->guard;
 }
 
 /**
@@ -149,7 +149,8 @@ static inline u64 i915_vma_size(const struct i915_vma *vma)
 /* Internal use only. */
 static inline u64 __i915_vma_offset(const struct i915_vma *vma)
 {
-	return vma->node.start;
+	/* The actual start of the vma->pages is after the guard pages. */
+	return vma->node.start + vma->guard;
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/i915_vma_resource.c b/drivers/gpu/drm/i915/i915_vma_resource.c
index de1342dbfa128..6ba7a7feceba1 100644
--- a/drivers/gpu/drm/i915/i915_vma_resource.c
+++ b/drivers/gpu/drm/i915/i915_vma_resource.c
@@ -34,8 +34,8 @@ static struct kmem_cache *slab_vma_resources;
  * and removal of fences increases as O(ln(pending_unbinds)) instead of
  * O(1) for a single fence without interval tree.
  */
-#define VMA_RES_START(_node) ((_node)->start)
-#define VMA_RES_LAST(_node) ((_node)->start + (_node)->node_size - 1)
+#define VMA_RES_START(_node) ((_node)->start - (_node)->guard)
+#define VMA_RES_LAST(_node) ((_node)->start + (_node)->node_size + (_node)->guard - 1)
 INTERVAL_TREE_DEFINE(struct i915_vma_resource, rb,
 		     u64, __subtree_last,
 		     VMA_RES_START, VMA_RES_LAST, static, vma_res_itree);
diff --git a/drivers/gpu/drm/i915/i915_vma_resource.h b/drivers/gpu/drm/i915/i915_vma_resource.h
index 54edf3739ca0b..c1864e3d0b43e 100644
--- a/drivers/gpu/drm/i915/i915_vma_resource.h
+++ b/drivers/gpu/drm/i915/i915_vma_resource.h
@@ -57,6 +57,7 @@ struct i915_page_sizes {
  * @node_size: Size of the allocated range manager node with padding
  * subtracted.
  * @vma_size: Bind size.
+ * @guard: The size of guard area preceding and trailing the bind.
  * @page_sizes_gtt: Resulting page sizes from the bind operation.
  * @bound_flags: Flags indicating binding status.
  * @allocated: Backend private data. TODO: Should move into @private.
@@ -115,6 +116,7 @@ struct i915_vma_resource {
 	u64 start;
 	u64 node_size;
 	u64 vma_size;
+	u32 guard;
 	u32 page_sizes_gtt;
 
 	u32 bound_flags;
@@ -179,6 +181,7 @@ static inline void i915_vma_resource_put(struct i915_vma_resource *vma_res)
  * @start: Offset into the address space of bind range start after padding.
  * @node_size: Size of the allocated range manager node minus padding.
  * @size: Bind size.
+ * @guard: The size of the guard area preceding and trailing the bind.
  *
  * Initializes a vma resource allocated using i915_vma_resource_alloc().
  * The reason for having separate allocate and initialize function is that
@@ -197,7 +200,8 @@ static inline void i915_vma_resource_init(struct i915_vma_resource *vma_res,
 					  void *private,
 					  u64 start,
 					  u64 node_size,
-					  u64 size)
+					  u64 size,
+					  u32 guard)
 {
 	__i915_vma_resource_init(vma_res);
 	vma_res->vm = vm;
@@ -215,6 +219,7 @@ static inline void i915_vma_resource_init(struct i915_vma_resource *vma_res,
 	vma_res->start = start;
 	vma_res->node_size = node_size;
 	vma_res->vma_size = size;
+	vma_res->guard = guard;
 }
 
 static inline void i915_vma_resource_fini(struct i915_vma_resource *vma_res)
diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
index ec0f6c9f57d02..77fda2244d161 100644
--- a/drivers/gpu/drm/i915/i915_vma_types.h
+++ b/drivers/gpu/drm/i915/i915_vma_types.h
@@ -197,14 +197,15 @@ struct i915_vma {
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
2.37.2

