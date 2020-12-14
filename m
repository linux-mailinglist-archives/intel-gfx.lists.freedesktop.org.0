Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 117632D95FF
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 11:10:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 712856E2DF;
	Mon, 14 Dec 2020 10:10:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96E1F6E288
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 10:10:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23317874-1500050 
 for multiple; Mon, 14 Dec 2020 10:10:01 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Dec 2020 10:09:48 +0000
Message-Id: <20201214100949.11387-68-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201214100949.11387-1-chris@chris-wilson.co.uk>
References: <20201214100949.11387-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 68/69] drm/i915/gt: Skip over completed active
 execlists, again
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>,
 Chris Wilson <ickle@kabylake.alporthouse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <ickle@kabylake.alporthouse.com>

Now that we are careful to always force-restore contexts upon rewinding
(where necessary), we can restore our optimisation to skip over
completed active execlists when dequeuing.

Referenecs: 35f3fd8182ba ("drm/i915/execlists: Workaround switching back to a completed context")
References: 8ab3a3812aa9 ("drm/i915/gt: Incrementally check for rewinding")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 .../drm/i915/gt/intel_execlists_submission.c  | 31 +++++++++----------
 1 file changed, 15 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index ed3b574f4547..442621efa2ff 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -1985,12 +1985,20 @@ static void set_preempt_timeout(struct intel_engine_cs *engine,
 		     active_preempt_timeout(engine, rq));
 }
 
+static bool completed(const struct i915_request *rq)
+{
+	if (i915_request_has_sentinel(rq))
+		return false;
+
+	return i915_request_completed(rq);
+}
+
 static void execlists_dequeue(struct intel_engine_cs *engine)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
 	struct i915_request **port = execlists->pending;
 	struct i915_request ** const last_port = port + execlists->port_mask;
-	struct i915_request *last = *execlists->active;
+	struct i915_request *last, * const *active;
 	struct list_head *free = NULL;
 	struct virtual_engine *ve;
 	struct rb_node *rb;
@@ -2028,21 +2036,13 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 * i.e. we will retrigger preemption following the ack in case
 	 * of trouble.
 	 *
-	 * In theory we can skip over completed contexts that have not
-	 * yet been processed by events (as those events are in flight):
-	 *
-	 * while ((last = *active) && i915_request_completed(last))
-	 *	active++;
-	 *
-	 * However, the GPU cannot handle this as it will ultimately
-	 * find itself trying to jump back into a context it has just
-	 * completed and barf.
 	 */
+	active = execlists->active;
+	while ((last = *active) && completed(last))
+		active++;
 
 	if (last) {
-		if (i915_request_completed(last)) {
-			goto check_secondary;
-		} else if (need_preempt(engine, last)) {
+		if (need_preempt(engine, last)) {
 			ENGINE_TRACE(engine,
 				     "preempting last=%llx:%llu, dl=%llu, prio=%d\n",
 				     last->fence.context,
@@ -2104,7 +2104,6 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			 * we hopefully coalesce several updates into a single
 			 * submission.
 			 */
-check_secondary:
 			if (!list_is_last(&last->sched.link,
 					  &engine->active.requests)) {
 				/*
@@ -2293,7 +2292,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 * of ordered contexts.
 	 */
 	if (submit &&
-	    memcmp(execlists->active,
+	    memcmp(active,
 		   execlists->pending,
 		   (port - execlists->pending) * sizeof(*port))) {
 		*port = NULL;
@@ -2301,7 +2300,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			execlists_schedule_in(*port, port - execlists->pending);
 
 		WRITE_ONCE(execlists->yield, -1);
-		set_preempt_timeout(engine, *execlists->active);
+		set_preempt_timeout(engine, *active);
 		execlists_submit_ports(engine);
 	} else {
 		ring_set_paused(engine, 0);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
