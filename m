Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E24D621EFB5
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 13:46:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7CD66E95F;
	Tue, 14 Jul 2020 11:46:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91C226E950
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 11:45:21 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jul 2020 13:45:01 +0200
Message-Id: <20200714114516.3073222-8-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200714114516.3073222-1-maarten.lankhorst@linux.intel.com>
References: <20200714114516.3073222-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/23] drm/i915: Use per object locking in
 execbuf, v12.
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
Changes since v10:
- Make relocation gpu chaining working again.
Changes since v11:
- Remove relocation chaining, pain to make it work.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 364 +++++++++++-------
 .../i915/gem/selftests/i915_gem_execbuffer.c  |  62 +--
 drivers/gpu/drm/i915/i915_gem.c               |   6 +
 drivers/gpu/drm/i915/i915_gem.h               |   1 +
 4 files changed, 262 insertions(+), 171 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 06a5b086fc78..900ccd122c4a 100644
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
@@ -441,23 +447,16 @@ eb_pin_vma(struct i915_execbuffer *eb,
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
 
@@ -552,16 +551,6 @@ eb_add_vma(struct i915_execbuffer *eb,
 
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
@@ -646,10 +635,6 @@ static int eb_reserve(struct i915_execbuffer *eb)
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
@@ -658,7 +643,7 @@ static int eb_reserve(struct i915_execbuffer *eb)
 				break;
 		}
 		if (err != -ENOSPC)
-			break;
+			return err;
 
 		/* Resort *all* the objects into priority order */
 		INIT_LIST_HEAD(&eb->unbound);
@@ -698,20 +683,15 @@ static int eb_reserve(struct i915_execbuffer *eb)
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
@@ -840,7 +820,6 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
 	int err = 0;
 
 	INIT_LIST_HEAD(&eb->relocs);
-	INIT_LIST_HEAD(&eb->unbound);
 
 	for (i = 0; i < eb->buffer_count; i++) {
 		struct i915_vma *vma;
@@ -883,6 +862,48 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
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
@@ -903,7 +924,7 @@ eb_get_vma(const struct i915_execbuffer *eb, unsigned long handle)
 	}
 }
 
