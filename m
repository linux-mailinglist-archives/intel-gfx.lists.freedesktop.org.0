Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DAC011FB93
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Dec 2019 22:56:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08E4E6E172;
	Sun, 15 Dec 2019 21:56:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65BB96E172
 for <intel-gfx@lists.freedesktop.org>; Sun, 15 Dec 2019 21:56:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19589015-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sun, 15 Dec 2019 21:56:46 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 15 Dec 2019 21:56:46 +0000
Message-Id: <20191215215646.2377355-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gt: Set vm again after MI_SET_CONTEXT
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

Reloading the PD after MI_SET_CONTEXT, along with copious amounts of
flushes, so far is making Baytrail more content.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 101 +++++++-----------
 drivers/gpu/drm/i915/i915_gem_gtt.c           |   2 +
 2 files changed, 43 insertions(+), 60 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 30ba67c9abe9..4fa1c89620a0 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -1371,51 +1371,27 @@ static int load_pd_dir(struct i915_request *rq,
 	const struct intel_engine_cs * const engine = rq->engine;
 	u32 *cs;
 
-	cs = intel_ring_begin(rq, 12);
+	cs = intel_ring_begin(rq, 10);
 	if (IS_ERR(cs))
 		return PTR_ERR(cs);
 
-	*cs++ = MI_LOAD_REGISTER_IMM(1);
+	*cs++ = MI_LOAD_REGISTER_IMM(3);
 	*cs++ = i915_mmio_reg_offset(RING_PP_DIR_DCLV(engine->mmio_base));
 	*cs++ = valid;
-
-	*cs++ = MI_STORE_REGISTER_MEM | MI_SRM_LRM_GLOBAL_GTT;
-	*cs++ = i915_mmio_reg_offset(RING_PP_DIR_DCLV(engine->mmio_base));
-	*cs++ = intel_gt_scratch_offset(rq->engine->gt,
-					INTEL_GT_SCRATCH_FIELD_DEFAULT);
-
-	*cs++ = MI_LOAD_REGISTER_IMM(1);
 	*cs++ = i915_mmio_reg_offset(RING_PP_DIR_BASE(engine->mmio_base));
 	*cs++ = px_base(ppgtt->pd)->ggtt_offset << 10;
+	*cs++ = i915_mmio_reg_offset(RING_INSTPM(engine->mmio_base));
+	*cs++ = _MASKED_BIT_ENABLE(INSTPM_TLB_INVALIDATE);
 
 	/* Stall until the page table load is complete? */
 	*cs++ = MI_STORE_REGISTER_MEM | MI_SRM_LRM_GLOBAL_GTT;
 	*cs++ = i915_mmio_reg_offset(RING_PP_DIR_BASE(engine->mmio_base));
-	*cs++ = intel_gt_scratch_offset(rq->engine->gt,
+	*cs++ = intel_gt_scratch_offset(engine->gt,
 					INTEL_GT_SCRATCH_FIELD_DEFAULT);
 
 	intel_ring_advance(rq, cs);
 
-	return rq->engine->emit_flush(rq, EMIT_FLUSH);
-}
-
-static int flush_tlb(struct i915_request *rq)
-{
-	const struct intel_engine_cs * const engine = rq->engine;
-	u32 *cs;
-
-	cs = intel_ring_begin(rq, 4);
-	if (IS_ERR(cs))
-		return PTR_ERR(cs);
-
-	*cs++ = MI_LOAD_REGISTER_IMM(1);
-	*cs++ = i915_mmio_reg_offset(RING_INSTPM(engine->mmio_base));
-	*cs++ = _MASKED_BIT_ENABLE(INSTPM_TLB_INVALIDATE);
-
-	*cs++ = MI_NOOP;
-	intel_ring_advance(rq, cs);
-
-	return 0;
+	return engine->emit_flush(rq, EMIT_FLUSH);
 }
 
 static inline int mi_set_context(struct i915_request *rq, u32 flags)
@@ -1590,52 +1566,57 @@ static int remap_l3(struct i915_request *rq)
 	return 0;
 }
 
