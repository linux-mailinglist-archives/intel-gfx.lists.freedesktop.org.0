Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 242DD312F87
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 11:53:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEB976E1A3;
	Mon,  8 Feb 2021 10:52:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 462AA6E86B
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 10:52:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from build.alporthouse.com (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23809224-1500050 
 for multiple; Mon, 08 Feb 2021 10:52:44 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Feb 2021 10:52:22 +0000
Message-Id: <20210208105236.28498-17-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210208105236.28498-1-chris@chris-wilson.co.uk>
References: <20210208105236.28498-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 17/31] drm/i915/gt: Convert the legacy ring
 submission to use the scheduling interface
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

Adapt the old legacy ring submission to use a passthrough tasklet so
that we can plug it into the scheduler.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |   1 +
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 167 +++++++++++-------
 2 files changed, 107 insertions(+), 61 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 416bb07c4ab7..9f14631b8132 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -431,6 +431,7 @@ struct intel_engine_cs {
 #define I915_ENGINE_IS_VIRTUAL       BIT(4)
 #define I915_ENGINE_HAS_RELATIVE_MMIO BIT(5)
 #define I915_ENGINE_REQUIRES_CMD_PARSER BIT(6)
+#define I915_ENGINE_NEEDS_WA_TAIL_WRITE BIT(7)
 	unsigned int flags;
 
 	/*
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 282089d64789..47f05e7a4e8c 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -308,6 +308,8 @@ static void reset_prepare(struct intel_engine_cs *engine)
 	 * FIXME: Wa for more modern gens needs to be validated
 	 */
 	ENGINE_TRACE(engine, "\n");
+
+	i915_sched_disable_tasklet(intel_engine_get_scheduler(engine));
 	intel_engine_stop_cs(engine);
 
 	/* G45 ring initialization often fails to reset head to zero */
@@ -394,6 +396,7 @@ static void reset_rewind(struct intel_engine_cs *engine, bool stalled)
 
 static void reset_finish(struct intel_engine_cs *engine)
 {
+	i915_sched_enable_tasklet(intel_engine_get_scheduler(engine));
 }
 
 static void reset_cancel(struct intel_engine_cs *engine)
@@ -402,22 +405,12 @@ static void reset_cancel(struct intel_engine_cs *engine)
 	unsigned long flags;
 
 	spin_lock_irqsave(&se->lock, flags);
-
 	__i915_sched_cancel_queue(se);
-
 	spin_unlock_irqrestore(&se->lock, flags);
+
 	intel_engine_signal_breadcrumbs(engine);
 }
 
-static void i9xx_submit_request(struct i915_request *request)
-{
-	i915_request_submit(request);
-	wmb(); /* paranoid flush writes out of the WCB before mmio */
-
-	ENGINE_WRITE(request->engine, RING_TAIL,
-		     intel_ring_set_tail(request->ring, request->tail));
-}
-
 static void __ring_context_fini(struct intel_context *ce)
 {
 	i915_vma_put(ce->state);
@@ -929,52 +922,9 @@ static int ring_request_alloc(struct i915_request *request)
 	return 0;
 }
 
-static void gen6_bsd_submit_request(struct i915_request *request)
+static void set_default_submission(struct intel_engine_cs *engine)
 {
-	struct intel_uncore *uncore = request->engine->uncore;
-
-	intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
-
-       /* Every tail move must follow the sequence below */
-
-	/* Disable notification that the ring is IDLE. The GT
-	 * will then assume that it is busy and bring it out of rc6.
-	 */
-	intel_uncore_write_fw(uncore, GEN6_BSD_SLEEP_PSMI_CONTROL,
-			      _MASKED_BIT_ENABLE(GEN6_BSD_SLEEP_MSG_DISABLE));
-
-	/* Clear the context id. Here be magic! */
-	intel_uncore_write64_fw(uncore, GEN6_BSD_RNCID, 0x0);
-
-	/* Wait for the ring not to be idle, i.e. for it to wake up. */
-	if (__intel_wait_for_register_fw(uncore,
-					 GEN6_BSD_SLEEP_PSMI_CONTROL,
-					 GEN6_BSD_SLEEP_INDICATOR,
-					 0,
-					 1000, 0, NULL))
-		drm_err(&uncore->i915->drm,
-			"timed out waiting for the BSD ring to wake up\n");
-
-	/* Now that the ring is fully powered up, update the tail */
-	i9xx_submit_request(request);
-
-	/* Let the ring send IDLE messages to the GT again,
-	 * and so let it sleep to conserve power when idle.
-	 */
-	intel_uncore_write_fw(uncore, GEN6_BSD_SLEEP_PSMI_CONTROL,
-			      _MASKED_BIT_DISABLE(GEN6_BSD_SLEEP_MSG_DISABLE));
-
-	intel_uncore_forcewake_put(uncore, FORCEWAKE_ALL);
-}
-
-static void i9xx_set_default_submission(struct intel_engine_cs *engine)
-{
-	engine->sched.submit_request = i9xx_submit_request;
-}
-
-static void gen6_bsd_set_default_submission(struct intel_engine_cs *engine)
-{
-	engine->sched.submit_request = gen6_bsd_submit_request;
+	engine->sched.submit_request = i915_request_enqueue;
 }
 
 static void ring_release(struct intel_engine_cs *engine)
@@ -1053,8 +1003,6 @@ static void setup_common(struct intel_engine_cs *engine)
 	if (IS_GEN(i915, 5))
 		engine->emit_fini_breadcrumb = gen5_emit_breadcrumb;
 
