Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 593C81FA0EF
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2020 22:06:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C0EB6E4F4;
	Mon, 15 Jun 2020 20:06:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB0036E4F4
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jun 2020 20:06:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21505989-1500050 
 for multiple; Mon, 15 Jun 2020 21:06:04 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 15 Jun 2020 21:06:03 +0100
Message-Id: <20200615200603.18827-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Exercise far preemption
 rollbacks
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

Not too long ago, we realised we had issues with a rolling back a
context so far for a preemption request we considered the resubmit not
to be a rollback but a forward roll. This means we would issue a lite
restore instead of forcing a full restore, continuing execution of the
old requests rather than causing a preemption. Add a selftest to
exercise such a far rollback, such that if we were to skip the full
restore, we would execute invalid instructions in the ring and hang.

Note that while I was able to confirm that this causes us to do a
lite-restore preemption rollback (with commit e36ba817fa96 ("drm/i915/gt:
Incrementally check for rewinding") disabled), it did not trick the HW
into rolling past the old RING_TAIL. Myybe on other HW.

References: e36ba817fa96 ("drm/i915/gt: Incrementally check for rewinding")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 150 +++++++++++++++++++++++++
 1 file changed, 150 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 91543494f595..dc11d8562d34 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -363,6 +363,155 @@ static int live_unlite_preempt(void *arg)
 	return live_unlite_restore(arg, I915_USER_PRIORITY(I915_PRIORITY_MAX));
 }
 
+static int live_unlite_ring(void *arg)
+{
+	struct intel_gt *gt = arg;
+	struct intel_engine_cs *engine;
+	struct igt_spinner spin;
+	enum intel_engine_id id;
+	int err = 0;
+
+	/*
+	 * Setup a preemption event that will cause almost the entire ring
+	 * to be unwound, potentially fooling our intel_ring_direction()
+	 * into emitting a forward lite-restore instead of the rollback.
+	 */
+
+	if (igt_spinner_init(&spin, gt))
+		return -ENOMEM;
+
+	for_each_engine(engine, gt, id) {
+		struct intel_context *ce[2] = {};
+		struct i915_request *rq;
+		struct igt_live_test t;
+		int n;
+
+		if (!intel_engine_has_preemption(engine))
+			continue;
+
+		if (!intel_engine_can_store_dword(engine))
+			continue;
+
+		if (igt_live_test_begin(&t, gt->i915, __func__, engine->name)) {
+			err = -EIO;
+			break;
+		}
+		engine_heartbeat_disable(engine);
+
+		for (n = 0; n < ARRAY_SIZE(ce); n++) {
+			struct intel_context *tmp;
+
+			tmp = intel_context_create(engine);
+			if (IS_ERR(tmp)) {
+				err = PTR_ERR(tmp);
+				goto err_ce;
+			}
+
+			err = intel_context_pin(tmp);
+			if (err) {
+				intel_context_put(tmp);
+				goto err_ce;
+			}
+
+			memset32(tmp->ring->vaddr,
+				 0xdeadbeef, /* trigger a hang if executed */
+				 tmp->ring->vma->size / sizeof(u32));
+
+			ce[n] = tmp;
+		}
+
+		rq = igt_spinner_create_request(&spin, ce[0], MI_ARB_CHECK);
+		if (IS_ERR(rq)) {
+			err = PTR_ERR(rq);
+			goto err_ce;
+		}
+
+		i915_request_get(rq);
+		rq->sched.attr.priority = I915_PRIORITY_BARRIER;
+		i915_request_add(rq);
+
+		if (!igt_wait_for_spinner(&spin, rq)) {
+			intel_gt_set_wedged(gt);
+			i915_request_put(rq);
+			err = -ETIME;
+			goto err_ce;
+		}
+
+		/* Fill the ring, until we will cause a wrap */
+		n = 0;
+		while (intel_ring_direction(ce[0]->ring,
+					    rq->wa_tail,
+					    ce[0]->ring->emit) <= 0) {
+			struct i915_request *tmp;
+
+			tmp = intel_context_create_request(ce[0]);
+			if (IS_ERR(tmp)) {
+				err = PTR_ERR(tmp);
+				i915_request_put(rq);
+				goto err_ce;
+			}
+
+			i915_request_add(tmp);
+			intel_engine_flush_submission(engine);
+			n++;
+		}
+		intel_engine_flush_submission(engine);
+		pr_debug("%s: Filled ring with %d nop tails {size:%x, tail:%x, emit:%x, rq.tail:%x}\n",
+			 engine->name, n,
+			 ce[0]->ring->size,
+			 ce[0]->ring->tail,
+			 ce[0]->ring->emit,
+			 rq->tail);
+		GEM_BUG_ON(intel_ring_direction(ce[0]->ring,
+						rq->tail,
+						ce[0]->ring->tail) <= 0);
+		i915_request_put(rq);
+
+		/* Create a second request to preempt the first ring */
+		rq = intel_context_create_request(ce[1]);
+		if (IS_ERR(rq)) {
+			err = PTR_ERR(rq);
+			goto err_ce;
+		}
+
+		rq->sched.attr.priority = I915_PRIORITY_BARRIER;
+		i915_request_get(rq);
+		i915_request_add(rq);
+
+		err = wait_for_submit(engine, rq, HZ / 2);
+		i915_request_put(rq);
+		if (err) {
+			pr_err("%s: preemption request was not submited\n",
+			       engine->name);
+			err = -ETIME;
+		}
+
+		pr_debug("%s: ring[0]:{ tail:%x, emit:%x }, ring[1]:{ tail:%x, emit:%x }\n",
+			 engine->name,
+			 ce[0]->ring->tail, ce[0]->ring->emit,
+			 ce[1]->ring->tail, ce[1]->ring->emit);
+
+err_ce:
+		intel_engine_flush_submission(engine);
+		igt_spinner_end(&spin);
+		for (n = 0; n < ARRAY_SIZE(ce); n++) {
+			if (IS_ERR_OR_NULL(ce[n]))
+				break;
+
+			intel_context_unpin(ce[n]);
+			intel_context_put(ce[n]);
+		}
+		engine_heartbeat_enable(engine);
+		if (igt_live_test_end(&t))
+			err = -EIO;
+		if (err)
+			break;
+	}
+
+	igt_spinner_fini(&spin);
+	return err;
+}
+
 static int live_pin_rewind(void *arg)
 {
 	struct intel_gt *gt = arg;
@@ -4374,6 +4523,7 @@ int intel_execlists_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_sanitycheck),
 		SUBTEST(live_unlite_switch),
 		SUBTEST(live_unlite_preempt),
+		SUBTEST(live_unlite_ring),
 		SUBTEST(live_pin_rewind),
 		SUBTEST(live_hold_reset),
 		SUBTEST(live_error_interrupt),
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
