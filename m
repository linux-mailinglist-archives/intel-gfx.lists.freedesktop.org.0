Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 068E71FC264
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 01:37:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5850C6E9D2;
	Tue, 16 Jun 2020 23:37:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32CC46E9D2
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 23:37:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21518885-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jun 2020 00:37:33 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jun 2020 00:37:33 +0100
Message-Id: <20200616233733.18050-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/selftests: Check preemption rollback of
 different ring queue depths
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

Like live_unlite_ring, but instead of simply looking at the impact of
intel_ring_direction(), check that preemption more generally works with
different depths of queued requests in the ring.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 163 +++++++++++++++++++++++++
 1 file changed, 163 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index b8b7b91019f4..4f3758a1cbcf 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -2758,6 +2758,168 @@ static int create_gang(struct intel_engine_cs *engine,
 	return err;
 }
 
+static int __live_preempt_ring(struct intel_engine_cs *engine,
+			       struct igt_spinner *spin,
+			       int queue_sz, int ring_sz)
+{
+	struct intel_context *ce[2] = {};
+	struct i915_request *rq;
+	struct igt_live_test t;
+	int err = 0;
+	int n;
+
+	if (igt_live_test_begin(&t, engine->i915, __func__, engine->name))
+		return -EIO;
+
+	for (n = 0; n < ARRAY_SIZE(ce); n++) {
+		struct intel_context *tmp;
+
+		tmp = intel_context_create(engine);
+		if (IS_ERR(tmp)) {
+			err = PTR_ERR(tmp);
+			goto err_ce;
+		}
+
+		tmp->ring = __intel_context_ring_size(ring_sz);
+
+		err = intel_context_pin(tmp);
+		if (err) {
+			intel_context_put(tmp);
+			goto err_ce;
+		}
+
+		memset32(tmp->ring->vaddr,
+			 0xdeadbeef, /* trigger a hang if executed */
+			 tmp->ring->vma->size / sizeof(u32));
+
+		ce[n] = tmp;
+	}
+
+	rq = igt_spinner_create_request(spin, ce[0], MI_ARB_CHECK);
+	if (IS_ERR(rq)) {
+		err = PTR_ERR(rq);
+		goto err_ce;
+	}
+
+	i915_request_get(rq);
+	rq->sched.attr.priority = I915_PRIORITY_BARRIER;
+	i915_request_add(rq);
+
+	if (!igt_wait_for_spinner(spin, rq)) {
+		intel_gt_set_wedged(engine->gt);
+		i915_request_put(rq);
+		err = -ETIME;
+		goto err_ce;
+	}
+
+	/* Fill the ring, until we will cause a wrap */
+	n = 0;
+	while (ce[0]->ring->tail - rq->wa_tail <= queue_sz) {
+		struct i915_request *tmp;
+
+		tmp = intel_context_create_request(ce[0]);
+		if (IS_ERR(tmp)) {
+			err = PTR_ERR(tmp);
+			i915_request_put(rq);
+			goto err_ce;
+		}
+
+		i915_request_add(tmp);
+		intel_engine_flush_submission(engine);
+		n++;
+	}
+	intel_engine_flush_submission(engine);
+	pr_debug("%s: Filled %d with %d nop tails {size:%x, tail:%x, emit:%x, rq.tail:%x}\n",
+		 engine->name, queue_sz, n,
+		 ce[0]->ring->size,
+		 ce[0]->ring->tail,
+		 ce[0]->ring->emit,
+		 rq->tail);
+	i915_request_put(rq);
+
+	/* Create a second request to preempt the first ring */
+	rq = intel_context_create_request(ce[1]);
+	if (IS_ERR(rq)) {
+		err = PTR_ERR(rq);
+		goto err_ce;
+	}
+
+	rq->sched.attr.priority = I915_PRIORITY_BARRIER;
+	i915_request_get(rq);
+	i915_request_add(rq);
+
+	err = wait_for_submit(engine, rq, HZ / 2);
+	i915_request_put(rq);
+	if (err) {
+		pr_err("%s: preemption request was not submited\n",
+		       engine->name);
+		err = -ETIME;
+	}
+
+	pr_debug("%s: ring[0]:{ tail:%x, emit:%x }, ring[1]:{ tail:%x, emit:%x }\n",
+		 engine->name,
+		 ce[0]->ring->tail, ce[0]->ring->emit,
+		 ce[1]->ring->tail, ce[1]->ring->emit);
+
+err_ce:
+	intel_engine_flush_submission(engine);
+	igt_spinner_end(spin);
+	for (n = 0; n < ARRAY_SIZE(ce); n++) {
+		if (IS_ERR_OR_NULL(ce[n]))
+			break;
+
+		intel_context_unpin(ce[n]);
+		intel_context_put(ce[n]);
+	}
+	if (igt_live_test_end(&t))
+		err = -EIO;
+	return err;
+}
+
+static int live_preempt_ring(void *arg)
+{
+	struct intel_gt *gt = arg;
+	struct intel_engine_cs *engine;
+	struct igt_spinner spin;
+	enum intel_engine_id id;
+	int err = 0;
+
+	/*
+	 * Check that we rollback large chunks of a ring in order to do a
+	 * preemption event. Similar to live_unlite_ring, but looking at
+	 * ring size rather than the impact of intel_ring_direction().
+	 */
+
+	if (igt_spinner_init(&spin, gt))
+		return -ENOMEM;
+
+	for_each_engine(engine, gt, id) {
+		int n;
+
+		if (!intel_engine_has_preemption(engine))
+			continue;
+
+		if (!intel_engine_can_store_dword(engine))
+			continue;
+
+		engine_heartbeat_disable(engine);
+
+		for (n = 0; n <= 3; n++) {
+			err = __live_preempt_ring(engine, &spin,
+						  n * SZ_4K / 4, SZ_4K);
+			if (err)
+				break;
+		}
+
+		engine_heartbeat_enable(engine);
+		if (err)
+			break;
+	}
+
+	igt_spinner_fini(&spin);
+	return err;
+}
+
 static int live_preempt_gang(void *arg)
 {
 	struct intel_gt *gt = arg;
@@ -4540,6 +4702,7 @@ int intel_execlists_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_preempt_cancel),
 		SUBTEST(live_suppress_self_preempt),
 		SUBTEST(live_chain_preempt),
+		SUBTEST(live_preempt_ring),
 		SUBTEST(live_preempt_gang),
 		SUBTEST(live_preempt_timeout),
 		SUBTEST(live_preempt_user),
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
