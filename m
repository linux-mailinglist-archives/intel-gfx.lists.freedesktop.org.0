Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0CB71B81BD
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 23:49:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3089A6EB58;
	Fri, 24 Apr 2020 21:49:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22D106E0D6
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Apr 2020 21:49:15 +0000 (UTC)
IronPort-SDR: dXG6YOHdpKR0ZjjqZZQxgtGcdA3Cm4zhivfjJrMhihAVmhMl8ALjCR/rQrxPaZSn4JDhsG7SCz
 TITBNHV7m4dQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 14:49:14 -0700
IronPort-SDR: VGLijXF8rROBYGxOXYLtkmORaoe/8GaZkeF692wHnhNLKALXHrSwIOy3rFjm3To/G6SjaPIiSw
 NClhRUAnn0OQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,313,1583222400"; d="scan'208";a="292790878"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga008.jf.intel.com with ESMTP; 24 Apr 2020 14:49:13 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 5B6FF843AD1; Sat, 25 Apr 2020 00:48:43 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 25 Apr 2020 00:48:39 +0300
Message-Id: <20200424214841.28076-2-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200424214841.28076-1-mika.kuoppala@linux.intel.com>
References: <20200424214841.28076-1-mika.kuoppala@linux.intel.com>
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
v6: wa_bb_offset, virtual engines (Chris)

References: HSDES#16010904313
Testcase: igt/i915_selftest/gt_lrc
Suggested-by: Joseph Koston <joseph.koston@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Acked-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_context_types.h |   2 +
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |   3 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 149 ++++++++++++++++--
 3 files changed, 142 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 07cb83a0d017..e0da7bdcbf01 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -96,6 +96,8 @@ struct intel_context {
 
 	/** sseu: Control eu/slice partitioning */
 	struct intel_sseu sseu;
+
+	u8 wa_bb_page; /* if set, page num reserved for context workarounds */
 };
 
 #endif /* __INTEL_CONTEXT_TYPES__ */
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
index c1f30fe12d5d..ee3bff61c681 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -314,6 +314,22 @@ lrc_ring_indirect_offset_default(const struct intel_engine_cs *engine)
 	}
 }
 
+static void
+lrc_ring_setup_indirect_ctx(u32 *regs,
+			    const struct intel_engine_cs *engine,
+			    u32 ctx_bb_ggtt_addr,
+			    u32 size)
+{
+	GEM_BUG_ON(!IS_ALIGNED(size, CACHELINE_BYTES));
+	GEM_BUG_ON(lrc_ring_indirect_ptr(engine) == -1);
+	regs[lrc_ring_indirect_ptr(engine) + 1] =
+		ctx_bb_ggtt_addr | (size / CACHELINE_BYTES);
+
+	GEM_BUG_ON(lrc_ring_indirect_offset(engine) == -1);
+	regs[lrc_ring_indirect_offset(engine) + 1] =
+		lrc_ring_indirect_offset_default(engine) << 6;
+}
+
 static u32 intel_context_get_runtime(const struct intel_context *ce)
 {
 	/*
@@ -613,7 +629,7 @@ static void set_offsets(u32 *regs,
 		if (flags & POSTED)
 			*regs |= MI_LRI_FORCE_POSTED;
 		if (INTEL_GEN(engine->i915) >= 11)
-			*regs |= MI_LRI_CS_MMIO;
+			*regs |= MI_LRI_LRM_CS_MMIO;
 		regs++;
 
 		GEM_BUG_ON(!count);
@@ -3187,6 +3203,112 @@ static void execlists_context_unpin(struct intel_context *ce)
 	i915_gem_object_unpin_map(ce->state->obj);
 }
 
+static u32 *
+gen12_emit_timestamp_wa(const struct intel_context *ce, u32 *cs)
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
+gen12_emit_restore_scratch(const struct intel_context *ce, u32 *cs)
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
+	*cs++ = lrc_offset + (lrc_ring_gpr0(ce->engine) + 1) * sizeof(u32);
+	*cs++ = 0;
+
+	return cs;
+}
+
+static u32 *
+gen12_emit_indirect_ctx_xcs(const struct intel_context *ce, u32 *cs)
+{
+	cs = gen12_emit_timestamp_wa(ce, cs);
+	cs = gen12_emit_restore_scratch(ce, cs);
+
+	return cs;
+}
+
+static inline u32 context_wa_bb_offset(const struct intel_context *ce)
+{
+	return PAGE_SIZE * ce->wa_bb_page;
+}
+
+static u32 *context_indirect_bb(const struct intel_context *ce)
+{
+	void *ptr;
+
+	GEM_BUG_ON(!ce->wa_bb_page);
+
+	ptr = ce->lrc_reg_state;
+	ptr -= LRC_STATE_OFFSET; /* back to start of context image */
+	ptr += context_wa_bb_offset(ce);
+
+	return ptr;
+}
+
+static u32 *
+execlists_emit_indirect_ctx_bb(const struct intel_context *ce,
+			       u32 *(*emit)(const struct intel_context *, u32 *))
+{
+	u32 *cs = context_indirect_bb(ce);
+	const u32 * const batch_start = cs;
+
+	cs = emit(ce, cs);
+
+	GEM_DEBUG_BUG_ON(cs - batch_start >
+			 I915_GTT_PAGE_SIZE / sizeof(*cs));
+
+	return cs;
+}
+
+static void
+setup_indirect_ctx_bb(const struct intel_context *ce,
+		      const struct intel_engine_cs *engine,
+		      u32 *(*emit)(const struct intel_context *, u32 *))
+{
+	const u32 * const start = context_indirect_bb(ce);
+	u32 *cs;
+
+	cs = execlists_emit_indirect_ctx_bb(ce, emit);
+
+	while ((unsigned long)cs % CACHELINE_BYTES)
+		*cs++ = MI_NOOP;
+
+	lrc_ring_setup_indirect_ctx(ce->lrc_reg_state,
+				    engine,
+				    i915_ggtt_offset(ce->state) +
+				    context_wa_bb_offset(ce),
+				    (cs - start) * sizeof(*cs));
+}
+
 static void
 __execlists_update_reg_state(const struct intel_context *ce,
 			     const struct intel_engine_cs *engine,
@@ -3210,6 +3332,12 @@ __execlists_update_reg_state(const struct intel_context *ce,
 
 		i915_oa_init_reg_state(ce, engine);
 	}
+
+	if (ce->wa_bb_page) {
+		/* Mutually exclusive wrt to global indirect bb */
+		GEM_BUG_ON(engine->wa_ctx.indirect_ctx.size);
+		setup_indirect_ctx_bb(ce, engine, gen12_emit_indirect_ctx_xcs);
+	}
 }
 
 static int
@@ -4737,7 +4865,6 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 	return 0;
 }
 
-
 static void init_common_reg_state(u32 * const regs,
 				  const struct intel_engine_cs *engine,
 				  const struct intel_ring *ring,
@@ -4772,16 +4899,11 @@ static void init_wa_bb_reg_state(u32 * const regs,
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
+		lrc_ring_setup_indirect_ctx(regs, engine, bb_offset, bb_size);
 	}
 }
 
@@ -4903,6 +5025,11 @@ static int __execlists_context_alloc(struct intel_context *ce,
 	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
 		context_size += I915_GTT_PAGE_SIZE; /* for redzone */
 
+	if (INTEL_GEN(engine->i915) == 12) {
+		ce->wa_bb_page = context_size/PAGE_SIZE;
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
