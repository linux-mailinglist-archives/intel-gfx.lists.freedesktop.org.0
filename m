Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 729CD21B66F
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 15:31:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44CFB6EC48;
	Fri, 10 Jul 2020 13:31:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AC716EC48
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 13:31:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21778033-1500050 
 for multiple; Fri, 10 Jul 2020 14:31:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 14:31:25 +0100
Message-Id: <20200710133125.30194-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <645e2d22-71eb-ece7-6a9c-c9870c88ba3d@linux.intel.com>
References: <645e2d22-71eb-ece7-6a9c-c9870c88ba3d@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] drm/i915/gt: Be defensive in the face of
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
v3: Customised user facing message for forced resets from internal errors.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2045
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com> #v1
---
 drivers/gpu/drm/i915/gt/intel_engine_types.h |  4 ++
 drivers/gpu/drm/i915/gt/intel_gt_irq.c       |  3 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c          | 45 +++++++++++++++++---
 3 files changed, 45 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 490af81bd6f3..8de92fd7d392 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -177,8 +177,12 @@ struct intel_engine_execlists {
 	 * the first error interrupt, record the EIR and schedule the tasklet.
 	 * In the tasklet, we process the pending CS events to ensure we have
 	 * the guilty request, and then reset the engine.
+	 *
+	 * Low 16b are used by HW, with the upper 16b used as the enabling mask.
+	 * Reserve the upper 16b for tracking internal errors.
 	 */
 	u32 error_interrupt;
+#define ERROR_CSB BIT(31)
 
 	/**
 	 * @reset_ccid: Active CCID [EXECLISTS_STATUS_HI] at the time of reset
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index e1964cf40fd6..b05da68e52f4 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -27,7 +27,8 @@ cs_irq_handler(struct intel_engine_cs *engine, u32 iir)
 	if (unlikely(iir & GT_CS_MASTER_ERROR_INTERRUPT)) {
 		u32 eir;
 
-		eir = ENGINE_READ(engine, RING_EIR);
+		/* Upper 16b are the enabling mask, rsvd for internal errors */
+		eir = ENGINE_READ(engine, RING_EIR) & GENMASK(15, 0);
 		ENGINE_TRACE(engine, "CS error: %x\n", eir);
 
 		/* Disable the error interrupt until after the reset */
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index fbcfeaed6441..cd4262cc96e2 100644
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
+				execlists->error_interrupt |= ERROR_CSB;
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
+				execlists->error_interrupt |= ERROR_CSB;
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
@@ -3117,9 +3141,18 @@ static void execlists_submission_tasklet(unsigned long data)
 	process_csb(engine);
 
 	if (unlikely(READ_ONCE(engine->execlists.error_interrupt))) {
+		const char *msg;
+
+		/* Generate the error message in priority wrt to the user! */
+		if (engine->execlists.error_interrupt & GENMASK(15, 0))
+			msg = "CS error"; /* thrown by a user payload */
+		else if (engine->execlists.error_interrupt & ERROR_CSB)
+			msg = "invalid CSB event";
+		else
+			msg = "internal error";
+
 		engine->execlists.error_interrupt = 0;
-		if (ENGINE_READ(engine, RING_ESR)) /* confirm the error */
-			execlists_reset(engine, "CS error");
+		execlists_reset(engine, msg);
 	}
 
 	if (!READ_ONCE(engine->execlists.pending[0]) || timeout) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
