Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9A81B2438
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 12:46:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D4E86E910;
	Tue, 21 Apr 2020 10:46:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 668F66E86B
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 10:46:30 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Apr 2020 12:46:10 +0200
Message-Id: <20200421104626.1480208-8-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200421104626.1480208-1-maarten.lankhorst@linux.intel.com>
References: <20200421104626.1480208-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/24] drm/i915: Use per object locking in
 execbuf, v8.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now that we changed execbuf submission slightly to allow us to do all
pinning in one place, we can now simply add ww versions on top of
struct_mutex. All we have to do is a separate path for -EDEADLK
handling, which needs to unpin all gem bo's before dropping the lock,
then starting over.

This finally allows us to do parallel submission, but because not
all of the pinning code uses the ww ctx yet, we cannot completely
drop struct_mutex yet.

Changes since v1:
- Keep struct_mutex for now. :(
Changes since v2:
- Make sure we always lock the ww context in slowpath.
Changes since v3:
- Don't call __eb_unreserve_vma in eb_move_to_gpu now; this can be
  done on normal unlock path.
- Unconditionally release vmas and context.
Changes since v4:
- Rebased on top of struct_mutex reduction.
Changes since v5:
- Remove training wheels.
Changes since v6:
- Fix accidentally broken -ENOSPC handling.
Changes since v7:
- Handle gt buffer pool better.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 330 ++++++++++--------
 drivers/gpu/drm/i915/i915_gem.c               |   6 +
 drivers/gpu/drm/i915/i915_gem.h               |   1 +
 3 files changed, 195 insertions(+), 142 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index b05dcd492e25..a1b3d1fa1402 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -249,6 +249,8 @@ struct i915_execbuffer {
 	/** list of vma that have execobj.relocation_count */
 	struct list_head relocs;
 
+	struct i915_gem_ww_ctx ww;
+
 	/**
 	 * Track the most recently used object for relocations, as we
 	 * frequently have to perform multiple relocations within the same
@@ -267,14 +269,18 @@ struct i915_execbuffer {
 		struct i915_request *rq;
 		u32 *rq_cmd;
 		unsigned int rq_size;
+		struct intel_gt_buffer_pool_node *pool;
 	} reloc_cache;
 
+	struct intel_gt_buffer_pool_node *reloc_pool; /** relocation pool for -EDEADLK handling */
+
 	u64 invalid_flags; /** Set of execobj.flags that are invalid */
 	u32 context_flags; /** Set of execobj.flags to insert from the ctx */
 
 	u32 batch_start_offset; /** Location within object of batch */
 	u32 batch_len; /** Length of batch within object */
 	u32 batch_flags; /** Flags composed for emit_bb_start() */
+	struct intel_gt_buffer_pool_node *batch_pool; /** pool node for batch buffer */
 
 	/**
 	 * Indicate either the size of the hastable used to resolve
@@ -441,24 +447,18 @@ eb_pin_vma(struct i915_execbuffer *eb,
 	return !eb_vma_misplaced(entry, vma, ev->flags);
 }
 
-static inline void __eb_unreserve_vma(struct i915_vma *vma, unsigned int flags)
-{
-	GEM_BUG_ON(!(flags & __EXEC_OBJECT_HAS_PIN));
-
-	if (unlikely(flags & __EXEC_OBJECT_HAS_FENCE))
-		__i915_vma_unpin_fence(vma);
-
-	__i915_vma_unpin(vma);
-}
-
 static inline void
 eb_unreserve_vma(struct eb_vma *ev)
 {
 	if (!(ev->flags & __EXEC_OBJECT_HAS_PIN))
 		return;
 
-	__eb_unreserve_vma(ev->vma, ev->flags);
 	ev->flags &= ~__EXEC_OBJECT_RESERVED;
+
+	if (unlikely(ev->flags & __EXEC_OBJECT_HAS_FENCE))
+		__i915_vma_unpin_fence(ev->vma);
+
+	__i915_vma_unpin(ev->vma);
 }
 
 static int
@@ -552,16 +552,6 @@ eb_add_vma(struct i915_execbuffer *eb,
 
 		eb->batch = ev;
 	}
-
-	if (eb_pin_vma(eb, entry, ev)) {
-		if (entry->offset != vma->node.start) {
-			entry->offset = vma->node.start | UPDATE;
-			eb->args->flags |= __EXEC_HAS_RELOC;
-		}
-	} else {
-		eb_unreserve_vma(ev);
-		list_add_tail(&ev->bind_link, &eb->unbound);
-	}
 }
 
 static inline int use_cpu_reloc(const struct reloc_cache *cache,
@@ -646,10 +636,6 @@ static int eb_reserve(struct i915_execbuffer *eb)
 	 * This avoid unnecessary unbinding of later objects in order to make
 	 * room for the earlier objects *unless* we need to defragment.
 	 */
-
-	if (mutex_lock_interruptible(&eb->i915->drm.struct_mutex))
-		return -EINTR;
-
 	pass = 0;
 	do {
 		list_for_each_entry(ev, &eb->unbound, bind_link) {
@@ -657,8 +643,8 @@ static int eb_reserve(struct i915_execbuffer *eb)
 			if (err)
 				break;
 		}
-		if (!(err == -ENOSPC || err == -EAGAIN))
-			break;
+		if (err != -ENOSPC)
+			return err;
 
 		/* Resort *all* the objects into priority order */
 		INIT_LIST_HEAD(&eb->unbound);
@@ -688,13 +674,6 @@ static int eb_reserve(struct i915_execbuffer *eb)
 		}
 		list_splice_tail(&last, &eb->unbound);
 
-		if (err == -EAGAIN) {
-			mutex_unlock(&eb->i915->drm.struct_mutex);
-			flush_workqueue(eb->i915->mm.userptr_wq);
-			mutex_lock(&eb->i915->drm.struct_mutex);
-			continue;
-		}
-
 		switch (pass++) {
 		case 0:
 			break;
@@ -705,20 +684,15 @@ static int eb_reserve(struct i915_execbuffer *eb)
 			err = i915_gem_evict_vm(eb->context->vm);
 			mutex_unlock(&eb->context->vm->mutex);
 			if (err)
-				goto unlock;
+				return err;
 			break;
 
 		default:
-			err = -ENOSPC;
-			goto unlock;
+			return -ENOSPC;
 		}
 
 		pin_flags = PIN_USER;
 	} while (1);
-
-unlock:
-	mutex_unlock(&eb->i915->drm.struct_mutex);
-	return err;
 }
 
 static unsigned int eb_batch_index(const struct i915_execbuffer *eb)
