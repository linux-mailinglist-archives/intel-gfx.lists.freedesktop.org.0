Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD2C126277
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 13:44:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11FCE6EB61;
	Thu, 19 Dec 2019 12:44:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9E846EB5F
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 12:43:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19633130-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 12:43:54 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Dec 2019 12:43:53 +0000
Message-Id: <20191219124353.8607-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191219124353.8607-1-chris@chris-wilson.co.uk>
References: <20191219124353.8607-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915/gt: Track engine round-trip times
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

Knowing the round trip time of an engine is useful for tracking the
health of the system as well as providing a metric for the baseline
responsiveness of the engine. We can use the latter metric for
automatically tuning our waits in selftests and when idling so we don't
confuse a slower system with a dead one.

Upon idling the engine, we send one last pulse to switch the context
away from precious user state to the volatile kernel context. We know
the engine is idle at this point, and the pulse is non-preemptible, so
this provides us with a good measurement of the round trip time. It also
provides us with faster engine parking for ringbuffer submission, which
is a welcome bonus (e.g. softer-rc6).

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Stuart Summers <stuart.summers@intel.com>
Reviewed-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20191219105043.4169050-1-chris@chris-wilson.co.uk
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    |  3 +++
 drivers/gpu/drm/i915/gt/intel_engine_pm.c    | 22 +++++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_engine_types.h | 11 ++++++++++
 drivers/gpu/drm/i915/i915_request.h          |  4 ++++
 4 files changed, 39 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 3d1d48bf90cf..6dd18f93d45c 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -334,6 +334,7 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
 	/* Nothing to do here, execute in order of dependencies */
 	engine->schedule = NULL;
 
+	ewma__engine_latency_init(&engine->latency);
 	seqlock_init(&engine->stats.lock);
 
 	ATOMIC_INIT_NOTIFIER_HEAD(&engine->context_status_notifier);
@@ -1481,6 +1482,8 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 	drm_printf(m, "\tAwake? %d\n", atomic_read(&engine->wakeref.count));
 	drm_printf(m, "\tBarriers?: %s\n",
 		   yesno(!llist_empty(&engine->barrier_tasks)));
+	drm_printf(m, "\tLatency: %luus\n",
+		   ewma__engine_latency_read(&engine->latency));
 
 	rcu_read_lock();
 	rq = READ_ONCE(engine->heartbeat.systole);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index bcbda8e52d41..8fb7b34fc5a6 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -73,6 +73,15 @@ static inline void __timeline_mark_unlock(struct intel_context *ce,
 
 #endif /* !IS_ENABLED(CONFIG_LOCKDEP) */
 
+static void duration(struct dma_fence *fence, struct dma_fence_cb *cb)
+{
+	struct i915_request *rq = to_request(fence);
+
+	ewma__engine_latency_add(&rq->engine->latency,
+				 ktime_us_delta(rq->fence.timestamp,
+						rq->duration.emitted));
+}
+
 static void
 __queue_and_release_pm(struct i915_request *rq,
 		       struct intel_timeline *tl,
@@ -163,7 +172,18 @@ static bool switch_to_kernel_context(struct intel_engine_cs *engine)
 
 	/* Install ourselves as a preemption barrier */
 	rq->sched.attr.priority = I915_PRIORITY_BARRIER;
-	__i915_request_commit(rq);
+	if (likely(!__i915_request_commit(rq))) { /* engine should be idle! */
+		/*
+		 * Use an interrupt for precise measurement of duration,
+		 * otherwise we rely on someone else retiring all the requests
+		 * which may delay the signaling (i.e. we will likely wait
+		 * until the background request retirement running every
+		 * second or two).
+		 */
+		BUILD_BUG_ON(sizeof(rq->duration) > sizeof(rq->submitq));
+		dma_fence_add_callback(&rq->fence, &rq->duration.cb, duration);
+		rq->duration.emitted = ktime_get();
+	}
 
 	/* Expose ourselves to the world */
 	__queue_and_release_pm(rq, ce->timeline, engine);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 17f1f1441efc..7f227da09d66 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -7,6 +7,7 @@
 #ifndef __INTEL_ENGINE_TYPES__
 #define __INTEL_ENGINE_TYPES__
 
+#include <linux/average.h>
 #include <linux/hashtable.h>
 #include <linux/irq_work.h>
 #include <linux/kref.h>
@@ -119,6 +120,9 @@ enum intel_engine_id {
 #define INVALID_ENGINE ((enum intel_engine_id)-1)
 };
 
+/* A simple estimator for the round-trip latency of an engine */
+DECLARE_EWMA(_engine_latency, 6, 4)
+
 struct st_preempt_hang {
 	struct completion completion;
 	unsigned int count;
@@ -316,6 +320,13 @@ struct intel_engine_cs {
 		struct intel_timeline *timeline;
 	} legacy;
 
+	/*
+	 * We track the average duration of the idle pulse on parking the
+	 * engine to keep an estimate of the how the fast the engine is
+	 * under ideal conditions.
+	 */
+	struct ewma__engine_latency latency;
+
 	/* Rather than have every client wait upon all user interrupts,
 	 * with the herd waking after every interrupt and each doing the
 	 * heavyweight seqno dance, we delegate the task (of being the
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index aa38290eea3d..c18c0bcd0193 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -150,6 +150,10 @@ struct i915_request {
 	union {
 		wait_queue_entry_t submitq;
 		struct i915_sw_dma_fence_cb dmaq;
+		struct i915_request_duration_cb {
+			struct dma_fence_cb cb;
+			ktime_t emitted;
+		} duration;
 	};
 	struct list_head execute_cb;
 	struct i915_sw_fence semaphore;
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
