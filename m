Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA16B14D850
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 10:39:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B803F6F93A;
	Thu, 30 Jan 2020 09:39:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 972 seconds by postgrey-1.36 at gabe;
 Thu, 30 Jan 2020 09:39:19 UTC
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9589A6F93A
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 09:39:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20056445-1500050 
 for multiple; Thu, 30 Jan 2020 09:22:42 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Jan 2020 09:22:39 +0000
Message-Id: <20200130092239.1743672-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200130092239.1743672-1-chris@chris-wilson.co.uk>
References: <20200130092239.1743672-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Use the async worker to avoid
 reclaim tainting the ggtt->mutex
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

On Braswell and Broxton (also known as Valleyview and Apollolake), we
need to serialise updates of the GGTT using the big stop_machine()
hammer. This has the side effect of appearing to lockdep as a possible
reclaim (since it uses the cpuhp mutex and that is tainted by per-cpu
allocations). However, we want to use vm->mutex (including ggtt->mutex)
from wthin the shrinker and so must avoid such possible taints. For this
purpose, we introduced the asynchronous vma binding and we can apply it
to the PIN_GLOBAL so long as take care to add the necessary waits for
the worker afterwards.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/211
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c |  7 ++---
 drivers/gpu/drm/i915/gt/intel_ggtt.c      |  1 +
 drivers/gpu/drm/i915/gt/intel_gt.c        |  2 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c       |  2 +-
 drivers/gpu/drm/i915/gt/intel_ring.c      |  6 ++--
 drivers/gpu/drm/i915/gt/intel_timeline.c  |  4 +--
 drivers/gpu/drm/i915/gt/uc/intel_guc.c    |  4 +--
 drivers/gpu/drm/i915/i915_active.c        | 10 ++++--
 drivers/gpu/drm/i915/i915_active.h        |  3 +-
 drivers/gpu/drm/i915/i915_gem.c           |  6 ++++
 drivers/gpu/drm/i915/i915_vma.c           | 38 +++++++++++++++++++++--
 drivers/gpu/drm/i915/i915_vma.h           |  2 ++
 12 files changed, 65 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 8707d7264490..449bf7770300 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -527,7 +527,6 @@ static int pin_ggtt_status_page(struct intel_engine_cs *engine,
 {
 	unsigned int flags;
 
-	flags = PIN_GLOBAL;
 	if (!HAS_LLC(engine->i915) && i915_ggtt_has_aperture(engine->gt->ggtt))
 		/*
 		 * On g33, we cannot place HWS above 256MiB, so
@@ -540,11 +539,11 @@ static int pin_ggtt_status_page(struct intel_engine_cs *engine,
 		 * above the mappable region (even though we never
 		 * actually map it).
 		 */
-		flags |= PIN_MAPPABLE;
+		flags = PIN_MAPPABLE;
 	else
-		flags |= PIN_HIGH;
+		flags = PIN_HIGH;
 
-	return i915_vma_pin(vma, 0, 0, flags);
+	return i915_ggtt_pin(vma, 0, flags);
 }
 
 static int init_status_page(struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 81a63f7bc6c4..34211ca85531 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -854,6 +854,7 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 	    IS_CHERRYVIEW(i915) /* fails with concurrent use/update */) {
 		ggtt->vm.insert_entries = bxt_vtd_ggtt_insert_entries__BKL;
 		ggtt->vm.insert_page    = bxt_vtd_ggtt_insert_page__BKL;
+		ggtt->vm.bind_async_flags = I915_VMA_GLOBAL_BIND;
 	}
 
 	ggtt->invalidate = gen8_ggtt_invalidate;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 143268083135..bf6c0f949e35 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -345,7 +345,7 @@ static int intel_gt_init_scratch(struct intel_gt *gt, unsigned int size)
 		goto err_unref;
 	}
 
-	ret = i915_vma_pin(vma, 0, 0, PIN_GLOBAL | PIN_HIGH);
+	ret = i915_ggtt_pin(vma, 0, PIN_HIGH);
 	if (ret)
 		goto err_unref;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 9a0d0282f3ca..5906fc7df2a4 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3263,7 +3263,7 @@ static int lrc_setup_wa_ctx(struct intel_engine_cs *engine)
 		goto err;
 	}
 
