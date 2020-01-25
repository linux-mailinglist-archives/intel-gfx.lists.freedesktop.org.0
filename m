Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95ED514926E
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Jan 2020 01:56:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9347B72BF3;
	Sat, 25 Jan 2020 00:56:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 770AB72BEE
 for <intel-gfx@lists.freedesktop.org>; Sat, 25 Jan 2020 00:56:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 16:56:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,359,1574150400"; d="scan'208";a="426790558"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga005.fm.intel.com with ESMTP; 24 Jan 2020 16:56:16 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 16:55:36 -0800
Message-Id: <20200125005537.31860-6-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200125005537.31860-1-daniele.ceraolospurio@intel.com>
References: <20200125005537.31860-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 5/6] drm/i915/guc: Add initial context ops for GuC
 submission
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

Code is still very similar to the execlists side, with some
simplifications, but it will diverge soon once we start adding the async
communication with GuC.

Most of the code as been duplicated, with the exception of hw objects
(ce->state, ring) and lrc contents, because these map to HW
functionality and are independent from the submission method.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 179 ++++++++++--------
 drivers/gpu/drm/i915/gt/intel_lrc.h           |  10 +-
 drivers/gpu/drm/i915/gt/selftest_lrc.c        |  12 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  97 +++++++++-
 4 files changed, 211 insertions(+), 87 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index cd15ab7fb82f..3178aa38deec 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -230,14 +230,11 @@ static struct virtual_engine *to_virtual_engine(struct intel_engine_cs *engine)
 static int __execlists_context_alloc(struct intel_context *ce,
 				     struct intel_engine_cs *engine);
 
