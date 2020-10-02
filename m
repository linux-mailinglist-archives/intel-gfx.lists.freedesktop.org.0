Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A87D128135E
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Oct 2020 15:00:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A07D56E969;
	Fri,  2 Oct 2020 12:59:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F49A6E95C
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Oct 2020 12:59:48 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Oct 2020 14:58:56 +0200
Message-Id: <20201002125939.50817-19-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201002125939.50817-1-maarten.lankhorst@linux.intel.com>
References: <20201002125939.50817-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 18/61] drm/i915: Make ring submission compatible
 with obj->mm.lock removal.
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

We map the initial context during first pin.

This allows us to remove pin_map from state allocation, which saves
us a few retry loops. We won't need this until first pin anyway.

intel_ring_submission_setup() is also reworked slightly to do all
pinning in a single ww loop.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 177 +++++++++++-------
 1 file changed, 111 insertions(+), 66 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index a41b43f445b8..10904a84aeb7 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -478,6 +478,26 @@ static void ring_context_destroy(struct kref *ref)
 	intel_context_free(ce);
 }
 
+static int ring_context_init_default_state(struct intel_context *ce,
+					   struct i915_gem_ww_ctx *ww)
+{
+	struct drm_i915_gem_object *obj = ce->state->obj;
+	void *vaddr;
+
+	vaddr = i915_gem_object_pin_map(obj, I915_MAP_WB);
+	if (IS_ERR(vaddr))
+		return PTR_ERR(vaddr);
+
+	shmem_read(ce->engine->default_state, 0,
+		   vaddr, ce->engine->context_size);
+
+	i915_gem_object_flush_map(obj);
+	__i915_gem_object_release_map(obj);
+
+	__set_bit(CONTEXT_VALID_BIT, &ce->flags);
+	return 0;
+}
+
 static int ring_context_pre_pin(struct intel_context *ce,
 				struct i915_gem_ww_ctx *ww,
 				void **unused)
