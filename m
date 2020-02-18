Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AF9163301
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 21:23:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 635806EA80;
	Tue, 18 Feb 2020 20:23:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50EDF6EA80
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 20:23:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20268768-1500050 
 for multiple; Tue, 18 Feb 2020 20:23:02 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Feb 2020 20:23:02 +0000
Message-Id: <20200218202302.1326399-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Protect signaler walk with RCU
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

While we know that the waiters cannot disappear as we walk our list
(only that they might be added), the same cannot be said for our
signalers as they may be completed by the HW and retired as we process
this request. Ergo we need to use rcu to protect the list iteration and
remember to mark up the list_del_rcu.

Fixes: 793c22617367 ("drm/i915/gt: Protect execlists_hold/unhold from new waiters")
Fixes: 32ff621fd744 ("drm/i915/gt: Allow temporary suspension of inflight requests")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c   | 16 ++++++++++------
 drivers/gpu/drm/i915/i915_scheduler.c |  4 ++--
 2 files changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index ba31cbe8c68e..47561dc29304 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1668,9 +1668,9 @@ last_active(const struct intel_engine_execlists *execlists)
 				     wait_link)
 
 #define for_each_signaler(p__, rq__) \
-	list_for_each_entry_lockless(p__, \
-				     &(rq__)->sched.signalers_list, \
-				     signal_link)
+	list_for_each_entry_rcu(p__, \
+				&(rq__)->sched.signalers_list, \
+				signal_link)
 
 static void defer_request(struct i915_request *rq, struct list_head * const pl)
 {
@@ -2533,11 +2533,13 @@ static bool execlists_hold(struct intel_engine_cs *engine,
 static bool hold_request(const struct i915_request *rq)
 {
 	struct i915_dependency *p;
+	bool result = false;
 
 	/*
 	 * If one of our ancestors is on hold, we must also be on hold,
 	 * otherwise we will bypass it and execute before it.
 	 */
+	rcu_read_lock();
 	for_each_signaler(p, rq) {
 		const struct i915_request *s =
 			container_of(p->signaler, typeof(*s), sched);
@@ -2545,11 +2547,13 @@ static bool hold_request(const struct i915_request *rq)
 		if (s->engine != rq->engine)
 			continue;
 
-		if (i915_request_on_hold(s))
-			return true;
+		result = i915_request_on_hold(s);
+		if (result)
+			break;
 	}
+	rcu_read_unlock();
 
-	return false;
+	return result;
 }
 
 static void __execlists_unhold(struct i915_request *rq)
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index e19a37a83397..4e48757e9de6 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -486,7 +486,7 @@ void i915_sched_node_fini(struct i915_sched_node *node)
 	list_for_each_entry_safe(dep, tmp, &node->signalers_list, signal_link) {
 		GEM_BUG_ON(!list_empty(&dep->dfs_link));
 
-		list_del(&dep->wait_link);
+		list_del_rcu(&dep->wait_link);
 		if (dep->flags & I915_DEPENDENCY_ALLOC)
 			i915_dependency_free(dep);
 	}
@@ -497,7 +497,7 @@ void i915_sched_node_fini(struct i915_sched_node *node)
 		GEM_BUG_ON(dep->signaler != node);
 		GEM_BUG_ON(!list_empty(&dep->dfs_link));
 
-		list_del(&dep->signal_link);
+		list_del_rcu(&dep->signal_link);
 		if (dep->flags & I915_DEPENDENCY_ALLOC)
 			i915_dependency_free(dep);
 	}
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
