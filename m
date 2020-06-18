Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 008391FEF36
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 12:04:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1FEC6EB44;
	Thu, 18 Jun 2020 10:04:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E5D76E39B
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 10:04:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21535909-1500050 
 for multiple; Thu, 18 Jun 2020 11:03:59 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Jun 2020 11:03:49 +0100
Message-Id: <20200618100356.15744-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200618100356.15744-1-chris@chris-wilson.co.uk>
References: <20200618100356.15744-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/11] drm/i915/execlists: Defer schedule_out
 until after the next dequeue
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

Inside schedule_out, we do extra work upon idling the context, such as
updating the runtime, kicking off retires, kicking virtual engines.
However, if we are in a series of processing single requests per
contexts, we may find ourselves scheduling out the context, only to
immediately schedule it back in during dequeue. This is just extra work
that we can avoid if we keep the context marked as inflight across the
dequeue. This becomes more significant later on for minimising virtual
engine misses.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_context_types.h |  4 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 91 ++++++++++++++-----
 2 files changed, 68 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 4954b0df4864..b63db45bab7b 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -45,8 +45,8 @@ struct intel_context {
 
 	struct intel_engine_cs *engine;
 	struct intel_engine_cs *inflight;
-#define intel_context_inflight(ce) ptr_mask_bits(READ_ONCE((ce)->inflight), 2)
-#define intel_context_inflight_count(ce) ptr_unmask_bits(READ_ONCE((ce)->inflight), 2)
+#define intel_context_inflight(ce) ptr_mask_bits(READ_ONCE((ce)->inflight), 3)
+#define intel_context_inflight_count(ce) ptr_unmask_bits(READ_ONCE((ce)->inflight), 3)
 
 	struct i915_address_space *vm;
 	struct i915_gem_context __rcu *gem_context;
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 70671dbdcc77..15e073a0ff7c 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1387,6 +1387,8 @@ __execlists_schedule_in(struct i915_request *rq)
 	execlists_context_status_change(rq, INTEL_CONTEXT_SCHEDULE_IN);
 	intel_engine_context_in(engine);
 
+	CE_TRACE(ce, "schedule-in, ccid:%x\n", ce->lrc.ccid);
+
 	return engine;
 }
 
@@ -1433,6 +1435,8 @@ __execlists_schedule_out(struct i915_request *rq,
 	 * refrain from doing non-trivial work here.
 	 */
 
+	CE_TRACE(ce, "schedule-out, ccid:%x\n", ccid);
+
 	/*
 	 * If we have just completed this context, the engine may now be
 	 * idle and we want to re-enter powersaving.
@@ -2057,9 +2061,10 @@ static void set_preempt_timeout(struct intel_engine_cs *engine,
 		     active_preempt_timeout(engine, rq));
 }
 
-static inline void clear_ports(struct i915_request **ports, int count)
+static inline struct i915_request **
+clear_ports(struct i915_request **ports, int count)
 {
-	memset_p((void **)ports, NULL, count);
+	return memset_p((void **)ports, NULL, count);
 }
 
 static void execlists_dequeue(struct intel_engine_cs *engine)
@@ -2448,22 +2453,25 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	}
 }
 
-static void
-cancel_port_requests(struct intel_engine_execlists * const execlists)
+static struct i915_request **
+cancel_port_requests(struct intel_engine_execlists * const execlists,
+		     struct i915_request **inactive)
 {
 	struct i915_request * const *port;
 
 	for (port = execlists->pending; *port; port++)
-		execlists_schedule_out(*port);
+		*inactive++ = *port;
 	clear_ports(execlists->pending, ARRAY_SIZE(execlists->pending));
 
 	/* Mark the end of active before we overwrite *active */
 	for (port = xchg(&execlists->active, execlists->pending); *port; port++)
-		execlists_schedule_out(*port);
+		*inactive++ = *port;
 	clear_ports(execlists->inflight, ARRAY_SIZE(execlists->inflight));
 
 	smp_wmb(); /* complete the seqlock for execlists_active() */
 	WRITE_ONCE(execlists->active, execlists->inflight);
+
+	return inactive;
 }
 
 static inline void
