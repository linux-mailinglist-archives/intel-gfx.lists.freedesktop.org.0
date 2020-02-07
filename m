Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D58A6155445
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 10:05:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 292C96FBDB;
	Fri,  7 Feb 2020 09:05:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 464 seconds by postgrey-1.36 at gabe;
 Fri, 07 Feb 2020 09:05:07 UTC
Received: from spamshield.firefly-cloud.com
 (ec2-52-211-27-78.eu-west-1.compute.amazonaws.com [52.211.27.78])
 by gabe.freedesktop.org (Postfix) with ESMTP id C35B36FBDB
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 09:05:07 +0000 (UTC)
Received: from spamshield.firefly-cloud.com (localhost [127.0.0.1])
 by spamshield.firefly-cloud.com (Postfix) with ESMTP id C31031CC59F
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 08:57:22 +0000 (GMT)
Received: from localhost (localhost [127.0.0.1])
 by spamshield.firefly-cloud.com (Postfix) with ESMTP id C12661CC5E3
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 08:57:22 +0000 (GMT)
X-Virus-Scanned: by SpamTitan at eu-west-1.compute.internal
Received: from spamshield.firefly-cloud.com (localhost [127.0.0.1])
 by spamshield.firefly-cloud.com (Postfix) with ESMTP id AE6451CC5A6
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 08:57:21 +0000 (GMT)
Authentication-Results: spamshield.firefly-cloud.com; none
Received: from fireflyinternet.com (unknown [77.68.26.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by spamshield.firefly-cloud.com (Postfix) with ESMTPS id EC9E71CC59F
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 08:57:19 +0000 (GMT)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20144920-1500050 
 for multiple; Fri, 07 Feb 2020 08:57:08 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 Feb 2020 08:57:08 +0000
Message-Id: <20200207085708.2711257-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200206204915.2636606-3-chris@chris-wilson.co.uk>
References: <20200206204915.2636606-3-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/gt: Protect execlists_hold/unhold
 from new waiters
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

As we may add new waiters to a request as it is being run, we need to
mark the list iteration as being safe for concurrent addition.

v2: Mika spotted that we used the same trick for signalers_list, so warn
the compiler about the lockless walk there as well.

Fixes: 32ff621fd744 ("drm/i915/gt: Allow temporary suspension of inflight requests")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c   | 11 ++++++++---
 drivers/gpu/drm/i915/i915_scheduler.c |  2 +-
 2 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index b350e01d86d2..ed1e4d883d47 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1620,6 +1620,11 @@ last_active(const struct intel_engine_execlists *execlists)
 				     &(rq__)->sched.waiters_list, \
 				     wait_link)
 
+#define for_each_signaler(p__, rq__) \
+	list_for_each_entry_lockless(p__, \
+				     &(rq__)->sched.signalers_list, \
+				     signal_link)
+
 static void defer_request(struct i915_request *rq, struct list_head * const pl)
 {
 	LIST_HEAD(list);
@@ -2378,7 +2383,7 @@ static void __execlists_hold(struct i915_request *rq)
 		list_move_tail(&rq->sched.link, &rq->engine->active.hold);
 		i915_request_set_hold(rq);
 
-		list_for_each_entry(p, &rq->sched.waiters_list, wait_link) {
+		for_each_waiter(p, rq) {
 			struct i915_request *w =
 				container_of(p->waiter, typeof(*w), sched);
 
@@ -2464,7 +2469,7 @@ static bool hold_request(const struct i915_request *rq)
 	 * If one of our ancestors is on hold, we must also be on hold,
 	 * otherwise we will bypass it and execute before it.
 	 */
-	list_for_each_entry(p, &rq->sched.signalers_list, signal_link) {
+	for_each_signaler(p, rq) {
 		const struct i915_request *s =
 			container_of(p->signaler, typeof(*s), sched);
 
@@ -2496,7 +2501,7 @@ static void __execlists_unhold(struct i915_request *rq)
 		RQ_TRACE(rq, "hold release\n");
 
 		/* Also release any children on this engine that are ready */
-		list_for_each_entry(p, &rq->sched.waiters_list, wait_link) {
+		for_each_waiter(p, rq) {
 			struct i915_request *w =
 				container_of(p->waiter, typeof(*w), sched);
 
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 9cbd31443eb0..a9666df1d842 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -432,7 +432,7 @@ bool __i915_sched_node_add_dependency(struct i915_sched_node *node,
 		    !node_started(signal))
 			node->flags |= I915_SCHED_HAS_SEMAPHORE_CHAIN;
 
-		list_add(&dep->signal_link, &node->signalers_list);
+		list_add_rcu(&dep->signal_link, &node->signalers_list);
 		list_add_rcu(&dep->wait_link, &signal->waiters_list);
 
 		/*
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