-	engine->set_default_submission = i9xx_set_default_submission;
-
 	if (INTEL_GEN(i915) >= 6)
 		engine->emit_bb_start = gen6_emit_bb_start;
 	else if (INTEL_GEN(i915) >= 4)
@@ -1063,6 +1011,8 @@ static void setup_common(struct intel_engine_cs *engine)
 		engine->emit_bb_start = i830_emit_bb_start;
 	else
 		engine->emit_bb_start = gen3_emit_bb_start;
+
+	engine->set_default_submission = set_default_submission;
 }
 
 static void setup_rcs(struct intel_engine_cs *engine)
@@ -1099,9 +1049,8 @@ static void setup_vcs(struct intel_engine_cs *engine)
 	struct drm_i915_private *i915 = engine->i915;
 
 	if (INTEL_GEN(i915) >= 6) {
-		/* gen6 bsd needs a special wa for tail updates */
-		if (IS_GEN(i915, 6))
-			engine->set_default_submission = gen6_bsd_set_default_submission;
+		if (IS_GEN(engine->i915, 6))
+			engine->flags |= I915_ENGINE_NEEDS_WA_TAIL_WRITE;
 		engine->emit_flush = gen6_emit_flush_vcs;
 		engine->irq_enable_mask = GT_BSD_USER_INTERRUPT;
 
@@ -1203,6 +1152,98 @@ static int gen7_ctx_switch_bb_init(struct intel_engine_cs *engine)
 	return err;
 }
 
+static void __write_tail(struct intel_engine_cs *engine,
+			 struct i915_request *rq)
+{
+	ENGINE_WRITE(engine, RING_TAIL,
+		     intel_ring_set_tail(rq->ring, rq->tail));
+}
+
+static void wa_write_tail(struct intel_engine_cs *engine,
+			  struct i915_request *rq)
+{
+	struct intel_uncore *uncore = engine->uncore;
+
+	intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
+
+       /* Every tail move must follow the sequence below */
+
+	/* Disable notification that the ring is IDLE. The GT
+	 * will then assume that it is busy and bring it out of rc6.
+	 */
+	intel_uncore_write_fw(uncore, GEN6_BSD_SLEEP_PSMI_CONTROL,
+			      _MASKED_BIT_ENABLE(GEN6_BSD_SLEEP_MSG_DISABLE));
+
+	/* Clear the context id. Here be magic! */
+	intel_uncore_write64_fw(uncore, GEN6_BSD_RNCID, 0x0);
+
+	/* Wait for the ring not to be idle, i.e. for it to wake up. */
+	if (__intel_wait_for_register_fw(uncore,
+					 GEN6_BSD_SLEEP_PSMI_CONTROL,
+					 GEN6_BSD_SLEEP_INDICATOR,
+					 0,
+					 1000, 0, NULL))
+		drm_err(&uncore->i915->drm,
+			"timed out waiting for the BSD ring to wake up\n");
+
+	/* Now that the ring is fully powered up, update the tail */
+	__write_tail(engine, rq);
+
+	/* Let the ring send IDLE messages to the GT again,
+	 * and so let it sleep to conserve power when idle.
+	 */
+	intel_uncore_write_fw(uncore, GEN6_BSD_SLEEP_PSMI_CONTROL,
+			      _MASKED_BIT_DISABLE(GEN6_BSD_SLEEP_MSG_DISABLE));
+
+	intel_uncore_forcewake_put(uncore, FORCEWAKE_ALL);
+}
+
+static void write_tail(struct intel_engine_cs *engine,
+		       struct i915_request *rq)
+{
+	wmb(); /* paranoid flush writes out of the WCB before mmio */
+
+	if (engine->flags & I915_ENGINE_NEEDS_WA_TAIL_WRITE)
+		wa_write_tail(engine, rq);
+	else
+		__write_tail(engine, rq);
+}
+
+static void passthrough_tasklet(struct tasklet_struct *t)
+{
+	struct i915_sched *se = from_tasklet(se, t, tasklet);
+	struct intel_engine_cs *engine =
+		container_of(se, typeof(*engine), sched);
+	struct i915_request *last = NULL;
+	struct i915_request *rq, *rn;
+	struct i915_priolist *pl;
+
+	if (i915_sched_is_idle(se))
+		return;
+
+	local_irq_disable();
+
+	spin_lock(&se->lock);
+	i915_sched_dequeue(se, pl, rq, rn) {
+		__i915_request_submit(rq);
+		last = rq;
+	}
+	spin_unlock(&se->lock);
+
+	if (last)
+		write_tail(engine, last);
+
+	local_irq_enable();
+}
+
+static int init_sched(struct intel_engine_cs *engine)
+{
+	tasklet_setup(&engine->sched.tasklet, passthrough_tasklet);
+	i915_sched_select_mode(&engine->sched, I915_SCHED_MODE_NONE);
+
+	return 0;
+}
+
 int intel_ring_submission_setup(struct intel_engine_cs *engine)
 {
 	struct intel_timeline *timeline;
@@ -1229,6 +1270,10 @@ int intel_ring_submission_setup(struct intel_engine_cs *engine)
 		return -ENODEV;
 	}
 
+	err = init_sched(engine);
+	if (err)
+		goto err;
+
 	timeline = intel_timeline_create_from_engine(engine,
 						     I915_GEM_HWS_SEQNO_ADDR);
 	if (IS_ERR(timeline)) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
