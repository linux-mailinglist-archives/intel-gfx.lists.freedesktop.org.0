Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24170220C6E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 13:53:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A3E46EB20;
	Wed, 15 Jul 2020 11:53:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F7776EACF
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 11:52:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21826120-1500050 
 for multiple; Wed, 15 Jul 2020 12:51:51 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jul 2020 12:50:54 +0100
Message-Id: <20200715115147.11866-13-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200715115147.11866-1-chris@chris-wilson.co.uk>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/66] drm/i915/gem: Don't drop the timeline
 lock during execbuf
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

Our timeline lock is our defence against a concurrent execbuf
interrupting our request construction. we need hold it throughout or,
for example, a second thread may interject a relocation request in
between our own relocation request and execution in the ring.

A second, major benefit, is that it allows us to preserve a large chunk
of the ringbuffer for our exclusive use; which should virtually
eliminate the threat of hitting a wait_for_space during request
construction -- although we should have already dropped other
contentious locks at that point.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 413 +++++++++++-------
 .../i915/gem/selftests/i915_gem_execbuffer.c  |  24 +-
 2 files changed, 281 insertions(+), 156 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 719ba9fe3e85..af3499aafd22 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -259,6 +259,8 @@ struct i915_execbuffer {
 		bool has_fence : 1;
 		bool needs_unfenced : 1;
 
+		struct intel_context *ce;
+
 		struct i915_vma *target;
 		struct i915_request *rq;
 		struct i915_vma *rq_vma;
@@ -639,6 +641,35 @@ static int eb_reserve_vma(const struct i915_execbuffer *eb,
 	return 0;
 }
 
+static void retire_requests(struct intel_timeline *tl)
+{
+	struct i915_request *rq, *rn;
+
+	list_for_each_entry_safe(rq, rn, &tl->requests, link)
+		if (!i915_request_retire(rq))
+			break;
+}
+
+static int wait_for_timeline(struct intel_timeline *tl)
+{
+	do {
+		struct dma_fence *fence;
+		int err;
+
+		fence = i915_active_fence_get(&tl->last_request);
+		if (!fence)
+			return 0;
+
+		err = dma_fence_wait(fence, true);
+		dma_fence_put(fence);
+		if (err)
+			return err;
+
+		/* Retiring may trigger a barrier, requiring an extra pass */
+		retire_requests(tl);
+	} while (1);
+}
+
 static int eb_reserve(struct i915_execbuffer *eb)
 {
 	const unsigned int count = eb->buffer_count;
@@ -646,7 +677,6 @@ static int eb_reserve(struct i915_execbuffer *eb)
 	struct list_head last;
 	struct eb_vma *ev;
 	unsigned int i, pass;
-	int err = 0;
 
 	/*
 	 * Attempt to pin all of the buffers into the GTT.
@@ -662,18 +692,37 @@ static int eb_reserve(struct i915_execbuffer *eb)
 	 * room for the earlier objects *unless* we need to defragment.
 	 */
 
-	if (mutex_lock_interruptible(&eb->i915->drm.struct_mutex))
-		return -EINTR;
-
 	pass = 0;
 	do {
+		int err = 0;
+
+		/*
+		 * We need to hold one lock as we bind all the vma so that
+		 * we have a consistent view of the entire vm and can plan
+		 * evictions to fill the whole GTT. If we allow a second
+		 * thread to run as we do this, it will either unbind
+		 * everything we want pinned, or steal space that we need for
+		 * ourselves. The closer we are to a full GTT, the more likely
+		 * such contention will cause us to fail to bind the workload
+		 * for this batch. Since we know at this point we need to
+		 * find space for new buffers, we know that extra pressure
+		 * from contention is likely.
+		 *
+		 * In lieu of being able to hold vm->mutex for the entire
+		 * sequence (it's complicated!), we opt for struct_mutex.
+		 */
+		if (mutex_lock_interruptible(&eb->i915->drm.struct_mutex))
+			return -EINTR;
+
 		list_for_each_entry(ev, &eb->unbound, bind_link) {
 			err = eb_reserve_vma(eb, ev, pin_flags);
 			if (err)
 				break;
 		}
-		if (!(err == -ENOSPC || err == -EAGAIN))
-			break;
+		if (!(err == -ENOSPC || err == -EAGAIN)) {
+			mutex_unlock(&eb->i915->drm.struct_mutex);
+			return err;
+		}
 
 		/* Resort *all* the objects into priority order */
 		INIT_LIST_HEAD(&eb->unbound);
@@ -702,38 +751,50 @@ static int eb_reserve(struct i915_execbuffer *eb)
 				list_add_tail(&ev->bind_link, &last);
 		}
 		list_splice_tail(&last, &eb->unbound);
+		mutex_unlock(&eb->i915->drm.struct_mutex);
 
 		if (err == -EAGAIN) {
-			mutex_unlock(&eb->i915->drm.struct_mutex);
 			flush_workqueue(eb->i915->mm.userptr_wq);
-			mutex_lock(&eb->i915->drm.struct_mutex);
 			continue;
 		}
 
+		/*
+		 * We failed to bind our workload; there's not enough space.
+		 *
+		 * This could be due to userspace trying to submit a workload
+		 * that requires more space than is available in an empty GTT,
+		 * but more likely it means that some client is temporarily
+		 * holding onto pressure space. If we wait and flush the
+		 * timeline, that will reduce the concurrent pressure
+		 * giving us a clean shot at allocating our workload.
+		 *
+		 * However, after waiting we may compete once more with new
+		 * clients. Without a ticketlock or some other mechanism,
+		 * there is no guarantee that we will succeed in claiming
+		 * total ownership of the vm.
+		 */
 		switch (pass++) {
 		case 0:
 			break;
 
 		case 1:
-			/* Too fragmented, unbind everything and retry */
-			mutex_lock(&eb->context->vm->mutex);
-			err = i915_gem_evict_vm(eb->context->vm);
-			mutex_unlock(&eb->context->vm->mutex);
+			/*
+			 * Too fragmented, retire everything on the timeline
+			 * and so make it all [contexts included] available to
+			 * evict.
+			 */
+			err = wait_for_timeline(eb->context->timeline);
 			if (err)
-				goto unlock;
+				return err;
+
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
@@ -1007,13 +1068,44 @@ static int reloc_gpu_chain(struct reloc_cache *cache)
 	return err;
 }
 
+static struct i915_request *
+nested_request_create(struct intel_context *ce)
+{
+	struct i915_request *rq;
+
+	/* XXX This only works once; replace with shared timeline */
+	mutex_lock_nested(&ce->timeline->mutex, SINGLE_DEPTH_NESTING);
+	intel_context_enter(ce);
+
+	rq = __i915_request_create(ce, GFP_KERNEL);
+
+	intel_context_exit(ce);
+	if (IS_ERR(rq))
+		mutex_unlock(&ce->timeline->mutex);
+
+	return rq;
+}
+
+static void __i915_request_add(struct i915_request *rq,
+			       struct i915_sched_attr *attr)
+{
+	struct intel_timeline * const tl = i915_request_timeline(rq);
+
+	lockdep_assert_held(&tl->mutex);
+	lockdep_unpin_lock(&tl->mutex, rq->cookie);
+
+	__i915_request_commit(rq);
+	__i915_request_queue(rq, attr);
+}
+
 static unsigned int reloc_bb_flags(const struct reloc_cache *cache)
 {
 	return cache->gen > 5 ? 0 : I915_DISPATCH_SECURE;
 }
 
-static int reloc_gpu_flush(struct reloc_cache *cache)
+static int reloc_gpu_flush(struct i915_execbuffer *eb)
 {
+	struct reloc_cache *cache = &eb->reloc_cache;
 	struct i915_request *rq;
 	int err;
 
@@ -1044,7 +1136,9 @@ static int reloc_gpu_flush(struct reloc_cache *cache)
 		i915_request_set_error_once(rq, err);
 
 	intel_gt_chipset_flush(rq->engine->gt);
-	i915_request_add(rq);
+	__i915_request_add(rq, &eb->gem_context->sched);
+	if (i915_request_timeline(rq) != eb->context->timeline)
+		mutex_unlock(&i915_request_timeline(rq)->mutex);
 
 	return err;
 }
@@ -1103,27 +1197,15 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 	if (err)
 		goto err_unmap;
 
-	if (engine == eb->context->engine) {
-		rq = i915_request_create(eb->context);
-	} else {
-		struct intel_context *ce;
-
-		ce = intel_context_create(engine);
-		if (IS_ERR(ce)) {
-			err = PTR_ERR(ce);
-			goto err_unpin;
-		}
-
-		i915_vm_put(ce->vm);
-		ce->vm = i915_vm_get(eb->context->vm);
-
-		rq = intel_context_create_request(ce);
-		intel_context_put(ce);
-	}
+	if (cache->ce == eb->context)
+		rq = __i915_request_create(cache->ce, GFP_KERNEL);
+	else
+		rq = nested_request_create(cache->ce);
 	if (IS_ERR(rq)) {
 		err = PTR_ERR(rq);
 		goto err_unpin;
 	}
+	rq->cookie = lockdep_pin_lock(&i915_request_timeline(rq)->mutex);
 
 	err = intel_gt_buffer_pool_mark_active(pool, rq);
 	if (err)
@@ -1151,7 +1233,9 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 skip_request:
 	i915_request_set_error_once(rq, err);
 err_request:
-	i915_request_add(rq);
+	__i915_request_add(rq, &eb->gem_context->sched);
+	if (i915_request_timeline(rq) != eb->context->timeline)
+		mutex_unlock(&i915_request_timeline(rq)->mutex);
 err_unpin:
 	i915_vma_unpin(batch);
 err_unmap:
@@ -1161,11 +1245,6 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 	return err;
 }
 
-static bool reloc_can_use_engine(const struct intel_engine_cs *engine)
-{
-	return engine->class != VIDEO_DECODE_CLASS || !IS_GEN(engine->i915, 6);
-}
-
 static u32 *reloc_gpu(struct i915_execbuffer *eb,
 		      struct i915_vma *vma,
 		      unsigned int len)
@@ -1177,12 +1256,6 @@ static u32 *reloc_gpu(struct i915_execbuffer *eb,
 	if (unlikely(!cache->rq)) {
 		struct intel_engine_cs *engine = eb->engine;
 
-		if (!reloc_can_use_engine(engine)) {
-			engine = engine->gt->engine_class[COPY_ENGINE_CLASS][0];
-			if (!engine)
-				return ERR_PTR(-ENODEV);
-		}
-
 		err = __reloc_gpu_alloc(eb, engine, len);
 		if (unlikely(err))
 			return ERR_PTR(err);
@@ -1513,7 +1586,7 @@ static int eb_relocate(struct i915_execbuffer *eb)
 				break;
 		}
 
-		flush = reloc_gpu_flush(&eb->reloc_cache);
+		flush = reloc_gpu_flush(eb);
 		if (!err)
 			err = flush;
 	}
@@ -1706,20 +1779,9 @@ static int __eb_parse(struct dma_fence_work *work)
 				       pw->trampoline);
 }
 
