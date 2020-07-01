Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9194210679
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 10:41:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99FF56E838;
	Wed,  1 Jul 2020 08:41:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A8BE6E432
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 08:41:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21671960-1500050 
 for multiple; Wed, 01 Jul 2020 09:41:04 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jul 2020 09:40:52 +0100
Message-Id: <20200701084053.6086-32-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200701084053.6086-1-chris@chris-wilson.co.uk>
References: <20200701084053.6086-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 32/33] drm/i915/gt: Implement ring scheduler for
 gen6/7
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

A key prolem with legacy ring buffer submission is that it is an inheret
FIFO queue across all clients; if one blocks, they all block. A
scheduler allows us to avoid that limitation, and ensures that all
clients can submit in parallel, removing the resource contention of the
global ringbuffer.

Having built the ring scheduler infrastructure over top of the global
ringbuffer submission, we now need to provide the HW knowledge required
to build command packets and implement context switching.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gt/intel_ring_scheduler.c    | 423 +++++++++++++++++-
 drivers/gpu/drm/i915/i915_reg.h               |   1 +
 2 files changed, 421 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_scheduler.c b/drivers/gpu/drm/i915/gt/intel_ring_scheduler.c
index 6b3c50e63bd9..1e4821109570 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_scheduler.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_scheduler.c
@@ -7,6 +7,10 @@
 
 #include <drm/i915_drm.h>
 
+#include "gen2_engine_cs.h"
+#include "gen6_engine_cs.h"
+#include "gen6_ppgtt.h"
+#include "gen7_renderclear.h"
 #include "i915_drv.h"
 #include "intel_context.h"
 #include "intel_engine_stats.h"
@@ -139,8 +143,258 @@ static void ring_copy(struct intel_ring *dst,
 	memcpy(out, src->vaddr + start, end - start);
 }
 
