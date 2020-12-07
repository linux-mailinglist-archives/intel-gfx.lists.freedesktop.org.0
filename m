Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A992D19C1
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 20:38:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54DA26E8B9;
	Mon,  7 Dec 2020 19:38:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22A266E8B2
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Dec 2020 19:38:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23245483-1500050 
 for multiple; Mon, 07 Dec 2020 19:38:27 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Dec 2020 19:38:09 +0000
Message-Id: <20201207193824.18114-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201207193824.18114-1-chris@chris-wilson.co.uk>
References: <20201207193824.18114-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/20] drm/i915/gt: Defer schedule_out until
 after the next dequeue
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
 drivers/gpu/drm/i915/gt/intel_context_types.h |   4 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 121 +++++++++++-------
 2 files changed, 80 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 52fa9c132746..10830eeab0f7 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -58,8 +58,8 @@ struct intel_context {
 
 	struct intel_engine_cs *engine;
 	struct intel_engine_cs *inflight;
-#define intel_context_inflight(ce) ptr_mask_bits(READ_ONCE((ce)->inflight), 2)
-#define intel_context_inflight_count(ce) ptr_unmask_bits(READ_ONCE((ce)->inflight), 2)
+#define intel_context_inflight(ce) ptr_mask_bits(READ_ONCE((ce)->inflight), 3)
+#define intel_context_inflight_count(ce) ptr_unmask_bits(READ_ONCE((ce)->inflight), 3)
 
 	struct i915_address_space *vm;
 	struct i915_gem_context __rcu *gem_context;
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 092425ced822..0b7e86240f3b 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2046,19 +2046,6 @@ static void set_preempt_timeout(struct intel_engine_cs *engine,
 		     active_preempt_timeout(engine, rq));
 }
 
-static inline void clear_ports(struct i915_request **ports, int count)
-{
-	memset_p((void **)ports, NULL, count);
-}
-
-static inline void
-copy_ports(struct i915_request **dst, struct i915_request **src, int count)
-{
-	/* A memcpy_p() would be very useful here! */
-	while (count--)
-		WRITE_ONCE(*dst++, *src++); /* avoid write tearing */
-}
-
 static void execlists_dequeue(struct intel_engine_cs *engine)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
@@ -2407,18 +2394,32 @@ static void execlists_dequeue_irq(struct intel_engine_cs *engine)
 	local_irq_enable(); /* flush irq_work (e.g. breadcrumb enabling) */
 }
 
-static void
-cancel_port_requests(struct intel_engine_execlists * const execlists)
+static inline void clear_ports(struct i915_request **ports, int count)
+{
+	memset_p((void **)ports, NULL, count);
+}
+
+static inline void
+copy_ports(struct i915_request **dst, struct i915_request **src, int count)
+{
+	/* A memcpy_p() would be very useful here! */
+	while (count--)
+		WRITE_ONCE(*dst++, *src++); /* avoid write tearing */
+}
+
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
@@ -2428,6 +2429,8 @@ cancel_port_requests(struct intel_engine_execlists * const execlists)
 	GEM_BUG_ON(execlists->pending[0]);
 	cancel_timer(&execlists->timer);
 	cancel_timer(&execlists->preempt);
+
+	return inactive;
 }
 
 static inline void
@@ -2555,7 +2558,8 @@ csb_read(const struct intel_engine_cs *engine, u64 * const csb)
 	return entry;
 }
 
-static void process_csb(struct intel_engine_cs *engine)
+static struct i915_request **
+process_csb(struct intel_engine_cs *engine, struct i915_request **inactive)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
 	u64 * const buf = execlists->csb_status;
@@ -2584,7 +2588,7 @@ static void process_csb(struct intel_engine_cs *engine)
 	head = execlists->csb_head;
 	tail = READ_ONCE(*execlists->csb_write);
 	if (unlikely(head == tail))
-		return;
+		return inactive;
 
 	/*
 	 * We will consume all events from HW, or at least pretend to.
@@ -2664,7 +2668,7 @@ static void process_csb(struct intel_engine_cs *engine)
 			/* cancel old inflight, prepare for switch */
 			trace_ports(execlists, "preempted", old);
 			while (*old)
-				execlists_schedule_out(*old++);
+				*inactive++ = *old++;
 
 			/* switch pending to inflight */
 			GEM_BUG_ON(!assert_pending_valid(execlists, "promote"));
@@ -2726,7 +2730,7 @@ static void process_csb(struct intel_engine_cs *engine)
 					     regs[CTX_RING_TAIL]);
 			}
 
-			execlists_schedule_out(*execlists->active++);
+			*inactive++ = *execlists->active++;
 
 			GEM_BUG_ON(execlists->active - execlists->inflight >
 				   execlists_num_ports(execlists));
@@ -2747,6 +2751,15 @@ static void process_csb(struct intel_engine_cs *engine)
 	 * invalidation before.
 	 */
 	invalidate_csb_entries(&buf[0], &buf[num_entries - 1]);
