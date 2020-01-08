Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA2B133F8F
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 11:45:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CB026E1B4;
	Wed,  8 Jan 2020 10:45:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94BB16E1B3
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2020 10:45:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19806940-1500050 
 for multiple; Wed, 08 Jan 2020 10:45:40 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jan 2020 10:45:39 +0000
Message-Id: <20200108104539.3422768-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc1
In-Reply-To: <20200108104539.3422768-1-chris@chris-wilson.co.uk>
References: <20200108104539.3422768-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/gt: Yield the timeslice if waiting
 on a semaphore
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

If we find ourselves waiting on a MI_SEMAPHORE_WAIT, either within the
user batch or in our own preamble, the engine raises a
GT_WAIT_ON_SEMAPHORE interrupt. We can unmask that interrupt and so
respond to a semaphore wait by yielding the timeslice, if we have
another context to yield to!

The only real complication is that the interrupt is only generated for
the start of the semaphore wait, and is asynchronous to our
process_csb() -- that is, we may not have registered the timeslice before
we see the interrupt. To ensure we don't miss a potential semaphore
blocking forward progress (e.g. selftests/live_timeslice_preempt) we mark
the interrupt and apply it to the next timeslice regardless of whether it
was active at the time.

v2: We use semaphores in preempt-to-busy, within the timeslicing
implementation itself! Ergo, when we do insert a preemption due to an
expired timeslice, the new context may start with the missed semaphore
flagged by the retired context and be yielded, ad infinitum. To avoid
this, read the context id at the time of the semaphore interrupt and
only yield if that context is still active.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_types.h |  9 ++++++
 drivers/gpu/drm/i915/gt/intel_gt_irq.c       | 32 +++++++++++---------
 drivers/gpu/drm/i915/gt/intel_lrc.c          | 31 ++++++++++++++++---
 drivers/gpu/drm/i915/i915_reg.h              |  5 +++
 4 files changed, 59 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 00287515e7af..d146d2fbd42a 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -156,6 +156,15 @@ struct intel_engine_execlists {
 	 */
 	struct i915_priolist default_priolist;
 
+	/**
+	 * @yield: CCID at the time of the last semaphore-wait interrupt.
+	 *
+	 * Instead of leaving a semaphore busy-spinning on an engine, we would
+	 * like to switch to another ready context, i.e. yielding the semaphore
+	 * timeslice.
+	 */
+	u32 yield;
+
 	/**
 	 * @no_priolist: priority lists disabled
 	 */
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index f796bdf1ed30..6ae64a224b02 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -24,6 +24,13 @@ cs_irq_handler(struct intel_engine_cs *engine, u32 iir)
 {
 	bool tasklet = false;
 
+	if (iir & GT_WAIT_SEMAPHORE_INTERRUPT) {
+		WRITE_ONCE(engine->execlists.yield,
+			   ENGINE_READ_FW(engine, EXECLIST_CCID));
+		if (del_timer(&engine->execlists.timer))
+			tasklet = true;
+	}
+
 	if (iir & GT_CONTEXT_SWITCH_INTERRUPT)
 		tasklet = true;
 
@@ -210,7 +217,10 @@ void gen11_gt_irq_reset(struct intel_gt *gt)
 
 void gen11_gt_irq_postinstall(struct intel_gt *gt)
 {
-	const u32 irqs = GT_RENDER_USER_INTERRUPT | GT_CONTEXT_SWITCH_INTERRUPT;
+	const u32 irqs =
+		GT_RENDER_USER_INTERRUPT |
+		GT_CONTEXT_SWITCH_INTERRUPT |
+		GT_WAIT_SEMAPHORE_INTERRUPT;
 	struct intel_uncore *uncore = gt->uncore;
 	const u32 dmask = irqs << 16 | irqs;
 	const u32 smask = irqs << 16;
@@ -357,21 +367,15 @@ void gen8_gt_irq_postinstall(struct intel_gt *gt)
 	struct intel_uncore *uncore = gt->uncore;
 
 	/* These are interrupts we'll toggle with the ring mask register */
+	const u32 irqs =
+		GT_RENDER_USER_INTERRUPT |
+		GT_CONTEXT_SWITCH_INTERRUPT |
+		GT_WAIT_SEMAPHORE_INTERRUPT;
 	u32 gt_interrupts[] = {
-		(GT_RENDER_USER_INTERRUPT << GEN8_RCS_IRQ_SHIFT |
-		 GT_CONTEXT_SWITCH_INTERRUPT << GEN8_RCS_IRQ_SHIFT |
-		 GT_RENDER_USER_INTERRUPT << GEN8_BCS_IRQ_SHIFT |
-		 GT_CONTEXT_SWITCH_INTERRUPT << GEN8_BCS_IRQ_SHIFT),
-
-		(GT_RENDER_USER_INTERRUPT << GEN8_VCS0_IRQ_SHIFT |
-		 GT_CONTEXT_SWITCH_INTERRUPT << GEN8_VCS0_IRQ_SHIFT |
-		 GT_RENDER_USER_INTERRUPT << GEN8_VCS1_IRQ_SHIFT |
-		 GT_CONTEXT_SWITCH_INTERRUPT << GEN8_VCS1_IRQ_SHIFT),
-
+		irqs << GEN8_RCS_IRQ_SHIFT | irqs << GEN8_BCS_IRQ_SHIFT,
+		irqs << GEN8_VCS0_IRQ_SHIFT | irqs << GEN8_VCS1_IRQ_SHIFT,
 		0,
-
-		(GT_RENDER_USER_INTERRUPT << GEN8_VECS_IRQ_SHIFT |
-		 GT_CONTEXT_SWITCH_INTERRUPT << GEN8_VECS_IRQ_SHIFT)
+		irqs << GEN8_VECS_IRQ_SHIFT,
 	};
 
 	gt->pm_ier = 0x0;
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index f825df1ba638..7cf2aade6b3b 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1662,7 +1662,8 @@ static void defer_active(struct intel_engine_cs *engine)
 }
 
 static bool
-need_timeslice(struct intel_engine_cs *engine, const struct i915_request *rq)
+need_timeslice(const struct intel_engine_cs *engine,
+	       const struct i915_request *rq)
 {
 	int hint;
 
@@ -1678,6 +1679,27 @@ need_timeslice(struct intel_engine_cs *engine, const struct i915_request *rq)
 	return hint >= effective_prio(rq);
 }
 
+static bool
+timeslice_expired(const struct intel_engine_cs *engine,
+		  const struct i915_request *rq)
+{
+	const struct intel_engine_execlists *el = &engine->execlists;
+
+	return (timer_expired(&el->timer) ||
+		/*
+		 * Once bitten, forever smitten!
+		 *
+		 * If the active context ever busy-waited on a semaphore,
+		 * it will be treated as a hog until the end of its timeslice.
+		 * The HW only sends an interrupt on the first miss, and we
+		 * do know if that semaphore has been signaled, or even if it
+		 * is now stuck on another semaphore. Play safe, yield if it
+		 * might be stuck -- it will be given a fresh timeslice in
+		 * the near future.
+		 */
+		upper_32_bits(rq->context->lrc_desc) == READ_ONCE(el->yield));
+}
+
 static int
 switch_prio(struct intel_engine_cs *engine, const struct i915_request *rq)
 {
@@ -1693,8 +1715,7 @@ timeslice(const struct intel_engine_cs *engine)
 	return READ_ONCE(engine->props.timeslice_duration_ms);
 }
 
-static unsigned long
-active_timeslice(const struct intel_engine_cs *engine)
+static unsigned long active_timeslice(const struct intel_engine_cs *engine)
 {
 	const struct i915_request *rq = *engine->execlists.active;
 
@@ -1845,7 +1866,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			last->context->lrc_desc |= CTX_DESC_FORCE_RESTORE;
 			last = NULL;
 		} else if (need_timeslice(engine, last) &&
-			   timer_expired(&engine->execlists.timer)) {
+			   timeslice_expired(engine, last)) {
 			ENGINE_TRACE(engine,
 				     "expired last=%llx:%lld, prio=%d, hint=%d\n",
 				     last->fence.context,
@@ -2111,6 +2132,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		}
 		clear_ports(port + 1, last_port - port);
 
+		WRITE_ONCE(execlists->yield, -1);
 		execlists_submit_ports(engine);
 		set_preempt_timeout(engine);
 	} else {
@@ -3972,6 +3994,7 @@ logical_ring_default_irqs(struct intel_engine_cs *engine)
 
 	engine->irq_enable_mask = GT_RENDER_USER_INTERRUPT << shift;
 	engine->irq_keep_mask = GT_CONTEXT_SWITCH_INTERRUPT << shift;
+	engine->irq_keep_mask |= GT_WAIT_SEMAPHORE_INTERRUPT << shift;
 }
 
 static void rcs_submission_override(struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d90d7bf8d328..c0308682756b 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3105,6 +3105,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define GT_BSD_CS_ERROR_INTERRUPT		(1 << 15)
 #define GT_BSD_USER_INTERRUPT			(1 << 12)
 #define GT_RENDER_L3_PARITY_ERROR_INTERRUPT_S1	(1 << 11) /* hsw+; rsvd on snb, ivb, vlv */
+#define GT_WAIT_SEMAPHORE_INTERRUPT		(1 <<  11) /* bdw+ */
 #define GT_CONTEXT_SWITCH_INTERRUPT		(1 <<  8)
 #define GT_RENDER_L3_PARITY_ERROR_INTERRUPT	(1 <<  5) /* !snb */
 #define GT_RENDER_PIPECTL_NOTIFY_INTERRUPT	(1 <<  4)
@@ -4056,6 +4057,10 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   CCID_EN			BIT(0)
 #define   CCID_EXTENDED_STATE_RESTORE	BIT(2)
 #define   CCID_EXTENDED_STATE_SAVE	BIT(3)
+
+#define EXECLIST_STATUS(base)	_MMIO((base) + 0x234)
+#define EXECLIST_CCID(base)	_MMIO((base) + 0x238)
+
 /*
  * Notes on SNB/IVB/VLV context size:
  * - Power context is saved elsewhere (LLC or stolen)
-- 
2.25.0.rc1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