-	err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL | PIN_HIGH);
+	err = i915_ggtt_pin(vma, 0, PIN_HIGH);
 	if (err)
 		goto err;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ring.c b/drivers/gpu/drm/i915/gt/intel_ring.c
index 374b28f13ca0..366013367526 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring.c
@@ -31,17 +31,15 @@ int intel_ring_pin(struct intel_ring *ring)
 	if (atomic_fetch_inc(&ring->pin_count))
 		return 0;
 
-	flags = PIN_GLOBAL;
-
 	/* Ring wraparound at offset 0 sometimes hangs. No idea why. */
-	flags |= PIN_OFFSET_BIAS | i915_ggtt_pin_bias(vma);
+	flags = PIN_OFFSET_BIAS | i915_ggtt_pin_bias(vma);
 
 	if (vma->obj->stolen)
 		flags |= PIN_MAPPABLE;
 	else
 		flags |= PIN_HIGH;
 
-	ret = i915_vma_pin(vma, 0, 0, flags);
+	ret = i915_ggtt_pin(vma, 0, flags);
 	if (unlikely(ret))
 		goto err_unpin;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
index 87716529cd2f..465f87b65901 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.c
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
@@ -308,7 +308,7 @@ int intel_timeline_pin(struct intel_timeline *tl)
 	if (atomic_add_unless(&tl->pin_count, 1, 0))
 		return 0;
 
-	err = i915_vma_pin(tl->hwsp_ggtt, 0, 0, PIN_GLOBAL | PIN_HIGH);
+	err = i915_ggtt_pin(tl->hwsp_ggtt, 0, PIN_HIGH);
 	if (err)
 		return err;
 
@@ -431,7 +431,7 @@ __intel_timeline_get_seqno(struct intel_timeline *tl,
 		goto err_rollback;
 	}
 
