Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF43E17BCB9
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 13:31:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F21F6ECEC;
	Fri,  6 Mar 2020 12:31:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46A4C6ECF2
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 12:30:58 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Mar 2020 13:30:33 +0100
Message-Id: <20200306123046.2797797-4-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306123046.2797797-1-maarten.lankhorst@linux.intel.com>
References: <20200306123046.2797797-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/17] drm/i915: Use per object locking in
 execbuf, v5.
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

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 234 ++++++++++--------
 1 file changed, 133 insertions(+), 101 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index c70026b05c26..df05abfbb81a 100644
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
@@ -404,24 +406,18 @@ eb_pin_vma(struct i915_execbuffer *eb,
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
@@ -515,16 +511,6 @@ eb_add_vma(struct i915_execbuffer *eb,
 
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
@@ -742,7 +728,6 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
 		return -ENOENT;
 
 	INIT_LIST_HEAD(&eb->relocs);
-	INIT_LIST_HEAD(&eb->unbound);
 
 	batch = eb_batch_index(eb);
 
@@ -822,6 +807,48 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
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
@@ -842,7 +869,7 @@ eb_get_vma(const struct i915_execbuffer *eb, unsigned long handle)
 	}
 }
 
-static void eb_release_vmas(const struct i915_execbuffer *eb)
+static void eb_release_vmas(const struct i915_execbuffer *eb, bool final)
 {
 	const unsigned int count = eb->buffer_count;
 	unsigned int i;
@@ -854,12 +881,10 @@ static void eb_release_vmas(const struct i915_execbuffer *eb)
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
 
@@ -946,7 +971,6 @@ static void reloc_cache_reset(struct reloc_cache *cache)
 
 		kunmap_atomic(vaddr);
 		i915_gem_object_finish_access(obj);
-		i915_gem_object_unlock(obj);
 	} else {
 		struct i915_ggtt *ggtt = cache_to_ggtt(cache);
 
@@ -981,15 +1005,9 @@ static void *reloc_kmap(struct drm_i915_gem_object *obj,
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
@@ -1028,9 +1046,7 @@ static void *reloc_iomap(struct drm_i915_gem_object *obj,
 		if (use_cpu_reloc(cache, obj))
 			return NULL;
 
-		i915_gem_object_lock(obj, NULL);
 		err = i915_gem_object_set_to_gtt_domain(obj, true);
-		i915_gem_object_unlock(obj);
 		if (err)
 			return ERR_PTR(err);
 
@@ -1119,7 +1135,7 @@ static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
 	struct drm_i915_gem_object *obj = vma->obj;
 	int err;
 
-	i915_vma_lock(vma);
+	assert_vma_held(vma);
 
 	if (obj->cache_dirty & ~obj->cache_coherent)
 		i915_gem_clflush_object(obj, 0);
@@ -1129,8 +1145,6 @@ static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
 	if (err == 0)
 		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
 
-	i915_vma_unlock(vma);
-
 	return err;
 }
 
@@ -1149,6 +1163,10 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 	if (IS_ERR(pool))
 		return PTR_ERR(pool);
 
+	err = i915_gem_object_lock(pool->obj, &eb->ww);
+	if (err)
+		goto out_pool;
+
 	cmd = i915_gem_object_pin_map(pool->obj,
 				      cache->has_llc ?
 				      I915_MAP_FORCE_WB :
@@ -1188,11 +1206,10 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
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
 
@@ -1273,7 +1290,9 @@ relocate_entry(struct i915_vma *vma,
 			len = 3;
 
 		batch = reloc_gpu(eb, vma, len);
-		if (IS_ERR(batch))
+		if (batch == ERR_PTR(-EDEADLK))
+			return (s64)-EDEADLK;
+		else if (IS_ERR(batch))
 			goto repeat;
 
 		addr = gen8_canonical_addr(vma->node.start + offset);
@@ -1679,6 +1698,10 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
 		goto out;
 	}
 
+	/* We may process another execbuffer during the unlock... */
+	eb_release_vmas(eb, false);
+	i915_gem_ww_ctx_fini(&eb->ww);
+
 	/*
 	 * We take 3 passes through the slowpatch.
 	 *
@@ -1701,15 +1724,27 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
 		cond_resched();
 		err = 0;
 	}
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
@@ -1731,6 +1766,13 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
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
 
@@ -1765,57 +1807,57 @@ static int eb_relocate_parse(struct i915_execbuffer *eb)
 	if (err)
 		return err;
 
-	if (!list_empty(&eb->unbound)) {
-		err = eb_reserve(eb);
-		if (err)
-			return err;
-	}
+retry:
+	err = eb_validate_vmas(eb);
+	if (err)
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
@@ -1859,21 +1901,11 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
 
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
@@ -2023,10 +2055,6 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 	pw->shadow = shadow;
 	pw->trampoline = trampoline;
 
-	err = dma_resv_lock_interruptible(pw->batch->resv, NULL);
-	if (err)
-		goto err_trampoline;
-
 	err = dma_resv_reserve_shared(pw->batch->resv, 1);
 	if (err)
 		goto err_batch_unlock;
@@ -2041,19 +2069,14 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 	/* Keep the batch alive and unwritten as we parse */
 	dma_resv_add_shared_fence(pw->batch->resv, &pw->base.dma);
 
-	dma_resv_unlock(pw->batch->resv);
-
 	/* Force execution to wait for completion of the parser */
-	dma_resv_lock(shadow->resv, NULL);
 	dma_resv_add_excl_fence(shadow->resv, &pw->base.dma);
-	dma_resv_unlock(shadow->resv);
 
 	dma_fence_work_commit(&pw->base);
 	return 0;
 
 err_batch_unlock:
 	dma_resv_unlock(pw->batch->resv);
-err_trampoline:
 	if (trampoline)
 		i915_active_release(&trampoline->active);
 err_shadow:
@@ -2095,6 +2118,10 @@ static int eb_parse(struct i915_execbuffer *eb)
 	if (IS_ERR(pool))
 		return PTR_ERR(pool);
 
+	err = i915_gem_object_lock(pool->obj, &eb->ww);
+	if (err)
+		goto err;
+
 	shadow = shadow_batch_pin(pool->obj, eb->context->vm, PIN_USER);
 	if (IS_ERR(shadow)) {
 		err = PTR_ERR(shadow);
@@ -2719,6 +2746,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	if (unlikely(err))
 		goto err_context;
 
+	i915_gem_ww_ctx_init(&eb.ww, true);
+
 	err = eb_relocate_parse(&eb);
 	if (err) {
 		/*
@@ -2732,6 +2761,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		goto err_vma;
 	}
 
+	ww_acquire_done(&eb.ww.ctx);
+
 	/*
 	 * snb/ivb/vlv conflate the "batch in ppgtt" bit with the "non-secure
 	 * batch" bit. Hence we need to pin secure batches into the global gtt.
@@ -2837,10 +2868,11 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	if (batch->private)
 		intel_engine_pool_put(batch->private);
 err_vma:
-	if (eb.exec)
-		eb_release_vmas(&eb);
+	eb_release_vmas(&eb, true);
 	if (eb.trampoline)
 		i915_vma_unpin(eb.trampoline);
+	WARN_ON(err == -EDEADLK);
+	i915_gem_ww_ctx_fini(&eb.ww);
 	eb_unpin_engine(&eb);
 err_context:
 	i915_gem_context_put(eb.gem_context);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
