Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8CD1B7BCB
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 18:39:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED06F6EAC6;
	Fri, 24 Apr 2020 16:39:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D890B6E0D5
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Apr 2020 16:39:15 +0000 (UTC)
IronPort-SDR: FwoyYibXjkxcIbWPIOty18iaGKtmNPqnNTnGG5VE+M+6lyovgpwQW4yUTGhffAmB2gPTY2y/Ta
 76D4YD7cpv5Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 09:39:15 -0700
IronPort-SDR: rkx1AheFSYU5GfFWiPoVy2UNAxrB8C3l59PV49/fSOtPSNRswlm2izZ06z0M1ud1cNDPcaXtSV
 cOA1qfxqDCoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,311,1583222400"; d="scan'208";a="274650321"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga002.jf.intel.com with ESMTP; 24 Apr 2020 09:39:14 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id C69B9843AD1; Fri, 24 Apr 2020 19:38:44 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Apr 2020 19:38:41 +0300
Message-Id: <20200424163843.16585-2-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200424163843.16585-1-mika.kuoppala@linux.intel.com>
References: <20200424163843.16585-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Add per ctx batchbuffer wa for
 timestamp
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Restoration of a previous timestamp can collide
with updating the timestamp, causing a value corruption.

Combat this issue by using indirect ctx bb to
modify the context image during restoring process.

We can preload value into scratch register. From which
we then do the actual write with LRR. LRR is faster and
thus less error prone as probability of race drops.

v2: tidying (Chris)
v3: lrr for all engines
v4: grp
v5: reg bit

References: HSDES#16010904313
Testcase: igt/i915_selftest/gt_lrc
Suggested-by: Joseph Koston <joseph.koston@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Acked-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_context_types.h |   3 +
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |   3 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 160 +++++++++++++++---
 3 files changed, 146 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 07cb83a0d017..c7573d565f58 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -70,6 +70,9 @@ struct intel_context {
 
 	u32 *lrc_reg_state;
 	u64 lrc_desc;
+
+	u32 ctx_bb_offset;
+
 	u32 tag; /* cookie passed to HW to track this context on submission */
 
 	/* Time on GPU as tracked by the hw. */
diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
index f04214a54f75..ee10122a511e 100644
--- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
+++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
@@ -138,7 +138,7 @@
  */
 #define MI_LOAD_REGISTER_IMM(x)	MI_INSTR(0x22, 2*(x)-1)
 /* Gen11+. addr = base + (ctx_restore ? offset & GENMASK(12,2) : offset) */
-#define   MI_LRI_CS_MMIO		(1<<19)
+#define   MI_LRI_LRM_CS_MMIO		REG_BIT(19)
 #define   MI_LRI_FORCE_POSTED		(1<<12)
 #define MI_LOAD_REGISTER_IMM_MAX_REGS (126)
 #define MI_STORE_REGISTER_MEM        MI_INSTR(0x24, 1)
@@ -156,6 +156,7 @@
 #define MI_LOAD_REGISTER_MEM	   MI_INSTR(0x29, 1)
 #define MI_LOAD_REGISTER_MEM_GEN8  MI_INSTR(0x29, 2)
 #define MI_LOAD_REGISTER_REG    MI_INSTR(0x2A, 1)
+#define   MI_LRR_SOURCE_CS_MMIO		REG_BIT(18)
 #define MI_BATCH_BUFFER		MI_INSTR(0x30, 1)
 #define   MI_BATCH_NON_SECURE		(1)
 /* for snb/ivb/vlv this also means "batch in ppgtt" when ppgtt is enabled. */
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index c1f30fe12d5d..d24fddc2ade0 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -234,7 +234,7 @@ static void execlists_init_reg_state(u32 *reg_state,
 				     const struct intel_ring *ring,
 				     bool close);
 static void
-__execlists_update_reg_state(const struct intel_context *ce,
+__execlists_update_reg_state(struct intel_context *ce,
 			     const struct intel_engine_cs *engine,
 			     u32 head);
 
@@ -314,6 +314,24 @@ lrc_ring_indirect_offset_default(const struct intel_engine_cs *engine)
 	}
 }
 
