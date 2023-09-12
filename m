Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 247BF79D3A2
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 16:30:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A3D310E424;
	Tue, 12 Sep 2023 14:30:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7910210E427
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Sep 2023 14:30:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694529014; x=1726065014;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fqN9SSETsEX0PnwhdWeyE0cp0RMmKQQ56UlsP6d9Wks=;
 b=iod473Eib0/xzSXSY2+a/a6rCdj900AVpRV9E5eiMPyDg2oklHUxp7Hb
 g8gssnZ2K3HOrPsoiSgLdFtsm/WFKc/G8X8TezALsnREC2QvUo9LhRR4m
 5rygn0F2j22+UjC2D44lla2bFSa3j2UffRUkgjCoqShpzh5SYGVy5Tx6E
 pWMYYlE//RemB3ipfdrib4qQgu2dHNaDydo4f6bvUmytI0QWUfn2Vfycd
 KBneAgq7jFk3ybZY8jjmTj1duozJrBPHrjb02zlq1GlWjaiU7oFaz1y3O
 Rbg84wYwTuUp9kJCrXQelhAePqdzh/FhQyRCL3Y5Z+uW/6+iGXzcfQuxv g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="409343857"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="409343857"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 07:30:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="886951489"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="886951489"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 07:29:45 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Sep 2023 07:19:30 -0700
Message-Id: <20230912141931.1803917-3-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230912141931.1803917-1-jonathan.cavitt@intel.com>
References: <20230912141931.1803917-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 2/3] drm/i915: Add WABB blit for
 Wa_16018031267 / Wa_16018063123
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
Cc: andi.shyti@intel.com, chris.p.wilson@linux.intel.com,
 tomasz.mistat@intel.com, jonathan.cavitt@intel.com, rodrigo.vivi@intel.com,
 gregory.f.germano@intel.com, matthew.d.roper@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Apply WABB blit for Wa_16018031267 / Wa_16018063123.
Additionally, update the lrc selftest to exercise the new
WABB changes.

Co-developed-by: Nirmoy Das <nirmoy.das@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_regs.h |   3 +
 drivers/gpu/drm/i915/gt/intel_gt.h          |   4 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h    |   2 +
 drivers/gpu/drm/i915/gt/intel_lrc.c         | 101 +++++++++++++++++++-
 drivers/gpu/drm/i915/gt/selftest_lrc.c      |  65 +++++++++----
 5 files changed, 154 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
index 6b9d9f8376692..2e06bea73297a 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
@@ -118,6 +118,9 @@
 #define   CCID_EXTENDED_STATE_RESTORE		BIT(2)
 #define   CCID_EXTENDED_STATE_SAVE		BIT(3)
 #define RING_BB_PER_CTX_PTR(base)		_MMIO((base) + 0x1c0) /* gen8+ */
+#define   PER_CTX_BB_FORCE			BIT(2)
+#define   PER_CTX_BB_VALID			BIT(0)
+
 #define RING_INDIRECT_CTX(base)			_MMIO((base) + 0x1c4) /* gen8+ */
 #define RING_INDIRECT_CTX_OFFSET(base)		_MMIO((base) + 0x1c8) /* gen8+ */
 #define ECOSKPD(base)				_MMIO((base) + 0x1d0)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index 239848bcb2a42..40cc0005dd735 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -83,6 +83,10 @@ struct drm_printer;
 		  ##__VA_ARGS__);					\
 } while (0)
 
+#define NEEDS_FASTCOLOR_BLT_WABB(engine) ( \
+	IS_GFX_GT_IP_RANGE(engine->gt, IP_VER(12, 55), IP_VER(12, 71)) && \
+	engine->class == COPY_ENGINE_CLASS)
+
 static inline bool gt_is_root(struct intel_gt *gt)
 {
 	return !gt->info.id;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index def7dd0eb6f19..4917633f299dd 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -307,6 +307,8 @@ enum intel_gt_scratch_field {
 
 	/* 8 bytes */
 	INTEL_GT_SCRATCH_FIELD_COHERENTL3_WA = 256,
+
+	INTEL_GT_SCRATCH_FIELD_DUMMY_BLIT = 384,
 };
 
 #define intel_gt_support_legacy_fencing(gt) ((gt)->ggtt->num_fences > 0)
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 967fe4d77a874..01154174f4ac0 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -828,6 +828,18 @@ lrc_ring_indirect_offset_default(const struct intel_engine_cs *engine)
 	return 0;
 }
 
