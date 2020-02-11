Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DAF159ACA
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 21:56:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E3C56E2D8;
	Tue, 11 Feb 2020 20:56:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6C116E26C
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 20:56:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20192202-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 20:56:15 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Feb 2020 20:56:15 +0000
Message-Id: <20200211205615.1190127-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200211205615.1190127-1-chris@chris-wilson.co.uk>
References: <20200211205615.1190127-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915/selftests: Sabotague the RING_HEAD
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

Apply vast quantities of poison and not tell anyone to see if we fall
for the trap of using a stale RING_HEAD.

References: 42827350f75c ("drm/i915/gt: Avoid resetting ring->head outside of its timeline mutex")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 79 ++++++++++++++++++++++++++
 1 file changed, 79 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index e53bfedeb97e..26d39c111d16 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -300,6 +300,84 @@ static int live_unlite_preempt(void *arg)
 	return live_unlite_restore(arg, I915_USER_PRIORITY(I915_PRIORITY_MAX));
 }
 
+static int live_pin_rewind(void *arg)
+{
+	struct intel_gt *gt = arg;
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+	int err = 0;
+
+	/*
+	 * We have to be careful not to trust intel_ring too much, for example
+	 * ring->head is updated upon retire which is out of sync with pinning
+	 * the context. Thus we cannot use ring->head to set CTX_RING_HEAD,
+	 * or else we risk writing an older, stale value.
+	 *
+	 * To simulate this, let's apply a bit of deliberate sabotague.
+	 */
+
+	for_each_engine(engine, gt, id) {
+		struct intel_context *ce;
+		struct i915_request *rq;
+		struct intel_ring *ring;
+		struct igt_live_test t;
+
+		if (igt_live_test_begin(&t, gt->i915, __func__, engine->name)) {
+			err = -EIO;
+			break;
+		}
+
+		ce = intel_context_create(engine);
+		if (IS_ERR(ce)) {
+			err = PTR_ERR(ce);
+			break;
+		}
+
+		err = intel_context_pin(ce);
+		if (err) {
+			intel_context_put(ce);
+			break;
+		}
+
+		/* Keep the context awake while we play games */
+		err = i915_active_acquire(&ce->active);
+		if (err) {
+			intel_context_unpin(ce);
+			intel_context_put(ce);
+			break;
+		}
+		ring = ce->ring;
+
+		/* Poison the ring, and offset the next request from HEAD */
+		memset32(ring->vaddr, STACK_MAGIC, ring->size / sizeof(u32));
+		ring->emit = ring->size / 2;
+		ring->tail = ring->emit;
+		GEM_BUG_ON(ring->head);
+
+		intel_context_unpin(ce);
+
+		/* Submit a simple nop request */
+		GEM_BUG_ON(intel_context_is_pinned(ce));
+		rq = intel_context_create_request(ce);
+		i915_active_release(&ce->active); /* e.g. async retire */
+		intel_context_put(ce);
+		if (IS_ERR(rq)) {
+			err = PTR_ERR(rq);
+			break;
+		}
+		GEM_BUG_ON(!rq->head);
+		i915_request_add(rq);
+
+		/* Expect not to hang! */
+		if (igt_live_test_end(&t)) {
+			err = -EIO;
+			break;
+		}
+	}
+
+	return err;
+}
+
 static int live_hold_reset(void *arg)
 {
 	struct intel_gt *gt = arg;
@@ -3629,6 +3707,7 @@ int intel_execlists_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_sanitycheck),
 		SUBTEST(live_unlite_switch),
 		SUBTEST(live_unlite_preempt),
+		SUBTEST(live_pin_rewind),
 		SUBTEST(live_hold_reset),
 		SUBTEST(live_error_interrupt),
 		SUBTEST(live_timeslice_preempt),
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
