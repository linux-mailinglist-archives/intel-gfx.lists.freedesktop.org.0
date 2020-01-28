Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5809F14C1C0
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 21:43:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83E2A6F408;
	Tue, 28 Jan 2020 20:43:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D6186E11F
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 20:43:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20040616-1500050 
 for multiple; Tue, 28 Jan 2020 20:43:18 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Jan 2020 20:43:15 +0000
Message-Id: <20200128204318.4182039-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200128204318.4182039-1-chris@chris-wilson.co.uk>
References: <20200128204318.4182039-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/i915/gt: Hook up
 CS_MASTER_ERROR_INTERRUPT
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

Now that we have offline error capture and can reset an engine from
inside an atomic context while also preserving the GPU state for
post-mortem analysis, it is time to handle error interrupts thrown by
the command parser.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    |   8 +-
 drivers/gpu/drm/i915/gt/intel_engine_types.h |  10 ++
 drivers/gpu/drm/i915/gt/intel_gt.c           |   5 +
 drivers/gpu/drm/i915/gt/intel_gt_irq.c       |  27 ++-
 drivers/gpu/drm/i915/gt/intel_lrc.c          |  57 +++++--
 drivers/gpu/drm/i915/gt/selftest_lrc.c       | 170 +++++++++++++++++--
 drivers/gpu/drm/i915/i915_gpu_error.c        |   2 +
 drivers/gpu/drm/i915/i915_gpu_error.h        |   1 +
 drivers/gpu/drm/i915/i915_reg.h              |   5 +-
 9 files changed, 250 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 9b965d1f811d..39fe9a5b4820 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1293,8 +1293,14 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
 	}
 
 	if (INTEL_GEN(dev_priv) >= 6) {
-		drm_printf(m, "\tRING_IMR: %08x\n",
+		drm_printf(m, "\tRING_IMR:   0x%08x\n",
 			   ENGINE_READ(engine, RING_IMR));
+		drm_printf(m, "\tRING_ESR:   0x%08x\n",
+			   ENGINE_READ(engine, RING_ESR));
+		drm_printf(m, "\tRING_EMR:   0x%08x\n",
+			   ENGINE_READ(engine, RING_EMR));
+		drm_printf(m, "\tRING_EIR:   0x%08x\n",
+			   ENGINE_READ(engine, RING_EIR));
 	}
 
 	addr = intel_engine_get_active_head(engine);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 92be41a6903c..abd1de3b83a8 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -156,6 +156,16 @@ struct intel_engine_execlists {
 	 */
 	struct i915_priolist default_priolist;
 
+	/**
+	 * @error_interrupt: CS Master EIR
+	 *
+	 * The CS generates an interrupt when it detects an error. We capture
+	 * the first error interrupt, record the EIR and schedule the tasklet.
+	 * In the tasklet, we process the pending CS events to ensure we have
+	 * the guilty request, and then reset the engine.
+	 */
+	u32 error_interrupt;
+
 	/**
 	 * @no_priolist: priority lists disabled
 	 */
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 88b6c904607c..143268083135 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -455,6 +455,11 @@ static int __engines_record_defaults(struct intel_gt *gt)
 		if (!rq)
 			continue;
 
+		if (rq->fence.error) {
+			err = -EIO;
+			goto out;
+		}
+
 		GEM_BUG_ON(!test_bit(CONTEXT_ALLOC_BIT, &rq->context->flags));
 		state = rq->context->state;
 		if (!state)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index 7278b10e1a03..864efaf1eb37 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -24,6 +24,21 @@ cs_irq_handler(struct intel_engine_cs *engine, u32 iir)
 {
 	bool tasklet = false;
 
+	if (unlikely(iir & GT_CS_MASTER_ERROR_INTERRUPT)) {
+		u32 eir;
+
+		eir = ENGINE_READ(engine, RING_EIR);
+		ENGINE_TRACE(engine, "CS error: %x\n", eir);
+
+		/* Disable the error interrupt until after the reset */
+		if (likely(eir)) {
+			ENGINE_WRITE(engine, RING_EMR, ~0u);
+			ENGINE_WRITE(engine, RING_EIR, eir);
+			engine->execlists.error_interrupt = eir;
+			tasklet = true;
+		}
+	}
+
 	if (iir & GT_CONTEXT_SWITCH_INTERRUPT)
 		tasklet = true;
 
@@ -210,7 +225,10 @@ void gen11_gt_irq_reset(struct intel_gt *gt)
 
 void gen11_gt_irq_postinstall(struct intel_gt *gt)
 {
-	const u32 irqs = GT_RENDER_USER_INTERRUPT | GT_CONTEXT_SWITCH_INTERRUPT;
+	const u32 irqs =
+		GT_CS_MASTER_ERROR_INTERRUPT |
+		GT_RENDER_USER_INTERRUPT |
+		GT_CONTEXT_SWITCH_INTERRUPT;
 	struct intel_uncore *uncore = gt->uncore;
 	const u32 dmask = irqs << 16 | irqs;
 	const u32 smask = irqs << 16;
@@ -279,7 +297,7 @@ void gen6_gt_irq_handler(struct intel_gt *gt, u32 gt_iir)
 
 	if (gt_iir & (GT_BLT_CS_ERROR_INTERRUPT |
 		      GT_BSD_CS_ERROR_INTERRUPT |
-		      GT_RENDER_CS_MASTER_ERROR_INTERRUPT))
+		      GT_CS_MASTER_ERROR_INTERRUPT))
 		DRM_DEBUG("Command parser error, gt_iir 0x%08x\n", gt_iir);
 
 	if (gt_iir & GT_PARITY_ERROR(gt->i915))
@@ -345,7 +363,10 @@ void gen8_gt_irq_reset(struct intel_gt *gt)
 void gen8_gt_irq_postinstall(struct intel_gt *gt)
 {
 	/* These are interrupts we'll toggle with the ring mask register */
-	const u32 irqs = GT_RENDER_USER_INTERRUPT | GT_CONTEXT_SWITCH_INTERRUPT;
+	const u32 irqs =
+		GT_CS_MASTER_ERROR_INTERRUPT |
+		GT_RENDER_USER_INTERRUPT |
+		GT_CONTEXT_SWITCH_INTERRUPT;
 	const u32 gt_interrupts[] = {
 		irqs << GEN8_RCS_IRQ_SHIFT | irqs << GEN8_BCS_IRQ_SHIFT,
 		irqs << GEN8_VCS0_IRQ_SHIFT | irqs << GEN8_VCS1_IRQ_SHIFT,
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 058484958e87..d2be7be2db10 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2613,13 +2613,13 @@ static bool execlists_capture(struct intel_engine_cs *engine)
 	if (!cap)
 		return true;
 
+	spin_lock_irq(&engine->active.lock);
 	cap->rq = execlists_active(&engine->execlists);
-	GEM_BUG_ON(!cap->rq);
-
-	rcu_read_lock();
-	cap->rq = active_request(cap->rq->context->timeline, cap->rq);
-	cap->rq = i915_request_get_rcu(cap->rq);
-	rcu_read_unlock();
+	if (cap->rq) {
+		cap->rq = active_request(cap->rq->context->timeline, cap->rq);
+		cap->rq = i915_request_get_rcu(cap->rq);
+	}
+	spin_unlock_irq(&engine->active.lock);
 	if (!cap->rq)
 		goto err_free;
 
@@ -2658,27 +2658,25 @@ static bool execlists_capture(struct intel_engine_cs *engine)
 	return false;
 }
 
-static noinline void preempt_reset(struct intel_engine_cs *engine)
+static void execlists_reset(struct intel_engine_cs *engine, const char *msg)
 {
 	const unsigned int bit = I915_RESET_ENGINE + engine->id;
 	unsigned long *lock = &engine->gt->reset.flags;
 
-	if (i915_modparams.reset < 3)
+	if (!intel_has_reset_engine(engine->gt))
 		return;
 
 	if (test_and_set_bit(bit, lock))
 		return;
 
+	ENGINE_TRACE(engine, "reset for %s\n", msg);
+
 	/* Mark this tasklet as disabled to avoid waiting for it to complete */
 	tasklet_disable_nosync(&engine->execlists.tasklet);
 
-	ENGINE_TRACE(engine, "preempt timeout %lu+%ums\n",
-		     READ_ONCE(engine->props.preempt_timeout_ms),
-		     jiffies_to_msecs(jiffies - engine->execlists.preempt.expires));
-
 	ring_set_paused(engine, 1); /* Freeze the current request in place */
 	if (execlists_capture(engine))
-		intel_engine_reset(engine, "preemption time out");
+		intel_engine_reset(engine, msg);
 	else
 		ring_set_paused(engine, 0);
 
@@ -2709,6 +2707,13 @@ static void execlists_submission_tasklet(unsigned long data)
 	bool timeout = preempt_timeout(engine);
 
 	process_csb(engine);
+
+	if (unlikely(engine->execlists.error_interrupt)) {
+		engine->execlists.error_interrupt = 0;
+		if (ENGINE_READ(engine, RING_ESR)) /* confirm the error */
+			execlists_reset(engine, "CS error");
+	}
+
 	if (!READ_ONCE(engine->execlists.pending[0]) || timeout) {
 		unsigned long flags;
 
@@ -2717,8 +2722,8 @@ static void execlists_submission_tasklet(unsigned long data)
 		spin_unlock_irqrestore(&engine->active.lock, flags);
 
 		/* Recheck after serialising with direct-submission */
-		if (timeout && preempt_timeout(engine))
-			preempt_reset(engine);
+		if (unlikely(timeout && preempt_timeout(engine)))
+			execlists_reset(engine, "preemption time out");
 	}
 }
 
@@ -3343,6 +3348,25 @@ static int intel_init_workaround_bb(struct intel_engine_cs *engine)
 	return ret;
 }
 
+static void enable_error_interrupt(struct intel_engine_cs *engine)
+{
+	u32 status;
+
+	engine->execlists.error_interrupt = 0;
+	ENGINE_WRITE(engine, RING_EMR, ~0u);
+	ENGINE_WRITE(engine, RING_EIR, ~0u); /* clear all existing errors */
+
+	status = ENGINE_READ(engine, RING_ESR);
+	if (unlikely(status)) {
+		dev_err(engine->i915->drm.dev,
+			"engine '%s' resumed still in error: %08x\n",
+			engine->name, status);
+		__intel_gt_reset(engine->gt, engine->mask);
+	}
+
+	ENGINE_WRITE(engine, RING_EMR, ~REG_BIT(0));
+}
+
 static void enable_execlists(struct intel_engine_cs *engine)
 {
 	u32 mode;
@@ -3364,6 +3388,8 @@ static void enable_execlists(struct intel_engine_cs *engine)
 			i915_ggtt_offset(engine->status_page.vma));
 	ENGINE_POSTING_READ(engine, RING_HWS_PGA);
 
+	enable_error_interrupt(engine);
+
 	engine->context_tag = 0;
 }
 
@@ -4290,6 +4316,7 @@ logical_ring_default_irqs(struct intel_engine_cs *engine)
 
 	engine->irq_enable_mask = GT_RENDER_USER_INTERRUPT << shift;
 	engine->irq_keep_mask = GT_CONTEXT_SWITCH_INTERRUPT << shift;
+	engine->irq_keep_mask |= GT_CS_MASTER_ERROR_INTERRUPT << shift;
 }
 
 static void rcs_submission_override(struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 65718ca2326e..5e04ecb61dcc 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -68,6 +68,21 @@ static void engine_heartbeat_enable(struct intel_engine_cs *engine,
 	engine->props.heartbeat_interval_ms = saved;
 }
 
+static int wait_for_submit(struct intel_engine_cs *engine,
+			   struct i915_request *rq,
+			   unsigned long timeout)
+{
+	timeout += jiffies;
+	do {
+		cond_resched();
+		intel_engine_flush_submission(engine);
+		if (i915_request_is_active(rq))
+			return 0;
+	} while (time_before(jiffies, timeout));
+
+	return -ETIME;
+}
+
 static int live_sanitycheck(void *arg)
 {
 	struct intel_gt *gt = arg;
@@ -386,6 +401,145 @@ static int live_hold_reset(void *arg)
 	return err;
 }
 
+static const char *error_repr(int err)
+{
+	return err ? "bad" : "good";
+}
+
+static int live_error_interrupt(void *arg)
+{
+	static const struct error_phase {
+		enum { GOOD = 0, BAD = -EIO } error[2];
+	} phases[] = {
+		{ { BAD,  GOOD } },
+		{ { BAD,  BAD  } },
+		{ { BAD,  GOOD } },
+		{ { GOOD, GOOD } }, /* sentinel */
+	};
+	struct intel_gt *gt = arg;
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+
+	/*
+	 * We hook up the CS_MASTER_ERROR_INTERRUPT to have forewarning
+	 * of invalid commands in user batches that will cause a GPU hang.
+	 * This is a faster mechanism than using hangcheck/heartbeats, but
+	 * only detects problems the HW knows about -- it will not warn when
+	 * we kill the HW!
+	 *
+	 * To verify our detection and reset, we throw some invalid commands
+	 * at the HW and wait for the interrupt.
+	 */
+
+	if (!intel_has_reset_engine(gt))
+		return 0;
+
+	for_each_engine(engine, gt, id) {
+		const struct error_phase *p;
+		unsigned long heartbeat;
+		int err = 0;
+
+		engine_heartbeat_disable(engine, &heartbeat);
+
+		for (p = phases; p->error[0] != GOOD; p++) {
+			struct i915_request *client[ARRAY_SIZE(phases->error)];
+			u32 *cs;
+			int i;
+
+			memset(client, 0, sizeof(*client));
+			for (i = 0; i < ARRAY_SIZE(client); i++) {
+				struct intel_context *ce;
+				struct i915_request *rq;
+
+				ce = intel_context_create(engine);
+				if (IS_ERR(ce)) {
+					err = PTR_ERR(ce);
+					goto out;
+				}
+
+				rq = intel_context_create_request(ce);
+				intel_context_put(ce);
+				if (IS_ERR(rq)) {
+					err = PTR_ERR(rq);
+					goto out;
+				}
+
+				if (rq->engine->emit_init_breadcrumb) {
+					err = rq->engine->emit_init_breadcrumb(rq);
+					if (err) {
+						i915_request_add(rq);
+						goto out;
+					}
+				}
+
+				cs = intel_ring_begin(rq, 2);
+				if (IS_ERR(cs)) {
+					i915_request_add(rq);
+					err = PTR_ERR(cs);
+					goto out;
+				}
+
+				if (p->error[i]) {
+					*cs++ = 0xdeadbeef;
+					*cs++ = 0xdeadbeef;
+				} else {
+					*cs++ = MI_NOOP;
+					*cs++ = MI_NOOP;
+				}
+
+				client[i] = i915_request_get(rq);
+				i915_request_add(rq);
+			}
+
+			err = wait_for_submit(engine, client[0], HZ / 2);
+			if (err) {
+				pr_err("%s: first request did not start within time!\n",
+				       engine->name);
+				err = -ETIME;
+				goto out;
+			}
+
+			for (i = 0; i < ARRAY_SIZE(client); i++) {
+				if (i915_request_wait(client[i], 0, HZ / 5) < 0) {
+					pr_err("%s: %s request still executing!\n",
+					       engine->name,
+					       error_repr(p->error[i]));
+					err = -ETIME;
+					goto out;
+				}
+
+				if (client[i]->fence.error != p->error[i]) {
+					pr_err("%s: %s request completed with wrong error code: %d\n",
+					       engine->name,
+					       error_repr(p->error[i]),
+					       client[i]->fence.error);
+					err = -EINVAL;
+					goto out;
+				}
+			}
+
+out:
+			for (i = 0; i < ARRAY_SIZE(client); i++)
+				if (client[i])
+					i915_request_put(client[i]);
+			if (err) {
+				pr_err("%s: failed at phase[%zd] { %d, %d }\n",
+				       engine->name, p - phases,
+				       p->error[0], p->error[1]);
+				break;
+			}
+		}
+
+		engine_heartbeat_enable(engine, heartbeat);
+		if (err) {
+			intel_gt_set_wedged(gt);
+			return err;
+		}
+	}
+
+	return 0;
+}
+
 static int
 emit_semaphore_chain(struct i915_request *rq, struct i915_vma *vma, int idx)
 {
@@ -628,21 +782,6 @@ static struct i915_request *nop_request(struct intel_engine_cs *engine)
 	return rq;
 }
 
-static int wait_for_submit(struct intel_engine_cs *engine,
-			   struct i915_request *rq,
-			   unsigned long timeout)
-{
-	timeout += jiffies;
-	do {
-		cond_resched();
-		intel_engine_flush_submission(engine);
-		if (i915_request_is_active(rq))
-			return 0;
-	} while (time_before(jiffies, timeout));
-
-	return -ETIME;
-}
-
 static long timeslice_threshold(const struct intel_engine_cs *engine)
 {
 	return 2 * msecs_to_jiffies_timeout(timeslice(engine)) + 1;
@@ -3572,6 +3711,7 @@ int intel_execlists_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_unlite_switch),
 		SUBTEST(live_unlite_preempt),
 		SUBTEST(live_hold_reset),
+		SUBTEST(live_error_interrupt),
 		SUBTEST(live_timeslice_preempt),
 		SUBTEST(live_timeslice_queue),
 		SUBTEST(live_busywait_preempt),
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 0f67bef83106..dcab4723b17d 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -515,6 +515,7 @@ static void error_print_engine(struct drm_i915_error_state_buf *m,
 		   (u32)(ee->acthd>>32), (u32)ee->acthd);
 	err_printf(m, "  IPEIR: 0x%08x\n", ee->ipeir);
 	err_printf(m, "  IPEHR: 0x%08x\n", ee->ipehr);
+	err_printf(m, "  ESR:   0x%08x\n", ee->esr);
 
 	error_print_instdone(m, ee);
 
@@ -1102,6 +1103,7 @@ static void engine_record_registers(struct intel_engine_coredump *ee)
 	}
 
 	if (INTEL_GEN(i915) >= 4) {
+		ee->esr = ENGINE_READ(engine, RING_ESR);
 		ee->faddr = ENGINE_READ(engine, RING_DMA_FADD);
 		ee->ipeir = ENGINE_READ(engine, RING_IPEIR);
 		ee->ipehr = ENGINE_READ(engine, RING_IPEHR);
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index e4a6afed3bbf..b35bc9edd733 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -75,6 +75,7 @@ struct intel_engine_coredump {
 	u32 hws;
 	u32 ipeir;
 	u32 ipehr;
+	u32 esr;
 	u32 bbstate;
 	u32 instpm;
 	u32 instps;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index b93c4c18f05c..4c72b8ac0f2e 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2639,6 +2639,9 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   GEN11_MCR_SUBSLICE_MASK	GEN11_MCR_SUBSLICE(0x7)
 #define RING_IPEIR(base)	_MMIO((base) + 0x64)
 #define RING_IPEHR(base)	_MMIO((base) + 0x68)
+#define RING_EIR(base)		_MMIO((base) + 0xb0)
+#define RING_EMR(base)		_MMIO((base) + 0xb4)
+#define RING_ESR(base)		_MMIO((base) + 0xb8)
 /*
  * On GEN4, only the render ring INSTDONE exists and has a different
  * layout than the GEN7+ version.
@@ -3088,7 +3091,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define GT_CONTEXT_SWITCH_INTERRUPT		(1 <<  8)
 #define GT_RENDER_L3_PARITY_ERROR_INTERRUPT	(1 <<  5) /* !snb */
 #define GT_RENDER_PIPECTL_NOTIFY_INTERRUPT	(1 <<  4)
-#define GT_RENDER_CS_MASTER_ERROR_INTERRUPT	(1 <<  3)
+#define GT_CS_MASTER_ERROR_INTERRUPT		REG_BIT(3)
 #define GT_RENDER_SYNC_STATUS_INTERRUPT		(1 <<  2)
 #define GT_RENDER_DEBUG_INTERRUPT		(1 <<  1)
 #define GT_RENDER_USER_INTERRUPT		(1 <<  0)
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
