Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF1E199347
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 12:17:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B6BF6E5CE;
	Tue, 31 Mar 2020 10:17:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 105CF6E5CE
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 10:17:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20750093-1500050 
 for multiple; Tue, 31 Mar 2020 11:16:36 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Mar 2020 11:16:35 +0100
Message-Id: <20200331101635.16897-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200331101635.16897-1-chris@chris-wilson.co.uk>
References: <20200331101635.16897-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Yield the timeslice if caught
 waiting on a user semaphore
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
Cc: Kenneth Graunke <kenneth@whitecape.org>,
 Chris Wilson <chris@chris-wilson.co.uk>
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

Fixes: 8ee36e048c98 ("drm/i915/execlists: Minimalistic timeslicing")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Kenneth Graunke <kenneth@whitecape.org>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    |  6 +++
 drivers/gpu/drm/i915/gt/intel_engine_types.h |  9 +++++
 drivers/gpu/drm/i915/gt/intel_gt_irq.c       | 13 ++++++-
 drivers/gpu/drm/i915/gt/intel_lrc.c          | 40 +++++++++++++++++---
 drivers/gpu/drm/i915/gt/selftest_lrc.c       | 15 +++-----
 drivers/gpu/drm/i915/i915_reg.h              |  1 +
 6 files changed, 67 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index dff0bbe9e1a6..6ac8d0022deb 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1291,6 +1291,12 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
 
 	if (engine->id == RENDER_CLASS && IS_GEN_RANGE(dev_priv, 4, 7))
 		drm_printf(m, "\tCCID: 0x%08x\n", ENGINE_READ(engine, CCID));
+	if (HAS_EXECLISTS(dev_priv)) {
+		drm_printf(m, "\tEL_STAT_HI: 0x%08x\n",
+			   ENGINE_READ(engine, RING_EXECLIST_STATUS_HI));
+		drm_printf(m, "\tEL_STAT_LO: 0x%08x\n",
+			   ENGINE_READ(engine, RING_EXECLIST_STATUS_LO));
+	}
 	drm_printf(m, "\tRING_START: 0x%08x\n",
 		   ENGINE_READ(engine, RING_START));
 	drm_printf(m, "\tRING_HEAD:  0x%08x\n",
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 80cdde712842..ac283ab5d89c 100644
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
 	 * @error_interrupt: CS Master EIR
 	 *
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index f0e7fd95165a..875bd0392ffc 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -39,6 +39,13 @@ cs_irq_handler(struct intel_engine_cs *engine, u32 iir)
 		}
 	}
 
+	if (iir & GT_WAIT_SEMAPHORE_INTERRUPT) {
+		WRITE_ONCE(engine->execlists.yield,
+			   ENGINE_READ_FW(engine, RING_EXECLIST_STATUS_HI));
+		if (del_timer(&engine->execlists.timer))
+			tasklet = true;
+	}
+
 	if (iir & GT_CONTEXT_SWITCH_INTERRUPT)
 		tasklet = true;
 
@@ -228,7 +235,8 @@ void gen11_gt_irq_postinstall(struct intel_gt *gt)
 	const u32 irqs =
 		GT_CS_MASTER_ERROR_INTERRUPT |
 		GT_RENDER_USER_INTERRUPT |
-		GT_CONTEXT_SWITCH_INTERRUPT;
+		GT_CONTEXT_SWITCH_INTERRUPT |
+		GT_WAIT_SEMAPHORE_INTERRUPT;
 	struct intel_uncore *uncore = gt->uncore;
 	const u32 dmask = irqs << 16 | irqs;
 	const u32 smask = irqs << 16;
@@ -366,7 +374,8 @@ void gen8_gt_irq_postinstall(struct intel_gt *gt)
 	const u32 irqs =
 		GT_CS_MASTER_ERROR_INTERRUPT |
 		GT_RENDER_USER_INTERRUPT |
-		GT_CONTEXT_SWITCH_INTERRUPT;
+		GT_CONTEXT_SWITCH_INTERRUPT |
+		GT_WAIT_SEMAPHORE_INTERRUPT;
 	const u32 gt_interrupts[] = {
 		irqs << GEN8_RCS_IRQ_SHIFT | irqs << GEN8_BCS_IRQ_SHIFT,
 		irqs << GEN8_VCS0_IRQ_SHIFT | irqs << GEN8_VCS1_IRQ_SHIFT,
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 9fff4e02cee6..ffdda3f5b24c 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1768,7 +1768,8 @@ static void defer_active(struct intel_engine_cs *engine)
 }
 
 static bool
-need_timeslice(struct intel_engine_cs *engine, const struct i915_request *rq)
+need_timeslice(const struct intel_engine_cs *engine,
+	       const struct i915_request *rq)
 {
 	int hint;
 
@@ -1782,6 +1783,31 @@ need_timeslice(struct intel_engine_cs *engine, const struct i915_request *rq)
 	return hint >= effective_prio(rq);
 }
 
