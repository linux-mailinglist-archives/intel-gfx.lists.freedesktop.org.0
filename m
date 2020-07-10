Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D637B21B5D0
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 15:06:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E6DD6EA92;
	Fri, 10 Jul 2020 13:06:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C7F56EA92
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 13:06:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21777745-1500050 
 for multiple; Fri, 10 Jul 2020 14:05:50 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 14:05:48 +0100
Message-Id: <20200710130548.15955-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200710120717.32484-1-chris@chris-wilson.co.uk>
References: <20200710120717.32484-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/gt: Be defensive in the face of
 false CS events
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

If the HW throws a curve ball and reports either en event before it is
possible, or just a completely impossible event, we have to grin and
bear it. The first few events, we will likely not notice as we would be
expecting some event, but as soon as we stop expecting an event and yet
they still keep coming, then we enter into undefined state territory.
In which case, bail out, stop processing the events, and reset the
engine and our set of queued requests to recover.

The sporadic hangs and warnings will continue to plague CI, but at least
system stability should not be compromised.

v2: Commentary and force the reset-on-error.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2045
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com> #v1
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 35 ++++++++++++++++++++++++-----
 1 file changed, 29 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index fbcfeaed6441..54cd943921a6 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2568,6 +2568,25 @@ static void process_csb(struct intel_engine_cs *engine)
 	if (unlikely(head == tail))
 		return;
 
+	/*
+	 * We will consume all events from HW, or at least pretend to.
+	 *
+	 * The sequence of events from the HW is deterministic, and derived
+	 * from our writes to the ELSP, with a smidgen of variability for
+	 * the arrival of the asynchronous requests wrt to the inflight
+	 * execution. If the HW sends an event that does not correspond with
+	 * the one we are expecting, we have to abandon all hope as we lose
+	 * all tracking of what the engine is actually executing. We will
+	 * only detect we are out of sequence with the HW when we get an
+	 * 'impossible' event because we have already drained our own
+	 * preemption/promotion queue. If this occurs, we know that we likely
+	 * lost track of execution earlier and must unwind and restart, the
+	 * simplest way is by stop processing the event queue and force the
+	 * engine to reset.
+	 */
+	execlists->csb_head = tail;
+	ENGINE_TRACE(engine, "cs-irq head=%d, tail=%d\n", head, tail);
+
 	/*
 	 * Hopefully paired with a wmb() in HW!
 	 *
@@ -2577,8 +2596,6 @@ static void process_csb(struct intel_engine_cs *engine)
 	 * we perform the READ_ONCE(*csb_write).
 	 */
 	rmb();
-
-	ENGINE_TRACE(engine, "cs-irq head=%d, tail=%d\n", head, tail);
 	do {
 		bool promote;
 
@@ -2613,6 +2630,11 @@ static void process_csb(struct intel_engine_cs *engine)
 		if (promote) {
 			struct i915_request * const *old = execlists->active;
 
+			if (GEM_WARN_ON(!*execlists->pending)) {
+				engine->execlists.error_interrupt = ~0u;
+				break;
+			}
+
 			ring_set_paused(engine, 0);
 
 			/* Point active to the new ELSP; prevent overwriting */
@@ -2635,7 +2657,10 @@ static void process_csb(struct intel_engine_cs *engine)
 
 			WRITE_ONCE(execlists->pending[0], NULL);
 		} else {
-			GEM_BUG_ON(!*execlists->active);
+			if (GEM_WARN_ON(!*execlists->active)) {
+				engine->execlists.error_interrupt = ~0u;
+				break;
+			}
 
 			/* port0 completed, advanced to port1 */
 			trace_ports(execlists, "completed", execlists->active);
@@ -2686,7 +2711,6 @@ static void process_csb(struct intel_engine_cs *engine)
 		}
 	} while (head != tail);
 
-	execlists->csb_head = head;
 	set_timeslice(engine);
 
 	/*
@@ -3118,8 +3142,7 @@ static void execlists_submission_tasklet(unsigned long data)
 
 	if (unlikely(READ_ONCE(engine->execlists.error_interrupt))) {
 		engine->execlists.error_interrupt = 0;
-		if (ENGINE_READ(engine, RING_ESR)) /* confirm the error */
-			execlists_reset(engine, "CS error");
+		execlists_reset(engine, "CS error");
 	}
 
 	if (!READ_ONCE(engine->execlists.pending[0]) || timeout) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
