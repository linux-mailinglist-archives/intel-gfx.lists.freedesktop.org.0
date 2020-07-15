Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A32220C50
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 13:52:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50A8E6EB23;
	Wed, 15 Jul 2020 11:52:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C56DF6EACD
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 11:52:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21826134-1500050 
 for multiple; Wed, 15 Jul 2020 12:51:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jul 2020 12:51:08 +0100
Message-Id: <20200715115147.11866-27-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200715115147.11866-1-chris@chris-wilson.co.uk>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 27/66] drm/i915/gem: Pull execbuf dma resv under
 a single critical section
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Acquire all the objects and their backing storage, and page directories,
as used by execbuf under a single common ww_mutex. Albeit we have to
restart the critical section a few times in order to handle various
restrictions (such as avoiding copy_(from|to)_user and mmap_sem).

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 168 +++++++++---------
 .../i915/gem/selftests/i915_gem_execbuffer.c  |   8 +-
 2 files changed, 87 insertions(+), 89 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index ebabc0746d50..db433f3f18ec 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -20,6 +20,7 @@
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_gt_requests.h"
 #include "gt/intel_ring.h"
+#include "mm/i915_acquire_ctx.h"
 
 #include "i915_drv.h"
 #include "i915_gem_clflush.h"
@@ -244,6 +245,8 @@ struct i915_execbuffer {
 	struct intel_context *context; /* logical state for the request */
 	struct i915_gem_context *gem_context; /** caller's context */
 
+	struct i915_acquire_ctx acquire; /** lock for _all_ DMA reservations */
+
 	struct i915_request *request; /** our request to build */
 	struct eb_vma *batch; /** identity of the batch obj/vma */
 
@@ -389,42 +392,6 @@ static void eb_vma_array_put(struct eb_vma_array *arr)
 	kref_put(&arr->kref, eb_vma_array_destroy);
 }
 
-static int
-eb_lock_vma(struct i915_execbuffer *eb, struct ww_acquire_ctx *acquire)
-{
-	struct eb_vma *ev;
-	int err = 0;
-
-	list_for_each_entry(ev, &eb->submit_list, submit_link) {
-		struct i915_vma *vma = ev->vma;
-
-		err = ww_mutex_lock_interruptible(&vma->resv->lock, acquire);
-		if (err == -EDEADLK) {
-			struct eb_vma *unlock = ev, *en;
-
-			list_for_each_entry_safe_continue_reverse(unlock, en,
-								  &eb->submit_list,
-								  submit_link) {
-				ww_mutex_unlock(&unlock->vma->resv->lock);
-				list_move_tail(&unlock->submit_link, &eb->submit_list);
-			}
-
-			GEM_BUG_ON(!list_is_first(&ev->submit_link, &eb->submit_list));
-			err = ww_mutex_lock_slow_interruptible(&vma->resv->lock,
-							       acquire);
-		}
-		if (err) {
-			list_for_each_entry_continue_reverse(ev,
-							     &eb->submit_list,
-							     submit_link)
-				ww_mutex_unlock(&ev->vma->resv->lock);
-			break;
-		}
-	}
-
-	return err;
-}
-
 static int eb_create(struct i915_execbuffer *eb)
 {
 	/* Allocate an extra slot for use by the sentinel */
@@ -668,6 +635,25 @@ eb_add_vma(struct i915_execbuffer *eb,
 	}
 }
 