+static void
+lrc_setup_bb_per_ctx(u32 *regs,
+		     const struct intel_engine_cs *engine,
+		     u32 ctx_bb_ggtt_addr)
+{
+	GEM_BUG_ON(lrc_ring_wa_bb_per_ctx(engine) == -1);
+	regs[lrc_ring_wa_bb_per_ctx(engine) + 1] =
+		ctx_bb_ggtt_addr |
+		PER_CTX_BB_FORCE |
+		PER_CTX_BB_VALID;
+}
+
 static void
 lrc_setup_indirect_ctx(u32 *regs,
 		       const struct intel_engine_cs *engine,
@@ -997,7 +1009,13 @@ static u32 context_wa_bb_offset(const struct intel_context *ce)
 	return PAGE_SIZE * ce->wa_bb_page;
 }
 
-static u32 *context_indirect_bb(const struct intel_context *ce)
+/*
+ * per_ctx below determines which WABB section is used.
+ * When true, the function returns the location of the
+ * PER_CTX_BB.  When false, the function returns the
+ * location of the INDIRECT_CTX.
+ */
+static u32 *context_wabb(const struct intel_context *ce, bool per_ctx)
 {
 	void *ptr;
 
@@ -1006,6 +1024,7 @@ static u32 *context_indirect_bb(const struct intel_context *ce)
 	ptr = ce->lrc_reg_state;
 	ptr -= LRC_STATE_OFFSET; /* back to start of context image */
 	ptr += context_wa_bb_offset(ce);
+	ptr += per_ctx ? PAGE_SIZE : 0;
 
 	return ptr;
 }
@@ -1082,7 +1101,8 @@ __lrc_alloc_state(struct intel_context *ce, struct intel_engine_cs *engine)
 
 	if (GRAPHICS_VER(engine->i915) >= 12) {
 		ce->wa_bb_page = context_size / PAGE_SIZE;
-		context_size += PAGE_SIZE;
+		/* INDIRECT_CTX and PER_CTX_BB need separate pages. */
+		context_size += PAGE_SIZE * 2;
 	}
 
 	if (intel_context_is_parent(ce) && intel_engine_uses_guc(engine)) {
@@ -1370,12 +1390,86 @@ gen12_emit_indirect_ctx_xcs(const struct intel_context *ce, u32 *cs)
 	return gen12_emit_aux_table_inv(ce->engine, cs);
 }
 
