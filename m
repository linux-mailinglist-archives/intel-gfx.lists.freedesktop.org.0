Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90AAC1D0A27
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 09:48:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C59AE6E980;
	Wed, 13 May 2020 07:48:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C20A6E98A
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 07:48:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21182451-1500050 
 for multiple; Wed, 13 May 2020 08:48:15 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 May 2020 08:47:56 +0100
Message-Id: <20200513074809.18194-11-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200513074809.18194-1-chris@chris-wilson.co.uk>
References: <20200513074809.18194-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/24] drm/i915: Move saturated workload
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
tracking back to the context and virtual engines can now utilise the
faster inter-engine synchronisation.

References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_context.c       |  1 +
 drivers/gpu/drm/i915/gt/intel_context_types.h |  2 ++
 drivers/gpu/drm/i915/gt/intel_engine_pm.c     |  2 --
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |  2 --
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 15 ---------------
 drivers/gpu/drm/i915/i915_request.c           |  4 ++--
 6 files changed, 5 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index e4aece20bc80..762a251d553b 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -268,6 +268,7 @@ static int __intel_context_active(struct i915_active *active)
 	if (err)
 		goto err_timeline;
 
+	ce->saturated = 0;
 	return 0;
 
 err_timeline:
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 4954b0df4864..aed26d93c2ca 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -78,6 +78,8 @@ struct intel_context {
 	} lrc;
 	u32 tag; /* cookie passed to HW to track this context on submission */
 
+	intel_engine_mask_t saturated; /* submitting semaphores too late? */
+
 	/* Time on GPU as tracked by the hw. */
 	struct {
 		struct ewma_runtime avg;
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index d0a1078ef632..6d7fdba5adef 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -229,8 +229,6 @@ static int __engine_park(struct intel_wakeref *wf)
 	struct intel_engine_cs *engine =
 		container_of(wf, typeof(*engine), wakeref);
 
-	engine->saturated = 0;
-
 	/*
 	 * If one and only one request is completed between pm events,
 	 * we know that we are inside the kernel context and it is
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index e20b39eefd79..0f7e94af3034 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -332,8 +332,6 @@ struct intel_engine_cs {
 
 	struct intel_context *kernel_context; /* pinned */
 
-	intel_engine_mask_t saturated; /* submitting semaphores too late? */
-
 	struct {
 		struct delayed_work work;
 		struct i915_request *systole;
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index c7d7438b5d55..d3c937e02eb2 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -5623,21 +5623,6 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
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
index 9738dab5a9f6..dae0b2c44951 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -469,7 +469,7 @@ bool __i915_request_submit(struct i915_request *request)
 	 */
 	if (request->sched.semaphores &&
 	    i915_sw_fence_signaled(&request->semaphore))
-		engine->saturated |= request->sched.semaphores;
+		request->context->saturated |= request->sched.semaphores;
 
 	engine->emit_fini_breadcrumb(request,
 				     request->ring->vaddr + request->postfix);
@@ -921,7 +921,7 @@ already_busywaiting(struct i915_request *rq)
 	 *
 	 * See the are-we-too-late? check in __i915_request_submit().
 	 */
-	return rq->sched.semaphores | READ_ONCE(rq->engine->saturated);
+	return rq->sched.semaphores | READ_ONCE(rq->context->saturated);
 }
 
 static int
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
