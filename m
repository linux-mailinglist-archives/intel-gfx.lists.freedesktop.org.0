Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AAFD71EC4C9
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jun 2020 00:10:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF2EF6E214;
	Tue,  2 Jun 2020 22:10:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C43886E214
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jun 2020 22:10:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21378195-1500050 
 for multiple; Tue, 02 Jun 2020 23:09:57 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Jun 2020 23:09:53 +0100
Message-Id: <20200602220953.21178-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Drop i915_request.i915 backpointer
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

We infrequently use the direct i915 backpointer from the i915_request,
so do we really need to waste the space in the struct for it? 8 bytes
from the most frequently allocated struct vs an 3 bytes and pointer
chasing in using rq->engine->i915?

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c  |  4 ++--
 drivers/gpu/drm/i915/gt/gen2_engine_cs.c        |  2 +-
 drivers/gpu/drm/i915/gt/intel_context_sseu.c    |  2 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c       |  6 ++----
 drivers/gpu/drm/i915/gt/intel_lrc.c             |  6 +++---
 drivers/gpu/drm/i915/gt/intel_ring_submission.c |  6 +++---
 drivers/gpu/drm/i915/gt/intel_workarounds.c     |  4 ++--
 drivers/gpu/drm/i915/gt/selftest_engine_cs.c    |  2 +-
 drivers/gpu/drm/i915/gt/selftest_mocs.c         |  2 +-
 drivers/gpu/drm/i915/gt/selftest_rc6.c          |  9 ++++-----
 drivers/gpu/drm/i915/gt/selftest_timeline.c     |  4 ++--
 drivers/gpu/drm/i915/gvt/scheduler.c            |  4 ++--
 drivers/gpu/drm/i915/i915_request.c             | 12 ++++++------
 drivers/gpu/drm/i915/i915_request.h             |  3 ---
 drivers/gpu/drm/i915/i915_trace.h               | 10 +++++-----
 drivers/gpu/drm/i915/selftests/i915_perf.c      |  2 +-
 drivers/gpu/drm/i915/selftests/igt_spinner.c    | 14 +++++++-------
 17 files changed, 43 insertions(+), 49 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 219a36995b96..02a5c0ce39ca 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1910,8 +1910,8 @@ static int i915_reset_gen7_sol_offsets(struct i915_request *rq)
 	u32 *cs;
 	int i;
 