-static void eb_release_vmas(const struct i915_execbuffer *eb)
+static void eb_release_vmas(const struct i915_execbuffer *eb, bool final)
 {
 	const unsigned int count = eb->buffer_count;
 	unsigned int i;
@@ -915,12 +936,10 @@ static void eb_release_vmas(const struct i915_execbuffer *eb)
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
 
@@ -939,6 +958,14 @@ relocation_target(const struct drm_i915_gem_relocation_entry *reloc,
 	return gen8_canonical_addr((int)reloc->delta + target->node.start);
 }
 
+static void reloc_cache_clear(struct reloc_cache *cache)
+{
+	cache->rq = NULL;
+	cache->rq_cmd = NULL;
+	cache->pool = NULL;
+	cache->rq_size = 0;
+}
+
 static void reloc_cache_init(struct reloc_cache *cache,
 			     struct drm_i915_private *i915)
 {
@@ -951,8 +978,7 @@ static void reloc_cache_init(struct reloc_cache *cache,
 	cache->has_fence = cache->gen < 4;
 	cache->needs_unfenced = INTEL_INFO(i915)->unfenced_needs_alignment;
 	cache->node.flags = 0;
-	cache->rq = NULL;
-	cache->rq_size = 0;
+	reloc_cache_clear(cache);
 }
 
 static inline void *unmask_page(unsigned long p)
@@ -974,7 +1000,23 @@ static inline struct i915_ggtt *cache_to_ggtt(struct reloc_cache *cache)
 	return &i915->ggtt;
 }
 
-static void reloc_gpu_flush(struct reloc_cache *cache)
+static void reloc_cache_put_pool(struct i915_execbuffer *eb, struct reloc_cache *cache)
+{
+	if (!cache->pool)
+		return;
+
+	/*
+	 * This is a bit nasty, normally we keep objects locked until the end
+	 * of execbuffer, but we already submit this, and have to unlock before
+	 * dropping the reference. Fortunately we can only hold 1 pool node at
+	 * a time, so this should be harmless.
+	 */
+	i915_gem_ww_unlock_single(cache->pool->obj);
+	intel_gt_buffer_pool_put(cache->pool);
+	cache->pool = NULL;
+}
+
+static void reloc_gpu_flush(struct i915_execbuffer *eb, struct reloc_cache *cache)
 {
 	struct drm_i915_gem_object *obj = cache->rq->batch->obj;
 
@@ -987,15 +1029,18 @@ static void reloc_gpu_flush(struct reloc_cache *cache)
 	intel_gt_chipset_flush(cache->rq->engine->gt);
 
 	i915_request_add(cache->rq);
-	cache->rq = NULL;
+	reloc_cache_put_pool(eb, cache);
+	reloc_cache_clear(cache);
+
+	eb->reloc_pool = NULL;
 }
 
-static void reloc_cache_reset(struct reloc_cache *cache)
+static void reloc_cache_reset(struct reloc_cache *cache, struct i915_execbuffer *eb)
 {
 	void *vaddr;
 
 	if (cache->rq)
-		reloc_gpu_flush(cache);
+		reloc_gpu_flush(eb, cache);
 
 	if (!cache->vaddr)
 		return;
@@ -1009,7 +1054,6 @@ static void reloc_cache_reset(struct reloc_cache *cache)
 
 		kunmap_atomic(vaddr);
 		i915_gem_object_finish_access(obj);
-		i915_gem_object_unlock(obj);
 	} else {
 		struct i915_ggtt *ggtt = cache_to_ggtt(cache);
 
@@ -1045,15 +1089,9 @@ static void *reloc_kmap(struct drm_i915_gem_object *obj,
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
@@ -1096,9 +1134,7 @@ static void *reloc_iomap(struct drm_i915_gem_object *obj,
 		if (use_cpu_reloc(cache, obj))
 			return NULL;
 
-		i915_gem_object_lock(obj, NULL);
 		err = i915_gem_object_set_to_gtt_domain(obj, true);
-		i915_gem_object_unlock(obj);
 		if (err)
 			return ERR_PTR(err);
 
@@ -1187,7 +1223,7 @@ static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
 	struct drm_i915_gem_object *obj = vma->obj;
 	int err;
 
-	i915_vma_lock(vma);
+	assert_vma_held(vma);
 
 	if (obj->cache_dirty & ~obj->cache_coherent)
 		i915_gem_clflush_object(obj, 0);
@@ -1197,8 +1233,6 @@ static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
 	if (err == 0)
 		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
 
-	i915_vma_unlock(vma);
-
 	return err;
 }
 
@@ -1208,15 +1242,22 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
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
@@ -1224,7 +1265,7 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 				      I915_MAP_FORCE_WC);
 	if (IS_ERR(cmd)) {
 		err = PTR_ERR(cmd);
-		goto out_pool;
+		goto err_pool;
 	}
 
 	batch = i915_vma_instance(pool->obj, vma->vm, NULL);
@@ -1273,11 +1314,10 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
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
 
@@ -1287,9 +1327,10 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 	cache->rq = rq;
 	cache->rq_cmd = cmd;
 	cache->rq_size = 0;
+	cache->pool = pool;
 
 	/* Return with batch mapping (cmd) still pinned */
-	goto out_pool;
+	return 0;
 
 skip_request:
 	i915_request_set_error_once(rq, err);
@@ -1299,8 +1340,8 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 	i915_vma_unpin(batch);
 err_unmap:
 	i915_gem_object_unpin_map(pool->obj);
-out_pool:
-	intel_gt_buffer_pool_put(pool);
+err_pool:
+	eb->reloc_pool = pool;
 	return err;
 }
 
@@ -1317,7 +1358,7 @@ static u32 *reloc_gpu(struct i915_execbuffer *eb,
 	u32 *cmd;
 
 	if (cache->rq_size > PAGE_SIZE/sizeof(u32) - (len + 1))
-		reloc_gpu_flush(cache);
+		reloc_gpu_flush(eb, cache);
 
 	if (unlikely(!cache->rq)) {
 		int err;
@@ -1365,7 +1406,7 @@ static unsigned long vma_phys_addr(struct i915_vma *vma, u32 offset)
 	return addr + offset_in_page(offset);
 }
 
-static bool __reloc_entry_gpu(struct i915_execbuffer *eb,
+static int __reloc_entry_gpu(struct i915_execbuffer *eb,
 			      struct i915_vma *vma,
 			      u64 offset,
 			      u64 target_addr)
@@ -1383,7 +1424,9 @@ static bool __reloc_entry_gpu(struct i915_execbuffer *eb,
 		len = 3;
 
 	batch = reloc_gpu(eb, vma, len);
-	if (IS_ERR(batch))
+	if (batch == ERR_PTR(-EDEADLK))
+		return (s64)-EDEADLK;
+	else if (IS_ERR(batch))
 		return false;
 
 	addr = gen8_canonical_addr(vma->node.start + offset);
@@ -1436,7 +1479,7 @@ static bool __reloc_entry_gpu(struct i915_execbuffer *eb,
 	return true;
 }
 
-static bool reloc_entry_gpu(struct i915_execbuffer *eb,
+static int reloc_entry_gpu(struct i915_execbuffer *eb,
 			    struct i915_vma *vma,
 			    u64 offset,
 			    u64 target_addr)
@@ -1458,8 +1501,12 @@ relocate_entry(struct i915_vma *vma,
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
 
@@ -1662,7 +1709,7 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 		urelocs += ARRAY_SIZE(stack);
 	} while (remain);
 out:
-	reloc_cache_reset(&eb->reloc_cache);
+	reloc_cache_reset(&eb->reloc_cache, eb);
 	return remain;
 }
 
@@ -1685,7 +1732,7 @@ eb_relocate_vma_slow(struct i915_execbuffer *eb, struct eb_vma *ev)
 	}
 	err = 0;
 err:
-	reloc_cache_reset(&eb->reloc_cache);
+	reloc_cache_reset(&eb->reloc_cache, eb);
 	return err;
 }
 
@@ -1825,6 +1872,10 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
 		goto out;
 	}
 
+	/* We may process another execbuffer during the unlock... */
+	eb_release_vmas(eb, false);
+	i915_gem_ww_ctx_fini(&eb->ww);
+
 	/*
 	 * We take 3 passes through the slowpatch.
 	 *
@@ -1850,12 +1901,17 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
 
 	flush_workqueue(eb->i915->mm.userptr_wq);
 
+	i915_gem_ww_ctx_init(&eb->ww, true);
 	if (err)
 		goto out;
 
-	err = mutex_lock_interruptible(&eb->i915->drm.struct_mutex);
+	/* reacquire the objects */
+repeat_validate:
+	err = eb_validate_vmas(eb);
 	if (err)
-		goto out;
+		goto err;
+
+	GEM_BUG_ON(!eb->batch);
 
 	list_for_each_entry(ev, &eb->relocs, reloc_link) {
 		if (!have_copy) {
@@ -1871,8 +1927,9 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
 		}
 	}
 
-	reloc_gpu_flush(&eb->reloc_cache);
-	mutex_unlock(&eb->i915->drm.struct_mutex);
+	if (err == -EDEADLK)
+		goto err;
+
 	if (err && !have_copy)
 		goto repeat;
 
@@ -1892,6 +1949,13 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
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
 
@@ -1920,15 +1984,12 @@ static int eb_relocate_parse(struct i915_execbuffer *eb)
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
@@ -1940,45 +2001,46 @@ static int eb_relocate_parse(struct i915_execbuffer *eb)
 				break;
 		}
 
