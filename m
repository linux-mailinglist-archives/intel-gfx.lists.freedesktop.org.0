Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E9530A3B1
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 09:57:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2905D6E48B;
	Mon,  1 Feb 2021 08:57:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 663B36E499
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 08:57:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23757788-1500050 
 for multiple; Mon, 01 Feb 2021 08:57:25 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Feb 2021 08:57:13 +0000
Message-Id: <20210201085715.27435-55-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210201085715.27435-1-chris@chris-wilson.co.uk>
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 55/57] drm/i915/gt: Implement ring scheduler for
 gen4-7
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
 .../gpu/drm/i915/gt/intel_ring_scheduler.c    | 459 +++++++++++++++++-
 drivers/gpu/drm/i915/i915_reg.h               |  10 +
 2 files changed, 466 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_scheduler.c b/drivers/gpu/drm/i915/gt/intel_ring_scheduler.c
index b6fcb18ef0a6..46372116011b 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_scheduler.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_scheduler.c
@@ -7,7 +7,12 @@
 
 #include <drm/i915_drm.h>
 
+#include "gen2_engine_cs.h"
+#include "gen6_engine_cs.h"
+#include "gen6_ppgtt.h"
+#include "gen7_renderclear.h"
 #include "i915_drv.h"
+#include "i915_mitigations.h"
 #include "intel_breadcrumbs.h"
 #include "intel_context.h"
 #include "intel_engine_pm.h"
@@ -182,8 +187,270 @@ static void ring_copy(struct intel_ring *dst,
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
+		IS_HASWELL(i915) ? engine->gt->info.num_engines - 1 : 0;
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
+
+	ring_advance(ring, cs);
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
+static u32 pp_dir(const struct i915_ppgtt *ppgtt)
+{
+	return container_of(ppgtt, const struct gen6_ppgtt, base)->pp_dir;
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
+	*cs++ = pp_dir(ppgtt);
+
+	/* Stall until the page table load is complete? */
+	*cs++ = MI_STORE_REGISTER_MEM | MI_SRM_LRM_GLOBAL_GTT;
+	*cs++ = i915_mmio_reg_offset(RING_PP_DIR_BASE(engine->mmio_base));
+	*cs++ = intel_gt_scratch_offset(engine->gt,
+					INTEL_GT_SCRATCH_FIELD_DEFAULT);
+	*cs++ = MI_NOOP;
+
+	ring_advance(ring, cs);
+}
+
+static struct i915_address_space *current_vm(struct intel_engine_cs *engine)
+{
+	struct intel_context *old = engine->legacy.context;
+
+	return old ? vm_alias(old->vm) : NULL;
+}
+
+static void gen4_emit_invalidate_rcs(struct intel_ring *ring,
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
+	ring_advance(ring, cs);
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
+	ring_advance(ring, cs);
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
+		if (engine->wa_ctx.vma->private != ce &&
+		    i915_mitigate_clear_residuals()) {
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
+			gen4_emit_invalidate_rcs(ring, engine);
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
@@ -218,10 +485,48 @@ copy_ports(struct i915_request **dst, struct i915_request **src, int count)
 		WRITE_ONCE(*dst++, *src++); /* avoid write tearing */
 }
 
+static inline void __write_tail(const struct intel_engine_cs *engine)
+{
+	ENGINE_WRITE(engine, RING_TAIL, engine->legacy.ring->tail);
+}
+
+static void wa_write_tail(const struct intel_engine_cs *engine)
+{
+	const i915_reg_t psmi = RING_PSMI_CTL(engine->mmio_base);
+	struct intel_uncore *uncore = engine->uncore;
+
+	intel_uncore_write_fw(uncore, psmi,
+			      _MASKED_BIT_ENABLE(PSMI_SLEEP_MSG_DISABLE));
+
+	/* Clear the context id. Here be magic! */
+	intel_uncore_write64_fw(uncore, RING_RNCID(engine->mmio_base), 0x0);
+
+	/* Wait for the ring not to be idle, i.e. for it to wake up. */
+	if (__intel_wait_for_register_fw(uncore, psmi,
+					 PSMI_SLEEP_INDICATOR, 0,
+					 1000, 0, NULL))
+		drm_err(&uncore->i915->drm,
+			"timed out waiting for %s to wake up\n",
+			engine->name);
+
+	/* Now that the ring is fully powered up, update the tail */
+	__write_tail(engine);
+
+	/*
+	 * Let the ring send IDLE messages to the GT again,
+	 * and so let it sleep to conserve power when idle.
+	 */
+	intel_uncore_write_fw(uncore, psmi,
+			      _MASKED_BIT_DISABLE(PSMI_SLEEP_MSG_DISABLE));
+}
+
 static inline void write_tail(const struct intel_engine_cs *engine)
 {
 	wmb(); /* paranoid flush of WCB before RING_TAIL write */
-	ENGINE_WRITE(engine, RING_TAIL, engine->legacy.ring->tail);
+	if (!engine->fw_active)
+		__write_tail(engine);
+	else
+		wa_write_tail(engine);
 }
 
 static void dequeue(struct i915_sched *se, struct intel_engine_cs *engine)
@@ -595,7 +900,14 @@ static int ring_context_pre_pin(struct intel_context *ce,
 				struct i915_gem_ww_ctx *ww,
 				void **unused)
 {
-	return 0;
+	struct i915_address_space *vm;
+	int err = 0;
+
+	vm = vm_alias(ce->vm);
+	if (vm)
+		err = gen6_ppgtt_pin(i915_vm_to_ppgtt((vm)), ww);
+
+	return err;
 }
 
 static int ring_context_pin(struct intel_context *ce, void *unused)
@@ -603,12 +915,22 @@ static int ring_context_pin(struct intel_context *ce, void *unused)
 	return 0;
 }
 
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
 }
 
 static void ring_context_post_unpin(struct intel_context *ce)
 {
+	__context_unpin_ppgtt(ce);
 }
 
 static void ring_context_reset(struct intel_context *ce)
