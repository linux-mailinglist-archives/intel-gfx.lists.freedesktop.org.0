Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE9823CA77
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Aug 2020 14:22:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA7FF89CBA;
	Wed,  5 Aug 2020 12:22:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09BFD6E573
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Aug 2020 12:22:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22039460-1500050 
 for multiple; Wed, 05 Aug 2020 13:22:30 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Aug 2020 13:21:55 +0100
Message-Id: <20200805122231.23313-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200805122231.23313-1-chris@chris-wilson.co.uk>
References: <20200805122231.23313-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/37] drm/i915/gem: Reduce context termination
 list iteration guard to RCU
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

As we now protect the timeline list using RCU, we can drop the
timeline->mutex for guarding the list iteration during context close, as
we are searching for an inflight request. Any new request will see the
context is banned and not be submitted. In doing so, pull the checks for
a concurrent submission of the request (notably the
i915_request_completed()) under the engine spinlock, to fully serialise
with __i915_request_submit()). That is in the case of preempt-to-busy
where the request may be completed during the __i915_request_submit(),
we need to be careful that we sample the request status after
serialising so that we don't miss the request the engine is actually
submitting.

Fixes: 4a3174152147 ("drm/i915/gem: Refine occupancy test in kill_context()")
References: d22d2d073ef8 ("drm/i915: Protect i915_request_await_start from early waits") # rcu protection of timeline->requests
References: https://gitlab.freedesktop.org/drm/intel/-/issues/1622
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 32 ++++++++++++---------
 1 file changed, 19 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index d8cccbab7a51..db893f6c516b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -439,29 +439,36 @@ static bool __cancel_engine(struct intel_engine_cs *engine)
 	return __reset_engine(engine);
 }
 
-static struct intel_engine_cs *__active_engine(struct i915_request *rq)
+static bool
+__active_engine(struct i915_request *rq, struct intel_engine_cs **active)
 {
 	struct intel_engine_cs *engine, *locked;
+	bool ret = false;
 
 	/*
 	 * Serialise with __i915_request_submit() so that it sees
 	 * is-banned?, or we know the request is already inflight.
+	 *
+	 * Note that rq->engine is unstable, and so we double
+	 * check that we have acquired the lock on the final engine.
 	 */
 	locked = READ_ONCE(rq->engine);
 	spin_lock_irq(&locked->active.lock);
 	while (unlikely(locked != (engine = READ_ONCE(rq->engine)))) {
 		spin_unlock(&locked->active.lock);
-		spin_lock(&engine->active.lock);
 		locked = engine;
+		spin_lock(&locked->active.lock);
 	}
 
-	engine = NULL;
-	if (i915_request_is_active(rq) && rq->fence.error != -EIO)
-		engine = rq->engine;
+	if (!i915_request_completed(rq)) {
+		if (i915_request_is_active(rq) && rq->fence.error != -EIO)
+			*active = locked;
+		ret = true;
+	}
 
 	spin_unlock_irq(&locked->active.lock);
 
-	return engine;
+	return ret;
 }
 
 static struct intel_engine_cs *active_engine(struct intel_context *ce)
@@ -472,17 +479,16 @@ static struct intel_engine_cs *active_engine(struct intel_context *ce)
 	if (!ce->timeline)
 		return NULL;
 
-	mutex_lock(&ce->timeline->mutex);
-	list_for_each_entry_reverse(rq, &ce->timeline->requests, link) {
-		if (i915_request_completed(rq))
-			break;
+	rcu_read_lock();
+	list_for_each_entry_rcu(rq, &ce->timeline->requests, link) {
+		if (i915_request_is_active(rq) && i915_request_completed(rq))
+			continue;
 
 		/* Check with the backend if the request is inflight */
-		engine = __active_engine(rq);
-		if (engine)
+		if (__active_engine(rq, &engine))
 			break;
 	}
-	mutex_unlock(&ce->timeline->mutex);
+	rcu_read_unlock();
 
 	return engine;
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
