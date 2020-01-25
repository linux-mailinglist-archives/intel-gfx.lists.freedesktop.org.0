Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E63914926B
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Jan 2020 01:56:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3682872BF0;
	Sat, 25 Jan 2020 00:56:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 201BB72BF1
 for <intel-gfx@lists.freedesktop.org>; Sat, 25 Jan 2020 00:56:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 16:56:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,359,1574150400"; d="scan'208";a="426790561"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga005.fm.intel.com with ESMTP; 24 Jan 2020 16:56:16 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 16:55:37 -0800
Message-Id: <20200125005537.31860-7-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200125005537.31860-1-daniele.ceraolospurio@intel.com>
References: <20200125005537.31860-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 6/6] drm/i915/guc: Stop inheriting from
 execlists_set_default_submission
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

Copy the submit_request function (with a small simpliication) and set
the engine flags independently. No preemption or semaphore support yet
on the GuC side.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 30 +++-----
 drivers/gpu/drm/i915/gt/intel_lrc.h           |  5 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 72 +++++++++++++++----
 3 files changed, 70 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 3178aa38deec..b730d6593da0 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2756,19 +2756,6 @@ static void queue_request(struct intel_engine_cs *engine,
 	set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
 }
 
-static void __submit_queue_imm(struct intel_engine_cs *engine)
-{
-	struct intel_engine_execlists * const execlists = &engine->execlists;
-
-	if (reset_in_progress(execlists))
-		return; /* defer until we restart the engine following reset */
-
-	if (execlists->tasklet.func == execlists_submission_tasklet)
-		__execlists_submission_tasklet(engine);
-	else
-		tasklet_hi_schedule(&execlists->tasklet);
-}
-
 static void submit_queue(struct intel_engine_cs *engine,
 			 const struct i915_request *rq)
 {
@@ -2778,7 +2765,10 @@ static void submit_queue(struct intel_engine_cs *engine,
 		return;
 
 	execlists->queue_priority_hint = rq_prio(rq);
-	__submit_queue_imm(engine);
+
+	/* if reset in progress, defer until we restart the engine */
+	if (!reset_in_progress(execlists))
+		__execlists_submission_tasklet(engine);
 }
 
 static bool ancestor_on_hold(const struct intel_engine_cs *engine,
@@ -3694,9 +3684,9 @@ static void execlists_reset_finish(struct intel_engine_cs *engine)
 		     atomic_read(&execlists->tasklet.count));
 }
 
-static int gen8_emit_bb_start_noarb(struct i915_request *rq,
-				    u64 offset, u32 len,
-				    const unsigned int flags)
+int gen8_emit_bb_start_noarb(struct i915_request *rq,
+			     u64 offset, u32 len,
+			     const unsigned int flags)
 {
 	u32 *cs;
 
@@ -4180,7 +4170,7 @@ static void execlists_park(struct intel_engine_cs *engine)
 	cancel_timer(&engine->execlists.preempt);
 }
 