+static void mi_set_context(struct intel_ring *ring,
+			   struct intel_engine_cs *engine,
+			   struct intel_context *ce,
+			   u32 flags)
+{
+	struct drm_i915_private *i915 = engine->i915;
+	enum intel_engine_id id;
+	const int num_engines =
+		IS_HASWELL(i915) ? RUNTIME_INFO(i915)->num_engines - 1 : 0;
+	int len;
+	u32 *cs;
+
+	len = 4;
+	if (IS_GEN(i915, 7))
+		len += 2 + (num_engines ? 4 * num_engines + 6 : 0);
+	else if (IS_GEN(i915, 5))
+		len += 2;
+
+	cs = ring_map_dw(ring, len);
+
+	/* WaProgramMiArbOnOffAroundMiSetContext:ivb,vlv,hsw,bdw,chv */
+	if (IS_GEN(i915, 7)) {
+		*cs++ = MI_ARB_ON_OFF | MI_ARB_DISABLE;
+		if (num_engines) {
+			struct intel_engine_cs *signaller;
+
+			*cs++ = MI_LOAD_REGISTER_IMM(num_engines);
+			for_each_engine(signaller, engine->gt, id) {
+				if (signaller == engine)
+					continue;
+
+				*cs++ = i915_mmio_reg_offset(
+					   RING_PSMI_CTL(signaller->mmio_base));
+				*cs++ = _MASKED_BIT_ENABLE(
+						GEN6_PSMI_SLEEP_MSG_DISABLE);
+			}
+		}
+	} else if (IS_GEN(i915, 5)) {
+		/*
+		 * This w/a is only listed for pre-production ilk a/b steppings,
+		 * but is also mentioned for programming the powerctx. To be
+		 * safe, just apply the workaround; we do not use SyncFlush so
+		 * this should never take effect and so be a no-op!
+		 */
+		*cs++ = MI_SUSPEND_FLUSH | MI_SUSPEND_FLUSH_EN;
+	}
+
+	*cs++ = MI_NOOP;
+	*cs++ = MI_SET_CONTEXT;
+	*cs++ = i915_ggtt_offset(ce->state) | flags;
+	/*
+	 * w/a: MI_SET_CONTEXT must always be followed by MI_NOOP
+	 * WaMiSetContext_Hang:snb,ivb,vlv
+	 */
+	*cs++ = MI_NOOP;
+
+	if (IS_GEN(i915, 7)) {
+		if (num_engines) {
+			struct intel_engine_cs *signaller;
+			i915_reg_t last_reg = {}; /* keep gcc quiet */
+
+			*cs++ = MI_LOAD_REGISTER_IMM(num_engines);
+			for_each_engine(signaller, engine->gt, id) {
+				if (signaller == engine)
+					continue;
+
+				last_reg = RING_PSMI_CTL(signaller->mmio_base);
+				*cs++ = i915_mmio_reg_offset(last_reg);
+				*cs++ = _MASKED_BIT_DISABLE(
+						GEN6_PSMI_SLEEP_MSG_DISABLE);
+			}
+
+			/* Insert a delay before the next switch! */
+			*cs++ = MI_STORE_REGISTER_MEM | MI_SRM_LRM_GLOBAL_GTT;
+			*cs++ = i915_mmio_reg_offset(last_reg);
+			*cs++ = intel_gt_scratch_offset(engine->gt,
+							INTEL_GT_SCRATCH_FIELD_DEFAULT);
+			*cs++ = MI_NOOP;
+		}
+		*cs++ = MI_ARB_ON_OFF | MI_ARB_ENABLE;
+	} else if (IS_GEN(i915, 5)) {
+		*cs++ = MI_SUSPEND_FLUSH;
+	}
+}
+
+static struct i915_address_space *vm_alias(struct i915_address_space *vm)
+{
+	if (i915_is_ggtt(vm))
+		vm = &i915_vm_to_ggtt(vm)->alias->vm;
+
+	return vm;
+}
+
+static void load_pd_dir(struct intel_ring *ring,
+			struct intel_engine_cs *engine,
+			const struct i915_ppgtt *ppgtt)
+{
+	u32 *cs = ring_map_dw(ring, 10);
+
+	*cs++ = MI_LOAD_REGISTER_IMM(1);
+	*cs++ = i915_mmio_reg_offset(RING_PP_DIR_DCLV(engine->mmio_base));
+	*cs++ = PP_DIR_DCLV_2G;
+
+	*cs++ = MI_LOAD_REGISTER_IMM(1);
+	*cs++ = i915_mmio_reg_offset(RING_PP_DIR_BASE(engine->mmio_base));
+	*cs++ = px_base(ppgtt->pd)->ggtt_offset << 10;
+
+	/* Stall until the page table load is complete? */
+	*cs++ = MI_STORE_REGISTER_MEM | MI_SRM_LRM_GLOBAL_GTT;
+	*cs++ = i915_mmio_reg_offset(RING_PP_DIR_BASE(engine->mmio_base));
+	*cs++ = intel_gt_scratch_offset(engine->gt,
+					INTEL_GT_SCRATCH_FIELD_DEFAULT);
+	*cs++ = MI_NOOP;
+}
+
+static struct i915_address_space *current_vm(struct intel_engine_cs *engine)
+{
+	struct intel_context *old = engine->legacy.context;
+
+	return old ? vm_alias(old->vm) : NULL;
+}
+
+static void gen6_emit_invalidate_rcs(struct intel_ring *ring,
+				     struct intel_engine_cs *engine)
+{
+	u32 addr, flags;
+	u32 *cs;
+
+	addr = intel_gt_scratch_offset(engine->gt,
+				       INTEL_GT_SCRATCH_FIELD_RENDER_FLUSH);
+
+	flags = PIPE_CONTROL_QW_WRITE | PIPE_CONTROL_CS_STALL;
+	flags |= PIPE_CONTROL_TLB_INVALIDATE;
+
+	if (INTEL_GEN(engine->i915) >= 7)
+		flags |= PIPE_CONTROL_GLOBAL_GTT_IVB;
+	else
+		addr |= PIPE_CONTROL_GLOBAL_GTT;
+
+	cs = ring_map_dw(ring, 4);
+	*cs++ = GFX_OP_PIPE_CONTROL(4);
+	*cs++ = flags;
+	*cs++ = addr;
+	*cs++ = 0;
+}
+
+static struct i915_address_space *
+clear_residuals(struct intel_ring *ring, struct intel_engine_cs *engine)
+{
+	struct intel_context *ce = engine->kernel_context;
+	struct i915_address_space *vm = vm_alias(engine->gt->vm);
+	u32 flags;
+
+	if (vm != current_vm(engine))
+		load_pd_dir(ring, engine, i915_vm_to_ppgtt(vm));
+
+	if (ce->state)
+		mi_set_context(ring, engine, ce,
+			       MI_MM_SPACE_GTT | MI_RESTORE_INHIBIT);
+
+	if (IS_HASWELL(engine->i915))
+		flags = MI_BATCH_PPGTT_HSW | MI_BATCH_NON_SECURE_HSW;
+	else
+		flags = MI_BATCH_NON_SECURE_I965;
+
+	__gen6_emit_bb_start(ring_map_dw(ring, 2),
+			     engine->wa_ctx.vma->node.start, flags);
+
+	return vm;
+}
+
+static void remap_l3_slice(struct intel_ring *ring,
+			   struct intel_engine_cs *engine,
+			   int slice)
+{
+	u32 *cs, *remap_info = engine->i915->l3_parity.remap_info[slice];
+	int i;
+
+	if (!remap_info)
+		return;
+
+	/*
+	 * Note: We do not worry about the concurrent register cacheline hang
+	 * here because no other code should access these registers other than
+	 * at initialization time.
+	 */
+	cs = ring_map_dw(ring, GEN7_L3LOG_SIZE / 4 * 2 + 2);
+	*cs++ = MI_LOAD_REGISTER_IMM(GEN7_L3LOG_SIZE / 4);
+	for (i = 0; i < GEN7_L3LOG_SIZE / 4; i++) {
+		*cs++ = i915_mmio_reg_offset(GEN7_L3LOG(slice, i));
+		*cs++ = remap_info[i];
+	}
+	*cs++ = MI_NOOP;
+}
+
+static void remap_l3(struct intel_ring *ring,
+		     struct intel_engine_cs *engine,
+		     struct intel_context *ce)
+{
+	struct i915_gem_context *ctx =
+		rcu_dereference_protected(ce->gem_context, true);
+	int bit, idx = -1;
+
+	if (!ctx || !ctx->remap_slice)
+		return;
+
+	do {
+		bit = ffs(ctx->remap_slice);
+		remap_l3_slice(ring, engine, idx += bit);
+	} while (ctx->remap_slice >>= bit);
+}
+
 static void switch_context(struct intel_ring *ring, struct i915_request *rq)
 {
+	struct intel_engine_cs *engine = rq->engine;
+	struct i915_address_space *cvm = current_vm(engine);
+	struct intel_context *ce = rq->context;
+	struct i915_address_space *vm;
+
+	if (engine->wa_ctx.vma && ce != engine->kernel_context) {
+		if (engine->wa_ctx.vma->private != ce) {
+			cvm = clear_residuals(ring, engine);
+			intel_context_put(engine->wa_ctx.vma->private);
+			engine->wa_ctx.vma->private = intel_context_get(ce);
+		}
+	}
+
+	vm = vm_alias(ce->vm);
+	if (vm != cvm)
+		load_pd_dir(ring, engine, i915_vm_to_ppgtt(vm));
+
+	if (ce->state) {
+		u32 flags;
+
+		GEM_BUG_ON(engine->id != RCS0);
+
+		/* For resource streamer on HSW+ and power context elsewhere */
+		BUILD_BUG_ON(HSW_MI_RS_SAVE_STATE_EN != MI_SAVE_EXT_STATE_EN);
+		BUILD_BUG_ON(HSW_MI_RS_RESTORE_STATE_EN != MI_RESTORE_EXT_STATE_EN);
+
+		flags = MI_SAVE_EXT_STATE_EN | MI_MM_SPACE_GTT;
+		if (test_bit(CONTEXT_VALID_BIT, &ce->flags)) {
+			gen6_emit_invalidate_rcs(ring, engine);
+			flags |= MI_RESTORE_EXT_STATE_EN;
+		} else {
+			flags |= MI_RESTORE_INHIBIT;
+		}
+
+		mi_set_context(ring, engine, ce, flags);
+	}
+
+	remap_l3(ring, engine, ce);
 }
 
 static struct i915_request *ring_submit(struct i915_request *rq)
