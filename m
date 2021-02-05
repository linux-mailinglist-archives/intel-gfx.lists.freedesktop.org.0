Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F9E310C98
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 15:32:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 057136F44D;
	Fri,  5 Feb 2021 14:32:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D66836F44D
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 14:32:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from build.alporthouse.com (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23798900-1500050 
 for multiple; Fri, 05 Feb 2021 14:32:21 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Feb 2021 14:32:20 +0000
Message-Id: <20210205143220.18148-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210205104905.31414-1-chris@chris-wilson.co.uk>
References: <20210205104905.31414-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Ratelimit heartbeat completion
 probing
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

The heartbeat runs through a few phases that we expect to complete
within a certain number of heartbeat intervals. First we must submit the
heartbeat to the queue, and if the queue is occupied it may take a
couple of intervals before the heartbeat preempts the workload and is
submitted to HW. Once running on HW, completion is not instantaneous as
it may have to first reset the current workload before it itself runs
through the empty request and signals completion. As such, we know that
the heartbeat must take at least the preempt reset timeout and before we
have had a chance to reset the engine, we do not want to issue a global
reset ourselves (simply so that we only try to do one reset at a time
and not confuse ourselves by resetting twice and hitting an innocent.)

So by taking into consideration that once running the request must take
a finite amount of time, we can delay the final completion check to
accommodate that and avoid checking too early (before we've had a chance
to handle any engine resets required).

v2: Attach a callback to flush the work immediately upon the heartbeat
completion and insert the delay before the next.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2853
Suggested-by: CQ Tang <cq.tang@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gt/intel_engine_heartbeat.c  | 93 +++++++++++++++++--
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |  1 +
 .../drm/i915/gt/selftest_engine_heartbeat.c   | 65 ++++++-------
 drivers/gpu/drm/i915/gt/selftest_execlists.c  |  5 +-
 4 files changed, 119 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
index 93741a65924a..01d8a04f77b6 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
@@ -20,6 +20,18 @@
  * issue a reset -- in the hope that restores progress.
  */
 
+#define HEARTBEAT_COMPLETION 50u /* milliseconds */
+
+static long completion_timeout(const struct intel_engine_cs *engine)
+{
+	long timeout = HEARTBEAT_COMPLETION;
+
+	if (intel_engine_has_preempt_reset(engine))
+		timeout += READ_ONCE(engine->props.preempt_timeout_ms);
+
+	return msecs_to_jiffies(timeout);
+}
+
 static bool next_heartbeat(struct intel_engine_cs *engine)
 {
 	long delay;
@@ -29,6 +41,26 @@ static bool next_heartbeat(struct intel_engine_cs *engine)
 		return false;
 
 	delay = msecs_to_jiffies_timeout(delay);
+
+	/*
+	 * Once we submit a heartbeat to the HW, we know that it will take
+	 * at least a certain amount of time to complete. On a hanging system
+	 * it will first have to wait for the preempt reset timeout, and
+	 * then it will take some time for the reset to resume with the
+	 * heartbeat and for it to complete. So once we have submitted the
+	 * heartbeat to HW, we can wait a while longer before declaring the
+	 * engine stuck and forcing a reset ourselves. If we do a reset
+	 * and the engine is also doing a reset, it is possible that we
+	 * reset the engine twice, harming an innocent.
+	 *
+	 * Before we have sumitted the heartbeat, we do not want to change
+	 * the interval as we to promote the heartbeat and trigger preemption
+	 * in a deterministic time frame.
+	 */
+	if (engine->heartbeat.systole &&
+	    i915_request_is_active(engine->heartbeat.systole))
+		delay = max(delay, completion_timeout(engine));
+
 	if (delay >= HZ)
 		delay = round_jiffies_up_relative(delay);
 	mod_delayed_work(system_highpri_wq, &engine->heartbeat.work, delay + 1);
@@ -48,12 +80,51 @@ heartbeat_create(struct intel_context *ce, gfp_t gfp)
 	return rq;
 }
 
+static void defibrillator(struct dma_fence *f, struct dma_fence_cb *cb)
+{
+	struct intel_engine_cs *engine =
+		container_of(cb, typeof(*engine), heartbeat.cb);
+
+	if (READ_ONCE(engine->heartbeat.systole))
+		mod_delayed_work(system_highpri_wq, &engine->heartbeat.work, 0);
+}
+
+static void
+untrack_heartbeat(struct intel_engine_cs *engine)
+{
+	struct i915_request *rq;
+
+	rq = fetch_and_zero(&engine->heartbeat.systole);
+	if (!rq)
+		return;
+
+	ENGINE_TRACE(engine, "heartbeat completed: %llx:%lld\n",
+		     rq->fence.context, rq->fence.seqno);
+
+	dma_fence_remove_callback(&rq->fence, &engine->heartbeat.cb);
+	i915_request_put(rq);
+}
+
+static void
+track_heartbeat(struct intel_engine_cs *engine, struct i915_request *rq)
+{
+	ENGINE_TRACE(engine, "heartbeat started: %llx:%lld\n",
+		     rq->fence.context, rq->fence.seqno);
+
+	dma_fence_add_callback(&rq->fence,
+			       &engine->heartbeat.cb,
+			       defibrillator);
+	engine->heartbeat.systole = i915_request_get(rq);
+	if (!next_heartbeat(engine))
+		untrack_heartbeat(engine);
+}
+
 static void idle_pulse(struct intel_engine_cs *engine, struct i915_request *rq)
 {
 	engine->wakeref_serial = READ_ONCE(engine->serial) + 1;
 	i915_request_add_active_barriers(rq);
 	if (!engine->heartbeat.systole && intel_engine_has_heartbeat(engine))
-		engine->heartbeat.systole = i915_request_get(rq);
+		track_heartbeat(engine, rq);
 }
 
 static void heartbeat_commit(struct i915_request *rq,
@@ -91,10 +162,8 @@ static void heartbeat(struct work_struct *wrk)
 	intel_engine_flush_submission(engine);
 
 	rq = engine->heartbeat.systole;
-	if (rq && i915_request_completed(rq)) {
-		i915_request_put(rq);
-		engine->heartbeat.systole = NULL;
-	}
+	if (rq && i915_request_completed(rq))
+		untrack_heartbeat(engine);
 
 	if (!intel_engine_pm_get_if_awake(engine))
 		return;
@@ -151,6 +220,11 @@ static void heartbeat(struct work_struct *wrk)
 		goto out;
 	}
 
+	/* Just completed one heartbeat, wait a tick before the next */
+	if (rq)
+		goto out;
+
+	/* The engine is parking. We can rest until the next user */
 	serial = READ_ONCE(engine->serial);
 	if (engine->wakeref_serial == serial)
 		goto out;
@@ -174,8 +248,9 @@ static void heartbeat(struct work_struct *wrk)
 unlock:
 	mutex_unlock(&ce->timeline->mutex);
 out:
+	intel_engine_flush_submission(engine);
 	if (!engine->i915->params.enable_hangcheck || !next_heartbeat(engine))
-		i915_request_put(fetch_and_zero(&engine->heartbeat.systole));
+		untrack_heartbeat(engine);
 	intel_engine_pm_put(engine);
 }
 