@@ -667,12 +989,27 @@ static void ring_release(struct intel_engine_cs *engine)
 
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
+	if (INTEL_GEN(engine->i915) >= 6) {
+		engine->irq_enable = gen6_irq_enable;
+		engine->irq_disable = gen6_irq_disable;
+	} else if (INTEL_GEN(engine->i915) >= 5) {
+		engine->irq_enable = gen5_irq_enable;
+		engine->irq_disable = gen5_irq_disable;
+	} else {
+		engine->irq_enable = gen3_irq_enable;
+		engine->irq_disable = gen3_irq_disable;
+	}
 }
 
 static void setup_common(struct intel_engine_cs *engine)
@@ -681,7 +1018,7 @@ static void setup_common(struct intel_engine_cs *engine)
 
 	/* gen8+ are only supported with execlists */
 	GEM_BUG_ON(INTEL_GEN(i915) >= 8);
-	GEM_BUG_ON(INTEL_GEN(i915) < 8);
+	GEM_BUG_ON(INTEL_GEN(i915) < 4);
 
 	setup_irq(engine);
 
@@ -699,24 +1036,80 @@ static void setup_common(struct intel_engine_cs *engine)
 	engine->cops = &ring_context_ops;
 	engine->request_alloc = ring_request_alloc;
 