@@ -167,6 +421,15 @@ copy_active(struct i915_request **port, struct i915_request * const *active)
 	return port;
 }
 
+static void write_tail(struct intel_engine_cs *engine, u32 tail)
+{
+	/* Clear the context id. Here be magic! */
+	if (engine->fw_domain)
+		ENGINE_WRITE_FW(engine, RING_RNCID, 0);
+
+	ENGINE_WRITE(engine, RING_TAIL, tail);
+}
+
 static void dequeue(struct intel_engine_cs *engine)
 {
 	struct intel_engine_execlists * const el = &engine->execlists;
@@ -211,7 +474,7 @@ static void dequeue(struct intel_engine_cs *engine)
 	WRITE_ONCE(el->active, el->pending);
 
 	wmb(); /* paranoid flush of WCB before RING_TAIL write */
-	ENGINE_WRITE(engine, RING_TAIL, engine->legacy.ring->tail);
+	write_tail(engine, engine->legacy.ring->tail);
 	memcpy(el->inflight, el->pending,
 	       (port - el->pending + 1) * sizeof(*port));
 
@@ -421,6 +684,33 @@ static void submission_unpark(struct intel_engine_cs *engine)
 	intel_engine_pin_breadcrumbs_irq(engine);
 }
 
+static int gen4_emit_init_breadcrumb(struct i915_request *rq)
+{
+	struct intel_timeline *tl = i915_request_timeline(rq);
+	u32 *cs;
+
+	GEM_BUG_ON(i915_request_has_initial_breadcrumb(rq));
+	if (!tl->has_initial_breadcrumb)
+		return 0;
+
+	cs = intel_ring_begin(rq, 4);
+	if (IS_ERR(cs))
+		return PTR_ERR(cs);
+
+	*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
+	*cs++ = 0;
+	*cs++ = tl->hwsp_offset;
+	*cs++ = rq->fence.seqno - 1;
+
+	intel_ring_advance(rq, cs);
+
+	/* Record the updated position of the request's payload */
+	rq->infix = intel_ring_offset(rq, cs);
+
+	__set_bit(I915_FENCE_FLAG_INITIAL_BREADCRUMB, &rq->fence.flags);
+	return 0;
+}
+
 static void ring_context_destroy(struct kref *ref)
 {
 	struct intel_context *ce = container_of(ref, typeof(*ce), ref);
@@ -436,8 +726,30 @@ static void ring_context_destroy(struct kref *ref)
 	intel_context_free(ce);
 }
 
