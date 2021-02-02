Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA9630C331
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 16:15:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 470FC6E935;
	Tue,  2 Feb 2021 15:14:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE64E6E921
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 15:14:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23773719-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 02 Feb 2021 15:14:45 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Feb 2021 15:14:41 +0000
Message-Id: <20210202151445.20002-10-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210202151445.20002-1-chris@chris-wilson.co.uk>
References: <20210202151445.20002-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 10/14] drm/i915: Extract request submission from
 execlists
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

In the process of preparing to reuse the request submission logic for
other backends, lift it out of the execlists backend. It already
operates on the common structs, so just a matter of moving and renaming.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 .../drm/i915/gt/intel_execlists_submission.c  | 55 +------------
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 30 +------
 drivers/gpu/drm/i915/i915_scheduler.c         | 82 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_scheduler.h         |  2 +
 4 files changed, 86 insertions(+), 83 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 6b8984c64b60..62e83acc7221 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2452,59 +2452,6 @@ static void execlists_preempt(struct timer_list *timer)
 	execlists_kick(timer, preempt);
 }
 
-static void queue_request(struct intel_engine_cs *engine,
-			  struct i915_request *rq)
-{
-	GEM_BUG_ON(!list_empty(&rq->sched.link));
-	list_add_tail(&rq->sched.link,
-		      i915_sched_lookup_priolist(engine, rq_prio(rq)));
-	set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
-}
-
-static bool submit_queue(struct intel_engine_cs *engine,
-			 const struct i915_request *rq)
-{
-	struct intel_engine_execlists *execlists = &engine->execlists;
-
-	if (rq_prio(rq) <= execlists->queue_priority_hint)
-		return false;
-
-	execlists->queue_priority_hint = rq_prio(rq);
-	return true;
-}
-
-static bool ancestor_on_hold(const struct intel_engine_cs *engine,
-			     const struct i915_request *rq)
-{
-	GEM_BUG_ON(i915_request_on_hold(rq));
-	return !list_empty(&engine->active.hold) && hold_request(rq);
-}
-
-static void execlists_submit_request(struct i915_request *request)
-{
-	struct intel_engine_cs *engine = request->engine;
-	unsigned long flags;
-
-	/* Will be called from irq-context when using foreign fences. */
-	spin_lock_irqsave(&engine->active.lock, flags);
-
-	if (unlikely(ancestor_on_hold(engine, request))) {
-		RQ_TRACE(request, "ancestor on hold\n");
-		list_add_tail(&request->sched.link, &engine->active.hold);
-		i915_request_set_hold(request);
-	} else {
-		queue_request(engine, request);
-
-		GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
-		GEM_BUG_ON(list_empty(&request->sched.link));
-
-		if (submit_queue(engine, request))
-			__execlists_kick(&engine->execlists);
-	}
-
-	spin_unlock_irqrestore(&engine->active.lock, flags);
-}
-
 static int execlists_context_pre_pin(struct intel_context *ce,
 				     struct i915_gem_ww_ctx *ww,
 				     void **vaddr)
@@ -3124,7 +3071,7 @@ static bool can_preempt(struct intel_engine_cs *engine)
 
 static void execlists_set_default_submission(struct intel_engine_cs *engine)
 {
-	engine->submit_request = execlists_submit_request;
+	engine->submit_request = i915_request_enqueue;
 	engine->execlists.tasklet.callback = execlists_submission_tasklet;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 7db2c9decf21..f5b8f89d30bc 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -519,34 +519,6 @@ static int guc_request_alloc(struct i915_request *request)
 	return 0;
 }
 
