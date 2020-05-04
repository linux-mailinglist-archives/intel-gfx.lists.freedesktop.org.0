Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B835F1C3BB9
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 15:50:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 143806E40C;
	Mon,  4 May 2020 13:50:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8A026E405
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 13:50:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21106861-1500050 
 for multiple; Mon, 04 May 2020 14:50:34 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 May 2020 14:50:25 +0100
Message-Id: <20200504135030.19210-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200504135030.19210-1-chris@chris-wilson.co.uk>
References: <20200504135030.19210-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/6] drm/i915: Mark concurrent submissions with
 a weak-dependency
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
Cc: kenneth@whitecape.org, Chris Wilson <chris@chris-wilson.co.uk>,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We recorded the dependencies for WAIT_FOR_SUBMIT in order that we could
correctly perform priority inheritance from the parallel branches to the
common trunk. However, for the purpose of timeslicing and reset
handling, the dependency is weak -- as we the pair of requests are
allowed to run in parallel and not in strict succession. So for example
we do need to suspend one if the other hangs.

The real significance though is that this allows us to rearrange
groups of WAIT_FOR_SUBMIT linked requests along the single engine, and
so can resolve user level inter-batch scheduling dependencies from user
semaphores.

Fixes: c81471f5e95c ("drm/i915: Copy across scheduler behaviour flags across submit fences")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: <stable@vger.kernel.org> # v5.6+
---
 drivers/gpu/drm/i915/gt/intel_lrc.c         | 9 +++++++++
 drivers/gpu/drm/i915/i915_request.c         | 8 ++++++--
 drivers/gpu/drm/i915/i915_scheduler.c       | 4 +++-
 drivers/gpu/drm/i915/i915_scheduler.h       | 3 ++-
 drivers/gpu/drm/i915/i915_scheduler_types.h | 1 +
 5 files changed, 21 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index d4ef344657b0..a47e4e15cbaa 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1883,6 +1883,9 @@ static void defer_request(struct i915_request *rq, struct list_head * const pl)
 			struct i915_request *w =
 				container_of(p->waiter, typeof(*w), sched);
 
+			if (p->flags & I915_DEPENDENCY_WEAK)
+				continue;
+
 			/* Leave semaphores spinning on the other engines */
 			if (w->engine != rq->engine)
 				continue;
@@ -2729,6 +2732,9 @@ static void __execlists_hold(struct i915_request *rq)
 			struct i915_request *w =
 				container_of(p->waiter, typeof(*w), sched);
 
+			if (p->flags & I915_DEPENDENCY_WEAK)
+				continue;
+
 			/* Leave semaphores spinning on the other engines */
 			if (w->engine != rq->engine)
 				continue;
@@ -2853,6 +2859,9 @@ static void __execlists_unhold(struct i915_request *rq)
 			struct i915_request *w =
 				container_of(p->waiter, typeof(*w), sched);
 
+			if (p->flags & I915_DEPENDENCY_WEAK)
+				continue;
+
 			/* Propagate any change in error status */
 			if (rq->fence.error)
 				i915_request_set_error_once(w, rq->fence.error);
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 22635bbabf06..95edc5523a01 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1038,7 +1038,9 @@ i915_request_await_request(struct i915_request *to, struct i915_request *from)
 		return 0;
 
 	if (to->engine->schedule) {
-		ret = i915_sched_node_add_dependency(&to->sched, &from->sched);
+		ret = i915_sched_node_add_dependency(&to->sched,
+						     &from->sched,
+						     0);
 		if (ret < 0)
 			return ret;
 	}
@@ -1200,7 +1202,9 @@ __i915_request_await_execution(struct i915_request *to,
 
 	/* Couple the dependency tree for PI on this exposed to->fence */
 	if (to->engine->schedule) {
-		err = i915_sched_node_add_dependency(&to->sched, &from->sched);
+		err = i915_sched_node_add_dependency(&to->sched,
+						     &from->sched,
+						     I915_DEPENDENCY_WEAK);
 		if (err < 0)
 			return err;
 	}
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 37cfcf5b321b..5f4c1e49e974 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -462,7 +462,8 @@ bool __i915_sched_node_add_dependency(struct i915_sched_node *node,
 }
 
 int i915_sched_node_add_dependency(struct i915_sched_node *node,
-				   struct i915_sched_node *signal)
+				   struct i915_sched_node *signal,
+				   unsigned long flags)
 {
 	struct i915_dependency *dep;
 
@@ -473,6 +474,7 @@ int i915_sched_node_add_dependency(struct i915_sched_node *node,
 	local_bh_disable();
 
 	if (!__i915_sched_node_add_dependency(node, signal, dep,
+					      flags |
 					      I915_DEPENDENCY_EXTERNAL |
 					      I915_DEPENDENCY_ALLOC))
 		i915_dependency_free(dep);
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index d1dc4efef77b..6f0bf00fc569 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -34,7 +34,8 @@ bool __i915_sched_node_add_dependency(struct i915_sched_node *node,
 				      unsigned long flags);
 
 int i915_sched_node_add_dependency(struct i915_sched_node *node,
-				   struct i915_sched_node *signal);
+				   struct i915_sched_node *signal,
+				   unsigned long flags);
 
 void i915_sched_node_fini(struct i915_sched_node *node);
 
diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
index d18e70550054..7186875088a0 100644
--- a/drivers/gpu/drm/i915/i915_scheduler_types.h
+++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
@@ -78,6 +78,7 @@ struct i915_dependency {
 	unsigned long flags;
 #define I915_DEPENDENCY_ALLOC		BIT(0)
 #define I915_DEPENDENCY_EXTERNAL	BIT(1)
+#define I915_DEPENDENCY_WEAK		BIT(2)
 };
 
 #endif /* _I915_SCHEDULER_TYPES_H_ */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
