Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A15202D9608
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 11:10:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 366356E3EB;
	Mon, 14 Dec 2020 10:10:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F26F46E1F7
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 10:10:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23317807-1500050 
 for multiple; Mon, 14 Dec 2020 10:09:55 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Dec 2020 10:09:14 +0000
Message-Id: <20201214100949.11387-34-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201214100949.11387-1-chris@chris-wilson.co.uk>
References: <20201214100949.11387-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 34/69] drm/i915/gt: Refactor heartbeat request
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Pull the individual strands of creating a custom heartbeat requests into
a pair of common functions. This will reduce the number of changes we
will need to make in future.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
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
