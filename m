Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2BE3164333
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 12:20:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 466446E0BF;
	Wed, 19 Feb 2020 11:20:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AD936EB7B
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 11:20:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20274414-1500050 
 for multiple; Wed, 19 Feb 2020 11:20:04 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Feb 2020 11:20:04 +0000
Message-Id: <20200219112004.1412791-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200219112004.1412791-1-chris@chris-wilson.co.uk>
References: <20200219112004.1412791-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/selftests: Mark GPR checking more
 hostile
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

Currently, we check that a new context has a clear set of general
purpose registers. Add a little bit of hostility by preempting our new
context and re-poisoning the GPR to ensure that there is no context
leakage from preemption.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 125 ++++++++++++++++++-------
 1 file changed, 93 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 52eb1a8a1a9a..4eba2b3ec81d 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -4344,13 +4344,13 @@ static int live_lrc_state(void *arg)
 	return err;
 }
 
-static int gpr_make_dirty(struct intel_engine_cs *engine)
+static int gpr_make_dirty(struct intel_context *ce)
 {
 	struct i915_request *rq;
 	u32 *cs;
 	int n;
 
-	rq = intel_engine_create_kernel_request(engine);
+	rq = intel_context_create_request(ce);
 	if (IS_ERR(rq))
 		return PTR_ERR(rq);
 
@@ -4362,53 +4362,54 @@ static int gpr_make_dirty(struct intel_engine_cs *engine)
 
 	*cs++ = MI_LOAD_REGISTER_IMM(NUM_GPR_DW);
 	for (n = 0; n < NUM_GPR_DW; n++) {
-		*cs++ = CS_GPR(engine, n);
+		*cs++ = CS_GPR(ce->engine, n);
 		*cs++ = STACK_MAGIC;
 	}
 	*cs++ = MI_NOOP;
 
 	intel_ring_advance(rq, cs);
+
+	rq->sched.attr.priority = I915_PRIORITY_BARRIER;
 	i915_request_add(rq);
 
 	return 0;
 }
 
