Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B830312F86
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 11:53:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A85D56E86F;
	Mon,  8 Feb 2021 10:52:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60C906E866
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 10:52:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from build.alporthouse.com (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23809233-1500050 
 for multiple; Mon, 08 Feb 2021 10:52:45 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Feb 2021 10:52:31 +0000
Message-Id: <20210208105236.28498-26-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210208105236.28498-1-chris@chris-wilson.co.uk>
References: <20210208105236.28498-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 26/31] drm/i915/gt: Use client timeline address
 for seqno writes
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

If we allow for per-client timelines, even with legacy ring submission,
we open the door to a world full of possiblities [scheduling and
semaphores].

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/gen2_engine_cs.c      | 72 ++++++++++++++-
 drivers/gpu/drm/i915/gt/gen2_engine_cs.h      |  5 +-
 drivers/gpu/drm/i915/gt/gen6_engine_cs.c      | 89 +++++++++++++------
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c      | 23 ++---
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 26 +++---
 drivers/gpu/drm/i915/i915_request.h           | 13 +++
 6 files changed, 167 insertions(+), 61 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen2_engine_cs.c b/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
index b491a64919c8..b3fff7a955f2 100644
--- a/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
@@ -172,9 +172,77 @@ u32 *gen3_emit_breadcrumb(struct i915_request *rq, u32 *cs)
 	return __gen2_emit_breadcrumb(rq, cs, 16, 8);
 }
 
-u32 *gen5_emit_breadcrumb(struct i915_request *rq, u32 *cs)
+static u32 *__gen4_emit_breadcrumb(struct i915_request *rq, u32 *cs,
+				   int flush, int post)
 {
-	return __gen2_emit_breadcrumb(rq, cs, 8, 8);
+	struct intel_timeline *tl = rcu_dereference_protected(rq->timeline, 1);
+	u32 offset = __i915_request_hwsp_offset(rq);
+
+	GEM_BUG_ON(tl->mode == INTEL_TIMELINE_RELATIVE_CONTEXT);
+
+	*cs++ = MI_FLUSH;
+
+	while (flush--) {
+		*cs++ = MI_STORE_DWORD_INDEX;
+		*cs++ = I915_GEM_HWS_SCRATCH * sizeof(u32);
+		*cs++ = rq->fence.seqno;
+	}
+
+	if (intel_timeline_is_relative(tl)) {
+		offset = offset_in_page(offset);
+		while (post--) {
+			*cs++ = MI_STORE_DWORD_INDEX;
+			*cs++ = offset;
+			*cs++ = rq->fence.seqno;
+			*cs++ = MI_NOOP;
+		}
+	} else {
+		while (post--) {
+			*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
+			*cs++ = 0;
+			*cs++ = offset;
+			*cs++ = rq->fence.seqno;
+		}
+	}
+
+	*cs++ = MI_USER_INTERRUPT;
+
+	rq->tail = intel_ring_offset(rq, cs);
+	assert_ring_tail_valid(rq->ring, rq->tail);
+
+	return cs;
+}
+
+u32 *gen4_emit_breadcrumb_xcs(struct i915_request *rq, u32 *cs)
+{
+	return __gen4_emit_breadcrumb(rq, cs, 8, 8);
+}
+
+int gen4_emit_init_breadcrumb_xcs(struct i915_request *rq)
+{
+	struct intel_timeline *tl = i915_request_timeline(rq);
+	u32 *cs;
+
+	GEM_BUG_ON(i915_request_has_initial_breadcrumb(rq));
+	if (!intel_timeline_has_initial_breadcrumb(tl))
+		return 0;
+
+	cs = intel_ring_begin(rq, 4);
+	if (IS_ERR(cs))
+		return PTR_ERR(cs);
+
+	*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
+	*cs++ = 0;
+	*cs++ = __i915_request_hwsp_offset(rq);
+	*cs++ = rq->fence.seqno - 1;
+
+	intel_ring_advance(rq, cs);
+
+	/* Record the updated position of the request's payload */
+	rq->infix = intel_ring_offset(rq, cs);
+
+	__set_bit(I915_FENCE_FLAG_INITIAL_BREADCRUMB, &rq->fence.flags);
+	return 0;
 }
 
 /* Just userspace ABI convention to limit the wa batch bo to a resonable size */
