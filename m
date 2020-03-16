Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE3B186A4A
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 12:43:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 433896E427;
	Mon, 16 Mar 2020 11:43:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B3FB6E421
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 11:43:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20574782-1500050 
 for multiple; Mon, 16 Mar 2020 11:42:39 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Mar 2020 11:42:36 +0000
Message-Id: <20200316114237.5436-14-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200316114237.5436-1-chris@chris-wilson.co.uk>
References: <20200316114237.5436-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/15] drm/i915/gem: Asynchronous GTT unbinding
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
Cc: Matthew Auld <matthew.auld@intel.com>
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
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 673 ++++++++++++++++--
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |   1 +
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |   3 +-
 drivers/gpu/drm/i915/gt/intel_gtt.c           |   4 +
 drivers/gpu/drm/i915/gt/intel_gtt.h           |   2 +
 drivers/gpu/drm/i915/gt/intel_ppgtt.c         |   3 +-
 drivers/gpu/drm/i915/i915_vma.c               | 134 ++--
 drivers/gpu/drm/i915/i915_vma.h               |  17 +
 8 files changed, 701 insertions(+), 136 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 50b2000a72de..7fb47ff185a3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -18,6 +18,7 @@
 #include "gt/intel_engine_pool.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
+#include "gt/intel_gt_requests.h"
 #include "gt/intel_ring.h"
 
 #include "i915_drv.h"
@@ -31,6 +32,9 @@ struct eb_vma {
 	struct i915_vma *vma;
 	unsigned int flags;
 
+	struct drm_mm_node hole;
+	unsigned int bind_flags;
+
 	/** This vma's place in the execbuf reservation list */
 	struct drm_i915_gem_exec_object2 *exec;
 	struct list_head bind_link;
@@ -57,7 +61,8 @@ enum {
 #define __EXEC_OBJECT_HAS_FENCE		BIT(30)
 #define __EXEC_OBJECT_NEEDS_MAP		BIT(29)
 #define __EXEC_OBJECT_NEEDS_BIAS	BIT(28)
-#define __EXEC_OBJECT_INTERNAL_FLAGS	(~0u << 28) /* all of the above */
+#define __EXEC_OBJECT_HAS_PAGES		BIT(27)
+#define __EXEC_OBJECT_INTERNAL_FLAGS	(~0u << 27) /* all of the above */
 
 #define __EXEC_HAS_RELOC	BIT(31)
 #define __EXEC_INTERNAL_FLAGS	(~0u << 31)
@@ -314,6 +319,12 @@ static struct eb_vma_array *eb_vma_array_create(unsigned int count)
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
@@ -324,8 +335,12 @@ static inline void eb_unreserve_vma(struct eb_vma *ev)
 	if (ev->flags & __EXEC_OBJECT_HAS_PIN)
 		__i915_vma_unpin(vma);
 
+	if (ev->flags & __EXEC_OBJECT_HAS_PAGES)
+		i915_vma_put_pages(vma);
+
 	ev->flags &= ~(__EXEC_OBJECT_HAS_PIN |
-		       __EXEC_OBJECT_HAS_FENCE);
+		       __EXEC_OBJECT_HAS_FENCE |
+		       __EXEC_OBJECT_HAS_PAGES);
 }
 
 static void eb_vma_array_destroy(struct kref *kref)
@@ -529,6 +544,7 @@ eb_add_vma(struct i915_execbuffer *eb,
 
 	GEM_BUG_ON(i915_vma_is_closed(vma));
 
+	memset(&ev->hole, 0, sizeof(ev->hole));
 	ev->vma = i915_vma_get(vma);
 	ev->exec = entry;
 	ev->flags = entry->flags;
@@ -592,64 +608,545 @@ static inline int use_cpu_reloc(const struct reloc_cache *cache,
 		obj->cache_level != I915_CACHE_NONE);
 }
 