-	if (!IS_GEN(rq->i915, 7) || rq->engine->id != RCS0) {
-		drm_dbg(&rq->i915->drm, "sol reset is gen7/rcs only\n");
+	if (!IS_GEN(rq->engine->i915, 7) || rq->engine->id != RCS0) {
+		drm_dbg(&rq->engine->i915->drm, "sol reset is gen7/rcs only\n");
 		return -EINVAL;
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/gen2_engine_cs.c b/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
index 8d2e85081247..3fb0dc1fb910 100644
--- a/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
@@ -77,7 +77,7 @@ int gen4_emit_flush_rcs(struct i915_request *rq, u32 mode)
 	cmd = MI_FLUSH;
 	if (mode & EMIT_INVALIDATE) {
 		cmd |= MI_EXE_FLUSH;
-		if (IS_G4X(rq->i915) || IS_GEN(rq->i915, 5))
+		if (IS_G4X(rq->engine->i915) || IS_GEN(rq->engine->i915, 5))
 			cmd |= MI_INVALIDATE_ISP;
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/intel_context_sseu.c b/drivers/gpu/drm/i915/gt/intel_context_sseu.c
index 487299cb91f2..27ae48049239 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_sseu.c
+++ b/drivers/gpu/drm/i915/gt/intel_context_sseu.c
@@ -30,7 +30,7 @@ static int gen8_emit_rpcs_config(struct i915_request *rq,
 	*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
 	*cs++ = lower_32_bits(offset);
 	*cs++ = upper_32_bits(offset);
-	*cs++ = intel_sseu_make_rpcs(rq->i915, &sseu);
+	*cs++ = intel_sseu_make_rpcs(rq->engine->i915, &sseu);
 
 	intel_ring_advance(rq, cs);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index c8c14981eb5d..e37490d459c2 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -661,7 +661,6 @@ static int measure_breadcrumb_dw(struct intel_context *ce)
 	if (!frame)
 		return -ENOMEM;
 
-	frame->rq.i915 = engine->i915;
 	frame->rq.engine = engine;
 	frame->rq.context = ce;
 	rcu_assign_pointer(frame->rq.timeline, ce->timeline);
@@ -1192,8 +1191,7 @@ bool intel_engine_can_store_dword(struct intel_engine_cs *engine)
 	}
 }
 
-static int print_sched_attr(struct drm_i915_private *i915,
-			    const struct i915_sched_attr *attr,
+static int print_sched_attr(const struct i915_sched_attr *attr,
 			    char *buf, int x, int len)
 {
 	if (attr->priority == I915_PRIORITY_INVALID)
@@ -1213,7 +1211,7 @@ static void print_request(struct drm_printer *m,
 	char buf[80] = "";
 	int x = 0;
 
-	x = print_sched_attr(rq->i915, &rq->sched.attr, buf, x, sizeof(buf));
+	x = print_sched_attr(&rq->sched.attr, buf, x, sizeof(buf));
 
 	drm_printf(m, "%s %llx:%llx%s%s %s @ %dms: %s\n",
 		   prefix,
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 6fc0966b75ff..aac8da18694f 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3533,7 +3533,7 @@ static int emit_pdps(struct i915_request *rq)
 	int err, i;
 	u32 *cs;
 
-	GEM_BUG_ON(intel_vgpu_active(rq->i915));
+	GEM_BUG_ON(intel_vgpu_active(rq->engine->i915));
 
 	/*
 	 * Beware ye of the dragons, this sequence is magic!
@@ -4512,11 +4512,11 @@ static int gen8_emit_flush_render(struct i915_request *request,
 		 * On GEN9: before VF_CACHE_INVALIDATE we need to emit a NULL
 		 * pipe control.
 		 */
-		if (IS_GEN(request->i915, 9))
+		if (IS_GEN(request->engine->i915, 9))
 			vf_flush_wa = true;
 
 		/* WaForGAMHang:kbl */
-		if (IS_KBL_REVID(request->i915, 0, KBL_REVID_B0))
+		if (IS_KBL_REVID(request->engine->i915, 0, KBL_REVID_B0))
 			dc_flush_wa = true;
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index d9c1701061b9..68a08486fc87 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -645,8 +645,8 @@ static inline int mi_set_context(struct i915_request *rq,
 				 struct intel_context *ce,
 				 u32 flags)
 {
-	struct drm_i915_private *i915 = rq->i915;
 	struct intel_engine_cs *engine = rq->engine;
+	struct drm_i915_private *i915 = engine->i915;
 	enum intel_engine_id id;
 	const int num_engines =
 		IS_HASWELL(i915) ? RUNTIME_INFO(i915)->num_engines - 1 : 0;
@@ -760,7 +760,7 @@ static inline int mi_set_context(struct i915_request *rq,
 
 static int remap_l3_slice(struct i915_request *rq, int slice)
 {
-	u32 *cs, *remap_info = rq->i915->l3_parity.remap_info[slice];
+	u32 *cs, *remap_info = rq->engine->i915->l3_parity.remap_info[slice];
 	int i;
 
 	if (!remap_info)
@@ -871,7 +871,7 @@ static int switch_context(struct i915_request *rq)
 	void **residuals = NULL;
 	int ret;
 
-	GEM_BUG_ON(HAS_EXECLISTS(rq->i915));
+	GEM_BUG_ON(HAS_EXECLISTS(engine->i915));
 
 	if (engine->wa_ctx.vma && ce != engine->kernel_context) {
 		if (engine->wa_ctx.vma->private != ce) {
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 94d66a9d760d..9ae903f1ab57 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1728,7 +1728,7 @@ wa_list_srm(struct i915_request *rq,
 	    const struct i915_wa_list *wal,
 	    struct i915_vma *vma)
 {
-	struct drm_i915_private *i915 = rq->i915;
+	struct drm_i915_private *i915 = rq->engine->i915;
 	unsigned int i, count = 0;
 	const struct i915_wa *wa;
 	u32 srm, *cs;
@@ -1817,7 +1817,7 @@ static int engine_wa_list_verify(struct intel_context *ce,
 
 	err = 0;
 	for (i = 0, wa = wal->list; i < wal->count; i++, wa++) {
-		if (mcr_range(rq->i915, i915_mmio_reg_offset(wa->reg)))
+		if (mcr_range(rq->engine->i915, i915_mmio_reg_offset(wa->reg)))
 			continue;
 
 		if (!wa_verify(wa, results[i], wal->name, from))
diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_cs.c b/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
index f88e445a1cae..729c3c7b11e2 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
@@ -49,7 +49,7 @@ static int write_timestamp(struct i915_request *rq, int slot)
 		return PTR_ERR(cs);
 
 	cmd = MI_STORE_REGISTER_MEM | MI_USE_GGTT;
-	if (INTEL_GEN(rq->i915) >= 8)
+	if (INTEL_GEN(rq->engine->i915) >= 8)
 		cmd++;
 	*cs++ = cmd;
 	*cs++ = i915_mmio_reg_offset(RING_TIMESTAMP(rq->engine->mmio_base));
diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c b/drivers/gpu/drm/i915/gt/selftest_mocs.c
index 8831ffee2061..7bae64018ad9 100644
--- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
+++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
@@ -143,7 +143,7 @@ static int read_mocs_table(struct i915_request *rq,
 {
 	u32 addr;
 
-	if (HAS_GLOBAL_MOCS_REGISTERS(rq->i915))
+	if (HAS_GLOBAL_MOCS_REGISTERS(rq->engine->i915))
 		addr = global_mocs_offset();
 	else
 		addr = mocs_offset(rq->engine);
diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index 2dc460624bbc..3c8434846fa1 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
@@ -132,7 +132,7 @@ static const u32 *__live_rc6_ctx(struct intel_context *ce)
 	}
 
 	cmd = MI_STORE_REGISTER_MEM | MI_USE_GGTT;
-	if (INTEL_GEN(rq->i915) >= 8)
+	if (INTEL_GEN(rq->engine->i915) >= 8)
 		cmd++;
 
 	*cs++ = cmd;
@@ -197,10 +197,10 @@ int live_rc6_ctx_wa(void *arg)
 		int pass;
 
 		for (pass = 0; pass < 2; pass++) {
+			struct i915_gpu_error *error = &gt->i915->gpu_error;
 			struct intel_context *ce;
 			unsigned int resets =
-				i915_reset_engine_count(&gt->i915->gpu_error,
-							engine);
+				i915_reset_engine_count(error, engine);
 			const u32 *res;
 
 			/* Use a sacrifical context */
@@ -230,8 +230,7 @@ int live_rc6_ctx_wa(void *arg)
 				 engine->name, READ_ONCE(*res));
 
 			if (resets !=
-			    i915_reset_engine_count(&gt->i915->gpu_error,
-						    engine)) {
+			    i915_reset_engine_count(error, engine)) {
 				pr_err("%s: GPU reset required\n",
 				       engine->name);
 				add_taint_for_CI(TAINT_WARN);
diff --git a/drivers/gpu/drm/i915/gt/selftest_timeline.c b/drivers/gpu/drm/i915/gt/selftest_timeline.c
index ef1c35073dc0..b2aad7ef046a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_timeline.c
+++ b/drivers/gpu/drm/i915/gt/selftest_timeline.c
@@ -426,12 +426,12 @@ static int emit_ggtt_store_dw(struct i915_request *rq, u32 addr, u32 value)
 	if (IS_ERR(cs))
 		return PTR_ERR(cs);
 
-	if (INTEL_GEN(rq->i915) >= 8) {
+	if (INTEL_GEN(rq->engine->i915) >= 8) {
 		*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
 		*cs++ = addr;
 		*cs++ = 0;
 		*cs++ = value;
-	} else if (INTEL_GEN(rq->i915) >= 4) {
+	} else if (INTEL_GEN(rq->engine->i915) >= 4) {
 		*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
 		*cs++ = 0;
 		*cs++ = addr;
diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
index 0fb1df71c637..8fc2ad4517e9 100644
--- a/drivers/gpu/drm/i915/gvt/scheduler.c
+++ b/drivers/gpu/drm/i915/gvt/scheduler.c
@@ -348,7 +348,7 @@ static int copy_workload_to_ring_buffer(struct intel_vgpu_workload *workload)
 	u32 *cs;
 	int err;
 
-	if (IS_GEN(req->i915, 9) && is_inhibit_context(req->context))
+	if (IS_GEN(req->engine->i915, 9) && is_inhibit_context(req->context))
 		intel_vgpu_restore_inhibit_context(vgpu, req);
 
 	/*
@@ -939,7 +939,7 @@ static void update_guest_context(struct intel_vgpu_workload *workload)
 	context_page_num = rq->engine->context_size;
 	context_page_num = context_page_num >> PAGE_SHIFT;
 
-	if (IS_BROADWELL(rq->i915) && rq->engine->id == RCS0)
+	if (IS_BROADWELL(rq->engine->i915) && rq->engine->id == RCS0)
 		context_page_num = 19;
 
 	context_base = (void *) ctx->lrc_reg_state -
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index c5d7220de529..3bb7320249ae 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -56,7 +56,7 @@ static struct i915_global_request {
 
 static const char *i915_fence_get_driver_name(struct dma_fence *fence)
 {
-	return dev_name(to_request(fence)->i915->drm.dev);
+	return dev_name(to_request(fence)->engine->i915->drm.dev);
 }
 
 static const char *i915_fence_get_timeline_name(struct dma_fence *fence)
@@ -812,7 +812,6 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
 		}
 	}
 
-	rq->i915 = ce->engine->i915;
 	rq->context = ce;
 	rq->engine = ce->engine;
 	rq->ring = ce->ring;
@@ -1011,12 +1010,12 @@ __emit_semaphore_wait(struct i915_request *to,
 		      struct i915_request *from,
 		      u32 seqno)
 {
-	const int has_token = INTEL_GEN(to->i915) >= 12;
+	const int has_token = INTEL_GEN(to->engine->i915) >= 12;
 	u32 hwsp_offset;
 	int len, err;
 	u32 *cs;
 
-	GEM_BUG_ON(INTEL_GEN(to->i915) < 8);
+	GEM_BUG_ON(INTEL_GEN(to->engine->i915) < 8);
 	GEM_BUG_ON(i915_request_has_initial_breadcrumb(to));
 
 	/* We need to pin the signaler's HWSP until we are finished reading. */
@@ -1211,7 +1210,7 @@ __i915_request_await_external(struct i915_request *rq, struct dma_fence *fence)
 {
 	mark_external(rq);
 	return i915_sw_fence_await_dma_fence(&rq->submit, fence,
-					     i915_fence_context_timeout(rq->i915,
+					     i915_fence_context_timeout(rq->engine->i915,
 									fence->context),
 					     I915_FENCE_GFP);
 }
@@ -1782,7 +1781,8 @@ long i915_request_wait(struct i915_request *rq,
 	 * (bad for battery).
 	 */
 	if (flags & I915_WAIT_PRIORITY) {
-		if (!i915_request_started(rq) && INTEL_GEN(rq->i915) >= 6)
+		if (!i915_request_started(rq) &&
+		    INTEL_GEN(rq->engine->i915) >= 6)
 			intel_rps_boost(rq);
 	}
 
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 5d4709a3dace..118ab6650d1f 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -162,9 +162,6 @@ struct i915_request {
 	struct dma_fence fence;
 	spinlock_t lock;
 
-	/** On Which ring this request was generated */
-	struct drm_i915_private *i915;
-
 	/**
 	 * Context and ring buffer related to this request
 	 * Contexts are refcounted, so when this request is associated with a
diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_trace.h
index bc854ad60954..a4addcc64978 100644
--- a/drivers/gpu/drm/i915/i915_trace.h
+++ b/drivers/gpu/drm/i915/i915_trace.h
@@ -735,7 +735,7 @@ TRACE_EVENT(i915_request_queue,
 			     ),
 
 	    TP_fast_assign(
-			   __entry->dev = rq->i915->drm.primary->index;
+			   __entry->dev = rq->engine->i915->drm.primary->index;
 			   __entry->class = rq->engine->uabi_class;
 			   __entry->instance = rq->engine->uabi_instance;
 			   __entry->ctx = rq->fence.context;
@@ -761,7 +761,7 @@ DECLARE_EVENT_CLASS(i915_request,
 			     ),
 
 	    TP_fast_assign(
-			   __entry->dev = rq->i915->drm.primary->index;
+			   __entry->dev = rq->engine->i915->drm.primary->index;
 			   __entry->class = rq->engine->uabi_class;
 			   __entry->instance = rq->engine->uabi_instance;
 			   __entry->ctx = rq->fence.context;
@@ -804,7 +804,7 @@ TRACE_EVENT(i915_request_in,
 			    ),
 
 	    TP_fast_assign(
-			   __entry->dev = rq->i915->drm.primary->index;
+			   __entry->dev = rq->engine->i915->drm.primary->index;
 			   __entry->class = rq->engine->uabi_class;
 			   __entry->instance = rq->engine->uabi_instance;
 			   __entry->ctx = rq->fence.context;
@@ -833,7 +833,7 @@ TRACE_EVENT(i915_request_out,
 			    ),
 
 	    TP_fast_assign(
-			   __entry->dev = rq->i915->drm.primary->index;
+			   __entry->dev = rq->engine->i915->drm.primary->index;
 			   __entry->class = rq->engine->uabi_class;
 			   __entry->instance = rq->engine->uabi_instance;
 			   __entry->ctx = rq->fence.context;
@@ -895,7 +895,7 @@ TRACE_EVENT(i915_request_wait_begin,
 	     * less desirable.
 	     */
 	    TP_fast_assign(
-			   __entry->dev = rq->i915->drm.primary->index;
+			   __entry->dev = rq->engine->i915->drm.primary->index;
 			   __entry->class = rq->engine->uabi_class;
 			   __entry->instance = rq->engine->uabi_instance;
 			   __entry->ctx = rq->fence.context;
diff --git a/drivers/gpu/drm/i915/selftests/i915_perf.c b/drivers/gpu/drm/i915/selftests/i915_perf.c
index 8eb3108f1767..be54570c407c 100644
--- a/drivers/gpu/drm/i915/selftests/i915_perf.c
+++ b/drivers/gpu/drm/i915/selftests/i915_perf.c
@@ -162,7 +162,7 @@ static int write_timestamp(struct i915_request *rq, int slot)
 		return PTR_ERR(cs);
 
 	len = 5;
-	if (INTEL_GEN(rq->i915) >= 8)
+	if (INTEL_GEN(rq->engine->i915) >= 8)
 		len++;
 
 	*cs++ = GFX_OP_PIPE_CONTROL(len);
diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
index e35ba5f9e73f..699bfe0328fb 100644
--- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
+++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
@@ -134,15 +134,15 @@ igt_spinner_create_request(struct igt_spinner *spin,
 
 	batch = spin->batch;
 
-	if (INTEL_GEN(rq->i915) >= 8) {
+	if (INTEL_GEN(rq->engine->i915) >= 8) {
 		*batch++ = MI_STORE_DWORD_IMM_GEN4;
 		*batch++ = lower_32_bits(hws_address(hws, rq));
 		*batch++ = upper_32_bits(hws_address(hws, rq));
-	} else if (INTEL_GEN(rq->i915) >= 6) {
+	} else if (INTEL_GEN(rq->engine->i915) >= 6) {
 		*batch++ = MI_STORE_DWORD_IMM_GEN4;
 		*batch++ = 0;
 		*batch++ = hws_address(hws, rq);
-	} else if (INTEL_GEN(rq->i915) >= 4) {
+	} else if (INTEL_GEN(rq->engine->i915) >= 4) {
 		*batch++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
 		*batch++ = 0;
 		*batch++ = hws_address(hws, rq);
@@ -154,11 +154,11 @@ igt_spinner_create_request(struct igt_spinner *spin,
 
 	*batch++ = arbitration_command;
 
-	if (INTEL_GEN(rq->i915) >= 8)
+	if (INTEL_GEN(rq->engine->i915) >= 8)
 		*batch++ = MI_BATCH_BUFFER_START | BIT(8) | 1;
-	else if (IS_HASWELL(rq->i915))
+	else if (IS_HASWELL(rq->engine->i915))
 		*batch++ = MI_BATCH_BUFFER_START | MI_BATCH_PPGTT_HSW;
-	else if (INTEL_GEN(rq->i915) >= 6)
+	else if (INTEL_GEN(rq->engine->i915) >= 6)
 		*batch++ = MI_BATCH_BUFFER_START;
 	else
 		*batch++ = MI_BATCH_BUFFER_START | MI_BATCH_GTT;
@@ -176,7 +176,7 @@ igt_spinner_create_request(struct igt_spinner *spin,
 	}
 
 	flags = 0;
-	if (INTEL_GEN(rq->i915) <= 5)
+	if (INTEL_GEN(rq->engine->i915) <= 5)
 		flags |= I915_DISPATCH_SECURE;
 	err = engine->emit_bb_start(rq, vma->node.start, PAGE_SIZE, flags);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
