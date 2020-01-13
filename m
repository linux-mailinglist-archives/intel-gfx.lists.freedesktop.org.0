Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E01138F79
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 11:45:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F20C89F97;
	Mon, 13 Jan 2020 10:45:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CE3A89FA0
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2020 10:45:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19859679-1500050 
 for multiple; Mon, 13 Jan 2020 10:44:45 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Jan 2020 10:44:42 +0000
Message-Id: <20200113104442.1753973-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc2
In-Reply-To: <20200113104442.1753973-1-chris@chris-wilson.co.uk>
References: <20200113104442.1753973-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/execlists: Offline error capture
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
from the execution queue and scheduling a work to dump that request.
When removing a request, we need to remove the entire context and all
descendants from the execution queue, so that they do not jump past.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/738
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 99 ++++++++++++++++++++++++++++-
 1 file changed, 97 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index e0347e05e577..ad474b4bc2f3 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2380,7 +2380,6 @@ static void __execlists_hold(struct i915_request *rq)
 	}
 }
 
-__maybe_unused
 static void execlists_hold(struct intel_engine_cs *engine,
 			   struct i915_request *rq)
 {
@@ -2413,7 +2412,12 @@ static void __execlists_unhold(struct i915_request *rq)
 	}
 }
 
-__maybe_unused
+struct execlists_capture {
+	struct work_struct work;
+	struct i915_request *rq;
+	struct i915_gpu_coredump *error;
+};
+
 static void execlists_unhold(struct intel_engine_cs *engine,
 			     struct i915_request *rq)
 {
@@ -2426,6 +2430,96 @@ static void execlists_unhold(struct intel_engine_cs *engine,
 	spin_unlock_irq(&engine->active.lock);
 }
 
+static void execlists_capture_work(struct work_struct *work)
+{
+	struct execlists_capture *cap = container_of(work, typeof(*cap), work);
+	const gfp_t gfp = GFP_KERNEL | __GFP_RETRY_MAYFAIL | __GFP_NOWARN;
+	struct intel_engine_cs *engine = cap->rq->engine;
+	struct intel_gt_coredump *gt = cap->error->gt;
+	struct intel_engine_capture_vma *vma;
+
+	vma = intel_engine_coredump_add_request(gt->engine, cap->rq, gfp);
+	if (vma) {
+		struct i915_vma_compress *comp = i915_vma_capture_prepare(gt);
+
+		intel_engine_coredump_add_vma(gt->engine, vma, comp);
+		i915_vma_capture_finish(gt, comp);
+	}
+
+	gt->simulated = gt->engine->simulated;
+	cap->error->simulated = gt->simulated;
+
+	i915_error_state_store(cap->error);
+	i915_gpu_coredump_put(cap->error);
+
+	execlists_unhold(engine, cap->rq);
+
+	kfree(cap);
+}
+
+static struct i915_gpu_coredump *capture_regs(struct intel_engine_cs *engine)
+{
+	const gfp_t gfp = GFP_ATOMIC | __GFP_NOWARN;
+	struct i915_gpu_coredump *e;
+
+	e = i915_gpu_coredump_alloc(engine->i915, gfp);
+	if (!e)
+		return NULL;
+
+	e->gt = intel_gt_coredump_alloc(engine->gt, gfp);
+	if (!e->gt)
+		goto err;
+
+	e->gt->engine = intel_engine_coredump_alloc(engine, gfp);
+	if (!e->gt->engine)
+		goto err_gt;
+
+	return e;
+
+err_gt:
+	kfree(e->gt);
+err:
+	kfree(e);
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
+	cap = kmalloc(sizeof(*cap), GFP_ATOMIC);
+	if (!cap)
+		return;
+
+	cap->rq = execlists_active(&engine->execlists);
+	GEM_BUG_ON(!cap->rq);
+
+	/*
+	 * We need to _quickly_ capture the engine state before we reset.
+	 * We are inside an atomic section (softirq) here and we are delaying
+	 * the forced preemption event.
+	 */
+	cap->error = capture_regs(engine);
+	if (!cap->error) {
+		kfree(cap);
+		return;
+	}
+
+	/*
+	 * Remove the request from the execlists queue, and take ownership
+	 * of the request. We pass it to our worker who will _slowly_ compress
+	 * all the pages the _user_ requested for debugging their batch, after
+	 * which we return it to the queue for signaling.
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
@@ -2443,6 +2537,7 @@ static noinline void preempt_reset(struct intel_engine_cs *engine)
 	ENGINE_TRACE(engine, "preempt timeout %lu+%ums\n",
 		     READ_ONCE(engine->props.preempt_timeout_ms),
 		     jiffies_to_msecs(jiffies - engine->execlists.preempt.expires));
+	execlists_capture(engine);
 	intel_engine_reset(engine, "preemption time out");
 
 	tasklet_enable(&engine->execlists.tasklet);
-- 
2.25.0.rc2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