-static void execlists_init_reg_state(u32 *reg_state,
-				     const struct intel_context *ce,
-				     const struct intel_engine_cs *engine,
-				     const struct intel_ring *ring,
-				     bool close);
-static void
-__execlists_update_reg_state(const struct intel_context *ce,
-			     const struct intel_engine_cs *engine);
+static void lr_context_init_reg_state(u32 *reg_state,
+				      const struct intel_context *ce,
+				      const struct intel_engine_cs *engine,
+				      const struct intel_ring *ring,
+				      bool close);
 
 static void mark_eio(struct i915_request *rq)
 {
@@ -457,10 +454,9 @@ assert_priority_queue(const struct i915_request *prev,
  * engine info, SW context ID and SW counter need to form a unique number
  * (Context ID) per lrc.
  */
-static u64
-lrc_descriptor(struct intel_context *ce, struct intel_engine_cs *engine)
+u32 intel_lrc_descriptor_default_hw_flags(struct intel_context *ce)
 {
-	u64 desc;
+	u32 desc;
 
 	desc = INTEL_LEGACY_32B_CONTEXT;
 	if (i915_vm_is_4lvl(ce->vm))
@@ -468,10 +464,20 @@ lrc_descriptor(struct intel_context *ce, struct intel_engine_cs *engine)
 	desc <<= GEN8_CTX_ADDRESSING_MODE_SHIFT;
 
 	desc |= GEN8_CTX_VALID | GEN8_CTX_PRIVILEGE;
+
+	desc |= i915_ggtt_offset(ce->state); /* bits 12-31 */
+
+	return desc;
+}
+
+static u64
+lrc_descriptor(struct intel_context *ce, struct intel_engine_cs *engine)
+{
+	u64 desc = intel_lrc_descriptor_default_hw_flags(ce);
+
 	if (IS_GEN(engine->i915, 8))
 		desc |= GEN8_CTX_L3LLC_COHERENT;
 
-	desc |= i915_ggtt_offset(ce->state); /* bits 12-31 */
 	/*
 	 * The following 32bits are copied into the OA reports (dword 2).
 	 * Consider updating oa_get_render_ctx_id in i915_perf.c when changing
@@ -1154,7 +1160,7 @@ static void restore_default_state(struct intel_context *ce,
 		       engine->pinned_default_state + LRC_STATE_PN * PAGE_SIZE,
 		       engine->context_size - PAGE_SIZE);
 
-	execlists_init_reg_state(regs, ce, engine, ce->ring, false);
+	lr_context_init_reg_state(regs, ce, engine, ce->ring, false);
 }
 
 static void reset_active(struct i915_request *rq,
@@ -1191,7 +1197,7 @@ static void reset_active(struct i915_request *rq,
 
 	/* Scrub the context image to prevent replaying the previous batch */
 	restore_default_state(ce, engine);
-	__execlists_update_reg_state(ce, engine);
+	intel_lr_context_update_reg_state(ce, engine);
 
 	/* We've switched away, so this should be a no-op, but intent matters */
 	ce->lrc_desc |= CTX_DESC_FORCE_RESTORE;
@@ -2805,12 +2811,6 @@ static void execlists_submit_request(struct i915_request *request)
 	spin_unlock_irqrestore(&engine->active.lock, flags);
 }
 
-static void __execlists_context_fini(struct intel_context *ce)
-{
-	intel_ring_put(ce->ring);
-	i915_vma_put(ce->state);
-}
-
 static void execlists_context_destroy(struct kref *kref)
 {
 	struct intel_context *ce = container_of(kref, typeof(*ce), ref);
@@ -2819,7 +2819,7 @@ static void execlists_context_destroy(struct kref *kref)
 	GEM_BUG_ON(intel_context_is_pinned(ce));
 
 	if (ce->state)
-		__execlists_context_fini(ce);
+		intel_lr_context_objects_destroy(ce);
 
 	intel_context_fini(ce);
 	intel_context_free(ce);
@@ -2858,9 +2858,8 @@ static void execlists_context_unpin(struct intel_context *ce)
 	i915_gem_object_unpin_map(ce->state->obj);
 }
 
-static void
-__execlists_update_reg_state(const struct intel_context *ce,
-			     const struct intel_engine_cs *engine)
+void intel_lr_context_update_reg_state(const struct intel_context *ce,
+				       const struct intel_engine_cs *engine)
 {
 	struct intel_ring *ring = ce->ring;
 	u32 *regs = ce->lrc_reg_state;
@@ -2898,7 +2897,7 @@ __execlists_context_pin(struct intel_context *ce,
 
 	ce->lrc_desc = lrc_descriptor(ce, engine) | CTX_DESC_FORCE_RESTORE;
 	ce->lrc_reg_state = vaddr + LRC_STATE_PN * PAGE_SIZE;
-	__execlists_update_reg_state(ce, engine);
+	intel_lr_context_update_reg_state(ce, engine);
 
 	return 0;
 }
@@ -2915,32 +2914,7 @@ static int execlists_context_alloc(struct intel_context *ce)
 
 static void execlists_context_reset(struct intel_context *ce)
 {
-	CE_TRACE(ce, "reset\n");
-	GEM_BUG_ON(!intel_context_is_pinned(ce));
-
-	/*
-	 * Because we emit WA_TAIL_DWORDS there may be a disparity
-	 * between our bookkeeping in ce->ring->head and ce->ring->tail and
-	 * that stored in context. As we only write new commands from
-	 * ce->ring->tail onwards, everything before that is junk. If the GPU
-	 * starts reading from its RING_HEAD from the context, it may try to
-	 * execute that junk and die.
-	 *
-	 * The contexts that are stilled pinned on resume belong to the
-	 * kernel, and are local to each engine. All other contexts will
-	 * have their head/tail sanitized upon pinning before use, so they
-	 * will never see garbage,
-	 *
-	 * So to avoid that we reset the context images upon resume. For
-	 * simplicity, we just zero everything out.
-	 */
-	intel_ring_reset(ce->ring, ce->ring->emit);
-
-	/* Scrub away the garbage */
-	execlists_init_reg_state(ce->lrc_reg_state,
-				 ce, ce->engine, ce->ring, true);
-	__execlists_update_reg_state(ce, ce->engine);
-
+	intel_lr_context_objects_state_reset(ce);
 	ce->lrc_desc |= CTX_DESC_FORCE_RESTORE;
 }
 
@@ -3591,7 +3565,7 @@ static void __execlists_reset(struct intel_engine_cs *engine, bool stalled)
 		     ce->ring->head, ce->ring->tail);
 	intel_ring_update_space(ce->ring);
 	__execlists_reset_reg_state(ce, engine);
-	__execlists_update_reg_state(ce, engine);
+	intel_lr_context_update_reg_state(ce, engine);
 	ce->lrc_desc |= CTX_DESC_FORCE_RESTORE; /* paranoid: GPU was reset! */
 
 unwind:
@@ -4322,7 +4296,7 @@ static void rcs_submission_override(struct intel_engine_cs *engine)
 	}
 }
 
