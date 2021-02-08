Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0958E312F94
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 11:53:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74EA46E87E;
	Mon,  8 Feb 2021 10:53:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FF656E86F
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 10:52:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from build.alporthouse.com (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23809213-1500050 
 for multiple; Mon, 08 Feb 2021 10:52:42 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Feb 2021 10:52:11 +0000
Message-Id: <20210208105236.28498-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210208105236.28498-1-chris@chris-wilson.co.uk>
References: <20210208105236.28498-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/31] drm/i915: Move busywaiting control to the
 scheduler
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

Busy-waiting is used for preempt-to-busy by schedulers, if they so
choose. Since it is not a property of the engine, but that of the
submission backend, move the flag from out of the engine to
i915_sched_engine.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |  4 ++--
 .../drm/i915/gt/intel_execlists_submission.c  |  5 ++++-
 drivers/gpu/drm/i915/gt/selftest_lrc.c        | 19 +++++++++++++------
 drivers/gpu/drm/i915/i915_request.h           |  5 +++++
 drivers/gpu/drm/i915/i915_scheduler_types.h   |  6 ++++++
 5 files changed, 30 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index cac80af7ad1c..8791e03ebe61 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -507,7 +507,7 @@ gen8_emit_fini_breadcrumb_tail(struct i915_request *rq, u32 *cs)
 	*cs++ = MI_USER_INTERRUPT;
 
 	*cs++ = MI_ARB_ON_OFF | MI_ARB_ENABLE;
-	if (intel_engine_has_semaphores(rq->engine))
+	if (i915_request_use_busywait(rq))
 		cs = emit_preempt_busywait(rq, cs);
 
 	rq->tail = intel_ring_offset(rq, cs);
@@ -599,7 +599,7 @@ gen12_emit_fini_breadcrumb_tail(struct i915_request *rq, u32 *cs)
 	*cs++ = MI_USER_INTERRUPT;
 
 	*cs++ = MI_ARB_ON_OFF | MI_ARB_ENABLE;
-	if (intel_engine_has_semaphores(rq->engine))
+	if (i915_request_use_busywait(rq))
 		cs = gen12_emit_preempt_busywait(rq, cs);
 
 	rq->tail = intel_ring_offset(rq, cs);
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index aa1816d28def..0a93386ad15f 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -306,7 +306,7 @@ static bool need_preempt(const struct intel_engine_cs *engine,
 	const struct i915_sched *se = &engine->sched;
 	int last_prio;
 
-	if (!intel_engine_has_semaphores(engine))
+	if (!i915_sched_use_busywait(se))
 		return false;
 
 	/*
@@ -2963,6 +2963,9 @@ static void init_execlists(struct intel_engine_cs *engine)
 	    intel_engine_has_preemption(engine))
 		__set_bit(I915_SCHED_TIMESLICE_BIT, &engine->sched.flags);
 
+	if (intel_engine_has_preemption(engine))
+		__set_bit(I915_SCHED_BUSYWAIT_BIT, &engine->sched.flags);
+
 	timer_setup(&engine->execlists.timer, execlists_timeslice, 0);
 	timer_setup(&engine->execlists.preempt, execlists_preempt, 0);
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 279091e41b41..6d73add47109 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -679,9 +679,11 @@ static int live_lrc_gpr(void *arg)
 		if (err)
 			goto err;
 
-		err = __live_lrc_gpr(engine, scratch, true);
-		if (err)
-			goto err;
+		if (intel_engine_has_preemption(engine)) {
+			err = __live_lrc_gpr(engine, scratch, true);
+			if (err)
+				goto err;
+		}
 
 err:
 		st_engine_heartbeat_enable(engine);
@@ -859,9 +861,11 @@ static int live_lrc_timestamp(void *arg)
 			if (err)
 				break;
 
-			err = __lrc_timestamp(&data, true);
-			if (err)
-				break;
+			if (intel_engine_has_preemption(data.engine)) {
+				err = __lrc_timestamp(&data, true);
+				if (err)
+					break;
+			}
 		}
 
 err:
@@ -1508,6 +1512,9 @@ static int live_lrc_isolation(void *arg)
 		    skip_isolation(engine))
 			continue;
 
+		if (!intel_engine_has_preemption(engine))
+			continue;
+
 		intel_engine_pm_get(engine);
 		for (i = 0; i < ARRAY_SIZE(poison); i++) {
 			int result;
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index dde868e9ee5f..843e6a873148 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -651,4 +651,9 @@ static inline bool i915_request_use_semaphores(const struct i915_request *rq)
 	return intel_engine_has_semaphores(rq->engine);
 }
 
+static inline bool i915_request_use_busywait(const struct i915_request *rq)
+{
+	return i915_sched_use_busywait(i915_request_get_scheduler(rq));
+}
+
 #endif /* I915_REQUEST_H */
diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
index 3c94378def52..3aaf5b40b801 100644
--- a/drivers/gpu/drm/i915/i915_scheduler_types.h
+++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
@@ -23,6 +23,7 @@ enum {
 	I915_SCHED_ACTIVE_BIT, /* can reorder the request flow */
 	I915_SCHED_PRIORITY_BIT, /* priority sorting of queue */
 	I915_SCHED_TIMESLICE_BIT, /* multitasking for long workloads */
+	I915_SCHED_BUSYWAIT_BIT, /* preempt-to-busy */
 };
 
 /**
@@ -250,4 +251,9 @@ static inline bool i915_sched_has_timeslices(const struct i915_sched *se)
 	return test_bit(I915_SCHED_TIMESLICE_BIT, &se->flags);
 }
 
+static inline bool i915_sched_use_busywait(const struct i915_sched *se)
+{
+	return test_bit(I915_SCHED_BUSYWAIT_BIT, &se->flags);
+}
+
 #endif /* _I915_SCHEDULER_TYPES_H_ */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