+static int eb_lock_mm(struct i915_execbuffer *eb)
+{
+	struct eb_vma *ev;
+	int err;
+
+	list_for_each_entry(ev, &eb->bind_list, bind_link) {
+		err = i915_acquire_ctx_lock(&eb->acquire, ev->vma->obj);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
+static int eb_acquire_mm(struct i915_execbuffer *eb)
+{
+	return i915_acquire_mm(&eb->acquire);
+}
+
 struct eb_vm_work {
 	struct dma_fence_work base;
 	struct eb_vma_array *array;
@@ -1390,7 +1376,15 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
 	unsigned long count;
 	struct eb_vma *ev;
 	unsigned int pass;
-	int err = 0;
+	int err;
+
+	err = eb_lock_mm(eb);
+	if (err)
+		return err;
+
+	err = eb_acquire_mm(eb);
+	if (err)
+		return err;
 
 	count = 0;
 	INIT_LIST_HEAD(&unbound);
@@ -1416,10 +1410,15 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
 	if (count == 0)
 		return 0;
 
+	/* We need to reserve page directories, release all, start over */
+	i915_acquire_ctx_fini(&eb->acquire);
+
 	pass = 0;
 	do {
 		struct eb_vm_work *work;
 
+		i915_acquire_ctx_init(&eb->acquire);
+
 		/*
 		 * We need to hold one lock as we bind all the vma so that
 		 * we have a consistent view of the entire vm and can plan
@@ -1436,6 +1435,11 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
 		 * beneath it, so we have to stage and preallocate all the
 		 * resources we may require before taking the mutex.
 		 */
+
+		err = eb_lock_mm(eb);
+		if (err)
+			return err;
+
 		work = eb_vm_work(eb, count);
 		if (!work)
 			return -ENOMEM;
@@ -1453,6 +1457,10 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
 			}
 		}
 
+		err = eb_acquire_mm(eb);
+		if (err)
+			return eb_vm_work_cancel(work, err);
+
 		err = i915_vm_pin_pt_stash(work->vm, &work->stash);
 		if (err)
 			return eb_vm_work_cancel(work, err);
@@ -1543,6 +1551,8 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
 		if (signal_pending(current))
 			return -EINTR;
 
+		i915_acquire_ctx_fini(&eb->acquire);
+
 		/* Now safe to wait with no reservations held */
 
 		if (err == -EAGAIN) {
@@ -1566,8 +1576,10 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
 		 * total ownership of the vm.
 		 */
 		err = wait_for_unbinds(eb, &unbound, pass++);
-		if (err)
+		if (err) {
+			i915_acquire_ctx_init(&eb->acquire);
 			return err;
+		}
 	} while (1);
 }
 
@@ -1994,8 +2006,6 @@ static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
 	struct drm_i915_gem_object *obj = vma->obj;
 	int err;
 
-	i915_vma_lock(vma);
-
 	if (obj->cache_dirty & ~obj->cache_coherent)
 		i915_gem_clflush_object(obj, 0);
 	obj->write_domain = 0;
@@ -2004,8 +2014,6 @@ static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
 	if (err == 0)
 		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
 
-	i915_vma_unlock(vma);
-
 	return err;
 }
 
