Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB9711A600
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 09:40:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9F336E1A4;
	Wed, 11 Dec 2019 08:40:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 917476E1A4
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 08:40:30 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2019 09:40:27 +0100
Message-Id: <20191211084027.17716-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191210153739.3873447-1-maarten.lankhorst@linux.intel.com>
References: <20191210153739.3873447-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Use per object locking in execbuf
 on top of struct_mutex, v2.
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

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 90 ++++++++++---------
 drivers/gpu/drm/i915/i915_cmd_parser.c        | 15 +---
 2 files changed, 51 insertions(+), 54 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 1f41c245665a..6c9e5f7c1697 100644
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
@@ -833,6 +835,10 @@ static int eb_validate_vmas(struct i915_execbuffer *eb)
 		struct eb_vma *ev = &eb->vma[i];
 		struct i915_vma *vma = ev->vma;
 
+		err = i915_gem_object_lock(vma->obj, &eb->ww);
+		if (err)
+			return err;
+
 		if (eb_pin_vma(eb, entry, ev)) {
 			if (entry->offset != vma->node.start) {
 				entry->offset = vma->node.start | UPDATE;
@@ -1143,7 +1149,7 @@ static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
 	struct drm_i915_gem_object *obj = vma->obj;
 	int err;
 
-	i915_vma_lock(vma);
+	assert_vma_held(vma);
 
 	if (obj->cache_dirty & ~obj->cache_coherent)
 		i915_gem_clflush_object(obj, 0);
@@ -1153,8 +1159,6 @@ static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
 	if (err == 0)
 		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
 
-	i915_vma_unlock(vma);
-
 	return err;
 }
 
@@ -1212,11 +1216,10 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
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
 
@@ -1709,7 +1712,10 @@ static int eb_lock_and_parse_cmdbuffer(struct i915_execbuffer *eb)
 	if (IS_ERR(pool))
 		return PTR_ERR(pool);
 
-	err = eb_parse(eb, pool);
+	err = i915_gem_object_lock(pool->obj, &eb->ww);
+	if (!err)
+		err = eb_parse(eb, pool);
+
 	if (err)
 		intel_engine_pool_put(pool);
 
@@ -1731,6 +1737,7 @@ static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
 
 	/* We may process another execbuffer during the unlock... */
 	eb_release_vmas(eb);
+	i915_gem_ww_ctx_fini(&eb->ww);
 	mutex_unlock(&dev->struct_mutex);
 
 	/*
@@ -1757,6 +1764,7 @@ static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
 	}
 	if (err) {
 		mutex_lock(&dev->struct_mutex);
+		i915_gem_ww_ctx_init(&eb->ww, true);
 		goto out;
 	}
 
@@ -1768,8 +1776,10 @@ static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
 		mutex_lock(&dev->struct_mutex);
 		goto out;
 	}
+	i915_gem_ww_ctx_init(&eb->ww, true);
 
 	/* reacquire the objects */
+repeat_validate:
 	err = eb_validate_vmas(eb);
 	if (err)
 		goto err;
@@ -1802,6 +1812,13 @@ static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
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
 
@@ -1834,10 +1851,19 @@ static int eb_relocate_and_parse_cmdbuf(struct i915_execbuffer *eb)
 	if (err)
 		return err;
 
+retry:
 	err = eb_validate_vmas(eb);
 	if (!err)
 		err = eb_lock_and_parse_cmdbuffer(eb);
-	if (err)
+
+	if (err == -EDEADLK) {
+		err = i915_gem_ww_ctx_backoff(&eb->ww);
+		if (err)
+			return err;
+
+		goto retry;
+	}
+	else if (err)
 		goto slow;
 
 	/* The objects are in their final locations, apply the relocations. */
@@ -1853,43 +1879,26 @@ static int eb_relocate_and_parse_cmdbuf(struct i915_execbuffer *eb)
 	return 0;
 
 slow:
-	return eb_relocate_slow(eb);
+	err = eb_relocate_slow(eb);
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
@@ -1934,15 +1943,12 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
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
@@ -2592,11 +2598,14 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	err = mutex_lock_interruptible(&dev->struct_mutex);
 	if (err)
 		goto err_engine;
+	i915_gem_ww_ctx_init(&eb.ww, true);
 
 	err = eb_relocate_and_parse_cmdbuf(&eb);
 	if (err)
 		goto err_vma;
 
+	ww_acquire_done(&eb.ww.ctx);
+
 	/*
 	 * snb/ivb/vlv conflate the "batch in ppgtt" bit with the "non-secure
 	 * batch" bit. Hence we need to pin secure batches into the global gtt.
@@ -2701,6 +2710,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 err_vma:
 	if (eb.exec)
 		eb_release_vmas(&eb);
+	i915_gem_ww_ctx_fini(&eb.ww);
 	mutex_unlock(&dev->struct_mutex);
 err_engine:
 	eb_unpin_engine(&eb);
diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index f91c6d214634..f5e821bf5d59 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -1136,31 +1136,19 @@ static u32 *copy_batch(struct drm_i915_gem_object *dst_obj,
 	void *dst, *src;
 	int ret;
 
-	ret = i915_gem_object_lock_interruptible(dst_obj, NULL);
+	ret = i915_gem_object_prepare_write(dst_obj, &dst_needs_clflush);
 	if (ret)
 		return ERR_PTR(ret);
 
-	ret = i915_gem_object_prepare_write(dst_obj, &dst_needs_clflush);
-	if (ret) {
-		i915_gem_object_unlock(dst_obj);
-		return ERR_PTR(ret);
-	}
-
 	dst = i915_gem_object_pin_map(dst_obj, I915_MAP_FORCE_WB);
 	i915_gem_object_finish_access(dst_obj);
-	i915_gem_object_unlock(dst_obj);
 
 	if (IS_ERR(dst))
 		return dst;
 
-	ret = i915_gem_object_lock_interruptible(src_obj, NULL);
-	if (ret)
-		return ERR_PTR(ret);
-
 	ret = i915_gem_object_prepare_read(src_obj, &src_needs_clflush);
 	if (ret) {
 		i915_gem_object_unpin_map(dst_obj);
-		i915_gem_object_unlock(src_obj);
 		return ERR_PTR(ret);
 	}
 
@@ -1209,7 +1197,6 @@ static u32 *copy_batch(struct drm_i915_gem_object *dst_obj,
 	}
 
 	i915_gem_object_finish_access(src_obj);
-	i915_gem_object_unlock(src_obj);
 
 	/* dst_obj is returned with vmap pinned */
 	*needs_clflush_after = dst_needs_clflush & CLFLUSH_AFTER;
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
