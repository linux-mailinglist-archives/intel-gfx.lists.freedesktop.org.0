Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C741B243B
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 12:46:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 671AC6E916;
	Tue, 21 Apr 2020 10:46:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA0E16E2D5
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 10:46:30 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Apr 2020 12:46:15 +0200
Message-Id: <20200421104626.1480208-13-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200421104626.1480208-1-maarten.lankhorst@linux.intel.com>
References: <20200421104626.1480208-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/24] drm/i915: Rework intel_context pinning to
 do everything outside of pin_mutex
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

Instead of doing everything inside of pin_mutex, we move all pinning
outside. Because i915_active has its own reference counting and
pinning is also having the same issues vs mutexes, we make sure
everything is pinned first, so the pinning in i915_active only needs
to bump refcounts. This allows us to take pin refcounts correctly
all the time.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c       | 232 +++++++++++-------
 drivers/gpu/drm/i915/gt/intel_context_types.h |   4 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  34 ++-
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  13 +-
 drivers/gpu/drm/i915/gt/mock_engine.c         |  13 +-
 5 files changed, 190 insertions(+), 106 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index e4aece20bc80..c039e87a46c4 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -93,79 +93,6 @@ static void intel_context_active_release(struct intel_context *ce)
 	i915_active_release(&ce->active);
 }
 
-int __intel_context_do_pin(struct intel_context *ce)
-{
-	int err;
-
-	if (unlikely(!test_bit(CONTEXT_ALLOC_BIT, &ce->flags))) {
-		err = intel_context_alloc_state(ce);
-		if (err)
-			return err;
-	}
-
-	err = i915_active_acquire(&ce->active);
-	if (err)
-		return err;
-
-	if (mutex_lock_interruptible(&ce->pin_mutex)) {
-		err = -EINTR;
-		goto out_release;
-	}
-
-	if (unlikely(intel_context_is_closed(ce))) {
-		err = -ENOENT;
-		goto out_unlock;
-	}
-
-	if (likely(!atomic_add_unless(&ce->pin_count, 1, 0))) {
-		err = intel_context_active_acquire(ce);
-		if (unlikely(err))
-			goto out_unlock;
-
-		err = ce->ops->pin(ce);
-		if (unlikely(err))
-			goto err_active;
-
-		CE_TRACE(ce, "pin ring:{start:%08x, head:%04x, tail:%04x}\n",
-			 i915_ggtt_offset(ce->ring->vma),
-			 ce->ring->head, ce->ring->tail);
-
-		smp_mb__before_atomic(); /* flush pin before it is visible */
-		atomic_inc(&ce->pin_count);
-	}
-
-	GEM_BUG_ON(!intel_context_is_pinned(ce)); /* no overflow! */
-	GEM_BUG_ON(i915_active_is_idle(&ce->active));
-	goto out_unlock;
-
-err_active:
-	intel_context_active_release(ce);
-out_unlock:
-	mutex_unlock(&ce->pin_mutex);
-out_release:
-	i915_active_release(&ce->active);
-	return err;
-}
-
-void intel_context_unpin(struct intel_context *ce)
-{
-	if (!atomic_dec_and_test(&ce->pin_count))
-		return;
-
-	CE_TRACE(ce, "unpin\n");
-	ce->ops->unpin(ce);
-
-	/*
-	 * Once released, we may asynchronously drop the active reference.
-	 * As that may be the only reference keeping the context alive,
-	 * take an extra now so that it is not freed before we finish
-	 * dereferencing it.
-	 */
-	intel_context_get(ce);
-	intel_context_active_release(ce);
-	intel_context_put(ce);
-}
-
 static int __context_pin_state(struct i915_vma *vma)
 {
 	unsigned int bias = i915_ggtt_pin_bias(vma) | PIN_OFFSET_BIAS;
@@ -225,6 +152,138 @@ static void __ring_retire(struct intel_ring *ring)
 	i915_active_release(&ring->vma->active);
 }
 
