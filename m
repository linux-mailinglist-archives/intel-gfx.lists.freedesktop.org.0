Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DD32E27FD
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Dec 2020 17:02:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0B3189BBE;
	Thu, 24 Dec 2020 16:02:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09E7389BBE
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Dec 2020 16:02:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23424389-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Dec 2020 16:02:13 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Dec 2020 16:02:13 +0000
Message-Id: <20201224160213.29521-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gt: Refactor heartbeat request
 construction and submission
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

Pull the individual strands of creating a custom heartbeat requests into
a pair of common functions. This will reduce the number of changes we
will need to make in future.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 .../gpu/drm/i915/gt/intel_engine_heartbeat.c  | 59 +++++++++++++------
 1 file changed, 41 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
index 9060385cd69e..d7be2b9339f9 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
@@ -37,6 +37,18 @@ static bool next_heartbeat(struct intel_engine_cs *engine)
 	return true;
 }
 
+static struct i915_request *
+heartbeat_create(struct intel_context *ce, gfp_t gfp)
+{
+	struct i915_request *rq;
+
+	intel_context_enter(ce);
+	rq = __i915_request_create(ce, gfp);
+	intel_context_exit(ce);
+
+	return rq;
+}
+
 static void idle_pulse(struct intel_engine_cs *engine, struct i915_request *rq)
 {
 	engine->wakeref_serial = READ_ONCE(engine->serial) + 1;
@@ -45,6 +57,15 @@ static void idle_pulse(struct intel_engine_cs *engine, struct i915_request *rq)
 		engine->heartbeat.systole = i915_request_get(rq);
 }
 
+static void heartbeat_commit(struct i915_request *rq,
+			     const struct i915_sched_attr *attr)
+{
+	idle_pulse(rq->engine, rq);
+
+	__i915_request_commit(rq);
+	__i915_request_queue(rq, attr);
+}
+
 static void show_heartbeat(const struct i915_request *rq,
 			   struct intel_engine_cs *engine)
 {
@@ -139,16 +160,11 @@ static void heartbeat(struct work_struct *wrk)
 		goto out;
 	}
 
-	intel_context_enter(ce);
-	rq = __i915_request_create(ce, GFP_NOWAIT | __GFP_NOWARN);
-	intel_context_exit(ce);
+	rq = heartbeat_create(ce, GFP_NOWAIT | __GFP_NOWARN);
 	if (IS_ERR(rq))
 		goto unlock;
 
-	idle_pulse(engine, rq);
-
-	__i915_request_commit(rq);
-	__i915_request_queue(rq, &attr);
+	heartbeat_commit(rq, &attr);
 
 unlock:
 	mutex_unlock(&ce->timeline->mutex);
@@ -187,17 +203,13 @@ static int __intel_engine_pulse(struct intel_engine_cs *engine)
 	GEM_BUG_ON(!intel_engine_has_preemption(engine));
 	GEM_BUG_ON(!intel_engine_pm_is_awake(engine));
 
-	intel_context_enter(ce);
-	rq = __i915_request_create(ce, GFP_NOWAIT | __GFP_NOWARN);
-	intel_context_exit(ce);
+	rq = heartbeat_create(ce, GFP_NOWAIT | __GFP_NOWARN);
 	if (IS_ERR(rq))
 		return PTR_ERR(rq);
 
 	__set_bit(I915_FENCE_FLAG_SENTINEL, &rq->fence.flags);
-	idle_pulse(engine, rq);
 
-	__i915_request_commit(rq);
-	__i915_request_queue(rq, &attr);
+	heartbeat_commit(rq, &attr);
 	GEM_BUG_ON(rq->sched.attr.priority < I915_PRIORITY_BARRIER);
 
 	return 0;
@@ -273,8 +285,12 @@ int intel_engine_pulse(struct intel_engine_cs *engine)
 
 int intel_engine_flush_barriers(struct intel_engine_cs *engine)
 {
+	struct i915_sched_attr attr = {
+		.priority = I915_USER_PRIORITY(I915_PRIORITY_MIN),
+	};
+	struct intel_context *ce = engine->kernel_context;
 	struct i915_request *rq;
-	int err = 0;
+	int err;
 
 	if (llist_empty(&engine->barrier_tasks))
 		return 0;
@@ -282,15 +298,22 @@ int intel_engine_flush_barriers(struct intel_engine_cs *engine)
 	if (!intel_engine_pm_get_if_awake(engine))
 		return 0;
 
-	rq = i915_request_create(engine->kernel_context);
+	if (mutex_lock_interruptible(&ce->timeline->mutex)) {
+		err = -EINTR;
+		goto out_rpm;
+	}
+
+	rq = heartbeat_create(ce, GFP_KERNEL);
 	if (IS_ERR(rq)) {
 		err = PTR_ERR(rq);
-		goto out_rpm;
+		goto out_unlock;
 	}
 
-	idle_pulse(engine, rq);
-	i915_request_add(rq);
+	heartbeat_commit(rq, &attr);
 
+	err = 0;
+out_unlock:
+	mutex_unlock(&ce->timeline->mutex);
 out_rpm:
 	intel_engine_pm_put(engine);
 	return err;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
