Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E2E3025D9
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 15:02:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4573A89FD1;
	Mon, 25 Jan 2021 14:01:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43E0889D89
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 14:01:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23693648-1500050 
 for multiple; Mon, 25 Jan 2021 14:01:40 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jan 2021 14:01:21 +0000
Message-Id: <20210125140136.10494-26-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210125140136.10494-1-chris@chris-wilson.co.uk>
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 26/41] drm/i915: Move saturated workload
 detection back to the context
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

When we introduced the saturated workload detection to tell us to back
off from semaphore usage [semaphores have a noticeable impact on
contended bus cycles with the CPU for some heavy workloads], we first
introduced it as a per-context tracker. This allows individual contexts
to try and optimise their own usage, but we found that with the local
tracking and the no-semaphore boosting, the first context to disable
semaphores got a massive priority boost and so would starve the rest and
all new contexts (as they started with semaphores enabled and lower
priority). Hence we moved the saturated workload detection to the
engine, and a consequence had to disable semaphores on virtual engines.

Now that we do not have semaphore priority boosting, and try to fairly
schedule irrespective of semaphore usage, we can move the tracking back
to the context and virtual engines can now utilise the faster inter-engine
synchronisation. If we see that any context fairs to use the semaphore,
because the system is oversubscribed and was busy doing something else
instead of spinning on the semaphore, we disable further usage of
semaphores with that context until it idles again. This should restrict
the semaphores to lightly utilised system where the latency between
requests is more noticeable, and curtail the bus-contention from checking
for signaled semaphores.

References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_context.c           |  3 +++
 drivers/gpu/drm/i915/gt/intel_context_types.h     |  2 ++
 drivers/gpu/drm/i915/gt/intel_engine_pm.c         |  2 --
 drivers/gpu/drm/i915/gt/intel_engine_types.h      |  2 --
 .../gpu/drm/i915/gt/intel_execlists_submission.c  | 15 ---------------
 drivers/gpu/drm/i915/i915_request.c               |  6 +++---
 6 files changed, 8 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index daf537d1e415..57b6bde2b736 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -344,6 +344,9 @@ static int __intel_context_active(struct i915_active *active)
 {
 	struct intel_context *ce = container_of(active, typeof(*ce), active);
 
+	CE_TRACE(ce, "active\n");
+	ce->saturated = 0;
+
 	intel_context_get(ce);
 
 	/* everything should already be activated by intel_context_pre_pin() */
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 0ea18c9e2aca..d1a35c3055a7 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -109,6 +109,8 @@ struct intel_context {
 	} lrc;
 	u32 tag; /* cookie passed to HW to track this context on submission */
 
+	intel_engine_mask_t saturated; /* submitting semaphores too late? */
+
 	/** stats: Context GPU engine busyness tracking. */
 	struct intel_context_stats {
 		u64 active;
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index 2427d9e01be9..ac18bbd24450 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -253,8 +253,6 @@ static int __engine_park(struct intel_wakeref *wf)
 	struct intel_engine_cs *engine =
 		container_of(wf, typeof(*engine), wakeref);
 
-	engine->saturated = 0;
-
 	/*
 	 * If one and only one request is completed between pm events,
 	 * we know that we are inside the kernel context and it is
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index b5bef848a2d5..06a2582dc32f 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -303,8 +303,6 @@ struct intel_engine_cs {
 
 	struct intel_context *kernel_context; /* pinned */
 
-	intel_engine_mask_t saturated; /* submitting semaphores too late? */
-
 	struct {
 		struct delayed_work work;
 		struct i915_request *systole;
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index ecbc0538e155..99bdab2dc254 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -3305,21 +3305,6 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 	ve->base.instance = I915_ENGINE_CLASS_INVALID_VIRTUAL;
 	ve->base.uabi_instance = I915_ENGINE_CLASS_INVALID_VIRTUAL;
 
-	/*
-	 * The decision on whether to submit a request using semaphores
-	 * depends on the saturated state of the engine. We only compute
-	 * this during HW submission of the request, and we need for this
-	 * state to be globally applied to all requests being submitted
-	 * to this engine. Virtual engines encompass more than one physical
-	 * engine and so we cannot accurately tell in advance if one of those
-	 * engines is already saturated and so cannot afford to use a semaphore
-	 * and be pessimized in priority for doing so -- if we are the only
-	 * context using semaphores after all other clients have stopped, we
-	 * will be starved on the saturated system. Such a global switch for
-	 * semaphores is less than ideal, but alas is the current compromise.
-	 */
-	ve->base.saturated = ALL_ENGINES;
-
 	snprintf(ve->base.name, sizeof(ve->base.name), "virtual");
 
 	i915_sched_init_engine(&ve->base.active, ENGINE_VIRTUAL);
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 0254c190f690..9e622b5733fd 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -580,7 +580,7 @@ bool __i915_request_submit(struct i915_request *request)
 	 */
 	if (request->sched.semaphores &&
 	    i915_sw_fence_signaled(&request->semaphore))
-		engine->saturated |= request->sched.semaphores;
+		request->context->saturated |= request->sched.semaphores;
 
 	engine->emit_fini_breadcrumb(request,
 				     request->ring->vaddr + request->postfix);
@@ -1041,7 +1041,7 @@ already_busywaiting(struct i915_request *rq)
 	 *
 	 * See the are-we-too-late? check in __i915_request_submit().
 	 */
-	return rq->sched.semaphores | READ_ONCE(rq->engine->saturated);
+	return rq->sched.semaphores | READ_ONCE(rq->context->saturated);
 }
 
 static int
@@ -1135,7 +1135,7 @@ emit_semaphore_wait(struct i915_request *to,
 	if (__emit_semaphore_wait(to, from, from->fence.seqno))
 		goto await_fence;
 
-	to->sched.semaphores |= mask;
+	to->sched.semaphores |= mask & ~to->engine->mask;
 	wait = &to->semaphore;
 
 await_fence:
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
