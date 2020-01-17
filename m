Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 186ED1408C0
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 12:16:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4C886F502;
	Fri, 17 Jan 2020 11:15:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C0DB6F503
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 11:15:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19914675-1500050 
 for multiple; Fri, 17 Jan 2020 11:15:49 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2020 11:15:46 +0000
Message-Id: <20200117111546.3012803-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200117111546.3012803-1-chris@chris-wilson.co.uk>
References: <20200117111546.3012803-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Tweak scheduler's
 kick_submission()
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

Skip useless priority bumping on adding a new dependency, but otherwise
prevent tasklet scheduling until we have completed all the potential
rescheduling.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_scheduler.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 5d96cfba40f8..2b3f290ee1ad 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -216,12 +216,13 @@ static void kick_submission(struct intel_engine_cs *engine,
 	if (inflight->context == rq->context)
 		goto unlock;
 
-	engine->execlists.queue_priority_hint = prio;
 	if (need_preempt(prio, rq_prio(inflight)))
 		tasklet_hi_schedule(&engine->execlists.tasklet);
 
 unlock:
 	rcu_read_unlock();
+
+	engine->execlists.queue_priority_hint = prio;
 }
 
 static void __i915_schedule(struct i915_sched_node *node,
@@ -363,6 +364,9 @@ static void __bump_priority(struct i915_sched_node *node, unsigned int bump)
 {
 	struct i915_sched_attr attr = node->attr;
 
+	if (attr.priority & bump)
+		return;
+
 	attr.priority |= bump;
 	__i915_schedule(node, &attr);
 }
@@ -461,11 +465,15 @@ int i915_sched_node_add_dependency(struct i915_sched_node *node,
 	if (!dep)
 		return -ENOMEM;
 
+	local_bh_disable();
+
 	if (!__i915_sched_node_add_dependency(node, signal, dep,
 					      I915_DEPENDENCY_EXTERNAL |
 					      I915_DEPENDENCY_ALLOC))
 		i915_dependency_free(dep);
 
+	local_bh_enable(); /* kick submission tasklet */
+
 	return 0;
 }
 
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
