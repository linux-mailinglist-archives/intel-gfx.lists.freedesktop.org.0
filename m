Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3F6312F88
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 11:53:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 371ED6E869;
	Mon,  8 Feb 2021 10:52:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E2EF6E1A3
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 10:52:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from build.alporthouse.com (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23809236-1500050 
 for multiple; Mon, 08 Feb 2021 10:52:46 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Feb 2021 10:52:34 +0000
Message-Id: <20210208105236.28498-29-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210208105236.28498-1-chris@chris-wilson.co.uk>
References: <20210208105236.28498-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 29/31] drm/i915/gt: Enable ring scheduling for
 gen5-7
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

Switch over from FIFO global submission to the priority-sorted
topographical scheduler. At the cost of more busy work on the CPU to
keep the GPU supplied with the next packet of requests, this allows us
to reorder requests around submission stalls and so allow low latency
under load while maintaining fairness between clients.

The downside is that we enable interrupts on all requests (unlike with
execlists where we have an interrupt for context switches). This means
that instead of receiving an interrupt for when we are waitng for
completion, we are processing them all the time, with noticeable
overhead of cpu time absorbed by the interrupt handler. The effect is
most pronounced on CPU-throughput limited renderers like uxa, where
performance can be degraded by 20% in the worst case. Nevertheless, this
is a pathological example of an obsolete userspace driver. (There are
also cases where uxa performs better by 20%, which is an interesting
quirk...) The glxgears-not-a-benchmark (cpu throughtput bound) is one
such example of a performance hit, only affecting uxa.

The expectation is that allowing request reordering will allow much
smoother UX that greatly compensates for reduced throughput under high
submission load (but low GPU load).

This also enables the timer based RPS for better powersaving, with the
exception of Valleyview whose PCU doesn't take kindly to our
interference.

References: 0f46832fab77 ("drm/i915: Mask USER interrupts on gen6 (until required)")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 2 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c             | 5 ++++-
 drivers/gpu/drm/i915/gt/intel_gt_types.h              | 1 +
 drivers/gpu/drm/i915/gt/intel_rps.c                   | 6 ++----
 4 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index df949320f2b5..1ecd362b131a 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -94,7 +94,7 @@ static int live_nop_switch(void *arg)
 			rq = i915_request_get(this);
 			i915_request_add(this);
 		}
-		if (i915_request_wait(rq, 0, HZ / 5) < 0) {
+		if (i915_request_wait(rq, 0, HZ) < 0) {
 			pr_err("Failed to populated %d contexts\n", nctx);
 			intel_gt_set_wedged(&i915->gt);
 			i915_request_put(rq);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 7d34bf03670b..9c731338837d 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -882,8 +882,11 @@ int intel_engines_init(struct intel_gt *gt)
 	} else if (HAS_EXECLISTS(gt->i915)) {
 		gt->submission_method = INTEL_SUBMISSION_ELSP;
 		setup = intel_execlists_submission_setup;
-	} else {
+	} else if (INTEL_GEN(gt->i915) >= 5) {
 		gt->submission_method = INTEL_SUBMISSION_RING;
+		setup = intel_ring_scheduler_setup;
+	} else {
+		gt->submission_method = INTEL_SUBMISSION_LEGACY;
 		setup = intel_ring_submission_setup;
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 626af37c7790..125b40f62644 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -30,6 +30,7 @@ struct intel_engine_cs;
 struct intel_uncore;
 
 enum intel_submission_method {
+	INTEL_SUBMISSION_LEGACY,
 	INTEL_SUBMISSION_RING,
 	INTEL_SUBMISSION_ELSP,
 	INTEL_SUBMISSION_GUC,
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 97cab1b99871..80044ece2b12 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1081,9 +1081,7 @@ static bool gen6_rps_enable(struct intel_rps *rps)
 	intel_uncore_write_fw(uncore, GEN6_RP_DOWN_TIMEOUT, 50000);
 	intel_uncore_write_fw(uncore, GEN6_RP_IDLE_HYSTERSIS, 10);
 
-	rps->pm_events = (GEN6_PM_RP_UP_THRESHOLD |
-			  GEN6_PM_RP_DOWN_THRESHOLD |
-			  GEN6_PM_RP_DOWN_TIMEOUT);
+	rps->pm_events = GEN6_PM_RP_UP_THRESHOLD | GEN6_PM_RP_DOWN_THRESHOLD;
 
 	return rps_reset(rps);
 }
@@ -1391,7 +1389,7 @@ void intel_rps_enable(struct intel_rps *rps)
 	GEM_BUG_ON(rps->efficient_freq < rps->min_freq);
 	GEM_BUG_ON(rps->efficient_freq > rps->max_freq);
 
-	if (has_busy_stats(rps))
+	if (has_busy_stats(rps) && !IS_VALLEYVIEW(i915))
 		intel_rps_set_timer(rps);
 	else if (INTEL_GEN(i915) >= 6)
 		intel_rps_set_interrupts(rps);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