@@ -840,7 +814,6 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
 	int err = 0;
 
 	INIT_LIST_HEAD(&eb->relocs);
-	INIT_LIST_HEAD(&eb->unbound);
 
 	for (i = 0; i < eb->buffer_count; i++) {
 		struct i915_vma *vma;
@@ -883,6 +856,48 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
 	return err;
 }
 
+static int eb_validate_vmas(struct i915_execbuffer *eb)
+{
+	unsigned int i;
+	int err;
+
+	INIT_LIST_HEAD(&eb->unbound);
+
+	for (i = 0; i < eb->buffer_count; i++) {
+		struct drm_i915_gem_exec_object2 *entry = &eb->exec[i];
+		struct eb_vma *ev = &eb->vma[i];
+		struct i915_vma *vma = ev->vma;
+
+		err = i915_gem_object_lock(vma->obj, &eb->ww);
+		if (err)
+			return err;
+
+		if (eb_pin_vma(eb, entry, ev)) {
+			if (entry->offset != vma->node.start) {
+				entry->offset = vma->node.start | UPDATE;
+				eb->args->flags |= __EXEC_HAS_RELOC;
+			}
+		} else {
+			eb_unreserve_vma(ev);
+
+			list_add_tail(&ev->bind_link, &eb->unbound);
+			if (drm_mm_node_allocated(&vma->node)) {
+				err = i915_vma_unbind(vma);
+				if (err)
+					return err;
+			}
+		}
+
+		GEM_BUG_ON(drm_mm_node_allocated(&vma->node) &&
+			   eb_vma_misplaced(&eb->exec[i], vma, ev->flags));
+	}
+
+	if (!list_empty(&eb->unbound))
+		return eb_reserve(eb);
+
+	return 0;
+}
+
 static struct eb_vma *
 eb_get_vma(const struct i915_execbuffer *eb, unsigned long handle)
 {
@@ -903,7 +918,7 @@ eb_get_vma(const struct i915_execbuffer *eb, unsigned long handle)
 	}
 }
 