-	err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL | PIN_HIGH);
+	err = i915_ggtt_pin(vma, 0, PIN_HIGH);
 	if (err) {
 		__idle_hwsp_free(vma->private, cacheline);
 		goto err_rollback;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 5d00a3b2d914..c4c1523da7a6 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -678,8 +678,8 @@ struct i915_vma *intel_guc_allocate_vma(struct intel_guc *guc, u32 size)
 	if (IS_ERR(vma))
 		goto err;
 
-	flags = PIN_GLOBAL | PIN_OFFSET_BIAS | i915_ggtt_pin_bias(vma);
-	ret = i915_vma_pin(vma, 0, 0, flags);
+	flags = PIN_OFFSET_BIAS | i915_ggtt_pin_bias(vma);
+	ret = i915_ggtt_pin(vma, 0, flags);
 	if (ret) {
 		vma = ERR_PTR(ret);
 		goto err;
diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index 3d2e7cf55e52..da58e5d084f4 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -390,13 +390,19 @@ int i915_active_ref(struct i915_active *ref,
 	return err;
 }
 
-void i915_active_set_exclusive(struct i915_active *ref, struct dma_fence *f)
+struct dma_fence *
+i915_active_set_exclusive(struct i915_active *ref, struct dma_fence *f)
 {
+	struct dma_fence *prev;
+
 	/* We expect the caller to manage the exclusive timeline ordering */
 	GEM_BUG_ON(i915_active_is_idle(ref));
 
-	if (!__i915_active_fence_set(&ref->excl, f))
+	prev = __i915_active_fence_set(&ref->excl, f);
+	if (!prev)
 		atomic_inc(&ref->count);
+
+	return prev;
 }
 
 bool i915_active_acquire_if_busy(struct i915_active *ref)
diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
index 51e1e854ca55..973ff0447c6c 100644
--- a/drivers/gpu/drm/i915/i915_active.h
+++ b/drivers/gpu/drm/i915/i915_active.h
@@ -173,7 +173,8 @@ i915_active_add_request(struct i915_active *ref, struct i915_request *rq)
 	return i915_active_ref(ref, i915_request_timeline(rq), &rq->fence);
 }
 
-void i915_active_set_exclusive(struct i915_active *ref, struct dma_fence *f);
+struct dma_fence *
+i915_active_set_exclusive(struct i915_active *ref, struct dma_fence *f);
 
 static inline bool i915_active_has_exclusive(struct i915_active *ref)
 {
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index ff79da5657f8..dda1a0365f39 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1009,6 +1009,12 @@ i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
 	if (ret)
 		return ERR_PTR(ret);
 
+	ret = i915_vma_wait_for_bind(vma);
+	if (ret) {
+		i915_vma_unpin(vma);
+		return ERR_PTR(ret);
+	}
+
 	return vma;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 84e03da0d5f9..f5dc84e3fef8 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -294,6 +294,7 @@ struct i915_vma_work {
 	struct dma_fence_work base;
 	struct i915_vma *vma;
 	struct drm_i915_gem_object *pinned;
+	struct i915_sw_dma_fence_cb cb;
 	enum i915_cache_level cache_level;
 	unsigned int flags;
 };
@@ -339,6 +340,25 @@ struct i915_vma_work *i915_vma_work(void)
 	return vw;
 }
 
+int i915_vma_wait_for_bind(struct i915_vma *vma)
+{
+	int err = 0;
+
+	if (rcu_access_pointer(vma->active.excl.fence)) {
+		struct dma_fence *fence;
+
+		rcu_read_lock();
+		fence = dma_fence_get_rcu_safe(&vma->active.excl.fence);
+		rcu_read_unlock();
+		if (fence) {
+			err = dma_fence_wait(fence, MAX_SCHEDULE_TIMEOUT);
+			dma_fence_put(fence);
+		}
+	}
+
+	return err;
+}
+
 /**
  * i915_vma_bind - Sets up PTEs for an VMA in it's corresponding address space.
  * @vma: VMA to map
@@ -386,6 +406,8 @@ int i915_vma_bind(struct i915_vma *vma,
 
 	trace_i915_vma_bind(vma, bind_flags);
 	if (work && (bind_flags & ~vma_flags) & vma->vm->bind_async_flags) {
+		struct dma_fence *prev;
+
 		work->vma = vma;
 		work->cache_level = cache_level;
 		work->flags = bind_flags | I915_VMA_ALLOC;
@@ -399,8 +421,12 @@ int i915_vma_bind(struct i915_vma *vma,
 		 * part of the obj->resv->excl_fence as it only affects
 		 * execution and not content or object's backing store lifetime.
 		 */
-		GEM_BUG_ON(i915_active_has_exclusive(&vma->active));
-		i915_active_set_exclusive(&vma->active, &work->base.dma);
+		prev = i915_active_set_exclusive(&vma->active, &work->base.dma);
+		if (prev)
+			__i915_sw_fence_await_dma_fence(&work->base.chain,
+							prev,
+							&work->cb);
+
 		work->base.dma.error = 0; /* enable the queue_work() */
 
 		if (vma->obj) {
@@ -977,8 +1003,14 @@ int i915_ggtt_pin(struct i915_vma *vma, u32 align, unsigned int flags)
 
 	do {
 		err = i915_vma_pin(vma, 0, align, flags | PIN_GLOBAL);
-		if (err != -ENOSPC)
+		if (err != -ENOSPC) {
+			if (!err) {
+				err = i915_vma_wait_for_bind(vma);
+				if (err)
+					i915_vma_unpin(vma);
+			}
 			return err;
+		}
 
 		/* Unlike i915_vma_pin, we don't take no for an answer! */
 		flush_idle_contexts(vm->gt);
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index 02b31a62951e..e1ced1df13e1 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -375,6 +375,8 @@ struct i915_vma *i915_vma_make_unshrinkable(struct i915_vma *vma);
 void i915_vma_make_shrinkable(struct i915_vma *vma);
 void i915_vma_make_purgeable(struct i915_vma *vma);
 
+int i915_vma_wait_for_bind(struct i915_vma *vma);
+
 static inline int i915_vma_sync(struct i915_vma *vma)
 {
 	/* Wait for the asynchronous bindings and pending GPU reads */
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
