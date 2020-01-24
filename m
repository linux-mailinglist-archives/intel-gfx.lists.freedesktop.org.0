Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB25147CD6
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 10:55:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A613B7206F;
	Fri, 24 Jan 2020 09:55:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACD586FFFF
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 09:55:26 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 10:55:21 +0100
Message-Id: <20200124095521.2006632-14-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200124095521.2006632-1-maarten.lankhorst@linux.intel.com>
References: <20200124095521.2006632-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/13] drm/i915: Make sure execbuffer always
 passes ww state to i915_vma_pin.
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

As a preparation step for full object locking and wait/wound handling
during pin and object mapping, ensure that we always pass the ww context
in i915_gem_execbuffer.c to i915_vma_pin, use lockdep to ensure this
happens.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  4 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 20 +++---
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |  4 +-
 drivers/gpu/drm/i915/gt/gen6_ppgtt.h          |  4 +-
 drivers/gpu/drm/i915/gt/intel_context.c       | 65 ++++++++++++-------
 drivers/gpu/drm/i915/gt/intel_context.h       | 13 ++++
 drivers/gpu/drm/i915/gt/intel_context_types.h |  3 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  3 +-
 drivers/gpu/drm/i915/gt/intel_renderstate.c   |  2 +-
 drivers/gpu/drm/i915/gt/intel_ring.c          | 10 ++-
 drivers/gpu/drm/i915/gt/intel_ring.h          |  3 +-
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 15 ++---
 drivers/gpu/drm/i915/gt/intel_timeline.c      | 10 ++-
 drivers/gpu/drm/i915/gt/intel_timeline.h      |  3 +-
 drivers/gpu/drm/i915/gt/mock_engine.c         |  3 +-
 drivers/gpu/drm/i915/gt/selftest_timeline.c   |  4 +-
 drivers/gpu/drm/i915/i915_vma.c               | 13 +++-
 drivers/gpu/drm/i915/i915_vma.h               | 13 +++-
 19 files changed, 129 insertions(+), 65 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 8e73b21788da..172085d010de 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -969,7 +969,7 @@ static int context_barrier_task(struct i915_gem_context *ctx,
 
 		i915_gem_ww_ctx_init(&ww, true);
 retry:
-		err = intel_context_pin(ce);
+		err = intel_context_pin_ww(ce, &ww);
 		if (err)
 			goto err;
 
@@ -1062,7 +1062,7 @@ static int pin_ppgtt_update(struct intel_context *ce, struct i915_gem_ww_ctx *ww
 
 	if (!HAS_LOGICAL_RING_CONTEXTS(vm->i915))
 		/* ppGTT is not part of the legacy context image */
-		return gen6_ppgtt_pin(i915_vm_to_ppgtt(vm));
+		return gen6_ppgtt_pin(i915_vm_to_ppgtt(vm), ww);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index abc84c5e390d..3769873914ae 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -395,7 +395,7 @@ eb_pin_vma(struct i915_execbuffer *eb,
 	if (unlikely(ev->flags & EXEC_OBJECT_NEEDS_GTT))
 		pin_flags |= PIN_GLOBAL;
 
-	if (unlikely(i915_vma_pin(vma, 0, 0, pin_flags)))
+	if (unlikely(i915_vma_pin_ww(vma, &eb->ww, 0, 0, pin_flags)))
 		return false;
 
 	if (unlikely(ev->flags & EXEC_OBJECT_NEEDS_FENCE)) {
@@ -549,7 +549,7 @@ static inline int use_cpu_reloc(const struct reloc_cache *cache,
 		obj->cache_level != I915_CACHE_NONE);
 }
 
-static int eb_reserve_vma(const struct i915_execbuffer *eb, struct eb_vma *ev)
+static int eb_reserve_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 {
 	struct drm_i915_gem_exec_object2 *entry = ev->exec;
 	unsigned int exec_flags = ev->flags;
@@ -578,7 +578,7 @@ static int eb_reserve_vma(const struct i915_execbuffer *eb, struct eb_vma *ev)
 		pin_flags |= BATCH_OFFSET_BIAS | PIN_OFFSET_BIAS;
 	}
 
-	err = i915_vma_pin(vma,
+	err = i915_vma_pin_ww(vma, &eb->ww,
 			   entry->pad_to_size, entry->alignment,
 			   pin_flags);
 	if (err)
@@ -1180,7 +1180,7 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 		goto err_unmap;
 	}
 
-	err = i915_vma_pin(batch, 0, 0, PIN_USER | PIN_NONBLOCK);
+	err = i915_vma_pin_ww(batch, &eb->ww, 0, 0, PIN_USER | PIN_NONBLOCK);
 	if (err)
 		goto err_unmap;
 
@@ -1763,6 +1763,7 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb,
 	rq = eb_pin_engine(eb);
 	if (IS_ERR(rq)) {
 		err = PTR_ERR(rq);
+		rq = NULL;
 		goto err;
 	}
 
@@ -2031,7 +2032,8 @@ static int i915_reset_gen7_sol_offsets(struct i915_request *rq)
 }
 
 static struct i915_vma *
-shadow_batch_pin(struct drm_i915_gem_object *obj,
+shadow_batch_pin(struct i915_execbuffer *eb,
+		 struct drm_i915_gem_object *obj,
 		 struct i915_address_space *vm,
 		 unsigned int flags)
 {
@@ -2042,7 +2044,7 @@ shadow_batch_pin(struct drm_i915_gem_object *obj,
 	if (IS_ERR(vma))
 		return vma;
 
-	err = i915_vma_pin(vma, 0, 0, flags);
+	err = i915_vma_pin_ww(vma, &eb->ww, 0, 0, flags);
 	if (err)
 		return ERR_PTR(err);
 
@@ -2186,7 +2188,7 @@ static int eb_parse(struct i915_execbuffer *eb)
 	if (err)
 		goto err;
 
-	shadow = shadow_batch_pin(pool->obj, eb->context->vm, PIN_USER);
+	shadow = shadow_batch_pin(eb, pool->obj, eb->context->vm, PIN_USER);
 	if (IS_ERR(shadow)) {
 		err = PTR_ERR(shadow);
 		goto err;
@@ -2197,7 +2199,7 @@ static int eb_parse(struct i915_execbuffer *eb)
 	if (CMDPARSER_USES_GGTT(eb->i915)) {
 		trampoline = shadow;
 
-		shadow = shadow_batch_pin(pool->obj,
+		shadow = shadow_batch_pin(eb, pool->obj,
 					  &eb->engine->gt->ggtt->vm,
 					  PIN_GLOBAL);
 		if (IS_ERR(shadow)) {
@@ -2384,7 +2386,7 @@ static struct i915_request *eb_pin_engine(struct i915_execbuffer *eb)
 	 * GGTT space, so do this first before we reserve a seqno for
 	 * ourselves.
 	 */
-	err = intel_context_pin(ce);
+	err = intel_context_pin_ww(ce, &eb->ww);
 	if (err)
 		return ERR_PTR(err);
 
diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index f4fec7eb4064..8248efa9229f 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -376,7 +376,7 @@ static struct i915_vma *pd_vma_create(struct gen6_ppgtt *ppgtt, int size)
 	return vma;
 }
 
-int gen6_ppgtt_pin(struct i915_ppgtt *base)
+int gen6_ppgtt_pin(struct i915_ppgtt *base, struct i915_gem_ww_ctx *ww)
 {
 	struct gen6_ppgtt *ppgtt = to_gen6_ppgtt(base);
 	int err;
@@ -402,7 +402,7 @@ int gen6_ppgtt_pin(struct i915_ppgtt *base)
 	 */
 	err = 0;
 	if (!atomic_read(&ppgtt->pin_count))
-		err = i915_ggtt_pin(ppgtt->vma, GEN6_PD_ALIGN, PIN_HIGH);
+		err = i915_ggtt_pin(ppgtt->vma, ww, GEN6_PD_ALIGN, PIN_HIGH);
 	if (!err)
 		atomic_inc(&ppgtt->pin_count);
 	mutex_unlock(&ppgtt->pin_mutex);
diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.h b/drivers/gpu/drm/i915/gt/gen6_ppgtt.h
index 72e481806c96..00032a931bae 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.h
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.h
@@ -8,6 +8,8 @@
 
 #include "intel_gtt.h"
 
+struct i915_gem_ww_ctx;
+
 struct gen6_ppgtt {
 	struct i915_ppgtt base;
 
@@ -66,7 +68,7 @@ static inline struct gen6_ppgtt *to_gen6_ppgtt(struct i915_ppgtt *base)
 		     (pt = i915_pt_entry(pd, iter), true);		\
 	     ++iter)
 
-int gen6_ppgtt_pin(struct i915_ppgtt *base);
+int gen6_ppgtt_pin(struct i915_ppgtt *base, struct i915_gem_ww_ctx *ww);
 void gen6_ppgtt_unpin(struct i915_ppgtt *base);
 void gen6_ppgtt_unpin_all(struct i915_ppgtt *base);
 void gen6_ppgtt_enable(struct intel_gt *gt);
diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index 1466e990c7d3..607fe997ef9d 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -91,12 +91,12 @@ static void intel_context_active_release(struct intel_context *ce)
 	i915_active_release(&ce->active);
 }
 
-static int __context_pin_state(struct i915_vma *vma)
+static int __context_pin_state(struct i915_vma *vma, struct i915_gem_ww_ctx *ww)
 {
 	unsigned int bias = i915_ggtt_pin_bias(vma) | PIN_OFFSET_BIAS;
 	int err;
 
-	err = i915_ggtt_pin(vma, 0, bias | PIN_HIGH);
+	err = i915_ggtt_pin(vma, ww, 0, bias | PIN_HIGH);
 	if (err)
 		return err;
 
@@ -125,7 +125,8 @@ static void __context_unpin_state(struct i915_vma *vma)
 	__i915_vma_unpin(vma);
 }
 
-static int __ring_active(struct intel_ring *ring)
+static int __ring_active(struct intel_ring *ring,
+			 struct i915_gem_ww_ctx *ww)
 {
 	int err;
 
@@ -133,7 +134,7 @@ static int __ring_active(struct intel_ring *ring)
 	if (err)
 		return err;
 
-	err = intel_ring_pin(ring);
+	err = intel_ring_pin(ring, ww);
 	if (err)
 		goto err_active;
 
@@ -150,24 +151,25 @@ static void __ring_retire(struct intel_ring *ring)
 	i915_active_release(&ring->vma->active);
 }
 
-static int intel_context_pre_pin(struct intel_context *ce)
+static int intel_context_pre_pin(struct intel_context *ce,
+				 struct i915_gem_ww_ctx *ww)
 {
 	int err;
 
 	CE_TRACE(ce, "active\n");
 
-	err = __ring_active(ce->ring);
+	err = __ring_active(ce->ring, ww);
 	if (err)
 		return err;
 
-	err = intel_timeline_pin(ce->timeline);
+	err = intel_timeline_pin(ce->timeline, ww);
 	if (err)
 		goto err_ring;
 
 	if (!ce->state)
 		return 0;
 
-	err = __context_pin_state(ce->state);
+	err = __context_pin_state(ce->state, ww);
 	if (err)
 		goto err_timeline;
 
@@ -189,7 +191,8 @@ static void intel_context_post_unpin(struct intel_context *ce)
 	__ring_retire(ce->ring);
 }
 
-int __intel_context_do_pin(struct intel_context *ce)
+int __intel_context_do_pin_ww(struct intel_context *ce,
+			      struct i915_gem_ww_ctx *ww)
 {
 	bool handoff = false;
 	void *vaddr;
@@ -206,11 +209,18 @@ int __intel_context_do_pin(struct intel_context *ce)
 	 * refcount for __intel_context_active(), which prevent a lock
 	 * inversion of ce->pin_mutex vs dma_resv_lock().
 	 */
-	err = intel_context_pre_pin(ce);
+
+	err = i915_gem_object_lock(ce->ring->vma->obj, ww);
+	if (!err)
+		err = i915_gem_object_lock(ce->timeline->hwsp_ggtt->obj, ww);
+	if (!err)
+		err = i915_gem_object_lock(ce->state->obj, ww);
+	if (!err)
+		err = intel_context_pre_pin(ce, ww);
 	if (err)
 		return err;
 
-	err = ce->ops->pre_pin(ce, &vaddr);
+	err = ce->ops->pre_pin(ce, ww, &vaddr);
 	if (err)
 		goto err_ctx_unpin;
 
@@ -249,6 +259,23 @@ int __intel_context_do_pin(struct intel_context *ce)
 	return err;
 }
 
+int __intel_context_do_pin(struct intel_context *ce)
+{
+	struct i915_gem_ww_ctx ww;
+	int err;
+
+	i915_gem_ww_ctx_init(&ww, true);
+retry:
+	err = __intel_context_do_pin_ww(ce, &ww);
+	if (err == -EDEADLK) {
+		err = i915_gem_ww_ctx_backoff(&ww);
+		if (!err)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&ww);
+	return err;
+}
+
 void intel_context_unpin(struct intel_context *ce)
 {
 	if (!atomic_dec_and_test(&ce->pin_count))
@@ -285,18 +312,14 @@ __i915_active_call
 static int __intel_context_active(struct i915_active *active)
 {
 	struct intel_context *ce = container_of(active, typeof(*ce), active);
-	int err;
 
 	intel_context_get(ce);
 
 	/* everything should already be activated by intel_context_pre_pin() */
-	err = __ring_active(ce->ring);
-	if (GEM_WARN_ON(err))
-		goto err_put;
+	GEM_WARN_ON(!i915_active_acquire_if_busy(&ce->ring->vma->active));
+	__intel_ring_pin(ce->ring);
 
-	err = intel_timeline_pin(ce->timeline);
-	if (GEM_WARN_ON(err))
-		goto err_ring;
+	__intel_timeline_pin(ce->timeline);
 
 	if (ce->state) {
 		GEM_WARN_ON(!i915_active_acquire_if_busy(&ce->state->active));
@@ -305,12 +328,6 @@ static int __intel_context_active(struct i915_active *active)
 	}
 
 	return 0;
-
-err_ring:
-	__ring_retire(ce->ring);
-err_put:
-	intel_context_put(ce);
-	return err;
 }
 
 void
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index 30bd248827d8..a18c261ce2f5 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -24,6 +24,8 @@
 		     ##__VA_ARGS__);					\
 } while (0)
 
+struct i915_gem_ww_ctx;
+
 void intel_context_init(struct intel_context *ce,
 			struct intel_engine_cs *engine);
 void intel_context_fini(struct intel_context *ce);
@@ -77,6 +79,8 @@ static inline void intel_context_unlock_pinned(struct intel_context *ce)
 }
 
 int __intel_context_do_pin(struct intel_context *ce);
+int __intel_context_do_pin_ww(struct intel_context *ce,
+			      struct i915_gem_ww_ctx *ww);
 
 static inline bool intel_context_pin_if_active(struct intel_context *ce)
 {
@@ -91,6 +95,15 @@ static inline int intel_context_pin(struct intel_context *ce)
 	return __intel_context_do_pin(ce);
 }
 
+static inline int intel_context_pin_ww(struct intel_context *ce,
+				       struct i915_gem_ww_ctx *ww)
+{
+	if (likely(intel_context_pin_if_active(ce)))
+		return 0;
+
+	return __intel_context_do_pin_ww(ce, ww);
+}
+
 static inline void __intel_context_pin(struct intel_context *ce)
 {
 	GEM_BUG_ON(!intel_context_is_pinned(ce));
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 65457354eb39..c5766baa40db 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -20,6 +20,7 @@
 #define CONTEXT_REDZONE POISON_INUSE
 
 struct i915_gem_context;
+struct i915_gem_ww_ctx;
 struct i915_vma;
 struct intel_context;
 struct intel_ring;
@@ -27,7 +28,7 @@ struct intel_ring;
 struct intel_context_ops {
 	int (*alloc)(struct intel_context *ce);
 
-	int (*pre_pin)(struct intel_context *ce, void **vaddr);
+	int (*pre_pin)(struct intel_context *ce, struct i915_gem_ww_ctx *ww, void **vaddr);
 	int (*pin)(struct intel_context *ce, void *vaddr);
 	void (*unpin)(struct intel_context *ce);
 	void (*post_unpin)(struct intel_context *ce);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 084abc577b14..20e042dc4e1b 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -663,7 +663,7 @@ static int measure_breadcrumb_dw(struct intel_engine_cs *engine)
 	frame->rq.ring = &frame->ring;
 	rcu_assign_pointer(frame->rq.timeline, &frame->timeline);
 
-	dw = intel_timeline_pin(&frame->timeline);
+	dw = intel_timeline_pin(&frame->timeline, NULL);
 	if (dw < 0)
 		goto out_timeline;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index e053ca88233a..b9f222dfc0ed 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2885,7 +2885,8 @@ __execlists_update_reg_state(const struct intel_context *ce,
 }
 
 static int
-execlists_context_pre_pin(struct intel_context *ce, void **vaddr)
+execlists_context_pre_pin(struct intel_context *ce,
+			  struct i915_gem_ww_ctx *ww, void **vaddr)
 {
 	GEM_BUG_ON(!ce->state);
 	GEM_BUG_ON(!i915_vma_is_pinned(ce->state));
diff --git a/drivers/gpu/drm/i915/gt/intel_renderstate.c b/drivers/gpu/drm/i915/gt/intel_renderstate.c
index 37c4c253942b..6fd946016628 100644
--- a/drivers/gpu/drm/i915/gt/intel_renderstate.c
+++ b/drivers/gpu/drm/i915/gt/intel_renderstate.c
@@ -195,7 +195,7 @@ int intel_renderstate_init(struct intel_renderstate *so,
 
 	i915_gem_ww_ctx_init(&so->ww, true);
 retry:
-	err = intel_context_pin(ce);
+	err = intel_context_pin_ww(ce, &so->ww);
 	if (err)
 		goto err_fini;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ring.c b/drivers/gpu/drm/i915/gt/intel_ring.c
index 374b28f13ca0..90e360a88c84 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring.c
@@ -21,7 +21,13 @@ unsigned int intel_ring_update_space(struct intel_ring *ring)
 	return space;
 }
 
-int intel_ring_pin(struct intel_ring *ring)
+void __intel_ring_pin(struct intel_ring *ring)
+{
+	GEM_BUG_ON(!atomic_read(&ring->pin_count));
+	atomic_inc(&ring->pin_count);
+}
+
+int intel_ring_pin(struct intel_ring *ring, struct i915_gem_ww_ctx *ww)
 {
 	struct i915_vma *vma = ring->vma;
 	unsigned int flags;
@@ -41,7 +47,7 @@ int intel_ring_pin(struct intel_ring *ring)
 	else
 		flags |= PIN_HIGH;
 
-	ret = i915_vma_pin(vma, 0, 0, flags);
+	ret = i915_vma_pin_ww(vma, ww, 0, 0, flags);
 	if (unlikely(ret))
 		goto err_unpin;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ring.h b/drivers/gpu/drm/i915/gt/intel_ring.h
index ea2839d9e044..df0bb51a13f5 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring.h
+++ b/drivers/gpu/drm/i915/gt/intel_ring.h
@@ -21,7 +21,8 @@ int intel_ring_cacheline_align(struct i915_request *rq);
 
 unsigned int intel_ring_update_space(struct intel_ring *ring);
 
-int intel_ring_pin(struct intel_ring *ring);
+void __intel_ring_pin(struct intel_ring *ring);
+int intel_ring_pin(struct intel_ring *ring, struct i915_gem_ww_ctx *ww);
 void intel_ring_unpin(struct intel_ring *ring);
 void intel_ring_reset(struct intel_ring *ring, u32 tail);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index cdadd9bb7d64..f26d9695d53b 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -1209,14 +1209,16 @@ static struct i915_address_space *vm_alias(struct intel_context *ce)
 	return vm;
 }
 
-static int __context_pin_ppgtt(struct intel_context *ce)
+static int ring_context_pre_pin(struct intel_context *ce,
+				struct i915_gem_ww_ctx *ww,
+				void **unused)
 {
 	struct i915_address_space *vm;
 	int err = 0;
 
 	vm = vm_alias(ce);
 	if (vm)
-		err = gen6_ppgtt_pin(i915_vm_to_ppgtt((vm)));
+		err = gen6_ppgtt_pin(i915_vm_to_ppgtt((vm)), ww);
 
 	return err;
 }
@@ -1332,11 +1334,6 @@ static int ring_context_alloc(struct intel_context *ce)
 	return 0;
 }
 
-static int ring_context_pre_pin(struct intel_context *ce, void **unused)
-{
-	return __context_pin_ppgtt(ce);
-}
-
 static int ring_context_pin(struct intel_context *ce, void *unused)
 {
 	return 0;
@@ -1984,7 +1981,7 @@ int intel_ring_submission_setup(struct intel_engine_cs *engine)
 	}
 	GEM_BUG_ON(timeline->has_initial_breadcrumb);
 
-	err = intel_timeline_pin(timeline);
+	err = intel_timeline_pin(timeline, NULL);
 	if (err)
 		goto err_timeline;
 
@@ -1994,7 +1991,7 @@ int intel_ring_submission_setup(struct intel_engine_cs *engine)
 		goto err_timeline_unpin;
 	}
 
-	err = intel_ring_pin(ring);
+	err = intel_ring_pin(ring, NULL);
 	if (err)
 		goto err_ring;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
index 87716529cd2f..448072825ded 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.c
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
@@ -301,14 +301,20 @@ intel_timeline_create(struct intel_gt *gt, struct i915_vma *global_hwsp)
 	return timeline;
 }
 
-int intel_timeline_pin(struct intel_timeline *tl)
+void __intel_timeline_pin(struct intel_timeline *tl)
+{
+	GEM_BUG_ON(!atomic_read(&tl->pin_count));
+	atomic_inc(&tl->pin_count);
+}
+
+int intel_timeline_pin(struct intel_timeline *tl, struct i915_gem_ww_ctx *ww)
 {
 	int err;
 
 	if (atomic_add_unless(&tl->pin_count, 1, 0))
 		return 0;
 
-	err = i915_vma_pin(tl->hwsp_ggtt, 0, 0, PIN_GLOBAL | PIN_HIGH);
+	err = i915_vma_pin_ww(tl->hwsp_ggtt, ww, 0, 0, PIN_GLOBAL | PIN_HIGH);
 	if (err)
 		return err;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.h b/drivers/gpu/drm/i915/gt/intel_timeline.h
index f5b7eade3809..39dd897ad057 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.h
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.h
@@ -76,7 +76,8 @@ static inline bool intel_timeline_sync_is_later(struct intel_timeline *tl,
 	return __intel_timeline_sync_is_later(tl, fence->context, fence->seqno);
 }
 
-int intel_timeline_pin(struct intel_timeline *tl);
+void __intel_timeline_pin(struct intel_timeline *tl);
+int intel_timeline_pin(struct intel_timeline *tl, struct i915_gem_ww_ctx *ww);
 void intel_timeline_enter(struct intel_timeline *tl);
 int intel_timeline_get_seqno(struct intel_timeline *tl,
 			     struct i915_request *rq,
diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
index 3b15e749a0ed..b87b019f733a 100644
--- a/drivers/gpu/drm/i915/gt/mock_engine.c
+++ b/drivers/gpu/drm/i915/gt/mock_engine.c
@@ -166,7 +166,8 @@ static int mock_context_alloc(struct intel_context *ce)
 	return 0;
 }
 
-static int mock_context_pre_pin(struct intel_context *ce, void **unused)
+static int mock_context_pre_pin(struct intel_context *ce,
+				struct i915_gem_ww_ctx *ww, void **unused)
 {
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/gt/selftest_timeline.c b/drivers/gpu/drm/i915/gt/selftest_timeline.c
index e2d78cc22fb4..01d09b0030d9 100644
--- a/drivers/gpu/drm/i915/gt/selftest_timeline.c
+++ b/drivers/gpu/drm/i915/gt/selftest_timeline.c
@@ -452,7 +452,7 @@ tl_write(struct intel_timeline *tl, struct intel_engine_cs *engine, u32 value)
 	struct i915_request *rq;
 	int err;
 
-	err = intel_timeline_pin(tl);
+	err = intel_timeline_pin(tl, NULL);
 	if (err) {
 		rq = ERR_PTR(err);
 		goto out;
@@ -663,7 +663,7 @@ static int live_hwsp_wrap(void *arg)
 	if (!tl->has_initial_breadcrumb || !tl->hwsp_cacheline)
 		goto out_free;
 
-	err = intel_timeline_pin(tl);
+	err = intel_timeline_pin(tl, NULL);
 	if (err)
 		goto out_free;
 
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 306b951831fe..9678387c2db0 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -855,13 +855,19 @@ static void vma_unbind_pages(struct i915_vma *vma)
 	__vma_put_pages(vma, count | count << I915_VMA_PAGES_BIAS);
 }
 
-int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
+int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
+		    u64 size, u64 alignment, u64 flags)
 {
 	struct i915_vma_work *work = NULL;
 	intel_wakeref_t wakeref = 0;
 	unsigned int bound;
 	int err;
 
+#ifdef CONFIG_PROVE_LOCKING
+	if (debug_locks && lockdep_is_held(&vma->vm->i915->drm.struct_mutex))
+		WARN_ON(!ww);
+#endif
+
 	BUILD_BUG_ON(PIN_GLOBAL != I915_VMA_GLOBAL_BIND);
 	BUILD_BUG_ON(PIN_USER != I915_VMA_LOCAL_BIND);
 
@@ -968,7 +974,8 @@ static void flush_idle_contexts(struct intel_gt *gt)
 	intel_gt_wait_for_idle(gt, MAX_SCHEDULE_TIMEOUT);
 }
 
-int i915_ggtt_pin(struct i915_vma *vma, u32 align, unsigned int flags)
+int i915_ggtt_pin(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
+		  u32 align, unsigned int flags)
 {
 	struct i915_address_space *vm = vma->vm;
 	int err;
@@ -976,7 +983,7 @@ int i915_ggtt_pin(struct i915_vma *vma, u32 align, unsigned int flags)
 	GEM_BUG_ON(!i915_vma_is_ggtt(vma));
 
 	do {
-		err = i915_vma_pin(vma, 0, align, flags | PIN_GLOBAL);
+		err = i915_vma_pin_ww(vma, ww, 0, align, flags | PIN_GLOBAL);
 		if (err != -ENOSPC)
 			return err;
 
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index 02b31a62951e..993cbf09638a 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -236,8 +236,17 @@ static inline void i915_vma_unlock(struct i915_vma *vma)
 }
 
 int __must_check
-i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags);
-int i915_ggtt_pin(struct i915_vma *vma, u32 align, unsigned int flags);
+i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
+		u64 size, u64 alignment, u64 flags);
+
+static inline int __must_check
+i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
+{
+	return i915_vma_pin_ww(vma, NULL, size, alignment, flags);
+}
+
+int i915_ggtt_pin(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
+		  u32 align, unsigned int flags);
 
 static inline int i915_vma_pin_count(const struct i915_vma *vma)
 {
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