@@ -2535,7 +2543,8 @@ gen8_csb_parse(const struct intel_engine_execlists *execlists, const u32 *csb)
 	return *csb & (GEN8_CTX_STATUS_IDLE_ACTIVE | GEN8_CTX_STATUS_PREEMPTED);
 }
 
-static void process_csb(struct intel_engine_cs *engine)
+static struct i915_request **
+process_csb(struct intel_engine_cs *engine, struct i915_request **inactive)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
 	const u32 * const buf = execlists->csb_status;
@@ -2564,7 +2573,7 @@ static void process_csb(struct intel_engine_cs *engine)
 	head = execlists->csb_head;
 	tail = READ_ONCE(*execlists->csb_write);
 	if (unlikely(head == tail))
-		return;
+		return inactive;
 
 	/*
 	 * Hopefully paired with a wmb() in HW!
@@ -2620,7 +2629,7 @@ static void process_csb(struct intel_engine_cs *engine)
 			/* cancel old inflight, prepare for switch */
 			trace_ports(execlists, "preempted", old);
 			while (*old)
-				execlists_schedule_out(*old++);
+				*inactive++ = *old++;
 
 			/* switch pending to inflight */
 			GEM_BUG_ON(!assert_pending_valid(execlists, "promote"));
@@ -2677,7 +2686,7 @@ static void process_csb(struct intel_engine_cs *engine)
 					     regs[CTX_RING_TAIL]);
 			}
 
-			execlists_schedule_out(*execlists->active++);
+			*inactive++ = *execlists->active++;
 
 			GEM_BUG_ON(execlists->active - execlists->inflight >
 				   execlists_num_ports(execlists));
@@ -2699,6 +2708,16 @@ static void process_csb(struct intel_engine_cs *engine)
 	 * invalidation before.
 	 */
 	invalidate_csb_entries(&buf[0], &buf[num_entries - 1]);
+
+	return inactive;
+}
+
+static void post_process_csb(struct intel_engine_cs *engine,
+			     struct i915_request **port,
+			     struct i915_request **last)
+{
+	while (port != last)
+		execlists_schedule_out(*port++);
 }
 
 static void __execlists_hold(struct i915_request *rq)
@@ -2969,8 +2988,8 @@ active_context(struct intel_engine_cs *engine, u32 ccid)
 	for (port = el->active; (rq = *port); port++) {
 		if (rq->context->lrc.ccid == ccid) {
 			ENGINE_TRACE(engine,
-				     "ccid found at active:%zd\n",
-				     port - el->active);
+				     "ccid:%x found at active:%zd\n",
+				     ccid, port - el->active);
 			return rq;
 		}
 	}
@@ -2978,8 +2997,8 @@ active_context(struct intel_engine_cs *engine, u32 ccid)
 	for (port = el->pending; (rq = *port); port++) {
 		if (rq->context->lrc.ccid == ccid) {
 			ENGINE_TRACE(engine,
-				     "ccid found at pending:%zd\n",
-				     port - el->pending);
+				     "ccid:%x found at pending:%zd\n",
+				     ccid, port - el->pending);
 			return rq;
 		}
 	}
@@ -3100,8 +3119,11 @@ static bool preempt_timeout(const struct intel_engine_cs *const engine)
 static void execlists_submission_tasklet(unsigned long data)
 {
 	struct intel_engine_cs * const engine = (struct intel_engine_cs *)data;
+	struct i915_request *post[2 * EXECLIST_MAX_PORTS];
+	struct i915_request **inactive;
 
-	process_csb(engine);
+	inactive = process_csb(engine, post);
+	GEM_BUG_ON(inactive - post > ARRAY_SIZE(post));
 
 	if (unlikely(READ_ONCE(engine->execlists.error_interrupt))) {
 		engine->execlists.error_interrupt = 0;
@@ -3114,6 +3136,8 @@ static void execlists_submission_tasklet(unsigned long data)
 
 	if (!engine->execlists.pending[0])
 		execlists_dequeue(engine);
+
+	post_process_csb(engine, post, inactive);
 }
 
 static void __execlists_kick(struct intel_engine_execlists *execlists)
@@ -4034,8 +4058,6 @@ static void enable_execlists(struct intel_engine_cs *engine)
 	ENGINE_POSTING_READ(engine, RING_HWS_PGA);
 
 	enable_error_interrupt(engine);
-
-	engine->context_tag = GENMASK(BITS_PER_LONG - 2, 0);
 }
 
 static bool unexpected_starting_state(struct intel_engine_cs *engine)
