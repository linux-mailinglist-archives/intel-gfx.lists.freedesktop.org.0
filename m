Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 400D8179703
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 18:49:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D45C6EB53;
	Wed,  4 Mar 2020 17:49:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1CD76EB53
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 17:49:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20444986-1500050 
 for multiple; Wed, 04 Mar 2020 17:48:35 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Mar 2020 17:48:35 +0000
Message-Id: <20200304174835.2459324-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Tweak scheduler's kick_submission()
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
 drivers/gpu/drm/i915/i915_scheduler.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index be770f2419b1..44070fe753b5 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -209,6 +209,8 @@ static void kick_submission(struct intel_engine_cs *engine,
 	if (!inflight)
 		goto unlock;
 
+	engine->execlists.queue_priority_hint = prio;
+
 	/*
 	 * If we are already the currently executing context, don't
 	 * bother evaluating if we should preempt ourselves.
@@ -216,7 +218,6 @@ static void kick_submission(struct intel_engine_cs *engine,
 	if (inflight->context == rq->context)
 		goto unlock;
 
-	engine->execlists.queue_priority_hint = prio;
 	if (need_preempt(prio, rq_prio(inflight)))
 		tasklet_hi_schedule(&engine->execlists.tasklet);
 
@@ -466,11 +467,15 @@ int i915_sched_node_add_dependency(struct i915_sched_node *node,
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
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