-static void __eb_parse_release(struct dma_fence_work *work)
-{
-	struct eb_parse_work *pw = container_of(work, typeof(*pw), base);
-
-	if (pw->trampoline)
-		i915_active_release(&pw->trampoline->active);
-	i915_active_release(&pw->shadow->active);
-	i915_active_release(&pw->batch->active);
-}
-
 static const struct dma_fence_work_ops eb_parse_ops = {
 	.name = "eb_parse",
 	.work = __eb_parse,
-	.release = __eb_parse_release,
 };
 
 static inline int
@@ -1737,21 +1799,23 @@ parser_mark_active(struct eb_parse_work *pw, struct intel_timeline *tl)
 {
 	int err;
 
-	mutex_lock(&tl->mutex);
+	err = i915_active_ref(&pw->batch->active,
+			      tl->fence_context,
+			      &pw->base.dma);
+	if (err)
+		return err;
 
 	err = __parser_mark_active(pw->shadow, tl, &pw->base.dma);
 	if (err)
-		goto unlock;
+		return err;
 
 	if (pw->trampoline) {
 		err = __parser_mark_active(pw->trampoline, tl, &pw->base.dma);
 		if (err)
-			goto unlock;
+			return err;
 	}
 
-unlock:
-	mutex_unlock(&tl->mutex);
-	return err;
+	return 0;
 }
 
 static int eb_parse_pipeline(struct i915_execbuffer *eb,
@@ -1765,20 +1829,6 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 	if (!pw)
 		return -ENOMEM;
 
-	err = i915_active_acquire(&eb->batch->vma->active);
-	if (err)
-		goto err_free;
-
-	err = i915_active_acquire(&shadow->active);
-	if (err)
-		goto err_batch;
-
-	if (trampoline) {
-		err = i915_active_acquire(&trampoline->active);
-		if (err)
-			goto err_shadow;
-	}
-
 	dma_fence_work_init(&pw->base, &eb_parse_ops);
 
 	pw->engine = eb->engine;
@@ -1827,14 +1877,6 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 	i915_sw_fence_set_error_once(&pw->base.chain, err);
 	dma_fence_work_commit_imm(&pw->base);
 	return err;
-
-err_shadow:
-	i915_active_release(&shadow->active);
-err_batch:
-	i915_active_release(&eb->batch->vma->active);
-err_free:
-	kfree(pw);
-	return err;
 }
 
 static int eb_parse(struct i915_execbuffer *eb)
