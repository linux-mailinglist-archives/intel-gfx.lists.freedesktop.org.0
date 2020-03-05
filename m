Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B56417A092
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 08:36:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3BD26E14B;
	Thu,  5 Mar 2020 07:36:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2064B6E14B
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2020 07:36:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20449560-1500050 
 for multiple; Thu, 05 Mar 2020 07:35:31 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Mar 2020 07:35:31 +0000
Message-Id: <20200305073531.2594698-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Enable timeslice on partial
 virtual engine dequeue
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

If we stop filling the ELSP due to an incompatible virtual engine
request, check if we should enable the timeslice on behalf of the queue.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 21 ++++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 5da86a40434c..954bd4797482 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1802,6 +1802,20 @@ static void set_timeslice(struct intel_engine_cs *engine)
 	set_timer_ms(&engine->execlists.timer, active_timeslice(engine));
 }
 
+static void start_timeslice(struct intel_engine_cs *engine,
+			    struct i915_request *last)
+{
+	struct intel_engine_execlists *execlists = &engine->execlists;
+
+	/* As we are returning early, update the hint from the queue */
+	execlists->switch_priority_hint =
+		max(execlists->queue_priority_hint,
+		    execlists->switch_priority_hint);
+
+	if (!execlists->timer.expires && need_timeslice(engine, last))
+		set_timer_ms(&execlists->timer, timeslice(engine));
+}
+
 static void record_preemption(struct intel_engine_execlists *execlists)
 {
 	(void)I915_SELFTEST_ONLY(execlists->preempt_hang.count++);
@@ -1965,11 +1979,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 				 * Even if ELSP[1] is occupied and not worthy
 				 * of timeslices, our queue might be.
 				 */
-				if (!execlists->timer.expires &&
-				    need_timeslice(engine, last))
-					set_timer_ms(&execlists->timer,
-						     timeslice(engine));
-
+				start_timeslice(engine, last);
 				return;
 			}
 		}
@@ -2004,6 +2014,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 
 			if (last && !can_merge_rq(last, rq)) {
 				spin_unlock(&ve->base.active.lock);
+				start_timeslice(engine, last);
 				return; /* leave this for another */
 			}
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
