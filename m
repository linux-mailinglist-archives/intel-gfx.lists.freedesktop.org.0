Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C3015D5BF
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 11:31:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FAA56EB7B;
	Fri, 14 Feb 2020 10:31:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F11256EB71
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 10:31:00 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Feb 2020 11:30:43 +0100
Message-Id: <20200214103055.2117836-8-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.25.0.24.g3f081b084b0
In-Reply-To: <20200214103055.2117836-1-maarten.lankhorst@linux.intel.com>
References: <20200214103055.2117836-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/19] drm/i915: Use per object locking in
 execbuf on top of struct_mutex, v3.
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

This finally allows us to do parallel submission, but because vma
pinning does not use the ww ctx yet, we cannot drop struct_mutex yet.

Changes since v1:
- Keep struct_mutex for now. :(
Changes since v2:
- Make sure we always lock the ww context in slowpath.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 142 +++++++++---------
 1 file changed, 72 insertions(+), 70 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index bcbcd0ea8da6..a27aa85985bd 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -251,6 +251,8 @@ struct i915_execbuffer {
 	/** list of vma that have execobj.relocation_count */
 	struct list_head relocs;
 
+	struct i915_gem_ww_ctx ww;
+
 	/**
 	 * Track the most recently used object for relocations, as we
 	 * frequently have to perform multiple relocations within the same
@@ -813,6 +815,10 @@ static int eb_validate_vmas(struct i915_execbuffer *eb)
 		struct eb_vma *ev = &eb->vma[i];
 		struct i915_vma *vma = ev->vma;
 
+		err = i915_gem_object_lock(vma->obj, &eb->ww);
+		if (err)
+			return err;
+
 		if (eb_pin_vma(eb, entry, ev)) {
 			if (entry->offset != vma->node.start) {
 				entry->offset = vma->node.start | UPDATE;
@@ -959,7 +965,6 @@ static void reloc_cache_reset(struct reloc_cache *cache)
 
 		kunmap_atomic(vaddr);
 		i915_gem_object_finish_access(obj);
-		i915_gem_object_unlock(obj);
 	} else {
 		struct i915_ggtt *ggtt = cache_to_ggtt(cache);
 
@@ -994,15 +999,9 @@ static void *reloc_kmap(struct drm_i915_gem_object *obj,
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
@@ -1041,9 +1040,7 @@ static void *reloc_iomap(struct drm_i915_gem_object *obj,
 		if (use_cpu_reloc(cache, obj))
 			return NULL;
 
-		i915_gem_object_lock(obj, NULL);
 		err = i915_gem_object_set_to_gtt_domain(obj, true);
-		i915_gem_object_unlock(obj);
 		if (err)
 			return ERR_PTR(err);
 
@@ -1132,7 +1129,7 @@ static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
 	struct drm_i915_gem_object *obj = vma->obj;
 	int err;
 
-	i915_vma_lock(vma);
+	assert_vma_held(vma);
 
 	if (obj->cache_dirty & ~obj->cache_coherent)
 		i915_gem_clflush_object(obj, 0);
@@ -1142,8 +1139,6 @@ static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
 	if (err == 0)
 		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
 
-	i915_vma_unlock(vma);
-
 	return err;
 }
 
@@ -1162,6 +1157,10 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 	if (IS_ERR(pool))
 		return PTR_ERR(pool);
 
+	err = i915_gem_object_lock(pool->obj, &eb->ww);
+	if (err)
+		goto out_pool;
+
 	cmd = i915_gem_object_pin_map(pool->obj,
 				      cache->has_llc ?
 				      I915_MAP_FORCE_WB :
@@ -1201,11 +1200,10 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
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
 
@@ -1286,7 +1284,9 @@ relocate_entry(struct i915_vma *vma,
 			len = 3;
 
 		batch = reloc_gpu(eb, vma, len);
-		if (IS_ERR(batch))
+		if (batch == ERR_PTR(-EDEADLK))
+			return (s32)-EDEADLK;
+		else if (IS_ERR(batch))
 			goto repeat;
 
 		addr = gen8_canonical_addr(vma->node.start + offset);
@@ -1695,6 +1695,7 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
 
 	/* We may process another execbuffer during the unlock... */
 	eb_release_vmas(eb);
+	i915_gem_ww_ctx_fini(&eb->ww);
 	mutex_unlock(&dev->struct_mutex);
 
 	/*
@@ -1719,21 +1720,22 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
 		cond_resched();
 		err = 0;
 	}
-	if (err) {
-		mutex_lock(&dev->struct_mutex);
-		goto out;
-	}
 
-	/* A frequent cause for EAGAIN are currently unavailable client pages */
-	flush_workqueue(eb->i915->mm.userptr_wq);
+	if (!err) {
+		/* A frequent cause for EAGAIN are currently unavailable client pages */
+		flush_workqueue(eb->i915->mm.userptr_wq);
 
-	err = mutex_lock_interruptible(&dev->struct_mutex);
+		err = mutex_lock_interruptible(&dev->struct_mutex);
+	}
 	if (err) {
 		mutex_lock(&dev->struct_mutex);
+		i915_gem_ww_ctx_init(&eb->ww, true);
 		goto out;
 	}
+	i915_gem_ww_ctx_init(&eb->ww, true);
 
 	/* reacquire the objects */
+repeat_validate:
 	err = eb_validate_vmas(eb);
 	if (err)
 		goto err;
@@ -1745,7 +1747,9 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
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
@@ -1767,6 +1771,13 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
 	 */
 
 err:
+	if (err == -EDEADLK) {
+		eb_release_vmas(eb);
+		err = i915_gem_ww_ctx_backoff(&eb->ww);
+		if (!err)
+			goto repeat_validate;
+	}
+
 	if (err == -EAGAIN)
 		goto repeat;
 
@@ -1799,64 +1810,58 @@ static int eb_relocate_parse(struct i915_execbuffer *eb)
 	if (err)
 		return err;
 
+retry:
 	err = eb_validate_vmas(eb);
 	if (err)
-		goto slow;
+		goto err;
 
 	/* The objects are in their final locations, apply the relocations. */
 	if (eb->args->flags & __EXEC_HAS_RELOC) {
 		struct eb_vma *ev;
 
 		list_for_each_entry(ev, &eb->relocs, reloc_link) {
-			if (eb_relocate_vma(eb, ev))
-				goto slow;
+			err = eb_relocate_vma(eb, ev);
+			if (err)
+				goto err;
 		}
 	}
 
 	err = eb_parse(eb);
-	if (err)
+err:
+	if (err == -EDEADLK) {
+		eb_release_vmas(eb);
+		err = i915_gem_ww_ctx_backoff(&eb->ww);
+		if (err)
+			return err;
+
+		goto retry;
+	}
+	else if (err)
 		goto slow;
 
 	return 0;
 
 slow:
-	return eb_relocate_parse_slow(eb);
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
-		if (err == -EALREADY)
-			err = 0;
-		if (err)
-			break;
-	}
-	ww_acquire_done(&acquire);
-
 	while (i--) {
 		struct eb_vma *ev = &eb->vma[i];
 		struct i915_vma *vma = ev->vma;
@@ -1901,15 +1906,12 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
 		if (err == 0)
 			err = i915_vma_move_to_active(vma, eb->request, flags);
 
-		i915_vma_unlock(vma);
-
 		__eb_unreserve_vma(vma, flags);
 		if (unlikely(flags & __EXEC_OBJECT_HAS_REF))
 			i915_vma_put(vma);
 
 		ev->vma = NULL;
 	}
-	ww_acquire_fini(&acquire);
 
 	if (unlikely(err))
 		goto err_skip;
@@ -2065,10 +2067,6 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 	pw->shadow = shadow;
 	pw->trampoline = trampoline;
 
-	err = dma_resv_lock_interruptible(pw->batch->resv, NULL);
-	if (err)
-		goto err_trampoline;
-
 	err = dma_resv_reserve_shared(pw->batch->resv, 1);
 	if (err)
 		goto err_batch_unlock;
@@ -2083,19 +2081,14 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
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
@@ -2137,6 +2130,10 @@ static int eb_parse(struct i915_execbuffer *eb)
 	if (IS_ERR(pool))
 		return PTR_ERR(pool);
 
+	err = i915_gem_object_lock(pool->obj, &eb->ww);
+	if (err)
+		goto err;
+
 	shadow = shadow_batch_pin(pool->obj, eb->context->vm, PIN_USER);
 	if (IS_ERR(shadow)) {
 		err = PTR_ERR(shadow);
@@ -2691,6 +2688,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	err = mutex_lock_interruptible(&dev->struct_mutex);
 	if (err)
 		goto err_engine;
+	i915_gem_ww_ctx_init(&eb.ww, true);
 
 	err = eb_relocate_parse(&eb);
 	if (err) {
@@ -2705,6 +2703,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		goto err_vma;
 	}
 
+	ww_acquire_done(&eb.ww.ctx);
+
 	/*
 	 * snb/ivb/vlv conflate the "batch in ppgtt" bit with the "non-secure
 	 * batch" bit. Hence we need to pin secure batches into the global gtt.
@@ -2813,6 +2813,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		eb_release_vmas(&eb);
 	if (eb.trampoline)
 		i915_vma_unpin(eb.trampoline);
+	WARN_ON(err == -EDEADLK);
+	i915_gem_ww_ctx_fini(&eb.ww);
 	mutex_unlock(&dev->struct_mutex);
 err_engine:
 	eb_unpin_engine(&eb);
-- 
2.25.0.24.g3f081b084b0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