-static int switch_context(struct i915_request *rq)
+static int switch_mm(struct i915_request *rq, struct i915_address_space *vm)
 {
-	struct intel_context *ce = rq->hw_context;
-	struct i915_address_space *vm = vm_alias(ce);
-	u32 hw_flags = 0;
-	int ret;
-
-	GEM_BUG_ON(HAS_EXECLISTS(rq->i915));
+	const struct intel_engine_cs * const engine = rq->engine;
+	int ret, i;
 
-	if (vm) {
-		/*
-		 * Not only do we need a full barrier (post-sync write) after
-		 * invalidating the TLBs, but we need to wait a little bit
-		 * longer. Whether this is merely delaying us, or the
-		 * subsequent flush is a key part of serialising with the
-		 * post-sync op, this extra pass appears vital before a
-		 * mm switch!
-		 */
-		ret = rq->engine->emit_flush(rq, EMIT_INVALIDATE);
-		if (ret)
-			return ret;
+	if (!vm)
+		return 0;
 
-		ret = flush_tlb(rq);
-		if (ret)
-			return ret;
+	/*
+	 * Not only do we need a full barrier (post-sync write) after
+	 * invalidating the TLBs, but we need to wait a little bit
+	 * longer. Whether this is merely delaying us, or the
+	 * subsequent flush is a key part of serialising with the
+	 * post-sync op, this extra pass appears vital before a
+	 * mm switch!
+	 */
+	ret = engine->emit_flush(rq, EMIT_FLUSH);
+	if (ret)
+		return ret;
 
-		ret = load_pd_dir(rq, i915_vm_to_ppgtt(vm), 0);
+	for (i = 0; i < 2; i++) {
+		ret = engine->emit_flush(rq, EMIT_INVALIDATE);
 		if (ret)
 			return ret;
 
 		ret = load_pd_dir(rq, i915_vm_to_ppgtt(vm), PP_DIR_DCLV_2G);
 		if (ret)
 			return ret;
+	}
 
-		ret = flush_tlb(rq);
-		if (ret)
-			return ret;
+	return engine->emit_flush(rq, EMIT_INVALIDATE);
+}
 
-		ret = rq->engine->emit_flush(rq, EMIT_INVALIDATE);
-		if (ret)
-			return ret;
-	}
+static int switch_context(struct i915_request *rq)
+{
+	struct intel_context *ce = rq->hw_context;
+	struct i915_address_space *vm = vm_alias(ce);
+	int ret;
+
+	GEM_BUG_ON(HAS_EXECLISTS(rq->i915));
+
+	ret = switch_mm(rq, vm);
+	if (ret)
+		return ret;
 
 	if (ce->state) {
+		u32 hw_flags;
+
 		GEM_BUG_ON(rq->engine->id != RCS0);
 
+		hw_flags = 0;
 		if (!test_bit(CONTEXT_VALID_BIT, &ce->flags))
 			hw_flags = MI_RESTORE_INHIBIT;
 
diff --git a/drivers/gpu/drm/i915/i915_gem_gtt.c b/drivers/gpu/drm/i915/i915_gem_gtt.c
index be36719e7987..d9a2f58a620a 100644
--- a/drivers/gpu/drm/i915/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/i915_gem_gtt.c
@@ -1709,8 +1709,10 @@ static void gen6_flush_pd(struct gen6_ppgtt *ppgtt, u64 start, u64 end)
 	gen6_for_each_pde(pt, pd, start, end, pde)
 		gen6_write_pde(ppgtt, pde, pt);
 
+	mb();
 	ioread32(ppgtt->pd_addr + pde - 1);
 	gen6_ggtt_invalidate(ppgtt->base.vm.gt->ggtt);
+	mb();
 
 	mutex_unlock(&ppgtt->flush);
 }
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
