Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2532517BF69
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 14:43:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 768116ED1D;
	Fri,  6 Mar 2020 13:43:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60C386ED1D
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 13:43:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20467737-1500050 
 for multiple; Fri, 06 Mar 2020 13:38:52 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Mar 2020 13:38:37 +0000
Message-Id: <20200306133852.3420322-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306133852.3420322-1-chris@chris-wilson.co.uk>
References: <20200306133852.3420322-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/17] drm/i915/execlists: Enable timeslice on
 partial virtual engine dequeue
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If we stop filling the ELSP due to an incompatible virtual engine
request, check if we should enable the timeslice on behalf of the queue.

This fixes the case where we are inspecting the last->next element when
we know that the last element is the last request in the execution queue,
and so decided we did not need to enable timeslicing despite the intent
to do so!

Fixes: 8ee36e048c98 ("drm/i915/execlists: Minimalistic timeslicing")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: <stable@vger.kernel.org> # v5.4+
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 29 ++++++++++++++++++-----------
 1 file changed, 18 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 13941d1c0a4a..a1d268880cfe 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1757,11 +1757,9 @@ need_timeslice(struct intel_engine_cs *engine, const struct i915_request *rq)
 	if (!intel_engine_has_timeslices(engine))
 		return false;
 
-	if (list_is_last(&rq->sched.link, &engine->active.requests))
-		return false;
-
-	hint = max(rq_prio(list_next_entry(rq, sched.link)),
-		   engine->execlists.queue_priority_hint);
+	hint = engine->execlists.queue_priority_hint;
+	if (!list_is_last(&rq->sched.link, &engine->active.requests))
+		hint = max(hint, rq_prio(list_next_entry(rq, sched.link)));
 
 	return hint >= effective_prio(rq);
 }
@@ -1803,6 +1801,18 @@ static void set_timeslice(struct intel_engine_cs *engine)
 	set_timer_ms(&engine->execlists.timer, active_timeslice(engine));
 }
 
+static void start_timeslice(struct intel_engine_cs *engine)
+{
+	struct intel_engine_execlists *execlists = &engine->execlists;
+
+	execlists->switch_priority_hint = execlists->queue_priority_hint;
+
+	if (timer_pending(&execlists->timer))
+		return;
+
+	set_timer_ms(&execlists->timer, timeslice(engine));
+}
+
 static void record_preemption(struct intel_engine_execlists *execlists)
 {
 	(void)I915_SELFTEST_ONLY(execlists->preempt_hang.count++);
@@ -1966,11 +1976,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 				 * Even if ELSP[1] is occupied and not worthy
 				 * of timeslices, our queue might be.
 				 */
-				if (!execlists->timer.expires &&
-				    need_timeslice(engine, last))
-					set_timer_ms(&execlists->timer,
-						     timeslice(engine));
-
+				start_timeslice(engine);
 				return;
 			}
 		}
@@ -2005,7 +2011,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 
 			if (last && !can_merge_rq(last, rq)) {
 				spin_unlock(&ve->base.active.lock);
-				return; /* leave this for another */
+				start_timeslice(engine);
+				return; /* leave this for another sibling */
 			}
 
 			ENGINE_TRACE(engine,
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
