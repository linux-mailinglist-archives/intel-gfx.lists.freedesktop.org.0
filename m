Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5991CDD40
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 16:30:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3B406E4A2;
	Mon, 11 May 2020 14:30:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6588F6E2B4
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 14:29:48 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 May 2020 16:29:22 +0200
Message-Id: <20200511142938.1041006-7-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200511142938.1041006-1-maarten.lankhorst@linux.intel.com>
References: <20200511142938.1041006-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/23] drm/i915: Use per object locking in
 execbuf, v10.
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
Changes since v8:
- Properly clear variables, to make -EDEADLK handling not BUG.
Change since v9:
- Fix unpinning fence on pnv and below.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 393 ++++++++++--------
 .../i915/gem/selftests/i915_gem_execbuffer.c  |   2 +-
 drivers/gpu/drm/i915/i915_gem.c               |   6 +
 drivers/gpu/drm/i915/i915_gem.h               |   1 +
 4 files changed, 239 insertions(+), 163 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 9f3063d8956d..3d99bde4530a 100644
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
@@ -269,14 +271,18 @@ struct i915_execbuffer {
 		struct i915_vma *rq_vma;
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
@@ -443,23 +449,16 @@ eb_pin_vma(struct i915_execbuffer *eb,
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
+	if (unlikely(ev->flags & __EXEC_OBJECT_HAS_FENCE))
+		__i915_vma_unpin_fence(ev->vma);
+
+	__i915_vma_unpin(ev->vma);
 	ev->flags &= ~__EXEC_OBJECT_RESERVED;
 }
 
@@ -554,16 +553,6 @@ eb_add_vma(struct i915_execbuffer *eb,
 
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
@@ -648,10 +637,6 @@ static int eb_reserve(struct i915_execbuffer *eb)
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
@@ -659,8 +644,8 @@ static int eb_reserve(struct i915_execbuffer *eb)
 			if (err)
 				break;
 		}
-		if (!(err == -ENOSPC || err == -EAGAIN))
-			break;
+		if (err != -ENOSPC)
+			return err;
 
 		/* Resort *all* the objects into priority order */
 		INIT_LIST_HEAD(&eb->unbound);
@@ -690,13 +675,6 @@ static int eb_reserve(struct i915_execbuffer *eb)
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
@@ -707,20 +685,15 @@ static int eb_reserve(struct i915_execbuffer *eb)
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
@@ -848,7 +821,6 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
 	int err = 0;
 
 	INIT_LIST_HEAD(&eb->relocs);
-	INIT_LIST_HEAD(&eb->unbound);
 
 	for (i = 0; i < eb->buffer_count; i++) {
 		struct i915_vma *vma;
@@ -891,6 +863,48 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
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
@@ -911,7 +925,7 @@ eb_get_vma(const struct i915_execbuffer *eb, unsigned long handle)
 	}
 }
 