+
+	return inactive;
+}
+
+static void post_process_csb(struct i915_request **port,
+			     struct i915_request **last)
+{
+	while (port != last)
+		execlists_schedule_out(*port++);
 }
 
 static void __execlists_hold(struct i915_request *rq)
@@ -3022,8 +3035,8 @@ active_context(struct intel_engine_cs *engine, u32 ccid)
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
@@ -3031,8 +3044,8 @@ active_context(struct intel_engine_cs *engine, u32 ccid)
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
@@ -3150,8 +3163,11 @@ static bool preempt_timeout(const struct intel_engine_cs *const engine)
 static void execlists_submission_tasklet(unsigned long data)
 {
 	struct intel_engine_cs * const engine = (struct intel_engine_cs *)data;
+	struct i915_request *post[2 * EXECLIST_MAX_PORTS];
+	struct i915_request **inactive;
 
-	process_csb(engine);
+	inactive = process_csb(engine, post);
+	GEM_BUG_ON(inactive - post > ARRAY_SIZE(post));
 
 	if (unlikely(preempt_timeout(engine))) {
 		cancel_timer(&engine->execlists.preempt);
@@ -3177,6 +3193,8 @@ static void execlists_submission_tasklet(unsigned long data)
 
 	if (!engine->execlists.pending[0])
 		execlists_dequeue_irq(engine);
+
+	post_process_csb(post, inactive);
 }
 
 static void __execlists_kick(struct intel_engine_execlists *execlists)
@@ -4122,8 +4140,6 @@ static void enable_execlists(struct intel_engine_cs *engine)
 	ENGINE_POSTING_READ(engine, RING_HWS_PGA);
 
 	enable_error_interrupt(engine);
-
-	engine->context_tag = GENMASK(BITS_PER_LONG - 2, 0);
 }
 
 static bool unexpected_starting_state(struct intel_engine_cs *engine)
@@ -4212,22 +4228,29 @@ static void __execlists_reset_reg_state(const struct intel_context *ce,
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
+static void execlists_reset_active(struct intel_engine_cs *engine, bool stalled)
+{
+	struct intel_context *ce;
+	struct i915_request *rq;
+	u32 head;
+
 	/*
 	 * Save the currently executing context, even if we completed
 	 * its request, it was still running at the time of the
@@ -4235,7 +4258,7 @@ static void __execlists_reset(struct intel_engine_cs *engine, bool stalled)
 	 */
 	rq = active_context(engine, engine->execlists.reset_ccid);
 	if (!rq)
-		goto unwind;
+		return;
 
 	ce = rq->context;
 	GEM_BUG_ON(!i915_vma_is_pinned(ce->state));
@@ -4298,11 +4321,20 @@ static void __execlists_reset(struct intel_engine_cs *engine, bool stalled)
 	__execlists_reset_reg_state(ce, engine);
 	__execlists_update_reg_state(ce, engine, head);
 	ce->lrc.desc |= CTX_DESC_FORCE_RESTORE; /* paranoid: GPU was reset! */
+}
 
-unwind:
-	/* Push back any incomplete requests for replay after the reset. */
-	cancel_port_requests(execlists);
-	__unwind_incomplete_requests(engine);
+static void execlists_reset_csb(struct intel_engine_cs *engine, bool stalled)
+{
+	struct intel_engine_execlists * const execlists = &engine->execlists;
+	struct i915_request *post[2 * EXECLIST_MAX_PORTS];
+	struct i915_request **inactive;
+
+	inactive = reset_csb(engine, post);
+
+	execlists_reset_active(engine, true);
+
+	inactive = cancel_port_requests(execlists, inactive);
+	post_process_csb(post, inactive);
 }
 
 static void execlists_reset_rewind(struct intel_engine_cs *engine, bool stalled)
@@ -4311,10 +4343,12 @@ static void execlists_reset_rewind(struct intel_engine_cs *engine, bool stalled)
 
 	ENGINE_TRACE(engine, "\n");
 
-	spin_lock_irqsave(&engine->active.lock, flags);
-
-	__execlists_reset(engine, stalled);
+	/* Process the csb, find the guilty context and throw away */
+	execlists_reset_csb(engine, stalled);
 
+	/* Push back any incomplete requests for replay after the reset. */
+	spin_lock_irqsave(&engine->active.lock, flags);
+	__unwind_incomplete_requests(engine);
 	spin_unlock_irqrestore(&engine->active.lock, flags);
 }
 
@@ -4349,9 +4383,9 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 	 * submission's irq state, we also wish to remind ourselves that
 	 * it is irq state.)
 	 */
-	spin_lock_irqsave(&engine->active.lock, flags);
+	execlists_reset_csb(engine, true);
 
-	__execlists_reset(engine, true);
+	spin_lock_irqsave(&engine->active.lock, flags);
 
 	/* Mark all executing requests as skipped. */
 	list_for_each_entry(rq, &engine->active.requests, sched.link)
@@ -5177,6 +5211,7 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
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