-void intel_execlists_set_default_submission(struct intel_engine_cs *engine)
+static void execlists_set_default_submission(struct intel_engine_cs *engine)
 {
 	engine->submit_request = execlists_submit_request;
 	engine->schedule = i915_schedule;
@@ -4242,7 +4232,7 @@ logical_ring_default_vfuncs(struct intel_engine_cs *engine)
 	if (INTEL_GEN(engine->i915) >= 12)
 		engine->emit_fini_breadcrumb = gen12_emit_fini_breadcrumb;
 
-	engine->set_default_submission = intel_execlists_set_default_submission;
+	engine->set_default_submission = execlists_set_default_submission;
 
 	if (INTEL_GEN(engine->i915) < 11) {
 		engine->irq_enable = gen8_logical_ring_enable_irq;
@@ -5266,7 +5256,7 @@ bool
 intel_engine_in_execlists_submission_mode(const struct intel_engine_cs *engine)
 {
 	return engine->set_default_submission ==
-	       intel_execlists_set_default_submission;
+	       execlists_set_default_submission;
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.h b/drivers/gpu/drm/i915/gt/intel_lrc.h
index 17cabe4b9898..441cea5150d2 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.h
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.h
@@ -86,6 +86,9 @@ void intel_logical_ring_cleanup(struct intel_engine_cs *engine);
 
 int intel_execlists_submission_setup(struct intel_engine_cs *engine);
 
+int gen8_emit_bb_start_noarb(struct i915_request *rq,
+			     u64 offset, u32 len,
+			     const unsigned int flags);
 int gen8_emit_flush(struct i915_request *request, u32 mode);
 int gen11_emit_flush_render(struct i915_request *request, u32 mode);
 int gen12_emit_flush_render(struct i915_request *request, u32 mode);
@@ -101,8 +104,6 @@ int gen12_emit_flush_render(struct i915_request *request, u32 mode);
 #define LRC_PPHWSP_SCRATCH		0x34
 #define LRC_PPHWSP_SCRATCH_ADDR		(LRC_PPHWSP_SCRATCH * sizeof(u32))
 
-void intel_execlists_set_default_submission(struct intel_engine_cs *engine);
-
 int intel_lr_context_objects_create(struct intel_context *ce,
 				    struct intel_engine_cs *engine);
 void intel_lr_context_objects_destroy(struct intel_context *ce);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 03e0a8180f77..8e958dc9d624 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -441,6 +441,54 @@ static const struct intel_context_ops guc_context_ops = {
 	.destroy = guc_submission_context_destroy,
 };
 
+static inline bool
+reset_in_progress(const struct intel_engine_execlists *execlists)
+{
+	return unlikely(!__tasklet_is_enabled(&execlists->tasklet));
+}
+
+static void queue_request(struct intel_engine_cs *engine,
+			  struct i915_request *rq)
+{
+	GEM_BUG_ON(!list_empty(&rq->sched.link));
+	list_add_tail(&rq->sched.link,
+		      i915_sched_lookup_priolist(engine, rq_prio(rq)));
+	set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
+}
+
+static void submit_queue(struct intel_engine_cs *engine,
+			 const struct i915_request *rq)
+{
+	struct intel_engine_execlists *execlists = &engine->execlists;
+
+	if (rq_prio(rq) <= execlists->queue_priority_hint)
+		return;
+
+	execlists->queue_priority_hint = rq_prio(rq);
+
+	/* if reset in progress, defer until we restart the engine */
+	if (!reset_in_progress(execlists))
+		tasklet_hi_schedule(&execlists->tasklet);
+}
+
+static void guc_submit_request(struct i915_request *request)
+{
+	struct intel_engine_cs *engine = request->engine;
+	unsigned long flags;
+
+	/* Will be called from irq-context when using foreign fences. */
+	spin_lock_irqsave(&engine->active.lock, flags);
+
+	queue_request(engine, request);
+
+	GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
+	GEM_BUG_ON(list_empty(&request->sched.link));
+
+	submit_queue(engine, request);
+
+	spin_unlock_irqrestore(&engine->active.lock, flags);
+}
+
 static void guc_submission_tasklet(unsigned long data)
 {
 	struct intel_engine_cs * const engine = (struct intel_engine_cs *)data;
@@ -834,22 +882,10 @@ static void guc_interrupts_release(struct intel_gt *gt)
 
 static void guc_set_default_submission(struct intel_engine_cs *engine)
 {
-	/*
-	 * We inherit a bunch of functions from execlists that we'd like
-	 * to keep using:
-	 *
-	 *    engine->submit_request = execlists_submit_request;
-	 *    engine->cancel_requests = execlists_cancel_requests;
-	 *    engine->schedule = execlists_schedule;
-	 *
-	 * But we need to override the actual submission backend in order
-	 * to talk to the GuC.
-	 */
-	intel_execlists_set_default_submission(engine);
-
+	engine->submit_request = guc_submit_request;
+	engine->schedule = i915_schedule;
 	engine->execlists.tasklet.func = guc_submission_tasklet;
 
-	/* do not use execlists park/unpark */
 	engine->park = engine->unpark = NULL;
 
 	engine->reset.prepare = guc_reset_prepare;
@@ -857,7 +893,13 @@ static void guc_set_default_submission(struct intel_engine_cs *engine)
 	engine->reset.cancel = guc_reset_cancel;
 	engine->reset.finish = guc_reset_finish;
 
-	engine->flags &= ~I915_ENGINE_SUPPORTS_STATS;
+	if (INTEL_GEN(engine->i915) >= 12)
+		engine->flags |= I915_ENGINE_HAS_RELATIVE_MMIO;
+
+	/* no preempt support yet, so always use the noarb variant of bb_start */
+	GEM_BUG_ON(intel_engine_has_preemption(engine));
+	engine->emit_bb_start = gen8_emit_bb_start_noarb;
+
 	engine->flags |= I915_ENGINE_NEEDS_BREADCRUMB_TASKLET;
 }
 
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