-static void eb_release_vmas(const struct i915_execbuffer *eb)
+static void eb_release_vmas(const struct i915_execbuffer *eb, bool final)
 {
 	const unsigned int count = eb->buffer_count;
 	unsigned int i;
@@ -923,12 +937,10 @@ static void eb_release_vmas(const struct i915_execbuffer *eb)
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
 
@@ -947,6 +959,15 @@ relocation_target(const struct drm_i915_gem_relocation_entry *reloc,
 	return gen8_canonical_addr((int)reloc->delta + target->node.start);
 }
 
+static void reloc_cache_clear(struct reloc_cache *cache)
+{
+	cache->rq = NULL;
+	cache->rq_cmd = NULL;
+	cache->pool = NULL;
+	cache->rq_size = 0;
+	cache->target = NULL;
+}
+
 static void reloc_cache_init(struct reloc_cache *cache,
 			     struct drm_i915_private *i915)
 {
@@ -959,8 +980,7 @@ static void reloc_cache_init(struct reloc_cache *cache,
 	cache->has_fence = cache->gen < 4;
 	cache->needs_unfenced = INTEL_INFO(i915)->unfenced_needs_alignment;
 	cache->node.flags = 0;
-	cache->rq = NULL;
-	cache->target = NULL;
+	reloc_cache_clear(cache);
 }
 
 static inline void *unmask_page(unsigned long p)
@@ -984,17 +1004,27 @@ static inline struct i915_ggtt *cache_to_ggtt(struct reloc_cache *cache)
 
 #define RELOC_TAIL 4
 
-static int reloc_gpu_chain(struct reloc_cache *cache)
+static int reloc_gpu_chain(struct i915_execbuffer *eb, struct reloc_cache *cache)
 {
-	struct intel_gt_buffer_pool_node *pool;
+	struct intel_gt_buffer_pool_node *pool = eb->reloc_pool;
 	struct i915_request *rq = cache->rq;
 	struct i915_vma *batch;
 	u32 *cmd;
 	int err;
 
-	pool = intel_gt_get_buffer_pool(rq->engine->gt, PAGE_SIZE);
-	if (IS_ERR(pool))
-		return PTR_ERR(pool);
+	if (!pool) {
+		pool = intel_gt_get_buffer_pool(rq->engine->gt, PAGE_SIZE);
+
+		if (IS_ERR(pool))
+			return PTR_ERR(pool);
+	}
+	eb->reloc_pool = pool;
+
+	err = i915_gem_object_lock_interruptible(pool->obj, &eb->ww);
+	if (err == -EDEADLK)
+		return err;
+	if (err)
+		goto out_pool;
 
 	batch = i915_vma_instance(pool->obj, rq->context->vm, NULL);
 	if (IS_ERR(batch)) {
@@ -1023,11 +1053,9 @@ static int reloc_gpu_chain(struct reloc_cache *cache)
 
 	err = intel_gt_buffer_pool_mark_active(pool, rq);
 	if (err == 0) {
-		i915_vma_lock(batch);
 		err = i915_request_await_object(rq, batch->obj, false);
 		if (err == 0)
 			err = i915_vma_move_to_active(batch, rq, 0);
-		i915_vma_unlock(batch);
 	}
 	i915_vma_unpin(batch);
 	if (err)
@@ -1046,9 +1074,9 @@ static int reloc_gpu_chain(struct reloc_cache *cache)
 	cache->rq_cmd = cmd;
 	cache->rq_size = 0;
 	cache->rq_vma = batch;
+	cache->pool = pool;
 
 out_pool:
-	intel_gt_buffer_pool_put(pool);
 	return err;
 }
 
@@ -1057,7 +1085,7 @@ static unsigned int reloc_bb_flags(const struct reloc_cache *cache)
 	return cache->gen > 5 ? 0 : I915_DISPATCH_SECURE;
 }
 
-static int reloc_gpu_flush(struct reloc_cache *cache)
+static int reloc_gpu_flush(struct i915_execbuffer *eb, struct reloc_cache *cache)
 {
 	struct i915_request *rq;
 	int err;
@@ -1091,7 +1119,20 @@ static int reloc_gpu_flush(struct reloc_cache *cache)
 	intel_gt_chipset_flush(rq->engine->gt);
 	i915_request_add(rq);
 
+	/*
+	 * This is a bit nasty, normally we keep objects locked until the end
+	 * of execbuffer, but we already submit this, and have to unlock before
+	 * dropping the reference. Fortunately we can only hold 1 pool node at
+	 * a time, so this should be harmless.
+	 */
+	i915_gem_ww_unlock_single(cache->pool->obj);
+	intel_gt_buffer_pool_put(cache->pool);
+	reloc_cache_clear(cache);
+	cache->pool = NULL;
+
+	eb->reloc_pool = NULL;
 	return err;
+
 }
 
 static void reloc_cache_reset(struct reloc_cache *cache)
@@ -1110,7 +1151,6 @@ static void reloc_cache_reset(struct reloc_cache *cache)
 
 		kunmap_atomic(vaddr);
 		i915_gem_object_finish_access(obj);
-		i915_gem_object_unlock(obj);
 	} else {
 		struct i915_ggtt *ggtt = cache_to_ggtt(cache);
 
@@ -1145,15 +1185,9 @@ static void *reloc_kmap(struct drm_i915_gem_object *obj,
 		unsigned int flushes;
 		int err;
 
-		err = i915_gem_object_lock_interruptible(obj, NULL);
-		if (err)
-			return ERR_PTR(err);
-
 		err = i915_gem_object_prepare_write(obj, &flushes);
-		if (err) {
-			i915_gem_object_unlock(obj);
+		if (err)
 			return ERR_PTR(err);
-		}
 
 		BUILD_BUG_ON(KMAP & CLFLUSH_FLAGS);
 		BUILD_BUG_ON((KMAP | CLFLUSH_FLAGS) & PAGE_MASK);
@@ -1192,9 +1226,7 @@ static void *reloc_iomap(struct drm_i915_gem_object *obj,
 		if (use_cpu_reloc(cache, obj))
 			return NULL;
 
-		i915_gem_object_lock(obj, NULL);
 		err = i915_gem_object_set_to_gtt_domain(obj, true);
-		i915_gem_object_unlock(obj);
 		if (err)
 			return ERR_PTR(err);
 
@@ -1283,7 +1315,7 @@ static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
 	struct drm_i915_gem_object *obj = vma->obj;
 	int err;
 
-	i915_vma_lock(vma);
+	assert_vma_held(vma);
 
 	if (obj->cache_dirty & ~obj->cache_coherent)
 		i915_gem_clflush_object(obj, 0);
@@ -1293,8 +1325,6 @@ static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
 	if (err == 0)
 		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
 
-	i915_vma_unlock(vma);
-
 	return err;
 }
 
@@ -1303,15 +1333,22 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 			     unsigned int len)
 {
 	struct reloc_cache *cache = &eb->reloc_cache;
-	struct intel_gt_buffer_pool_node *pool;
+	struct intel_gt_buffer_pool_node *pool = eb->reloc_pool;
 	struct i915_request *rq;
 	struct i915_vma *batch;
 	u32 *cmd;
 	int err;
 
-	pool = intel_gt_get_buffer_pool(engine->gt, PAGE_SIZE);
-	if (IS_ERR(pool))
-		return PTR_ERR(pool);
+	if (!pool) {
+		pool = intel_gt_get_buffer_pool(engine->gt, PAGE_SIZE);
+		if (IS_ERR(pool))
+			return PTR_ERR(pool);
+	}
+	eb->reloc_pool = NULL;
+
+	err = i915_gem_object_lock(pool->obj, &eb->ww);
+	if (err)
+		goto err_pool;
 
 	cmd = i915_gem_object_pin_map(pool->obj,
 				      cache->has_llc ?
@@ -1319,7 +1356,7 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 				      I915_MAP_FORCE_WC);
 	if (IS_ERR(cmd)) {
 		err = PTR_ERR(cmd);
-		goto out_pool;
+		goto err_pool;
 	}
 
 	batch = i915_vma_instance(pool->obj, eb->context->vm, NULL);
@@ -1358,11 +1395,11 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 	if (err)
 		goto err_request;
 
-	i915_vma_lock(batch);
+
+	assert_vma_held(batch);
 	err = i915_request_await_object(rq, batch->obj, false);
 	if (err == 0)
 		err = i915_vma_move_to_active(batch, rq, 0);
-	i915_vma_unlock(batch);
 	if (err)
 		goto skip_request;
 
@@ -1373,9 +1410,10 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 	cache->rq_cmd = cmd;
 	cache->rq_size = 0;
 	cache->rq_vma = batch;
+	cache->pool = pool;
 
 	/* Return with batch mapping (cmd) still pinned */
-	goto out_pool;
+	return 0;
 
 skip_request:
 	i915_request_set_error_once(rq, err);
@@ -1385,8 +1423,8 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 	i915_vma_unpin(batch);
 err_unmap:
 	i915_gem_object_unpin_map(pool->obj);
-out_pool:
-	intel_gt_buffer_pool_put(pool);
+err_pool:
+	eb->reloc_pool = pool;
 	return err;
 }
 
@@ -1429,7 +1467,7 @@ static u32 *reloc_gpu(struct i915_execbuffer *eb,
 
 	if (unlikely(cache->rq_size + len >
 		     PAGE_SIZE / sizeof(u32) - RELOC_TAIL)) {
-		err = reloc_gpu_chain(cache);
+		err = reloc_gpu_chain(eb, cache);
 		if (unlikely(err)) {
 			i915_request_set_error_once(cache->rq, err);
 			return ERR_PTR(err);
@@ -1468,7 +1506,7 @@ static unsigned long vma_phys_addr(struct i915_vma *vma, u32 offset)
 	return addr + offset_in_page(offset);
 }
 
-static bool __reloc_entry_gpu(struct i915_execbuffer *eb,
+static int __reloc_entry_gpu(struct i915_execbuffer *eb,
 			      struct i915_vma *vma,
 			      u64 offset,
 			      u64 target_addr)
@@ -1486,7 +1524,9 @@ static bool __reloc_entry_gpu(struct i915_execbuffer *eb,
 		len = 3;
 
 	batch = reloc_gpu(eb, vma, len);
-	if (IS_ERR(batch))
+	if (batch == ERR_PTR(-EDEADLK))
+		return (s64)-EDEADLK;
+	else if (IS_ERR(batch))
 		return false;
 
 	addr = gen8_canonical_addr(vma->node.start + offset);
@@ -1539,7 +1579,7 @@ static bool __reloc_entry_gpu(struct i915_execbuffer *eb,
 	return true;
 }
 
-static bool reloc_entry_gpu(struct i915_execbuffer *eb,
+static int reloc_entry_gpu(struct i915_execbuffer *eb,
 			    struct i915_vma *vma,
 			    u64 offset,
 			    u64 target_addr)
@@ -1561,8 +1601,12 @@ relocate_entry(struct i915_vma *vma,
 {
 	u64 target_addr = relocation_target(reloc, target);
 	u64 offset = reloc->offset;
+	int reloc_gpu = reloc_entry_gpu(eb, vma, offset, target_addr);
 
-	if (!reloc_entry_gpu(eb, vma, offset, target_addr)) {
+	if (reloc_gpu < 0)
+		return reloc_gpu;
+	
+	if (!reloc_gpu) {
 		bool wide = eb->reloc_cache.use_64bit_reloc;
 		void *vaddr;
 
@@ -1929,6 +1973,10 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
 		goto out;
 	}
 
+	/* We may process another execbuffer during the unlock... */
+	eb_release_vmas(eb, false);
+	i915_gem_ww_ctx_fini(&eb->ww);
+
 	/*
 	 * We take 3 passes through the slowpatch.
 	 *
@@ -1951,9 +1999,21 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
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
@@ -1968,7 +2028,10 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
 		}
 	}
 
-	flush = reloc_gpu_flush(&eb->reloc_cache);
+	flush = reloc_gpu_flush(eb, &eb->reloc_cache);
+	if (err == -EDEADLK)
+		goto err;
+
 	if (err && !have_copy)
 		goto repeat;
 
@@ -1991,6 +2054,13 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
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
 
@@ -2019,15 +2089,12 @@ static int eb_relocate_parse(struct i915_execbuffer *eb)
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
@@ -2040,48 +2107,49 @@ static int eb_relocate_parse(struct i915_execbuffer *eb)
 				break;
 		}
 
-		flush = reloc_gpu_flush(&eb->reloc_cache);
-		if (!err)
-			err = flush;
+		flush = reloc_gpu_flush(eb, &eb->reloc_cache);
+		if (err == -EDEADLK)
+			goto err;
+		else if (err)
+			goto slow;
 		else
-			return eb_relocate_parse_slow(eb);
+			err = flush;
+	}
+
+	if (!err)
+		err = eb_parse(eb);
+
+err:
+	if (err == -EDEADLK) {
+		eb_release_vmas(eb, false);
+		err = i915_gem_ww_ctx_backoff(&eb->ww);
+		if (!err)
+			goto retry;
 	}
 
-	return eb_parse(eb);
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
@@ -2125,21 +2193,11 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
 
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
@@ -2289,10 +2347,6 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 	pw->shadow = shadow;
 	pw->trampoline = trampoline;
 
-	err = dma_resv_lock_interruptible(pw->batch->resv, NULL);
-	if (err)
-		goto err_trampoline;
-
 	err = dma_resv_reserve_shared(pw->batch->resv, 1);
 	if (err)
 		goto err_batch_unlock;
@@ -2307,19 +2361,14 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
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
@@ -2334,7 +2383,7 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 static int eb_parse(struct i915_execbuffer *eb)
 {
 	struct drm_i915_private *i915 = eb->i915;
-	struct intel_gt_buffer_pool_node *pool;
+	struct intel_gt_buffer_pool_node *pool = eb->batch_pool;
 	struct i915_vma *shadow, *trampoline;
 	unsigned int len;
 	int err;
@@ -2357,9 +2406,16 @@ static int eb_parse(struct i915_execbuffer *eb)
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
@@ -2395,7 +2451,6 @@ static int eb_parse(struct i915_execbuffer *eb)
 	eb->trampoline = trampoline;
 	eb->batch_start_offset = 0;
 
-	shadow->private = pool;
 	return 0;
 
 err_trampoline:
@@ -2404,7 +2459,6 @@ static int eb_parse(struct i915_execbuffer *eb)
 err_shadow:
 	i915_vma_unpin(shadow);
 err:
-	intel_gt_buffer_pool_put(pool);
 	return err;
 }
 
@@ -2907,6 +2961,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	eb.exec = exec;
 	eb.vma = (struct eb_vma *)(exec + args->buffer_count + 1);
 	eb.vma[0].vma = NULL;
+	eb.reloc_pool = eb.batch_pool = NULL;
 
 	eb.invalid_flags = __EXEC_OBJECT_UNKNOWN_FLAGS;
 	reloc_cache_init(&eb.reloc_cache, eb.i915);
@@ -2974,6 +3029,14 @@ i915_gem_do_execbuffer(struct drm_device *dev,
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
@@ -2987,6 +3050,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		goto err_vma;
 	}
 
+	ww_acquire_done(&eb.ww.ctx);
+
 	/*
 	 * snb/ivb/vlv conflate the "batch in ppgtt" bit with the "non-secure
 	 * batch" bit. Hence we need to pin secure batches into the global gtt.
@@ -3007,7 +3072,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		vma = i915_gem_object_ggtt_pin(eb.batch->vma->obj, NULL, 0, 0, 0);
 		if (IS_ERR(vma)) {
 			err = PTR_ERR(vma);
-			goto err_parse;
+			goto err_vma;
 		}
 
 		batch = vma;
@@ -3060,8 +3125,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	 * to explicitly hold another reference here.
 	 */
 	eb.request->batch = batch;
-	if (batch->private)
-		intel_gt_buffer_pool_mark_active(batch->private, eb.request);
+	if (eb.batch_pool)
+		intel_gt_buffer_pool_mark_active(eb.batch_pool, eb.request);
 
 	trace_i915_request_queue(eb.request, eb.batch_flags);
 	err = eb_submit(&eb, batch);
@@ -3088,14 +3153,18 @@ i915_gem_do_execbuffer(struct drm_device *dev,
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
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
index a49016f8ee0d..5ecf0afc3e71 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
@@ -69,7 +69,7 @@ static int __igt_gpu_reloc(struct i915_execbuffer *eb,
 
 	GEM_BUG_ON(!eb->reloc_cache.rq);
 	rq = i915_request_get(eb->reloc_cache.rq);
-	err = reloc_gpu_flush(&eb->reloc_cache);
+	err = reloc_gpu_flush(eb, &eb->reloc_cache);
 	if (err)
 		goto put_rq;
 	GEM_BUG_ON(eb->reloc_cache.rq);
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
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
