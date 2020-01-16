Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF6D713F428
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 19:48:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF4126EE8D;
	Thu, 16 Jan 2020 18:48:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E87DF6EE89
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 18:47:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19906426-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 18:47:56 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jan 2020 18:47:54 +0000
Message-Id: <20200116184754.2860848-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200116184754.2860848-1-chris@chris-wilson.co.uk>
References: <20200116184754.2860848-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] drm/i915/execlists: Offline error capture
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

Currently, we skip error capture upon forced preemption. We apply forced
preemption when there is a higher priority request that should be
running but is being blocked, and we skip inline error capture so that
the preemption request is not further delayed by a user controlled
capture -- extending the denial of service.

However, preemption reset is also used for heartbeats and regular GPU
hangs. By skipping the error capture, we remove the ability to debug GPU
hangs.

In order to capture the error without delaying the preemption request
further, we can do an out-of-line capture by removing the guilty request
from the execution queue and scheduling a worker to dump that request.
When removing a request, we need to remove the entire context and all
descendants from the execution queue, so that they do not jump past.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/738
Fixes: 3a7a92aba8fb ("drm/i915/execlists: Force preemption")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 122 +++++++++++++++++++++++++++-
 1 file changed, 120 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 43375c44c85a..2d6b41e66b16 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2393,7 +2393,6 @@ static void __execlists_hold(struct i915_request *rq)
 	} while (rq);
 }
 
-__maybe_unused
 static void execlists_hold(struct intel_engine_cs *engine,
 			   struct i915_request *rq)
 {
@@ -2473,7 +2472,6 @@ static void __execlists_unhold(struct i915_request *rq)
 	} while (rq);
 }
 
-__maybe_unused
 static void execlists_unhold(struct intel_engine_cs *engine,
 			     struct i915_request *rq)
 {
@@ -2493,6 +2491,123 @@ static void execlists_unhold(struct intel_engine_cs *engine,
 	spin_unlock_irq(&engine->active.lock);
 }
 
+struct execlists_capture {
+	struct work_struct work;
+	struct i915_request *rq;
+	struct i915_gpu_coredump *error;
+};
+
+static void execlists_capture_work(struct work_struct *work)
+{
+	struct execlists_capture *cap = container_of(work, typeof(*cap), work);
+	const gfp_t gfp = GFP_KERNEL | __GFP_RETRY_MAYFAIL | __GFP_NOWARN;
+	struct intel_engine_cs *engine = cap->rq->engine;
+	struct intel_gt_coredump *gt = cap->error->gt;
+	struct intel_engine_capture_vma *vma;
+
+	/* Compress all the objects attached to the request, slow! */
+	vma = intel_engine_coredump_add_request(gt->engine, cap->rq, gfp);
+	if (vma) {
+		struct i915_vma_compress *compress =
+			i915_vma_capture_prepare(gt);
+
+		intel_engine_coredump_add_vma(gt->engine, vma, compress);
+		i915_vma_capture_finish(gt, compress);
+	}
+
+	gt->simulated = gt->engine->simulated;
+	cap->error->simulated = gt->simulated;
+
+	/* Publish the error state, and announce it to the world */
+	i915_error_state_store(cap->error);
+	i915_gpu_coredump_put(cap->error);
+
+	/* Return this request and all that depend upon it for signaling */
+	execlists_unhold(engine, cap->rq);
+
+	kfree(cap);
+}
+
+static struct execlists_capture *capture_regs(struct intel_engine_cs *engine)
+{
+	const gfp_t gfp = GFP_ATOMIC | __GFP_NOWARN;
+	struct execlists_capture *cap;
+
+	cap = kmalloc(sizeof(*cap), gfp);
+	if (!cap)
+		return NULL;
+
+	cap->error = i915_gpu_coredump_alloc(engine->i915, gfp);
+	if (!cap->error)
+		goto err_cap;
+
+	cap->error->gt = intel_gt_coredump_alloc(engine->gt, gfp);
+	if (!cap->error->gt)
+		goto err_gpu;
+
+	cap->error->gt->engine = intel_engine_coredump_alloc(engine, gfp);
+	if (!cap->error->gt->engine)
+		goto err_gt;
+
+	return cap;
+
+err_gt:
+	kfree(cap->error->gt);
+err_gpu:
+	kfree(cap->error);
+err_cap:
+	kfree(cap);
+	return NULL;
+}
+
+static void execlists_capture(struct intel_engine_cs *engine)
+{
+	struct execlists_capture *cap;
+
+	if (!IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR))
+		return;
+
+	/*
+	 * We need to _quickly_ capture the engine state before we reset.
+	 * We are inside an atomic section (softirq) here and we are delaying
+	 * the forced preemption event.
+	 */
+	cap = capture_regs(engine);
+	if (!cap)
+		return;
+
+	cap->rq = execlists_active(&engine->execlists);
+	GEM_BUG_ON(!cap->rq);
+
+	cap->rq = active_request(cap->rq->context->timeline, cap->rq);
+	GEM_BUG_ON(!cap->rq);
+
+	/*
+	 * Remove the request from the execlists queue, and take ownership
+	 * of the request. We pass it to our worker who will _slowly_ compress
+	 * all the pages the _user_ requested for debugging their batch, after
+	 * which we return it to the queue for signaling.
+	 *
+	 * By removing them from the execlists queue, we also remove the
+	 * requests from being processed by __unwind_incomplete_requests()
+	 * during the intel_engine_reset(), and so they will *not* be replayed
+	 * afterwards.
+	 *
+	 * Note that because we have not yet reset the engine at this point,
+	 * it is possible for the request that we have identified as being
+	 * guilty, did in fact complete and we will then hit an arbitration
+	 * point allowing the outstanding preemption to succeed. The likelihood
+	 * of that is very low (as capturing of the engine registers should be
+	 * fast enough to run inside an irq-off atomic section!), so we will
+	 * simply hold that request accountable for being non-preemptible
+	 * long enough to force the reset.
+	 */
+	execlists_hold(engine, cap->rq);
+
+	INIT_WORK(&cap->work, execlists_capture_work);
+	schedule_work(&cap->work);
+}
+
 static noinline void preempt_reset(struct intel_engine_cs *engine)
 {
 	const unsigned int bit = I915_RESET_ENGINE + engine->id;
@@ -2510,6 +2625,9 @@ static noinline void preempt_reset(struct intel_engine_cs *engine)
 	ENGINE_TRACE(engine, "preempt timeout %lu+%ums\n",
 		     READ_ONCE(engine->props.preempt_timeout_ms),
 		     jiffies_to_msecs(jiffies - engine->execlists.preempt.expires));
+
+	ring_set_paused(engine, 1); /* Freeze the current request in place */
+	execlists_capture(engine);
 	intel_engine_reset(engine, "preemption time out");
 
 	tasklet_enable(&engine->execlists.tasklet);
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
