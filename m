Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 062DC30D38A
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 07:53:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A48F36E8EE;
	Wed,  3 Feb 2021 06:53:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A91796E947
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Feb 2021 06:53:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23779229-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 03 Feb 2021 06:53:49 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Feb 2021 06:53:48 +0000
Message-Id: <20210203065350.24476-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/3] drm/i915/gt: Move engine setup out of
 set_default_submission
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

Now that we no longer switch back and forth between guc and execlists,
we no longer need to restore the backend's vfunc and can leave them set
after initialisation. The only catch is that we lose the submission on
wedging and still need to reset the submit_request vfunc on unwedging.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 .../drm/i915/gt/intel_execlists_submission.c  | 46 ++++++++---------
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  4 --
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 50 ++++++++-----------
 3 files changed, 44 insertions(+), 56 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index b8bd3d48b345..c98fdeb94dba 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -3069,29 +3069,6 @@ static void execlists_set_default_submission(struct intel_engine_cs *engine)
 	engine->submit_request = execlists_submit_request;
 	engine->schedule = i915_schedule;
 	engine->execlists.tasklet.callback = execlists_submission_tasklet;
-
-	engine->reset.prepare = execlists_reset_prepare;
-	engine->reset.rewind = execlists_reset_rewind;
-	engine->reset.cancel = execlists_reset_cancel;
-	engine->reset.finish = execlists_reset_finish;
-
-	engine->park = execlists_park;
-	engine->unpark = NULL;
-
-	engine->flags |= I915_ENGINE_SUPPORTS_STATS;
-	if (!intel_vgpu_active(engine->i915)) {
-		engine->flags |= I915_ENGINE_HAS_SEMAPHORES;
-		if (can_preempt(engine)) {
-			engine->flags |= I915_ENGINE_HAS_PREEMPTION;
-			if (IS_ACTIVE(CONFIG_DRM_I915_TIMESLICE_DURATION))
-				engine->flags |= I915_ENGINE_HAS_TIMESLICES;
-		}
-	}
-
-	if (intel_engine_has_preemption(engine))
-		engine->emit_bb_start = gen8_emit_bb_start;
-	else
-		engine->emit_bb_start = gen8_emit_bb_start_noarb;
 }
 
 static void execlists_shutdown(struct intel_engine_cs *engine)
@@ -3122,6 +3099,14 @@ logical_ring_default_vfuncs(struct intel_engine_cs *engine)
 	engine->cops = &execlists_context_ops;
 	engine->request_alloc = execlists_request_alloc;
 
+	engine->reset.prepare = execlists_reset_prepare;
+	engine->reset.rewind = execlists_reset_rewind;
+	engine->reset.cancel = execlists_reset_cancel;
+	engine->reset.finish = execlists_reset_finish;
+
+	engine->park = execlists_park;
+	engine->unpark = NULL;
+
 	engine->emit_flush = gen8_emit_flush_xcs;
 	engine->emit_init_breadcrumb = gen8_emit_init_breadcrumb;
 	engine->emit_fini_breadcrumb = gen8_emit_fini_breadcrumb_xcs;
@@ -3142,6 +3127,21 @@ logical_ring_default_vfuncs(struct intel_engine_cs *engine)
 		 * until a more refined solution exists.
 		 */
 	}