-static inline void queue_request(struct intel_engine_cs *engine,
-				 struct i915_request *rq,
-				 int prio)
-{
-	GEM_BUG_ON(!list_empty(&rq->sched.link));
-	list_add_tail(&rq->sched.link,
-		      i915_sched_lookup_priolist(engine, prio));
-	set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
-}
-
-static void guc_submit_request(struct i915_request *rq)
-{
-	struct intel_engine_cs *engine = rq->engine;
-	unsigned long flags;
-
-	/* Will be called from irq-context when using foreign fences. */
-	spin_lock_irqsave(&engine->active.lock, flags);
-
-	queue_request(engine, rq, rq_prio(rq));
-
-	GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
-	GEM_BUG_ON(list_empty(&rq->sched.link));
-
-	tasklet_hi_schedule(&engine->execlists.tasklet);
-
-	spin_unlock_irqrestore(&engine->active.lock, flags);
-}
-
 static void sanitize_hwsp(struct intel_engine_cs *engine)
 {
 	struct intel_timeline *tl;
@@ -615,7 +587,7 @@ static int guc_resume(struct intel_engine_cs *engine)
 
 static void guc_set_default_submission(struct intel_engine_cs *engine)
 {
-	engine->submit_request = guc_submit_request;
+	engine->submit_request = i915_request_enqueue;
 }
 
 static void guc_release(struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 9e88417bf451..a56252d3546a 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -460,6 +460,88 @@ void i915_request_set_priority(struct i915_request *rq, int prio)
 	spin_unlock_irqrestore(&engine->active.lock, flags);
 }
 
+static void queue_request(struct intel_engine_cs *engine,
+			  struct i915_request *rq)
+{
+	GEM_BUG_ON(!list_empty(&rq->sched.link));
+	list_add_tail(&rq->sched.link,
+		      i915_sched_lookup_priolist(engine, rq_prio(rq)));
+	set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
+}
+
+static bool submit_queue(struct intel_engine_cs *engine,
+			 const struct i915_request *rq)
+{
+	struct intel_engine_execlists *execlists = &engine->execlists;
+
+	if (rq_prio(rq) <= execlists->queue_priority_hint)
+		return false;
+
+	execlists->queue_priority_hint = rq_prio(rq);
+	return true;
+}
+
+static bool hold_request(const struct i915_request *rq)
+{
+	struct i915_dependency *p;
+	bool result = false;
+
+	/*
+	 * If one of our ancestors is on hold, we must also be put on hold,
+	 * otherwise we will bypass it and execute before it.
+	 */
+	rcu_read_lock();
+	for_each_signaler(p, rq) {
+		const struct i915_request *s =
+			container_of(p->signaler, typeof(*s), sched);
+
+		if (s->engine != rq->engine)
+			continue;
+
+		result = i915_request_on_hold(s);
+		if (result)
+			break;
+	}
+	rcu_read_unlock();
+
+	return result;
+}
+
+static bool ancestor_on_hold(const struct intel_engine_cs *engine,
+			     const struct i915_request *rq)
+{
+	GEM_BUG_ON(i915_request_on_hold(rq));
+	return unlikely(!list_empty(&engine->active.hold)) && hold_request(rq);
+}
+
+void i915_request_enqueue(struct i915_request *rq)
+{
+	struct intel_engine_cs *engine = rq->engine;
+	unsigned long flags;
+	bool kick = false;
+
+	/* Will be called from irq-context when using foreign fences. */
+	spin_lock_irqsave(&engine->active.lock, flags);
+	GEM_BUG_ON(test_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags));
+
+	if (unlikely(ancestor_on_hold(engine, rq))) {
+		RQ_TRACE(rq, "ancestor on hold\n");
+		list_add_tail(&rq->sched.link, &engine->active.hold);
+		i915_request_set_hold(rq);
+	} else {
+		queue_request(engine, rq);
+
+		GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
+
+		kick = submit_queue(engine, rq);
+	}
+
+	GEM_BUG_ON(list_empty(&rq->sched.link));
+	spin_unlock_irqrestore(&engine->active.lock, flags);
+	if (kick)
+		tasklet_hi_schedule(&engine->execlists.tasklet);
+}
+
 void i915_sched_node_init(struct i915_sched_node *node)
 {
 	spin_lock_init(&node->lock);
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index 2870fa3e089e..89d998f226e0 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -40,6 +40,8 @@ void i915_sched_init_ipi(struct i915_sched_ipi *ipi);
 
 void i915_request_set_priority(struct i915_request *request, int prio);
 
+void i915_request_enqueue(struct i915_request *request);
+
 struct list_head *
 i915_sched_lookup_priolist(struct intel_engine_cs *engine, int prio);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
