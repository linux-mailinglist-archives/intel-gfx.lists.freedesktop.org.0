Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DD231204B
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Feb 2021 23:31:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B4AE89D86;
	Sat,  6 Feb 2021 22:31:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CD8889CA1
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 Feb 2021 22:31:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from build.alporthouse.com (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23807899-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sat, 06 Feb 2021 22:31:48 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  6 Feb 2021 22:31:45 +0000
Message-Id: <20210206223148.16762-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/4] drm/i915: Move submit_request to
 i915_sched_engine
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

Claim the submit_request vfunc as the entry point into the scheduler
backend for ready requests.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_types.h         |  8 --------
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 11 ++++++-----
 drivers/gpu/drm/i915/gt/intel_reset.c                |  2 +-
 drivers/gpu/drm/i915/gt/intel_ring_submission.c      |  4 ++--
 drivers/gpu/drm/i915/gt/mock_engine.c                |  4 +++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c    |  2 +-
 drivers/gpu/drm/i915/i915_request.c                  |  2 +-
 drivers/gpu/drm/i915/i915_scheduler.c                |  2 ++
 drivers/gpu/drm/i915/i915_scheduler_types.h          |  9 +++++++++
 drivers/gpu/drm/i915/selftests/i915_request.c        |  3 +--
 10 files changed, 26 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index d5f917462f0e..7efa6290cc3e 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -417,14 +417,6 @@ struct intel_engine_cs {
 						 u32 *cs);
 	unsigned int	emit_fini_breadcrumb_dw;
 
-	/* Pass the request to the hardware queue (e.g. directly into
-	 * the legacy ringbuffer or to the end of an execlist).
-	 *
-	 * This is called from an atomic context with irqs disabled; must
-	 * be irq safe.
-	 */
-	void		(*submit_request)(struct i915_request *rq);
-
 	/*
 	 * Called on signaling of a SUBMIT_FENCE, passing along the signaling
 	 * request down to the bonded pairs.
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index f8dca5f2f9b2..02aa3eba4ebb 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -484,7 +484,7 @@ resubmit_virtual_request(struct i915_request *rq, struct virtual_engine *ve)
 
 	clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
 	WRITE_ONCE(rq->engine, &ve->base);
-	ve->base.submit_request(rq);
+	ve->base.sched.submit_request(rq);
 
 	spin_unlock_irq(&se->lock);
 }
@@ -2763,7 +2763,7 @@ static bool can_preempt(struct intel_engine_cs *engine)
 
 static void execlists_set_default_submission(struct intel_engine_cs *engine)
 {
-	engine->submit_request = i915_request_enqueue;
+	engine->sched.submit_request = i915_request_enqueue;
 	engine->sched.tasklet.callback = execlists_submission_tasklet;
 }
 
@@ -3231,7 +3231,7 @@ static void virtual_submit_request(struct i915_request *rq)
 		     rq->fence.context,
 		     rq->fence.seqno);
 
-	GEM_BUG_ON(ve->base.submit_request != virtual_submit_request);
+	GEM_BUG_ON(ve->base.sched.submit_request != virtual_submit_request);
 
 	spin_lock_irqsave(&se->lock, flags);
 
@@ -3345,12 +3345,10 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 	ve->base.cops = &virtual_context_ops;
 	ve->base.request_alloc = execlists_request_alloc;
 
-	ve->base.submit_request = virtual_submit_request;
 	ve->base.bond_execute = virtual_bond_execute;
 
 	INIT_LIST_HEAD(virtual_queue(ve));
 	ve->base.execlists.queue_priority_hint = INT_MIN;
-	tasklet_setup(&ve->base.sched.tasklet, virtual_submission_tasklet);
 
 	intel_context_init(&ve->context, &ve->base);
 
@@ -3431,6 +3429,9 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 			ve->base.mask,
 			ENGINE_VIRTUAL);
 
+	ve->base.sched.submit_request = virtual_submit_request;
+	tasklet_setup(&ve->base.sched.tasklet, virtual_submission_tasklet);
+
 	virtual_engine_initial_hint(ve);
 	return &ve->context;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index bf5b9f303a68..990cb4adbb9a 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -820,7 +820,7 @@ static void __intel_gt_set_wedged(struct intel_gt *gt)
 		__intel_gt_reset(gt, ALL_ENGINES);
 
 	for_each_engine(engine, gt, id)
-		engine->submit_request = nop_submit_request;
+		engine->sched.submit_request = nop_submit_request;
 
 	/*
 	 * Make sure no request can slip through without getting completed by
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 4a7d3420cc9d..cf3bbcbe7520 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -966,12 +966,12 @@ static void gen6_bsd_submit_request(struct i915_request *request)
 
 static void i9xx_set_default_submission(struct intel_engine_cs *engine)
 {
-	engine->submit_request = i9xx_submit_request;
+	engine->sched.submit_request = i9xx_submit_request;
 }
 
 static void gen6_bsd_set_default_submission(struct intel_engine_cs *engine)
 {
-	engine->submit_request = gen6_bsd_submit_request;
+	engine->sched.submit_request = gen6_bsd_submit_request;
 }
 
 static void ring_release(struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
index 2081deed94b7..5662f7c2f719 100644
--- a/drivers/gpu/drm/i915/gt/mock_engine.c
+++ b/drivers/gpu/drm/i915/gt/mock_engine.c
@@ -301,7 +301,8 @@ struct intel_engine_cs *mock_engine(struct drm_i915_private *i915,
 	engine->base.request_alloc = mock_request_alloc;
 	engine->base.emit_flush = mock_emit_flush;
 	engine->base.emit_fini_breadcrumb = mock_emit_breadcrumb;
-	engine->base.submit_request = mock_submit_request;
+
+	engine->base.sched.submit_request = mock_submit_request;
 
 	engine->base.reset.prepare = mock_reset_prepare;
 	engine->base.reset.rewind = mock_reset_rewind;
@@ -332,6 +333,7 @@ int mock_engine_init(struct intel_engine_cs *engine)
 			engine->name,
 			engine->mask,
 			ENGINE_MOCK);
+	engine->sched.submit_request = mock_submit_request;
 
 	intel_engine_init_execlists(engine);
 	intel_engine_init__pm(engine);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index cf99715e194d..c66c867ada23 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -558,7 +558,7 @@ static int guc_resume(struct intel_engine_cs *engine)
 
 static void guc_set_default_submission(struct intel_engine_cs *engine)
 {
-	engine->submit_request = i915_request_enqueue;
+	engine->sched.submit_request = i915_request_enqueue;
 }
 
 static void guc_release(struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 1b52dcaa023d..c03d3cedf497 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -700,7 +700,7 @@ submit_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
 		 * proceeding.
 		 */
 		rcu_read_lock();
