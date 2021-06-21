Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 024633AE845
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jun 2021 13:41:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 511E389DE3;
	Mon, 21 Jun 2021 11:41:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5451289DE3
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Jun 2021 11:41:27 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Jun 2021 13:41:22 +0200
Message-Id: <20210621114123.3131534-2-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210621114123.3131534-1-maarten.lankhorst@linux.intel.com>
References: <20210621114123.3131534-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Use intel_context->pin_mutex only
 for context allocation
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

Rename pin_mutex to alloc_mutex, and only use it for context allocation.
This will allow us to simplify __intel_context_do_pin_ww, which no longer
needs to run the pre_pin callback separately.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c       | 40 ++++++---------
 drivers/gpu/drm/i915/gt/intel_context.h       | 17 +++++--
 drivers/gpu/drm/i915/gt/intel_context_param.c | 49 ++++++++++++-------
 drivers/gpu/drm/i915/gt/intel_context_sseu.c  |  2 +-
 drivers/gpu/drm/i915/gt/intel_context_types.h |  2 +-
 5 files changed, 62 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index 4033184f13b9..e6dab37c4266 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -53,7 +53,10 @@ int intel_context_alloc_state(struct intel_context *ce)
 {
 	int err = 0;
 
-	if (mutex_lock_interruptible(&ce->pin_mutex))
+	if (test_bit(CONTEXT_ALLOC_BIT, &ce->flags))
+		return 0;
+
+	if (mutex_lock_interruptible(&ce->alloc_mutex))
 		return -EINTR;
 
 	if (!test_bit(CONTEXT_ALLOC_BIT, &ce->flags)) {
@@ -66,11 +69,12 @@ int intel_context_alloc_state(struct intel_context *ce)
 		if (unlikely(err))
 			goto unlock;
 
+		smp_mb__before_atomic();
 		set_bit(CONTEXT_ALLOC_BIT, &ce->flags);
 	}
 
 unlock:
-	mutex_unlock(&ce->pin_mutex);
+	mutex_unlock(&ce->alloc_mutex);
 	return err;
 }
 