-static void eb_release_vmas(const struct i915_execbuffer *eb)
+static void eb_release_vmas(const struct i915_execbuffer *eb, bool final)
 {
 	const unsigned int count = eb->buffer_count;
 	unsigned int i;
@@ -915,12 +930,10 @@ static void eb_release_vmas(const struct i915_execbuffer *eb)
 		if (!vma)
 			break;
 
-		eb->vma[i].vma = NULL;
-
-		if (ev->flags & __EXEC_OBJECT_HAS_PIN)
-			__eb_unreserve_vma(vma, ev->flags);
+		eb_unreserve_vma(ev);
 
-		i915_vma_put(vma);
+		if (final)
+			i915_vma_put(vma);
 	}
 }
 
@@ -952,6 +965,7 @@ static void reloc_cache_init(struct reloc_cache *cache,
 	cache->needs_unfenced = INTEL_INFO(i915)->unfenced_needs_alignment;
 	cache->node.flags = 0;
 	cache->rq = NULL;
+	cache->pool = NULL;
 	cache->rq_size = 0;
 }
 
@@ -987,6 +1001,15 @@ static void reloc_gpu_flush(struct reloc_cache *cache)
 	intel_gt_chipset_flush(cache->rq->engine->gt);
 
 	i915_request_add(cache->rq);
+
+	/*
+	 * This is a bit nasty, normally we keep objects locked until the end
+	 * of execbuffer, but we already submit this, and have to unlock before
+	 * dropping the reference. Fortunately we can only hold 1 pool node at
+	 * a time, so this should be harmless.
+	 */
+	i915_gem_ww_unlock_single(cache->pool->obj);
+	intel_gt_buffer_pool_put(cache->pool);
 	cache->rq = NULL;
 }
 
@@ -1009,7 +1032,6 @@ static void reloc_cache_reset(struct reloc_cache *cache)
 
 		kunmap_atomic(vaddr);
 		i915_gem_object_finish_access(obj);
