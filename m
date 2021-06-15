Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90AB43A8A51
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 22:41:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 375C36E4A6;
	Tue, 15 Jun 2021 20:41:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9051B6E48D;
 Tue, 15 Jun 2021 20:41:15 +0000 (UTC)
IronPort-SDR: xv4+GaW5R9n7+ZfrECzU4BUXlEAaNV+epXi+BJAFoixG7n1Hx1+V5dC1xpniTi4d/CY5bW7YO+
 Nymv6zRJ3b4g==
X-IronPort-AV: E=McAfee;i="6200,9189,10016"; a="267213985"
X-IronPort-AV: E=Sophos;i="5.83,276,1616482800"; d="scan'208";a="267213985"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 13:41:13 -0700
IronPort-SDR: qBcgX/AG8Sd4FtoEpFKYRyMcof+S/bXeboqbDRTz/sSlssGgqKb/4dg9yty6dI9pK2XzqqTnC2
 l0RzBFOSN+NA==
X-IronPort-AV: E=Sophos;i="5.83,276,1616482800"; d="scan'208";a="484603211"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 13:41:12 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Tue, 15 Jun 2021 13:58:58 -0700
Message-Id: <20210615205900.26578-7-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210615205900.26578-1-matthew.brost@intel.com>
References: <20210615205900.26578-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/8] drm/i915: Add kick_backend function to
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

Not all back-ends require a kick after a  scheduling update, so make the
kick a call-back function that the  back-end can opt-in to. Also move
the current kick function from the scheduler to the execlists file as it
is specific to that back-end.

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 .../drm/i915/gt/intel_execlists_submission.c  | 52 ++++++++++++++++
 drivers/gpu/drm/i915/i915_scheduler.c         | 62 +------------------
 drivers/gpu/drm/i915/i915_scheduler_types.h   |  6 ++
 3 files changed, 60 insertions(+), 60 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 8a3d4014fd2c..9487d9e0be62 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -3116,10 +3116,61 @@ static bool can_preempt(struct intel_engine_cs *engine)
 	return engine->class != RENDER_CLASS;
 }
 
+static void kick_execlists(const struct i915_request *rq, int prio)
+{
+	struct intel_engine_cs *engine = rq->engine;
+	struct i915_sched_engine *sched_engine = engine->sched_engine;
+	const struct i915_request *inflight;
+
+	/*
+	 * We only need to kick the tasklet once for the high priority
+	 * new context we add into the queue.
+	 */
+	if (prio <= sched_engine->queue_priority_hint)
+		return;
+
+	rcu_read_lock();
+
+	/* Nothing currently active? We're overdue for a submission! */
+	inflight = execlists_active(&engine->execlists);
+	if (!inflight)
+		goto unlock;
+
+	/*
+	 * If we are already the currently executing context, don't
+	 * bother evaluating if we should preempt ourselves.
+	 */
+	if (inflight->context == rq->context)
+		goto unlock;
+
+	ENGINE_TRACE(engine,
+		     "bumping queue-priority-hint:%d for rq:%llx:%lld, inflight:%llx:%lld prio %d\n",
+		     prio,
+		     rq->fence.context, rq->fence.seqno,
+		     inflight->fence.context, inflight->fence.seqno,
+		     inflight->sched.attr.priority);
+
+	sched_engine->queue_priority_hint = prio;
+
+	/*
+	 * Allow preemption of low -> normal -> high, but we do
+	 * not allow low priority tasks to preempt other low priority
+	 * tasks under the impression that latency for low priority
+	 * tasks does not matter (as much as background throughput),
+	 * so kiss.
+	 */
+	if (prio >= max(I915_PRIORITY_NORMAL, rq_prio(inflight)))
+		tasklet_hi_schedule(&engine->execlists.tasklet);
+
+unlock:
+	rcu_read_unlock();
+}
+
 static void execlists_set_default_submission(struct intel_engine_cs *engine)
 {
 	engine->submit_request = execlists_submit_request;
 	engine->sched_engine->schedule = i915_schedule;
+	engine->sched_engine->kick_backend = kick_execlists;
 	engine->execlists.tasklet.callback = execlists_submission_tasklet;
 }
 
@@ -3702,6 +3753,7 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 	ve->base.request_alloc = execlists_request_alloc;
 
 	ve->base.sched_engine->schedule = i915_schedule;
+	ve->base.sched_engine->kick_backend = kick_execlists;
 	ve->base.submit_request = virtual_submit_request;
 	ve->base.bond_execute = virtual_bond_execute;
 
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 4bc6969f6a97..035b88f2e4aa 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -157,65 +157,6 @@ sched_lock_engine(const struct i915_sched_node *node,
 	return locked;
 }
 
-static inline int rq_prio(const struct i915_request *rq)
-{
-	return rq->sched.attr.priority;
-}
-
-static inline bool need_preempt(int prio, int active)
-{
-	/*
-	 * Allow preemption of low -> normal -> high, but we do
-	 * not allow low priority tasks to preempt other low priority
-	 * tasks under the impression that latency for low priority
-	 * tasks does not matter (as much as background throughput),
-	 * so kiss.
-	 */
-	return prio >= max(I915_PRIORITY_NORMAL, active);
-}
-
-static void kick_submission(struct intel_engine_cs *engine,
-			    const struct i915_request *rq,
-			    int prio)
-{
-	const struct i915_request *inflight;
-
-	/*
-	 * We only need to kick the tasklet once for the high priority
-	 * new context we add into the queue.
-	 */
-	if (prio <= engine->sched_engine->queue_priority_hint)
-		return;
-
-	rcu_read_lock();
-
-	/* Nothing currently active? We're overdue for a submission! */
-	inflight = execlists_active(&engine->execlists);
-	if (!inflight)
-		goto unlock;
-
-	/*
-	 * If we are already the currently executing context, don't
-	 * bother evaluating if we should preempt ourselves.
-	 */
-	if (inflight->context == rq->context)
-		goto unlock;
-
-	ENGINE_TRACE(engine,
-		     "bumping queue-priority-hint:%d for rq:%llx:%lld, inflight:%llx:%lld prio %d\n",
-		     prio,
-		     rq->fence.context, rq->fence.seqno,
-		     inflight->fence.context, inflight->fence.seqno,
-		     inflight->sched.attr.priority);
-
-	engine->sched_engine->queue_priority_hint = prio;
-	if (need_preempt(prio, rq_prio(inflight)))
-		tasklet_hi_schedule(&engine->execlists.tasklet);
-
-unlock:
-	rcu_read_unlock();
-}
-
 static void __i915_schedule(struct i915_sched_node *node,
 			    const struct i915_sched_attr *attr)
 {
@@ -335,7 +276,8 @@ static void __i915_schedule(struct i915_sched_node *node,
 		}
 
 		/* Defer (tasklet) submission until after all of our updates. */
-		kick_submission(engine, node_to_request(node), prio);
+		if (engine->sched_engine->kick_backend)
+			engine->sched_engine->kick_backend(node_to_request(node), prio);
 	}
 
 	spin_unlock(&engine->sched_engine->lock);
diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
index 0c1e417b0164..8bd07d0c27e1 100644
--- a/drivers/gpu/drm/i915/i915_scheduler_types.h
+++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
@@ -153,6 +153,12 @@ struct i915_sched_engine {
 	 */
 	bool no_priolist;
 
+	/**
+	 * @kick_backend: kick backend after a request's priority has changed
+	 */
+	void	(*kick_backend)(const struct i915_request *rq,
+				int prio);
+
 	/**
 	 * @schedule: adjust priority of request
 	 *
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
