Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D38E62E1BB7
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Dec 2020 12:13:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14BA66E949;
	Wed, 23 Dec 2020 11:13:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7A5D6E904
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Dec 2020 11:12:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23412207-1500050 
 for multiple; Wed, 23 Dec 2020 11:11:33 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Dec 2020 11:10:55 +0000
Message-Id: <20201223111126.3338-31-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201223111126.3338-1-chris@chris-wilson.co.uk>
References: <20201223111126.3338-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 31/62] drm/i915: Extract request submission from
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In the process of preparing to reuse the request submission logic for
other backends, lift it out of the execlists backend. It already
operates on the common structs, so just a matter of moving and renaming.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../drm/i915/gt/intel_execlists_submission.c  | 55 +------------
 drivers/gpu/drm/i915/i915_scheduler.c         | 82 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_scheduler.h         |  2 +
 3 files changed, 85 insertions(+), 54 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index bb462159688b..1ac940fb8846 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2345,59 +2345,6 @@ static void execlists_preempt(struct timer_list *timer)
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
@@ -3025,7 +2972,7 @@ static void execlists_park(struct intel_engine_cs *engine)
 
 void intel_execlists_set_default_submission(struct intel_engine_cs *engine)
 {
-	engine->submit_request = execlists_submit_request;
+	engine->submit_request = i915_request_enqueue;
 	engine->execlists.tasklet.func = execlists_submission_tasklet;
 
 	engine->reset.prepare = execlists_reset_prepare;
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index c3605da21dec..38dc9f8715bd 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -446,6 +446,88 @@ void i915_request_set_priority(struct i915_request *rq, int prio)
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
index 5be7f90e7896..c4c086d56f81 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -39,6 +39,8 @@ void i915_sched_init_ipi(struct i915_sched_ipi *ipi);
 
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
