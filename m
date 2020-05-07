Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A713C1C94F3
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 17:24:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F9156EA1C;
	Thu,  7 May 2020 15:24:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EC366EA12
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 15:24:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21140321-1500050 
 for multiple; Thu, 07 May 2020 16:23:40 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 May 2020 16:23:38 +0100
Message-Id: <20200507152338.7452-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200507152338.7452-1-chris@chris-wilson.co.uk>
References: <20200507152338.7452-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Remove wait priority boosting
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

Upon waiting a request (when asked), we gave that request a small
priority boost, not enough for it to cause preemption, but enough for it
to be scheduled next before all equals. We also used that bit to give
new clients a small priority boost, similar to FQ_CODEL, such that we
favoured short interactive tasks ahead of long running streams.

However, this is causing lots of complications with timeslicing where we
both want to honour the boost and yet ignore it. Those complications
cause unexpected user behaviour (tasks not being timesliced and run
concurrently as epxected), and the easiest way to resolve that is to
remove the boost. Hopefully, we can find a compromise again if we need
to, but in theory timeslicing itself and future more advanced schedulers
should give us the interactivity boost we seek.

Testcase: igt/gem_exec_schedule/lateslice
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c    |  9 ---------
 drivers/gpu/drm/i915/gt/intel_lrc.c               |  4 +---
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c |  2 +-
 drivers/gpu/drm/i915/i915_priolist_types.h        |  7 ++-----
 drivers/gpu/drm/i915/i915_request.c               |  3 ---
 drivers/gpu/drm/i915/i915_scheduler.c             | 12 +-----------
 6 files changed, 5 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 966523a8503f..d54a4933cc05 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2597,15 +2597,6 @@ static void eb_request_add(struct i915_execbuffer *eb)
 		 */
 		if (!(rq->sched.flags & I915_SCHED_HAS_SEMAPHORE_CHAIN))
 			attr.priority |= I915_PRIORITY_NOSEMAPHORE;
-
-		/*
-		 * Boost priorities to new clients (new request flows).
-		 *
-		 * Allow interactive/synchronous clients to jump ahead of
-		 * the bulk clients. (FQ_CODEL)
-		 */
-		if (list_empty(&rq->sched.signalers_list))
-			attr.priority |= I915_PRIORITY_WAIT;
 	} else {
 		/* Serialise with context_close via the add_to_timeline */
 		i915_request_set_error_once(rq, -ENOENT);
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 860ef97895c8..c3924c3d8351 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -438,9 +438,7 @@ static int effective_prio(const struct i915_request *rq)
 	if (__i915_request_has_started(rq))
 		prio |= I915_PRIORITY_NOSEMAPHORE;
 
-	/* Restrict mere WAIT boosts from triggering preemption */
-	BUILD_BUG_ON(__NO_PREEMPTION & ~I915_PRIORITY_MASK); /* only internal */
-	return prio | __NO_PREEMPTION;
+	return prio;
 }
 
 static int queue_prio(const struct intel_engine_execlists *execlists)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index aa6d56e25a10..94eb63f309ce 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -258,7 +258,7 @@ static void guc_submit(struct intel_engine_cs *engine,
 
 static inline int rq_prio(const struct i915_request *rq)
 {
-	return rq->sched.attr.priority | __NO_PREEMPTION;
+	return rq->sched.attr.priority;
 }
 
 static struct i915_request *schedule_in(struct i915_request *rq, int idx)
diff --git a/drivers/gpu/drm/i915/i915_priolist_types.h b/drivers/gpu/drm/i915/i915_priolist_types.h
index 732aad148881..e18723d8df86 100644
--- a/drivers/gpu/drm/i915/i915_priolist_types.h
+++ b/drivers/gpu/drm/i915/i915_priolist_types.h
@@ -24,14 +24,13 @@ enum {
 	I915_PRIORITY_DISPLAY,
 };
 
-#define I915_USER_PRIORITY_SHIFT 2
+#define I915_USER_PRIORITY_SHIFT 1
 #define I915_USER_PRIORITY(x) ((x) << I915_USER_PRIORITY_SHIFT)
 
 #define I915_PRIORITY_COUNT BIT(I915_USER_PRIORITY_SHIFT)
 #define I915_PRIORITY_MASK (I915_PRIORITY_COUNT - 1)
 
-#define I915_PRIORITY_WAIT		((u8)BIT(0))
-#define I915_PRIORITY_NOSEMAPHORE	((u8)BIT(1))
+#define I915_PRIORITY_NOSEMAPHORE	((u8)BIT(0))
 
 /* Smallest priority value that cannot be bumped. */
 #define I915_PRIORITY_INVALID (INT_MIN | (u8)I915_PRIORITY_MASK)
@@ -47,8 +46,6 @@ enum {
 #define I915_PRIORITY_UNPREEMPTABLE INT_MAX
 #define I915_PRIORITY_BARRIER INT_MAX
 
-#define __NO_PREEMPTION (I915_PRIORITY_WAIT)
-
 struct i915_priolist {
 	struct list_head requests[I915_PRIORITY_COUNT];
 	struct rb_node node;
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 3c38d61c90f8..589739bfee25 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1464,8 +1464,6 @@ void i915_request_add(struct i915_request *rq)
 
 	if (!(rq->sched.flags & I915_SCHED_HAS_SEMAPHORE_CHAIN))
 		attr.priority |= I915_PRIORITY_NOSEMAPHORE;
-	if (list_empty(&rq->sched.signalers_list))
-		attr.priority |= I915_PRIORITY_WAIT;
 
 	__i915_request_queue(rq, &attr);
 
@@ -1651,7 +1649,6 @@ long i915_request_wait(struct i915_request *rq,
 	if (flags & I915_WAIT_PRIORITY) {
 		if (!i915_request_started(rq) && INTEL_GEN(rq->i915) >= 6)
 			intel_rps_boost(rq);
-		i915_schedule_bump_priority(rq, I915_PRIORITY_WAIT);
 	}
 
 	wait.tsk = current;
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 1c33973dbd20..6f18a42ac347 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -174,7 +174,7 @@ sched_lock_engine(const struct i915_sched_node *node,
 
 static inline int rq_prio(const struct i915_request *rq)
 {
-	return rq->sched.attr.priority | __NO_PREEMPTION;
+	return rq->sched.attr.priority;
 }
 
 static inline bool need_preempt(int prio, int active)
@@ -456,16 +456,6 @@ bool __i915_sched_node_add_dependency(struct i915_sched_node *node,
 		list_add_rcu(&dep->signal_link, &node->signalers_list);
 		list_add_rcu(&dep->wait_link, &signal->waiters_list);
 
-		/*
-		 * As we do not allow WAIT to preempt inflight requests,
-		 * once we have executed a request, along with triggering
-		 * any execution callbacks, we must preserve its ordering
-		 * within the non-preemptible FIFO.
-		 */
-		BUILD_BUG_ON(__NO_PREEMPTION & ~I915_PRIORITY_MASK);
-		if (flags & I915_DEPENDENCY_EXTERNAL)
-			__bump_priority(signal, __NO_PREEMPTION);
-
 		ret = true;
 	}
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