@@ -189,8 +264,10 @@ void intel_engine_unpark_heartbeat(struct intel_engine_cs *engine)
 
 void intel_engine_park_heartbeat(struct intel_engine_cs *engine)
 {
-	if (cancel_delayed_work(&engine->heartbeat.work))
-		i915_request_put(fetch_and_zero(&engine->heartbeat.systole));
+	/* completion may rearm work */
+	while (cancel_delayed_work(&engine->heartbeat.work))
+		;
+	untrack_heartbeat(engine);
 }
 
 void intel_engine_init_heartbeat(struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 7159f9575e65..4956594c8b93 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -347,6 +347,7 @@ struct intel_engine_cs {
 	struct {
 		struct delayed_work work;
 		struct i915_request *systole;
+		struct dma_fence_cb cb;
 		unsigned long blocked;
 	} heartbeat;
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
index b2c369317bf1..812c4a168b01 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
@@ -202,47 +202,44 @@ static int cmp_u32(const void *_a, const void *_b)
 
 static int __live_heartbeat_fast(struct intel_engine_cs *engine)
 {
-	const unsigned int error_threshold = max(20000u, jiffies_to_usecs(6));
-	struct intel_context *ce;
-	struct i915_request *rq;
-	ktime_t t0, t1;
+	const unsigned int error_threshold =
+		max(3 * HEARTBEAT_COMPLETION * 1000, jiffies_to_usecs(6));
+	struct intel_context *ce = engine->kernel_context;
 	u32 times[5];
 	int err;
 	int i;
 
-	ce = intel_context_create(engine);
-	if (IS_ERR(ce))
-		return PTR_ERR(ce);
-
 	intel_engine_pm_get(engine);
 
 	err = intel_engine_set_heartbeat(engine, 1);
 	if (err)
 		goto err_pm;
 
+	flush_delayed_work(&engine->heartbeat.work);
+	while (engine->heartbeat.systole)
+		intel_engine_park_heartbeat(engine);
+
 	for (i = 0; i < ARRAY_SIZE(times); i++) {
-		do {
-			/* Manufacture a tick */
-			intel_engine_park_heartbeat(engine);
-			GEM_BUG_ON(engine->heartbeat.systole);
-			engine->serial++; /*  pretend we are not idle! */
-			intel_engine_unpark_heartbeat(engine);
+		struct i915_sched_attr attr = { .priority = I915_PRIORITY_MIN };
+		struct i915_request *rq;
+		ktime_t t0, t1;
 
-			flush_delayed_work(&engine->heartbeat.work);
-			if (!delayed_work_pending(&engine->heartbeat.work)) {
-				pr_err("%s: heartbeat %d did not start\n",
-				       engine->name, i);
-				err = -EINVAL;
-				goto err_pm;
-			}
+		GEM_BUG_ON(READ_ONCE(engine->heartbeat.systole));
 
-			rcu_read_lock();
-			rq = READ_ONCE(engine->heartbeat.systole);
-			if (rq)
-				rq = i915_request_get_rcu(rq);
-			rcu_read_unlock();
-		} while (!rq);
+		/* Manufacture a tick */
+		mutex_lock(&ce->timeline->mutex);
+		rq = heartbeat_create(ce, GFP_KERNEL);
+		if (!IS_ERR(rq)) {
+			i915_request_get(rq);
+			heartbeat_commit(rq, &attr);
+		}
+		mutex_unlock(&ce->timeline->mutex);
+		if (IS_ERR(rq)) {
+			err = PTR_ERR(rq);
+			goto err_reset;
+		}
 
+		/* Time how long before the heartbeat monitor checks */
 		t0 = ktime_get();
 		while (rq == READ_ONCE(engine->heartbeat.systole))
 			yield(); /* work is on the local cpu! */
@@ -275,10 +272,10 @@ static int __live_heartbeat_fast(struct intel_engine_cs *engine)
 		err = -EINVAL;
 	}
 
+err_reset:
 	reset_heartbeat(engine);
 err_pm:
 	intel_engine_pm_put(engine);
-	intel_context_put(ce);
 	return err;
 }
 
@@ -308,20 +305,16 @@ static int __live_heartbeat_off(struct intel_engine_cs *engine)
 
 	intel_engine_pm_get(engine);
 
+	/* Kick once, so that we change an active heartbeat */
 	engine->serial++;
-	flush_delayed_work(&engine->heartbeat.work);
-	if (!delayed_work_pending(&engine->heartbeat.work)) {
-		pr_err("%s: heartbeat not running\n",
-		       engine->name);
-		err = -EINVAL;
-		goto err_pm;
-	}
+	intel_engine_unpark_heartbeat(engine);
 
 	err = intel_engine_set_heartbeat(engine, 0);
 	if (err)
 		goto err_pm;
 
-	engine->serial++;
+	/* The next heartbeat work should cancel the heartbeat */
+	engine->serial++; /* pretend the engine is still active */
 	flush_delayed_work(&engine->heartbeat.work);
 	if (delayed_work_pending(&engine->heartbeat.work)) {
 		pr_err("%s: heartbeat still running\n",
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index 7bab147e4421..4f7298855278 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -2324,13 +2324,16 @@ static int __cancel_fail(struct live_preempt_cancel *arg)
 	del_timer_sync(&engine->execlists.preempt);
 	intel_engine_flush_submission(engine);
 
+	engine->props.preempt_timeout_ms = 0;
 	cancel_reset_timeout(engine);
 
-	/* after failure, require heartbeats to reset device */
+	/* after failure, require fast heartbeats to reset device */
 	intel_engine_set_heartbeat(engine, 1);
 	err = wait_for_reset(engine, rq, HZ / 2);
 	intel_engine_set_heartbeat(engine,
 				   engine->defaults.heartbeat_interval_ms);
+
+	engine->props.preempt_timeout_ms = engine->defaults.preempt_timeout_ms;
 	if (err) {
 		pr_err("Cancelled inflight0 request did not reset\n");
 		goto out;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