+static u32 *xehp_emit_fastcolor_blt_wabb(const struct intel_context *ce, u32 *cs)
+{
+	struct intel_gt *gt = ce->engine->gt;
+	int mocs = gt->mocs.uc_index << 1;
+
+	/**
+	 * Wa_16018031267 / Wa_16018063123 requires that SW forces the
+	 * main copy engine arbitration into round robin mode.  We
+	 * additionally need to submit the following WABB blt command
+	 * to produce 4 subblits with each subblit generating 0 byte
+	 * write requests as WABB:
+	 *
+	 * XY_FASTCOLOR_BLT
+	 *  BG0    -> 5100000E
+	 *  BG1    -> 0000003F (Dest pitch)
+	 *  BG2    -> 00000000 (X1, Y1) = (0, 0)
+	 *  BG3    -> 00040001 (X2, Y2) = (1, 4)
+	 *  BG4    -> scratch
+	 *  BG5    -> scratch
+	 *  BG6-12 -> 00000000
+	 *  BG13   -> 20004004 (Surf. Width= 2,Surf. Height = 5 )
+	 *  BG14   -> 00000010 (Qpitch = 4)
+	 *  BG15   -> 00000000
+	 */
+	*cs++ = XY_FAST_COLOR_BLT_CMD | (16 - 2);
+	*cs++ = FIELD_PREP(XY_FAST_COLOR_BLT_MOCS_MASK, mocs) | 0x3f;
+	*cs++ = 0;
+	*cs++ = 4 << 16 | 1;
+	*cs++ = lower_32_bits(ce->vm->rsvd.start);
+	*cs++ = upper_32_bits(ce->vm->rsvd.start);
+	*cs++ = 0;
+	/* Use 0x6b instead of 0 for color to maintain functionality */
+	*cs++ = 0x6b;
+	*cs++ = 0;
+	*cs++ = 0;
+	*cs++ = 0;
+	*cs++ = 0;
+	*cs++ = 0;
+	*cs++ = 0x20004004;
+	*cs++ = 0x10;
+	*cs++ = 0;
+
+	return cs;
+}
+
+static u32 *
+xehp_emit_per_ctx_bb(const struct intel_context *ce, u32 *cs)
+{
+	/* Wa_16018031267, Wa_16018063123 */
+	if (NEEDS_FASTCOLOR_BLT_WABB(ce->engine))
+		cs = xehp_emit_fastcolor_blt_wabb(ce, cs);
+
+	return cs;
+}
+
+static void
+setup_per_ctx_bb(const struct intel_context *ce,
+		 const struct intel_engine_cs *engine,
+		 u32 *(*emit)(const struct intel_context *, u32 *))
+{
+	/* Place PER_CTX_BB on next page after INDIRECT_CTX */
+	u32 * const start = context_wabb(ce, true);
+	u32 *cs;
+
+	cs = emit(ce, start);
+
+	/* PER_CTX_BB must manually terminate */
+	*cs++ = MI_BATCH_BUFFER_END;
+
+	GEM_BUG_ON(cs - start > I915_GTT_PAGE_SIZE / sizeof(*cs));
+	lrc_setup_bb_per_ctx(ce->lrc_reg_state, engine,
+			     lrc_indirect_bb(ce) + PAGE_SIZE);
+}
+
 static void
 setup_indirect_ctx_bb(const struct intel_context *ce,
 		      const struct intel_engine_cs *engine,
 		      u32 *(*emit)(const struct intel_context *, u32 *))
 {
-	u32 * const start = context_indirect_bb(ce);
+	u32 * const start = context_wabb(ce, false);
 	u32 *cs;
 
 	cs = emit(ce, start);
@@ -1474,6 +1568,7 @@ u32 lrc_update_regs(const struct intel_context *ce,
 		/* Mutually exclusive wrt to global indirect bb */
 		GEM_BUG_ON(engine->wa_ctx.indirect_ctx.size);
 		setup_indirect_ctx_bb(ce, engine, fn);
+		setup_per_ctx_bb(ce, engine, xehp_emit_per_ctx_bb);
 	}
 
 	return lrc_descriptor(ce) | CTX_DESC_FORCE_RESTORE;
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 5f826b6dcf5d6..e17b8777d21dc 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -1555,7 +1555,7 @@ static int live_lrc_isolation(void *arg)
 	return err;
 }
 
