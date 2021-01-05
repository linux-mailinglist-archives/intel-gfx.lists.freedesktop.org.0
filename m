Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D59F2EB611
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 00:21:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFAC86E108;
	Tue,  5 Jan 2021 23:21:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21B856E10A
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jan 2021 23:21:21 +0000 (UTC)
IronPort-SDR: iTyNY3KCcA04aMCrbkOPqFZyyw5y2zQr16Vj+weM4v7bvRYh2aIeMEpklXj61amaotnnjA7I5q
 UxVgIVT0UW1w==
X-IronPort-AV: E=McAfee;i="6000,8403,9855"; a="177296731"
X-IronPort-AV: E=Sophos;i="5.78,478,1599548400"; d="scan'208";a="177296731"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2021 15:21:20 -0800
IronPort-SDR: kgt9as/e+bpfcdH9biTTloQ9VllL1NYMK/87+JwGPz/8aeeKG/GJW9RZtx81ZjJLNl1e83Wn8M
 X44bD/QQ+Xcg==
X-IronPort-AV: E=Sophos;i="5.78,478,1599548400"; d="scan'208";a="565617198"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2021 15:21:20 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Jan 2021 15:19:46 -0800
Message-Id: <20210105231947.31235-5-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210105231947.31235-1-daniele.ceraolospurio@intel.com>
References: <20210105231947.31235-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/guc: stop calling
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

Initialize all required entries from guc_set_default_submission, instead
of calling the execlists function. The previously inherited setup has
been copied over from the execlist code and simplified by removing the
execlists submission-specific parts.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Cc: John Harrison <john.c.harrison@intel.com>
---
 .../drm/i915/gt/intel_execlists_submission.c  |  6 +-
 .../drm/i915/gt/intel_execlists_submission.h  |  2 -
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 63 +++++++++++++------
 3 files changed, 48 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index a5b442683c18..3b2821516b93 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -3082,7 +3082,7 @@ static void execlists_park(struct intel_engine_cs *engine)
 	cancel_timer(&engine->execlists.preempt);
 }
 
-void intel_execlists_set_default_submission(struct intel_engine_cs *engine)
+static void execlists_set_default_submission(struct intel_engine_cs *engine)
 {
 	engine->submit_request = execlists_submit_request;
 	engine->schedule = i915_schedule;
@@ -3150,7 +3150,7 @@ logical_ring_default_vfuncs(struct intel_engine_cs *engine)
 		engine->emit_fini_breadcrumb = gen12_emit_fini_breadcrumb_xcs;
 		engine->emit_flush = gen12_emit_flush_xcs;
 	}
-	engine->set_default_submission = intel_execlists_set_default_submission;
+	engine->set_default_submission = execlists_set_default_submission;
 
 	if (INTEL_GEN(engine->i915) < 11) {
 		engine->irq_enable = gen8_logical_ring_enable_irq;
@@ -3915,7 +3915,7 @@ bool
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
index 2faaa14e6e42..3993f1d75e87 100644
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
@@ -600,31 +627,31 @@ static int guc_resume(struct intel_engine_cs *engine)
 
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
+	if (INTEL_GEN(engine->i915) >= 12)
+		engine->flags |= I915_ENGINE_HAS_RELATIVE_MMIO;
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
