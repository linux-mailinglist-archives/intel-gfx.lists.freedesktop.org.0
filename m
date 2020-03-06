Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3322817B73A
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 08:16:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37DDC6E90B;
	Fri,  6 Mar 2020 07:16:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EA5E6E981
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 07:16:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20462598-1500050 
 for multiple; Fri, 06 Mar 2020 07:16:14 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Mar 2020 07:16:13 +0000
Message-Id: <20200306071614.2846708-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306071614.2846708-1-chris@chris-wilson.co.uk>
References: <20200306071614.2846708-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Always propagate the invocation
 to i915_schedule
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

We only call i915_schedule() when we know we have changed the priority
on a request and so require to propagate any change in priority to its
signalers (for PI). By unconditionally checking all of our signalers, we
avoid skipping changes made prior to construction of the request (as the
request may be waited upon before submission when used in parallel).

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_scheduler.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index be770f2419b1..52f71e83e088 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -227,10 +227,10 @@ static void kick_submission(struct intel_engine_cs *engine,
 static void __i915_schedule(struct i915_sched_node *node,
 			    const struct i915_sched_attr *attr)
 {
+	const int prio = max(attr->priority, node->attr.priority);
 	struct intel_engine_cs *engine;
 	struct i915_dependency *dep, *p;
 	struct i915_dependency stack;
-	const int prio = attr->priority;
 	struct sched_cache cache;
 	LIST_HEAD(dfs);
 
@@ -238,9 +238,6 @@ static void __i915_schedule(struct i915_sched_node *node,
 	lockdep_assert_held(&schedule_lock);
 	GEM_BUG_ON(prio == I915_PRIORITY_INVALID);
 
-	if (prio <= READ_ONCE(node->attr.priority))
-		return;
-
 	if (node_signaled(node))
 		return;
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