diff --git a/drivers/gpu/drm/i915/gt/gen2_engine_cs.h b/drivers/gpu/drm/i915/gt/gen2_engine_cs.h
index a5cd64a65c9e..ba7567b15229 100644
--- a/drivers/gpu/drm/i915/gt/gen2_engine_cs.h
+++ b/drivers/gpu/drm/i915/gt/gen2_engine_cs.h
@@ -16,7 +16,10 @@ int gen4_emit_flush_rcs(struct i915_request *rq, u32 mode);
 int gen4_emit_flush_vcs(struct i915_request *rq, u32 mode);
 
 u32 *gen3_emit_breadcrumb(struct i915_request *rq, u32 *cs);
-u32 *gen5_emit_breadcrumb(struct i915_request *rq, u32 *cs);
+u32 *gen4_emit_breadcrumb_xcs(struct i915_request *rq, u32 *cs);
+
+u32 *gen4_emit_breadcrumb_xcs(struct i915_request *rq, u32 *cs);
+int gen4_emit_init_breadcrumb_xcs(struct i915_request *rq);
 
 int i830_emit_bb_start(struct i915_request *rq,
 		       u64 offset, u32 len,
diff --git a/drivers/gpu/drm/i915/gt/gen6_engine_cs.c b/drivers/gpu/drm/i915/gt/gen6_engine_cs.c
index 2f59dd3bdc18..14cab4c726ce 100644
--- a/drivers/gpu/drm/i915/gt/gen6_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen6_engine_cs.c
@@ -141,6 +141,12 @@ int gen6_emit_flush_rcs(struct i915_request *rq, u32 mode)
 
 u32 *gen6_emit_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
 {
+	struct intel_timeline *tl = rcu_dereference_protected(rq->timeline, 1);
+	u32 offset = __i915_request_hwsp_offset(rq);
+	unsigned int flags;
+
+	GEM_BUG_ON(tl->mode == INTEL_TIMELINE_RELATIVE_CONTEXT);
+
 	/* First we do the gen6_emit_post_sync_nonzero_flush w/a */
 	*cs++ = GFX_OP_PIPE_CONTROL(4);
 	*cs++ = PIPE_CONTROL_CS_STALL | PIPE_CONTROL_STALL_AT_SCOREBOARD;
@@ -154,15 +160,22 @@ u32 *gen6_emit_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
 		PIPE_CONTROL_GLOBAL_GTT;
 	*cs++ = 0;
 
-	/* Finally we can flush and with it emit the breadcrumb */
-	*cs++ = GFX_OP_PIPE_CONTROL(4);
-	*cs++ = (PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH |
+	flags = (PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH |
 		 PIPE_CONTROL_DEPTH_CACHE_FLUSH |
 		 PIPE_CONTROL_DC_FLUSH_ENABLE |
 		 PIPE_CONTROL_QW_WRITE |
 		 PIPE_CONTROL_CS_STALL);
-	*cs++ = i915_request_active_timeline(rq)->ggtt_offset |
-		PIPE_CONTROL_GLOBAL_GTT;
+	if (intel_timeline_is_relative(tl)) {
+		offset = offset_in_page(offset);
+		flags |= PIPE_CONTROL_STORE_DATA_INDEX;
+	}
+	if (!intel_timeline_in_context(tl))
+		offset |= PIPE_CONTROL_GLOBAL_GTT;
+
+	/* Finally we can flush and with it emit the breadcrumb */
+	*cs++ = GFX_OP_PIPE_CONTROL(4);
+	*cs++ = flags;
+	*cs++ = offset;
 	*cs++ = rq->fence.seqno;
 
 	*cs++ = MI_USER_INTERRUPT;
@@ -351,15 +364,28 @@ int gen7_emit_flush_rcs(struct i915_request *rq, u32 mode)
 
 u32 *gen7_emit_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
 {
-	*cs++ = GFX_OP_PIPE_CONTROL(4);
-	*cs++ = (PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH |
+	struct intel_timeline *tl = rcu_dereference_protected(rq->timeline, 1);
+	u32 offset = __i915_request_hwsp_offset(rq);
+	unsigned int flags;
+
+	GEM_BUG_ON(tl->mode == INTEL_TIMELINE_RELATIVE_CONTEXT);
+
+	flags = (PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH |
 		 PIPE_CONTROL_DEPTH_CACHE_FLUSH |
 		 PIPE_CONTROL_DC_FLUSH_ENABLE |
 		 PIPE_CONTROL_FLUSH_ENABLE |
 		 PIPE_CONTROL_QW_WRITE |
-		 PIPE_CONTROL_GLOBAL_GTT_IVB |
 		 PIPE_CONTROL_CS_STALL);
-	*cs++ = i915_request_active_timeline(rq)->ggtt_offset;
+	if (intel_timeline_is_relative(tl)) {
+		offset = offset_in_page(offset);
+		flags |= PIPE_CONTROL_STORE_DATA_INDEX;
+	}
+	if (!intel_timeline_in_context(tl))
+		flags |= PIPE_CONTROL_GLOBAL_GTT_IVB;
+
+	*cs++ = GFX_OP_PIPE_CONTROL(4);
+	*cs++ = flags;
+	*cs++ = offset;
 	*cs++ = rq->fence.seqno;
 
 	*cs++ = MI_USER_INTERRUPT;
@@ -373,11 +399,21 @@ u32 *gen7_emit_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
 
 u32 *gen6_emit_breadcrumb_xcs(struct i915_request *rq, u32 *cs)
 {
-	GEM_BUG_ON(i915_request_active_timeline(rq)->hwsp_ggtt != rq->engine->status_page.vma);
-	GEM_BUG_ON(offset_in_page(i915_request_active_timeline(rq)->hwsp_offset) != I915_GEM_HWS_SEQNO_ADDR);
+	struct intel_timeline *tl = rcu_dereference_protected(rq->timeline, 1);
+	u32 offset = __i915_request_hwsp_offset(rq);
+	unsigned int flags = 0;
 
-	*cs++ = MI_FLUSH_DW | MI_FLUSH_DW_OP_STOREDW | MI_FLUSH_DW_STORE_INDEX;
-	*cs++ = I915_GEM_HWS_SEQNO_ADDR | MI_FLUSH_DW_USE_GTT;
+	GEM_BUG_ON(tl->mode == INTEL_TIMELINE_RELATIVE_CONTEXT);
+
+	if (intel_timeline_is_relative(tl)) {
+		offset = offset_in_page(offset);
+		flags |= MI_FLUSH_DW_STORE_INDEX;
+	}
+	if (!intel_timeline_in_context(tl))
+		offset |= MI_FLUSH_DW_USE_GTT;
+
+	*cs++ = MI_FLUSH_DW | MI_FLUSH_DW_OP_STOREDW | flags;
+	*cs++ = offset;
 	*cs++ = rq->fence.seqno;
 
 	*cs++ = MI_USER_INTERRUPT;
@@ -391,28 +427,31 @@ u32 *gen6_emit_breadcrumb_xcs(struct i915_request *rq, u32 *cs)
 #define GEN7_XCS_WA 32
 u32 *gen7_emit_breadcrumb_xcs(struct i915_request *rq, u32 *cs)
 {
+	struct intel_timeline *tl = rcu_dereference_protected(rq->timeline, 1);
+	u32 offset = __i915_request_hwsp_offset(rq);
+	u32 cmd = MI_FLUSH_DW | MI_FLUSH_DW_OP_STOREDW;
 	int i;
 
-	GEM_BUG_ON(i915_request_active_timeline(rq)->hwsp_ggtt != rq->engine->status_page.vma);
-	GEM_BUG_ON(offset_in_page(i915_request_active_timeline(rq)->hwsp_offset) != I915_GEM_HWS_SEQNO_ADDR);
+	GEM_BUG_ON(tl->mode == INTEL_TIMELINE_RELATIVE_CONTEXT);
 
-	*cs++ = MI_FLUSH_DW | MI_INVALIDATE_TLB |
-		MI_FLUSH_DW_OP_STOREDW | MI_FLUSH_DW_STORE_INDEX;
-	*cs++ = I915_GEM_HWS_SEQNO_ADDR | MI_FLUSH_DW_USE_GTT;
+	if (intel_timeline_is_relative(tl)) {
+		offset = offset_in_page(offset);
+		cmd |= MI_FLUSH_DW_STORE_INDEX;
+	}
+	if (!intel_timeline_in_context(tl))
+		offset |= MI_FLUSH_DW_USE_GTT;
+
+	*cs++ = cmd;
+	*cs++ = offset;
 	*cs++ = rq->fence.seqno;
 
 	for (i = 0; i < GEN7_XCS_WA; i++) {
-		*cs++ = MI_STORE_DWORD_INDEX;
-		*cs++ = I915_GEM_HWS_SEQNO_ADDR;
+		*cs++ = cmd;
+		*cs++ = offset;
 		*cs++ = rq->fence.seqno;
 	}
 
-	*cs++ = MI_FLUSH_DW;
-	*cs++ = 0;
-	*cs++ = 0;
-
 	*cs++ = MI_USER_INTERRUPT;
-	*cs++ = MI_NOOP;
 
 	rq->tail = intel_ring_offset(rq, cs);
 	assert_ring_tail_valid(rq->ring, rq->tail);
diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index 7fd843369b41..4a0d32584ef0 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -336,19 +336,6 @@ static u32 preempt_address(struct intel_engine_cs *engine)
 		I915_GEM_HWS_PREEMPT_ADDR);
 }
 
-static u32 hwsp_offset(const struct i915_request *rq)
-{
-	const struct intel_timeline_cacheline *cl;
-
-	/* Before the request is executed, the timeline/cachline is fixed */
-
-	cl = rcu_dereference_protected(rq->hwsp_cacheline, 1);
-	if (cl)
-		return cl->ggtt_offset;
-
-	return rcu_dereference_protected(rq->timeline, 1)->ggtt_offset;
-}
-
 int gen8_emit_init_breadcrumb(struct i915_request *rq)
 {
 	u32 *cs;
@@ -362,7 +349,7 @@ int gen8_emit_init_breadcrumb(struct i915_request *rq)
 		return PTR_ERR(cs);
 
 	*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
-	*cs++ = hwsp_offset(rq);
+	*cs++ = __i915_request_hwsp_offset(rq);
 	*cs++ = 0;
 	*cs++ = rq->fence.seqno - 1;
 
@@ -520,7 +507,7 @@ static u32 *emit_xcs_breadcrumb(struct i915_request *rq, u32 *cs)
 {
 	struct intel_timeline *tl = rcu_dereference_protected(rq->timeline, 1);
 	unsigned int flags = MI_FLUSH_DW_OP_STOREDW;
-	u32 offset = hwsp_offset(rq);
+	u32 offset = __i915_request_hwsp_offset(rq);
 
 	if (intel_timeline_is_relative(tl)) {
 		offset = offset_in_page(offset);
@@ -542,7 +529,7 @@ u32 *gen8_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
 {
 	struct intel_timeline *tl = rcu_dereference_protected(rq->timeline, 1);
 	unsigned int flags = PIPE_CONTROL_FLUSH_ENABLE | PIPE_CONTROL_CS_STALL;
-	u32 offset = hwsp_offset(rq);
+	u32 offset = __i915_request_hwsp_offset(rq);
 
 	if (intel_timeline_is_relative(tl)) {
 		offset = offset_in_page(offset);
@@ -567,7 +554,7 @@ u32 *gen8_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
 u32 *gen11_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
 {
 	struct intel_timeline *tl = rcu_dereference_protected(rq->timeline, 1);
-	u32 offset = hwsp_offset(rq);
+	u32 offset = __i915_request_hwsp_offset(rq);
 	unsigned int flags;
 
 	flags = (PIPE_CONTROL_CS_STALL |
@@ -649,7 +636,7 @@ u32 *gen12_emit_fini_breadcrumb_xcs(struct i915_request *rq, u32 *cs)
 u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
 {
 	struct intel_timeline *tl = rcu_dereference_protected(rq->timeline, 1);
-	u32 offset = hwsp_offset(rq);
+	u32 offset = __i915_request_hwsp_offset(rq);
 	unsigned int flags;
 
 	flags = (PIPE_CONTROL_CS_STALL |
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 00e85a3b228a..4bdde28c2c09 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -999,9 +999,6 @@ static void setup_common(struct intel_engine_cs *engine)
 	 * equivalent to our next initial bread so we can elide
 	 * engine->emit_init_breadcrumb().
 	 */
-	engine->emit_fini_breadcrumb = gen3_emit_breadcrumb;
-	if (IS_GEN(i915, 5))
-		engine->emit_fini_breadcrumb = gen5_emit_breadcrumb;
 
 	if (INTEL_GEN(i915) >= 6)
 		engine->emit_bb_start = gen6_emit_bb_start;
@@ -1012,6 +1009,15 @@ static void setup_common(struct intel_engine_cs *engine)
 	else
 		engine->emit_bb_start = gen3_emit_bb_start;
 
+	if (INTEL_GEN(i915) >= 7)
+		engine->emit_fini_breadcrumb = gen7_emit_breadcrumb_xcs;
+	else if (INTEL_GEN(i915) >= 6)
+		engine->emit_fini_breadcrumb = gen6_emit_breadcrumb_xcs;
+	else if (INTEL_GEN(i915) >= 4)
+		engine->emit_fini_breadcrumb = gen4_emit_breadcrumb_xcs;
+	else
+		engine->emit_fini_breadcrumb = gen3_emit_breadcrumb;
+
 	engine->set_default_submission = set_default_submission;
 }
 
@@ -1053,11 +1059,6 @@ static void setup_vcs(struct intel_engine_cs *engine)
 			engine->flags |= I915_ENGINE_NEEDS_WA_TAIL_WRITE;
 		engine->emit_flush = gen6_emit_flush_vcs;
 		engine->irq_enable_mask = GT_BSD_USER_INTERRUPT;
-
-		if (IS_GEN(i915, 6))
-			engine->emit_fini_breadcrumb = gen6_emit_breadcrumb_xcs;
-		else
-			engine->emit_fini_breadcrumb = gen7_emit_breadcrumb_xcs;
 	} else {
 		engine->emit_flush = gen4_emit_flush_vcs;
 		if (IS_GEN(i915, 5))
@@ -1071,13 +1072,10 @@ static void setup_bcs(struct intel_engine_cs *engine)
 {
 	struct drm_i915_private *i915 = engine->i915;
 
+	GEM_BUG_ON(INTEL_GEN(i915) < 6);
+
 	engine->emit_flush = gen6_emit_flush_xcs;
 	engine->irq_enable_mask = GT_BLT_USER_INTERRUPT;
-
-	if (IS_GEN(i915, 6))
-		engine->emit_fini_breadcrumb = gen6_emit_breadcrumb_xcs;
-	else
-		engine->emit_fini_breadcrumb = gen7_emit_breadcrumb_xcs;
 }
 
 static void setup_vecs(struct intel_engine_cs *engine)
@@ -1090,8 +1088,6 @@ static void setup_vecs(struct intel_engine_cs *engine)
 	engine->irq_enable_mask = PM_VEBOX_USER_INTERRUPT;
 	engine->irq_enable = hsw_irq_enable_vecs;
 	engine->irq_disable = hsw_irq_disable_vecs;
-
-	engine->emit_fini_breadcrumb = gen7_emit_breadcrumb_xcs;
 }
 
 static int gen7_ctx_switch_bb_setup(struct intel_engine_cs * const engine,
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 843e6a873148..02d923e615fc 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -625,6 +625,19 @@ i915_request_active_timeline(const struct i915_request *rq)
 					 lockdep_is_held(&i915_request_get_scheduler(rq)->lock));
 }
 
+static inline u32 __i915_request_hwsp_offset(const struct i915_request *rq)
+{
+	const struct intel_timeline_cacheline *cl;
+
+	/* Before the request is executed, the timeline/cachline is fixed */
+
+	cl = rcu_dereference_protected(rq->hwsp_cacheline, 1);
+	if (cl)
+		return cl->ggtt_offset;
+
+	return rcu_dereference_protected(rq->timeline, 1)->ggtt_offset;
+}
+
 static inline bool i915_request_use_scheduler(const struct i915_request *rq)
 {
 	return i915_sched_is_active(i915_request_get_scheduler(rq));
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
