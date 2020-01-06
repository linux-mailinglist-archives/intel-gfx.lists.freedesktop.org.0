Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC5013115A
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2020 12:21:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99DEC6E25F;
	Mon,  6 Jan 2020 11:21:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB5546E25F
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jan 2020 11:21:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19783186-1500050 
 for multiple; Mon, 06 Jan 2020 11:21:27 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Jan 2020 11:21:26 +0000
Message-Id: <20200106112126.2515523-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc1
In-Reply-To: <20200106112126.2515523-1-chris@chris-wilson.co.uk>
References: <20200106112126.2515523-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Yield the timeslice if waiting
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
respond to a semaphore wait by yielding the timeslice (if we have
another process to yield to!)

The only real complication is that the interrupt is only generated for
the start of the semaphore wait, and is asynchronous to our
process_csb() -- that is we may not have registered the timeslice before
we see the interrupt. To ensure we don't miss a potential semaphore
(e.g. selftests/live_timeslice_preempt) we mark the interrupt and apply
it to the next timeslice regardless of whether it was active at the
time.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_irq.c | 31 ++++++++++++++------------
 drivers/gpu/drm/i915/gt/intel_lrc.c    | 17 ++++++++++----
 drivers/gpu/drm/i915/i915_gem.h        |  5 +++++
 drivers/gpu/drm/i915/i915_reg.h        |  1 +
 4 files changed, 36 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index f796bdf1ed30..15560d46e5f9 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -24,6 +24,12 @@ cs_irq_handler(struct intel_engine_cs *engine, u32 iir)
 {
 	bool tasklet = false;
 
+	if (iir & GT_WAIT_SEMAPHORE_INTERRUPT) {
+		set_bit(I915_TASKLET_YIELD, &engine->execlists.tasklet.state);
+		if (del_timer(&engine->execlists.timer))
+			tasklet = true;
+	}
+
 	if (iir & GT_CONTEXT_SWITCH_INTERRUPT)
 		tasklet = true;
 
@@ -210,7 +216,10 @@ void gen11_gt_irq_reset(struct intel_gt *gt)
 
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
@@ -357,21 +366,15 @@ void gen8_gt_irq_postinstall(struct intel_gt *gt)
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
index 42717d026349..0162ef7476ad 100644
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
 
@@ -1678,6 +1679,13 @@ need_timeslice(struct intel_engine_cs *engine, const struct i915_request *rq)
 	return hint >= effective_prio(rq);
 }
 
+static bool
+timeslice_expired(const struct intel_engine_cs *engine)
+{
+	return (timer_expired(&engine->execlists.timer) ||
+		test_bit(I915_TASKLET_YIELD, &engine->execlists.tasklet.state));
+}
+
 static int
 switch_prio(struct intel_engine_cs *engine, const struct i915_request *rq)
 {
@@ -1840,7 +1848,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			last->context->lrc_desc |= CTX_DESC_FORCE_RESTORE;
 			last = NULL;
 		} else if (need_timeslice(engine, last) &&
-			   timer_expired(&engine->execlists.timer)) {
+			   timeslice_expired(engine)) {
 			ENGINE_TRACE(engine,
 				     "expired last=%llx:%lld, prio=%d, hint=%d\n",
 				     last->fence.context,
@@ -2104,10 +2112,10 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 
 			goto skip_submit;
 		}
-
 		memset(port + 1, 0, (last_port - port) * sizeof(*port));
-		execlists_submit_ports(engine);
 
+		clear_bit(I915_TASKLET_YIELD, &execlists->tasklet.state);
+		execlists_submit_ports(engine);
 		set_preempt_timeout(engine);
 	} else {
 skip_submit:
@@ -3968,6 +3976,7 @@ logical_ring_default_irqs(struct intel_engine_cs *engine)
 
 	engine->irq_enable_mask = GT_RENDER_USER_INTERRUPT << shift;
 	engine->irq_keep_mask = GT_CONTEXT_SWITCH_INTERRUPT << shift;
+	engine->irq_keep_mask |= GT_WAIT_SEMAPHORE_INTERRUPT << shift;
 }
 
 static void rcs_submission_override(struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/i915_gem.h b/drivers/gpu/drm/i915/i915_gem.h
index 1753c84d6c0d..f67dcfe4c706 100644
--- a/drivers/gpu/drm/i915/i915_gem.h
+++ b/drivers/gpu/drm/i915/i915_gem.h
@@ -116,4 +116,9 @@ static inline bool __tasklet_is_scheduled(struct tasklet_struct *t)
 	return test_bit(TASKLET_STATE_SCHED, &t->state);
 }
 
+enum {
+	__TASKLET_STATE_LAST = TASKLET_STATE_RUN,
+	I915_TASKLET_YIELD,
+};
+
 #endif /* __I915_GEM_H__ */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index cf770793be54..787da4a770ed 100644
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
-- 
2.25.0.rc1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