@@ -2334,11 +2342,9 @@ get_gpu_relocs(struct i915_execbuffer *eb,
 		int err;
 
 		GEM_BUG_ON(!vma);
-		i915_vma_lock(vma);
 		err = i915_request_await_object(rq, vma->obj, false);
 		if (err == 0)
 			err = i915_vma_move_to_active(vma, rq, 0);
-		i915_vma_unlock(vma);
 		if (err)
 			return ERR_PTR(err);
 
@@ -2470,6 +2476,7 @@ static int eb_relocate(struct i915_execbuffer *eb)
 	/* Drop everything before we copy_from_user */
 	list_for_each_entry(ev, &eb->bind_list, bind_link)
 		eb_unreserve_vma(ev);
+	i915_acquire_ctx_fini(&eb->acquire);
 
 	/* Pick a single buffer for all relocs, within reason */
 	c->bufsz *= sizeof(struct drm_i915_gem_relocation_entry);
@@ -2482,6 +2489,7 @@ static int eb_relocate(struct i915_execbuffer *eb)
 
 	/* Copy the user's relocations into plain system memory */
 	err = eb_relocs_copy_user(eb);
+	i915_acquire_ctx_init(&eb->acquire);
 	if (err)
 		return err;
 
@@ -2517,17 +2525,8 @@ static int eb_reserve(struct i915_execbuffer *eb)
 
 static int eb_move_to_gpu(struct i915_execbuffer *eb)
 {
-	struct ww_acquire_ctx acquire;
 	struct eb_vma *ev;
-	int err = 0;
-
-	ww_acquire_init(&acquire, &reservation_ww_class);
-
-	err = eb_lock_vma(eb, &acquire);
-	if (err)
-		goto err_fini;
-
-	ww_acquire_done(&acquire);
+	int err;
 
 	list_for_each_entry(ev, &eb->submit_list, submit_link) {
 		struct i915_vma *vma = ev->vma;
@@ -2566,27 +2565,22 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
 				flags &= ~EXEC_OBJECT_ASYNC;
 		}
 
-		if (err == 0 && !(flags & EXEC_OBJECT_ASYNC)) {
+		if (!(flags & EXEC_OBJECT_ASYNC)) {
 			err = i915_request_await_object
 				(eb->request, obj, flags & EXEC_OBJECT_WRITE);
+			if (unlikely(err))
+				goto err_skip;
 		}
 
-		if (err == 0)
-			err = i915_vma_move_to_active(vma, eb->request, flags);
-
-		i915_vma_unlock(vma);
+		err = i915_vma_move_to_active(vma, eb->request, flags);
+		if (unlikely(err))
+			goto err_skip;
 	}
-	ww_acquire_fini(&acquire);
-
-	if (unlikely(err))
-		goto err_skip;
 
 	/* Unconditionally flush any chipset caches (for streaming writes). */
 	intel_gt_chipset_flush(eb->engine->gt);
 	return 0;
 
-err_fini:
-	ww_acquire_fini(&acquire);
 err_skip:
 	i915_request_set_error_once(eb->request, err);
 	return err;
@@ -2749,39 +2743,27 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 	/* Mark active refs early for this worker, in case we get interrupted */
 	err = parser_mark_active(pw, eb->context->timeline);
 	if (err)
-		goto err_commit;
-
-	err = dma_resv_lock_interruptible(pw->batch->resv, NULL);
-	if (err)
-		goto err_commit;
+		goto out;
 
 	err = dma_resv_reserve_shared(pw->batch->resv, 1);
 	if (err)
-		goto err_commit_unlock;
+		goto out;
 
 	/* Wait for all writes (and relocs) into the batch to complete */
 	err = i915_sw_fence_await_reservation(&pw->base.chain,
 					      pw->batch->resv, NULL, false,
 					      0, I915_FENCE_GFP);
 	if (err < 0)
-		goto err_commit_unlock;
+		goto out;
 
 	/* Keep the batch alive and unwritten as we parse */
 	dma_resv_add_shared_fence(pw->batch->resv, &pw->base.dma);
 
-	dma_resv_unlock(pw->batch->resv);
-
 	/* Force execution to wait for completion of the parser */
-	dma_resv_lock(shadow->resv, NULL);
 	dma_resv_add_excl_fence(shadow->resv, &pw->base.dma);
-	dma_resv_unlock(shadow->resv);
 
-	dma_fence_work_commit_imm(&pw->base);
-	return 0;
-
-err_commit_unlock:
-	dma_resv_unlock(pw->batch->resv);
-err_commit:
+	err = 0;
+out:
 	i915_sw_fence_set_error_once(&pw->base.chain, err);
 	dma_fence_work_commit_imm(&pw->base);
 	return err;
@@ -2833,10 +2815,6 @@ static int eb_submit(struct i915_execbuffer *eb)
 {
 	int err;
 
-	err = eb_move_to_gpu(eb);
-	if (err)
-		return err;
-
 	if (eb->args->flags & I915_EXEC_GEN7_SOL_RESET) {
 		err = i915_reset_gen7_sol_offsets(eb->request);
 		if (err)
@@ -3420,6 +3398,9 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		goto err_engine;
 	lockdep_assert_held(&eb.context->timeline->mutex);
 
+	/* *** DMA-RESV LOCK *** */
+	i915_acquire_ctx_init(&eb.acquire);
+
 	err = eb_reserve(&eb);
 	if (err) {
 		/*
@@ -3433,6 +3414,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		goto err_vma;
 	}
 
+	/* *** DMA-RESV SEALED *** */
+
 	err = eb_parse(&eb);
 	if (err)
 		goto err_vma;
@@ -3483,9 +3466,20 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		intel_gt_buffer_pool_mark_active(eb.parser.shadow->vma->private,
 						 eb.request);
 
+	err = eb_move_to_gpu(&eb);
+	if (err)
+		goto err_request;
+
+	/* *** DMA-RESV PUBLISHED *** */
+
 	trace_i915_request_queue(eb.request, eb.batch_flags);
 	err = eb_submit(&eb);
+
 err_request:
+	i915_acquire_ctx_fini(&eb.acquire);
+	eb.acquire.locked = ERR_PTR(-1);
+	/* *** DMA-RESV UNLOCK *** */
+
 	i915_request_get(eb.request);
 	eb_request_add(&eb);
 
@@ -3496,6 +3490,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	i915_request_put(eb.request);
 
 err_vma:
+	if (eb.acquire.locked != ERR_PTR(-1))
+		i915_acquire_ctx_fini(&eb.acquire);
 	eb_unlock_engine(&eb);
 	/* *** TIMELINE UNLOCK *** */
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
index 8776f2750fa7..57181718acb1 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
@@ -101,11 +101,13 @@ static int __igt_gpu_reloc(struct i915_execbuffer *eb, struct eb_vma *ev)
 		return err;
 	ev->exec->relocation_count = err;
 
+	i915_acquire_ctx_init(&eb->acquire);
+
 	err = eb_reserve_vm(eb);
-	if (err)
-		return err;
+	if (err == 0)
+		err = eb_relocs_gpu(eb);
 
-	err = eb_relocs_gpu(eb);
+	i915_acquire_ctx_fini(&eb->acquire);
 	if (err)
 		return err;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