+static int intel_context_pre_pin(struct intel_context *ce)
+{
+	int err;
+
+	CE_TRACE(ce, "active\n");
+
+	err = __ring_active(ce->ring);
+	if (err)
+		return err;
+
+	err = intel_timeline_pin(ce->timeline);
+	if (err)
+		goto err_ring;
+
+	if (!ce->state)
+		return 0;
+
+	err = __context_pin_state(ce->state);
+	if (err)
+		goto err_timeline;
+
+
+	return 0;
+
+err_timeline:
+	intel_timeline_unpin(ce->timeline);
+err_ring:
+	__ring_retire(ce->ring);
+	return err;
+}
+
+static void intel_context_post_unpin(struct intel_context *ce)
+{
+	if (ce->state)
+		__context_unpin_state(ce->state);
+
+	intel_timeline_unpin(ce->timeline);
+	__ring_retire(ce->ring);
+}
+
+int __intel_context_do_pin(struct intel_context *ce)
+{
+	bool handoff = false;
+	void *vaddr;
+	int err = 0;
+
+	if (unlikely(!test_bit(CONTEXT_ALLOC_BIT, &ce->flags))) {
+		err = intel_context_alloc_state(ce);
+		if (err)
+			return err;
+	}
+
+	/*
+	 * We always pin the context/ring/timeline here, to ensure a pin
+	 * refcount for __intel_context_active(), which prevent a lock
+	 * inversion of ce->pin_mutex vs dma_resv_lock().
+	 */
+	err = intel_context_pre_pin(ce);
+	if (err)
+		return err;
+
+	err = i915_active_acquire(&ce->active);
+	if (err)
+		goto err_ctx_unpin;
+
+	err = ce->ops->pre_pin(ce, &vaddr);
+	if (err)
+		goto err_release;
+
+	err = mutex_lock_interruptible(&ce->pin_mutex);
+	if (err)
+		goto err_post_unpin;
+
+	if (unlikely(intel_context_is_closed(ce))) {
+		err = -ENOENT;
+		goto err_unlock;
+	}
+
+	if (likely(!atomic_add_unless(&ce->pin_count, 1, 0))) {
+		err = intel_context_active_acquire(ce);
+		if (unlikely(err))
+			goto err_unlock;
+
+		err = ce->ops->pin(ce, vaddr);
+		if (err) {
+			intel_context_active_release(ce);
+			goto err_unlock;
+		}
+
+		CE_TRACE(ce, "pin ring:{start:%08x, head:%04x, tail:%04x}\n",
+			 i915_ggtt_offset(ce->ring->vma),
+			 ce->ring->head, ce->ring->tail);
+
+		handoff = true;
+		smp_mb__before_atomic(); /* flush pin before it is visible */
+		atomic_inc(&ce->pin_count);
+	}
+
+	GEM_BUG_ON(!intel_context_is_pinned(ce)); /* no overflow! */
+
+err_unlock:
+	mutex_unlock(&ce->pin_mutex);
+err_post_unpin:
+	if (!handoff)
+		ce->ops->post_unpin(ce);
+err_release:
+	i915_active_release(&ce->active);
+err_ctx_unpin:
+	intel_context_post_unpin(ce);
+	return err;
+}
+
+void intel_context_unpin(struct intel_context *ce)
+{
+	if (!atomic_dec_and_test(&ce->pin_count))
+		return;
+
+	CE_TRACE(ce, "unpin\n");
+	ce->ops->unpin(ce);
+	ce->ops->post_unpin(ce);
+
+	/*
+	 * Once released, we may asynchronously drop the active reference.
+	 * As that may be the only reference keeping the context alive,
+	 * take an extra now so that it is not freed before we finish
+	 * dereferencing it.
+	 */
+	intel_context_get(ce);
+	intel_context_active_release(ce);
+	intel_context_put(ce);
+}
+
 __i915_active_call
 static void __intel_context_retire(struct i915_active *active)
 {
@@ -235,12 +294,7 @@ static void __intel_context_retire(struct i915_active *active)
 		 intel_context_get_avg_runtime_ns(ce));
 
 	set_bit(CONTEXT_VALID_BIT, &ce->flags);
-	if (ce->state)
-		__context_unpin_state(ce->state);
-
-	intel_timeline_unpin(ce->timeline);
-	__ring_retire(ce->ring);
-
+	intel_context_post_unpin(ce);
 	intel_context_put(ce);
 }
 
@@ -249,29 +303,25 @@ static int __intel_context_active(struct i915_active *active)
 	struct intel_context *ce = container_of(active, typeof(*ce), active);
 	int err;
 