+	engine->emit_init_breadcrumb = gen4_emit_init_breadcrumb_xcs;
+
+	if (INTEL_GEN(i915) >= 6)
+		engine->emit_bb_start = gen6_emit_bb_start;
+	else
+		engine->emit_bb_start = gen4_emit_bb_start;
+
+	if (INTEL_GEN(i915) >= 7)
+		engine->emit_fini_breadcrumb = gen7_emit_breadcrumb_xcs;
+	else if (INTEL_GEN(i915) >= 6)
+		engine->emit_fini_breadcrumb = gen6_emit_breadcrumb_xcs;
+	else
+		engine->emit_fini_breadcrumb = gen4_emit_breadcrumb_xcs;
+
 	engine->set_default_submission = set_default_submission;
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
+	} else if (INTEL_GEN(i915) >= 6) {
+		engine->emit_flush = gen6_emit_flush_rcs;
+		engine->emit_fini_breadcrumb = gen6_emit_breadcrumb_rcs;
+	} else if (INTEL_GEN(i915) >= 5) {
+		engine->emit_flush = gen4_emit_flush_rcs;
+	} else {
+		engine->emit_flush = gen4_emit_flush_rcs;
+		engine->irq_enable_mask = I915_USER_INTERRUPT;
+	}
 }
 
 static void setup_vcs(struct intel_engine_cs *engine)
 {
+	if (INTEL_GEN(engine->i915) >= 6) {
+		if (IS_GEN(engine->i915, 6))
+			engine->fw_domain = FORCEWAKE_ALL;
+		engine->emit_flush = gen6_emit_flush_vcs;
+		engine->irq_enable_mask = GT_BSD_USER_INTERRUPT;
+	} else if (INTEL_GEN(engine->i915) >= 5) {
+		engine->emit_flush = gen4_emit_flush_vcs;
+		engine->irq_enable_mask = ILK_BSD_USER_INTERRUPT;
+	} else {
+		engine->emit_flush = gen4_emit_flush_vcs;
+		engine->irq_enable_mask = I915_BSD_USER_INTERRUPT;
+	}
 }
 
 static void setup_bcs(struct intel_engine_cs *engine)
 {
+	GEM_BUG_ON(INTEL_GEN(engine->i915) < 6);
+
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
@@ -725,6 +1118,58 @@ static unsigned int global_ring_size(void)
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
@@ -769,12 +1214,20 @@ int intel_ring_scheduler_setup(struct intel_engine_cs *engine)
 	GEM_BUG_ON(engine->legacy.ring);
 	engine->legacy.ring = ring;
 
+	if (IS_GEN(engine->i915, 7) && engine->class == RENDER_CLASS) {
+		err = gen7_ctx_switch_bb_init(engine);
+		if (err)
+			goto err_ring_unpin;
+	}
+
 	engine->flags |= I915_ENGINE_SUPPORTS_STATS;
 
 	/* Finally, take ownership and responsibility for cleanup! */
 	engine->release = ring_release;
 	return 0;
 
+err_ring_unpin:
+	intel_ring_unpin(ring);
 err_ring:
 	intel_ring_put(ring);
 err:
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 224ad897af34..2f4584202e5d 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2532,7 +2532,16 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define GEN6_VERSYNC	(RING_SYNC_1(VEBOX_RING_BASE))
 #define GEN6_VEVSYNC	(RING_SYNC_2(VEBOX_RING_BASE))
 #define GEN6_NOSYNC	INVALID_MMIO_REG
+
 #define RING_PSMI_CTL(base)	_MMIO((base) + 0x50)
+#define   PSMI_SLEEP_MSG_DISABLE		REG_BIT(0)
+#define   PSMI_SLEEP_FLUSH_DISABLE		REG_BIT(2)
+#define   PSMI_SLEEP_INDICATOR			REG_BIT(3)
+#define   PSMI_GO_INDICATOR			REG_BIT(4)
+#define   GEN12_PSMI_WAIT_FOR_EVENT_POWER_DOWN_DISABLE REG_BIT(7)
+#define   GEN8_PSMI_FF_DOP_CLOCK_GATE_DISABLE	REG_BIT(10)
+#define   GEN8_PSMI_RC_SEMA_IDLE_MSG_DISABLE	REG_BIT(12)
+
 #define RING_MAX_IDLE(base)	_MMIO((base) + 0x54)
 #define RING_HWS_PGA(base)	_MMIO((base) + 0x80)
 #define RING_ID(base)		_MMIO((base) + 0x8c)
@@ -2542,6 +2551,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   RESET_CTL_READY_TO_RESET REG_BIT(1)
 #define   RESET_CTL_REQUEST_RESET  REG_BIT(0)
 
+#define RING_RNCID(base)	_MMIO((base) + 0x198)
 #define RING_SEMA_WAIT_POLL(base) _MMIO((base) + 0x24c)
 
 #define HSW_GTT_CACHE_EN	_MMIO(0x4024)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
