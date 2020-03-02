Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 483D4175663
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 09:59:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 828196E155;
	Mon,  2 Mar 2020 08:58:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0891B6E13F
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 08:58:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20409419-1500050 
 for multiple; Mon, 02 Mar 2020 08:58:24 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Mar 2020 08:58:03 +0000
Message-Id: <20200302085812.4172450-13-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200302085812.4172450-1-chris@chris-wilson.co.uk>
References: <20200302085812.4172450-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/22] drm/i915/execlists: Reduce
 preempt-to-busy roundtrip delay
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

* This did not work out quite as well as anticipated due to us reloading
the new RING_TAIL from the context image moments before the HW acted
upon the ELSP. With the calamitous effect that we would submit a
preemption request with an identical RING_TAIL as the current RING_HEAD,
causing us to fail WaIdleLiteRestore and the HW stop working.

However, mmio access to RING_TAIL was defeatured in gen11 so we can only
employ this handy trick for gen8/gen9.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_types.h | 23 +++--
 drivers/gpu/drm/i915/gt/intel_lrc.c          | 93 +++++++++++++++++++-
 2 files changed, 106 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 80cdde712842..4dfaaaa32e32 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -479,14 +479,15 @@ struct intel_engine_cs {
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
@@ -584,6 +585,12 @@ intel_engine_has_semaphores(const struct intel_engine_cs *engine)
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
index b9b3f78f1324..c70dc4cfc4f3 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1836,6 +1836,76 @@ static inline void clear_ports(struct i915_request **ports, int count)
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
+			for (port = (struct i915_request **)execlists->active;
+			     *port != first;
+			     port++)
+				;
+
+			GEM_BUG_ON(first == last);
+			WRITE_ONCE(*port, i915_request_get(last));
+			execlists_update_context(last);
+
+			i915_request_put(first);
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
@@ -1972,6 +2042,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 
 				return;
 			}
+
+			last = skip_lite_restore(engine, last, &submit);
 		}
 	}
 
@@ -4198,15 +4270,28 @@ static u32 *emit_preempt_busywait(struct i915_request *request, u32 *cs)
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
@@ -4295,6 +4380,8 @@ static u32 *gen12_emit_preempt_busywait(struct i915_request *request, u32 *cs)
 static __always_inline u32*
 gen12_emit_fini_breadcrumb_footer(struct i915_request *request, u32 *cs)
 {
+	GEM_BUG_ON(intel_engine_has_tail_lrm(request->engine));
+
 	*cs++ = MI_USER_INTERRUPT;
 
 	*cs++ = MI_ARB_ON_OFF | MI_ARB_ENABLE;
@@ -4361,6 +4448,8 @@ void intel_execlists_set_default_submission(struct intel_engine_cs *engine)
 		engine->flags |= I915_ENGINE_HAS_SEMAPHORES;
 		if (HAS_LOGICAL_RING_PREEMPTION(engine->i915))
 			engine->flags |= I915_ENGINE_HAS_PREEMPTION;
+		if (INTEL_GEN(engine->i915) < 11)
+			engine->flags |= I915_ENGINE_HAS_TAIL_LRM;
 	}
 
 	if (INTEL_GEN(engine->i915) >= 12)
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