-	CE_TRACE(ce, "active\n");
-
 	intel_context_get(ce);
 
+	/* everything should already be activated by intel_context_pre_pin() */
 	err = __ring_active(ce->ring);
-	if (err)
+	if (GEM_WARN_ON(err))
 		goto err_put;
 
 	err = intel_timeline_pin(ce->timeline);
-	if (err)
+	if (GEM_WARN_ON(err))
 		goto err_ring;
 
-	if (!ce->state)
-		return 0;
-
-	err = __context_pin_state(ce->state);
-	if (err)
-		goto err_timeline;
+	if (ce->state) {
+		GEM_WARN_ON(!i915_active_acquire_if_busy(&ce->state->active));
+		__i915_vma_pin(ce->state);
+		i915_vma_make_unshrinkable(ce->state);
+	}
 
 	return 0;
 
-err_timeline:
-	intel_timeline_unpin(ce->timeline);
 err_ring:
 	__ring_retire(ce->ring);
 err_put:
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 07cb83a0d017..395af0476a4e 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -30,8 +30,10 @@ struct intel_ring;
 struct intel_context_ops {
 	int (*alloc)(struct intel_context *ce);
 
-	int (*pin)(struct intel_context *ce);
+	int (*pre_pin)(struct intel_context *ce, void **vaddr);
+	int (*pin)(struct intel_context *ce, void *vaddr);
 	void (*unpin)(struct intel_context *ce);
+	void (*post_unpin)(struct intel_context *ce);
 
 	void (*enter)(struct intel_context *ce);
 	void (*exit)(struct intel_context *ce);
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 34f67eb9bfa1..932049c14ba2 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3138,7 +3138,10 @@ static void execlists_context_unpin(struct intel_context *ce)
 {
 	check_redzone((void *)ce->lrc_reg_state - LRC_STATE_PN * PAGE_SIZE,
 		      ce->engine);
+}
 
+static void execlists_context_post_unpin(struct intel_context *ce)
+{
 	i915_gem_object_unpin_map(ce->state->obj);
 }
 
@@ -3168,20 +3171,23 @@ __execlists_update_reg_state(const struct intel_context *ce,
 }
 
 static int
-__execlists_context_pin(struct intel_context *ce,
-			struct intel_engine_cs *engine)
+execlists_context_pre_pin(struct intel_context *ce, void **vaddr)
 {
-	void *vaddr;
-
 	GEM_BUG_ON(!ce->state);
 	GEM_BUG_ON(!i915_vma_is_pinned(ce->state));
 
-	vaddr = i915_gem_object_pin_map(ce->state->obj,
-					i915_coherent_map_type(engine->i915) |
+	*vaddr = i915_gem_object_pin_map(ce->state->obj,
+					i915_coherent_map_type(ce->engine->i915) |
 					I915_MAP_OVERRIDE);
-	if (IS_ERR(vaddr))
-		return PTR_ERR(vaddr);
 
+	return PTR_ERR_OR_ZERO(*vaddr);
+}
+
+static int
+__execlists_context_pin(struct intel_context *ce,
+			struct intel_engine_cs *engine,
+			void *vaddr)
+{
 	ce->lrc_desc = lrc_descriptor(ce, engine) | CTX_DESC_FORCE_RESTORE;
 	ce->lrc_reg_state = vaddr + LRC_STATE_PN * PAGE_SIZE;
 	__execlists_update_reg_state(ce, engine, ce->ring->tail);
@@ -3189,9 +3195,9 @@ __execlists_context_pin(struct intel_context *ce,
 	return 0;
 }
 
-static int execlists_context_pin(struct intel_context *ce)
+static int execlists_context_pin(struct intel_context *ce, void *vaddr)
 {
-	return __execlists_context_pin(ce, ce->engine);
+	return __execlists_context_pin(ce, ce->engine, vaddr);
 }
 
 static int execlists_context_alloc(struct intel_context *ce)
@@ -3217,8 +3223,10 @@ static void execlists_context_reset(struct intel_context *ce)
 static const struct intel_context_ops execlists_context_ops = {
 	.alloc = execlists_context_alloc,
 
+	.pre_pin = execlists_context_pre_pin,
 	.pin = execlists_context_pin,
 	.unpin = execlists_context_unpin,
+	.post_unpin = execlists_context_post_unpin,
 
 	.enter = intel_context_enter_engine,
 	.exit = intel_context_exit_engine,
@@ -5004,13 +5012,13 @@ static int virtual_context_alloc(struct intel_context *ce)
 	return __execlists_context_alloc(ce, ve->siblings[0]);
 }
 
-static int virtual_context_pin(struct intel_context *ce)
+static int virtual_context_pin(struct intel_context *ce, void *vaddr)
 {
 	struct virtual_engine *ve = container_of(ce, typeof(*ve), context);
 	int err;
 
 	/* Note: we must use a real engine class for setting up reg state */
-	err = __execlists_context_pin(ce, ve->siblings[0]);
+	err = __execlists_context_pin(ce, ve->siblings[0], vaddr);
 	if (err)
 		return err;
 
@@ -5043,8 +5051,10 @@ static void virtual_context_exit(struct intel_context *ce)
 static const struct intel_context_ops virtual_context_ops = {
 	.alloc = virtual_context_alloc,
 
+	.pre_pin = execlists_context_pre_pin,
 	.pin = virtual_context_pin,
 	.unpin = execlists_context_unpin,
+	.post_unpin = execlists_context_post_unpin,
 
 	.enter = virtual_context_enter,
 	.exit = virtual_context_exit,
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index d015f7b8b28e..d89475b8cfd6 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -1206,6 +1206,10 @@ static void __context_unpin_ppgtt(struct intel_context *ce)
 }
 
 static void ring_context_unpin(struct intel_context *ce)
+{
+}
+
+static void ring_context_post_unpin(struct intel_context *ce)
 {
 	__context_unpin_ppgtt(ce);
 }
@@ -1303,11 +1307,16 @@ static int ring_context_alloc(struct intel_context *ce)
 	return 0;
 }
 
-static int ring_context_pin(struct intel_context *ce)
+static int ring_context_pre_pin(struct intel_context *ce, void **unused)
 {
 	return __context_pin_ppgtt(ce);
 }
 
+static int ring_context_pin(struct intel_context *ce, void *unused)
+{
+	return 0;
+}
+
 static void ring_context_reset(struct intel_context *ce)
 {
 	intel_ring_reset(ce->ring, ce->ring->emit);
@@ -1316,8 +1325,10 @@ static void ring_context_reset(struct intel_context *ce)
 static const struct intel_context_ops ring_context_ops = {
 	.alloc = ring_context_alloc,
 
+	.pre_pin = ring_context_pre_pin,
 	.pin = ring_context_pin,
 	.unpin = ring_context_unpin,
+	.post_unpin = ring_context_post_unpin,
 
 	.enter = intel_context_enter_engine,
 	.exit = intel_context_exit_engine,
diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
index b8dd3cbc8696..62664601e683 100644
--- a/drivers/gpu/drm/i915/gt/mock_engine.c
+++ b/drivers/gpu/drm/i915/gt/mock_engine.c
@@ -131,6 +131,10 @@ static void mock_context_unpin(struct intel_context *ce)
 {
 }
 
+static void mock_context_post_unpin(struct intel_context *ce)
+{
+}
+
 static void mock_context_destroy(struct kref *ref)
 {
 	struct intel_context *ce = container_of(ref, typeof(*ce), ref);
@@ -164,7 +168,12 @@ static int mock_context_alloc(struct intel_context *ce)
 	return 0;
 }
 
-static int mock_context_pin(struct intel_context *ce)
+static int mock_context_pre_pin(struct intel_context *ce, void **unused)
+{
+	return 0;
+}
+
+static int mock_context_pin(struct intel_context *ce, void *unused)
 {
 	return 0;
 }
@@ -176,8 +185,10 @@ static void mock_context_reset(struct intel_context *ce)
 static const struct intel_context_ops mock_context_ops = {
 	.alloc = mock_context_alloc,
 
+	.pre_pin = mock_context_pre_pin,
 	.pin = mock_context_pin,
 	.unpin = mock_context_unpin,
+	.post_unpin = mock_context_post_unpin,
 
 	.enter = intel_context_enter_engine,
 	.exit = intel_context_exit_engine,
-- 
2.26.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
