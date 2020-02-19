Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7D8164334
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 12:20:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C5446EB7C;
	Wed, 19 Feb 2020 11:20:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9FDE6EB7C
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 11:20:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20274413-1500050 
 for multiple; Wed, 19 Feb 2020 11:20:04 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Feb 2020 11:20:03 +0000
Message-Id: <20200219112004.1412791-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/selftest: Analyse timestamp
 behaviour across context switches
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

Check that the CTX_TIMESTAMP is monotonic across context save/restore
and upon preemption.

References: https://gitlab.freedesktop.org/drm/intel/issues/1233
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 229 +++++++++++++++++++++++++
 1 file changed, 229 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index a9c9cfb2def8..52eb1a8a1a9a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -3985,6 +3985,36 @@ static void hexdump(const void *buf, size_t len)
 	}
 }
 
+static int emit_semaphore_signal(struct intel_context *ce, void *slot)
+{
+	const u32 offset =
+		i915_ggtt_offset(ce->engine->status_page.vma) +
+		offset_in_page(slot);
+	struct i915_request *rq;
+	u32 *cs;
+
+	rq = intel_context_create_request(ce);
+	if (IS_ERR(rq))
+		return PTR_ERR(rq);
+
+	cs = intel_ring_begin(rq, 4);
+	if (IS_ERR(cs)) {
+		i915_request_add(rq);
+		return PTR_ERR(cs);
+	}
+
+	*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
+	*cs++ = offset;
+	*cs++ = 0;
+	*cs++ = 1;
+
+	intel_ring_advance(rq, cs);
+
+	rq->sched.attr.priority = I915_PRIORITY_BARRIER;
+	i915_request_add(rq);
+	return 0;
+}
+
 static int live_lrc_layout(void *arg)
 {
 	struct intel_gt *gt = arg;
@@ -4455,6 +4485,204 @@ static int live_gpr_clear(void *arg)
 	return err;
 }
 
+static struct i915_request *
+create_timestamp(struct intel_context *ce, void *slot, int idx)
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
+	cs = intel_ring_begin(rq, 10);
+	if (IS_ERR(cs)) {
+		err = PTR_ERR(cs);
+		goto err;
+	}
+
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
+	*cs++ = MI_STORE_REGISTER_MEM_GEN8 | MI_USE_GGTT;
+	*cs++ = i915_mmio_reg_offset(RING_CTX_TIMESTAMP(rq->engine->mmio_base));
+	*cs++ = offset + idx * sizeof(u32);
+	*cs++ = 0;
+
+	intel_ring_advance(rq, cs);
+
+	rq->sched.attr.priority = I915_PRIORITY_MASK;
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
+struct lrc_timestamp {
+	struct intel_engine_cs *engine;
+	struct intel_context *ce[2];
+	u32 poison;
+};
+
+static bool timestamp_advanced(u32 start, u32 end)
+{
+	return (s32)(end - start) > 0;
+}
+
+static int __lrc_timestamp(const struct lrc_timestamp *arg, bool preempt)
+{
+	u32 *slot = memset32(arg->engine->status_page.addr + 1000, 0, 4);
+	struct i915_request *rq;
+	u32 timestamp;
+	int err = 0;
+
+	arg->ce[0]->lrc_reg_state[CTX_TIMESTAMP] = arg->poison;
+	rq = create_timestamp(arg->ce[0], slot, 1);
+	if (IS_ERR(rq))
+		return PTR_ERR(rq);
+
+	err = wait_for_submit(rq->engine, rq, HZ / 2);
+	if (err)
+		goto err;
+
+	if (preempt) {
+		arg->ce[1]->lrc_reg_state[CTX_TIMESTAMP] = 0xdeadbeef;
+		err = emit_semaphore_signal(arg->ce[1], slot);
+		if (err)
+			goto err;
+	} else {
+		slot[0] = 1;
+		wmb();
+	}
+
+	if (i915_request_wait(rq, 0, HZ / 2) < 0) {
+		err = -ETIME;
+		goto err;
+	}
+
+	/* and wait for switch to kernel */
+	if (igt_flush_test(arg->engine->i915)) {
+		err = -EIO;
+		goto err;
+	}
+
+	rmb();
+
+	if (!timestamp_advanced(arg->poison, slot[1])) {
+		pr_err("%s(%s): invalid timestamp on restore, context:%x, request:%x\n",
+		       arg->engine->name, preempt ? "preempt" : "simple",
+		       arg->poison, slot[1]);
+		err = -EINVAL;
+	}
+
+	timestamp = READ_ONCE(arg->ce[0]->lrc_reg_state[CTX_TIMESTAMP]);
+	if (!timestamp_advanced(slot[1], timestamp)) {
+		pr_err("%s(%s): invalid timestamp on save, request:%x, context:%x\n",
+		       arg->engine->name, preempt ? "preempt" : "simple",
+		       slot[1], timestamp);
+		err = -EINVAL;
+	}
+
+err:
+	memset32(slot, -1, 4);
+	i915_request_put(rq);
+	return err;
+}
+
+static int live_lrc_timestamp(void *arg)
+{
+	struct intel_gt *gt = arg;
+	enum intel_engine_id id;
+	struct lrc_timestamp data;
+	const u32 poison[] = {
+		0,
+		S32_MAX,
+		(u32)S32_MAX + 1,
+		U32_MAX,
+	};
+
+	/*
+	 * We want to verify that the timestamp is saved and restore across
+	 * context switches and is monotonic.
+	 *
+	 * So we do this with a little bit of LRC poisoning to check various
+	 * boundary conditions, and see what happens if we preempt the context
+	 * with a second request (carrying more poison into the timestamp).
+	 */
+
+	for_each_engine(data.engine, gt, id) {
+		unsigned long heartbeat;
+		int i, err = 0;
+
+		engine_heartbeat_disable(data.engine, &heartbeat);
+
+		for (i = 0; i < ARRAY_SIZE(data.ce); i++) {
+			struct intel_context *tmp;
+
+			tmp = intel_context_create(data.engine);
+			if (IS_ERR(tmp)) {
+				err = PTR_ERR(tmp);
+				goto err;
+			}
+
+			err = intel_context_pin(tmp);
+			if (err) {
+				intel_context_put(tmp);
+				goto err;
+			}
+
+			data.ce[i] = tmp;
+		}
+
+		for (i = 0; i < ARRAY_SIZE(poison); i++) {
+			data.poison = poison[i];
+
+			err = __lrc_timestamp(&data, false);
+			if (err)
+				break;
+
+			err = __lrc_timestamp(&data, true);
+			if (err)
+				break;
+		}
+
+err:
+		engine_heartbeat_enable(data.engine, heartbeat);
+		for (i = 0; i < ARRAY_SIZE(data.ce); i++) {
+			if (!data.ce[i])
+				break;
+
+			intel_context_unpin(data.ce[i]);
+			intel_context_put(data.ce[i]);
+		}
+
+		if (igt_flush_test(gt->i915))
+			err = -EIO;
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
 static int __live_pphwsp_runtime(struct intel_engine_cs *engine)
 {
 	struct intel_context *ce;
@@ -4552,6 +4780,7 @@ int intel_lrc_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_lrc_fixed),
 		SUBTEST(live_lrc_state),
 		SUBTEST(live_gpr_clear),
+		SUBTEST(live_lrc_timestamp),
 		SUBTEST(live_pphwsp_runtime),
 	};
 
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