@@ -2043,32 +2085,61 @@ static struct i915_request *eb_throttle(struct intel_context *ce)
 	return i915_request_get(rq);
 }
 
-static int __eb_pin_engine(struct i915_execbuffer *eb, struct intel_context *ce)
+static bool reloc_can_use_engine(const struct intel_engine_cs *engine)
 {
-	struct intel_timeline *tl;
-	struct i915_request *rq;
+	return engine->class != VIDEO_DECODE_CLASS || !IS_GEN(engine->i915, 6);
+}
+
+static int __eb_pin_reloc_engine(struct i915_execbuffer *eb)
+{
+	struct intel_engine_cs *engine = eb->engine;
+	struct intel_context *ce;
 	int err;
 
-	/*
-	 * ABI: Before userspace accesses the GPU (e.g. execbuffer), report
-	 * EIO if the GPU is already wedged.
-	 */
-	err = intel_gt_terminally_wedged(ce->engine->gt);
-	if (err)
-		return err;
+	if (reloc_can_use_engine(engine)) {
+		eb->reloc_cache.ce = eb->context;
+		return 0;
+	}
 
-	if (unlikely(intel_context_is_banned(ce)))
-		return -EIO;
+	engine = engine->gt->engine_class[COPY_ENGINE_CLASS][0];
+	if (!engine)
+		return -ENODEV;
+
+	ce = intel_context_create(engine);
+	if (IS_ERR(ce))
+		return PTR_ERR(ce);
+
+	/* Reuse eb->context->timeline with scheduler! */
+
+	i915_vm_put(ce->vm);
+	ce->vm = i915_vm_get(eb->context->vm);
 
-	/*
-	 * Pinning the contexts may generate requests in order to acquire
-	 * GGTT space, so do this first before we reserve a seqno for
-	 * ourselves.
-	 */
 	err = intel_context_pin(ce);
 	if (err)
 		return err;
 
+	eb->reloc_cache.ce = ce;
+	return 0;
+}
+
+static void __eb_unpin_reloc_engine(struct i915_execbuffer *eb)
+{
+	struct intel_context *ce = eb->reloc_cache.ce;
+
+	if (ce == eb->context)
+		return;
+
+	intel_context_unpin(ce);
+	intel_context_put(ce);
+}
+
+static int eb_lock_engine(struct i915_execbuffer *eb)
+{
+	struct intel_context *ce = eb->context;
+	struct intel_timeline *tl;
+	struct i915_request *rq;
+	int err;
+
 	/*
 	 * Take a local wakeref for preparing to dispatch the execbuf as
 	 * we expect to access the hardware fairly frequently in the
@@ -2078,17 +2149,17 @@ static int __eb_pin_engine(struct i915_execbuffer *eb, struct intel_context *ce)
 	 * taken on the engine, and the parent device.
 	 */
 	tl = intel_context_timeline_lock(ce);
-	if (IS_ERR(tl)) {
-		err = PTR_ERR(tl);
-		goto err_unpin;
-	}
+	if (IS_ERR(tl))
+		return PTR_ERR(tl);
 
 	intel_context_enter(ce);
-	rq = eb_throttle(ce);
-
-	intel_context_timeline_unlock(tl);
 
-	if (rq) {
+	/*
+	 * Before we begin, make sure there is enough space in the ring to
+	 * build the mightiest of requests, and to ratelimits those hogs
+	 * who do succeed in flooding the rings.
+	 */
+	while ((rq = eb_throttle(ce))) {
 		bool nonblock = eb->file->filp->f_flags & O_NONBLOCK;
 		long timeout;
 
@@ -2096,40 +2167,51 @@ static int __eb_pin_engine(struct i915_execbuffer *eb, struct intel_context *ce)
 		if (nonblock)
 			timeout = 0;
 
+		mutex_unlock(&tl->mutex);
+
 		timeout = i915_request_wait(rq,
 					    I915_WAIT_INTERRUPTIBLE,
 					    timeout);
 		i915_request_put(rq);
 
+		mutex_lock(&tl->mutex);
+
 		if (timeout < 0) {
 			err = nonblock ? -EWOULDBLOCK : timeout;
 			goto err_exit;
 		}
+
+		retire_requests(tl);
 	}
 
-	eb->engine = ce->engine;
-	eb->context = ce;
+	err = __eb_pin_reloc_engine(eb);
+	if (err)
+		goto err_exit;
+
 	return 0;
 
 err_exit:
-	mutex_lock(&tl->mutex);
 	intel_context_exit(ce);
 	intel_context_timeline_unlock(tl);
-err_unpin:
-	intel_context_unpin(ce);
 	return err;
 }
 
-static void eb_unpin_engine(struct i915_execbuffer *eb)
+static void eb_unlock_engine(struct i915_execbuffer *eb)
 {
 	struct intel_context *ce = eb->context;
-	struct intel_timeline *tl = ce->timeline;
 
-	mutex_lock(&tl->mutex);
+	__eb_unpin_reloc_engine(eb);
+
+	/* Try to clean up the client's timeline after submitting the request */
+	retire_requests(ce->timeline);
+
 	intel_context_exit(ce);
-	mutex_unlock(&tl->mutex);
+	intel_context_timeline_unlock(ce->timeline);
+}
 
-	intel_context_unpin(ce);
+static void eb_unpin_engine(struct i915_execbuffer *eb)
+{
+	intel_context_unpin(eb->context);
 }
 
 static unsigned int
@@ -2176,6 +2258,35 @@ eb_select_legacy_ring(struct i915_execbuffer *eb,
 	return user_ring_map[user_ring_id];
 }
 
+static int __eb_pin_engine(struct i915_execbuffer *eb, struct intel_context *ce)
+{
+	int err;
+
+	/*
+	 * ABI: Before userspace accesses the GPU (e.g. execbuffer), report
+	 * EIO if the GPU is already wedged.
+	 */
+	err = intel_gt_terminally_wedged(ce->engine->gt);
+	if (err)
+		return err;
+
+	if (unlikely(intel_context_is_banned(ce)))
+		return -EIO;
+
+	/*
+	 * Pinning the contexts may generate requests in order to acquire
+	 * GGTT space, so do this first before we reserve a seqno for
+	 * ourselves.
+	 */
+	err = intel_context_pin(ce);
+	if (err)
+		return err;
+
+	eb->engine = ce->engine;
+	eb->context = ce;
+	return 0;
+}
+
 static int
 eb_pin_engine(struct i915_execbuffer *eb,
 	      struct drm_file *file,
@@ -2329,28 +2440,18 @@ signal_fence_array(struct i915_execbuffer *eb,
 	}
 }
 
-static void retire_requests(struct intel_timeline *tl, struct i915_request *end)
-{
-	struct i915_request *rq, *rn;
-
-	list_for_each_entry_safe(rq, rn, &tl->requests, link)
-		if (rq == end || !i915_request_retire(rq))
-			break;
-}
-
 static void eb_request_add(struct i915_execbuffer *eb)
 {
 	struct i915_request *rq = eb->request;
 	struct intel_timeline * const tl = i915_request_timeline(rq);
 	struct i915_sched_attr attr = {};
-	struct i915_request *prev;
 
 	lockdep_assert_held(&tl->mutex);
 	lockdep_unpin_lock(&tl->mutex, rq->cookie);
 
 	trace_i915_request_add(rq);
 
-	prev = __i915_request_commit(rq);
+	__i915_request_commit(rq);
 
 	/* Check that the context wasn't destroyed before submission */
 	if (likely(!intel_context_is_closed(eb->context))) {
@@ -2362,12 +2463,6 @@ static void eb_request_add(struct i915_execbuffer *eb)
 	}
 
 	__i915_request_queue(rq, &attr);
-
-	/* Try to clean up the client's timeline after submitting the request */
-	if (prev)
-		retire_requests(tl, prev);
-
-	mutex_unlock(&tl->mutex);
 }
 
 static int
@@ -2455,6 +2550,12 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	if (unlikely(err))
 		goto err_context;
 
+	/* *** TIMELINE LOCK *** */
+	err = eb_lock_engine(&eb);
+	if (unlikely(err))
+		goto err_engine;
+	lockdep_assert_held(&eb.context->timeline->mutex);
+
 	err = eb_relocate(&eb);
 	if (err) {
 		/*
@@ -2521,11 +2622,12 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	GEM_BUG_ON(eb.reloc_cache.rq);
 
 	/* Allocate a request for this batch buffer nice and early. */
-	eb.request = i915_request_create(eb.context);
+	eb.request = __i915_request_create(eb.context, GFP_KERNEL);
 	if (IS_ERR(eb.request)) {
 		err = PTR_ERR(eb.request);
 		goto err_batch_unpin;
 	}
+	eb.request->cookie = lockdep_pin_lock(&eb.context->timeline->mutex);
 
 	if (in_fence) {
 		if (args->flags & I915_EXEC_FENCE_SUBMIT)
@@ -2567,23 +2669,13 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	trace_i915_request_queue(eb.request, eb.batch_flags);
 	err = eb_submit(&eb, batch);
 err_request:
-	add_to_client(eb.request, file);
 	i915_request_get(eb.request);
 	eb_request_add(&eb);
 
 	if (fences)
 		signal_fence_array(&eb, fences);
 
-	if (out_fence) {
-		if (err == 0) {
-			fd_install(out_fence_fd, out_fence->file);
-			args->rsvd2 &= GENMASK_ULL(31, 0); /* keep in-fence */
-			args->rsvd2 |= (u64)out_fence_fd << 32;
-			out_fence_fd = -1;
-		} else {
-			fput(out_fence->file);
-		}
-	}
+	add_to_client(eb.request, file);
 	i915_request_put(eb.request);
 
 err_batch_unpin:
@@ -2595,12 +2687,25 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 err_vma:
 	if (eb.trampoline)
 		i915_vma_unpin(eb.trampoline);
+	eb_unlock_engine(&eb);
+	/* *** TIMELINE UNLOCK *** */
+err_engine:
 	eb_unpin_engine(&eb);
 err_context:
 	i915_gem_context_put(eb.gem_context);
 err_destroy:
 	eb_destroy(&eb);
 err_out_fence:
+	if (out_fence) {
+		if (err == 0) {
+			fd_install(out_fence_fd, out_fence->file);
+			args->rsvd2 &= GENMASK_ULL(31, 0); /* keep in-fence */
+			args->rsvd2 |= (u64)out_fence_fd << 32;
+			out_fence_fd = -1;
+		} else {
+			fput(out_fence->file);
+		}
+	}
 	if (out_fence_fd != -1)
 		put_unused_fd(out_fence_fd);
 err_in_fence:
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
index 57c14d3340cd..992d46db1b33 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
@@ -7,6 +7,9 @@
 
 #include "gt/intel_engine_pm.h"
 #include "selftests/igt_flush_test.h"
+#include "selftests/mock_drm.h"
+
+#include "mock_context.h"
 
 static u64 read_reloc(const u32 *map, int x, const u64 mask)
 {
@@ -60,7 +63,7 @@ static int __igt_gpu_reloc(struct i915_execbuffer *eb,
 
 	GEM_BUG_ON(!eb->reloc_cache.rq);
 	rq = i915_request_get(eb->reloc_cache.rq);
-	err = reloc_gpu_flush(&eb->reloc_cache);
+	err = reloc_gpu_flush(eb);
 	if (err)
 		goto put_rq;
 	GEM_BUG_ON(eb->reloc_cache.rq);
@@ -100,14 +103,22 @@ static int igt_gpu_reloc(void *arg)
 {
 	struct i915_execbuffer eb;
 	struct drm_i915_gem_object *scratch;
+	struct file *file;
 	int err = 0;
 	u32 *map;
 
+	file = mock_file(arg);
+	if (IS_ERR(file))
+		return PTR_ERR(file);
+
 	eb.i915 = arg;
+	eb.gem_context = live_context(arg, file);
+	if (IS_ERR(eb.gem_context))
+		goto err_file;
 
 	scratch = i915_gem_object_create_internal(eb.i915, 4096);
 	if (IS_ERR(scratch))
-		return PTR_ERR(scratch);
+		goto err_file;
 
 	map = i915_gem_object_pin_map(scratch, I915_MAP_WC);
 	if (IS_ERR(map)) {
@@ -130,8 +141,15 @@ static int igt_gpu_reloc(void *arg)
 		if (err)
 			goto err_put;
 
+		mutex_lock(&eb.context->timeline->mutex);
+		intel_context_enter(eb.context);
+		eb.reloc_cache.ce = eb.context;
+
 		err = __igt_gpu_reloc(&eb, scratch);
 
+		intel_context_exit(eb.context);
+		mutex_unlock(&eb.context->timeline->mutex);
+
 		intel_context_unpin(eb.context);
 err_put:
 		intel_context_put(eb.context);
@@ -146,6 +164,8 @@ static int igt_gpu_reloc(void *arg)
 
 err_scratch:
 	i915_gem_object_put(scratch);
+err_file:
+	fput(file);
 	return err;
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
