Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6D118CE60
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 14:02:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16DFA6EB2D;
	Fri, 20 Mar 2020 13:02:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5BDB6EB2D
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 13:02:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20630755-1500050 
 for multiple; Fri, 20 Mar 2020 13:02:00 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Mar 2020 13:01:57 +0000
Message-Id: <20200320130159.3922-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200320130159.3922-1-chris@chris-wilson.co.uk>
References: <20200320130159.3922-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/execlists: Pull tasklet
 interrupt-bh local to direct submission
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

We dropped calling process_csb prior to handling direct submission in
order to avoid the nesting of spinlocks and lift process_csb() and the
majority of the tasklet out of irq-off. However, we do want to avoid
ksoftirqd latency in the fast path, so try and pull the interrupt-bh
local to direct submission if we can acquire the tasklet's lock.

v2: Tweak the balance to avoid over submitting lite-restores

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Francisco Jerez <currojerez@riseup.net>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 40 +++++++++++++++++++++--------
 1 file changed, 29 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index f09dd87324b9..0d9c6ea4adaa 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2884,29 +2884,47 @@ static void queue_request(struct intel_engine_cs *engine,
 	set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
 }
 
-static void __submit_queue_imm(struct intel_engine_cs *engine)
+static bool pending_csb(const struct intel_engine_execlists *el)
 {
-	struct intel_engine_execlists * const execlists = &engine->execlists;
-
-	if (reset_in_progress(execlists))
-		return; /* defer until we restart the engine following reset */
-
-	if (execlists->tasklet.func == execlists_submission_tasklet)
-		__execlists_submission_tasklet(engine);
-	else
-		tasklet_hi_schedule(&execlists->tasklet);
+	return READ_ONCE(*el->csb_write) != READ_ONCE(el->csb_head);
 }
 
 static void submit_queue(struct intel_engine_cs *engine,
 			 const struct i915_request *rq)
 {
 	struct intel_engine_execlists *execlists = &engine->execlists;
+	struct i915_request *inflight;
 
 	if (rq_prio(rq) <= execlists->queue_priority_hint)
 		return;
 
+	if (reset_in_progress(execlists))
+		return; /* defer until we restart the engine following reset */
+
+	/* Hopefully we clear execlists->pending[] to let us through */
+	if (execlists->pending[0] && tasklet_trylock(&execlists->tasklet)) {
+		process_csb(engine);
+		tasklet_unlock(&execlists->tasklet);
+	}
+
+	/*
+	 * Suppress immediate lite-restores, leave that to the tasklet.
+	 *
+	 * However, we leave the queue_priority_hint unset so that if we do
+	 * submit a second context, we push that into ELSP[1] immediately.
+	 */
+	inflight = execlists_active(&engine->execlists);
+	if (inflight && inflight->context == rq->context)
+		return;
+
 	execlists->queue_priority_hint = rq_prio(rq);
-	__submit_queue_imm(engine);
+	__execlists_submission_tasklet(engine);
+
+	/* Try and pull an interrupt-bh queued on another CPU to here */
+	if (pending_csb(execlists) && tasklet_trylock(&execlists->tasklet)) {
+		process_csb(engine);
+		tasklet_unlock(&execlists->tasklet);
+	}
 }
 
 static bool ancestor_on_hold(const struct intel_engine_cs *engine,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