+static void
+lrc_ring_setup_indirect_ctx(const struct intel_context *ce,
+			    u32 ctx_bb_ggtt_addr,
+			    u32 size)
+{
+	u32 * const regs = ce->lrc_reg_state;
+
+	GEM_BUG_ON(!IS_ALIGNED(size, CACHELINE_BYTES));
+	GEM_BUG_ON(lrc_ring_indirect_ptr(ce->engine) == -1);
+	regs[lrc_ring_indirect_ptr(ce->engine) + 1] =
+		ctx_bb_ggtt_addr | (size / CACHELINE_BYTES);
+
+	GEM_BUG_ON(lrc_ring_indirect_offset(ce->engine) == -1);
+	regs[lrc_ring_indirect_offset(ce->engine) + 1] =
+		/* Go with default offset */
+		lrc_ring_indirect_offset_default(ce->engine) << 6;
+}
+
 static u32 intel_context_get_runtime(const struct intel_context *ce)
 {
 	/*
@@ -613,7 +631,7 @@ static void set_offsets(u32 *regs,
 		if (flags & POSTED)
 			*regs |= MI_LRI_FORCE_POSTED;
 		if (INTEL_GEN(engine->i915) >= 11)
-			*regs |= MI_LRI_CS_MMIO;
+			*regs |= MI_LRI_LRM_CS_MMIO;
 		regs++;
 
 		GEM_BUG_ON(!count);
@@ -3187,8 +3205,107 @@ static void execlists_context_unpin(struct intel_context *ce)
 	i915_gem_object_unpin_map(ce->state->obj);
 }
 
+static u32 *
+gen12_emit_timestamp_wa(struct intel_context *ce, u32 *cs)
+{
+	const u32 lrc_offset = i915_ggtt_offset(ce->state) +
+		LRC_STATE_OFFSET;
+	const u32 scratch_reg = i915_mmio_reg_offset(GEN8_RING_CS_GPR(0, 0));
+
+	*cs++ = MI_LOAD_REGISTER_MEM_GEN8 |
+		MI_SRM_LRM_GLOBAL_GTT | MI_LRI_LRM_CS_MMIO;
+	*cs++ = scratch_reg;
+	*cs++ = lrc_offset + CTX_TIMESTAMP * sizeof(u32);
+	*cs++ = 0;
+
+	*cs++ = MI_LOAD_REGISTER_REG |
+		MI_LRR_SOURCE_CS_MMIO | MI_LRI_LRM_CS_MMIO;
+	*cs++ = scratch_reg;
+	*cs++ = i915_mmio_reg_offset(RING_CTX_TIMESTAMP(0));
+
+	*cs++ = MI_LOAD_REGISTER_REG |
+		MI_LRR_SOURCE_CS_MMIO | MI_LRI_LRM_CS_MMIO;
+	*cs++ = scratch_reg;
+	*cs++ = i915_mmio_reg_offset(RING_CTX_TIMESTAMP(0));
+
+	return cs;
+}
+
+static u32 *
+gen12_emit_restore_scratch(struct intel_context *ce, u32 *cs)
+{
+	const u32 lrc_offset = i915_ggtt_offset(ce->state) +
+		LRC_STATE_OFFSET;
+	const u32 scratch_reg = i915_mmio_reg_offset(GEN8_RING_CS_GPR(0, 0));
+
+	GEM_BUG_ON(lrc_ring_gpr0(ce->engine) == -1);
+
+	*cs++ = MI_LOAD_REGISTER_MEM_GEN8 |
+		MI_SRM_LRM_GLOBAL_GTT | MI_LRI_LRM_CS_MMIO;
+	*cs++ = scratch_reg;
+	*cs++ = lrc_offset + lrc_ring_gpr0(ce->engine) * sizeof(u32);
+	*cs++ = 0;
+
+	return cs;
+}
+
+static u32 *
+gen12_emit_indirect_ctx_xcs(struct intel_context *ce, u32 *cs)
+{
+	cs = gen12_emit_timestamp_wa(ce, cs);
+	cs = gen12_emit_restore_scratch(ce, cs);
+
+	return cs;
+}
+
+static u32 *context_indirect_bb(struct intel_context *ce)
+{
+	void *ptr;
+
+	GEM_BUG_ON(!ce->ctx_bb_offset);
+
+	ptr = ce->lrc_reg_state;
+	ptr -= LRC_STATE_OFFSET; /* back to start of context image */
+	ptr += ce->ctx_bb_offset;
+
+	return ptr;
+}
+
+static u32 *
+execlists_emit_indirect_ctx_bb(struct intel_context *ce,
+			       u32 *(*emit)(struct intel_context *, u32 *))
+{
+	u32 *cs = context_indirect_bb(ce);
+	const u32 * const batch_start = cs;
+
+	cs = emit(ce, cs);
+
+	GEM_DEBUG_BUG_ON(cs - batch_start >
+			 I915_GTT_PAGE_SIZE/sizeof(*cs));
+
+	return cs;
+}
+
+static void
+setup_indirect_ctx_bb(struct intel_context *ce,
+		      u32 *(*emit)(struct intel_context *, u32 *))
+{
+	const u32 * const start = context_indirect_bb(ce);
+	u32 *cs;
+
+	cs = execlists_emit_indirect_ctx_bb(ce, emit);
+
+	while ((unsigned long)cs % CACHELINE_BYTES)
+		*cs++ = MI_NOOP;
+
+	lrc_ring_setup_indirect_ctx(ce,
+				    i915_ggtt_offset(ce->state) +
+				    ce->ctx_bb_offset,
+				    (cs - start) * sizeof(*cs));
+}
+
 static void
