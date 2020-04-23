Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5EA1B6347
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 20:24:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABB436E990;
	Thu, 23 Apr 2020 18:24:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BC156E98A
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2020 18:24:31 +0000 (UTC)
IronPort-SDR: fcD3ga2Q3z8WEXrnzQNIjT8DrMUFRkWPNIvg5/8x3eH3HyJLMpMI29L0pVvP12zt0LxCc35JPl
 EszQqHdJzrXA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 11:24:28 -0700
IronPort-SDR: aYHTm+Ob84XgX/TNzzRpz1IYZre6NnpL/VmuJ/Jp5Jn0FJc7vh3TgcOe68k3hGzKfz614pXcxP
 bduv9xUkd6EA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,307,1583222400"; d="scan'208";a="403003237"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga004.jf.intel.com with ESMTP; 23 Apr 2020 11:24:26 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 27FAE843AD5; Thu, 23 Apr 2020 21:23:57 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Apr 2020 21:23:53 +0300
Message-Id: <20200423182355.21837-4-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200423182355.21837-1-mika.kuoppala@linux.intel.com>
References: <20200423182355.21837-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 4/6] drm/i915: Add per ctx batchbuffer wa for
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

References: HSDES#16010904313
Testcase: igt/i915_selftest/gt_lrc
Suggested-by: Joseph Koston <joseph.koston@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context_types.h |   3 +
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |   4 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 185 ++++++++++++++----
 3 files changed, 154 insertions(+), 38 deletions(-)

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
index f04214a54f75..3618f3362e1d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
+++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
@@ -138,7 +138,7 @@
  */
 #define MI_LOAD_REGISTER_IMM(x)	MI_INSTR(0x22, 2*(x)-1)
 /* Gen11+. addr = base + (ctx_restore ? offset & GENMASK(12,2) : offset) */
-#define   MI_LRI_CS_MMIO		(1<<19)
+#define   MI_LRI_LRM_CS_MMIO		(1<<19)
 #define   MI_LRI_FORCE_POSTED		(1<<12)
 #define MI_LOAD_REGISTER_IMM_MAX_REGS (126)
 #define MI_STORE_REGISTER_MEM        MI_INSTR(0x24, 1)
@@ -155,7 +155,9 @@
 #define   MI_FLUSH_DW_USE_PPGTT		(0<<2)
 #define MI_LOAD_REGISTER_MEM	   MI_INSTR(0x29, 1)
 #define MI_LOAD_REGISTER_MEM_GEN8  MI_INSTR(0x29, 2)
+#define   MI_LRM_ASYNC			(1<<21)
 #define MI_LOAD_REGISTER_REG    MI_INSTR(0x2A, 1)
+#define   MI_LRR_SOURCE_CS_MMIO		BIT(18)
 #define MI_BATCH_BUFFER		MI_INSTR(0x30, 1)
 #define   MI_BATCH_NON_SECURE		(1)
 /* for snb/ivb/vlv this also means "batch in ppgtt" when ppgtt is enabled. */
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index f1e0927c55e8..e49f0e03e159 100644
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
 
@@ -537,7 +537,7 @@ static void set_offsets(u32 *regs,
 		if (flags & POSTED)
 			*regs |= MI_LRI_FORCE_POSTED;
 		if (INTEL_GEN(engine->i915) >= 11)
-			*regs |= MI_LRI_CS_MMIO;
+			*regs |= MI_LRI_LRM_CS_MMIO;
 		regs++;
 
 		GEM_BUG_ON(!count);
@@ -3123,8 +3123,141 @@ static void execlists_context_unpin(struct intel_context *ce)
 	i915_gem_object_unpin_map(ce->state->obj);
 }
 
+static u32 intel_lr_indirect_ctx_offset(const struct intel_engine_cs *engine)
+{
+	u32 indirect_ctx_offset;
+
+	switch (INTEL_GEN(engine->i915)) {
+	default:
+		MISSING_CASE(INTEL_GEN(engine->i915));
+		fallthrough;
+	case 12:
+		indirect_ctx_offset =
+			GEN12_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
+		break;
+	case 11:
+		indirect_ctx_offset =
+			GEN11_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
+		break;
+	case 10:
+		indirect_ctx_offset =
+			GEN10_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
+		break;
+	case 9:
+		indirect_ctx_offset =
+			GEN9_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
+		break;
+	case 8:
+		indirect_ctx_offset =
+			GEN8_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
+		break;
+	}
+
+	return indirect_ctx_offset;
+}
+
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
+	*cs++ = MI_LOAD_REGISTER_MEM_GEN8 |
+		MI_SRM_LRM_GLOBAL_GTT | MI_LRI_LRM_CS_MMIO;
+	*cs++ = scratch_reg;
+	*cs++ = lrc_offset + CTX_CS_GPR_0 * sizeof(u32);
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
 static void
-__execlists_update_reg_state(const struct intel_context *ce,
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
+	ce->lrc_reg_state[CTX_INDIRECT_PTR(ce->engine)] =
+		(i915_ggtt_offset(ce->state) + ce->ctx_bb_offset) |
+		(cs - start) * sizeof(*cs) /
+		CACHELINE_BYTES;
+
+	ce->lrc_reg_state[CTX_INDIRECT_OFFSET(ce->engine)] =
+		intel_lr_indirect_ctx_offset(ce->engine) << 6;
+}
+
+static void
+__execlists_update_reg_state(struct intel_context *ce,
 			     const struct intel_engine_cs *engine,
 			     u32 head)
 {
@@ -3145,6 +3278,13 @@ __execlists_update_reg_state(const struct intel_context *ce,
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
 
@@ -4673,40 +4813,6 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 	return 0;
 }
 
-static u32 intel_lr_indirect_ctx_offset(const struct intel_engine_cs *engine)
-{
-	u32 indirect_ctx_offset;
-
-	switch (INTEL_GEN(engine->i915)) {
-	default:
-		MISSING_CASE(INTEL_GEN(engine->i915));
-		/* fall through */
-	case 12:
-		indirect_ctx_offset =
-			GEN12_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
-		break;
-	case 11:
-		indirect_ctx_offset =
-			GEN11_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
-		break;
-	case 10:
-		indirect_ctx_offset =
-			GEN10_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
-		break;
-	case 9:
-		indirect_ctx_offset =
-			GEN9_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
-		break;
-	case 8:
-		indirect_ctx_offset =
-			GEN8_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
-		break;
-	}
-
-	return indirect_ctx_offset;
-}
-
-
 static void init_common_reg_state(u32 * const regs,
 				  const struct intel_engine_cs *engine,
 				  const struct intel_ring *ring,
@@ -4869,6 +4975,11 @@ static int __execlists_context_alloc(struct intel_context *ce,
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