-static int __live_gpr_clear(struct intel_engine_cs *engine,
-			    struct i915_vma *scratch)
+static struct i915_request *
+__gpr_read(struct intel_context *ce, struct i915_vma *scratch, u32 *slot)
 {
-	struct intel_context *ce;
+	const u32 offset =
+		i915_ggtt_offset(ce->engine->status_page.vma) +
+		offset_in_page(slot);
 	struct i915_request *rq;
 	u32 *cs;
 	int err;
 	int n;
 
-	if (INTEL_GEN(engine->i915) < 9 && engine->class != RENDER_CLASS)
-		return 0; /* GPR only on rcs0 for gen8 */
-
-	err = gpr_make_dirty(engine);
-	if (err)
-		return err;
-
-	ce = intel_context_create(engine);
-	if (IS_ERR(ce))
-		return PTR_ERR(ce);
-
 	rq = intel_context_create_request(ce);
-	if (IS_ERR(rq)) {
-		err = PTR_ERR(rq);
-		goto err_put;
-	}
+	if (IS_ERR(rq))
+		return rq;
 
-	cs = intel_ring_begin(rq, 4 * NUM_GPR_DW);
+	cs = intel_ring_begin(rq, 6 + 4 * NUM_GPR_DW);
 	if (IS_ERR(cs)) {
-		err = PTR_ERR(cs);
 		i915_request_add(rq);
-		goto err_put;
+		return ERR_CAST(cs);
 	}
 
+	*cs++ = MI_ARB_ON_OFF | MI_ARB_ENABLE;
+	*cs++ = MI_NOOP;
+
+	*cs++ = MI_SEMAPHORE_WAIT |
+		MI_SEMAPHORE_GLOBAL_GTT |
+		MI_SEMAPHORE_POLL |
+		MI_SEMAPHORE_SAD_NEQ_SDD;
+	*cs++ = 0;
+	*cs++ = offset;
+	*cs++ = 0;
+
 	for (n = 0; n < NUM_GPR_DW; n++) {
 		*cs++ = MI_STORE_REGISTER_MEM_GEN8 | MI_USE_GGTT;
-		*cs++ = CS_GPR(engine, n);
+		*cs++ = CS_GPR(ce->engine, n);
 		*cs++ = i915_ggtt_offset(scratch) + n * sizeof(u32);
 		*cs++ = 0;
 	}
@@ -4421,8 +4422,54 @@ static int __live_gpr_clear(struct intel_engine_cs *engine,
 
 	i915_request_get(rq);
 	i915_request_add(rq);
+	if (err) {
+		i915_request_put(rq);
+		rq = ERR_PTR(err);
+	}
+
+	return rq;
+}
+
+static int __live_lrc_gpr(struct intel_engine_cs *engine,
+			  struct i915_vma *scratch,
+			  bool preempt)
+{
+	u32 *slot = memset32(engine->status_page.addr + 1000, 0, 4);
+	struct intel_context *ce;
+	struct i915_request *rq;
+	u32 *cs;
+	int err;
+	int n;
+
+	if (INTEL_GEN(engine->i915) < 9 && engine->class != RENDER_CLASS)
+		return 0; /* GPR only on rcs0 for gen8 */
+
+	err = gpr_make_dirty(engine->kernel_context);
 	if (err)
-		goto err_rq;
+		return err;
+
+	ce = intel_context_create(engine);
+	if (IS_ERR(ce))
+		return PTR_ERR(ce);
+
+	rq = __gpr_read(ce, scratch, slot);
+	if (IS_ERR(rq)) {
+		err = PTR_ERR(rq);
+		goto err_put;
+	}
+
+	if (preempt) {
+		err = gpr_make_dirty(engine->kernel_context);
+		if (err)
+			goto err_rq;
+
+		err = emit_semaphore_signal(engine->kernel_context, slot);
+		if (err)
+			goto err_rq;
+	} else {
+		slot[0] = 1;
+		wmb();
+	}
 
 	if (i915_request_wait(rq, 0, HZ / 5) < 0) {
 		err = -ETIME;
@@ -4449,13 +4496,15 @@ static int __live_gpr_clear(struct intel_engine_cs *engine,
 	i915_gem_object_unpin_map(scratch->obj);
 
 err_rq:
+	memset32(&slot[0], -1, 4);
+	wmb();
 	i915_request_put(rq);
 err_put:
 	intel_context_put(ce);
 	return err;
 }
 
-static int live_gpr_clear(void *arg)
+static int live_lrc_gpr(void *arg)
 {
 	struct intel_gt *gt = arg;
 	struct intel_engine_cs *engine;
@@ -4473,14 +4522,26 @@ static int live_gpr_clear(void *arg)
 		return PTR_ERR(scratch);
 
 	for_each_engine(engine, gt, id) {
-		err = __live_gpr_clear(engine, scratch);
+		unsigned long heartbeat;
+
+		engine_heartbeat_disable(engine, &heartbeat);
+
+		err = __live_lrc_gpr(engine, scratch, false);
+		if (err)
+			goto err;
+
+		err = __live_lrc_gpr(engine, scratch, true);
+		if (err)
+			goto err;
+
+err:
+		engine_heartbeat_enable(engine, heartbeat);
+		if (igt_flush_test(gt->i915))
+			err = -EIO;
 		if (err)
 			break;
 	}
 
-	if (igt_flush_test(gt->i915))
-		err = -EIO;
-
 	i915_vma_unpin_and_release(&scratch, 0);
 	return err;
 }
@@ -4779,7 +4840,7 @@ int intel_lrc_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_lrc_layout),
 		SUBTEST(live_lrc_fixed),
 		SUBTEST(live_lrc_state),
-		SUBTEST(live_gpr_clear),
+		SUBTEST(live_lrc_gpr),
 		SUBTEST(live_lrc_timestamp),
 		SUBTEST(live_pphwsp_runtime),
 	};
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
