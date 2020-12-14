Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C29512D95FA
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 11:10:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D90066E182;
	Mon, 14 Dec 2020 10:10:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB9D26E1A7
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 10:10:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23317825-1500050 
 for multiple; Mon, 14 Dec 2020 10:09:56 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Dec 2020 10:09:25 +0000
Message-Id: <20201214100949.11387-45-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201214100949.11387-1-chris@chris-wilson.co.uk>
References: <20201214100949.11387-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 45/69] drm/i915: Improve DFS for priority
 inheritance
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

The core of the scheduling algorithm is that we compute the topological
order of the fence DAG. Knowing that we have a DAG, we should be able to
use a DFS to compute the topological sort in linear time. However,
during the conversion of the recursive algorithm into an iterative one,
the memorization of how far we had progressed down a branch was
forgotten.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_scheduler.c | 57 ++++++++++++++++-----------
 1 file changed, 33 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 265c915a9b82..f774e19b9b1a 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -270,6 +270,25 @@ void i915_priolist_free_many(struct list_head *list)
 	}
 }
 
+static struct i915_request *
+stack_push(struct i915_request *rq,
+	   struct i915_request *stack,
+	   struct list_head *pos)
+{
+	stack->sched.dfs.prev = pos;
+	rq->sched.dfs.next = (struct list_head *)stack;
+	return rq;
+}
+
+static struct i915_request *stack_pop(struct i915_request *rq,
+				      struct list_head **pos)
+{
+	rq = (struct i915_request *)rq->sched.dfs.next;
+	if (rq)
+		*pos = rq->sched.dfs.prev;
+	return rq;
+}
+
 static inline bool need_preempt(int prio, int active)
 {
 	/*
@@ -334,11 +353,10 @@ static void ipi_priority(struct i915_request *rq, int prio)
 static void __i915_request_set_priority(struct i915_request *rq, int prio)
 {
 	struct intel_engine_cs *engine = rq->engine;
-	struct i915_request *rn;
+	struct list_head *pos = &rq->sched.signalers_list;
 	struct list_head *plist;
-	LIST_HEAD(dfs);
 
-	list_add(&rq->sched.dfs, &dfs);
+	plist = i915_sched_lookup_priolist(engine, prio);
 
 	/*
 	 * Recursively bump all dependent priorities to match the new request.
@@ -358,40 +376,31 @@ static void __i915_request_set_priority(struct i915_request *rq, int prio)
 	 * end result is a topological list of requests in reverse order, the
 	 * last element in the list is the request we must execute first.
 	 */
-	list_for_each_entry(rq, &dfs, sched.dfs) {
-		struct i915_dependency *p;
-
-		/* Also release any children on this engine that are ready */
-		GEM_BUG_ON(rq->engine != engine);
-
-		for_each_signaler(p, rq) {
+	rq->sched.dfs.next = NULL;
+	do {
+		list_for_each_continue(pos, &rq->sched.signalers_list) {
+			struct i915_dependency *p =
+				list_entry(pos, typeof(*p), signal_link);
 			struct i915_request *s =
 				container_of(p->signaler, typeof(*s), sched);
 
-			GEM_BUG_ON(s == rq);
-
 			if (rq_prio(s) >= prio)
 				continue;
 
 			if (i915_request_completed(s))
 				continue;
 
-			if (s->engine != rq->engine) {
+			if (s->engine != engine) {
 				ipi_priority(s, prio);
 				continue;
 			}
 
-			list_move_tail(&s->sched.dfs, &dfs);
+			/* Remember our position along this branch */
+			rq = stack_push(s, rq, pos);
+			pos = &rq->sched.signalers_list;
 		}
-	}
-
-	plist = i915_sched_lookup_priolist(engine, prio);
-
-	/* Fifo and depth-first replacement ensure our deps execute first */
-	list_for_each_entry_safe_reverse(rq, rn, &dfs, sched.dfs) {
-		GEM_BUG_ON(rq->engine != engine);
 
-		INIT_LIST_HEAD(&rq->sched.dfs);
+		RQ_TRACE(rq, "set-priority:%d\n", prio);
 		WRITE_ONCE(rq->sched.attr.priority, prio);
 
 		/*
@@ -405,12 +414,13 @@ static void __i915_request_set_priority(struct i915_request *rq, int prio)
 		if (!i915_request_is_ready(rq))
 			continue;
 
+		GEM_BUG_ON(rq->engine != engine);
 		if (i915_request_in_priority_queue(rq))
 			list_move_tail(&rq->sched.link, plist);
 
 		/* Defer (tasklet) submission until after all updates. */
 		kick_submission(engine, rq, prio);
-	}
+	} while ((rq = stack_pop(rq, &pos)));
 }
 
 void i915_request_set_priority(struct i915_request *rq, int prio)
@@ -478,7 +488,6 @@ void i915_sched_node_init(struct i915_sched_node *node)
 	INIT_LIST_HEAD(&node->signalers_list);
 	INIT_LIST_HEAD(&node->waiters_list);
 	INIT_LIST_HEAD(&node->link);
-	INIT_LIST_HEAD(&node->dfs);
 
 	node->ipi_link = NULL;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
