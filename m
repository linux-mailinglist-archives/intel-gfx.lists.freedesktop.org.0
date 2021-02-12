Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C7F319C91
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 11:22:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B35806E58E;
	Fri, 12 Feb 2021 10:22:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E8C46E58A
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Feb 2021 10:22:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from build.alporthouse.com (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23846944-1500050 
 for multiple; Fri, 12 Feb 2021 10:22:25 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Feb 2021 10:22:23 +0000
Message-Id: <20210212102224.31060-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210212102224.31060-1-chris@chris-wilson.co.uk>
References: <20210212102224.31060-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
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
Cc: Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Introduce the concept of padding the i915_vma with guard pages before
and aft. The major consequence is that all ordinary uses of i915_vma
must use i915_vma_offset/i915_vma_size and not i915_vma.node.start/size
directly, as the drm_mm_node will include the guard pages that surround
our object.

So in this patch, we look for all uses of i915_vma->node.start that
instead need to include the guard offset and switch them to
i915_vma_offset(), and in a few cases to i915_ggtt_offset(). Notable
exceptions are the selftests, which expect exact behaviour.

The biggest connundrum is how exactly to mix request a fixed address
with guard pages, particular through the existing uABI. The user does
not know about guard pages, so such must be transparent to the user, and
so the execobj.offset must be that of the object itself excluding the
guard. So a PIN_OFFSET_FIXED must then be exclusive of the guard pages.

In the next patch, we start using guard pages for scanout objects. While
these are limited to GGTT vma, on a few platforms these vma (or at least
an alias of the vma) is shared with userspace, so we may leak the
existence of such guards if we are not careful to ensure that the
execobj.offset is transparent and excludes the guards. (On such platforms,
without full-ppgtt, userspace has to use relocations so the presence of
more untouchable regions within its GTT such be of no further issue.)

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c  | 12 ++++++++++--
 drivers/gpu/drm/i915/i915_vma.c       | 10 +++++++---
 drivers/gpu/drm/i915/i915_vma.h       |  8 ++++----
 drivers/gpu/drm/i915/i915_vma_types.h |  3 ++-
 4 files changed, 23 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index c5803c434d33..6b326138e765 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -238,8 +238,12 @@ static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
 
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
@@ -289,8 +293,12 @@ static void gen6_ggtt_insert_entries(struct i915_address_space *vm,
 
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
index 17fe455bd770..155f510b4cc6 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -623,7 +623,7 @@ bool i915_gem_valid_gtt_space(struct i915_vma *vma, unsigned long color)
 static int
 i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 {
-	unsigned long color;
+	unsigned long color, guard;
 	u64 start, end;
 	int ret;
 
@@ -631,13 +631,16 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 	GEM_BUG_ON(drm_mm_node_allocated(&vma->node));
 
 	size = max(size, vma->size);
-	alignment = max(alignment, vma->display_alignment);
+	alignment = max_t(typeof(alignment), alignment, vma->display_alignment);
 	if (flags & PIN_MAPPABLE) {
 		size = max_t(typeof(size), size, vma->fence_size);
 		alignment = max_t(typeof(alignment),
 				  alignment, vma->fence_alignment);
 	}
 
+	guard = 0;
+	size += 2 * guard;
+
 	GEM_BUG_ON(!IS_ALIGNED(size, I915_GTT_PAGE_SIZE));
 	GEM_BUG_ON(!IS_ALIGNED(alignment, I915_GTT_MIN_ALIGNMENT));
 	GEM_BUG_ON(!is_power_of_2(alignment));
@@ -674,7 +677,7 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 			return -EINVAL;
 
 		ret = i915_gem_gtt_reserve(vma->vm, &vma->node,
-					   size, offset, color,
+					   size, offset - guard, color,
 					   flags);
 		if (ret)
 			return ret;
@@ -725,6 +728,7 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 	GEM_BUG_ON(!i915_gem_valid_gtt_space(vma, color));
 
 	list_add_tail(&vma->vm_link, &vma->vm->bound_list);
+	vma->guard = guard;
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index 5049655a24c1..fddd2359b392 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -112,14 +112,14 @@ static inline bool i915_vma_is_closed(const struct i915_vma *vma)
 
 static inline u64 i915_vma_size(const struct i915_vma *vma)
 {
-       GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
-       return vma->node.size;
+	GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
+	return vma->node.size - 2 * vma->guard;
 }
 
 static inline u64 i915_vma_offset(const struct i915_vma *vma)
 {
-       GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
-       return vma->node.start;
+	GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
+	return vma->node.start + vma->guard;
 }
 
 static inline u32 i915_ggtt_offset(const struct i915_vma *vma)
diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
index f5cb848b7a7e..f2e4c61c889f 100644
--- a/drivers/gpu/drm/i915/i915_vma_types.h
+++ b/drivers/gpu/drm/i915/i915_vma_types.h
@@ -182,14 +182,15 @@ struct i915_vma {
 	struct i915_fence_reg *fence;
 
 	u64 size;
-	u64 display_alignment;
 	struct i915_page_sizes page_sizes;
 
 	/* mmap-offset associated with fencing for this vma */
 	struct i915_mmap_offset	*mmo;
 
+	u32 guard;
 	u32 fence_size;
 	u32 fence_alignment;
+	u32 display_alignment;
 
 	/**
 	 * Count of the number of times this vma has been opened by different
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
