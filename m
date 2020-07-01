Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE420210684
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 10:41:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 575246E857;
	Wed,  1 Jul 2020 08:41:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E8DC6E440
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 08:41:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21671954-1500050 
 for multiple; Wed, 01 Jul 2020 09:41:03 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jul 2020 09:40:46 +0100
Message-Id: <20200701084053.6086-26-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200701084053.6086-1-chris@chris-wilson.co.uk>
References: <20200701084053.6086-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 26/33] drm/i915: Move saturated workload
 detection to the GT
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

Now that we do not have semaphore priority boosting, we can move the
tracking to the GT and virtual engines can now utilise the faster
inter-engine synchronisation, while maintaining the global information
to back off on saturation.

References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine_pm.c    |  2 +-
 drivers/gpu/drm/i915/gt/intel_engine_types.h |  2 --
 drivers/gpu/drm/i915/gt/intel_gt_types.h     |  2 ++
 drivers/gpu/drm/i915/gt/intel_lrc.c          | 15 ---------------
 drivers/gpu/drm/i915/i915_request.c          | 13 ++++++++-----
 5 files changed, 11 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index ac9c777a6592..c9b83acaadf4 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -230,7 +230,7 @@ static int __engine_park(struct intel_wakeref *wf)
 	struct intel_engine_cs *engine =
 		container_of(wf, typeof(*engine), wakeref);
 
-	engine->saturated = 0;
+	clear_bit(engine->id, &engine->gt->saturated);
 
 	/*
 	 * If one and only one request is completed between pm events,
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index a3b9da4b3721..53a1ddd43177 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -319,8 +319,6 @@ struct intel_engine_cs {
 
 	struct intel_context *kernel_context; /* pinned */
 
-	intel_engine_mask_t saturated; /* submitting semaphores too late? */
-
 	struct {
 		struct delayed_work work;
 		struct i915_request *systole;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 0cc1d6b185dc..d7e139a2119b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -74,6 +74,8 @@ struct intel_gt {
 	 */
 	intel_wakeref_t awake;
 
+	unsigned long saturated; /* submitting semaphores too late? */
+
 	u32 clock_frequency;
 
 	struct intel_llc llc;
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 1c3afaa8f948..4208ef2d01b2 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -5519,21 +5519,6 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
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
 
 	intel_engine_init_active(&ve->base, ENGINE_VIRTUAL);
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index a80dc5eae577..1ca93a97d20e 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -551,7 +551,7 @@ bool __i915_request_submit(struct i915_request *request)
 	 */
 	if (request->sched.semaphores &&
 	    i915_sw_fence_signaled(&request->semaphore))
-		engine->saturated |= request->sched.semaphores;
+		set_bit(engine->id, &engine->gt->saturated);
 
 	engine->emit_fini_breadcrumb(request,
 				     request->ring->vaddr + request->postfix);
@@ -988,8 +988,7 @@ i915_request_await_start(struct i915_request *rq, struct i915_request *signal)
 	return err;
 }
 
-static intel_engine_mask_t
-already_busywaiting(struct i915_request *rq)
+static bool engine_saturated(struct intel_engine_cs *engine)
 {
 	/*
 	 * Polling a semaphore causes bus traffic, delaying other users of
@@ -1003,7 +1002,7 @@ already_busywaiting(struct i915_request *rq)
 	 *
 	 * See the are-we-too-late? check in __i915_request_submit().
 	 */
-	return rq->sched.semaphores | READ_ONCE(rq->engine->saturated);
+	return engine->mask & READ_ONCE(engine->gt->saturated);
 }
 
 static int
@@ -1084,7 +1083,11 @@ emit_semaphore_wait(struct i915_request *to,
 		goto await_fence;
 
 	/* Just emit the first semaphore we see as request space is limited. */
-	if (already_busywaiting(to) & mask)
+	if (to->sched.semaphores & mask)
+		goto await_fence;
+
+	/* Don't over use semaphores, they may be fast but not free. */
+	if (engine_saturated(to->engine))
 		goto await_fence;
 
 	if (i915_request_await_start(to, from) < 0)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
