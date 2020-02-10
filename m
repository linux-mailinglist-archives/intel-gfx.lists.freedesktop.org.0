Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF5F158481
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 21:57:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6892A6E9EA;
	Mon, 10 Feb 2020 20:57:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 809226E9EA
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2020 20:57:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20180250-1500050 
 for multiple; Mon, 10 Feb 2020 20:57:24 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Feb 2020 20:57:22 +0000
Message-Id: <20200210205722.794180-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200210205722.794180-1-chris@chris-wilson.co.uk>
References: <20200210205722.794180-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/7] drm/i915/execlists: Remove preempt-to-busy
 roundtrip delay
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

To prevent the context from proceeding past the end of the request as we
unwind, we embed a semaphore into the footer of each request. (If the
context were to skip past the end of the request as we perform the
preemption, next time we reload the context it's RING_HEAD would be past
the RING_TAIL and instead of replaying the commands it would read the
read of the uninitialised ringbuffer.)

However, this requires us to keep the ring paused at the end of the
request until we have a change to process the preemption ack and remove
the semaphore. Our processing of acks is at the whim of ksoftirqd, and
so it is entirely possible that the GPU has to wait for the tasklet
before it can proceed with the next request.

It was suggested that we could also embed a MI_LOAD_REGISTER_MEM into
the footer to read the current RING_TAIL from the context, which would
allow us to not only avoid this round trip (and so release the context
as soon as we had submitted the preemption request to in ELSP), but also
skip using ELSP for lite-restores entirely. That has the nice benefit of
dramatically reducing contention and the frequency of interrupts when a
client submits two or more execbufs in rapid succession.

However, mmio access to RING_TAIL was defeatured in gen11 so we can only
employ this handy trick for gen8/gen9.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_types.h | 23 +++--
 drivers/gpu/drm/i915/gt/intel_lrc.c          | 99 +++++++++++++++++++-
 2 files changed, 109 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 24cff658e6e5..ae8724915320 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -488,14 +488,15 @@ struct intel_engine_cs {
 	/* status_notifier: list of callbacks for context-switch changes */
 	struct atomic_notifier_head context_status_notifier;
 
-#define I915_ENGINE_USING_CMD_PARSER BIT(0)
-#define I915_ENGINE_SUPPORTS_STATS   BIT(1)
-#define I915_ENGINE_HAS_PREEMPTION   BIT(2)
-#define I915_ENGINE_HAS_SEMAPHORES   BIT(3)
-#define I915_ENGINE_NEEDS_BREADCRUMB_TASKLET BIT(4)
-#define I915_ENGINE_IS_VIRTUAL       BIT(5)
-#define I915_ENGINE_HAS_RELATIVE_MMIO BIT(6)
-#define I915_ENGINE_REQUIRES_CMD_PARSER BIT(7)
+#define I915_ENGINE_REQUIRES_CMD_PARSER		BIT(0)
+#define I915_ENGINE_USING_CMD_PARSER		BIT(1)
+#define I915_ENGINE_SUPPORTS_STATS		BIT(2)
+#define I915_ENGINE_HAS_PREEMPTION		BIT(3)
+#define I915_ENGINE_HAS_SEMAPHORES		BIT(4)
+#define I915_ENGINE_HAS_TAIL_LRM		BIT(5)
+#define I915_ENGINE_NEEDS_BREADCRUMB_TASKLET	BIT(6)
+#define I915_ENGINE_IS_VIRTUAL			BIT(7)
+#define I915_ENGINE_HAS_RELATIVE_MMIO		BIT(8)
 	unsigned int flags;
 
 	/*
@@ -592,6 +593,12 @@ intel_engine_has_semaphores(const struct intel_engine_cs *engine)
 	return engine->flags & I915_ENGINE_HAS_SEMAPHORES;
 }
 
+static inline bool
+intel_engine_has_tail_lrm(const struct intel_engine_cs *engine)
+{
+	return engine->flags & I915_ENGINE_HAS_TAIL_LRM;
+}
+
 static inline bool
 intel_engine_needs_breadcrumb_tasklet(const struct intel_engine_cs *engine)
 {
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 696f0b6b223c..5939672781fb 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1797,6 +1797,74 @@ static inline void clear_ports(struct i915_request **ports, int count)
 	memset_p((void **)ports, NULL, count);
 }
 
+static struct i915_request *
+skip_lite_restore(struct intel_engine_cs *const engine,
+		  struct i915_request *first,
+		  bool *submit)
+{
+	struct intel_engine_execlists *const execlists = &engine->execlists;
+	struct i915_request *last = first;
+	struct rb_node *rb;
+
+	if (!intel_engine_has_tail_lrm(engine))
+		return last;
+
+	GEM_BUG_ON(*submit);
+	while ((rb = rb_first_cached(&execlists->queue))) {
+		struct i915_priolist *p = to_priolist(rb);
+		struct i915_request *rq, *rn;
+		int i;
+
+		priolist_for_each_request_consume(rq, rn, p, i) {
+			if (!can_merge_rq(last, rq))
+				goto out;
+
+			if (__i915_request_submit(rq)) {
+				*submit = true;
+				last = rq;
+			}
+		}
+
+		rb_erase_cached(&p->node, &execlists->queue);
+		i915_priolist_free(p);
+	}
+out:
+	if (*submit) {
+		ring_set_paused(engine, 1);
+
+		/*
+		 * If we are quick and the current context hasn't yet completed
+		 * its request, we can just tell it to extend the RING_TAIL
+		 * onto the next without having to submit a new ELSP.
+		 */
+		if (!i915_request_completed(first)) {
+			struct i915_request **port;
+
+			ENGINE_TRACE(engine,
+				     "eliding lite-restore last=%llx:%lld->%lld, current %d\n",
+				     first->fence.context,
+				     first->fence.seqno,
+				     last->fence.seqno,
+				     hwsp_seqno(last));
+			GEM_BUG_ON(first->context != last->context);
+
+			execlists_update_context(last);
+			for (port = (struct i915_request **)execlists->active;
+			     *port != first;
+			     port++)
+				;
+			WRITE_ONCE(*port, i915_request_get(last));
+			i915_request_put(first);
+
+			*submit = false;
+		}
+
+		ring_set_paused(engine, 0);
+	}
+
+	return last;
+}
+
 static void execlists_dequeue(struct intel_engine_cs *engine)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
