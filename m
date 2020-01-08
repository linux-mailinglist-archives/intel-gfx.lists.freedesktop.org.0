Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A54FC134191
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 13:23:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 061A86E1D2;
	Wed,  8 Jan 2020 12:23:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D608C6E1D2
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2020 12:23:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19808367-1500050 
 for multiple; Wed, 08 Jan 2020 12:23:26 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jan 2020 12:23:25 +0000
Message-Id: <20200108122325.3549421-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc1
In-Reply-To: <20200108122325.3549421-1-chris@chris-wilson.co.uk>
References: <20200108122325.3549421-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Pull context activation into
 central intel_context_pin()
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

While this is encroaching on midlayer territory, having already made the
state allocation a previous step in pinning, we can now pull the common
intel_context_active_acquire() into intel_context_pin() itself. This is
a prelude to make the activation a separate step inside pinning, outside
of the ce->pin_mutex

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c       | 64 ++++++++++---------
 drivers/gpu/drm/i915/gt/intel_context.h       |  3 -
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 16 +----
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 16 +----
 drivers/gpu/drm/i915/gt/mock_engine.c         |  2 +-
 5 files changed, 39 insertions(+), 62 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index eefe0996ade1..85f161fd46f8 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -63,6 +63,34 @@ int intel_context_alloc_state(struct intel_context *ce)
 	return 0;
 }
 
+static int intel_context_active_acquire(struct intel_context *ce)
+{
+	int err;
+
+	err = i915_active_acquire(&ce->active);
+	if (err)
+		return err;
+
+	/* Preallocate tracking nodes */
+	if (!intel_context_is_barrier(ce)) {
+		err = i915_active_acquire_preallocate_barrier(&ce->active,
+							      ce->engine);
+		if (err) {
+			i915_active_release(&ce->active);
+			return err;
+		}
+	}
+
+	return 0;
+}
+
+static void intel_context_active_release(struct intel_context *ce)
+{
+	/* Nodes preallocated in intel_context_active() */
+	i915_active_acquire_barrier(&ce->active);
+	i915_active_release(&ce->active);
+}
+
 int __intel_context_do_pin(struct intel_context *ce)
 {
 	int err;
@@ -79,11 +107,15 @@ int __intel_context_do_pin(struct intel_context *ce)
 	if (likely(!atomic_read(&ce->pin_count))) {
 		intel_wakeref_t wakeref;
 
+		err = intel_context_active_acquire(ce);
+		if (unlikely(err))
+			goto err;
+
 		err = 0;
 		with_intel_runtime_pm(ce->engine->uncore->rpm, wakeref)
 			err = ce->ops->pin(ce);
 		if (err)
-			goto err;
+			goto err_active;
 
 		CE_TRACE(ce, "pin ring:{head:%04x, tail:%04x}\n",
 			 ce->ring->head, ce->ring->tail);
@@ -97,6 +129,8 @@ int __intel_context_do_pin(struct intel_context *ce)
 	mutex_unlock(&ce->pin_mutex);
 	return 0;
 
+err_active:
+	intel_context_active_release(ce);
 err:
 	mutex_unlock(&ce->pin_mutex);
 	return err;
@@ -198,34 +232,6 @@ static int __intel_context_active(struct i915_active *active)
 	return err;
 }
 
-int intel_context_active_acquire(struct intel_context *ce)
-{
-	int err;
-
-	err = i915_active_acquire(&ce->active);
-	if (err)
-		return err;
-
-	/* Preallocate tracking nodes */
-	if (!intel_context_is_barrier(ce)) {
-		err = i915_active_acquire_preallocate_barrier(&ce->active,
-							      ce->engine);
-		if (err) {
-			i915_active_release(&ce->active);
-			return err;
-		}
-	}
-
-	return 0;
-}
-
-void intel_context_active_release(struct intel_context *ce)
-{
-	/* Nodes preallocated in intel_context_active() */
-	i915_active_acquire_barrier(&ce->active);
-	i915_active_release(&ce->active);
-}
-
 void
 intel_context_init(struct intel_context *ce,
 		   struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index 673f5fb2967a..f0f49b50b968 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -118,9 +118,6 @@ static inline void intel_context_exit(struct intel_context *ce)
 		ce->ops->exit(ce);
 }
 
-int intel_context_active_acquire(struct intel_context *ce);
-void intel_context_active_release(struct intel_context *ce);
-
 static inline struct intel_context *intel_context_get(struct intel_context *ce)
 {
 	kref_get(&ce->ref);
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index bd74b76c6403..28b1fbcb4370 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2566,33 +2566,21 @@ __execlists_context_pin(struct intel_context *ce,
 			struct intel_engine_cs *engine)
 {
 	void *vaddr;
-	int ret;
 
 	GEM_BUG_ON(!ce->state);
-
-	ret = intel_context_active_acquire(ce);
-	if (ret)
-		goto err;
 	GEM_BUG_ON(!i915_vma_is_pinned(ce->state));
 
 	vaddr = i915_gem_object_pin_map(ce->state->obj,
 					i915_coherent_map_type(engine->i915) |
 					I915_MAP_OVERRIDE);
-	if (IS_ERR(vaddr)) {
-		ret = PTR_ERR(vaddr);
-		goto unpin_active;
-	}
+	if (IS_ERR(vaddr))
+		return PTR_ERR(vaddr);
 
 	ce->lrc_desc = lrc_descriptor(ce, engine) | CTX_DESC_FORCE_RESTORE;
 	ce->lrc_reg_state = vaddr + LRC_STATE_PN * PAGE_SIZE;
 	__execlists_update_reg_state(ce, engine);
 
 	return 0;
-
-unpin_active:
-	intel_context_active_release(ce);
-err:
-	return ret;
 }
 
 static int execlists_context_pin(struct intel_context *ce)
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index eca5ab048cd9..bc44fe8e5ffa 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -1329,21 +1329,7 @@ static int ring_context_alloc(struct intel_context *ce)
 
 static int ring_context_pin(struct intel_context *ce)
 {
-	int err;
-
-	err = intel_context_active_acquire(ce);
-	if (err)
-		return err;
-
-	err = __context_pin_ppgtt(ce);
-	if (err)
-		goto err_active;
-
-	return 0;
-
-err_active:
-	intel_context_active_release(ce);
-	return err;
+	return __context_pin_ppgtt(ce);
 }
 
 static void ring_context_reset(struct intel_context *ce)
diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
index d0e68ce9aa51..a560b7eee2cd 100644
--- a/drivers/gpu/drm/i915/gt/mock_engine.c
+++ b/drivers/gpu/drm/i915/gt/mock_engine.c
@@ -149,7 +149,7 @@ static int mock_context_alloc(struct intel_context *ce)
 
 static int mock_context_pin(struct intel_context *ce)
 {
-	return intel_context_active_acquire(ce);
+	return 0;
 }
 
 static void mock_context_reset(struct intel_context *ce)
-- 
2.25.0.rc1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