-		request->engine->submit_request(request);
+		i915_request_get_scheduler(request)->submit_request(request);
 		rcu_read_unlock();
 		break;
 
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index ba308e937109..e8db7e614ff5 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -132,6 +132,8 @@ void i915_sched_init(struct i915_sched *se,
 	se->queue = RB_ROOT_CACHED;
 
 	init_ipi(&se->ipi);
+
+	se->submit_request = i915_request_enqueue;
 }
 
 void i915_sched_park(struct i915_sched *se)
diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
index 3e2e47298bc6..2d746af501d6 100644
--- a/drivers/gpu/drm/i915/i915_scheduler_types.h
+++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
@@ -28,6 +28,15 @@ struct i915_sched {
 
 	unsigned long mask; /* available scheduling channels */
 
+	/*
+	 * Pass the request to the submission backend (e.g. directly into
+	 * the legacy ringbuffer, or to the end of an execlist, or to the GuC).
+	 *
+	 * This is called from an atomic context with irqs disabled; must
+	 * be irq safe.
+	 */
+	void (*submit_request)(struct i915_request *rq);
+
 	struct list_head requests; /* active request, on HW */
 	struct list_head hold; /* ready requests, but on hold */
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index 39c619bccb74..8035ea7565ed 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -242,10 +242,9 @@ static int igt_request_rewind(void *arg)
 	i915_request_get(vip);
 	i915_request_add(vip);
 	rcu_read_lock();
-	request->engine->submit_request(request);
+	i915_request_get_scheduler(request)->submit_request(request);
 	rcu_read_unlock();
 
-
 	if (i915_request_wait(vip, 0, HZ) == -ETIME) {
 		pr_err("timed out waiting for high priority request\n");
 		goto err;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