@@ -485,6 +505,13 @@ static int ring_context_pre_pin(struct intel_context *ce,
 	struct i915_address_space *vm;
 	int err = 0;
 
+	if (ce->engine->default_state &&
+	    !test_bit(CONTEXT_VALID_BIT, &ce->flags)) {
+		err = ring_context_init_default_state(ce, ww);
+		if (err)
+			return err;
+	}
+
 	vm = vm_alias(ce->vm);
 	if (vm)
 		err = gen6_ppgtt_pin(i915_vm_to_ppgtt((vm)), ww);
@@ -540,22 +567,6 @@ alloc_context_vma(struct intel_engine_cs *engine)
 	if (IS_IVYBRIDGE(i915))
 		i915_gem_object_set_cache_coherency(obj, I915_CACHE_L3_LLC);
 
-	if (engine->default_state) {
-		void *vaddr;
-
-		vaddr = i915_gem_object_pin_map(obj, I915_MAP_WB);
-		if (IS_ERR(vaddr)) {
-			err = PTR_ERR(vaddr);
-			goto err_obj;
-		}
-
-		shmem_read(engine->default_state, 0,
-			   vaddr, engine->context_size);
-
-		i915_gem_object_flush_map(obj);
-		__i915_gem_object_release_map(obj);
-	}
-
 	vma = i915_vma_instance(obj, &engine->gt->ggtt->vm, NULL);
 	if (IS_ERR(vma)) {
 		err = PTR_ERR(vma);
@@ -587,8 +598,6 @@ static int ring_context_alloc(struct intel_context *ce)
 			return PTR_ERR(vma);
 
 		ce->state = vma;
-		if (engine->default_state)
-			__set_bit(CONTEXT_VALID_BIT, &ce->flags);
 	}
 
 	return 0;
@@ -1184,37 +1193,15 @@ static int gen7_ctx_switch_bb_setup(struct intel_engine_cs * const engine,
 	return gen7_setup_clear_gpr_bb(engine, vma);
 }
 
-static int gen7_ctx_switch_bb_init(struct intel_engine_cs *engine)
+static int gen7_ctx_switch_bb_init(struct intel_engine_cs *engine,
+				   struct i915_gem_ww_ctx *ww,
+				   struct i915_vma *vma)
 {
-	struct drm_i915_gem_object *obj;
-	struct i915_vma *vma;
-	int size;
 	int err;
 
-	size = gen7_ctx_switch_bb_setup(engine, NULL /* probe size */);
-	if (size <= 0)
-		return size;
-
-	size = ALIGN(size, PAGE_SIZE);
-	obj = i915_gem_object_create_internal(engine->i915, size);
-	if (IS_ERR(obj))
-		return PTR_ERR(obj);
-
-	vma = i915_vma_instance(obj, engine->gt->vm, NULL);
-	if (IS_ERR(vma)) {
-		err = PTR_ERR(vma);
-		goto err_obj;
-	}
-
-	vma->private = intel_context_create(engine); /* dummy residuals */
-	if (IS_ERR(vma->private)) {
-		err = PTR_ERR(vma->private);
-		goto err_obj;
-	}
-
-	err = i915_vma_pin(vma, 0, 0, PIN_USER | PIN_HIGH);
+	err = i915_vma_pin_ww(vma, ww, 0, 0, PIN_USER | PIN_HIGH);
 	if (err)
-		goto err_private;
+		return err;
 
 	err = i915_vma_sync(vma);
 	if (err)
@@ -1229,17 +1216,50 @@ static int gen7_ctx_switch_bb_init(struct intel_engine_cs *engine)
 
 err_unpin:
 	i915_vma_unpin(vma);
-err_private:
-	intel_context_put(vma->private);
-err_obj:
-	i915_gem_object_put(obj);
 	return err;
 }
 
+static struct i915_vma *gen7_ctx_vma(struct intel_engine_cs *engine)
+{
+	struct drm_i915_gem_object *obj;
+	struct i915_vma *vma;
+	int size, err;
+
+	if (!IS_HASWELL(engine->i915) || engine->class != RENDER_CLASS)
+		return 0;
+
+	err = gen7_ctx_switch_bb_setup(engine, NULL /* probe size */);
+	if (err <= 0)
+		return ERR_PTR(err);
+
+	size = ALIGN(err, PAGE_SIZE);
+
+	obj = i915_gem_object_create_internal(engine->i915, size);
+	if (IS_ERR(obj))
+		return ERR_CAST(obj);
+
+	vma = i915_vma_instance(obj, engine->gt->vm, NULL);
+	if (IS_ERR(vma)) {
+		i915_gem_object_put(obj);
+		return ERR_CAST(vma);
+	}
+
+	vma->private = intel_context_create(engine); /* dummy residuals */
+	if (IS_ERR(vma->private)) {
+		vma->private = NULL;
+		i915_gem_object_put(obj);
+		return ERR_CAST(vma->private);
+	}
+
+	return vma;
+}
+
 int intel_ring_submission_setup(struct intel_engine_cs *engine)
 {
+	struct i915_gem_ww_ctx ww;
 	struct intel_timeline *timeline;
 	struct intel_ring *ring;
+	struct i915_vma *gen7_wa_vma;
 	int err;
 
 	setup_common(engine);
@@ -1270,43 +1290,68 @@ int intel_ring_submission_setup(struct intel_engine_cs *engine)
 	}
 	GEM_BUG_ON(timeline->has_initial_breadcrumb);
 
-	err = intel_timeline_pin(timeline, NULL);
-	if (err)
-		goto err_timeline;
-
 	ring = intel_engine_create_ring(engine, SZ_16K);
 	if (IS_ERR(ring)) {
 		err = PTR_ERR(ring);
-		goto err_timeline_unpin;
+		goto err_timeline;
 	}
 
-	err = intel_ring_pin(ring, NULL);
-	if (err)
-		goto err_ring;
-
 	GEM_BUG_ON(engine->legacy.ring);
 	engine->legacy.ring = ring;
 	engine->legacy.timeline = timeline;
 
-	GEM_BUG_ON(timeline->hwsp_ggtt != engine->status_page.vma);
+	gen7_wa_vma = gen7_ctx_vma(engine);
+	if (IS_ERR(gen7_wa_vma)) {
+		err = PTR_ERR(gen7_wa_vma);
+		goto err_ring;
+	}
 
-	if (IS_HASWELL(engine->i915) && engine->class == RENDER_CLASS) {
-		err = gen7_ctx_switch_bb_init(engine);
+	i915_gem_ww_ctx_init(&ww, false);
+
+retry:
+	err = i915_gem_object_lock(timeline->hwsp_ggtt->obj, &ww);
+	if (!err && gen7_wa_vma)
+		err = i915_gem_object_lock(gen7_wa_vma->obj, &ww);
+	if (!err && engine->legacy.ring->vma->obj)
+		err = i915_gem_object_lock(engine->legacy.ring->vma->obj, &ww);
+	if (!err)
+		err = intel_timeline_pin(timeline, &ww);
+	if (!err) {
+		err = intel_ring_pin(ring, &ww);
 		if (err)
-			goto err_ring_unpin;
+			intel_timeline_unpin(timeline);
+	}
+	GEM_BUG_ON(timeline->hwsp_ggtt != engine->status_page.vma);
+
+	if (gen7_wa_vma) {
+		err = gen7_ctx_switch_bb_init(engine, &ww, gen7_wa_vma);
+		if (err) {
+			intel_ring_unpin(ring);
+			intel_timeline_unpin(timeline);
+		}
 	}
 
+	if (err == -EDEADLK) {
+		err = i915_gem_ww_ctx_backoff(&ww);
+		if (!err)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&ww);
+	if (err)
+		goto err_gen7_put;
+
 	/* Finally, take ownership and responsibility for cleanup! */
 	engine->release = ring_release;
 
 	return 0;
 
-err_ring_unpin:
-	intel_ring_unpin(ring);
+err_gen7_put:
+	if (gen7_wa_vma) {
+		intel_context_put(gen7_wa_vma->private);
+		i915_gem_object_put(gen7_wa_vma->obj);
+	}
 err_ring:
 	intel_ring_put(ring);
-err_timeline_unpin:
-	intel_timeline_unpin(timeline);
 err_timeline:
 	intel_timeline_put(timeline);
 err:
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
