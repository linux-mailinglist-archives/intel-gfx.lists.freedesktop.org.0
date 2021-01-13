Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C89922F418B
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 03:14:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6566289B96;
	Wed, 13 Jan 2021 02:14:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 712E089B96
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 02:14:03 +0000 (UTC)
IronPort-SDR: iorEbz4FeAa9/pPJ9nOcQT8yKwTx6UNsma46CiZVuZvfUubJgVxNK7KGnHrCWezM1Z7MexFqFX
 CJTaEE2DXYjA==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="165815294"
X-IronPort-AV: E=Sophos;i="5.79,343,1602572400"; d="scan'208";a="165815294"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 18:14:03 -0800
IronPort-SDR: 30i1swN2cCi14f30B3EAiBE7t0bg0nGtzkIyq2vuO1CAQkHHCmiJUz54ZhFljw5rouNNh49h97
 g/I5Sl+mZNsg==
X-IronPort-AV: E=Sophos;i="5.79,343,1602572400"; d="scan'208";a="464739745"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 18:14:03 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Jan 2021 18:12:36 -0800
Message-Id: <20210113021236.8164-5-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210113021236.8164-1-daniele.ceraolospurio@intel.com>
References: <20210113021236.8164-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 4/4] drm/i915/guc: stop calling
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Initialize all required entries from guc_set_default_submission, instead
of calling the execlists function. The previously inherited setup has
been copied over from the execlist code and simplified by removing the
execlists submission-specific parts.

v2: move setting of relative_mmio flag to engine_setup_common (Chris)

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Cc: John Harrison <john.c.harrison@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk> #v1
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  3 +
 .../drm/i915/gt/intel_execlists_submission.c  |  9 +--
 .../drm/i915/gt/intel_execlists_submission.h  |  2 -
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 60 +++++++++++++------
 4 files changed, 48 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 6b4483b72c3f..f531207971d1 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -727,6 +727,9 @@ static int engine_setup_common(struct intel_engine_cs *engine)
 	intel_engine_init_whitelist(engine);
 	intel_engine_init_ctx_wa(engine);
 
+	if (INTEL_GEN(engine->i915) >= 12)
+		engine->flags |= I915_ENGINE_HAS_RELATIVE_MMIO;
+
 	return 0;
 
 err_status:
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 10e9940cf3f5..d7d5a58990bb 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -3100,7 +3100,7 @@ static bool can_preempt(struct intel_engine_cs *engine)
 	return engine->class != RENDER_CLASS;
 }
 
-void intel_execlists_set_default_submission(struct intel_engine_cs *engine)
+static void execlists_set_default_submission(struct intel_engine_cs *engine)
 {
 	engine->submit_request = execlists_submit_request;
 	engine->schedule = i915_schedule;
@@ -3124,9 +3124,6 @@ void intel_execlists_set_default_submission(struct intel_engine_cs *engine)
 		}
 	}
 
-	if (INTEL_GEN(engine->i915) >= 12)
-		engine->flags |= I915_ENGINE_HAS_RELATIVE_MMIO;
-
 	if (intel_engine_has_preemption(engine))
 		engine->emit_bb_start = gen8_emit_bb_start;
 	else
@@ -3168,7 +3165,7 @@ logical_ring_default_vfuncs(struct intel_engine_cs *engine)
 		engine->emit_fini_breadcrumb = gen12_emit_fini_breadcrumb_xcs;
 		engine->emit_flush = gen12_emit_flush_xcs;
 	}
-	engine->set_default_submission = intel_execlists_set_default_submission;
+	engine->set_default_submission = execlists_set_default_submission;
 
 	if (INTEL_GEN(engine->i915) < 11) {
 		engine->irq_enable = gen8_logical_ring_enable_irq;
@@ -3924,7 +3921,7 @@ bool
 intel_engine_in_execlists_submission_mode(const struct intel_engine_cs *engine)
 {
 	return engine->set_default_submission ==
-	       intel_execlists_set_default_submission;
+	       execlists_set_default_submission;
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.h b/drivers/gpu/drm/i915/gt/intel_execlists_submission.h
index 0c675bbff351..a8fd7adefd82 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.h
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.h
@@ -22,8 +22,6 @@ enum {
 
 int intel_execlists_submission_setup(struct intel_engine_cs *engine);
 
-void intel_execlists_set_default_submission(struct intel_engine_cs *engine);
-
 void intel_execlists_show_requests(struct intel_engine_cs *engine,
 				   struct drm_printer *m,
 				   void (*show_request)(struct drm_printer *m,
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 29d58e1c9694..0c2216b1ce46 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -10,7 +10,6 @@
 #include "gt/intel_breadcrumbs.h"
 #include "gt/intel_context.h"
 #include "gt/intel_engine_pm.h"
-#include "gt/intel_execlists_submission.h" /* XXX */
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_lrc.h"
@@ -513,6 +512,34 @@ static int guc_request_alloc(struct i915_request *request)
 	return 0;
 }
 
+static inline void queue_request(struct intel_engine_cs *engine,
+				 struct i915_request *rq,
+				 int prio)
+{
+	GEM_BUG_ON(!list_empty(&rq->sched.link));
+	list_add_tail(&rq->sched.link,
+		      i915_sched_lookup_priolist(engine, prio));
+	set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
+}
+
+static void guc_submit_request(struct i915_request *rq)
+{
+	struct intel_engine_cs *engine = rq->engine;
+	unsigned long flags;
+
+	/* Will be called from irq-context when using foreign fences. */
+	spin_lock_irqsave(&engine->active.lock, flags);
+
+	queue_request(engine, rq, rq_prio(rq));
+
+	GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
+	GEM_BUG_ON(list_empty(&rq->sched.link));
+
+	tasklet_hi_schedule(&engine->execlists.tasklet);
+
+	spin_unlock_irqrestore(&engine->active.lock, flags);
+}
+
 static void sanitize_hwsp(struct intel_engine_cs *engine)
 {
 	struct intel_timeline *tl;
@@ -581,31 +608,28 @@ static int guc_resume(struct intel_engine_cs *engine)
 
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
-	engine->park = engine->unpark = NULL;
-
 	engine->reset.prepare = guc_reset_prepare;
 	engine->reset.rewind = guc_reset_rewind;
 	engine->reset.cancel = guc_reset_cancel;
 	engine->reset.finish = guc_reset_finish;
 
-	engine->flags &= ~I915_ENGINE_SUPPORTS_STATS;
 	engine->flags |= I915_ENGINE_NEEDS_BREADCRUMB_TASKLET;
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
 
 	/*
 	 * For the breadcrumb irq to work we need the interrupts to stay
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
