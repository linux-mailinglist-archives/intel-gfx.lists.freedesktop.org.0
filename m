Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2830E1C72FC
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 16:37:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 995F389FEC;
	Wed,  6 May 2020 14:37:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA5D389A1A
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 14:37:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21127926-1500050 
 for multiple; Wed, 06 May 2020 15:36:21 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 May 2020 15:36:16 +0100
Message-Id: <20200506143616.19925-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200506143616.19925-1-chris@chris-wilson.co.uk>
References: <20200506143616.19925-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Suppress internal
 I915_PRIORITY_WAIT for timeslicing
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

Make sure we ignore the I915_PRIORITY_WAIT hint when looking at
timeslicing, as we do not treat it as a preemption request but as a soft
ordering hint. If we apply the hint, then when we recompute the ordering
after unwinding for the timeslice, we will often leave the order
unchanged due to the soft-hint. However, if we apply it to all those we
unwind, then the two equivalent levels may be reordered, and since the
dependencies will be replayed in order, we will not change the order of
dependencies.

There is a small issue with the lack of cross-engine priority bumping on
unwind, leaving the total graph slightly unordered; but that will not
result in any misordering of rendering on remote machines as any
signalers will also be live. Though there may be a danger that this will
upset our sanitychecks.

Why keep the I915_PRIORITY_WAIT soft-hint, I hear Tvrtko ask? Despite
the many hairy tricks we play to have the hint and then ignore it, I
still like the concept of codel and the promise that it gives for low
latency of independent queues!

Testcase: igt/gem_exec_fence/submit
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 10109f661bcb..3606a7946707 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -414,6 +414,12 @@ static inline int rq_prio(const struct i915_request *rq)
 	return READ_ONCE(rq->sched.attr.priority);
 }
 
+static int __effective_prio(int prio)
+{
+	BUILD_BUG_ON(__NO_PREEMPTION & ~I915_PRIORITY_MASK); /* only internal */
+	return prio | __NO_PREEMPTION;
+}
+
 static int effective_prio(const struct i915_request *rq)
 {
 	int prio = rq_prio(rq);
@@ -439,8 +445,7 @@ static int effective_prio(const struct i915_request *rq)
 		prio |= I915_PRIORITY_NOSEMAPHORE;
 
 	/* Restrict mere WAIT boosts from triggering preemption */
-	BUILD_BUG_ON(__NO_PREEMPTION & ~I915_PRIORITY_MASK); /* only internal */
-	return prio | __NO_PREEMPTION;
+	return __effective_prio(prio);
 }
 
 static int queue_prio(const struct intel_engine_execlists *execlists)
@@ -1126,6 +1131,7 @@ __unwind_incomplete_requests(struct intel_engine_cs *engine)
 			continue; /* XXX */
 
 		__i915_request_unsubmit(rq);
+		rq->sched.attr.priority |= __NO_PREEMPTION;
 
 		/*
 		 * Push the request back into the queue for later resubmission.
@@ -1930,7 +1936,7 @@ need_timeslice(const struct intel_engine_cs *engine,
 	if (!list_is_last(&rq->sched.link, &engine->active.requests))
 		hint = max(hint, rq_prio(list_next_entry(rq, sched.link)));
 
-	return hint >= effective_prio(rq);
+	return __effective_prio(hint) >= effective_prio(rq);
 }
 
 static bool
@@ -1965,7 +1971,7 @@ switch_prio(struct intel_engine_cs *engine, const struct i915_request *rq)
 	if (list_is_last(&rq->sched.link, &engine->active.requests))
 		return INT_MIN;
 
-	return rq_prio(list_next_entry(rq, sched.link));
+	return __effective_prio(rq_prio(list_next_entry(rq, sched.link)));
 }
 
 static inline unsigned long
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
