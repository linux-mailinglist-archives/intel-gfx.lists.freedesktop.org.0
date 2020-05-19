Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2C31D9017
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 08:32:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B73A6E503;
	Tue, 19 May 2020 06:32:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 286576E4F3
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2020 06:31:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21237971-1500050 
 for multiple; Tue, 19 May 2020 07:31:28 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 May 2020 07:31:20 +0100
Message-Id: <20200519063123.20673-9-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200519063123.20673-1-chris@chris-wilson.co.uk>
References: <20200519063123.20673-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/12] drm/i915/gt: Incorporate the virtual
 engine into timeslicing
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

It was quite the oversight to only factor in the normal queue to decide
the timeslicing switch priority. By leaving out the next virtual request
from the priority decision, we would not timeslice the current engine if
there was an available virtual request.

Testcase: igt/gem_exec_balancer/sliced
Fixes: 3df2deed411e ("drm/i915/execlists: Enable timeslice on partial virtual engine dequeue")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 30 +++++++++++++++++++++++------
 1 file changed, 24 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 35e7ae3c049c..42cb0cae2845 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1898,7 +1898,8 @@ static void defer_active(struct intel_engine_cs *engine)
 
 static bool
 need_timeslice(const struct intel_engine_cs *engine,
-	       const struct i915_request *rq)
+	       const struct i915_request *rq,
+	       const struct rb_node *rb)
 {
 	int hint;
 
@@ -1906,6 +1907,24 @@ need_timeslice(const struct intel_engine_cs *engine,
 		return false;
 
 	hint = engine->execlists.queue_priority_hint;
+
+	if (rb) {
+		const struct virtual_engine *ve =
+			rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
+		const struct intel_engine_cs *inflight =
+			intel_context_inflight(&ve->context);
+
+		if (!inflight || inflight == engine) {
+			struct i915_request *next;
+
+			rcu_read_lock();
+			next = READ_ONCE(ve->request);
+			if (next)
+				hint = max(hint, rq_prio(next));
+			rcu_read_unlock();
+		}
+	}
+
 	if (!list_is_last(&rq->sched.link, &engine->active.requests))
 		hint = max(hint, rq_prio(list_next_entry(rq, sched.link)));
 
@@ -1980,10 +1999,9 @@ static void set_timeslice(struct intel_engine_cs *engine)
 	set_timer_ms(&engine->execlists.timer, duration);
 }
 
-static void start_timeslice(struct intel_engine_cs *engine)
+static void start_timeslice(struct intel_engine_cs *engine, int prio)
 {
 	struct intel_engine_execlists *execlists = &engine->execlists;
-	const int prio = queue_prio(execlists);
 	unsigned long duration;
 
 	if (!intel_engine_has_timeslices(engine))
@@ -2143,7 +2161,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			__unwind_incomplete_requests(engine);
 
 			last = NULL;
-		} else if (need_timeslice(engine, last) &&
+		} else if (need_timeslice(engine, last, rb) &&
 			   timeslice_expired(execlists, last)) {
 			if (i915_request_completed(last)) {
 				tasklet_hi_schedule(&execlists->tasklet);
@@ -2191,7 +2209,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 				 * Even if ELSP[1] is occupied and not worthy
 				 * of timeslices, our queue might be.
 				 */
-				start_timeslice(engine);
+				start_timeslice(engine, queue_prio(execlists));
 				return;
 			}
 		}
@@ -2226,7 +2244,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 
 			if (last && !can_merge_rq(last, rq)) {
 				spin_unlock(&ve->base.active.lock);
-				start_timeslice(engine);
+				start_timeslice(engine, rq_prio(rq));
 				return; /* leave this for another sibling */
 			}
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
