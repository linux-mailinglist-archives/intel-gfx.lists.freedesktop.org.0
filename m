Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E82FE1964BD
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Mar 2020 10:16:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B3A16EABD;
	Sat, 28 Mar 2020 09:16:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0FF06EABD
 for <intel-gfx@lists.freedesktop.org>; Sat, 28 Mar 2020 09:16:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20722159-1500050 
 for multiple; Sat, 28 Mar 2020 09:16:29 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 28 Mar 2020 09:16:28 +0000
Message-Id: <20200328091628.20381-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Exercise lite-restore on
 top of a semaphore
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

Exercise issuing a lite-restore (a continuation of the same
active context with a new request) while the HW is blocked
on a semaphore. We expect the HW to ACK immediately after the
lite-restore from the next failed semaphore poll.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 174 +++++++++++++++++++++++++
 1 file changed, 174 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 6f06ba750a0a..e4c8e0999553 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -350,6 +350,179 @@ static int live_unlite_preempt(void *arg)
 	return live_unlite_restore(arg, I915_USER_PRIORITY(I915_PRIORITY_MAX));
 }
 
+static struct i915_request *
+create_lite_semaphore(struct intel_context *ce, void *slot)
+{
+	const u32 offset =
+		i915_ggtt_offset(ce->engine->status_page.vma) +
+		offset_in_page(slot);
+	struct i915_request *rq;
+	u32 *cs;
+	int err;
+
+	rq = intel_context_create_request(ce);
+	if (IS_ERR(rq))
+		return rq;
+
+	if (rq->engine->emit_init_breadcrumb) {
+		err = rq->engine->emit_init_breadcrumb(rq);
+		if (err)
+			goto err;
+	}
+
+	cs = intel_ring_begin(rq, 10);
+	if (IS_ERR(cs)) {
+		err = PTR_ERR(cs);
+		goto err;
+	}
+
+	*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
+	*cs++ = offset;
+	*cs++ = 0;
+	*cs++ = 1;
+
+	*cs++ = MI_ARB_ON_OFF | MI_ARB_ENABLE;
+	*cs++ = MI_ARB_CHECK;
+
+	*cs++ = MI_SEMAPHORE_WAIT |
+		MI_SEMAPHORE_GLOBAL_GTT |
+		MI_SEMAPHORE_POLL |
+		MI_SEMAPHORE_SAD_EQ_SDD;
+	*cs++ = 0;
+	*cs++ = offset;
+	*cs++ = 0;
+
+	intel_ring_advance(rq, cs);
+
+	err = 0;
+err:
+	i915_request_get(rq);
+	i915_request_add(rq);
+	if (err) {
+		i915_request_put(rq);
+		return ERR_PTR(err);
+	}
+
+	return rq;
+}
+
+static inline bool
+ring_is_paused(const struct intel_engine_cs *engine)
+{
+	return engine->status_page.addr[I915_GEM_HWS_PREEMPT];
+}
+
+static int live_lite_semaphore(void *arg)
+{
+	struct intel_gt *gt = arg;
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+	int err = -ENOMEM;
+
+	/*
+	 * Exercise issuing a lite-restore (a continuation of the same
+	 * active context with a new request) while the HW is blocked
+	 * on a semaphore. We expect the HW to ACK immediately after the
+	 * lite-restore from the next failed semaphore poll.
+	 */
+
+	err = 0;
+	for_each_engine(engine, gt, id) {
+		struct intel_context *ce;
+		struct i915_request *rq;
+		struct igt_live_test t;
+		unsigned long saved;
+		u32 *slot;
+
+		if (!intel_engine_has_semaphores(engine))
+			continue;
+
+		if (!intel_engine_can_store_dword(engine))
+			continue;
+
+		if (igt_live_test_begin(&t, gt->i915, __func__, engine->name)) {
+			err = -EIO;
+			break;
+		}
+		engine_heartbeat_disable(engine, &saved);
+
+		slot = memset32(engine->status_page.addr + 1000, 0, 4);
+
+		ce = intel_context_create(engine);
+		if (IS_ERR(ce)) {
+			err = PTR_ERR(ce);
+			goto err;
+		}
+
+		rq = create_lite_semaphore(ce, slot);
+		if (IS_ERR(rq)) {
+			err = PTR_ERR(rq);
+			goto err_ce;
+		}
+
+		if (wait_for(READ_ONCE(*slot), 50)) {
+			GEM_TRACE_ERR("%s: failed to submit request\n",
+				      engine->name);
+			err = -ETIME;
+			goto err_rq;
+		}
+
+		intel_engine_flush_submission(engine);
+		GEM_BUG_ON(engine->execlists.pending[0]);
+
+		/* Switch from the inner semaphore to the preempt-to-busy one */
+		ring_set_paused(engine, 1);
+		WRITE_ONCE(*slot, 0);
+
+		if (i915_request_wait(rq, 0, HZ / 2) < 0) {
+			GEM_TRACE_ERR("%s: failed to complete request\n",
+				      engine->name);
+			err = -ETIME;
+			goto err_rq;
+		}
+
+		i915_request_put(rq);
+
+		rq = intel_context_create_request(ce);
+		if (IS_ERR(rq)) {
+			err = PTR_ERR(rq);
+			goto err_ce;
+		}
+
+		/*
+		 * The ring_is_paused() should only be cleared on the HW ACK
+		 * following the preemption request (see process_csb()). We
+		 * depend on the HW processing that ACK even if it is currently
+		 * inside a semaphore.
+		 */
+		GEM_BUG_ON(!ring_is_paused(engine));
+		GEM_BUG_ON(engine->execlists.pending[0]);
+
+		i915_request_get(rq);
+		i915_request_add(rq);
+
+		if (i915_request_wait(rq, 0, HZ / 2) < 0) {
+			GEM_TRACE_ERR("%s: failed to complete lite-restore\n",
+				      engine->name);
+			err = -ETIME;
+			goto err_rq;
+		}
+
+err_rq:
+		i915_request_put(rq);
+err_ce:
+		intel_context_put(ce);
+err:
+		engine_heartbeat_enable(engine, saved);
+		if (igt_live_test_end(&t))
+			err = -EIO;
+		if (err)
+			break;
+	}
+
+	return err;
+}
+
 static int live_pin_rewind(void *arg)
 {
 	struct intel_gt *gt = arg;
@@ -3954,6 +4127,7 @@ int intel_execlists_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_sanitycheck),
 		SUBTEST(live_unlite_switch),
 		SUBTEST(live_unlite_preempt),
+		SUBTEST(live_lite_semaphore),
 		SUBTEST(live_pin_rewind),
 		SUBTEST(live_hold_reset),
 		SUBTEST(live_error_interrupt),
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