-static int eb_reserve_vma(const struct i915_execbuffer *eb,
-			  struct eb_vma *ev,
-			  u64 pin_flags)
+struct eb_vm_work {
+	struct dma_fence_work base;
+	struct list_head unbound;
+	struct eb_vma_array *array;
+	struct i915_address_space *vm;
+	struct list_head eviction_list;
+	u64 *p_flags;
+	u64 active;
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
+static bool await_vma(struct eb_vm_work *work, struct i915_vma *vma)
+{
+	bool result = false;
+
+	/* Wait for all other previous activity */
+	if (i915_sw_fence_await_active(&work->base.chain,
+				       &vma->active,
+				       I915_ACTIVE_AWAIT_ALL))
+		return false;
+
+	/* Insert into queue along the exclusive vm->mutex timeline */
+	if (i915_active_acquire(&vma->active) == 0) {
+		result = set_bind_fence(vma, work) == 0;
+		i915_active_release(&vma->active);
+	}
+
+	return result;
+}
+
+static bool evict_for_node(struct eb_vm_work *work,
+			   struct eb_vma *const target,
+			   unsigned int flags)
+{
+	struct i915_address_space *vm = target->vma->vm;
+	const unsigned long color = target->vma->node.color;
+	const u64 start = target->vma->node.start;
+	const u64 end = start + target->vma->node.size;
+	u64 hole_start = start, hole_end = end;
+	struct drm_mm_node *node;
+	LIST_HEAD(eviction_list);
+	struct i915_vma *vma;
+
+	lockdep_assert_held(&vm->mutex);
+	GEM_BUG_ON(drm_mm_node_allocated(&target->vma->node));
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
+		GEM_BUG_ON(node == &target->vma->node);
+
+		/* If we find any non-objects (!vma), we cannot evict them */
+		if (node->color == I915_COLOR_UNEVICTABLE)
+			goto err;
+
+		GEM_BUG_ON(!drm_mm_node_allocated(node));
+		vma = container_of(node, typeof(*vma), node);
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
+		if (i915_vma_is_pinned(vma))
+			goto err;
+
+		if (flags & PIN_NONBLOCK && i915_vma_is_active(vma))
+			goto err;
+
+		if (!await_vma(work, vma))
+			goto err;
+
+		list_move(&vma->vm_link, &eviction_list);
+	}
+
+	/* No overlapping nodes to evict, claim the slot for ourselves! */
+	if (list_empty(&eviction_list))
+		return drm_mm_reserve_node(&vm->mm, &target->vma->node) == 0;
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
+	list_for_each_entry(vma, &eviction_list, vm_link) {
+		target->hole.start =
+			min(target->hole.start, vma->node.start);
+		target->hole.size =
+			max(target->hole.size, node_end(&vma->node));
+
+		GEM_BUG_ON(vma->node.mm != &vm->mm);
+		drm_mm_remove_node(&vma->node);
+		atomic_and(~I915_VMA_BIND_MASK, &vma->flags);
+		GEM_BUG_ON(i915_vma_is_pinned(vma));
+	}
+	list_splice(&eviction_list, &work->eviction_list);
+
+	target->hole.size -= target->hole.start;
+
+	return drm_mm_reserve_node(&vm->mm, &target->hole) == 0;
+
+err:
+	list_splice(&eviction_list, &vm->bound_list);
+	return false;
+}
+
+static bool
+evict_vma(struct eb_vm_work *work,
+	  struct eb_vma * const target,
+	  struct i915_vma *vma)
+{
+	if (!await_vma(work, vma))
+		return false;
+
+	drm_mm_remove_node(&vma->node);
+	atomic_and(~I915_VMA_BIND_MASK, &vma->flags);
+	list_move(&vma->vm_link, &work->eviction_list);
+
+	target->hole.start = min(target->hole.start, vma->node.start);
+	target->hole.size = max(target->hole.size, node_end(&vma->node));
+
+	return true;
+}
+
+static int
+evict_for_range(struct eb_vm_work *work,
+		struct eb_vma * const target,
+		u64 start, u64 end, u64 align)
+{
+	struct i915_address_space *vm = target->vma->vm;
+	struct i915_vma *vma, *next;
+	struct drm_mm_scan scan;
+	LIST_HEAD(eviction_list);
+	struct drm_mm_node *node;
+
+	lockdep_assert_held(&vm->mutex);
+
+	drm_mm_scan_init_with_range(&scan, &vm->mm,
+				    target->vma->node.size,
+				    align,
+				    target->vma->node.color,
+				    start, end,
+				    DRM_MM_INSERT_BEST);
+
+	list_for_each_entry(vma, &vm->bound_list, vm_link) {
+		if (i915_vma_is_pinned(vma))
+			continue;
+
+		list_move(&vma->evict_link, &eviction_list);
+		if (drm_mm_scan_add_block(&scan, &vma->node))
+			goto found;
+	}
+
+err:
+	list_for_each_entry(vma, &eviction_list, evict_link)
+		drm_mm_scan_remove_block(&scan, &vma->node);
+	list_splice(&eviction_list, &vm->bound_list);
+	return false;
+
+found:
+	target->hole.color = I915_COLOR_UNEVICTABLE;
+	target->hole.start = U64_MAX;
+	target->hole.size = 0;
+
+	list_for_each_entry_safe(vma, next, &eviction_list, evict_link) {
+		if (!drm_mm_scan_remove_block(&scan, &vma->node)) {
+			list_move(&vma->vm_link, &vm->bound_list);
+			continue;
+		}
+
+		if (!evict_vma(work, target, vma))
+			goto err;
+	}
+
+	while ((node = drm_mm_scan_color_evict(&scan))) {
+		vma = container_of(node, struct i915_vma, node);
+
+		if (i915_vma_is_pinned(vma))
+			goto err;
+
+		if (!evict_vma(work, target, vma))
+			goto err;
+	}
+
+	target->hole.size -= target->hole.start;
+	return drm_mm_reserve_node(&vm->mm, &target->hole) == 0;
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
+static int eb_reserve_vma(struct eb_vm_work *work, struct eb_vma *ev)
 {
 	struct drm_i915_gem_exec_object2 *entry = ev->exec;
-	unsigned int exec_flags = ev->flags;
+	const unsigned int exec_flags = ev->flags;
 	struct i915_vma *vma = ev->vma;
+	struct i915_address_space *vm = vma->vm;
+	u64 start = 0, end = vm->total;
+	u64 align = entry->alignment ?: I915_GTT_MIN_ALIGNMENT;
+	unsigned int bind_flags;
 	int err;
 
+	bind_flags = PIN_USER;
 	if (exec_flags & EXEC_OBJECT_NEEDS_GTT)
-		pin_flags |= PIN_GLOBAL;
+		bind_flags |= PIN_GLOBAL;
+
+	if (drm_mm_node_allocated(&vma->node))
+		goto pin;
+
+	GEM_BUG_ON(i915_vma_is_bound(vma, bind_flags));
+	GEM_BUG_ON(i915_active_fence_isset(&vma->active.excl));
+
+	vma->node.start = entry->offset & PIN_OFFSET_MASK;
+	vma->node.size = max(entry->pad_to_size, vma->size);
+	vma->node.color = 0;
+	if (i915_vm_has_cache_coloring(vm))
+		vma->node.color = vma->obj->cache_level;
 
 	/*
 	 * Wa32bitGeneralStateOffset & Wa32bitInstructionBaseOffset,
 	 * limit address to the first 4GBs for unflagged objects.
 	 */
 	if (!(exec_flags & EXEC_OBJECT_SUPPORTS_48B_ADDRESS))
-		pin_flags |= PIN_ZONE_4G;
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
+	if (vma->node.size > end - start)
+		return -E2BIG;
+
+	if (vma->node.start >= start &&
+	    IS_ALIGNED(vma->node.start, align) &&
+	    !range_overflows(vma->node.start, vma->node.size, end)) {
+		unsigned int pin_flags;
+
+		if (drm_mm_reserve_node(&vm->mm, &vma->node) == 0)
+			goto pin;
 
-	if (exec_flags & __EXEC_OBJECT_NEEDS_MAP)
-		pin_flags |= PIN_MAPPABLE;
+		pin_flags = 0;
+		if (!(exec_flags & EXEC_OBJECT_PINNED))
+			pin_flags = PIN_NONBLOCK;
+
+		if (evict_for_node(work, ev, pin_flags))
+			goto pin;
+	}
 
 	if (exec_flags & EXEC_OBJECT_PINNED)
-		pin_flags |= entry->offset | PIN_OFFSET_FIXED;
-	else if (exec_flags & __EXEC_OBJECT_NEEDS_BIAS)
-		pin_flags |= BATCH_OFFSET_BIAS | PIN_OFFSET_BIAS;
+		return -ENOSPC;
 
-	if (drm_mm_node_allocated(&vma->node) &&
-	    eb_vma_misplaced(entry, vma, ev->flags)) {
-		err = i915_vma_unbind(vma);
-		if (err)
+	vma->node.start = random_offset(start, end, vma->node.size, align);
+	if (evict_for_node(work, ev, PIN_NONBLOCK))
+		goto pin;
+
+	if (drm_mm_insert_node_in_range(&vm->mm, &vma->node,
+					vma->node.size,
+					align <= I915_GTT_MIN_ALIGNMENT ? 0 : align,
+					vma->node.color,
+					start, end, 0) == 0)
+		goto pin;
+
+	vma->node.start = random_offset(start, end, vma->node.size, align);
+	if (evict_for_node(work, ev, 0))
+		goto pin;
+
+	if (evict_for_range(work, ev, start, end, align))
+		goto pin;
+
+	return -ENOSPC;
+
+pin:
+	if (unlikely(exec_flags & EXEC_OBJECT_NEEDS_FENCE)) {
+		err = __i915_vma_pin_fence(vma); /* XXX no waiting */
+		if (unlikely(err))
 			return err;
+
+		if (vma->fence)
+			ev->flags |= __EXEC_OBJECT_HAS_FENCE;
 	}
 
-	err = i915_vma_pin(vma,
-			   entry->pad_to_size, entry->alignment,
-			   pin_flags);
-	if (err)
-		return err;
+	ev->bind_flags = bind_flags & ~atomic_read(&vma->flags);
+	if (ev->bind_flags) {
+		err = set_bind_fence(vma, work);
+		if (unlikely(err))
+			return err;
+
+		atomic_add(I915_VMA_PAGES_ACTIVE, &vma->pages_count);
+		atomic_or(bind_flags, &vma->flags);
+		list_move_tail(&vma->vm_link, &vm->bound_list);
+	}
+
+	__i915_vma_pin(vma);
+
+	if (ev->bind_flags && i915_vma_is_ggtt(vma))
+		__i915_vma_set_map_and_fenceable(vma);
+
+	GEM_BUG_ON(!ev->bind_flags && !drm_mm_node_allocated(&vma->node));
+	GEM_BUG_ON(!(drm_mm_node_allocated(&vma->node) ^
+		     drm_mm_node_allocated(&ev->hole)));
 
 	if (entry->offset != vma->node.start) {
 		entry->offset = vma->node.start | UPDATE;
-		eb->args->flags |= __EXEC_HAS_RELOC;
+		*work->p_flags |= __EXEC_HAS_RELOC;
 	}
 
-	if (unlikely(exec_flags & EXEC_OBJECT_NEEDS_FENCE)) {
-		err = i915_vma_pin_fence(vma);
-		if (unlikely(err)) {
-			i915_vma_unpin(vma);
-			return err;
+	ev->flags |= __EXEC_OBJECT_HAS_PIN;
+	GEM_BUG_ON(eb_vma_misplaced(entry, vma, ev->flags));
+
+	return 0;
+}
+
+static int eb_bind_vma(struct dma_fence_work *base)
+{
+	struct eb_vm_work *work = container_of(base, typeof(*work), base);
+	struct i915_address_space *vm = work->vm;
+	struct eb_vma *ev;
+	int err = 0;
+
+	/*
+	 * We have to wait until the stale nodes are completely idle before
+	 * we can remove their PTE and unbind their pages. Hence, after
+	 * claiming their slot in the drm_mm, we defer their removal to
+	 * after the fences are signaled.
+	 */
+	if (!list_empty(&work->eviction_list)) {
+		struct i915_vma *vma, *vn;
+
+		mutex_lock(&vm->mutex);
+		list_for_each_entry_safe(vma, vn,
+					 &work->eviction_list, vm_link) {
+			GEM_BUG_ON(i915_vma_is_bound(vma, I915_VMA_BIND_MASK));
+			GEM_BUG_ON(vma->vm != vm);
+
+			__i915_vma_evict(vma);
 		}
+		mutex_unlock(&vm->mutex);
+	}
 
-		if (vma->fence)
-			exec_flags |= __EXEC_OBJECT_HAS_FENCE;
+	/*
+	 * Now we the nodes we require in drm_mm are idle, we can replace
+	 * the PTE in those ranges with our own.
+	 */
+	list_for_each_entry(ev, &work->unbound, bind_link) {
+		struct i915_vma *vma = ev->vma;
+
+		GEM_BUG_ON(vma->vm != vm);
+
+		if (!ev->bind_flags)
+			goto put;
+
+		GEM_BUG_ON(!i915_vma_is_active(vma));
+
+		if (err == 0)
+			err = vma->ops->bind_vma(vma,
+						 vma->obj->cache_level,
+						 ev->bind_flags |
+						 I915_VMA_ALLOC);
+
+		GEM_BUG_ON(!i915_vma_is_bound(vma, I915_VMA_LOCAL_BIND));
+		if (drm_mm_node_allocated(&ev->hole)) {
+			mutex_lock(&vm->mutex);
+			GEM_BUG_ON(ev->hole.mm != &vm->mm);
+			GEM_BUG_ON(drm_mm_node_allocated(&vma->node));
+			drm_mm_remove_node(&ev->hole);
+			drm_mm_reserve_node(&vm->mm, &vma->node);
+			GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
+			mutex_unlock(&vm->mutex);
+		}
+		if (err) {
+			atomic_and(~ev->bind_flags, &vma->flags);
+			set_bit(I915_VMA_ERROR_BIT, __i915_vma_flags(vma));
+		}
+
+put:
+		GEM_BUG_ON(drm_mm_node_allocated(&ev->hole));
 	}
 
-	ev->flags = exec_flags | __EXEC_OBJECT_HAS_PIN;
-	GEM_BUG_ON(eb_vma_misplaced(entry, vma, ev->flags));
+	return err;
+}
+
+static void eb_vma_work_release(struct dma_fence_work *base)
+{
+	struct eb_vm_work *work = container_of(base, typeof(*work), base);
+
+	if (work->active)
+		i915_active_release(&work->vm->active);
+
+	eb_vma_array_put(work->array);
+}
+
+static const struct dma_fence_work_ops eb_bind_ops = {
+	.name = "eb_bind",
+	.work = eb_bind_vma,
+	.release = eb_vma_work_release,
+};
+
+static struct eb_vm_work *eb_vm_work(struct i915_execbuffer *eb)
+{
+	struct eb_vm_work *work;
+
+	work = kzalloc(sizeof(*work), GFP_KERNEL);
+	if (!work)
+		return NULL;
+
+	dma_fence_work_init(&work->base, &eb_bind_ops);
+	list_replace_init(&eb->unbound, &work->unbound);
+	work->array = eb_vma_array_get(eb->array);
+	work->p_flags = &eb->args->flags;
+	work->vm = eb->context->vm;
+
+	/* Preallocate our slot in vm->active, outside of vm->mutex */
+	work->active = i915_gem_context_async_id(eb->gem_context);
+	if (i915_active_acquire_for_context(&work->vm->active, work->active)) {
+		work->active = 0;
+		work->base.dma.error = -ENOMEM;
+		dma_fence_work_commit(&work->base);
+		return NULL;
+	}
+
+	INIT_LIST_HEAD(&work->eviction_list);
+
+	GEM_BUG_ON(list_empty(&work->unbound));
+	GEM_BUG_ON(!list_empty(&eb->unbound));
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
+	p = __i915_active_ref(&work->vm->active, work->active, &work->base.dma);
+	if (IS_ERR_OR_NULL(p))
+		return PTR_ERR(p);
+
+	err = i915_sw_fence_await_dma_fence(&work->base.chain, p, 0,
+					    GFP_NOWAIT | __GFP_NOWARN);
+	dma_fence_put(p);
+
+	return err < 0 ? err : 0;
+}
+
+static int eb_prepare_vma(struct eb_vma *ev)
+{
+	struct i915_vma *vma = ev->vma;
+	int err;
+
+	GEM_BUG_ON(drm_mm_node_allocated(&ev->hole));
+	ev->bind_flags = 0;
+
+	/* Wait for a previous unbind to avoid reusing an active vma->node */
+	err = i915_vma_wait_for_unbind(vma);
+	if (err)
+		return err;
+
+	if (!(ev->flags &  __EXEC_OBJECT_HAS_PAGES)) {
+		err = i915_vma_get_pages(vma);
+		if (err)
+			return err;
+
+		ev->flags |=  __EXEC_OBJECT_HAS_PAGES;
+	}
 
 	return 0;
 }
@@ -657,39 +1154,82 @@ static int eb_reserve_vma(const struct i915_execbuffer *eb,
 static int eb_reserve(struct i915_execbuffer *eb)
 {
 	const unsigned int count = eb->buffer_count;
-	unsigned int pin_flags = PIN_USER | PIN_NONBLOCK;
+	struct i915_address_space *vm = eb->context->vm;
 	struct list_head last;
-	struct eb_vma *ev;
 	unsigned int i, pass;
+	struct eb_vma *ev;
 	int err = 0;
 
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
-	if (mutex_lock_interruptible(&eb->i915->drm.struct_mutex))
-		return -EINTR;
-
 	pass = 0;
 	do {
+		struct eb_vm_work *work;
+
 		list_for_each_entry(ev, &eb->unbound, bind_link) {
-			err = eb_reserve_vma(eb, ev, pin_flags);
+			err = eb_prepare_vma(ev);
+			switch (err) {
+			case 0:
+				break;
+			case -EAGAIN:
+				goto retry;
+			default:
+				return err;
+			}
+		}
+
+		work = eb_vm_work(eb);
+		if (!work)
+			return -ENOMEM;
+
+		if (mutex_lock_interruptible(&vm->mutex)) {
+			work->base.dma.error = -EINTR;
+			dma_fence_work_commit(&work->base);
+			return -EINTR;
+		}
+
+		err = eb_vm_throttle(work);
+		if (err) {
+			mutex_unlock(&vm->mutex);
+			work->base.dma.error = err;
+			dma_fence_work_commit(&work->base);
+			return err;
+		}
+
+		list_for_each_entry(ev, &work->unbound, bind_link) {
+			struct i915_vma *vma = ev->vma;
+
+			if (drm_mm_node_allocated(&vma->node) &&
+			    eb_vma_misplaced(ev->exec, vma, ev->flags)) {
+				err = __i915_vma_unbind(vma);
+				if (err)
+					break;
+			}
+
+			if (!drm_mm_node_allocated(&vma->node) &&
+			    i915_vma_is_active(vma)) {
+				err = -ENOSPC;
+				break;
+			}
+
+			err = i915_active_acquire(&vma->active);
+			if (!err) {
+				err = eb_reserve_vma(work, ev);
+				i915_active_release(&vma->active);
+			}
 			if (err)
 				break;
 		}
-		if (!(err == -ENOSPC || err == -EAGAIN))
-			break;
 
+		mutex_unlock(&vm->mutex);
+
+		dma_fence_get(&work->base.dma);
+		dma_fence_work_commit_imm(&work->base);
+		if (err == -ENOSPC && dma_fence_wait(&work->base.dma, true))
+			err = -EINTR;
+		dma_fence_put(&work->base.dma);
+		if (err != -ENOSPC)
+			return err;
+
+retry:
 		/* Resort *all* the objects into priority order */
 		INIT_LIST_HEAD(&eb->unbound);
 		INIT_LIST_HEAD(&last);
@@ -719,9 +1259,7 @@ static int eb_reserve(struct i915_execbuffer *eb)
 		list_splice_tail(&last, &eb->unbound);
 
 		if (err == -EAGAIN) {
-			mutex_unlock(&eb->i915->drm.struct_mutex);
 			flush_workqueue(eb->i915->mm.userptr_wq);
-			mutex_lock(&eb->i915->drm.struct_mutex);
 			continue;
 		}
 
@@ -731,24 +1269,20 @@ static int eb_reserve(struct i915_execbuffer *eb)
 
 		case 1:
 			/* Too fragmented, unbind everything and retry */
-			mutex_lock(&eb->context->vm->mutex);
-			err = i915_gem_evict_vm(eb->context->vm);
-			mutex_unlock(&eb->context->vm->mutex);
-			if (err)
-				goto unlock;
+			if (i915_active_wait(&vm->active))
+				return -EINTR;
+			break;
+
+		case 2:
+			if (intel_gt_wait_for_idle(vm->gt,
+						   MAX_SCHEDULE_TIMEOUT))
+				return -EINTR;
 			break;
 
 		default:
-			err = -ENOSPC;
-			goto unlock;
+			return err;
 		}
-
-		pin_flags = PIN_USER;
 	} while (1);
-
-unlock:
-	mutex_unlock(&eb->i915->drm.struct_mutex);
-	return err;
 }
 
 static unsigned int eb_batch_index(const struct i915_execbuffer *eb)
@@ -1628,7 +2162,6 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
 			err = i915_vma_move_to_active(vma, eb->request, flags);
 
 		i915_vma_unlock(vma);
-		eb_unreserve_vma(ev);
 	}
 	ww_acquire_fini(&acquire);
 
diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index f4fec7eb4064..2c5ac598ade2 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -370,6 +370,7 @@ static struct i915_vma *pd_vma_create(struct gen6_ppgtt *ppgtt, int size)
 	atomic_set(&vma->flags, I915_VMA_GGTT);
 	vma->ggtt_view.type = I915_GGTT_VIEW_ROTATED; /* prevent fencing */
 
+	INIT_LIST_HEAD(&vma->vm_link);
 	INIT_LIST_HEAD(&vma->obj_link);
 	INIT_LIST_HEAD(&vma->closed_link);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 8fcf14372d7a..e1981515f2e6 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -551,7 +551,8 @@ static int aliasing_gtt_bind_vma(struct i915_vma *vma,
 	if (flags & I915_VMA_LOCAL_BIND) {
 		struct i915_ppgtt *alias = i915_vm_to_ggtt(vma->vm)->alias;
 
-		if (flags & I915_VMA_ALLOC) {
+		if (flags & I915_VMA_ALLOC &&
+		    !test_bit(I915_VMA_ALLOC_BIT, __i915_vma_flags(vma))) {
 			ret = alias->vm.allocate_va_range(&alias->vm,
 							  vma->node.start,
 							  vma->size);
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 2a72cce63fd9..82d4f943c346 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -194,6 +194,8 @@ void __i915_vm_close(struct i915_address_space *vm)
 
 void i915_address_space_fini(struct i915_address_space *vm)
 {
+	i915_active_fini(&vm->active);
+
 	spin_lock(&vm->free_pages.lock);
 	if (pagevec_count(&vm->free_pages.pvec))
 		vm_free_pages_release(vm, true);
@@ -246,6 +248,8 @@ void i915_address_space_init(struct i915_address_space *vm, int subclass)
 	drm_mm_init(&vm->mm, 0, vm->total);
 	vm->mm.head_node.color = I915_COLOR_UNEVICTABLE;
 
+	i915_active_init(&vm->active, NULL, NULL);
+
 	stash_init(&vm->free_pages);
 
 	INIT_LIST_HEAD(&vm->bound_list);
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index d93ebdf3fa0e..773fc76dfa1b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -263,6 +263,8 @@ struct i915_address_space {
 	 */
 	struct list_head bound_list;
 
+	struct i915_active active;
+
 	struct pagestash free_pages;
 
 	/* Global GTT */
diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
index f86f7e68ce5e..ecdd58f4b993 100644
--- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
@@ -162,7 +162,8 @@ static int ppgtt_bind_vma(struct i915_vma *vma,
 	u32 pte_flags;
 	int err;
 
-	if (flags & I915_VMA_ALLOC) {
+	if (flags & I915_VMA_ALLOC &&
+	    !test_bit(I915_VMA_ALLOC_BIT, __i915_vma_flags(vma))) {
 		err = vma->vm->allocate_va_range(vma->vm,
 						 vma->node.start, vma->size);
 		if (err)
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 880e18f5b71b..e29cc9bb5a6d 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -132,6 +132,7 @@ vma_create(struct drm_i915_gem_object *obj,
 		fs_reclaim_release(GFP_KERNEL);
 	}
 
+	INIT_LIST_HEAD(&vma->vm_link);
 	INIT_LIST_HEAD(&vma->closed_link);
 
 	if (view && view->type != I915_GGTT_VIEW_NORMAL) {
@@ -340,25 +341,32 @@ struct i915_vma_work *i915_vma_work(void)
 	return vw;
 }
 
-int i915_vma_wait_for_bind(struct i915_vma *vma)
+static int __i915_vma_wait_excl(struct i915_vma *vma, bool bound)
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
-	}
+	if (drm_mm_node_allocated(&vma->node) == bound)
+		err = dma_fence_wait(fence, true);
 
+	dma_fence_put(fence);
 	return err;
 }
 
+int i915_vma_wait_for_bind(struct i915_vma *vma)
+{
+	return __i915_vma_wait_excl(vma, true);
+}
+
+int i915_vma_wait_for_unbind(struct i915_vma *vma)
+{
+	return __i915_vma_wait_excl(vma, false);
+}
+
 /**
  * i915_vma_bind - Sets up PTEs for an VMA in it's corresponding address space.
  * @vma: VMA to map
@@ -726,7 +734,7 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 	GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
 	GEM_BUG_ON(!i915_gem_valid_gtt_space(vma, color));
 
-	list_add_tail(&vma->vm_link, &vma->vm->bound_list);
+	list_move_tail(&vma->vm_link, &vma->vm->bound_list);
 
 	return 0;
 }
@@ -742,7 +750,7 @@ i915_vma_detach(struct i915_vma *vma)
 	 * vma, we can drop its hold on the backing storage and allow
 	 * it to be reaped by the shrinker.
 	 */
-	list_del(&vma->vm_link);
+	list_del_init(&vma->vm_link);
 }
 
 static bool try_qad_pin(struct i915_vma *vma, unsigned int flags)
@@ -788,7 +796,7 @@ static bool try_qad_pin(struct i915_vma *vma, unsigned int flags)
 	return pinned;
 }
 
-static int vma_get_pages(struct i915_vma *vma)
+int i915_vma_get_pages(struct i915_vma *vma)
 {
 	int err = 0;
 
@@ -835,7 +843,7 @@ static void __vma_put_pages(struct i915_vma *vma, unsigned int count)
 	mutex_unlock(&vma->pages_mutex);
 }
 
-static void vma_put_pages(struct i915_vma *vma)
+void i915_vma_put_pages(struct i915_vma *vma)
 {
 	if (atomic_add_unless(&vma->pages_count, -1, 1))
 		return;
@@ -843,7 +851,7 @@ static void vma_put_pages(struct i915_vma *vma)
 	__vma_put_pages(vma, 1);
 }
 
-static void vma_unbind_pages(struct i915_vma *vma)
+void i915_vma_unbind_pages(struct i915_vma *vma)
 {
 	unsigned int count;
 
@@ -874,10 +882,14 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 	if (try_qad_pin(vma, flags & I915_VMA_BIND_MASK))
 		return 0;
 
-	err = vma_get_pages(vma);
+	err = i915_vma_get_pages(vma);
 	if (err)
 		return err;
 
+	err = i915_vma_wait_for_unbind(vma);
+	if (err)
+		goto err_pages;
+
 	if (flags & vma->vm->bind_async_flags) {
 		work = i915_vma_work();
 		if (!work) {
@@ -960,7 +972,7 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 	if (wakeref)
 		intel_runtime_pm_put(&vma->vm->i915->runtime_pm, wakeref);
 err_pages:
-	vma_put_pages(vma);
+	i915_vma_put_pages(vma);
 	return err;
 }
 
@@ -1108,17 +1120,6 @@ void i915_vma_parked(struct intel_gt *gt)
 	spin_unlock_irq(&gt->closed_lock);
 }
 
-static void __i915_vma_iounmap(struct i915_vma *vma)
-{
-	GEM_BUG_ON(i915_vma_is_pinned(vma));
-
-	if (vma->iomap == NULL)
-		return;
-
-	io_mapping_unmap(vma->iomap);
-	vma->iomap = NULL;
-}
-
 void i915_vma_revoke_mmap(struct i915_vma *vma)
 {
 	struct drm_vma_offset_node *node;
@@ -1201,41 +1202,8 @@ int i915_vma_move_to_active(struct i915_vma *vma,
 	return 0;
 }
 
-int __i915_vma_unbind(struct i915_vma *vma)
+void __i915_vma_evict(struct i915_vma *vma)
 {
-	int ret;
-
-	lockdep_assert_held(&vma->vm->mutex);
-
-	/*
-	 * First wait upon any activity as retiring the request may
-	 * have side-effects such as unpinning or even unbinding this vma.
-	 *
-	 * XXX Actually waiting under the vm->mutex is a hinderance and
-	 * should be pipelined wherever possible. In cases where that is
-	 * unavoidable, we should lift the wait to before the mutex.
-	 */
-	ret = i915_vma_sync(vma);
-	if (ret)
-		return ret;
-
-	if (i915_vma_is_pinned(vma)) {
-		vma_print_allocator(vma, "is pinned");
-		return -EAGAIN;
-	}
-
-	/*
-	 * After confirming that no one else is pinning this vma, wait for
-	 * any laggards who may have crept in during the wait (through
-	 * a residual pin skipping the vm->mutex) to complete.
-	 */
-	ret = i915_vma_sync(vma);
-	if (ret)
-		return ret;
-
-	if (!drm_mm_node_allocated(&vma->node))
-		return 0;
-
 	GEM_BUG_ON(i915_vma_is_pinned(vma));
 	GEM_BUG_ON(i915_vma_is_active(vma));
 
@@ -1275,7 +1243,45 @@ int __i915_vma_unbind(struct i915_vma *vma)
 		   &vma->flags);
 
 	i915_vma_detach(vma);
-	vma_unbind_pages(vma);
+	i915_vma_unbind_pages(vma);
+}
+
+int __i915_vma_unbind(struct i915_vma *vma)
+{
+	int ret;
+
+	lockdep_assert_held(&vma->vm->mutex);
+
+	/*
+	 * First wait upon any activity as retiring the request may
+	 * have side-effects such as unpinning or even unbinding this vma.
+	 *
+	 * XXX Actually waiting under the vm->mutex is a hinderance and
+	 * should be pipelined wherever possible. In cases where that is
+	 * unavoidable, we should lift the wait to before the mutex.
+	 */
+	ret = i915_vma_sync(vma);
+	if (ret)
+		return ret;
+
+	if (i915_vma_is_pinned(vma)) {
+		vma_print_allocator(vma, "is pinned");
+		return -EAGAIN;
+	}
+
+	/*
+	 * After confirming that no one else is pinning this vma, wait for
+	 * any laggards who may have crept in during the wait (through
+	 * a residual pin skipping the vm->mutex) to complete.
+	 */
+	ret = i915_vma_sync(vma);
+	if (ret)
+		return ret;
+
+	if (!drm_mm_node_allocated(&vma->node))
+		return 0;
+
+	__i915_vma_evict(vma);
 
 	drm_mm_remove_node(&vma->node); /* pairs with i915_vma_release() */
 	return 0;
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index 8ad1daabcd58..d72847550d1a 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -203,6 +203,7 @@ bool i915_vma_misplaced(const struct i915_vma *vma,
 			u64 size, u64 alignment, u64 flags);
 void __i915_vma_set_map_and_fenceable(struct i915_vma *vma);
 void i915_vma_revoke_mmap(struct i915_vma *vma);
+void __i915_vma_evict(struct i915_vma *vma);
 int __i915_vma_unbind(struct i915_vma *vma);
 int __must_check i915_vma_unbind(struct i915_vma *vma);
 void i915_vma_unlink_ctx(struct i915_vma *vma);
@@ -239,6 +240,10 @@ int __must_check
 i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags);
 int i915_ggtt_pin(struct i915_vma *vma, u32 align, unsigned int flags);
 
+int i915_vma_get_pages(struct i915_vma *vma);
+void i915_vma_put_pages(struct i915_vma *vma);
+void i915_vma_unbind_pages(struct i915_vma *vma);
+
 static inline int i915_vma_pin_count(const struct i915_vma *vma)
 {
 	return atomic_read(&vma->flags) & I915_VMA_PIN_MASK;
@@ -293,6 +298,17 @@ static inline bool i915_node_color_differs(const struct drm_mm_node *node,
 void __iomem *i915_vma_pin_iomap(struct i915_vma *vma);
 #define IO_ERR_PTR(x) ((void __iomem *)ERR_PTR(x))
 
+static inline void __i915_vma_iounmap(struct i915_vma *vma)
+{
+	GEM_BUG_ON(i915_vma_is_pinned(vma));
+
+	if (!vma->iomap)
+		return;
+
+	io_mapping_unmap(vma->iomap);
+	vma->iomap = NULL;
+}
+
 /**
  * i915_vma_unpin_iomap - unpins the mapping returned from i915_vma_iomap
  * @vma: VMA to unpin
@@ -376,6 +392,7 @@ void i915_vma_make_shrinkable(struct i915_vma *vma);
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