+static int __context_pin_ppgtt(struct intel_context *ce)
+{
+	struct i915_address_space *vm;
+	int err = 0;
+
+	vm = vm_alias(ce->vm);
+	if (vm)
+		err = gen6_ppgtt_pin(i915_vm_to_ppgtt((vm)));
+
+	return err;
+}
+
+static void __context_unpin_ppgtt(struct intel_context *ce)
+{
+	struct i915_address_space *vm;
+
+	vm = vm_alias(ce->vm);
+	if (vm)
+		gen6_ppgtt_unpin(i915_vm_to_ppgtt(vm));
+}
+
 static void ring_context_unpin(struct intel_context *ce)
 {
+	__context_unpin_ppgtt(ce);
 }
 
 static int alloc_context_vma(struct intel_context *ce)
@@ -565,7 +877,7 @@ static int ring_context_alloc(struct intel_context *ce)
 
 static int ring_context_pin(struct intel_context *ce)
 {
-	return 0;
+	return __context_pin_ppgtt(ce);
 }
 
 static void ring_context_reset(struct intel_context *ce)
@@ -621,12 +933,19 @@ static void ring_release(struct intel_engine_cs *engine)
 
 	set_current_context(&engine->legacy.context, NULL);
 
+	if (engine->wa_ctx.vma) {
+		intel_context_put(engine->wa_ctx.vma->private);
+		i915_vma_unpin_and_release(&engine->wa_ctx.vma, 0);
+	}
+
 	intel_ring_unpin(engine->legacy.ring);
 	intel_ring_put(engine->legacy.ring);
 }
 
 static void setup_irq(struct intel_engine_cs *engine)
 {
+	engine->irq_enable = gen6_irq_enable;
+	engine->irq_disable = gen6_irq_disable;
 }
 
 static void setup_common(struct intel_engine_cs *engine)
