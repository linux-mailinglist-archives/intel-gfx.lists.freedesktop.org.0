Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 795FD216AB3
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 12:48:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25F7389C54;
	Tue,  7 Jul 2020 10:48:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C8E889C54
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 10:48:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21738844-1500050 
 for multiple; Tue, 07 Jul 2020 11:48:22 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Jul 2020 11:48:16 +0100
Message-Id: <20200707104819.10877-10-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200707104819.10877-1-chris@chris-wilson.co.uk>
References: <20200707104819.10877-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/12] drm/i915/gt: ce->inflight updates are now
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since schedule-in and schedule-out are now both always under the tasklet
bitlock, we can reduce the individual atomic operations to simple
instructions and worry less.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 44 +++++++++++++----------------
 1 file changed, 19 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 07d38acacd98..ab57e9329bc1 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1341,7 +1341,7 @@ __execlists_schedule_in(struct i915_request *rq)
 		unsigned int tag = ffs(READ_ONCE(engine->context_tag));
 
 		GEM_BUG_ON(tag == 0 || tag >= BITS_PER_LONG);
-		clear_bit(tag - 1, &engine->context_tag);
+		__clear_bit(tag - 1, &engine->context_tag);
 		ce->lrc.ccid = tag << (GEN11_SW_CTX_ID_SHIFT - 32);
 
 		BUILD_BUG_ON(BITS_PER_LONG > GEN12_MAX_CONTEXT_HW_ID);
@@ -1368,13 +1368,10 @@ static inline void execlists_schedule_in(struct i915_request *rq, int idx)
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
@@ -1424,12 +1421,11 @@ static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
 		resubmit_virtual_request(rq, ve);
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
@@ -1437,7 +1433,7 @@ __execlists_schedule_out(struct i915_request *rq,
 	 * refrain from doing non-trivial work here.
 	 */
 
-	CE_TRACE(ce, "schedule-out, ccid:%x\n", ccid);
+	CE_TRACE(ce, "schedule-out, ccid:%x\n", ce->lrc.ccid);
 
 	/*
 	 * If we have just completed this context, the engine may now be
@@ -1447,12 +1443,13 @@ __execlists_schedule_out(struct i915_request *rq,
 	    i915_request_completed(rq))
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
 
 	intel_context_update_runtime(ce);
@@ -1473,26 +1470,23 @@ __execlists_schedule_out(struct i915_request *rq,
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
+	if (!intel_context_inflight_count(ce)) {
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