+static bool
+timeslice_yield(const struct intel_engine_execlists *el,
+		const struct i915_request *rq)
+{
+	/*
+	 * Once bitten, forever smitten!
+	 *
+	 * If the active context ever busy-waited on a semaphore,
+	 * it will be treated as a hog until the end of its timeslice.
+	 * The HW only sends an interrupt on the first miss, and we
+	 * do know if that semaphore has been signaled, or even if it
+	 * is now stuck on another semaphore. Play safe, yield if it
+	 * might be stuck -- it will be given a fresh timeslice in
+	 * the near future.
+	 */
+	return upper_32_bits(rq->context->lrc_desc) == READ_ONCE(el->yield);
+}
+
+static bool
+timeslice_expired(const struct intel_engine_execlists *el,
+		  const struct i915_request *rq)
+{
+	return timer_expired(&el->timer) || timeslice_yield(el, rq);
+}
+
 static int
 switch_prio(struct intel_engine_cs *engine, const struct i915_request *rq)
 {
@@ -1797,8 +1823,7 @@ timeslice(const struct intel_engine_cs *engine)
 	return READ_ONCE(engine->props.timeslice_duration_ms);
 }
 
-static unsigned long
-active_timeslice(const struct intel_engine_cs *engine)
+static unsigned long active_timeslice(const struct intel_engine_cs *engine)
 {
 	const struct intel_engine_execlists *execlists = &engine->execlists;
 	const struct i915_request *rq = *execlists->active;
@@ -1975,18 +2000,19 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 
 			last = NULL;
 		} else if (need_timeslice(engine, last) &&
-			   timer_expired(&engine->execlists.timer)) {
+			   timeslice_expired(execlists, last)) {
 			if (i915_request_completed(last)) {
 				tasklet_hi_schedule(&execlists->tasklet);
 				return;
 			}
 
 			ENGINE_TRACE(engine,
-				     "expired last=%llx:%lld, prio=%d, hint=%d\n",
+				     "expired last=%llx:%lld, prio=%d, hint=%d, yield?=%s\n",
 				     last->fence.context,
 				     last->fence.seqno,
 				     last->sched.attr.priority,
-				     execlists->queue_priority_hint);
+				     execlists->queue_priority_hint,
+				     yesno(timeslice_yield(execlists, last)));
 
 			ring_set_paused(engine, 1);
 			defer_active(engine);
@@ -2247,6 +2273,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		}
 		clear_ports(port + 1, last_port - port);
 
+		WRITE_ONCE(execlists->yield, -1);
 		execlists_submit_ports(engine);
 		set_preempt_timeout(engine, *active);
 	} else {
@@ -4509,6 +4536,7 @@ logical_ring_default_irqs(struct intel_engine_cs *engine)
 	engine->irq_enable_mask = GT_RENDER_USER_INTERRUPT << shift;
 	engine->irq_keep_mask = GT_CONTEXT_SWITCH_INTERRUPT << shift;
 	engine->irq_keep_mask |= GT_CS_MASTER_ERROR_INTERRUPT << shift;
+	engine->irq_keep_mask |= GT_WAIT_SEMAPHORE_INTERRUPT << shift;
 }
 
 static void rcs_submission_override(struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index d3e163c93e22..88fb6f39b881 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -1070,15 +1070,12 @@ static int live_timeslice_rewind(void *arg)
 		GEM_BUG_ON(!timer_pending(&engine->execlists.timer));
 
 		/* ELSP[] = { { A:rq1, A:rq2 }, { B:rq1 } } */
-		GEM_BUG_ON(!i915_request_is_active(rq[A1]));
-		GEM_BUG_ON(!i915_request_is_active(rq[A2]));
-		GEM_BUG_ON(!i915_request_is_active(rq[B1]));
-
-		/* Wait for the timeslice to kick in */
-		del_timer(&engine->execlists.timer);
-		tasklet_hi_schedule(&engine->execlists.tasklet);
-		intel_engine_flush_submission(engine);
-
+		if (i915_request_is_active(rq[A2])) {
+			/* Wait for the timeslice to kick in */
+			del_timer(&engine->execlists.timer);
+			tasklet_hi_schedule(&engine->execlists.tasklet);
+			intel_engine_flush_submission(engine);
+		}
 		/* -> ELSP[] = { { A:rq1 }, { B:rq1 } } */
 		GEM_BUG_ON(!i915_request_is_active(rq[A1]));
 		GEM_BUG_ON(!i915_request_is_active(rq[B1]));
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 17484345cb80..f402a9f78969 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3094,6 +3094,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define GT_BSD_CS_ERROR_INTERRUPT		(1 << 15)
 #define GT_BSD_USER_INTERRUPT			(1 << 12)
 #define GT_RENDER_L3_PARITY_ERROR_INTERRUPT_S1	(1 << 11) /* hsw+; rsvd on snb, ivb, vlv */
+#define GT_WAIT_SEMAPHORE_INTERRUPT		REG_BIT(11) /* bdw+ */
 #define GT_CONTEXT_SWITCH_INTERRUPT		(1 <<  8)
 #define GT_RENDER_L3_PARITY_ERROR_INTERRUPT	(1 <<  5) /* !snb */
 #define GT_RENDER_PIPECTL_NOTIFY_INTERRUPT	(1 <<  4)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
