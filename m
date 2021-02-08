Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C33312F8C
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 11:53:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76F696E86B;
	Mon,  8 Feb 2021 10:53:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F25306E874
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 10:52:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from build.alporthouse.com (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23809223-1500050 
 for multiple; Mon, 08 Feb 2021 10:52:44 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Feb 2021 10:52:21 +0000
Message-Id: <20210208105236.28498-16-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210208105236.28498-1-chris@chris-wilson.co.uk>
References: <20210208105236.28498-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 16/31] drm/i915/gt: Delay taking irqoff for
 execlists submission
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

Before we take the irqsafe spinlock to dequeue requests and submit them
to HW, first do the check whether we need to take any action (i.e.
whether the HW is ready for some work, or if we need to preempt the
currently executing context) without taking the lock. We will then
likely skip taking the spinlock, and so reduce contention.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../drm/i915/gt/intel_execlists_submission.c  | 88 ++++++++-----------
 1 file changed, 39 insertions(+), 49 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 083204baedf9..b7d28d09c9c1 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -1016,24 +1016,6 @@ static void virtual_xfer_context(struct virtual_engine *ve,
 	}
 }
 
-static void defer_active(struct intel_engine_cs *engine)
-{
-	struct i915_request *rq;
-
-	rq = __i915_sched_rewind_requests(engine);
-	if (!rq)
-		return;
-
-	/*
-	 * We want to move the interrupted request to the back of
-	 * the round-robin list (i.e. its priority level), but
-	 * in doing so, we must then move all requests that were in
-	 * flight and were waiting for the interrupted request to
-	 * be run after it again.
-	 */
-	__i915_sched_defer_request(engine, rq);
-}
-
 static bool
 timeslice_yield(const struct intel_engine_execlists *el,
 		const struct i915_request *rq)
@@ -1315,8 +1297,6 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 * and context switches) submission.
 	 */
 
-	spin_lock(&se->lock);
-
 	/*
 	 * If the queue is higher priority than the last
 	 * request in the currently active context, submit afresh.
@@ -1339,24 +1319,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 				     rq_deadline(last),
 				     rq_prio(last));
 			record_preemption(execlists);
-
-			/*
-			 * Don't let the RING_HEAD advance past the breadcrumb
-			 * as we unwind (and until we resubmit) so that we do
-			 * not accidentally tell it to go backwards.
-			 */
-			ring_set_paused(engine, 1);
-
-			/*
-			 * Note that we have not stopped the GPU at this point,
-			 * so we are unwinding the incomplete requests as they
-			 * remain inflight and so by the time we do complete
-			 * the preemption, some of the unwound requests may
-			 * complete!
-			 */
-			__i915_sched_rewind_requests(engine);
-
-			last = NULL;
+			last = (void *)1;
 		} else if (timeslice_expired(engine, last)) {
 			ENGINE_TRACE(engine,
 				     "expired:%s last=%llx:%llu, deadline=%llu, now=%llu, yield?=%s\n",
@@ -1383,8 +1346,6 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			 * same context again, grant it a full timeslice.
 			 */
 			cancel_timer(&execlists->timer);
-			ring_set_paused(engine, 1);
-			defer_active(engine);
 
 			/*
 			 * Unlike for preemption, if we rewind and continue
@@ -1399,7 +1360,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			 * normal save/restore will preserve state and allow
 			 * us to later continue executing the same request.
 			 */
-			last = NULL;
+			last = (void *)3;
 		} else {
 			/*
 			 * Otherwise if we already have a request pending
@@ -1415,12 +1376,46 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 				 * Even if ELSP[1] is occupied and not worthy
 				 * of timeslices, our queue might be.
 				 */
-				spin_unlock(&se->lock);
 				return;
 			}
 		}
 	}
 
+	local_irq_disable(); /* irq remains off until after ELSP write */
+	spin_lock(&se->lock);
+
+	if ((unsigned long)last & 1) {
+		bool defer = (unsigned long)last & 2;
+
+		/*
+		 * Don't let the RING_HEAD advance past the breadcrumb
+		 * as we unwind (and until we resubmit) so that we do
+		 * not accidentally tell it to go backwards.
+		 */
+		ring_set_paused(engine, (unsigned long)last);
+
+		/*
+		 * Note that we have not stopped the GPU at this point,
+		 * so we are unwinding the incomplete requests as they
+		 * remain inflight and so by the time we do complete
+		 * the preemption, some of the unwound requests may
+		 * complete!
+		 */
+		last = __i915_sched_rewind_requests(engine);
+
+		/*
+		 * We want to move the interrupted request to the back of
+		 * the round-robin list (i.e. its priority level), but
+		 * in doing so, we must then move all requests that were in
+		 * flight and were waiting for the interrupted request to
+		 * be run after it again.
+		 */
+		if (last && defer)
+			__i915_sched_defer_request(engine, last);
+
+		last = NULL;
+	}
+
 	if (!RB_EMPTY_ROOT(&execlists->virtual.rb_root))
 		virtual_requeue(engine, last);
 
@@ -1529,13 +1524,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			i915_request_put(*port);
 		*execlists->pending = NULL;
 	}
-}
 
-static void execlists_dequeue_irq(struct intel_engine_cs *engine)
-{
-	local_irq_disable(); /* Suspend interrupts across request submission */
-	execlists_dequeue(engine);
-	local_irq_enable(); /* flush irq_work (e.g. breadcrumb enabling) */
+	local_irq_enable();
 }
 
 static void clear_ports(struct i915_request **ports, int count)
@@ -2187,7 +2177,7 @@ static void execlists_submission_tasklet(struct tasklet_struct *t)
 		execlists_reset(engine);
 
 	if (!engine->execlists.pending[0]) {
-		execlists_dequeue_irq(engine);
+		execlists_dequeue(engine);
 		start_timeslice(engine);
 	}
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