-__execlists_update_reg_state(const struct intel_context *ce,
+__execlists_update_reg_state(struct intel_context *ce,
 			     const struct intel_engine_cs *engine,
 			     u32 head)
 {
@@ -3209,6 +3326,13 @@ __execlists_update_reg_state(const struct intel_context *ce,
 			intel_sseu_make_rpcs(engine->i915, &ce->sseu);
 
 		i915_oa_init_reg_state(ce, engine);
+
+	}
+
+	if (ce->ctx_bb_offset) {
+		/* Mutually exclusive wrt to global indirect bb */
+		GEM_BUG_ON(engine->wa_ctx.indirect_ctx.size);
+		setup_indirect_ctx_bb(ce, gen12_emit_indirect_ctx_xcs);
 	}
 }
 
@@ -4737,7 +4861,6 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 	return 0;
 }
 
-
 static void init_common_reg_state(u32 * const regs,
 				  const struct intel_engine_cs *engine,
 				  const struct intel_ring *ring,
@@ -4758,30 +4881,24 @@ static void init_common_reg_state(u32 * const regs,
 	regs[CTX_TIMESTAMP] = 0;
 }
 
-static void init_wa_bb_reg_state(u32 * const regs,
-				 const struct intel_engine_cs *engine)
+static void init_wa_bb_reg_state(const struct intel_context *ce)
 {
-	const struct i915_ctx_workarounds * const wa_ctx = &engine->wa_ctx;
+	const struct i915_ctx_workarounds * const wa_ctx = &ce->engine->wa_ctx;
 
 	if (wa_ctx->per_ctx.size) {
 		const u32 ggtt_offset = i915_ggtt_offset(wa_ctx->vma);
 
-		GEM_BUG_ON(lrc_ring_wa_bb_per_ctx(engine) == -1);
-		regs[lrc_ring_wa_bb_per_ctx(engine) + 1] =
+		GEM_BUG_ON(lrc_ring_wa_bb_per_ctx(ce->engine) == -1);
+		ce->lrc_reg_state[lrc_ring_wa_bb_per_ctx(ce->engine) + 1] =
 			(ggtt_offset + wa_ctx->per_ctx.offset) | 0x01;
 	}
 
 	if (wa_ctx->indirect_ctx.size) {
-		const u32 ggtt_offset = i915_ggtt_offset(wa_ctx->vma);
+		const u32 bb_offset = i915_ggtt_offset(wa_ctx->vma) +
+			wa_ctx->indirect_ctx.offset;
+		const u32 bb_size = wa_ctx->indirect_ctx.size;
 
-		GEM_BUG_ON(lrc_ring_indirect_ptr(engine) == -1);
-		regs[lrc_ring_indirect_ptr(engine) + 1] =
-			(ggtt_offset + wa_ctx->indirect_ctx.offset) |
-			(wa_ctx->indirect_ctx.size / CACHELINE_BYTES);
-
-		GEM_BUG_ON(lrc_ring_indirect_offset(engine) == -1);
-		regs[lrc_ring_indirect_offset(engine) + 1] =
-			lrc_ring_indirect_offset_default(engine) << 6;
+		lrc_ring_setup_indirect_ctx(ce, bb_offset, bb_size);
 	}
 }
 
@@ -4830,7 +4947,7 @@ static void execlists_init_reg_state(u32 *regs,
 	init_common_reg_state(regs, engine, ring, inhibit);
 	init_ppgtt_reg_state(regs, vm_alias(ce->vm));
 
-	init_wa_bb_reg_state(regs, engine);
+	init_wa_bb_reg_state(ce);
 
 	__reset_stop_ring(regs, engine);
 }
@@ -4903,6 +5020,11 @@ static int __execlists_context_alloc(struct intel_context *ce,
 	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
 		context_size += I915_GTT_PAGE_SIZE; /* for redzone */
 
+	if (INTEL_GEN(engine->i915) == 12) {
+		ce->ctx_bb_offset = context_size;
+		context_size += PAGE_SIZE;
+	}
+
 	ctx_obj = i915_gem_object_create_shmem(engine->i915, context_size);
 	if (IS_ERR(ctx_obj))
 		return PTR_ERR(ctx_obj);
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
