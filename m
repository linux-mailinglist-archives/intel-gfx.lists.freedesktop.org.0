Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BD5157FFD
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 17:43:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED649890B6;
	Mon, 10 Feb 2020 16:43:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CED9890B6
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2020 16:43:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20177756-1500050 
 for multiple; Mon, 10 Feb 2020 16:42:17 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Feb 2020 16:42:15 +0000
Message-Id: <20200210164215.528610-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Avoid resetting ring->head outside
 of its timeline mutex
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We manipulate ring->head while active in i915_request_retire underneath
the timeline manipulation. We cannot rely on a stable ring->head outside
of the timeline->mutex, in particular while setting up the context for
resume and reset.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/1126
References: f3c0efc9fe7a ("drm/i915/execlists: Leave resetting ring to intel_ring")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c    | 36 ++++++++++++--------------
 drivers/gpu/drm/i915/gt/selftest_lrc.c |  2 +-
 2 files changed, 18 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 230470c58ec9..3f75861a53c6 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -235,7 +235,8 @@ static void execlists_init_reg_state(u32 *reg_state,
 				     bool close);
 static void
 __execlists_update_reg_state(const struct intel_context *ce,
-			     const struct intel_engine_cs *engine);
+			     const struct intel_engine_cs *engine,
+			     u32 head);
 
 static void mark_eio(struct i915_request *rq)
 {
@@ -1184,12 +1185,11 @@ static void reset_active(struct i915_request *rq,
 		head = rq->tail;
 	else
 		head = active_request(ce->timeline, rq)->head;
-	ce->ring->head = intel_ring_wrap(ce->ring, head);
-	intel_ring_update_space(ce->ring);
+	head = intel_ring_wrap(ce->ring, head);
 
 	/* Scrub the context image to prevent replaying the previous batch */
 	restore_default_state(ce, engine);
-	__execlists_update_reg_state(ce, engine);
+	__execlists_update_reg_state(ce, engine, head);
 
 	/* We've switched away, so this should be a no-op, but intent matters */
 	ce->lrc_desc |= CTX_DESC_FORCE_RESTORE;
@@ -2878,16 +2878,17 @@ static void execlists_context_unpin(struct intel_context *ce)
 
 static void
 __execlists_update_reg_state(const struct intel_context *ce,
-			     const struct intel_engine_cs *engine)
+			     const struct intel_engine_cs *engine,
+			     u32 head)
 {
 	struct intel_ring *ring = ce->ring;
 	u32 *regs = ce->lrc_reg_state;
 
-	GEM_BUG_ON(!intel_ring_offset_valid(ring, ring->head));
+	GEM_BUG_ON(!intel_ring_offset_valid(ring, head));
 	GEM_BUG_ON(!intel_ring_offset_valid(ring, ring->tail));
 
 	regs[CTX_RING_START] = i915_ggtt_offset(ring->vma);
-	regs[CTX_RING_HEAD] = ring->head;
+	regs[CTX_RING_HEAD] = head;
 	regs[CTX_RING_TAIL] = ring->tail;
 
 	/* RPCS */
@@ -2916,7 +2917,7 @@ __execlists_context_pin(struct intel_context *ce,
 
 	ce->lrc_desc = lrc_descriptor(ce, engine) | CTX_DESC_FORCE_RESTORE;
 	ce->lrc_reg_state = vaddr + LRC_STATE_PN * PAGE_SIZE;
-	__execlists_update_reg_state(ce, engine);
+	__execlists_update_reg_state(ce, engine, ce->ring->tail);
 
 	return 0;
 }
@@ -2941,7 +2942,7 @@ static void execlists_context_reset(struct intel_context *ce)
 	/* Scrub away the garbage */
 	execlists_init_reg_state(ce->lrc_reg_state,
 				 ce, ce->engine, ce->ring, true);
-	__execlists_update_reg_state(ce, ce->engine);
+	__execlists_update_reg_state(ce, ce->engine, ce->ring->tail);
 
 	ce->lrc_desc |= CTX_DESC_FORCE_RESTORE;
 }
@@ -3538,6 +3539,7 @@ static void __execlists_reset(struct intel_engine_cs *engine, bool stalled)
 	struct intel_engine_execlists * const execlists = &engine->execlists;
 	struct intel_context *ce;
 	struct i915_request *rq;
+	u32 head;
 
 	mb(); /* paranoia: read the CSB pointers from after the reset */
 	clflush(execlists->csb_write);
@@ -3565,15 +3567,15 @@ static void __execlists_reset(struct intel_engine_cs *engine, bool stalled)
 
 	if (i915_request_completed(rq)) {
 		/* Idle context; tidy up the ring so we can restart afresh */
-		ce->ring->head = intel_ring_wrap(ce->ring, rq->tail);
+		head = intel_ring_wrap(ce->ring, rq->tail);
 		goto out_replay;
 	}
 
 	/* Context has requests still in-flight; it should not be idle! */
 	GEM_BUG_ON(i915_active_is_idle(&ce->active));
 	rq = active_request(ce->timeline, rq);
-	ce->ring->head = intel_ring_wrap(ce->ring, rq->head);
-	GEM_BUG_ON(ce->ring->head == ce->ring->tail);
+	head = intel_ring_wrap(ce->ring, rq->head);
+	GEM_BUG_ON(head == ce->ring->tail);
 
 	/*
 	 * If this request hasn't started yet, e.g. it is waiting on a
@@ -3618,10 +3620,9 @@ static void __execlists_reset(struct intel_engine_cs *engine, bool stalled)
 
 out_replay:
 	ENGINE_TRACE(engine, "replay {head:%04x, tail:%04x}\n",
-		     ce->ring->head, ce->ring->tail);
-	intel_ring_update_space(ce->ring);
+		     head, ce->ring->tail);
 	__execlists_reset_reg_state(ce, engine);
-	__execlists_update_reg_state(ce, engine);
+	__execlists_update_reg_state(ce, engine, head);
 	ce->lrc_desc |= CTX_DESC_FORCE_RESTORE; /* paranoid: GPU was reset! */
 
 unwind:
@@ -5265,10 +5266,7 @@ void intel_lr_context_reset(struct intel_engine_cs *engine,
 		restore_default_state(ce, engine);
 
 	/* Rerun the request; its payload has been neutered (if guilty). */
-	ce->ring->head = head;
-	intel_ring_update_space(ce->ring);
-
-	__execlists_update_reg_state(ce, engine);
+	__execlists_update_reg_state(ce, engine, head);
 }
 
 bool
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 79b9f7d092e4..6f0295f18b38 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -201,7 +201,7 @@ static int live_unlite_restore(struct intel_gt *gt, int prio)
 		}
 		GEM_BUG_ON(!ce[1]->ring->size);
 		intel_ring_reset(ce[1]->ring, ce[1]->ring->size / 2);
-		__execlists_update_reg_state(ce[1], engine);
+		__execlists_update_reg_state(ce[1], engine, ce[1]->ring->head);
 
 		rq[0] = igt_spinner_create_request(&spin, ce[0], MI_ARB_CHECK);
 		if (IS_ERR(rq[0])) {
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