@@ -1934,6 +2002,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 
 				return;
 			}
+
+			last = skip_lite_restore(engine, last, &submit);
 		}
 	}
 
@@ -2155,10 +2225,11 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		WRITE_ONCE(execlists->yield, -1);
 		execlists_submit_ports(engine);
 		set_preempt_timeout(engine);
-	} else {
+	}
+
+	if (intel_engine_has_tail_lrm(engine) || !submit)
 skip_submit:
 		ring_set_paused(engine, 0);
-	}
 }
 
 static void
@@ -2325,7 +2396,8 @@ static void process_csb(struct intel_engine_cs *engine)
 
 			GEM_BUG_ON(!assert_pending_valid(execlists, "promote"));
 
-			ring_set_paused(engine, 0);
+			if (!intel_engine_has_tail_lrm(engine))
+				ring_set_paused(engine, 0);
 
 			/* Point active to the new ELSP; prevent overwriting */
 			WRITE_ONCE(execlists->active, execlists->pending);
@@ -4123,15 +4195,28 @@ static u32 *emit_preempt_busywait(struct i915_request *request, u32 *cs)
 	return cs;
 }
 
+static u32 *emit_lrm_tail(struct i915_request *request, u32 *cs)
+{
+	*cs++ = MI_LOAD_REGISTER_MEM_GEN8 | MI_USE_GGTT;
+	*cs++ = i915_mmio_reg_offset(RING_TAIL(request->engine->mmio_base));
+	*cs++ = i915_ggtt_offset(request->context->state) +
+		LRC_STATE_PN * PAGE_SIZE +
+		CTX_RING_TAIL * sizeof(u32);
+	*cs++ = 0;
+
+	return cs;
+}
+
 static __always_inline u32*
-gen8_emit_fini_breadcrumb_footer(struct i915_request *request,
-				 u32 *cs)
+gen8_emit_fini_breadcrumb_footer(struct i915_request *request, u32 *cs)
 {
 	*cs++ = MI_USER_INTERRUPT;
 
 	*cs++ = MI_ARB_ON_OFF | MI_ARB_ENABLE;
 	if (intel_engine_has_semaphores(request->engine))
 		cs = emit_preempt_busywait(request, cs);
+	if (intel_engine_has_tail_lrm(request->engine))
+		cs = emit_lrm_tail(request, cs);
 
 	request->tail = intel_ring_offset(request, cs);
 	assert_ring_tail_valid(request->ring, request->tail);
@@ -4220,6 +4305,8 @@ static u32 *gen12_emit_preempt_busywait(struct i915_request *request, u32 *cs)
 static __always_inline u32*
 gen12_emit_fini_breadcrumb_footer(struct i915_request *request, u32 *cs)
 {
+	GEM_BUG_ON(intel_engine_has_tail_lrm(request->engine));
+
 	*cs++ = MI_USER_INTERRUPT;
 
 	*cs++ = MI_ARB_ON_OFF | MI_ARB_ENABLE;
@@ -4286,6 +4373,8 @@ void intel_execlists_set_default_submission(struct intel_engine_cs *engine)
 		engine->flags |= I915_ENGINE_HAS_SEMAPHORES;
 		if (HAS_LOGICAL_RING_PREEMPTION(engine->i915))
 			engine->flags |= I915_ENGINE_HAS_PREEMPTION;
+		if (INTEL_GEN(engine->i915) < 11)
+			engine->flags |= I915_ENGINE_HAS_TAIL_LRM;
 	}
 
 	if (INTEL_GEN(engine->i915) >= 12)
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
