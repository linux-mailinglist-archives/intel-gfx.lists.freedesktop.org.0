Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E891312F84
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 11:53:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F26F26E864;
	Mon,  8 Feb 2021 10:52:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A56F6E1A3
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 10:52:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from build.alporthouse.com (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23809214-1500050 
 for multiple; Mon, 08 Feb 2021 10:52:42 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Feb 2021 10:52:12 +0000
Message-Id: <20210208105236.28498-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210208105236.28498-1-chris@chris-wilson.co.uk>
References: <20210208105236.28498-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/31] drm/i915: Move preempt-reset flag to the
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

While the HW may support preemption, whether or not the scheduler
enforces preemption by forcibly resetting the current context is
ultimately up to the scheduler.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine.h               | 7 ++-----
 drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c     | 4 ++--
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 4 +++-
 drivers/gpu/drm/i915/i915_scheduler_types.h          | 9 +++++++++
 4 files changed, 16 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index 5d3bcbfe8f6e..e4f390bba009 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -244,12 +244,9 @@ static inline bool intel_engine_uses_guc(const struct intel_engine_cs *engine)
 }
 
 static inline bool
-intel_engine_has_preempt_reset(const struct intel_engine_cs *engine)
+intel_engine_has_preempt_reset(struct intel_engine_cs *engine)
 {
-	if (!IS_ACTIVE(CONFIG_DRM_I915_PREEMPT_TIMEOUT))
-		return false;
-
-	return intel_engine_has_preemption(engine);
+	return i915_sched_has_preempt_reset(intel_engine_get_scheduler(engine));
 }
 
 static inline bool
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
index 209a477af412..5ed263f36f93 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
@@ -22,11 +22,11 @@
 
 #define HEARTBEAT_COMPLETION 50u /* milliseconds */
 
-static long completion_timeout(const struct intel_engine_cs *engine)
+static long completion_timeout(struct intel_engine_cs *engine)
 {
 	long timeout = HEARTBEAT_COMPLETION;
 
-	if (intel_engine_has_preempt_reset(engine))
+	if (i915_sched_has_preempt_reset(intel_engine_get_scheduler(engine)))
 		timeout += READ_ONCE(engine->props.preempt_timeout_ms);
 
 	return msecs_to_jiffies(timeout);
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 0a93386ad15f..78fda9b4f626 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2963,8 +2963,10 @@ static void init_execlists(struct intel_engine_cs *engine)
 	    intel_engine_has_preemption(engine))
 		__set_bit(I915_SCHED_TIMESLICE_BIT, &engine->sched.flags);
 
-	if (intel_engine_has_preemption(engine))
+	if (intel_engine_has_preemption(engine)) {
 		__set_bit(I915_SCHED_BUSYWAIT_BIT, &engine->sched.flags);
+		__set_bit(I915_SCHED_PREEMPT_RESET_BIT, &engine->sched.flags);
+	}
 
 	timer_setup(&engine->execlists.timer, execlists_timeslice, 0);
 	timer_setup(&engine->execlists.preempt, execlists_preempt, 0);
diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
index 3aaf5b40b801..5ca2dc1b4fb5 100644
--- a/drivers/gpu/drm/i915/i915_scheduler_types.h
+++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
@@ -23,6 +23,7 @@ enum {
 	I915_SCHED_ACTIVE_BIT, /* can reorder the request flow */
 	I915_SCHED_PRIORITY_BIT, /* priority sorting of queue */
 	I915_SCHED_TIMESLICE_BIT, /* multitasking for long workloads */
+	I915_SCHED_PREEMPT_RESET_BIT, /* reset if preemption times out */
 	I915_SCHED_BUSYWAIT_BIT, /* preempt-to-busy */
 };
 
@@ -256,4 +257,12 @@ static inline bool i915_sched_use_busywait(const struct i915_sched *se)
 	return test_bit(I915_SCHED_BUSYWAIT_BIT, &se->flags);
 }
 
+static inline bool i915_sched_has_preempt_reset(const struct i915_sched *se)
+{
+	if (!IS_ACTIVE(CONFIG_DRM_I915_PREEMPT_TIMEOUT))
+		return false;
+
+	return test_bit(I915_SCHED_PREEMPT_RESET_BIT, &se->flags);
+}
+
 #endif /* _I915_SCHEDULER_TYPES_H_ */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
