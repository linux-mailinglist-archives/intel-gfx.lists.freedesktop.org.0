Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D53220C53
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 13:52:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E3976EB24;
	Wed, 15 Jul 2020 11:52:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB54C6EAD1
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 11:52:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21826128-1500050 
 for multiple; Wed, 15 Jul 2020 12:51:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jul 2020 12:51:02 +0100
Message-Id: <20200715115147.11866-21-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200715115147.11866-1-chris@chris-wilson.co.uk>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 21/66] drm/i915/gem: Asynchronous GTT unbinding
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

It is reasonably common for userspace (even modern drivers like iris) to
reuse an active address for a new buffer. This would cause the
application to stall under its mutex (originally struct_mutex) until the
old batches were idle and it could synchronously remove the stale PTE.
However, we can queue up a job that waits on the signal for the old
nodes to complete and upon those signals, remove the old nodes replacing
them with the new ones for the batch. This is still CPU driven, but in
theory we can do the GTT patching from the GPU. The job itself has a
completion signal allowing the execbuf to wait upon the rebinding, and
also other observers to coordinate with the common VM activity.

Letting userspace queue up more work, lets it do more stuff without
blocking other clients. In turn, we take care not to let it too much
concurrent work, creating a small number of queues for each context to
limit the number of concurrent tasks.

The implementation relies on only scheduling one unbind operation per
vma as we use the unbound vma->node location to track the stale PTE.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/1402
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 919 ++++++++++++++++--
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |   1 +
 drivers/gpu/drm/i915/gt/intel_gtt.c           |   4 +
 drivers/gpu/drm/i915/gt/intel_gtt.h           |   2 +
 drivers/gpu/drm/i915/i915_gem.c               |   7 +
 drivers/gpu/drm/i915/i915_gem_gtt.c           |   5 +
 drivers/gpu/drm/i915/i915_vma.c               |  71 +-
 drivers/gpu/drm/i915/i915_vma.h               |   4 +
 8 files changed, 883 insertions(+), 130 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 430b2d4dc747..bdcbb82bfc3d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -18,6 +18,7 @@
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_buffer_pool.h"
 #include "gt/intel_gt_pm.h"
+#include "gt/intel_gt_requests.h"
 #include "gt/intel_ring.h"
 
 #include "i915_drv.h"
@@ -43,6 +44,12 @@ struct eb_vma {
 	u32 handle;
 };
 
+struct eb_bind_vma {
+	struct eb_vma *ev;
+	struct drm_mm_node hole;
+	unsigned int bind_flags;
+};
+
 struct eb_vma_array {
 	struct kref kref;
 	struct eb_vma vma[];
@@ -66,11 +73,12 @@ struct eb_vma_array {
 	 I915_EXEC_RESOURCE_STREAMER)
 
 /* Catch emission of unexpected errors for CI! */
+#define __EINVAL__ 22
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM)
 #undef EINVAL
 #define EINVAL ({ \
 	DRM_DEBUG_DRIVER("EINVAL at %s:%d\n", __func__, __LINE__); \
-	22; \
+	__EINVAL__; \
 })
 #endif
 
@@ -311,6 +319,12 @@ static struct eb_vma_array *eb_vma_array_create(unsigned int count)
 	return arr;
 }
 