@@ -205,19 +209,11 @@ int __intel_context_do_pin_ww(struct intel_context *ce,
 {
 	bool handoff = false;
 	void *vaddr;
-	int err = 0;
-
-	if (unlikely(!test_bit(CONTEXT_ALLOC_BIT, &ce->flags))) {
-		err = intel_context_alloc_state(ce);
-		if (err)
-			return err;
-	}
+	int err;
 
-	/*
-	 * We always pin the context/ring/timeline here, to ensure a pin
-	 * refcount for __intel_context_active(), which prevent a lock
-	 * inversion of ce->pin_mutex vs dma_resv_lock().
-	 */
+	err = intel_context_alloc_state(ce);
+	if (err)
+		return err;
 
 	err = i915_gem_object_lock(ce->timeline->hwsp_ggtt->obj, ww);
 	if (!err && ce->ring->vma->obj)
@@ -237,24 +233,20 @@ int __intel_context_do_pin_ww(struct intel_context *ce,
 	if (err)
 		goto err_release;
 
-	err = mutex_lock_interruptible(&ce->pin_mutex);
-	if (err)
-		goto err_post_unpin;
-
 	if (unlikely(intel_context_is_closed(ce))) {
 		err = -ENOENT;
-		goto err_unlock;
+		goto err_post_unpin;
 	}
 
 	if (likely(!atomic_add_unless(&ce->pin_count, 1, 0))) {
 		err = intel_context_active_acquire(ce);
 		if (unlikely(err))
-			goto err_unlock;
+			goto err_post_unpin;
 
 		err = ce->ops->pin(ce, vaddr);
 		if (err) {
 			intel_context_active_release(ce);
-			goto err_unlock;
+			goto err_post_unpin;
 		}
 
 		CE_TRACE(ce, "pin ring:{start:%08x, head:%04x, tail:%04x}\n",
@@ -268,8 +260,6 @@ int __intel_context_do_pin_ww(struct intel_context *ce,
 
 	GEM_BUG_ON(!intel_context_is_pinned(ce)); /* no overflow! */
 
-err_unlock:
-	mutex_unlock(&ce->pin_mutex);
 err_post_unpin:
 	if (!handoff)
 		ce->ops->post_unpin(ce);
@@ -381,7 +371,7 @@ intel_context_init(struct intel_context *ce, struct intel_engine_cs *engine)
 	spin_lock_init(&ce->signal_lock);
 	INIT_LIST_HEAD(&ce->signals);
 
-	mutex_init(&ce->pin_mutex);
+	mutex_init(&ce->alloc_mutex);
 
 	i915_active_init(&ce->active,
 			 __intel_context_active, __intel_context_retire, 0);
@@ -393,7 +383,7 @@ void intel_context_fini(struct intel_context *ce)
 		intel_timeline_put(ce->timeline);
 	i915_vm_put(ce->vm);
 
-	mutex_destroy(&ce->pin_mutex);
+	mutex_destroy(&ce->alloc_mutex);
 	i915_active_fini(&ce->active);
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index f83a73a2b39f..4cf6901fcb81 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -49,9 +49,16 @@ int intel_context_reconfigure_sseu(struct intel_context *ce,
  * intel_context_is_pinned() remains stable.
  */
 static inline int intel_context_lock_pinned(struct intel_context *ce)
-	__acquires(ce->pin_mutex)
 {
-	return mutex_lock_interruptible(&ce->pin_mutex);
+	int ret = intel_context_alloc_state(ce);
+
+	if (ret)
+		return ret;
+
+	if (ce->state)
+		return i915_gem_object_lock_interruptible(ce->state->obj, NULL);
+	else
+		return i915_gem_object_lock_interruptible(ce->timeline->hwsp_ggtt->obj, NULL);
 }
 
 /**
@@ -76,9 +83,11 @@ intel_context_is_pinned(struct intel_context *ce)
  * Releases the lock earlier acquired by intel_context_unlock_pinned().
  */
 static inline void intel_context_unlock_pinned(struct intel_context *ce)
-	__releases(ce->pin_mutex)
 {
-	mutex_unlock(&ce->pin_mutex);
+	if (ce->state)
+		return i915_gem_object_unlock(ce->state->obj);
+	else
+		return i915_gem_object_unlock(ce->timeline->hwsp_ggtt->obj);
 }
 
 int __intel_context_do_pin(struct intel_context *ce);
diff --git a/drivers/gpu/drm/i915/gt/intel_context_param.c b/drivers/gpu/drm/i915/gt/intel_context_param.c
index 412c36d1b1dd..eba026d63361 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_param.c
+++ b/drivers/gpu/drm/i915/gt/intel_context_param.c
@@ -10,13 +10,34 @@
 
 int intel_context_set_ring_size(struct intel_context *ce, long sz)
 {
+	struct intel_ring *ring;
 	int err;
 
 	if (ce->engine->gt->submission_method == INTEL_SUBMISSION_RING)
 		return 0;
 
-	if (intel_context_lock_pinned(ce))
-		return -EINTR;
+	/* Try fast case (unallocated) first */
+	if (!test_bit(CONTEXT_ALLOC_BIT, &ce->flags)) {
+		bool done = false;
+
+		err = mutex_lock_interruptible(&ce->alloc_mutex);
+		if (err)
+			return err;
+
+		if (!test_bit(CONTEXT_ALLOC_BIT, &ce->flags)) {
+			ce->ring = __intel_context_ring_size(sz);
+			done = true;
+		}
+		mutex_unlock(&ce->alloc_mutex);
+
+		if (done)
+			return 0;
+	}
+
+	/* Context already allocated */
+	err = intel_context_lock_pinned(ce);
+	if (err)
+		return err;
 
 	err = i915_active_wait(&ce->active);
 	if (err < 0)
@@ -27,23 +48,17 @@ int intel_context_set_ring_size(struct intel_context *ce, long sz)
 		goto unlock;
 	}
 
-	if (test_bit(CONTEXT_ALLOC_BIT, &ce->flags)) {
-		struct intel_ring *ring;
-
-		/* Replace the existing ringbuffer */
-		ring = intel_engine_create_ring(ce->engine, sz);
-		if (IS_ERR(ring)) {
-			err = PTR_ERR(ring);
-			goto unlock;
-		}
+	/* Replace the existing ringbuffer */
+	ring = intel_engine_create_ring(ce->engine, sz);
+	if (IS_ERR(ring)) {
+		err = PTR_ERR(ring);
+		goto unlock;
+	}
 
-		intel_ring_put(ce->ring);
-		ce->ring = ring;
+	intel_ring_put(ce->ring);
+	ce->ring = ring;
 
-		/* Context image will be updated on next pin */
-	} else {
-		ce->ring = __intel_context_ring_size(sz);
-	}
+	/* Context image will be updated on next pin */
 
 unlock:
 	intel_context_unlock_pinned(ce);
diff --git a/drivers/gpu/drm/i915/gt/intel_context_sseu.c b/drivers/gpu/drm/i915/gt/intel_context_sseu.c
index e86d8255feec..447b278b107b 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_sseu.c
+++ b/drivers/gpu/drm/i915/gt/intel_context_sseu.c
@@ -42,7 +42,7 @@ gen8_modify_rpcs(struct intel_context *ce, const struct intel_sseu sseu)
 	struct i915_request *rq;
 	int ret;
 
-	lockdep_assert_held(&ce->pin_mutex);
+	assert_object_held(ce->state->obj);
 
 	/*
 	 * If the context is not idle, we have to submit an ordered request to
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index ed8c447a7346..b104d5e9d3b6 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -122,7 +122,7 @@ struct intel_context {
 	unsigned int active_count; /* protected by timeline->mutex */
 
 	atomic_t pin_count;
-	struct mutex pin_mutex; /* guards pinning and associated on-gpuing */
+	struct mutex alloc_mutex; /* guards allocation (ops->alloc) */
 
 	/**
 	 * active: Active tracker for the rq activity (inc. external) on this
-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