@@ -4124,22 +4146,29 @@ static void __execlists_reset_reg_state(const struct intel_context *ce,
 	__reset_stop_ring(regs, engine);
 }
 
-static void __execlists_reset(struct intel_engine_cs *engine, bool stalled)
+static struct i915_request **reset_csb(struct intel_engine_cs *engine,
+				       struct i915_request **inactive)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
-	struct intel_context *ce;
-	struct i915_request *rq;
-	u32 head;
 
 	mb(); /* paranoia: read the CSB pointers from after the reset */
 	clflush(execlists->csb_write);
 	mb();
 
-	process_csb(engine); /* drain preemption events */
+	inactive = process_csb(engine, inactive); /* drain preemption events */
 
 	/* Following the reset, we need to reload the CSB read/write pointers */
 	reset_csb_pointers(engine);
 
+	return inactive;
+}
+
+static void __execlists_reset(struct intel_engine_cs *engine, bool stalled)
+{
+	struct intel_context *ce;
+	struct i915_request *rq;
+	u32 head;
+
 	/*
 	 * Save the currently executing context, even if we completed
 	 * its request, it was still running at the time of the
@@ -4213,21 +4242,25 @@ static void __execlists_reset(struct intel_engine_cs *engine, bool stalled)
 
 unwind:
 	/* Push back any incomplete requests for replay after the reset. */
-	cancel_port_requests(execlists);
 	__unwind_incomplete_requests(engine);
 }
 
 static void execlists_reset_rewind(struct intel_engine_cs *engine, bool stalled)
 {
+	struct i915_request *post[2 * EXECLIST_MAX_PORTS];
+	struct i915_request **inactive;
 	unsigned long flags;
 
 	ENGINE_TRACE(engine, "\n");
 
-	spin_lock_irqsave(&engine->active.lock, flags);
+	inactive = reset_csb(engine, post);
 
+	spin_lock_irqsave(&engine->active.lock, flags);
 	__execlists_reset(engine, stalled);
-
 	spin_unlock_irqrestore(&engine->active.lock, flags);
+
+	inactive = cancel_port_requests(&engine->execlists, inactive);
+	post_process_csb(engine, post, inactive);
 }
 
 static void nop_submission_tasklet(unsigned long data)
@@ -4241,12 +4274,16 @@ static void nop_submission_tasklet(unsigned long data)
 static void execlists_reset_cancel(struct intel_engine_cs *engine)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
+	struct i915_request *post[2 * EXECLIST_MAX_PORTS];
+	struct i915_request **inactive;
 	struct i915_request *rq, *rn;
 	struct rb_node *rb;
 	unsigned long flags;
 
 	ENGINE_TRACE(engine, "\n");
 
+	inactive = reset_csb(engine, post);
+
 	/*
 	 * Before we call engine->cancel_requests(), we should have exclusive
 	 * access to the submission state. This is arranged for us by the
@@ -4318,6 +4355,9 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 	execlists->tasklet.func = nop_submission_tasklet;
 
 	spin_unlock_irqrestore(&engine->active.lock, flags);
+
+	inactive = cancel_port_requests(execlists, inactive);
+	post_process_csb(engine, post, inactive);
 }
 
 static void execlists_reset_finish(struct intel_engine_cs *engine)
@@ -5077,6 +5117,7 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 	else
 		execlists->csb_size = GEN11_CSB_ENTRIES;
 
+	engine->context_tag = GENMASK(BITS_PER_LONG - 2, 0);
 	if (INTEL_GEN(engine->i915) >= 11) {
 		execlists->ccid |= engine->instance << (GEN11_ENGINE_INSTANCE_SHIFT - 32);
 		execlists->ccid |= engine->class << (GEN11_ENGINE_CLASS_SHIFT - 32);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