-		if (err)
-			return eb_relocate_parse_slow(eb);
+		if (err == -EDEADLK)
+			goto err;
+		else if (err)
+			goto slow;
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
@@ -2022,10 +2084,7 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
 
 		if (err == 0)
 			err = i915_vma_move_to_active(vma, eb->request, flags);
-
-		i915_vma_unlock(vma);
 	}
-	ww_acquire_fini(&acquire);
 
 	if (unlikely(err))
 		goto err_skip;
@@ -2216,36 +2275,26 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 	if (err)
 		goto err_commit;
 
-	err = dma_resv_lock_interruptible(pw->batch->resv, NULL);
-	if (err)
-		goto err_commit;
-
 	err = dma_resv_reserve_shared(pw->batch->resv, 1);
 	if (err)
-		goto err_commit_unlock;
+		goto err_commit;
 
 	/* Wait for all writes (and relocs) into the batch to complete */
 	err = i915_sw_fence_await_reservation(&pw->base.chain,
 					      pw->batch->resv, NULL, false,
 					      0, I915_FENCE_GFP);
 	if (err < 0)
-		goto err_commit_unlock;
+		goto err_commit;
 
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
 
-err_commit_unlock:
-	dma_resv_unlock(pw->batch->resv);
 err_commit:
 	i915_sw_fence_set_error_once(&pw->base.chain, err);
 	dma_fence_work_commit_imm(&pw->base);
