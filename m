Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3202E2779
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Dec 2020 14:55:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 008BD89C46;
	Thu, 24 Dec 2020 13:55:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 437AF89C46
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Dec 2020 13:55:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23423431-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Dec 2020 13:55:44 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Dec 2020 13:55:44 +0000
Message-Id: <20201224135544.1713-9-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201224135544.1713-1-chris@chris-wilson.co.uk>
References: <20201224135544.1713-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 9/9] drm/i915/gt: ce->inflight updates are now
 serialised
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

Since schedule-in and schedule-out are now both always under the tasklet
bitlock, we can reduce the individual atomic operations to simple
instructions and worry less.

This notably eliminates the race observed with intel_context_inflight in
__engine_unpark().

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2583
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 .../drm/i915/gt/intel_execlists_submission.c  | 52 +++++++++----------
 1 file changed, 25 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index dc1312d862ed..1fae6c6f3868 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -524,11 +524,11 @@ __execlists_schedule_in(struct i915_request *rq)
 		ce->lrc.ccid = ce->tag;
 	} else {
 		/* We don't need a strict matching tag, just different values */
-		unsigned int tag = ffs(READ_ONCE(engine->context_tag));
+		unsigned int tag = __ffs(engine->context_tag);
 
-		GEM_BUG_ON(tag == 0 || tag >= BITS_PER_LONG);
-		clear_bit(tag - 1, &engine->context_tag);
-		ce->lrc.ccid = tag << (GEN11_SW_CTX_ID_SHIFT - 32);
+		GEM_BUG_ON(tag >= BITS_PER_LONG);
+		__clear_bit(tag, &engine->context_tag);
+		ce->lrc.ccid = (1 + tag) << (GEN11_SW_CTX_ID_SHIFT - 32);
 
 		BUILD_BUG_ON(BITS_PER_LONG > GEN12_MAX_CONTEXT_HW_ID);
 	}
@@ -541,6 +541,8 @@ __execlists_schedule_in(struct i915_request *rq)
 	execlists_context_status_change(rq, INTEL_CONTEXT_SCHEDULE_IN);
 	intel_engine_context_in(engine);
 
+	CE_TRACE(ce, "schedule-in, ccid:%x\n", ce->lrc.ccid);
+
 	return engine;
 }
 
@@ -552,13 +554,10 @@ static inline void execlists_schedule_in(struct i915_request *rq, int idx)
 	GEM_BUG_ON(!intel_engine_pm_is_awake(rq->engine));
 	trace_i915_request_in(rq, idx);
 
-	old = READ_ONCE(ce->inflight);
-	do {
-		if (!old) {
-			WRITE_ONCE(ce->inflight, __execlists_schedule_in(rq));
-			break;
-		}
-	} while (!try_cmpxchg(&ce->inflight, &old, ptr_inc(old)));
+	old = ce->inflight;
+	if (!old)
+		old = __execlists_schedule_in(rq);
+	WRITE_ONCE(ce->inflight, ptr_inc(old));
 
 	GEM_BUG_ON(intel_context_inflight(ce) != rq->engine);
 }
@@ -611,12 +610,11 @@ static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
 		tasklet_hi_schedule(&ve->base.execlists.tasklet);
 }
 
-static inline void
-__execlists_schedule_out(struct i915_request *rq,
-			 struct intel_engine_cs * const engine,
-			 unsigned int ccid)
+static inline void __execlists_schedule_out(struct i915_request *rq)
 {
 	struct intel_context * const ce = rq->context;
+	struct intel_engine_cs * const engine = rq->engine;
+	unsigned int ccid;
 
 	/*
 	 * NB process_csb() is not under the engine->active.lock and hence
@@ -624,6 +622,8 @@ __execlists_schedule_out(struct i915_request *rq,
 	 * refrain from doing non-trivial work here.
 	 */
 
+	CE_TRACE(ce, "schedule-out, ccid:%x\n", ce->lrc.ccid);
+
 	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
 		lrc_check_regs(ce, engine, "after");
 
@@ -635,12 +635,13 @@ __execlists_schedule_out(struct i915_request *rq,
 	    __i915_request_is_complete(rq))
 		intel_engine_add_retire(engine, ce->timeline);
 
+	ccid = ce->lrc.ccid;
 	ccid >>= GEN11_SW_CTX_ID_SHIFT - 32;
 	ccid &= GEN12_MAX_CONTEXT_HW_ID;
 	if (ccid < BITS_PER_LONG) {
 		GEM_BUG_ON(ccid == 0);
 		GEM_BUG_ON(test_bit(ccid - 1, &engine->context_tag));
-		set_bit(ccid - 1, &engine->context_tag);
+		__set_bit(ccid - 1, &engine->context_tag);
 	}
 
 	lrc_update_runtime(ce);
@@ -661,26 +662,23 @@ __execlists_schedule_out(struct i915_request *rq,
 	 */
 	if (ce->engine != engine)
 		kick_siblings(rq, ce);
-
-	intel_context_put(ce);
 }
 
 static inline void
 execlists_schedule_out(struct i915_request *rq)
 {
 	struct intel_context * const ce = rq->context;
-	struct intel_engine_cs *cur, *old;
-	u32 ccid;
 
 	trace_i915_request_out(rq);
 
-	ccid = rq->context->lrc.ccid;
-	old = READ_ONCE(ce->inflight);
-	do
-		cur = ptr_unmask_bits(old, 2) ? ptr_dec(old) : NULL;
-	while (!try_cmpxchg(&ce->inflight, &old, cur));
-	if (!cur)
-		__execlists_schedule_out(rq, old, ccid);
+	GEM_BUG_ON(!ce->inflight);
+	ce->inflight = ptr_dec(ce->inflight);
+	if (!__intel_context_inflight_count(ce->inflight)) {
+		GEM_BUG_ON(ce->inflight != rq->engine);
+		__execlists_schedule_out(rq);
+		WRITE_ONCE(ce->inflight, NULL);
+		intel_context_put(ce);
+	}
 
 	i915_request_put(rq);
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
