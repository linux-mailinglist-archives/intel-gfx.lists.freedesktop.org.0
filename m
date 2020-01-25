Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B88A414926A
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Jan 2020 01:56:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65BE76E526;
	Sat, 25 Jan 2020 00:56:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98B6672BF3
 for <intel-gfx@lists.freedesktop.org>; Sat, 25 Jan 2020 00:56:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 16:56:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,359,1574150400"; d="scan'208";a="426790539"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga005.fm.intel.com with ESMTP; 24 Jan 2020 16:56:12 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 16:55:32 -0800
Message-Id: <20200125005537.31860-2-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200125005537.31860-1-daniele.ceraolospurio@intel.com>
References: <20200125005537.31860-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 1/6] drm/i915/guc: Add guc-specific breadcrumb
 functions
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

They're still mostly the same as the execlists ones, with the main
difference being that there is no busywait on the GuC side.

Since we now have multiple vfuncs set dutring setup, start compacting
them in their own helper.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 148 +++++++++++++++++-
 1 file changed, 145 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index ad0d604d35a8..a4caa0f9dfbf 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -498,6 +498,107 @@ static void guc_reset_finish(struct intel_engine_cs *engine)
 		     atomic_read(&execlists->tasklet.count));
 }
 
+static int emit_init_breadcrumb(struct i915_request *rq)
+{
+	u32 *cs;
+
+	GEM_BUG_ON(!i915_request_timeline(rq)->has_initial_breadcrumb);
+
+	cs = intel_ring_begin(rq, 6);
+	if (IS_ERR(cs))
+		return PTR_ERR(cs);
+
+	/*
+	 * Check if we have been preempted before we even get started.
+	 *
+	 * After this point i915_request_started() reports true, even if
+	 * we get preempted and so are no longer running.
+	 */
+	*cs++ = MI_ARB_CHECK;
+	*cs++ = MI_NOOP;
+
+	*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
+	*cs++ = i915_request_timeline(rq)->hwsp_offset;
+	*cs++ = 0;
+	*cs++ = rq->fence.seqno - 1;
+
+	intel_ring_advance(rq, cs);
+
+	/* Record the updated position of the request's payload */
+	rq->infix = intel_ring_offset(rq, cs);
+
+	return 0;
+}
+
+static __always_inline u32*
+emit_fini_breadcrumb_footer(struct i915_request *request, u32 *cs)
+{
+	*cs++ = MI_USER_INTERRUPT;
+
+	*cs++ = MI_ARB_ON_OFF | MI_ARB_ENABLE;
+
+	request->tail = intel_ring_offset(request, cs);
+	assert_ring_tail_valid(request->ring, request->tail);
+
+	/*
+	 * Reserve space for 2 extra dwords at the end of each request to be
+	 * used as a workaround for not being allowed to do lite restore with
+	 * HEAD==TAIL (WaIdleLiteRestore). We use MI_ARB_CHECK as one of the
+	 * dwords to ensure there's always at least one preemption point
+	 * per-request.
+	 */
+	*cs++ = MI_ARB_CHECK;
+	*cs++ = MI_NOOP;
+	request->wa_tail = intel_ring_offset(request, cs);
+
+	return cs;
+}
+
+static u32 *emit_fini_breadcrumb_xcs(struct i915_request *request, u32 *cs)
+{
+	cs = gen8_emit_ggtt_write(cs,
+				  request->fence.seqno,
+				  i915_request_active_timeline(request)->hwsp_offset,
+				  0);
+
+	return emit_fini_breadcrumb_footer(request, cs);
+}
+
+static u32 *
+gen11_emit_fini_breadcrumb_rcs(struct i915_request *request, u32 *cs)
+{
+	cs = gen8_emit_ggtt_write_rcs(cs,
+				      request->fence.seqno,
+				      i915_request_active_timeline(request)->hwsp_offset,
+				      PIPE_CONTROL_CS_STALL |
+				      PIPE_CONTROL_TILE_CACHE_FLUSH |
+				      PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH |
+				      PIPE_CONTROL_DEPTH_CACHE_FLUSH |
+				      PIPE_CONTROL_DC_FLUSH_ENABLE |
+				      PIPE_CONTROL_FLUSH_ENABLE);
+
+	return emit_fini_breadcrumb_footer(request, cs);
+}
+
+static u32 *
+gen12_emit_fini_breadcrumb_rcs(struct i915_request *request, u32 *cs)
+{
+	cs = gen8_emit_ggtt_write_rcs(cs,
+				      request->fence.seqno,
+				      i915_request_active_timeline(request)->hwsp_offset,
+				      PIPE_CONTROL_CS_STALL |
+				      PIPE_CONTROL_TILE_CACHE_FLUSH |
+				      PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH |
+				      PIPE_CONTROL_DEPTH_CACHE_FLUSH |
+				      /* Wa_1409600907:tgl */
+				      PIPE_CONTROL_DEPTH_STALL |
+				      PIPE_CONTROL_DC_FLUSH_ENABLE |
+				      PIPE_CONTROL_FLUSH_ENABLE |
+				      PIPE_CONTROL_HDC_PIPELINE_FLUSH);
+
+	return emit_fini_breadcrumb_footer(request, cs);
+}
+
 /*
  * Everything below here is concerned with setup & teardown, and is
  * therefore not part of the somewhat time-critical batch-submission
@@ -607,6 +708,49 @@ static void guc_set_default_submission(struct intel_engine_cs *engine)
 	engine->flags |= I915_ENGINE_NEEDS_BREADCRUMB_TASKLET;
 }
 
+static void guc_submission_default_vfuncs(struct intel_engine_cs *engine)
+{
+	/* Default vfuncs which can be overriden by each engine. */
+
+	engine->emit_init_breadcrumb = emit_init_breadcrumb;
+	engine->emit_fini_breadcrumb = emit_fini_breadcrumb_xcs;
+
+	engine->set_default_submission = guc_set_default_submission;
+
+	/*
+	 * we don't set engine->irq_<en/dis>able because we don't support
+	 * masking irq on gen11+ and we don't support guc submission on
+	 * pre-gen11.
+	 */
+	GEM_BUG_ON(INTEL_GEN(engine->i915) < 11);
+}
+
+static void rcs_submission_override(struct intel_engine_cs *engine)
+{
+	/* no support for pre-gen11 variants */
+	GEM_BUG_ON(INTEL_GEN(engine->i915) < 11);
+
+	switch (INTEL_GEN(engine->i915)) {
+	case 12:
+		engine->emit_fini_breadcrumb = gen12_emit_fini_breadcrumb_rcs;
+		break;
+	default:
+		engine->emit_fini_breadcrumb = gen11_emit_fini_breadcrumb_rcs;
+		break;
+	}
+}
+
+void guc_submission_vfuncs(struct intel_engine_cs *engine)
+{
+	/* XXX: still using base execlists vfuncs and overriding some of them */
+	intel_execlists_submission_vfuncs(engine);
+
+	guc_submission_default_vfuncs(engine);
+
+	if (engine->class == RENDER_CLASS)
+		rcs_submission_override(engine);
+}
+
 static inline void guc_default_irqs(struct intel_engine_cs *engine)
 {
 	/*
@@ -641,9 +785,7 @@ int intel_guc_submission_setup(struct intel_engine_cs *engine)
 	tasklet_init(&engine->execlists.tasklet,
 		     guc_submission_tasklet, (unsigned long)engine);
 
-	/* XXX: still mirroring execlists. Will diverge with new interface */
-	intel_execlists_submission_vfuncs(engine);
-	engine->set_default_submission = guc_set_default_submission;
+	guc_submission_vfuncs(engine);
 
 	guc_default_irqs(engine);
 	intel_logical_ring_init_workaround_bb(engine);
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