@@ -2263,7 +2312,7 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 static int eb_parse(struct i915_execbuffer *eb)
 {
 	struct drm_i915_private *i915 = eb->i915;
-	struct intel_gt_buffer_pool_node *pool;
+	struct intel_gt_buffer_pool_node *pool = eb->batch_pool;
 	struct i915_vma *shadow, *trampoline;
 	unsigned int len;
 	int err;
@@ -2286,9 +2335,16 @@ static int eb_parse(struct i915_execbuffer *eb)
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
@@ -2334,7 +2390,6 @@ static int eb_parse(struct i915_execbuffer *eb)
 err_shadow:
 	i915_vma_unpin(shadow);
 err:
-	intel_gt_buffer_pool_put(pool);
 	return err;
 }
 
@@ -2820,6 +2875,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	eb.exec = exec;
 	eb.vma = (struct eb_vma *)(exec + args->buffer_count + 1);
 	eb.vma[0].vma = NULL;
+	eb.reloc_pool = eb.batch_pool = NULL;
 
 	eb.invalid_flags = __EXEC_OBJECT_UNKNOWN_FLAGS;
 	reloc_cache_init(&eb.reloc_cache, eb.i915);
@@ -2879,6 +2935,14 @@ i915_gem_do_execbuffer(struct drm_device *dev,
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
@@ -2892,6 +2956,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		goto err_vma;
 	}
 
+	ww_acquire_done(&eb.ww.ctx);
+
 	/*
 	 * snb/ivb/vlv conflate the "batch in ppgtt" bit with the "non-secure
 	 * batch" bit. Hence we need to pin secure batches into the global gtt.
@@ -2912,7 +2978,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		vma = i915_gem_object_ggtt_pin(eb.batch->vma->obj, NULL, 0, 0, 0);
 		if (IS_ERR(vma)) {
 			err = PTR_ERR(vma);
-			goto err_parse;
+			goto err_vma;
 		}
 
 		batch = vma;
@@ -2964,8 +3030,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	 * to explicitly hold another reference here.
 	 */
 	eb.request->batch = batch;
-	if (batch->private)
-		intel_gt_buffer_pool_mark_active(batch->private, eb.request);
+	if (eb.batch_pool)
+		intel_gt_buffer_pool_mark_active(eb.batch_pool, eb.request);
 
 	trace_i915_request_queue(eb.request, eb.batch_flags);
 	err = eb_submit(&eb, batch);
