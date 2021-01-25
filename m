Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 413FD3025DA
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 15:02:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A84E89F5F;
	Mon, 25 Jan 2021 14:02:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DAB989D89
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 14:01:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23693675-1500050 
 for multiple; Mon, 25 Jan 2021 14:01:44 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jan 2021 14:01:35 +0000
Message-Id: <20210125140136.10494-40-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210125140136.10494-1-chris@chris-wilson.co.uk>
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 40/41] drm/i915/gt: Enable ring scheduling for
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
Cc: thomas.hellstrom@intel.com, Chris Wilson <chris@chris-wilson.co.uk>
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
 drivers/gpu/drm/i915/gt/intel_engine_cs.c             | 2 ++
 drivers/gpu/drm/i915/gt/intel_rps.c                   | 6 ++----
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index d3f87dc4eda3..2246b5c308dc 100644
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
index 936820b240dd..99d910f2c172 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -868,6 +868,8 @@ int intel_engines_init(struct intel_gt *gt)
 		setup = intel_guc_submission_setup;
 	else if (HAS_EXECLISTS(gt->i915))
 		setup = intel_execlists_submission_setup;
+	else if (INTEL_GEN(gt->i915) >= 5)
+		setup = intel_ring_scheduler_setup;
 	else
 		setup = intel_ring_submission_setup;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 900c20a6d073..2c78d61e7ea9 100644
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