-static int indirect_ctx_submit_req(struct intel_context *ce)
+static int wabb_ctx_submit_req(struct intel_context *ce)
 {
 	struct i915_request *rq;
 	int err = 0;
@@ -1579,7 +1579,8 @@ static int indirect_ctx_submit_req(struct intel_context *ce)
 #define CTX_BB_CANARY_INDEX  (CTX_BB_CANARY_OFFSET / sizeof(u32))
 
 static u32 *
-emit_indirect_ctx_bb_canary(const struct intel_context *ce, u32 *cs)
+emit_wabb_ctx_canary(const struct intel_context *ce,
+		     u32 *cs, bool per_ctx)
 {
 	*cs++ = MI_STORE_REGISTER_MEM_GEN8 |
 		MI_SRM_LRM_GLOBAL_GTT |
@@ -1587,26 +1588,43 @@ emit_indirect_ctx_bb_canary(const struct intel_context *ce, u32 *cs)
 	*cs++ = i915_mmio_reg_offset(RING_START(0));
 	*cs++ = i915_ggtt_offset(ce->state) +
 		context_wa_bb_offset(ce) +
-		CTX_BB_CANARY_OFFSET;
+		CTX_BB_CANARY_OFFSET +
+		(per_ctx ? PAGE_SIZE : 0);
 	*cs++ = 0;
 
 	return cs;
 }
 
+static u32 *
+emit_indirect_ctx_bb_canary(const struct intel_context *ce, u32 *cs)
+{
+	return emit_wabb_ctx_canary(ce, cs, false);
+}
+
+static u32 *
+emit_per_ctx_bb_canary(const struct intel_context *ce, u32 *cs)
+{
+	return emit_wabb_ctx_canary(ce, cs, true);
+}
+
 static void
-indirect_ctx_bb_setup(struct intel_context *ce)
+wabb_ctx_setup(struct intel_context *ce, bool per_ctx)
 {
-	u32 *cs = context_indirect_bb(ce);
+	u32 *cs = context_wabb(ce, per_ctx);
 
 	cs[CTX_BB_CANARY_INDEX] = 0xdeadf00d;
 
-	setup_indirect_ctx_bb(ce, ce->engine, emit_indirect_ctx_bb_canary);
+	if (per_ctx)
+		setup_per_ctx_bb(ce, ce->engine, emit_per_ctx_bb_canary);
+	else
+		setup_indirect_ctx_bb(ce, ce->engine, emit_indirect_ctx_bb_canary);
 }
 
-static bool check_ring_start(struct intel_context *ce)
+static bool check_ring_start(struct intel_context *ce, bool per_ctx)
 {
 	const u32 * const ctx_bb = (void *)(ce->lrc_reg_state) -
-		LRC_STATE_OFFSET + context_wa_bb_offset(ce);
+		LRC_STATE_OFFSET + context_wa_bb_offset(ce) +
+		(per_ctx ? PAGE_SIZE : 0);
 
 	if (ctx_bb[CTX_BB_CANARY_INDEX] == ce->lrc_reg_state[CTX_RING_START])
 		return true;
@@ -1618,21 +1636,21 @@ static bool check_ring_start(struct intel_context *ce)
 	return false;
 }
 
-static int indirect_ctx_bb_check(struct intel_context *ce)
+static int wabb_ctx_check(struct intel_context *ce, bool per_ctx)
 {
 	int err;
 
-	err = indirect_ctx_submit_req(ce);
+	err = wabb_ctx_submit_req(ce);
 	if (err)
 		return err;
 
-	if (!check_ring_start(ce))
+	if (!check_ring_start(ce, per_ctx))
 		return -EINVAL;
 
 	return 0;
 }
 
-static int __live_lrc_indirect_ctx_bb(struct intel_engine_cs *engine)
+static int __lrc_wabb_ctx(struct intel_engine_cs *engine, bool per_ctx)
 {
 	struct intel_context *a, *b;
 	int err;
@@ -1667,14 +1685,14 @@ static int __live_lrc_indirect_ctx_bb(struct intel_engine_cs *engine)
 	 * As ring start is restored apriori of starting the indirect ctx bb and
 	 * as it will be different for each context, it fits to this purpose.
 	 */
-	indirect_ctx_bb_setup(a);
-	indirect_ctx_bb_setup(b);
+	wabb_ctx_setup(a, per_ctx);
+	wabb_ctx_setup(b, per_ctx);
 
-	err = indirect_ctx_bb_check(a);
+	err = wabb_ctx_check(a, per_ctx);
 	if (err)
 		goto unpin_b;
 
-	err = indirect_ctx_bb_check(b);
+	err = wabb_ctx_check(b, per_ctx);
 
 unpin_b:
 	intel_context_unpin(b);
@@ -1688,7 +1706,7 @@ static int __live_lrc_indirect_ctx_bb(struct intel_engine_cs *engine)
 	return err;
 }
 
-static int live_lrc_indirect_ctx_bb(void *arg)
+static int lrc_wabb_ctx(void *arg, bool per_ctx)
 {
 	struct intel_gt *gt = arg;
 	struct intel_engine_cs *engine;
@@ -1697,7 +1715,7 @@ static int live_lrc_indirect_ctx_bb(void *arg)
 
 	for_each_engine(engine, gt, id) {
 		intel_engine_pm_get(engine);
-		err = __live_lrc_indirect_ctx_bb(engine);
+		err = __lrc_wabb_ctx(engine, per_ctx);
 		intel_engine_pm_put(engine);
 
 		if (igt_flush_test(gt->i915))
@@ -1710,6 +1728,16 @@ static int live_lrc_indirect_ctx_bb(void *arg)
 	return err;
 }
 
+static int live_lrc_indirect_ctx_bb(void *arg)
+{
+	return lrc_wabb_ctx(arg, false);
+}
+
+static int live_lrc_per_ctx_bb(void *arg)
+{
+	return lrc_wabb_ctx(arg, true);
+}
+
 static void garbage_reset(struct intel_engine_cs *engine,
 			  struct i915_request *rq)
 {
@@ -1947,6 +1975,7 @@ int intel_lrc_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_lrc_garbage),
 		SUBTEST(live_pphwsp_runtime),
 		SUBTEST(live_lrc_indirect_ctx_bb),
+		SUBTEST(live_lrc_per_ctx_bb),
 	};
 
 	if (!HAS_LOGICAL_RING_CONTEXTS(i915))
-- 
2.25.1