@@ -635,7 +954,7 @@ static void setup_common(struct intel_engine_cs *engine)
 
 	/* gen8+ are only supported with execlists */
 	GEM_BUG_ON(INTEL_GEN(i915) >= 8);
-	GEM_BUG_ON(INTEL_GEN(i915) < 8);
+	GEM_BUG_ON(INTEL_GEN(i915) < 6);
 
 	setup_irq(engine);
 
@@ -651,24 +970,62 @@ static void setup_common(struct intel_engine_cs *engine)
 	engine->cops = &ring_context_ops;
 	engine->request_alloc = ring_request_alloc;
 
+	engine->emit_init_breadcrumb = gen4_emit_init_breadcrumb;
+	if (INTEL_GEN(i915) >= 7)
+		engine->emit_fini_breadcrumb = gen7_emit_breadcrumb_xcs;
+	else if (INTEL_GEN(i915) >= 6)
+		engine->emit_fini_breadcrumb = gen6_emit_breadcrumb_xcs;
+	else
+		engine->emit_fini_breadcrumb = gen3_emit_breadcrumb;
+
 	engine->set_default_submission = set_default_submission;
+
+	engine->emit_bb_start = gen6_emit_bb_start;
 }
 
 static void setup_rcs(struct intel_engine_cs *engine)
 {
+	struct drm_i915_private *i915 = engine->i915;
+
+	if (HAS_L3_DPF(i915))
+		engine->irq_keep_mask = GT_RENDER_L3_PARITY_ERROR_INTERRUPT;
+
+	engine->irq_enable_mask = GT_RENDER_USER_INTERRUPT;
+
+	if (INTEL_GEN(i915) >= 7) {
+		engine->emit_flush = gen7_emit_flush_rcs;
+		engine->emit_fini_breadcrumb = gen7_emit_breadcrumb_rcs;
+		if (IS_HASWELL(i915))
+			engine->emit_bb_start = hsw_emit_bb_start;
+	} else {
+		engine->emit_flush = gen6_emit_flush_rcs;
+		engine->emit_fini_breadcrumb = gen6_emit_breadcrumb_rcs;
+	}
 }
 
 static void setup_vcs(struct intel_engine_cs *engine)
 {
+	engine->emit_flush = gen6_emit_flush_vcs;
+	engine->irq_enable_mask = GT_BSD_USER_INTERRUPT;
+
+	if (IS_GEN(engine->i915, 6))
+		engine->fw_domain = FORCEWAKE_ALL;
 }
 
 static void setup_bcs(struct intel_engine_cs *engine)
 {
+	engine->emit_flush = gen6_emit_flush_xcs;
+	engine->irq_enable_mask = GT_BLT_USER_INTERRUPT;
 }
 
 static void setup_vecs(struct intel_engine_cs *engine)
 {
 	GEM_BUG_ON(!IS_HASWELL(engine->i915));
+
+	engine->emit_flush = gen6_emit_flush_xcs;
+	engine->irq_enable_mask = PM_VEBOX_USER_INTERRUPT;
+	engine->irq_enable = hsw_irq_enable_vecs;
+	engine->irq_disable = hsw_irq_disable_vecs;
 }
 
 static unsigned int global_ring_size(void)
