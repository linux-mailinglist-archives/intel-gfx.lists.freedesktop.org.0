Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8A91FAB80
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 10:42:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C1CF6E862;
	Tue, 16 Jun 2020 08:42:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C48186E859
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 08:41:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21509971-1500050 
 for multiple; Tue, 16 Jun 2020 09:41:44 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Jun 2020 09:41:37 +0100
Message-Id: <20200616084141.3722-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200616084141.3722-1-chris@chris-wilson.co.uk>
References: <20200616084141.3722-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/9] drm/i915/execlists: Defer schedule_out
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
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +
 drivers/gpu/drm/i915/gt/intel_engine_types.h  | 13 +++++
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 47 ++++++++++++++-----
 4 files changed, 51 insertions(+), 15 deletions(-)

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
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index fbb8ac659b82..be1730773db8 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -515,6 +515,8 @@ void intel_engine_init_execlists(struct intel_engine_cs *engine)
 	memset(execlists->pending, 0, sizeof(execlists->pending));
 	execlists->active =
 		memset(execlists->inflight, 0, sizeof(execlists->inflight));
+	execlists->inactive =
+		memset(execlists->post, 0, sizeof(execlists->post));
 
 	execlists->queue_priority_hint = INT_MIN;
 	execlists->queue = RB_ROOT_CACHED;
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 073c3769e8cc..31cf60cef5a8 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -208,6 +208,10 @@ struct intel_engine_execlists {
 	 * @active: the currently known context executing on HW
 	 */
 	struct i915_request * const *active;
+	/**
+	 * @inactive: the current vacancy of completed CS
+	 */
+	struct i915_request **inactive;
 	/**
 	 * @inflight: the set of contexts submitted and acknowleged by HW
 	 *
@@ -225,6 +229,15 @@ struct intel_engine_execlists {
 	 * preemption or idle-to-active event.
 	 */
 	struct i915_request *pending[EXECLIST_MAX_PORTS + 1];
+	/**
+	 * @post: the set of completed context switches
+	 *
+	 * Since we may want to stagger the processing of the CS switches
+	 * with the next submission, so that the context are notionally
+	 * kept in flight across the dequeue, we defer scheduling out of
+	 * the completed context switches.
+	 */
+	struct i915_request *post[2 * EXECLIST_MAX_PORTS + 1];
 
 	/**
 	 * @port_mask: number of execlist ports - 1
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 40c5085765da..adc14adfa89c 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1385,6 +1385,8 @@ __execlists_schedule_in(struct i915_request *rq)
 	execlists_context_status_change(rq, INTEL_CONTEXT_SCHEDULE_IN);
 	intel_engine_context_in(engine);
 
+	CE_TRACE(ce, "schedule-in, ccid:%x\n", ce->lrc.ccid);
+
 	return engine;
 }
 
@@ -1431,6 +1433,8 @@ __execlists_schedule_out(struct i915_request *rq,
 	 * refrain from doing non-trivial work here.
 	 */
 
+	CE_TRACE(ce, "schedule-out, ccid:%x\n", ccid);
+
 	/*
 	 * If we have just completed this context, the engine may now be
 	 * idle and we want to re-enter powersaving.
@@ -2055,9 +2059,10 @@ static void set_preempt_timeout(struct intel_engine_cs *engine,
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
@@ -2433,7 +2438,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		if (!memcmp(active, execlists->pending,
 			    (port - execlists->pending + 1) * sizeof(*port))) {
 			do
-				execlists_schedule_out(fetch_and_zero(port));
+				*execlists->inactive++ = *port;
 			while (port-- != execlists->pending);
 
 			goto skip_submit;
@@ -2447,6 +2452,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		start_timeslice(engine, execlists->queue_priority_hint);
 skip_submit:
 		ring_set_paused(engine, 0);
+		execlists->pending[0] = NULL;
 	}
 }
 
@@ -2456,12 +2462,12 @@ cancel_port_requests(struct intel_engine_execlists * const execlists)
 	struct i915_request * const *port;
 
 	for (port = execlists->pending; *port; port++)
-		execlists_schedule_out(*port);
+		*execlists->inactive++ = *port;
 	clear_ports(execlists->pending, ARRAY_SIZE(execlists->pending));
 
 	/* Mark the end of active before we overwrite *active */
 	for (port = xchg(&execlists->active, execlists->pending); *port; port++)
-		execlists_schedule_out(*port);
+		*execlists->inactive++ = *port;
 	clear_ports(execlists->inflight, ARRAY_SIZE(execlists->inflight));
 
 	smp_wmb(); /* complete the seqlock for execlists_active() */
@@ -2622,7 +2628,7 @@ static void process_csb(struct intel_engine_cs *engine)
 			/* cancel old inflight, prepare for switch */
 			trace_ports(execlists, "preempted", old);
 			while (*old)
-				execlists_schedule_out(*old++);
+				*execlists->inactive++ = *old++;
 
 			/* switch pending to inflight */
 			GEM_BUG_ON(!assert_pending_valid(execlists, "promote"));
@@ -2679,7 +2685,7 @@ static void process_csb(struct intel_engine_cs *engine)
 					     regs[CTX_RING_TAIL]);
 			}
 
-			execlists_schedule_out(*execlists->active++);
+			*execlists->inactive++ = *execlists->active++;
 
 			GEM_BUG_ON(execlists->active - execlists->inflight >
 				   execlists_num_ports(execlists));
@@ -2703,6 +2709,20 @@ static void process_csb(struct intel_engine_cs *engine)
 	invalidate_csb_entries(&buf[0], &buf[num_entries - 1]);
 }
 
+static void post_process_csb(struct intel_engine_cs *engine)
+{
+	struct intel_engine_execlists * const el = &engine->execlists;
+	struct i915_request **port;
+
+	if (!el->post[0])
+		return;
+
+	GEM_BUG_ON(el->post[2 * EXECLIST_MAX_PORTS]);
+	for (port = el->post; *port; port++)
+		execlists_schedule_out(*port);
+	el->inactive = clear_ports(el->post, port - el->post);
+}
+
 static void __execlists_hold(struct i915_request *rq)
 {
 	LIST_HEAD(list);
@@ -2971,8 +2991,8 @@ active_context(struct intel_engine_cs *engine, u32 ccid)
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
@@ -2980,8 +3000,8 @@ active_context(struct intel_engine_cs *engine, u32 ccid)
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
@@ -3123,6 +3143,8 @@ static void execlists_submission_tasklet(unsigned long data)
 		spin_unlock_irqrestore(&engine->active.lock, flags);
 		rcu_read_unlock();
 	}
+
+	post_process_csb(engine);
 }
 
 static void __execlists_kick(struct intel_engine_execlists *execlists)
@@ -4061,8 +4083,6 @@ static void enable_execlists(struct intel_engine_cs *engine)
 	ENGINE_POSTING_READ(engine, RING_HWS_PGA);
 
 	enable_error_interrupt(engine);
-
-	engine->context_tag = GENMASK(BITS_PER_LONG - 2, 0);
 }
 
 static bool unexpected_starting_state(struct intel_engine_cs *engine)
@@ -5104,6 +5124,7 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
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
