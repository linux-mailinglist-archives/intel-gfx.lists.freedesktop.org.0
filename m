Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CD530E5F4
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 23:19:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29AE06EC09;
	Wed,  3 Feb 2021 22:19:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF1ED6EC09
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Feb 2021 22:19:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23780749-1500050 
 for multiple; Wed, 03 Feb 2021 22:19:05 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Feb 2021 22:19:06 +0000
Message-Id: <20210203221906.19992-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210203210644.10163-1-chris@chris-wilson.co.uk>
References: <20210203210644.10163-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/gt: Ratelimit heartbeat completion
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
 .../gpu/drm/i915/gt/intel_engine_heartbeat.c  | 52 ++++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |  1 +
 2 files changed, 52 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
index 778bcae5ef2c..bd6634b70524 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
@@ -20,6 +20,16 @@
  * issue a reset -- in the hope that restores progress.
  */
 
+static long completion_timeout(const struct intel_engine_cs *engine)
+{
+	long timeout = 50;
+
+	if (intel_engine_has_preempt_reset(engine))
+		timeout += READ_ONCE(engine->props.heartbeat_interval_ms);
+
+	return msecs_to_jiffies(timeout);
+}
+
 static bool next_heartbeat(struct intel_engine_cs *engine)
 {
 	long delay;
@@ -29,6 +39,28 @@ static bool next_heartbeat(struct intel_engine_cs *engine)
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
 	mod_delayed_work(system_highpri_wq, &engine->heartbeat.work, delay);
@@ -48,12 +80,25 @@ heartbeat_create(struct intel_context *ce, gfp_t gfp)
 	return rq;
 }
 
+static void defibrillator(struct dma_fence *f, struct dma_fence_cb *cb)
+{
+	struct intel_engine_cs *engine =
+	       	container_of(cb, typeof(*engine), heartbeat.cb);
+
+	if (READ_ONCE(engine->heartbeat.systole))
+		mod_delayed_work(system_highpri_wq, &engine->heartbeat.work, 0);
+}
+
 static void idle_pulse(struct intel_engine_cs *engine, struct i915_request *rq)
 {
 	engine->wakeref_serial = READ_ONCE(engine->serial) + 1;
 	i915_request_add_active_barriers(rq);
-	if (!engine->heartbeat.systole && intel_engine_has_heartbeat(engine))
+	if (!engine->heartbeat.systole && intel_engine_has_heartbeat(engine)) {
 		engine->heartbeat.systole = i915_request_get(rq);
+		dma_fence_add_callback(&rq->fence,
+				       &engine->heartbeat.cb,
+				       defibrillator);
+	}
 }
 
 static void heartbeat_commit(struct i915_request *rq,
@@ -143,6 +188,11 @@ static void heartbeat(struct work_struct *wrk)
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
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index c9974de2dd00..f6b9d588b450 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -344,6 +344,7 @@ struct intel_engine_cs {
 	struct {
 		struct delayed_work work;
 		struct i915_request *systole;
+		struct dma_fence_cb cb;
 		unsigned long blocked;
 	} heartbeat;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
