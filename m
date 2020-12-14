Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D4A52D95F6
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 11:10:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E8DA6E200;
	Mon, 14 Dec 2020 10:10:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB0DE6E153
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 10:10:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23317861-1500050 
 for multiple; Mon, 14 Dec 2020 10:09:59 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Dec 2020 10:09:42 +0000
Message-Id: <20201214100949.11387-62-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201214100949.11387-1-chris@chris-wilson.co.uk>
References: <20201214100949.11387-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 62/69] drm/i915/gt: Use client timeline address
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
 drivers/gpu/drm/i915/gt/gen6_engine_cs.c | 89 +++++++++++++++++-------
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 23 ++----
 drivers/gpu/drm/i915/i915_request.h      | 13 ++++
 3 files changed, 82 insertions(+), 43 deletions(-)

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
+
+	GEM_BUG_ON(tl->mode == INTEL_TIMELINE_RELATIVE_CONTEXT);
 
-	*cs++ = MI_FLUSH_DW | MI_FLUSH_DW_OP_STOREDW | MI_FLUSH_DW_STORE_INDEX;
-	*cs++ = I915_GEM_HWS_SEQNO_ADDR | MI_FLUSH_DW_USE_GTT;
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
index 4f78004f0087..17a4005867b0 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -336,19 +336,6 @@ static inline u32 preempt_address(struct intel_engine_cs *engine)
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
@@ -371,7 +358,7 @@ int gen8_emit_init_breadcrumb(struct i915_request *rq)
 	*cs++ = MI_NOOP;
 
 	*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
-	*cs++ = hwsp_offset(rq);
+	*cs++ = __i915_request_hwsp_offset(rq);
 	*cs++ = 0;
 	*cs++ = rq->fence.seqno - 1;
 
@@ -504,7 +491,7 @@ static u32 *emit_xcs_breadcrumb(struct i915_request *rq, u32 *cs)
 {
 	struct intel_timeline *tl = rcu_dereference_protected(rq->timeline, 1);
 	unsigned int flags = MI_FLUSH_DW_OP_STOREDW;
-	u32 offset = hwsp_offset(rq);
+	u32 offset = __i915_request_hwsp_offset(rq);
 
 	if (intel_timeline_is_relative(tl)) {
 		offset = offset_in_page(offset);
@@ -526,7 +513,7 @@ u32 *gen8_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
 {
 	struct intel_timeline *tl = rcu_dereference_protected(rq->timeline, 1);
 	unsigned int flags = PIPE_CONTROL_FLUSH_ENABLE | PIPE_CONTROL_CS_STALL;
-	u32 offset = hwsp_offset(rq);
+	u32 offset = __i915_request_hwsp_offset(rq);
 
 	if (intel_timeline_is_relative(tl)) {
 		offset = offset_in_page(offset);
@@ -551,7 +538,7 @@ u32 *gen8_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
 u32 *gen11_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
 {
 	struct intel_timeline *tl = rcu_dereference_protected(rq->timeline, 1);
-	u32 offset = hwsp_offset(rq);
+	u32 offset = __i915_request_hwsp_offset(rq);
 	unsigned int flags;
 
 	flags = (PIPE_CONTROL_CS_STALL |
@@ -633,7 +620,7 @@ u32 *gen12_emit_fini_breadcrumb_xcs(struct i915_request *rq, u32 *cs)
 u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
 {
 	struct intel_timeline *tl = rcu_dereference_protected(rq->timeline, 1);
-	u32 offset = hwsp_offset(rq);
+	u32 offset = __i915_request_hwsp_offset(rq);
 	unsigned int flags;
 
 	flags = (PIPE_CONTROL_CS_STALL |
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 6949dc83b3e5..782a7e3c6f50 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -588,4 +588,17 @@ i915_request_active_timeline(const struct i915_request *rq)
 					 lockdep_is_held(&rq->engine->active.lock));
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
 #endif /* I915_REQUEST_H */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