-		i915_gem_object_unlock(obj);
 	} else {
 		struct i915_ggtt *ggtt = cache_to_ggtt(cache);
 
@@ -1044,16 +1066,10 @@ static void *reloc_kmap(struct drm_i915_gem_object *obj,
 		unsigned int flushes;
 		int err;
 
-		err = i915_gem_object_lock_interruptible(obj, NULL);
+		err = i915_gem_object_prepare_write(obj, &flushes);
 		if (err)
 			return ERR_PTR(err);
 
-		err = i915_gem_object_prepare_write(obj, &flushes);
-		if (err) {
-			i915_gem_object_unlock(obj);
-			return ERR_PTR(err);
-		}
-
 		BUILD_BUG_ON(KMAP & CLFLUSH_FLAGS);
 		BUILD_BUG_ON((KMAP | CLFLUSH_FLAGS) & PAGE_MASK);
 
@@ -1091,9 +1107,7 @@ static void *reloc_iomap(struct drm_i915_gem_object *obj,
 		if (use_cpu_reloc(cache, obj))
 			return NULL;
 
-		i915_gem_object_lock(obj, NULL);
 		err = i915_gem_object_set_to_gtt_domain(obj, true);
-		i915_gem_object_unlock(obj);
 		if (err)
 			return ERR_PTR(err);
 
@@ -1182,7 +1196,7 @@ static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
 	struct drm_i915_gem_object *obj = vma->obj;
 	int err;
 
-	i915_vma_lock(vma);
+	assert_vma_held(vma);
 
 	if (obj->cache_dirty & ~obj->cache_coherent)
 		i915_gem_clflush_object(obj, 0);
@@ -1192,8 +1206,6 @@ static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
 	if (err == 0)
 		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
 
-	i915_vma_unlock(vma);
-
 	return err;
 }
 
@@ -1202,15 +1214,22 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 			     unsigned int len)
 {
 	struct reloc_cache *cache = &eb->reloc_cache;
-	struct intel_gt_buffer_pool_node *pool;
+	struct intel_gt_buffer_pool_node *pool = eb->reloc_pool;
 	struct i915_request *rq;
 	struct i915_vma *batch;
 	u32 *cmd;
 	int err;
 
-	pool = intel_gt_get_buffer_pool(eb->engine->gt, PAGE_SIZE);
-	if (IS_ERR(pool))
-		return PTR_ERR(pool);
+	if (!pool) {
+		pool = intel_gt_get_buffer_pool(eb->engine->gt, PAGE_SIZE);
+		if (IS_ERR(pool))
+			return PTR_ERR(pool);
+	}
+	eb->reloc_pool = NULL;
+
+	err = i915_gem_object_lock(pool->obj, &eb->ww);
+	if (err)
+		goto out_pool;
 
 	cmd = i915_gem_object_pin_map(pool->obj,
 				      cache->has_llc ?
@@ -1251,11 +1270,10 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 	if (err)
 		goto skip_request;
 
-	i915_vma_lock(batch);
+	assert_vma_held(batch);
 	err = i915_request_await_object(rq, batch->obj, false);
 	if (err == 0)
 		err = i915_vma_move_to_active(batch, rq, 0);
-	i915_vma_unlock(batch);
 	if (err)
 		goto skip_request;
 
@@ -1265,6 +1283,7 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 	cache->rq = rq;
 	cache->rq_cmd = cmd;
 	cache->rq_size = 0;
+	cache->pool = pool;
 
 	/* Return with batch mapping (cmd) still pinned */
 	goto out_pool;
@@ -1278,7 +1297,8 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 err_unmap:
 	i915_gem_object_unpin_map(pool->obj);
 out_pool:
-	intel_gt_buffer_pool_put(pool);
+	if (err)
+		eb->reloc_pool = pool;
 	return err;
 }
 
@@ -1345,7 +1365,9 @@ relocate_entry(struct i915_vma *vma,
 			len = 3;
 
 		batch = reloc_gpu(eb, vma, len);
-		if (IS_ERR(batch))
+		if (batch == ERR_PTR(-EDEADLK))
+			return (s64)-EDEADLK;
+		else if (IS_ERR(batch))
 			goto repeat;
 
 		addr = gen8_canonical_addr(vma->node.start + offset);
@@ -1748,6 +1770,10 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
 		goto out;
 	}
 
+	/* We may process another execbuffer during the unlock... */
+	eb_release_vmas(eb, false);
+	i915_gem_ww_ctx_fini(&eb->ww);
+
 	/*
 	 * We take 3 passes through the slowpatch.
 	 *
@@ -1770,15 +1796,29 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
 		cond_resched();
 		err = 0;
 	}
+
+	flush_workqueue(eb->i915->mm.userptr_wq);
+
+	i915_gem_ww_ctx_init(&eb->ww, true);
 	if (err)
 		goto out;
 
+	/* reacquire the objects */
+repeat_validate:
+	err = eb_validate_vmas(eb);
+	if (err)
+		goto err;
+
+	GEM_BUG_ON(!eb->batch);
+
 	list_for_each_entry(ev, &eb->relocs, reloc_link) {
 		if (!have_copy) {
 			pagefault_disable();
 			err = eb_relocate_vma(eb, ev);
 			pagefault_enable();
-			if (err)
+			if (err == -EDEADLK)
+				goto err;
+			else if (err)
 				goto repeat;
 		} else {
 			err = eb_relocate_vma_slow(eb, ev);
@@ -1800,6 +1840,13 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
 	 */
 
 err:
+	if (err == -EDEADLK) {
+		eb_release_vmas(eb, false);
+		err = i915_gem_ww_ctx_backoff(&eb->ww);
+		if (!err)
+			goto repeat_validate;
+	}
+
 	if (err == -EAGAIN)
 		goto repeat;
 
@@ -1828,61 +1875,59 @@ static int eb_relocate_parse(struct i915_execbuffer *eb)
 {
 	int err;
 
-	err = eb_lookup_vmas(eb);
-	if (err)
-		return err;
-
-	if (!list_empty(&eb->unbound)) {
-		err = eb_reserve(eb);
-		if (err)
-			return err;
-	}
+retry:
+	err = eb_validate_vmas(eb);
+	if (err == -EAGAIN)
+		goto slow;
+	else if (err)
+		goto err;
 
 	/* The objects are in their final locations, apply the relocations. */
 	if (eb->args->flags & __EXEC_HAS_RELOC) {
 		struct eb_vma *ev;
 
 		list_for_each_entry(ev, &eb->relocs, reloc_link) {
-			if (eb_relocate_vma(eb, ev))
-				return eb_relocate_parse_slow(eb);
+			err = eb_relocate_vma(eb, ev);
+			if (err == -EDEADLK)
+				goto err;
+			else if (err)
+				goto slow;
 		}
 	}
 
-	return eb_parse(eb);
+	err = eb_parse(eb);
+
+err:
+	if (err == -EDEADLK) {
+		eb_release_vmas(eb, false);
+		err = i915_gem_ww_ctx_backoff(&eb->ww);
+		if (!err)
+			goto retry;
+	}
+
+	return err;
+
+slow:
+	err = eb_relocate_parse_slow(eb);
+	if (err)
+		/*
+		 * If the user expects the execobject.offset and
+		 * reloc.presumed_offset to be an exact match,
+		 * as for using NO_RELOC, then we cannot update
+		 * the execobject.offset until we have completed
+		 * relocation.
+		 */
+		eb->args->flags &= ~__EXEC_HAS_RELOC;
+
+	return err;
 }
 
 static int eb_move_to_gpu(struct i915_execbuffer *eb)
 {
 	const unsigned int count = eb->buffer_count;
-	struct ww_acquire_ctx acquire;
-	unsigned int i;
+	unsigned int i = count;
 	int err = 0;
 
-	ww_acquire_init(&acquire, &reservation_ww_class);
-
-	for (i = 0; i < count; i++) {
-		struct eb_vma *ev = &eb->vma[i];
-		struct i915_vma *vma = ev->vma;
-
-		err = ww_mutex_lock_interruptible(&vma->resv->lock, &acquire);
-		if (err == -EDEADLK) {
-			GEM_BUG_ON(i == 0);
-			do {
-				int j = i - 1;
-
-				ww_mutex_unlock(&eb->vma[j].vma->resv->lock);
-
-				swap(eb->vma[i],  eb->vma[j]);
-			} while (--i);
-
-			err = ww_mutex_lock_slow_interruptible(&vma->resv->lock,
-							       &acquire);
-		}
-		if (err)
-			break;
-	}
-	ww_acquire_done(&acquire);
-
 	while (i--) {
 		struct eb_vma *ev = &eb->vma[i];
 		struct i915_vma *vma = ev->vma;
@@ -1926,21 +1971,11 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
 
 		if (err == 0)
 			err = i915_vma_move_to_active(vma, eb->request, flags);
-
-		i915_vma_unlock(vma);
-
-		__eb_unreserve_vma(vma, flags);
-		i915_vma_put(vma);
-
-		ev->vma = NULL;
 	}
-	ww_acquire_fini(&acquire);
 
 	if (unlikely(err))
 		goto err_skip;
 
-	eb->exec = NULL;
-
 	/* Unconditionally flush any chipset caches (for streaming writes). */
 	intel_gt_chipset_flush(eb->engine->gt);
 	return 0;
@@ -2090,10 +2125,6 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 	pw->shadow = shadow;
 	pw->trampoline = trampoline;
 
-	err = dma_resv_lock_interruptible(pw->batch->resv, NULL);
-	if (err)
-		goto err_trampoline;
-
 	err = dma_resv_reserve_shared(pw->batch->resv, 1);
 	if (err)
 		goto err_batch_unlock;
@@ -2108,19 +2139,14 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 	/* Keep the batch alive and unwritten as we parse */
 	dma_resv_add_shared_fence(pw->batch->resv, &pw->base.dma);
 
-	dma_resv_unlock(pw->batch->resv);
-
 	/* Force execution to wait for completion of the parser */
-	dma_resv_lock(shadow->resv, NULL);
 	dma_resv_add_excl_fence(shadow->resv, &pw->base.dma);
-	dma_resv_unlock(shadow->resv);
 
 	dma_fence_work_commit_imm(&pw->base);
 	return 0;
 
 err_batch_unlock:
 	dma_resv_unlock(pw->batch->resv);
-err_trampoline:
 	if (trampoline)
 		i915_active_release(&trampoline->active);
 err_shadow:
@@ -2135,7 +2161,7 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 static int eb_parse(struct i915_execbuffer *eb)
 {
 	struct drm_i915_private *i915 = eb->i915;
-	struct intel_gt_buffer_pool_node *pool;
+	struct intel_gt_buffer_pool_node *pool = eb->batch_pool;
 	struct i915_vma *shadow, *trampoline;
 	unsigned int len;
 	int err;
@@ -2158,9 +2184,16 @@ static int eb_parse(struct i915_execbuffer *eb)
 		len += I915_CMD_PARSER_TRAMPOLINE_SIZE;
 	}
 
-	pool = intel_gt_get_buffer_pool(eb->engine->gt, len);
-	if (IS_ERR(pool))
-		return PTR_ERR(pool);
+	if (!pool) {
+		pool = intel_gt_get_buffer_pool(eb->engine->gt, len);
+		if (IS_ERR(pool))
+			return PTR_ERR(pool);
+		eb->batch_pool = pool;
+	}
+
+	err = i915_gem_object_lock(pool->obj, &eb->ww);
+	if (err)
+		goto err;
 
 	shadow = shadow_batch_pin(pool->obj, eb->context->vm, PIN_USER);
 	if (IS_ERR(shadow)) {
@@ -2196,7 +2229,6 @@ static int eb_parse(struct i915_execbuffer *eb)
 	eb->trampoline = trampoline;
 	eb->batch_start_offset = 0;
 
-	shadow->private = pool;
 	return 0;
 
 err_trampoline:
@@ -2205,7 +2237,6 @@ static int eb_parse(struct i915_execbuffer *eb)
 err_shadow:
 	i915_vma_unpin(shadow);
 err:
-	intel_gt_buffer_pool_put(pool);
 	return err;
 }
 
@@ -2717,6 +2748,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	eb.exec = exec;
 	eb.vma = (struct eb_vma *)(exec + args->buffer_count + 1);
 	eb.vma[0].vma = NULL;
+	eb.reloc_pool = eb.batch_pool = NULL;
 
 	eb.invalid_flags = __EXEC_OBJECT_UNKNOWN_FLAGS;
 	reloc_cache_init(&eb.reloc_cache, eb.i915);
@@ -2784,6 +2816,14 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	if (unlikely(err))
 		goto err_context;
 
+	err = eb_lookup_vmas(&eb);
+	if (err) {
+		eb_release_vmas(&eb, true);
+		goto err_engine;
+	}
+
+	i915_gem_ww_ctx_init(&eb.ww, true);
+
 	err = eb_relocate_parse(&eb);
 	if (err) {
 		/*
@@ -2797,6 +2837,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		goto err_vma;
 	}
 
+	ww_acquire_done(&eb.ww.ctx);
+
 	/*
 	 * snb/ivb/vlv conflate the "batch in ppgtt" bit with the "non-secure
 	 * batch" bit. Hence we need to pin secure batches into the global gtt.
@@ -2817,7 +2859,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		vma = i915_gem_object_ggtt_pin(eb.batch->vma->obj, NULL, 0, 0, 0);
 		if (IS_ERR(vma)) {
 			err = PTR_ERR(vma);
-			goto err_parse;
+			goto err_vma;
 		}
 
 		batch = vma;
@@ -2870,8 +2912,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	 * to explicitly hold another reference here.
 	 */
 	eb.request->batch = batch;
-	if (batch->private)
-		intel_gt_buffer_pool_mark_active(batch->private, eb.request);
+	if (eb.batch_pool)
+		intel_gt_buffer_pool_mark_active(eb.batch_pool, eb.request);
 
 	trace_i915_request_queue(eb.request, eb.batch_flags);
 	err = eb_submit(&eb, batch);
@@ -2898,14 +2940,18 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 err_batch_unpin:
 	if (eb.batch_flags & I915_DISPATCH_SECURE)
 		i915_vma_unpin(batch);
-err_parse:
-	if (batch->private)
-		intel_gt_buffer_pool_put(batch->private);
 err_vma:
-	if (eb.exec)
-		eb_release_vmas(&eb);
+	eb_release_vmas(&eb, true);
 	if (eb.trampoline)
 		i915_vma_unpin(eb.trampoline);
+	WARN_ON(err == -EDEADLK);
+	i915_gem_ww_ctx_fini(&eb.ww);
+
+	if (eb.batch_pool)
+		intel_gt_buffer_pool_put(eb.batch_pool);
+	if (eb.reloc_pool)
+		intel_gt_buffer_pool_put(eb.reloc_pool);
+err_engine:
 	eb_unpin_engine(&eb);
 err_context:
 	i915_gem_context_put(eb.gem_context);
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 6846241f9079..470a89761fd7 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1360,6 +1360,12 @@ static void i915_gem_ww_ctx_unlock_all(struct i915_gem_ww_ctx *ww)
 	}
 }
 
+void i915_gem_ww_unlock_single(struct drm_i915_gem_object *obj)
+{
+	list_del(&obj->obj_link);
+	i915_gem_object_unlock(obj);
+}
+
 void i915_gem_ww_ctx_fini(struct i915_gem_ww_ctx *ww)
 {
 	i915_gem_ww_ctx_unlock_all(ww);
diff --git a/drivers/gpu/drm/i915/i915_gem.h b/drivers/gpu/drm/i915/i915_gem.h
index 988755dbf4be..f6bef9894111 100644
--- a/drivers/gpu/drm/i915/i915_gem.h
+++ b/drivers/gpu/drm/i915/i915_gem.h
@@ -126,5 +126,6 @@ struct i915_gem_ww_ctx {
 void i915_gem_ww_ctx_init(struct i915_gem_ww_ctx *ctx, bool intr);
 void i915_gem_ww_ctx_fini(struct i915_gem_ww_ctx *ctx);
 int __must_check i915_gem_ww_ctx_backoff(struct i915_gem_ww_ctx *ctx);
+void i915_gem_ww_unlock_single(struct drm_i915_gem_object *obj);
 
 #endif /* __I915_GEM_H__ */
-- 
2.26.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