-void intel_execlists_submission_vfuncs(struct intel_engine_cs *engine)
+static void execlists_submission_vfuncs(struct intel_engine_cs *engine)
 {
 	logical_ring_default_vfuncs(engine);
 
@@ -4342,7 +4316,7 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 	timer_setup(&engine->execlists.timer, execlists_timeslice, 0);
 	timer_setup(&engine->execlists.preempt, execlists_preempt, 0);
 
-	intel_execlists_submission_vfuncs(engine);
+	execlists_submission_vfuncs(engine);
 	logical_ring_default_irqs(engine);
 
 	intel_logical_ring_init_workaround_bb(engine);
@@ -4478,11 +4452,11 @@ static struct i915_ppgtt *vm_alias(struct i915_address_space *vm)
 		return i915_vm_to_ppgtt(vm);
 }
 
-static void execlists_init_reg_state(u32 *regs,
-				     const struct intel_context *ce,
-				     const struct intel_engine_cs *engine,
-				     const struct intel_ring *ring,
-				     bool inhibit)
+static void lr_context_init_reg_state(u32 *regs,
+				      const struct intel_context *ce,
+				      const struct intel_engine_cs *engine,
+				      const struct intel_ring *ring,
+				      bool inhibit)
 {
 	/*
 	 * A context is actually a big batch buffer with several
@@ -4544,8 +4518,8 @@ populate_lr_context(struct intel_context *ce,
 
 	/* The second page of the context object contains some fields which must
 	 * be set up prior to the first execution. */
-	execlists_init_reg_state(vaddr + LRC_STATE_PN * PAGE_SIZE,
-				 ce, engine, ring, inhibit);
+	lr_context_init_reg_state(vaddr + LRC_STATE_PN * PAGE_SIZE,
+				  ce, engine, ring, inhibit);
 
 	ret = 0;
 err_unpin_ctx:
@@ -4554,8 +4528,8 @@ populate_lr_context(struct intel_context *ce,
 	return ret;
 }
 
-static int __execlists_context_alloc(struct intel_context *ce,
-				     struct intel_engine_cs *engine)
+int intel_lr_context_objects_create(struct intel_context *ce,
+				    struct intel_engine_cs *engine)
 {
 	struct drm_i915_gem_object *ctx_obj;
 	struct intel_ring *ring;
@@ -4579,18 +4553,6 @@ static int __execlists_context_alloc(struct intel_context *ce,
 		goto error_deref_obj;
 	}
 
-	if (!ce->timeline) {
-		struct intel_timeline *tl;
-
-		tl = intel_timeline_create(engine->gt, NULL);
-		if (IS_ERR(tl)) {
-			ret = PTR_ERR(tl);
-			goto error_deref_obj;
-		}
-
-		ce->timeline = tl;
-	}
-
 	ring = intel_engine_create_ring(engine, (unsigned long)ce->ring);
 	if (IS_ERR(ring)) {
 		ret = PTR_ERR(ring);
@@ -4615,6 +4577,69 @@ static int __execlists_context_alloc(struct intel_context *ce,
 	return ret;
 }
 
+void intel_lr_context_objects_destroy(struct intel_context *ce)
+{
+	intel_ring_put(ce->ring);
+	i915_vma_put(ce->state);
+}
+
+void intel_lr_context_objects_state_reset(struct intel_context *ce)
+{
+	CE_TRACE(ce, "reset\n");
+	GEM_BUG_ON(!intel_context_is_pinned(ce));
+
+	/*
+	 * Because we emit WA_TAIL_DWORDS there may be a disparity
+	 * between our bookkeeping in ce->ring->head and ce->ring->tail and
+	 * that stored in context. As we only write new commands from
+	 * ce->ring->tail onwards, everything before that is junk. If the GPU
+	 * starts reading from its RING_HEAD from the context, it may try to
+	 * execute that junk and die.
+	 *
+	 * The contexts that are stilled pinned on resume belong to the
+	 * kernel, and are local to each engine. All other contexts will
+	 * have their head/tail sanitized upon pinning before use, so they
+	 * will never see garbage,
+	 *
+	 * So to avoid that we reset the context images upon resume. For
+	 * simplicity, we just zero everything out.
+	 */
+	intel_ring_reset(ce->ring, ce->ring->emit);
+
+	/* Scrub away the garbage */
+	lr_context_init_reg_state(ce->lrc_reg_state,
+				  ce, ce->engine, ce->ring, true);
+	intel_lr_context_update_reg_state(ce, ce->engine);
+}
+
+static int __execlists_context_alloc(struct intel_context *ce,
+				     struct intel_engine_cs *engine)
+{
+	int ret;
+
+	ret = intel_lr_context_objects_create(ce, engine);
+	if (ret)
+		return ret;
+
+	if (!ce->timeline) {
+		struct intel_timeline *tl;
+
+		tl = intel_timeline_create(engine->gt, NULL);
+		if (IS_ERR(tl)) {
+			ret = PTR_ERR(tl);
+			goto error_destroy;
+		}
+
+		ce->timeline = tl;
+	}
+
+	return 0;
+
+error_destroy:
+	intel_lr_context_objects_destroy(ce);
+	return ret;
+}
+
 static struct list_head *virtual_queue(struct virtual_engine *ve)
 {
 	return &ve->base.execlists.default_priolist.requests[0];
@@ -4649,7 +4674,7 @@ static void virtual_context_destroy(struct kref *kref)
 	GEM_BUG_ON(__tasklet_is_scheduled(&ve->base.execlists.tasklet));
 
 	if (ve->context.state)
-		__execlists_context_fini(&ve->context);
+		intel_lr_context_objects_destroy(&ve->context);
 	intel_context_fini(&ve->context);
 
 	kfree(ve->bonds);
@@ -5234,7 +5259,7 @@ void intel_lr_context_reset(struct intel_engine_cs *engine,
 	ce->ring->head = head;
 	intel_ring_update_space(ce->ring);
 
-	__execlists_update_reg_state(ce, engine);
+	intel_lr_context_update_reg_state(ce, engine);
 }
 
 bool
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.h b/drivers/gpu/drm/i915/gt/intel_lrc.h
index c5afae6bc89b..17cabe4b9898 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.h
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.h
@@ -85,7 +85,6 @@ void intel_logical_ring_fini_workaround_bb(struct intel_engine_cs *engine);
 void intel_logical_ring_cleanup(struct intel_engine_cs *engine);
 
 int intel_execlists_submission_setup(struct intel_engine_cs *engine);
-void intel_execlists_submission_vfuncs(struct intel_engine_cs *engine);
 
 int gen8_emit_flush(struct i915_request *request, u32 mode);
 int gen11_emit_flush_render(struct i915_request *request, u32 mode);
@@ -104,6 +103,15 @@ int gen12_emit_flush_render(struct i915_request *request, u32 mode);
 
 void intel_execlists_set_default_submission(struct intel_engine_cs *engine);
 
+int intel_lr_context_objects_create(struct intel_context *ce,
+				    struct intel_engine_cs *engine);
+void intel_lr_context_objects_destroy(struct intel_context *ce);
+void intel_lr_context_objects_state_reset(struct intel_context *ce);
+
+u32 intel_lrc_descriptor_default_hw_flags(struct intel_context *ce);
+
+void intel_lr_context_update_reg_state(const struct intel_context *ce,
+				       const struct intel_engine_cs *engine);
 void intel_lr_context_reset(struct intel_engine_cs *engine,
 			    struct intel_context *ce,
 			    u32 head,
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 753cb4959246..57f0ee15795c 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -186,7 +186,7 @@ static int live_unlite_restore(struct intel_gt *gt, int prio)
 		}
 		GEM_BUG_ON(!ce[1]->ring->size);
 		intel_ring_reset(ce[1]->ring, ce[1]->ring->size / 2);
-		__execlists_update_reg_state(ce[1], engine);
+		intel_lr_context_update_reg_state(ce[1], engine);
 
 		rq[0] = igt_spinner_create_request(&spin, ce[0], MI_ARB_CHECK);
 		if (IS_ERR(rq[0])) {
@@ -3664,11 +3664,11 @@ static int live_lrc_layout(void *arg)
 		}
 		hw += LRC_STATE_PN * PAGE_SIZE / sizeof(*hw);
 
-		execlists_init_reg_state(memset(lrc, POISON_INUSE, PAGE_SIZE),
-					 engine->kernel_context,
-					 engine,
-					 engine->kernel_context->ring,
-					 true);
+		lr_context_init_reg_state(memset(lrc, POISON_INUSE, PAGE_SIZE),
+					  engine->kernel_context,
+					  engine,
+					  engine->kernel_context->ring,
+					  true);
 
 		dw = 0;
 		do {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index edefb3cf135f..03e0a8180f77 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -348,6 +348,99 @@ static void __guc_dequeue(struct intel_engine_cs *engine)
 	execlists->active = execlists->inflight;
 }
 
+static int guc_submission_context_alloc(struct intel_context *ce)
+{
+	struct intel_engine_cs *engine = ce->engine;
+	int ret;
+
+	ret = intel_lr_context_objects_create(ce, engine);
+	if (ret)
+		return ret;
+
+	if (!ce->timeline) {
+		struct intel_timeline *tl;
+
+		tl = intel_timeline_create(engine->gt, NULL);
+		if (IS_ERR(tl)) {
+			ret = PTR_ERR(tl);
+			goto error_destroy;
+		}
+
+		ce->timeline = tl;
+	}
+
+	return 0;
+
+error_destroy:
+	intel_lr_context_objects_destroy(ce);
+	return ret;
+}
+
+static void guc_submission_context_destroy(struct kref *kref)
+{
+	struct intel_context *ce = container_of(kref, typeof(*ce), ref);
+
+	GEM_BUG_ON(!i915_active_is_idle(&ce->active));
+	GEM_BUG_ON(intel_context_is_pinned(ce));
+
+	if (ce->state)
+		intel_lr_context_objects_destroy(ce);
+
+	intel_context_fini(ce);
+	intel_context_free(ce);
+}
+
+static void guc_submission_context_reset(struct intel_context *ce)
+{
+	intel_lr_context_objects_state_reset(ce);
+}
+
+static int guc_submission_context_pin(struct intel_context *ce)
+{
+	struct intel_engine_cs *engine = ce->engine;
+	void *vaddr;
+
+	GEM_BUG_ON(!ce->state);
+	GEM_BUG_ON(!i915_vma_is_pinned(ce->state));
+
+	vaddr = i915_gem_object_pin_map(ce->state->obj,
+					i915_coherent_map_type(engine->i915) |
+					I915_MAP_OVERRIDE);
+	if (IS_ERR(vaddr))
+		return PTR_ERR(vaddr);
+
+	/* GuC owns the ctx ID */
+	ce->lrc_desc = intel_lrc_descriptor_default_hw_flags(ce);
+	ce->lrc_reg_state = vaddr + LRC_STATE_PN * PAGE_SIZE;
+	intel_lr_context_update_reg_state(ce, engine);
+
+	/* TODO: talk to the GuC! */
+
+	return 0;
+}
+
+static void guc_submission_context_unpin(struct intel_context *ce)
+{
+	/* TODO: check redzone */
+
+	i915_gem_object_unpin_map(ce->state->obj);
+
+	/* TODO: talk to the GuC! */
+}
+
+static const struct intel_context_ops guc_context_ops = {
+	.alloc = guc_submission_context_alloc,
+
+	.pin = guc_submission_context_pin,
+	.unpin = guc_submission_context_unpin,
+
+	.enter = intel_context_enter_engine,
+	.exit = intel_context_exit_engine,
+
+	.reset = guc_submission_context_reset,
+	.destroy = guc_submission_context_destroy,
+};
+
 static void guc_submission_tasklet(unsigned long data)
 {
 	struct intel_engine_cs * const engine = (struct intel_engine_cs *)data;
@@ -774,6 +867,7 @@ static void guc_submission_default_vfuncs(struct intel_engine_cs *engine)
 
 	engine->resume = guc_submission_resume;
 
+	engine->cops = &guc_context_ops;
 	engine->request_alloc = guc_submission_request_alloc;
 
 	engine->emit_flush = gen8_emit_flush;
@@ -809,9 +903,6 @@ static void rcs_submission_override(struct intel_engine_cs *engine)
 
 void guc_submission_vfuncs(struct intel_engine_cs *engine)
 {
-	/* XXX: still using base execlists vfuncs and overriding some of them */
-	intel_execlists_submission_vfuncs(engine);
-
 	guc_submission_default_vfuncs(engine);
 
 	if (engine->class == RENDER_CLASS)
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