+static struct eb_vma_array *eb_vma_array_get(struct eb_vma_array *arr)
+{
+	kref_get(&arr->kref);
+	return arr;
+}
+
 static inline void eb_unreserve_vma(struct eb_vma *ev)
 {
 	struct i915_vma *vma = ev->vma;
@@ -444,7 +458,10 @@ eb_vma_misplaced(const struct drm_i915_gem_exec_object2 *entry,
 		 const struct i915_vma *vma,
 		 unsigned int flags)
 {
-	if (vma->node.size < entry->pad_to_size)
+	if (test_bit(I915_VMA_ERROR_BIT, __i915_vma_flags(vma)))
+		return true;
+
+	if (vma->node.size < max(vma->size, entry->pad_to_size))
 		return true;
 
 	if (entry->alignment && !IS_ALIGNED(vma->node.start, entry->alignment))
@@ -469,32 +486,6 @@ eb_vma_misplaced(const struct drm_i915_gem_exec_object2 *entry,
 	return false;
 }
 
-static u64 eb_pin_flags(const struct drm_i915_gem_exec_object2 *entry,
-			unsigned int exec_flags)
-{
-	u64 pin_flags = 0;
-
-	if (exec_flags & EXEC_OBJECT_NEEDS_GTT)
-		pin_flags |= PIN_GLOBAL;
-
-	/*
-	 * Wa32bitGeneralStateOffset & Wa32bitInstructionBaseOffset,
-	 * limit address to the first 4GBs for unflagged objects.
-	 */
-	if (!(exec_flags & EXEC_OBJECT_SUPPORTS_48B_ADDRESS))
-		pin_flags |= PIN_ZONE_4G;
-
-	if (exec_flags & __EXEC_OBJECT_NEEDS_MAP)
-		pin_flags |= PIN_MAPPABLE;
-
-	if (exec_flags & EXEC_OBJECT_PINNED)
-		pin_flags |= entry->offset | PIN_OFFSET_FIXED;
-	else if (exec_flags & __EXEC_OBJECT_NEEDS_BIAS)
-		pin_flags |= BATCH_OFFSET_BIAS | PIN_OFFSET_BIAS;
-
-	return pin_flags;
-}
-
 static bool eb_pin_vma_fence_inplace(struct eb_vma *ev)
 {
 	struct i915_vma *vma = ev->vma;
@@ -522,6 +513,10 @@ eb_pin_vma_inplace(struct i915_execbuffer *eb,
 	struct i915_vma *vma = ev->vma;
 	unsigned int pin_flags;
 
+	/* Concurrent async binds in progress, get in the queue */
+	if (!i915_active_is_idle(&vma->vm->binding))
+		return false;
+
 	if (eb_vma_misplaced(entry, vma, ev->flags))
 		return false;
 
@@ -642,45 +637,463 @@ eb_add_vma(struct i915_execbuffer *eb,
 	}
 }
 
-static int eb_reserve_vma(const struct i915_execbuffer *eb,
-			  struct eb_vma *ev,
-			  u64 pin_flags)
+struct eb_vm_work {
+	struct dma_fence_work base;
+	struct eb_vma_array *array;
+	struct eb_bind_vma *bind;
+	struct i915_address_space *vm;
+	struct i915_vm_pt_stash stash;
+	struct list_head evict_list;
+	u64 *p_flags;
+	u64 id;
+	unsigned long count;
+};
+
+static inline u64 node_end(const struct drm_mm_node *node)
+{
+	return node->start + node->size;
+}
+
+static int set_bind_fence(struct i915_vma *vma, struct eb_vm_work *work)
+{
+	struct dma_fence *prev;
+	int err = 0;
+
+	lockdep_assert_held(&vma->vm->mutex);
+	prev = i915_active_set_exclusive(&vma->active, &work->base.dma);
+	if (unlikely(prev)) {
+		err = i915_sw_fence_await_dma_fence(&work->base.chain, prev, 0,
+						    GFP_NOWAIT | __GFP_NOWARN);
+		dma_fence_put(prev);
+	}
+
+	return err < 0 ? err : 0;
+}
+
+static int await_evict(struct eb_vm_work *work, struct i915_vma *vma)
 {
-	struct drm_i915_gem_exec_object2 *entry = ev->exec;
-	struct i915_vma *vma = ev->vma;
 	int err;
 
-	if (drm_mm_node_allocated(&vma->node) &&
-	    eb_vma_misplaced(entry, vma, ev->flags)) {
-		err = i915_vma_unbind(vma);
+	GEM_BUG_ON(rcu_access_pointer(vma->active.excl.fence) == &work->base.dma);
+
+	/* Wait for all other previous activity */
+	err = i915_sw_fence_await_active(&work->base.chain,
+					 &vma->active,
+					 I915_ACTIVE_AWAIT_ACTIVE);
+	/* Then insert along the exclusive vm->mutex timeline */
+	if (err == 0)
+		err = set_bind_fence(vma, work);
+
+	return err;
+}
+
+static int
+evict_for_node(struct eb_vm_work *work,
+	       struct eb_bind_vma *const target,
+	       unsigned int flags)
+{
+	struct i915_vma *target_vma = target->ev->vma;
+	struct i915_address_space *vm = target_vma->vm;
+	const unsigned long color = target_vma->node.color;
+	const u64 start = target_vma->node.start;
+	const u64 end = start + target_vma->node.size;
+	u64 hole_start = start, hole_end = end;
+	struct i915_vma *vma, *next;
+	struct drm_mm_node *node;
+	LIST_HEAD(evict_list);
+	LIST_HEAD(steal_list);
+	int err = 0;
+
+	lockdep_assert_held(&vm->mutex);
+	GEM_BUG_ON(drm_mm_node_allocated(&target_vma->node));
+	GEM_BUG_ON(!IS_ALIGNED(start, I915_GTT_PAGE_SIZE));
+	GEM_BUG_ON(!IS_ALIGNED(end, I915_GTT_PAGE_SIZE));
+
+	if (i915_vm_has_cache_coloring(vm)) {
+		/* Expand search to cover neighbouring guard pages (or lack!) */
+		if (hole_start)
+			hole_start -= I915_GTT_PAGE_SIZE;
+
+		/* Always look at the page afterwards to avoid the end-of-GTT */
+		hole_end += I915_GTT_PAGE_SIZE;
+	}
+	GEM_BUG_ON(hole_start >= hole_end);
+
+	drm_mm_for_each_node_in_range(node, &vm->mm, hole_start, hole_end) {
+		GEM_BUG_ON(node == &target_vma->node);
+		err = -ENOSPC;
+
+		/* If we find any non-objects (!vma), we cannot evict them */
+		if (node->color == I915_COLOR_UNEVICTABLE)
+			goto err;
+
+		/*
+		 * If we are using coloring to insert guard pages between
+		 * different cache domains within the address space, we have
+		 * to check whether the objects on either side of our range
+		 * abutt and conflict. If they are in conflict, then we evict
+		 * those as well to make room for our guard pages.
+		 */
+		if (i915_vm_has_cache_coloring(vm)) {
+			if (node_end(node) == start && node->color == color)
+				continue;
+
+			if (node->start == end && node->color == color)
+				continue;
+		}
+
+		GEM_BUG_ON(!drm_mm_node_allocated(node));
+		vma = container_of(node, typeof(*vma), node);
+
+		if (flags & PIN_NOEVICT || i915_vma_is_pinned(vma))
+			goto err;
+
+		/* If this VMA is already being freed, or idle, steal it! */
+		if (!i915_active_acquire_if_busy(&vma->active)) {
+			list_move(&vma->vm_link, &steal_list);
+			continue;
+		}
+
+		if (!(flags & PIN_NONBLOCK))
+			err = await_evict(work, vma);
+		i915_active_release(&vma->active);
 		if (err)
-			return err;
+			goto err;
+
+		GEM_BUG_ON(!i915_vma_is_active(vma));
+		list_move(&vma->vm_link, &evict_list);
 	}
 
-	err = i915_vma_pin(vma,
-			   entry->pad_to_size, entry->alignment,
-			   eb_pin_flags(entry, ev->flags) | pin_flags);
-	if (err)
-		return err;
+	list_for_each_entry_safe(vma, next, &steal_list, vm_link) {
+		GEM_BUG_ON(i915_vma_is_pinned(vma));
+		GEM_BUG_ON(i915_vma_is_active(vma));
+		__i915_vma_evict(vma);
+		drm_mm_remove_node(&vma->node);
+		/* No ref held; vma may now be concurrently freed */
+	}
 
-	if (entry->offset != vma->node.start) {
-		entry->offset = vma->node.start | UPDATE;
-		eb->args->flags |= __EXEC_HAS_RELOC;
+	/* No overlapping nodes to evict, claim the slot for ourselves! */
+	if (list_empty(&evict_list))
+		return drm_mm_reserve_node(&vm->mm, &target_vma->node);
+
+	/*
+	 * Mark this range as reserved.
+	 *
+	 * We have not yet removed the PTEs for the old evicted nodes, so
+	 * must prevent this range from being reused for anything else. The
+	 * PTE will be cleared when the range is idle (during the rebind
+	 * phase in the worker).
+	 */
+	target->hole.color = I915_COLOR_UNEVICTABLE;
+	target->hole.start = start;
+	target->hole.size = end;
+
+	list_for_each_entry(vma, &evict_list, vm_link) {
+		target->hole.start =
+			min(target->hole.start, vma->node.start);
+		target->hole.size =
+			max(target->hole.size, node_end(&vma->node));
+
+		GEM_BUG_ON(!i915_vma_is_active(vma));
+		GEM_BUG_ON(vma->node.mm != &vm->mm);
+		set_bit(I915_VMA_ERROR_BIT, __i915_vma_flags(vma));
+		drm_mm_remove_node(&vma->node);
+		GEM_BUG_ON(i915_vma_is_pinned(vma));
 	}
+	list_splice(&evict_list, &work->evict_list);
 
-	if (unlikely(ev->flags & EXEC_OBJECT_NEEDS_FENCE)) {
-		err = i915_vma_pin_fence(vma);
-		if (unlikely(err)) {
-			i915_vma_unpin(vma);
-			return err;
+	target->hole.size -= target->hole.start;
+
+	return drm_mm_reserve_node(&vm->mm, &target->hole);
+
+err:
+	list_splice(&evict_list, &vm->bound_list);
+	list_splice(&steal_list, &vm->bound_list);
+	return err;
+}
+
+static int
+evict_in_range(struct eb_vm_work *work,
+	       struct eb_bind_vma * const target,
+	       u64 start, u64 end, u64 align)
+{
+	struct i915_vma *target_vma = target->ev->vma;
+	struct i915_address_space *vm = target_vma->vm;
+	struct i915_vma *active = NULL;
+	struct i915_vma *vma, *next;
+	struct drm_mm_scan scan;
+	LIST_HEAD(evict_list);
+	bool found = false;
+
+	lockdep_assert_held(&vm->mutex);
+
+	drm_mm_scan_init_with_range(&scan, &vm->mm,
+				    target_vma->node.size,
+				    align,
+				    target_vma->node.color,
+				    start, end,
+				    DRM_MM_INSERT_BEST);
+
+	list_for_each_entry_safe(vma, next, &vm->bound_list, vm_link) {
+		if (i915_vma_is_pinned(vma))
+			continue;
+
+		if (vma == active)
+			active = ERR_PTR(-EAGAIN);
+
+		/* Prefer to reuse idle nodes; push all active vma to the end */
+		if (active != ERR_PTR(-EAGAIN) && i915_vma_is_active(vma)) {
+			if (!active)
+				active = vma;
+
+			list_move_tail(&vma->vm_link, &vm->bound_list);
+			continue;
 		}
 
+		list_move(&vma->vm_link, &evict_list);
+		if (drm_mm_scan_add_block(&scan, &vma->node)) {
+			target_vma->node.start =
+				round_up(scan.hit_start, align);
+			found = true;
+			break;
+		}
+	}
+
+	list_for_each_entry(vma, &evict_list, vm_link)
+		drm_mm_scan_remove_block(&scan, &vma->node);
+	list_splice(&evict_list, &vm->bound_list);
+	if (!found)
+		return -ENOSPC;
+
+	return evict_for_node(work, target, 0);
+}
+
+static u64 random_offset(u64 start, u64 end, u64 len, u64 align)
+{
+	u64 range, addr;
+
+	GEM_BUG_ON(range_overflows(start, len, end));
+	GEM_BUG_ON(round_up(start, align) > round_down(end - len, align));
+
+	range = round_down(end - len, align) - round_up(start, align);
+	if (range) {
+		if (sizeof(unsigned long) == sizeof(u64)) {
+			addr = get_random_long();
+		} else {
+			addr = get_random_int();
+			if (range > U32_MAX) {
+				addr <<= 32;
+				addr |= get_random_int();
+			}
+		}
+		div64_u64_rem(addr, range, &addr);
+		start += addr;
+	}
+
+	return round_up(start, align);
+}
+
+static u64 align0(u64 align)
+{
+	return align <= I915_GTT_MIN_ALIGNMENT ? 0 : align;
+}
+
+static struct drm_mm_node *__best_hole(struct drm_mm *mm, u64 size)
+{
+	struct rb_node *rb = mm->holes_size.rb_root.rb_node;
+	struct drm_mm_node *best = NULL;
+
+	while (rb) {
+		struct drm_mm_node *node =
+			rb_entry(rb, struct drm_mm_node, rb_hole_size);
+
+		if (size <= node->hole_size) {
+			best = node;
+			rb = rb->rb_right;
+		} else {
+			rb = rb->rb_left;
+		}
+	}
+
+	return best;
+}
+
+static int best_hole(struct drm_mm *mm, struct drm_mm_node *node,
+		     u64 start, u64 end, u64 align)
+{
+	struct drm_mm_node *hole;
+	u64 size = node->size;
+
+	do {
+		hole = __best_hole(mm, size);
+		if (!hole)
+			return -ENOSPC;
+
+		node->start = round_up(max(start, drm_mm_hole_node_start(hole)),
+				       align);
+		if (min(drm_mm_hole_node_end(hole), end) >=
+		    node->start + node->size)
+			return drm_mm_reserve_node(mm, node);
+
+		/*
+		 * Too expensive to search for every single hole every time,
+		 * so just look for the next bigger hole, introducing enough
+		 * space for alignments. Finding the smallest hole with ideal
+		 * alignment scales very poorly, so we choose to waste space
+		 * if an alignment is forced. On the other hand, simply
+		 * randomly selecting an offset in 48b space will cause us
+		 * to use the majority of that space and exhaust all memory
+		 * in storing the page directories. Compromise is required.
+		 */
+		size = hole->hole_size + align;
+	} while (1);
+}
+
+static int eb_reserve_vma(struct eb_vm_work *work, struct eb_bind_vma *bind)
+{
+	struct drm_i915_gem_exec_object2 *entry = bind->ev->exec;
+	const unsigned int exec_flags = bind->ev->flags;
+	struct i915_vma *vma = bind->ev->vma;
+	struct i915_address_space *vm = vma->vm;
+	u64 start = 0, end = vm->total;
+	u64 align = entry->alignment ?: I915_GTT_MIN_ALIGNMENT;
+	unsigned int bind_flags;
+	int err;
+
+	lockdep_assert_held(&vm->mutex);
+
+	bind_flags = PIN_USER;
+	if (exec_flags & EXEC_OBJECT_NEEDS_GTT)
+		bind_flags |= PIN_GLOBAL;
+
+	if (drm_mm_node_allocated(&vma->node))
+		goto pin;
+
+	GEM_BUG_ON(i915_vma_is_pinned(vma));
+	GEM_BUG_ON(i915_vma_is_bound(vma, I915_VMA_BIND_MASK));
+	GEM_BUG_ON(i915_active_fence_isset(&vma->active.excl));
+	GEM_BUG_ON(!vma->size);
+
+	/* Reuse old address (if it doesn't conflict with new requirements) */
+	if (eb_vma_misplaced(entry, vma, exec_flags)) {
+		vma->node.start = entry->offset & PIN_OFFSET_MASK;
+		vma->node.size = max(entry->pad_to_size, vma->size);
+		vma->node.color = 0;
+		if (i915_vm_has_cache_coloring(vm))
+			vma->node.color = vma->obj->cache_level;
+	}
+
+	/*
+	 * Wa32bitGeneralStateOffset & Wa32bitInstructionBaseOffset,
+	 * limit address to the first 4GBs for unflagged objects.
+	 */
+	if (!(exec_flags & EXEC_OBJECT_SUPPORTS_48B_ADDRESS))
+		end = min_t(u64, end, (1ULL << 32) - I915_GTT_PAGE_SIZE);
+
+	align = max(align, vma->display_alignment);
+	if (exec_flags & __EXEC_OBJECT_NEEDS_MAP) {
+		vma->node.size = max_t(u64, vma->node.size, vma->fence_size);
+		end = min_t(u64, end, i915_vm_to_ggtt(vm)->mappable_end);
+		align = max_t(u64, align, vma->fence_alignment);
+	}
+
+	if (exec_flags & __EXEC_OBJECT_NEEDS_BIAS)
+		start = BATCH_OFFSET_BIAS;
+
+	GEM_BUG_ON(!vma->node.size);
+	if (vma->node.size > end - start)
+		return -E2BIG;
+
+	/* Try the user's preferred location first (mandatory if soft-pinned) */
+	err = -__EINVAL__;
+	if (vma->node.start >= start &&
+	    IS_ALIGNED(vma->node.start, align) &&
+	    !range_overflows(vma->node.start, vma->node.size, end)) {
+		unsigned int pin_flags;
+
+		/*
+		 * Prefer to relocate and spread objects around.
+		 *
+		 * If we relocate and continue to use the new location in
+		 * future batches, we only pay the relocation cost once.
+		 *
+		 * If we instead keep reusing the same address for different
+		 * objects, each batch must remove/insert objects into the GTT,
+		 * which is more expensive than performing a relocation.
+		 */
+		pin_flags = 0;
+		if (!(exec_flags & EXEC_OBJECT_PINNED))
+			pin_flags = PIN_NOEVICT;
+
+		err = evict_for_node(work, bind, pin_flags);
+		if (err == 0)
+			goto pin;
+	}
+	if (exec_flags & EXEC_OBJECT_PINNED)
+		return err;
+
+	/* Try the first available free space */
+	if (!best_hole(&vm->mm, &vma->node, start, end, align))
+		goto pin;
+
+	/* Pick a random slot and see if it's available [O(N) worst case] */
+	vma->node.start = random_offset(start, end, vma->node.size, align);
+	if (evict_for_node(work, bind, PIN_NONBLOCK) == 0)
+		goto pin;
+
+	/* Otherwise search all free space [degrades to O(N^2)] */
+	if (drm_mm_insert_node_in_range(&vm->mm, &vma->node,
+					vma->node.size,
+					align0(align),
+					vma->node.color,
+					start, end,
+					DRM_MM_INSERT_BEST) == 0)
+		goto pin;
+
+	/* Pretty busy! Loop over "LRU" and evict oldest in our search range */
+	err = evict_in_range(work, bind, start, end, align);
+	if (unlikely(err))
+		return err;
+
+pin:
+	if (unlikely(exec_flags & EXEC_OBJECT_NEEDS_FENCE)) {
+		err = __i915_vma_pin_fence(vma); /* XXX no waiting */
+		if (unlikely(err))
+			return err;
+
 		if (vma->fence)
-			ev->flags |= __EXEC_OBJECT_HAS_FENCE;
+			bind->ev->flags |= __EXEC_OBJECT_HAS_FENCE;
 	}
 
-	ev->flags |= __EXEC_OBJECT_HAS_PIN;
-	GEM_BUG_ON(eb_vma_misplaced(entry, vma, ev->flags));
+	bind_flags &= ~atomic_read(&vma->flags);
+	if (bind_flags) {
+		err = set_bind_fence(vma, work);
+		if (unlikely(err))
+			return err;
+
+		atomic_add(I915_VMA_PAGES_ACTIVE, &vma->pages_count);
+		atomic_or(bind_flags, &vma->flags);
+
+		if (i915_vma_is_ggtt(vma))
+			__i915_vma_set_map_and_fenceable(vma);
+
+		GEM_BUG_ON(!i915_vma_is_active(vma));
+		list_move_tail(&vma->vm_link, &vm->bound_list);
+		bind->bind_flags = bind_flags;
+	}
+	__i915_vma_pin(vma); /* and release */
+
+	GEM_BUG_ON(!bind_flags && !drm_mm_node_allocated(&vma->node));
+	GEM_BUG_ON(!(drm_mm_node_allocated(&vma->node) ^
+		     drm_mm_node_allocated(&bind->hole)));
+
+	if (entry->offset != vma->node.start) {
+		entry->offset = vma->node.start | UPDATE;
+		*work->p_flags |= __EXEC_HAS_RELOC;
+	}
+
+	bind->ev->flags |= __EXEC_OBJECT_HAS_PIN;
+	GEM_BUG_ON(eb_vma_misplaced(entry, vma, bind->ev->flags));
 
 	return 0;
 }
@@ -714,13 +1127,241 @@ static int wait_for_timeline(struct intel_timeline *tl)
 	} while (1);
 }
 
+static void __eb_bind_vma(struct eb_vm_work *work)
+{
+	struct i915_address_space *vm = work->vm;
+	unsigned long n;
+
+	GEM_BUG_ON(!intel_gt_pm_is_awake(vm->gt));
+
+	/*
+	 * We have to wait until the stale nodes are completely idle before
+	 * we can remove their PTE and unbind their pages. Hence, after
+	 * claiming their slot in the drm_mm, we defer their removal to
+	 * after the fences are signaled.
+	 */
+	if (!list_empty(&work->evict_list)) {
+		struct i915_vma *vma, *vn;
+
+		mutex_lock(&vm->mutex);
+		list_for_each_entry_safe(vma, vn, &work->evict_list, vm_link) {
+			GEM_BUG_ON(vma->vm != vm);
+			__i915_vma_evict(vma);
+			GEM_BUG_ON(!i915_vma_is_active(vma));
+		}
+		mutex_unlock(&vm->mutex);
+	}
+
+	/*
+	 * Now we know the nodes we require in drm_mm are idle, we can
+	 * replace the PTE in those ranges with our own.
+	 */
+	for (n = 0; n < work->count; n++) {
+		struct eb_bind_vma *bind = &work->bind[n];
+		struct i915_vma *vma = bind->ev->vma;
+
+		if (!bind->bind_flags)
+			goto put;
+
+		GEM_BUG_ON(vma->vm != vm);
+		GEM_BUG_ON(!i915_vma_is_active(vma));
+
+		vma->ops->bind_vma(vm, &work->stash, vma,
+				   vma->obj->cache_level, bind->bind_flags);
+
+		if (drm_mm_node_allocated(&bind->hole)) {
+			mutex_lock(&vm->mutex);
+			GEM_BUG_ON(bind->hole.mm != &vm->mm);
+			GEM_BUG_ON(bind->hole.color != I915_COLOR_UNEVICTABLE);
+			GEM_BUG_ON(drm_mm_node_allocated(&vma->node));
+
+			drm_mm_remove_node(&bind->hole);
+			drm_mm_reserve_node(&vm->mm, &vma->node);
+
+			GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
+			mutex_unlock(&vm->mutex);
+		}
+		bind->bind_flags = 0;
+
+put:
+		GEM_BUG_ON(drm_mm_node_allocated(&bind->hole));
+		i915_vma_put_pages(vma);
+	}
+	work->count = 0;
+}
+
+static int eb_bind_vma(struct dma_fence_work *base)
+{
+	struct eb_vm_work *work = container_of(base, typeof(*work), base);
+
+	__eb_bind_vma(work);
+	return 0;
+}
+
+static void eb_vma_work_release(struct dma_fence_work *base)
+{
+	struct eb_vm_work *work = container_of(base, typeof(*work), base);
+
+	__eb_bind_vma(work);
+	kvfree(work->bind);
+
+	if (work->id)
+		i915_active_release(&work->vm->binding);
+
+	eb_vma_array_put(work->array);
+
+	i915_vm_free_pt_stash(work->vm, &work->stash);
+	i915_vm_put(work->vm);
+}
+
+static const struct dma_fence_work_ops eb_bind_ops = {
+	.name = "eb_bind",
+	.work = eb_bind_vma,
+	.release = eb_vma_work_release,
+};
+
+static int eb_vm_work_cancel(struct eb_vm_work *work, int err)
+{
+	work->base.dma.error = err;
+	dma_fence_work_commit_imm(&work->base);
+
+	return err;
+}
+
+static struct eb_vm_work *eb_vm_work(struct i915_execbuffer *eb,
+				     unsigned long count)
+{
+	struct eb_vm_work *work;
+
+	work = kmalloc(sizeof(*work), GFP_KERNEL);
+	if (!work)
+		return NULL;
+
+	work->bind = kvmalloc(sizeof(*work->bind) * count, GFP_KERNEL);
+	if (!work->bind) {
+		kfree(work->bind);
+		return NULL;
+	}
+	work->count = count;
+
+	INIT_LIST_HEAD(&work->evict_list);
+
+	dma_fence_work_init(&work->base, &eb_bind_ops);
+	work->array = eb_vma_array_get(eb->array);
+	work->p_flags = &eb->args->flags;
+	work->vm = i915_vm_get(eb->context->vm);
+	memset(&work->stash, 0, sizeof(work->stash));
+
+	/* Preallocate our slot in vm->binding, outside of vm->mutex */
+	work->id = i915_gem_context_async_id(eb->gem_context);
+	if (i915_active_acquire_for_context(&work->vm->binding, work->id)) {
+		work->id = 0;
+		eb_vm_work_cancel(work, -ENOMEM);
+		return NULL;
+	}
+
+	return work;
+}
+
+static int eb_vm_throttle(struct eb_vm_work *work)
+{
+	struct dma_fence *p;
+	int err;
+
+	/* Keep async work queued per context */
+	p = __i915_active_ref(&work->vm->binding, work->id, &work->base.dma);
+	if (IS_ERR_OR_NULL(p))
+		return PTR_ERR_OR_ZERO(p);
+
+	err = i915_sw_fence_await_dma_fence(&work->base.chain, p, 0,
+					    GFP_NOWAIT | __GFP_NOWARN);
+	dma_fence_put(p);
+
+	return err < 0 ? err : 0;
+}
+
+static int eb_prepare_vma(struct eb_vm_work *work,
+			  unsigned long idx,
+			  struct eb_vma *ev)
+{
+	struct eb_bind_vma *bind = &work->bind[idx];
+	struct i915_vma *vma = ev->vma;
+	int err;
+
+	bind->ev = ev;
+	bind->hole.flags = 0;
+	bind->bind_flags = 0;
+
+	/* Allocate enough page directories to cover PTE used */
+	if (work->vm->allocate_va_range) {
+		err = i915_vm_alloc_pt_stash(work->vm, &work->stash, vma->size);
+		if (err)
+			return err;
+	}
+
+	return i915_vma_get_pages(vma);
+}
+
+static int wait_for_unbinds(struct i915_execbuffer *eb,
+			    struct list_head *unbound,
+			    int pass)
+{
+	struct eb_vma *ev;
+	int err;
+
+	list_for_each_entry(ev, unbound, unbound_link) {
+		struct i915_vma *vma = ev->vma;
+
+		GEM_BUG_ON(ev->flags & __EXEC_OBJECT_HAS_PIN);
+
+		if (drm_mm_node_allocated(&vma->node) &&
+		    eb_vma_misplaced(ev->exec, vma, ev->flags)) {
+			err = i915_vma_unbind(vma);
+			if (err)
+				return err;
+		}
+
+		/* Wait for previous to avoid reusing vma->node */
+		err = i915_vma_wait_for_unbind(vma);
+		if (err)
+			return err;
+	}
+
+	switch (pass) {
+	default:
+		return -ENOSPC;
+
+	case 2:
+		/*
+		 * Too fragmented, retire everything on the timeline and so
+		 * make it all [contexts included] available to evict.
+		 */
+		err = wait_for_timeline(eb->context->timeline);
+		if (err)
+			return err;
+
+		fallthrough;
+	case 1:
+		/* XXX ticket lock */
+		if (i915_active_wait(&eb->context->vm->binding))
+			return -EINTR;
+
+		fallthrough;
+	case 0:
+		return 0;
+	}
+}
+
 static int eb_reserve_vm(struct i915_execbuffer *eb)
 {
-	unsigned int pin_flags = PIN_USER | PIN_NONBLOCK;
+	struct i915_address_space *vm = eb->context->vm;
 	struct list_head last, unbound;
+	unsigned long count;
 	struct eb_vma *ev;
 	unsigned int pass;
+	int err = 0;
 
+	count = 0;
 	INIT_LIST_HEAD(&unbound);
 	list_for_each_entry(ev, &eb->bind_list, bind_link) {
 		struct drm_i915_gem_exec_object2 *entry = ev->exec;
@@ -737,29 +1378,15 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
 				list_add(&ev->unbound_link, &unbound);
 			else
 				list_add_tail(&ev->unbound_link, &unbound);
+			count++;
 		}
 	}
-
-	if (list_empty(&unbound))
+	if (count == 0)
 		return 0;
 
-	/*
-	 * Attempt to pin all of the buffers into the GTT.
-	 * This is done in 3 phases:
-	 *
-	 * 1a. Unbind all objects that do not match the GTT constraints for
-	 *     the execbuffer (fenceable, mappable, alignment etc).
-	 * 1b. Increment pin count for already bound objects.
-	 * 2.  Bind new objects.
-	 * 3.  Decrement pin count.
-	 *
-	 * This avoid unnecessary unbinding of later objects in order to make
-	 * room for the earlier objects *unless* we need to defragment.
-	 */
-
 	pass = 0;
 	do {
-		int err = 0;
+		struct eb_vm_work *work;
 
 		/*
 		 * We need to hold one lock as we bind all the vma so that
@@ -773,23 +1400,87 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
 		 * find space for new buffers, we know that extra pressure
 		 * from contention is likely.
 		 *
-		 * In lieu of being able to hold vm->mutex for the entire
-		 * sequence (it's complicated!), we opt for struct_mutex.
+		 * vm->mutex is complicated, as we are not allowed to allocate
+		 * beneath it, so we have to stage and preallocate all the
+		 * resources we may require before taking the mutex.
 		 */
-		if (mutex_lock_interruptible(&eb->i915->drm.struct_mutex))
-			return -EINTR;
+		work = eb_vm_work(eb, count);
+		if (!work)
+			return -ENOMEM;
 
+		count = 0;
 		list_for_each_entry(ev, &unbound, unbound_link) {
-			err = eb_reserve_vma(eb, ev, pin_flags);
+			err = eb_prepare_vma(work, count++, ev);
+			if (err) {
+				work->count = count - 1;
+
+				if (eb_vm_work_cancel(work, err) == -EAGAIN)
+					goto retry;
+
+				return err;
+			}
+		}
+
+		err = i915_vm_pin_pt_stash(work->vm, &work->stash);
+		if (err)
+			return eb_vm_work_cancel(work, err);
+
+		/* No allocations allowed beyond this point */
+		if (mutex_lock_interruptible(&vm->mutex))
+			return eb_vm_work_cancel(work, -EINTR);
+
+		err = eb_vm_throttle(work);
+		if (err) {
+			mutex_unlock(&vm->mutex);
+			return eb_vm_work_cancel(work, err);
+		}
+
+		for (count = 0; count < work->count; count++) {
+			struct eb_bind_vma *bind = &work->bind[count];
+			struct i915_vma *vma;
+
+			ev = bind->ev;
+			vma = ev->vma;
+
+			/*
+			 * Check if this node is being evicted or must be.
+			 *
+			 * As we use the single node inside the vma to track
+			 * both the eviction and where to insert the new node,
+			 * we cannot handle migrating the vma inside the worker.
+			 */
+			if (drm_mm_node_allocated(&vma->node)) {
+				if (eb_vma_misplaced(ev->exec, vma, ev->flags)) {
+					err = -ENOSPC;
+					break;
+				}
+			} else {
+				if (i915_vma_is_active(vma)) {
+					err = -ENOSPC;
+					break;
+				}
+			}
+
+			err = i915_active_acquire(&vma->active);
+			if (!err) {
+				err = eb_reserve_vma(work, bind);
+				i915_active_release(&vma->active);
+			}
 			if (err)
 				break;
+
+			GEM_BUG_ON(!i915_vma_is_pinned(vma));
 		}
-		if (!(err == -ENOSPC || err == -EAGAIN)) {
-			mutex_unlock(&eb->i915->drm.struct_mutex);
+
+		mutex_unlock(&vm->mutex);
+
+		dma_fence_work_commit_imm(&work->base);
+		if (err != -ENOSPC)
 			return err;
-		}
 
+retry:
 		/* Resort *all* the objects into priority order */
+		count = 0;
 		INIT_LIST_HEAD(&unbound);
 		INIT_LIST_HEAD(&last);
 		list_for_each_entry(ev, &eb->bind_list, bind_link) {
@@ -800,6 +1491,7 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
 				continue;
 
 			eb_unreserve_vma(ev);
+			count++;
 
 			if (flags & EXEC_OBJECT_PINNED)
 				/* Pinned must have their slot */
@@ -814,11 +1506,16 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
 				list_add_tail(&ev->unbound_link, &last);
 		}
 		list_splice_tail(&last, &unbound);
-		mutex_unlock(&eb->i915->drm.struct_mutex);
+		GEM_BUG_ON(!count);
+
+		if (signal_pending(current))
+			return -EINTR;
+
+		/* Now safe to wait with no reservations held */
 
 		if (err == -EAGAIN) {
 			flush_workqueue(eb->i915->mm.userptr_wq);
-			continue;
+			pass = 0;
 		}
 
 		/*
@@ -836,27 +1533,9 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
 		 * there is no guarantee that we will succeed in claiming
 		 * total ownership of the vm.
 		 */
-		switch (pass++) {
-		case 0:
-			break;
-
-		case 1:
-			/*
-			 * Too fragmented, retire everything on the timeline
-			 * and so make it all [contexts included] available to
-			 * evict.
-			 */
-			err = wait_for_timeline(eb->context->timeline);
-			if (err)
-				return err;
-
-			break;
-
-		default:
-			return -ENOSPC;
-		}
-
-		pin_flags = PIN_USER;
+		err = wait_for_unbinds(eb, &unbound, pass++);
+		if (err)
+			return err;
 	} while (1);
 }
 
@@ -1448,6 +2127,29 @@ relocate_entry(struct i915_execbuffer *eb,
 	return target->node.start | UPDATE;
 }
 
+static int gen6_fixup_ggtt(struct i915_vma *vma)
+{
+	int err;
+
+	if (i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND))
+		return 0;
+
+	err = i915_vma_wait_for_bind(vma);
+	if (err)
+		return err;
+
+	mutex_lock(&vma->vm->mutex);
+	if (!(atomic_fetch_or(I915_VMA_GLOBAL_BIND, &vma->flags) & I915_VMA_GLOBAL_BIND)) {
+		__i915_gem_object_pin_pages(vma->obj);
+		vma->ops->bind_vma(vma->vm, NULL, vma,
+				   vma->obj->cache_level,
+				   I915_VMA_GLOBAL_BIND);
+	}
+	mutex_unlock(&vma->vm->mutex);
+
+	return 0;
+}
+
 static u64
 eb_relocate_entry(struct i915_execbuffer *eb,
 		  struct eb_vma *ev,
@@ -1462,6 +2164,8 @@ eb_relocate_entry(struct i915_execbuffer *eb,
 	if (unlikely(!target))
 		return -ENOENT;
 
+	GEM_BUG_ON(!i915_vma_is_pinned(target->vma));
+
 	/* Validate that the target is in a valid r/w GPU domain */
 	if (unlikely(reloc->write_domain & (reloc->write_domain - 1))) {
 		drm_dbg(&i915->drm, "reloc with multiple write domains: "
@@ -1496,9 +2200,7 @@ eb_relocate_entry(struct i915_execbuffer *eb,
 		 */
 		if (reloc->write_domain == I915_GEM_DOMAIN_INSTRUCTION &&
 		    IS_GEN(eb->i915, 6)) {
-			err = i915_vma_bind(target->vma,
-					    target->vma->obj->cache_level,
-					    PIN_GLOBAL, NULL);
+			err = gen6_fixup_ggtt(target->vma);
 			if (err)
 				return err;
 		}
@@ -1668,6 +2370,8 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
 		struct drm_i915_gem_object *obj = vma->obj;
 
 		assert_vma_held(vma);
+		GEM_BUG_ON(!(flags & __EXEC_OBJECT_HAS_PIN));
+		GEM_BUG_ON(!i915_vma_is_bound(vma, I915_VMA_LOCAL_BIND));
 
 		if (flags & EXEC_OBJECT_CAPTURE) {
 			struct i915_capture_list *capture;
@@ -1706,7 +2410,6 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
 			err = i915_vma_move_to_active(vma, eb->request, flags);
 
 		i915_vma_unlock(vma);
-		eb_unreserve_vma(ev);
 	}
 	ww_acquire_fini(&acquire);
 
@@ -2637,7 +3340,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	 * snb/ivb/vlv conflate the "batch in ppgtt" bit with the "non-secure
 	 * batch" bit. Hence we need to pin secure batches into the global gtt.
 	 * hsw should have this fixed, but bdw mucks it up again. */
-	batch = eb.batch->vma;
+	batch = i915_vma_get(eb.batch->vma);
 	if (eb.batch_flags & I915_DISPATCH_SECURE) {
 		struct i915_vma *vma;
 
@@ -2657,6 +3360,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 			goto err_parse;
 		}
 
+		GEM_BUG_ON(vma->obj != batch->obj);
 		batch = vma;
 	}
 
@@ -2726,6 +3430,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 err_parse:
 	if (batch->private)
 		intel_gt_buffer_pool_put(batch->private);
+	i915_vma_put(batch);
 err_vma:
 	if (eb.trampoline)
 		i915_vma_unpin(eb.trampoline);
diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index a823d2e3c39c..71baf2f8bdf3 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -361,6 +361,7 @@ static struct i915_vma *pd_vma_create(struct gen6_ppgtt *ppgtt, int size)
 	atomic_set(&vma->flags, I915_VMA_GGTT);
 	vma->ggtt_view.type = I915_GGTT_VIEW_ROTATED; /* prevent fencing */
 
+	INIT_LIST_HEAD(&vma->vm_link);
 	INIT_LIST_HEAD(&vma->obj_link);
 	INIT_LIST_HEAD(&vma->closed_link);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 795ed81ba358..31dc0fdc183b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -55,6 +55,8 @@ void __i915_vm_close(struct i915_address_space *vm)
 
 void i915_address_space_fini(struct i915_address_space *vm)
 {
+	i915_active_fini(&vm->binding);
+
 	drm_mm_takedown(&vm->mm);
 	mutex_destroy(&vm->mutex);
 }
@@ -100,6 +102,8 @@ void i915_address_space_init(struct i915_address_space *vm, int subclass)
 	drm_mm_init(&vm->mm, 0, vm->total);
 	vm->mm.head_node.color = I915_COLOR_UNEVICTABLE;
 
+	i915_active_init(&vm->binding, NULL, NULL);
+
 	INIT_LIST_HEAD(&vm->bound_list);
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 6abab2d37b6f..496f8236ca09 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -247,6 +247,8 @@ struct i915_address_space {
 	 */
 	struct list_head bound_list;
 
+	struct i915_active binding;
+
 	/* Global GTT */
 	bool is_ggtt:1;
 
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 9aa3066cb75d..e998f25f30a3 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -997,6 +997,9 @@ i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
 		return vma;
 
 	if (i915_vma_misplaced(vma, size, alignment, flags)) {
+		if (flags & PIN_NOEVICT)
+			return ERR_PTR(-ENOSPC);
+
 		if (flags & PIN_NONBLOCK) {
 			if (i915_vma_is_pinned(vma) || i915_vma_is_active(vma))
 				return ERR_PTR(-ENOSPC);
@@ -1016,6 +1019,10 @@ i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
 			return ERR_PTR(ret);
 	}
 
+	if (flags & PIN_NONBLOCK &&
+	    i915_active_fence_isset(&vma->active.excl))
+		return ERR_PTR(-EAGAIN);
+
 	ret = i915_vma_pin(vma, size, alignment, flags | PIN_GLOBAL);
 	if (ret)
 		return ERR_PTR(ret);
diff --git a/drivers/gpu/drm/i915/i915_gem_gtt.c b/drivers/gpu/drm/i915/i915_gem_gtt.c
index c5ee1567f3d1..356c492b80e0 100644
--- a/drivers/gpu/drm/i915/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/i915_gem_gtt.c
@@ -221,6 +221,8 @@ int i915_gem_gtt_insert(struct i915_address_space *vm,
 		mode = DRM_MM_INSERT_HIGHEST;
 	if (flags & PIN_MAPPABLE)
 		mode = DRM_MM_INSERT_LOW;
+	if (flags & PIN_NOSEARCH)
+		mode |= DRM_MM_INSERT_ONCE;
 
 	/* We only allocate in PAGE_SIZE/GTT_PAGE_SIZE (4096) chunks,
 	 * so we know that we always have a minimum alignment of 4096.
@@ -238,6 +240,9 @@ int i915_gem_gtt_insert(struct i915_address_space *vm,
 	if (err != -ENOSPC)
 		return err;
 
+	if (flags & PIN_NOSEARCH)
+		return -ENOSPC;
+
 	if (mode & DRM_MM_INSERT_ONCE) {
 		err = drm_mm_insert_node_in_range(&vm->mm, node,
 						  size, alignment, color,
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index dbe11b349175..7278cc7c40b9 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -133,6 +133,7 @@ vma_create(struct drm_i915_gem_object *obj,
 		fs_reclaim_release(GFP_KERNEL);
 	}
 
+	INIT_LIST_HEAD(&vma->vm_link);
 	INIT_LIST_HEAD(&vma->closed_link);
 
 	if (view && view->type != I915_GGTT_VIEW_NORMAL) {
@@ -341,25 +342,37 @@ struct i915_vma_work *i915_vma_work(void)
 	return vw;
 }
 
-int i915_vma_wait_for_bind(struct i915_vma *vma)
+static int
+__i915_vma_wait_excl(struct i915_vma *vma, bool bound, unsigned int flags)
 {
+	struct dma_fence *fence;
 	int err = 0;
 
-	if (rcu_access_pointer(vma->active.excl.fence)) {
-		struct dma_fence *fence;
+	fence = i915_active_fence_get(&vma->active.excl);
+	if (!fence)
+		return 0;
 
-		rcu_read_lock();
-		fence = dma_fence_get_rcu_safe(&vma->active.excl.fence);
-		rcu_read_unlock();
-		if (fence) {
-			err = dma_fence_wait(fence, MAX_SCHEDULE_TIMEOUT);
-			dma_fence_put(fence);
-		}
+	if (drm_mm_node_allocated(&vma->node) == bound) {
+		if (flags & PIN_NOEVICT)
+			err = -EBUSY;
+		else
+			err = dma_fence_wait(fence, true);
 	}
 
+	dma_fence_put(fence);
 	return err;
 }
 
+int i915_vma_wait_for_bind(struct i915_vma *vma)
+{
+	return __i915_vma_wait_excl(vma, true, 0);
+}
+
+int i915_vma_wait_for_unbind(struct i915_vma *vma)
+{
+	return __i915_vma_wait_excl(vma, false, 0);
+}
+
 /**
  * i915_vma_bind - Sets up PTEs for an VMA in it's corresponding address space.
  * @vma: VMA to map
@@ -624,8 +637,9 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 	u64 start, end;
 	int ret;
 
-	GEM_BUG_ON(i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND));
+	GEM_BUG_ON(i915_vma_is_bound(vma, I915_VMA_BIND_MASK));
 	GEM_BUG_ON(drm_mm_node_allocated(&vma->node));
+	GEM_BUG_ON(i915_active_fence_isset(&vma->active.excl));
 
 	size = max(size, vma->size);
 	alignment = max(alignment, vma->display_alignment);
@@ -721,7 +735,7 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 	GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
 	GEM_BUG_ON(!i915_gem_valid_gtt_space(vma, color));
 
-	list_add_tail(&vma->vm_link, &vma->vm->bound_list);
+	list_move_tail(&vma->vm_link, &vma->vm->bound_list);
 
 	return 0;
 }
@@ -729,15 +743,12 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 static void
 i915_vma_detach(struct i915_vma *vma)
 {
-	GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
-	GEM_BUG_ON(i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND));
-
 	/*
 	 * And finally now the object is completely decoupled from this
 	 * vma, we can drop its hold on the backing storage and allow
 	 * it to be reaped by the shrinker.
 	 */
-	list_del(&vma->vm_link);
+	list_del_init(&vma->vm_link);
 }
 
 bool i915_vma_pin_inplace(struct i915_vma *vma, unsigned int flags)
@@ -785,7 +796,7 @@ bool i915_vma_pin_inplace(struct i915_vma *vma, unsigned int flags)
 	return pinned;
 }
 
-static int vma_get_pages(struct i915_vma *vma)
+int i915_vma_get_pages(struct i915_vma *vma)
 {
 	int err = 0;
 
@@ -832,7 +843,7 @@ static void __vma_put_pages(struct i915_vma *vma, unsigned int count)
 	mutex_unlock(&vma->pages_mutex);
 }
 
-static void vma_put_pages(struct i915_vma *vma)
+void i915_vma_put_pages(struct i915_vma *vma)
 {
 	if (atomic_add_unless(&vma->pages_count, -1, 1))
 		return;
@@ -849,9 +860,13 @@ static void vma_unbind_pages(struct i915_vma *vma)
 	/* The upper portion of pages_count is the number of bindings */
 	count = atomic_read(&vma->pages_count);
 	count >>= I915_VMA_PAGES_BIAS;
-	GEM_BUG_ON(!count);
+	if (count)
+		__vma_put_pages(vma, count | count << I915_VMA_PAGES_BIAS);
+}
 
-	__vma_put_pages(vma, count | count << I915_VMA_PAGES_BIAS);
+static int __wait_for_unbind(struct i915_vma *vma, unsigned int flags)
+{
+	return __i915_vma_wait_excl(vma, false, flags);
 }
 
 int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
@@ -870,13 +885,17 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 	if (i915_vma_pin_inplace(vma, flags & I915_VMA_BIND_MASK))
 		return 0;
 
-	err = vma_get_pages(vma);
+	err = i915_vma_get_pages(vma);
 	if (err)
 		return err;
 
 	if (flags & PIN_GLOBAL)
 		wakeref = intel_runtime_pm_get(&vma->vm->i915->runtime_pm);
 
+	err = __wait_for_unbind(vma, flags);
+	if (err)
+		goto err_rpm;
+
 	if (flags & vma->vm->bind_async_flags) {
 		work = i915_vma_work();
 		if (!work) {
@@ -949,6 +968,10 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 		goto err_unlock;
 
 	if (!(bound & I915_VMA_BIND_MASK)) {
+		err = __wait_for_unbind(vma, flags);
+		if (err)
+			goto err_active;
+
 		err = i915_vma_insert(vma, size, alignment, flags);
 		if (err)
 			goto err_active;
@@ -968,6 +991,7 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 	GEM_BUG_ON(bound + I915_VMA_PAGES_ACTIVE < bound);
 	atomic_add(I915_VMA_PAGES_ACTIVE, &vma->pages_count);
 	list_move_tail(&vma->vm_link, &vma->vm->bound_list);
+	GEM_BUG_ON(!i915_vma_is_active(vma));
 
 	__i915_vma_pin(vma);
 	GEM_BUG_ON(!i915_vma_is_pinned(vma));
@@ -989,7 +1013,7 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 err_rpm:
 	if (wakeref)
 		intel_runtime_pm_put(&vma->vm->i915->runtime_pm, wakeref);
-	vma_put_pages(vma);
+	i915_vma_put_pages(vma);
 	return err;
 }
 
@@ -1093,6 +1117,7 @@ void i915_vma_release(struct kref *ref)
 		GEM_BUG_ON(drm_mm_node_allocated(&vma->node));
 	}
 	GEM_BUG_ON(i915_vma_is_active(vma));
+	GEM_BUG_ON(!list_empty(&vma->vm_link));
 
 	if (vma->obj) {
 		struct drm_i915_gem_object *obj = vma->obj;
@@ -1152,7 +1177,7 @@ static void __i915_vma_iounmap(struct i915_vma *vma)
 {
 	GEM_BUG_ON(i915_vma_is_pinned(vma));
 
-	if (vma->iomap == NULL)
+	if (!vma->iomap)
 		return;
 
 	io_mapping_unmap(vma->iomap);
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index 03fea54fd573..9a26e6cbe8cd 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -236,6 +236,9 @@ static inline void i915_vma_unlock(struct i915_vma *vma)
 	dma_resv_unlock(vma->resv);
 }
 
+int i915_vma_get_pages(struct i915_vma *vma);
+void i915_vma_put_pages(struct i915_vma *vma);
+
 bool i915_vma_pin_inplace(struct i915_vma *vma, unsigned int flags);
 
 int __must_check
@@ -379,6 +382,7 @@ void i915_vma_make_shrinkable(struct i915_vma *vma);
 void i915_vma_make_purgeable(struct i915_vma *vma);
 
 int i915_vma_wait_for_bind(struct i915_vma *vma);
+int i915_vma_wait_for_unbind(struct i915_vma *vma);
 
 static inline int i915_vma_sync(struct i915_vma *vma)
 {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
