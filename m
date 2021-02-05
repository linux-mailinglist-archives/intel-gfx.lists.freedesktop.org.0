Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B9F310222
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 02:17:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 714756EF2E;
	Fri,  5 Feb 2021 01:17:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D82D16EF2E
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 01:17:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from build.alporthouse.com (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23792463-1500050 
 for multiple; Fri, 05 Feb 2021 01:17:43 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Feb 2021 01:17:42 +0000
Message-Id: <20210205011742.2712-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
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

Suggested-by: CQ Tang <cq.tang@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gt/intel_engine_heartbeat.c  | 85 +++++++++++++++++--
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |  1 +
 .../drm/i915/gt/selftest_engine_heartbeat.c   | 30 +++++--
 3 files changed, 99 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
index 93741a65924a..3df10bfafb3b 100644
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
@@ -29,6 +41,28 @@ static bool next_heartbeat(struct intel_engine_cs *engine)
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
+	if (engine->heartbeat.systole) {
+		intel_engine_flush_submission(engine);
+		if (i915_request_is_active(engine->heartbeat.systole))
+			delay = max(delay, completion_timeout(engine));
+	}
+
 	if (delay >= HZ)
 		delay = round_jiffies_up_relative(delay);
 	mod_delayed_work(system_highpri_wq, &engine->heartbeat.work, delay + 1);
@@ -48,12 +82,44 @@ heartbeat_create(struct intel_context *ce, gfp_t gfp)
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
+track_heartbeat(struct intel_engine_cs *engine, struct i915_request *rq)
+{
+	engine->heartbeat.systole = i915_request_get(rq);
+	if (dma_fence_add_callback(&rq->fence,
+				   &engine->heartbeat.cb,
+				   defibrillator))
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
+	dma_fence_remove_callback(&rq->fence, &engine->heartbeat.cb);
+	i915_request_put(rq);
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
@@ -91,10 +157,8 @@ static void heartbeat(struct work_struct *wrk)
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
@@ -151,6 +215,11 @@ static void heartbeat(struct work_struct *wrk)
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
@@ -175,7 +244,7 @@ static void heartbeat(struct work_struct *wrk)
 	mutex_unlock(&ce->timeline->mutex);
 out:
 	if (!engine->i915->params.enable_hangcheck || !next_heartbeat(engine))
-		i915_request_put(fetch_and_zero(&engine->heartbeat.systole));
+		untrack_heartbeat(engine);
 	intel_engine_pm_put(engine);
 }
 
@@ -189,8 +258,8 @@ void intel_engine_unpark_heartbeat(struct intel_engine_cs *engine)
 
 void intel_engine_park_heartbeat(struct intel_engine_cs *engine)
 {
-	if (cancel_delayed_work(&engine->heartbeat.work))
-		i915_request_put(fetch_and_zero(&engine->heartbeat.systole));
+	while (cancel_delayed_work(&engine->heartbeat.work))
+		untrack_heartbeat(engine); /* completion may rearm work */
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
index b2c369317bf1..fbc1ef8aeeb4 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
@@ -202,7 +202,8 @@ static int cmp_u32(const void *_a, const void *_b)
 
 static int __live_heartbeat_fast(struct intel_engine_cs *engine)
 {
-	const unsigned int error_threshold = max(20000u, jiffies_to_usecs(6));
+	const unsigned int error_threshold =
+		max(3 * HEARTBEAT_COMPLETION * 1000, jiffies_to_usecs(6));
 	struct intel_context *ce;
 	struct i915_request *rq;
 	ktime_t t0, t1;
@@ -221,27 +222,37 @@ static int __live_heartbeat_fast(struct intel_engine_cs *engine)
 		goto err_pm;
 
 	for (i = 0; i < ARRAY_SIZE(times); i++) {
+		unsigned long timeout;
+
+		timeout = jiffies + 2;
 		do {
+			unsigned long serial;
+
 			/* Manufacture a tick */
 			intel_engine_park_heartbeat(engine);
 			GEM_BUG_ON(engine->heartbeat.systole);
-			engine->serial++; /*  pretend we are not idle! */
+			serial = ++engine->serial; /* pretend we are not idle */
 			intel_engine_unpark_heartbeat(engine);
 
 			flush_delayed_work(&engine->heartbeat.work);
-			if (!delayed_work_pending(&engine->heartbeat.work)) {
-				pr_err("%s: heartbeat %d did not start\n",
-				       engine->name, i);
-				err = -EINVAL;
-				goto err_pm;
-			}
 
 			rcu_read_lock();
 			rq = READ_ONCE(engine->heartbeat.systole);
 			if (rq)
 				rq = i915_request_get_rcu(rq);
 			rcu_read_unlock();
-		} while (!rq);
+			if (rq)
+				break;
+
+			if (engine->serial == serial) {
+				pr_err("%s: heartbeat %d did not start\n",
+				       engine->name, i);
+				err = -EINVAL;
+				goto err_reset;
+			}
+		} while (!rq && !time_after(jiffies, timeout));
+		if (!rq) /* Too fast! */
+			goto err_reset;
 
 		t0 = ktime_get();
 		while (rq == READ_ONCE(engine->heartbeat.systole))
@@ -275,6 +286,7 @@ static int __live_heartbeat_fast(struct intel_engine_cs *engine)
 		err = -EINVAL;
 	}
 
+err_reset:
 	reset_heartbeat(engine);
 err_pm:
 	intel_engine_pm_put(engine);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
