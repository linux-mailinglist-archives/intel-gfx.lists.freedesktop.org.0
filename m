Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 736C518D62C
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 18:48:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC8BB6E1BD;
	Fri, 20 Mar 2020 17:48:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 311346E1BC
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 17:48:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20635139-1500050 
 for multiple; Fri, 20 Mar 2020 17:47:46 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Mar 2020 17:47:45 +0000
Message-Id: <20200320174745.19995-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200320130159.3922-2-chris@chris-wilson.co.uk>
References: <20200320130159.3922-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Pull tasklet interrupt-bh
 local to direct submission
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
 drivers/gpu/drm/i915/gt/intel_lrc.c    | 44 ++++++++++++++++++++------
 drivers/gpu/drm/i915/gt/selftest_lrc.c |  2 +-
 2 files changed, 36 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index f09dd87324b9..dceb65a0088f 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2884,17 +2884,17 @@ static void queue_request(struct intel_engine_cs *engine,
 	set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
 }
 
-static void __submit_queue_imm(struct intel_engine_cs *engine)
+static bool pending_csb(const struct intel_engine_execlists *el)
 {
-	struct intel_engine_execlists * const execlists = &engine->execlists;
+	return READ_ONCE(*el->csb_write) != READ_ONCE(el->csb_head);
+}
 
-	if (reset_in_progress(execlists))
-		return; /* defer until we restart the engine following reset */
+static bool skip_lite_restore(struct intel_engine_execlists *el,
+			      const struct i915_request *rq)
+{
+	struct i915_request *inflight = execlists_active(el);
 
-	if (execlists->tasklet.func == execlists_submission_tasklet)
-		__execlists_submission_tasklet(engine);
-	else
-		tasklet_hi_schedule(&execlists->tasklet);
+	return inflight && inflight->context == rq->context;
 }
 
 static void submit_queue(struct intel_engine_cs *engine,
@@ -2905,8 +2905,34 @@ static void submit_queue(struct intel_engine_cs *engine,
 	if (rq_prio(rq) <= execlists->queue_priority_hint)
 		return;
 
+	if (reset_in_progress(execlists))
+		return; /* defer until we restart the engine following reset */
+
+	/*
+	 * Suppress immediate lite-restores, leave that to the tasklet.
+	 *
+	 * However, we leave the queue_priority_hint unset so that if we do
+	 * submit a second context, we push that into ELSP[1] immediately.
+	 */
+	if (skip_lite_restore(execlists, rq))
+		return;
+
+	/* Hopefully we clear execlists->pending[] to let us through */
+	if (execlists->pending[0] && tasklet_trylock(&execlists->tasklet)) {
+		process_csb(engine);
+		tasklet_unlock(&execlists->tasklet);
+		if (skip_lite_restore(execlists, rq))
+			return;
+	}
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
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 6f06ba750a0a..c5c4b07a7d5f 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -1028,7 +1028,7 @@ static int live_timeslice_rewind(void *arg)
 		if (IS_ERR(rq[1]))
 			goto err;
 
-		err = wait_for_submit(engine, rq[1], HZ / 2);
+		err = wait_for_submit(engine, rq[0], HZ / 2);
 		if (err) {
 			pr_err("%s: failed to submit first context\n",
 			       engine->name);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