@@ -2992,14 +3058,18 @@ i915_gem_do_execbuffer(struct drm_device *dev,
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
index 580884cffec3..bc08c02b5767 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
@@ -32,25 +32,23 @@ static int __igt_gpu_reloc(struct i915_execbuffer *eb,
 	if (IS_ERR(vma))
 		return PTR_ERR(vma);
 
+	err = i915_gem_object_lock(obj, &eb->ww);
+	if (err)
+		return err;
+
 	err = i915_vma_pin(vma, 0, 0, PIN_USER | PIN_HIGH);
 	if (err)
 		return err;
 
 	/* 8-Byte aligned */
-	if (!__reloc_entry_gpu(eb, vma,
-			       offsets[0] * sizeof(u32),
-			       0)) {
-		err = -EIO;
-		goto unpin_vma;
-	}
+	err = __reloc_entry_gpu(eb, vma, offsets[0] * sizeof(u32), 0);
+	if (err <= 0)
+		goto reloc_err;
 
 	/* !8-Byte aligned */
-	if (!__reloc_entry_gpu(eb, vma,
-			       offsets[1] * sizeof(u32),
-			       1)) {
-		err = -EIO;
-		goto unpin_vma;
-	}
+	err = __reloc_entry_gpu(eb, vma, offsets[1] * sizeof(u32), 1);
+	if (err <= 0)
+		goto reloc_err;
 
 	/* Skip to the end of the cmd page */
 	i = PAGE_SIZE / sizeof(u32) - 1;
@@ -60,16 +58,13 @@ static int __igt_gpu_reloc(struct i915_execbuffer *eb,
 	eb->reloc_cache.rq_size += i;
 
 	/* Force next batch */
-	if (!__reloc_entry_gpu(eb, vma,
-			       offsets[2] * sizeof(u32),
-			       2)) {
-		err = -EIO;
-		goto unpin_vma;
-	}
+	err = __reloc_entry_gpu(eb, vma, offsets[2] * sizeof(u32), 2);
+	if (err <= 0)
+		goto reloc_err;
 
 	GEM_BUG_ON(!eb->reloc_cache.rq);
 	rq = i915_request_get(eb->reloc_cache.rq);
-	reloc_gpu_flush(&eb->reloc_cache);
+	reloc_gpu_flush(eb, &eb->reloc_cache);
 	GEM_BUG_ON(eb->reloc_cache.rq);
 
 	err = i915_gem_object_wait(obj, I915_WAIT_INTERRUPTIBLE, HZ / 2);
@@ -101,6 +96,11 @@ static int __igt_gpu_reloc(struct i915_execbuffer *eb,
 unpin_vma:
 	i915_vma_unpin(vma);
 	return err;
+
+reloc_err:
+	if (!err)
+		err = -EIO;
+	goto unpin_vma;
 }
 
 static int igt_gpu_reloc(void *arg)
@@ -122,6 +122,8 @@ static int igt_gpu_reloc(void *arg)
 		goto err_scratch;
 	}
 
+	intel_gt_pm_get(&eb.i915->gt);
+
 	for_each_uabi_engine(eb.engine, eb.i915) {
 		reloc_cache_init(&eb.reloc_cache, eb.i915);
 		memset(map, POISON_INUSE, 4096);
@@ -132,15 +134,26 @@ static int igt_gpu_reloc(void *arg)
 			err = PTR_ERR(eb.context);
 			goto err_pm;
 		}
+		eb.reloc_pool = NULL;
 
+		i915_gem_ww_ctx_init(&eb.ww, false);
+retry:
 		err = intel_context_pin(eb.context);
-		if (err)
-			goto err_put;
+		if (!err) {
+			err = __igt_gpu_reloc(&eb, scratch);
+
+			intel_context_unpin(eb.context);
+		}
+		if (err == -EDEADLK) {
+			err = i915_gem_ww_ctx_backoff(&eb.ww);
+			if (!err)
+				goto retry;
+		}
+		i915_gem_ww_ctx_fini(&eb.ww);
 
-		err = __igt_gpu_reloc(&eb, scratch);
+		if (eb.reloc_pool)
+			intel_gt_buffer_pool_put(eb.reloc_pool);
 
-		intel_context_unpin(eb.context);
-err_put:
 		intel_context_put(eb.context);
 err_pm:
 		intel_engine_pm_put(eb.engine);
@@ -151,6 +164,7 @@ static int igt_gpu_reloc(void *arg)
 	if (igt_flush_test(eb.i915))
 		err = -EIO;
 
+	intel_gt_pm_put(&eb.i915->gt);
 err_scratch:
 	i915_gem_object_put(scratch);
 	return err;
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 33f6f88c8b08..20653b660b61 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1378,6 +1378,12 @@ static void i915_gem_ww_ctx_unlock_all(struct i915_gem_ww_ctx *ww)
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
index 427ebd02fceb..a4cad3f154ca 100644
--- a/drivers/gpu/drm/i915/i915_gem.h
+++ b/drivers/gpu/drm/i915/i915_gem.h
@@ -126,5 +126,6 @@ struct i915_gem_ww_ctx {
 void i915_gem_ww_ctx_init(struct i915_gem_ww_ctx *ctx, bool intr);
 void i915_gem_ww_ctx_fini(struct i915_gem_ww_ctx *ctx);
 int __must_check i915_gem_ww_ctx_backoff(struct i915_gem_ww_ctx *ctx);
+void i915_gem_ww_unlock_single(struct drm_i915_gem_object *obj);
 
 #endif /* __I915_GEM_H__ */
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