@@ -677,6 +1034,58 @@ static unsigned int global_ring_size(void)
 	return roundup_pow_of_two(EXECLIST_MAX_PORTS * SZ_16K + SZ_4K);
 }
 
+static int gen7_ctx_switch_bb_init(struct intel_engine_cs *engine)
+{
+	struct drm_i915_gem_object *obj;
+	struct i915_vma *vma;
+	int size;
+	int err;
+
+	size = gen7_setup_clear_gpr_bb(engine, NULL /* probe size */);
+	if (size <= 0)
+		return size;
+
+	size = ALIGN(size, PAGE_SIZE);
+	obj = i915_gem_object_create_internal(engine->i915, size);
+	if (IS_ERR(obj))
+		return PTR_ERR(obj);
+
+	vma = i915_vma_instance(obj, engine->gt->vm, NULL);
+	if (IS_ERR(vma)) {
+		err = PTR_ERR(vma);
+		goto err_obj;
+	}
+
+	vma->private = intel_context_create(engine); /* dummy residuals */
+	if (IS_ERR(vma->private)) {
+		err = PTR_ERR(vma->private);
+		goto err_obj;
+	}
+
+	err = i915_vma_pin(vma, 0, 0, PIN_USER | PIN_HIGH);
+	if (err)
+		goto err_private;
+
+	err = i915_vma_sync(vma);
+	if (err)
+		goto err_unpin;
+
+	size = gen7_setup_clear_gpr_bb(engine, vma);
+	if (err)
+		goto err_unpin;
+
+	engine->wa_ctx.vma = vma;
+	return 0;
+
+err_unpin:
+	i915_vma_unpin(vma);
+err_private:
+	intel_context_put(vma->private);
+err_obj:
+	i915_gem_object_put(obj);
+	return err;
+}
+
 int intel_ring_scheduler_setup(struct intel_engine_cs *engine)
 {
 	struct intel_ring *ring;
@@ -720,6 +1129,12 @@ int intel_ring_scheduler_setup(struct intel_engine_cs *engine)
 	GEM_BUG_ON(engine->legacy.ring);
 	engine->legacy.ring = ring;
 
+	if (IS_HASWELL(engine->i915) && engine->class == RENDER_CLASS) {
+		err = gen7_ctx_switch_bb_init(engine);
+		if (err)
+			goto err_ring_unpin;
+	}
+
 	engine->flags |= I915_ENGINE_HAS_SCHEDULER;
 	engine->flags |= I915_ENGINE_NEEDS_BREADCRUMB_TASKLET;
 	engine->flags |= I915_ENGINE_SUPPORTS_STATS;
@@ -728,6 +1143,8 @@ int intel_ring_scheduler_setup(struct intel_engine_cs *engine)
 	engine->release = ring_release;
 	return 0;
 
+err_ring_unpin:
+	intel_ring_unpin(ring);
 err_ring:
 	intel_ring_put(ring);
 err:
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 9d6536afc94b..0607dafe2efa 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2522,6 +2522,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   RESET_CTL_CAT_ERROR	   REG_BIT(2)
 #define   RESET_CTL_READY_TO_RESET REG_BIT(1)
 #define   RESET_CTL_REQUEST_RESET  REG_BIT(0)
+#define RING_RNCID(base)	_MMIO((base) + 0x198)
 
 #define RING_SEMA_WAIT_POLL(base) _MMIO((base) + 0x24c)
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
