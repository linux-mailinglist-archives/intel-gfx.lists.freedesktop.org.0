Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 387721F79C3
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 16:26:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87A386E117;
	Fri, 12 Jun 2020 14:26:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 502826E117
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 14:26:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21476890-1500050 
 for multiple; Fri, 12 Jun 2020 15:25:53 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jun 2020 15:25:51 +0100
Message-Id: <20200612142551.30956-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200612142551.30956-1-chris@chris-wilson.co.uk>
References: <20200612142551.30956-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/execlists: Defer schedule_out
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
 drivers/gpu/drm/i915/gt/intel_context_types.h |  4 +--
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 ++
 drivers/gpu/drm/i915/gt/intel_engine_types.h  | 13 +++++++
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 35 ++++++++++++++++---
 4 files changed, 48 insertions(+), 6 deletions(-)

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
index 20d0a923f517..3943356adae7 100644
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
index f2906b9fb508..c91a09f7c259 100644
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
@@ -2455,6 +2460,11 @@ cancel_port_requests(struct intel_engine_execlists * const execlists)
 {
 	struct i915_request * const *port;
 
+	for (port = execlists->post; *port; port++)
+		execlists_schedule_out(*port);
+	execlists->inactive =
+		clear_ports(execlists->post, ARRAY_SIZE(execlists->post));
+
 	for (port = execlists->pending; *port; port++)
 		execlists_schedule_out(*port);
 	clear_ports(execlists->pending, ARRAY_SIZE(execlists->pending));
@@ -2622,7 +2632,7 @@ static void process_csb(struct intel_engine_cs *engine)
 			/* cancel old inflight, prepare for switch */
 			trace_ports(execlists, "preempted", old);
 			while (*old)
-				execlists_schedule_out(*old++);
+				*execlists->inactive++ = *old++;
 
 			/* switch pending to inflight */
 			GEM_BUG_ON(!assert_pending_valid(execlists, "promote"));
@@ -2679,7 +2689,7 @@ static void process_csb(struct intel_engine_cs *engine)
 					     regs[CTX_RING_TAIL]);
 			}
 
-			execlists_schedule_out(*execlists->active++);
+			*execlists->inactive++ = *execlists->active++;
 
 			GEM_BUG_ON(execlists->active - execlists->inflight >
 				   execlists_num_ports(execlists));
@@ -2703,6 +2713,20 @@ static void process_csb(struct intel_engine_cs *engine)
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
@@ -3123,6 +3147,8 @@ static void execlists_submission_tasklet(unsigned long data)
 		spin_unlock_irqrestore(&engine->active.lock, flags);
 		rcu_read_unlock();
 	}
+
+	post_process_csb(engine);
 }
 
 static void __execlists_kick(struct intel_engine_execlists *execlists)
@@ -4163,6 +4189,7 @@ static void __execlists_reset(struct intel_engine_cs *engine, bool stalled)
 	mb();
 
 	process_csb(engine); /* drain preemption events */
+	post_process_csb(engine);
 
 	/* Following the reset, we need to reload the CSB read/write pointers */
 	reset_csb_pointers(engine);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