+
+	engine->flags |= I915_ENGINE_SUPPORTS_STATS;
+	if (!intel_vgpu_active(engine->i915)) {
+		engine->flags |= I915_ENGINE_HAS_SEMAPHORES;
+		if (can_preempt(engine)) {
+			engine->flags |= I915_ENGINE_HAS_PREEMPTION;
+			if (IS_ACTIVE(CONFIG_DRM_I915_TIMESLICE_DURATION))
+				engine->flags |= I915_ENGINE_HAS_TIMESLICES;
+		}
+	}
+
+	if (intel_engine_has_preemption(engine))
+		engine->emit_bb_start = gen8_emit_bb_start;
+	else
+		engine->emit_bb_start = gen8_emit_bb_start_noarb;
 }
 
 static void logical_ring_default_irqs(struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 9c2c605d7a92..3cb2ce503544 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -969,14 +969,10 @@ static void gen6_bsd_submit_request(struct i915_request *request)
 static void i9xx_set_default_submission(struct intel_engine_cs *engine)
 {
 	engine->submit_request = i9xx_submit_request;
-
-	engine->park = NULL;
-	engine->unpark = NULL;
 }
 
 static void gen6_bsd_set_default_submission(struct intel_engine_cs *engine)
 {
-	i9xx_set_default_submission(engine);
 	engine->submit_request = gen6_bsd_submit_request;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 92688a9b6717..f72faa0b8339 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -608,35 +608,6 @@ static int guc_resume(struct intel_engine_cs *engine)
 static void guc_set_default_submission(struct intel_engine_cs *engine)
 {
 	engine->submit_request = guc_submit_request;
-	engine->schedule = i915_schedule;
-	engine->execlists.tasklet.callback = guc_submission_tasklet;
-
-	engine->reset.prepare = guc_reset_prepare;
-	engine->reset.rewind = guc_reset_rewind;
-	engine->reset.cancel = guc_reset_cancel;
-	engine->reset.finish = guc_reset_finish;
-
-	engine->flags |= I915_ENGINE_NEEDS_BREADCRUMB_TASKLET;
-	engine->flags |= I915_ENGINE_HAS_PREEMPTION;
-
-	/*
-	 * TODO: GuC supports timeslicing and semaphores as well, but they're
-	 * handled by the firmware so some minor tweaks are required before
-	 * enabling.
-	 *
-	 * engine->flags |= I915_ENGINE_HAS_TIMESLICES;
-	 * engine->flags |= I915_ENGINE_HAS_SEMAPHORES;
-	 */
-
-	engine->emit_bb_start = gen8_emit_bb_start;
-
-	/*
-	 * For the breadcrumb irq to work we need the interrupts to stay
-	 * enabled. However, on all platforms on which we'll have support for
-	 * GuC submission we don't allow disabling the interrupts at runtime, so
-	 * we're always safe with the current flow.
-	 */
-	GEM_BUG_ON(engine->irq_enable || engine->irq_disable);
 }
 
 static void guc_release(struct intel_engine_cs *engine)
@@ -658,6 +629,13 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
 	engine->cops = &guc_context_ops;
 	engine->request_alloc = guc_request_alloc;
 
+	engine->schedule = i915_schedule;
+
+	engine->reset.prepare = guc_reset_prepare;
+	engine->reset.rewind = guc_reset_rewind;
+	engine->reset.cancel = guc_reset_cancel;
+	engine->reset.finish = guc_reset_finish;
+
 	engine->emit_flush = gen8_emit_flush_xcs;
 	engine->emit_init_breadcrumb = gen8_emit_init_breadcrumb;
 	engine->emit_fini_breadcrumb = gen8_emit_fini_breadcrumb_xcs;
@@ -666,6 +644,20 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
 		engine->emit_flush = gen12_emit_flush_xcs;
 	}
 	engine->set_default_submission = guc_set_default_submission;
+
+	engine->flags |= I915_ENGINE_NEEDS_BREADCRUMB_TASKLET;
+	engine->flags |= I915_ENGINE_HAS_PREEMPTION;
+
+	/*
+	 * TODO: GuC supports timeslicing and semaphores as well, but they're
+	 * handled by the firmware so some minor tweaks are required before
+	 * enabling.
+	 *
+	 * engine->flags |= I915_ENGINE_HAS_TIMESLICES;
+	 * engine->flags |= I915_ENGINE_HAS_SEMAPHORES;
+	 */
+
+	engine->emit_bb_start = gen8_emit_bb_start;
 }
 
 static void rcs_submission_override(struct intel_engine_cs *engine)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
