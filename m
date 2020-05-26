Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 838331B3CE1
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 12:09:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B58B56E3A8;
	Wed, 22 Apr 2020 10:09:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9DA76E3A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2020 10:09:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20981196-1500050 
 for multiple; Wed, 22 Apr 2020 11:09:08 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Apr 2020 11:09:03 +0100
Message-Id: <20200422100903.25216-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/selftests: Try to detect rollback
 during batchbuffer preemption
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

Since batch buffers dominant execution time, most preemption requests
should naturally occur during execution of a batch buffer. We wish to
verify that should a preemption occur within a batch buffer, when we
come to restart that batch buffer, it occurs at the interrupted
instruction and most importantly does not rollback to an earlier point.

v2: Do not clear the GPR at the start of the batch, but rely on them
being clear for new contexts.

Suggested-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 329 ++++++++++++++++++++++++-
 1 file changed, 328 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 6f5e35afe1b2..fc3f9a248764 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -21,7 +21,8 @@
 #include "gem/selftests/mock_context.h"
 
 #define CS_GPR(engine, n) ((engine)->mmio_base + 0x600 + (n) * 4)
-#define NUM_GPR_DW (16 * 2) /* each GPR is 2 dwords */
+#define NUM_GPR 16
+#define NUM_GPR_DW (NUM_GPR * 2) /* each GPR is 2 dwords */
 
 static struct i915_vma *create_scratch(struct intel_gt *gt)
 {
@@ -2791,6 +2792,331 @@ static int live_preempt_gang(void *arg)
 	return 0;
 }
 
+static struct i915_vma *
+create_gpr_user(struct intel_engine_cs *engine,
+		struct i915_vma *result,
+		unsigned int offset)
+{
+	struct drm_i915_gem_object *obj;
+	struct i915_vma *vma;
+	u32 *cs;
+	int err;
+	int i;
+
+	obj = i915_gem_object_create_internal(engine->i915, 4096);
+	if (IS_ERR(obj))
+		return ERR_CAST(obj);
+
+	vma = i915_vma_instance(obj, result->vm, NULL);
+	if (IS_ERR(vma)) {
+		i915_gem_object_put(obj);
+		return vma;
+	}
+
+	err = i915_vma_pin(vma, 0, 0, PIN_USER);
+	if (err) {
+		i915_vma_put(vma);
+		return ERR_PTR(err);
+	}
+
+	cs = i915_gem_object_pin_map(obj, I915_MAP_WC);
+	if (IS_ERR(cs)) {
+		i915_vma_put(vma);
+		return ERR_CAST(cs);
+	}
+
+	/* All GPR are clear for new contexts. We use GPR(0) as a constant */
+	*cs++ = MI_LOAD_REGISTER_IMM(1);
+	*cs++ = CS_GPR(engine, 0);
+	*cs++ = 1;
+
+	for (i = 1; i < NUM_GPR; i++) {
+		u64 addr;
+
+		/*
+		 * Perform: GPR[i]++
+		 *
+		 * As we read and write into the context saved GPR[i], if
+		 * we restart this batch buffer from an earlier point, we
+		 * will repeat the increment and store a value > 1.
+		 */
+		*cs++ = MI_MATH(4);
+		*cs++ = MI_MATH_LOAD(MI_MATH_REG_SRCA, MI_MATH_REG(i));
+		*cs++ = MI_MATH_LOAD(MI_MATH_REG_SRCB, MI_MATH_REG(0));
+		*cs++ = MI_MATH_ADD;
+		*cs++ = MI_MATH_STORE(MI_MATH_REG(i), MI_MATH_REG_ACCU);
+
+		addr = result->node.start + offset + i * sizeof(*cs);
+		*cs++ = MI_STORE_REGISTER_MEM_GEN8;
+		*cs++ = CS_GPR(engine, 2 * i);
+		*cs++ = lower_32_bits(addr);
+		*cs++ = upper_32_bits(addr);
+
+		*cs++ = MI_SEMAPHORE_WAIT |
+			MI_SEMAPHORE_POLL |
+			MI_SEMAPHORE_SAD_GTE_SDD;
+		*cs++ = i;
+		*cs++ = lower_32_bits(result->node.start);
+		*cs++ = upper_32_bits(result->node.start);
+	}
+
+	*cs++ = MI_BATCH_BUFFER_END;
+	i915_gem_object_flush_map(obj);
+	i915_gem_object_unpin_map(obj);
+
+	return vma;
+}
+
+static struct i915_vma *create_global(struct intel_gt *gt, size_t sz)
+{
+	struct drm_i915_gem_object *obj;
+	struct i915_vma *vma;
+	int err;
+
+	obj = i915_gem_object_create_internal(gt->i915, sz);
+	if (IS_ERR(obj))
+		return ERR_CAST(obj);
+
+	vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
+	if (IS_ERR(vma)) {
+		i915_gem_object_put(obj);
+		return vma;
+	}
+
+	err = i915_ggtt_pin(vma, 0, 0);
+	if (err) {
+		i915_vma_put(vma);
+		return ERR_PTR(err);
+	}
+
+	return vma;
+}
+
+static struct i915_request *
+create_gpr_client(struct intel_engine_cs *engine,
+		  struct i915_vma *global,
+		  unsigned int offset)
+{
+	struct i915_vma *batch, *vma;
+	struct intel_context *ce;
+	struct i915_request *rq;
+	int err;
+
+	ce = intel_context_create(engine);
+	if (IS_ERR(ce))
+		return ERR_CAST(ce);
+
+	vma = i915_vma_instance(global->obj, ce->vm, NULL);
+	if (IS_ERR(vma)) {
+		err = PTR_ERR(vma);
+		goto out_ce;
+	}
+
+	err = i915_vma_pin(vma, 0, 0, PIN_USER);
+	if (err)
+		goto out_ce;
+
+	batch = create_gpr_user(engine, vma, offset);
+	if (IS_ERR(batch)) {
+		err = PTR_ERR(batch);
+		goto out_vma;
+	}
+
+	rq = intel_context_create_request(ce);
+	if (IS_ERR(rq)) {
+		err = PTR_ERR(rq);
+		goto out_batch;
+	}
+
+	i915_vma_lock(vma);
+	err = i915_request_await_object(rq, vma->obj, false);
+	if (!err)
+		err = i915_vma_move_to_active(vma, rq, 0);
+	i915_vma_unlock(vma);
+
+	i915_vma_lock(batch);
+	if (!err)
+		err = i915_request_await_object(rq, batch->obj, false);
+	if (!err)
+		err = i915_vma_move_to_active(batch, rq, 0);
+	if (!err)
+		err = rq->engine->emit_bb_start(rq,
+						batch->node.start,
+						PAGE_SIZE, 0);
+	i915_vma_unlock(batch);
+	i915_vma_unpin(batch);
+
+	if (!err)
+		i915_request_get(rq);
+	i915_request_add(rq);
+
+out_batch:
+	i915_vma_put(batch);
+out_vma:
+	i915_vma_unpin(vma);
+out_ce:
+	intel_context_put(ce);
+	return err ? ERR_PTR(err) : rq;
+}
+
+static int preempt_user(struct intel_engine_cs *engine,
+			struct i915_vma *global,
+			int id)
+{
+	struct i915_sched_attr attr = {
+		.priority = I915_PRIORITY_MAX
+	};
+	struct i915_request *rq;
+	int err = 0;
+	u32 *cs;
+
+	rq = intel_engine_create_kernel_request(engine);
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
+	*cs++ = i915_ggtt_offset(global);
+	*cs++ = 0;
+	*cs++ = id;
+
+	intel_ring_advance(rq, cs);
+
+	i915_request_get(rq);
+	i915_request_add(rq);
+
+	engine->schedule(rq, &attr);
+
+	if (i915_request_wait(rq, 0, HZ / 2) < 0)
+		err = -ETIME;
+	i915_request_put(rq);
+
+	return err;
+}
+
+static int live_preempt_user(void *arg)
+{
+	struct intel_gt *gt = arg;
+	struct intel_engine_cs *engine;
+	struct i915_vma *global;
+	enum intel_engine_id id;
+	u32 *result;
+	int err = 0;
+
+	if (!HAS_LOGICAL_RING_PREEMPTION(gt->i915))
+		return 0;
+
+	/*
+	 * In our other tests, we look at preemption in carefully
+	 * controlled conditions in the ringbuffer. Since most of the
+	 * time is spent in user batches, most of our preemptions naturally
+	 * occur there. We want to verify that when we preempt inside a batch
+	 * we continue on from the current instruction and do not roll back
+	 * to the start, or another earlier arbitration point.
+	 *
+	 * To verify this, we create a batch which is a mixture of
+	 * MI_MATH (gpr++) MI_SRM (gpr) and preemption points. Then with
+	 * a few preempting contexts thrown into the mix, we look for any
+	 * repeated instructions (which show up as incorrect values).
+	 */
+
+	global = create_global(gt, 4096);
+	if (IS_ERR(global))
+		return PTR_ERR(global);
+
+	result = i915_gem_object_pin_map(global->obj, I915_MAP_WC);
+	if (IS_ERR(result)) {
+		i915_vma_unpin_and_release(&global, 0);
+		return PTR_ERR(result);
+	}
+
+	for_each_engine(engine, gt, id) {
+		struct i915_request *client[3] = {};
+		struct igt_live_test t;
+		int i;
+
+		if (!intel_engine_has_preemption(engine))
+			continue;
+
+		if (IS_GEN(gt->i915, 8) && engine->class != RENDER_CLASS)
+			continue; /* we need per-context GPR */
+
+		if (igt_live_test_begin(&t, gt->i915, __func__, engine->name)) {
+			err = -EIO;
+			break;
+		}
+
+		memset(result, 0, 4096);
+
+		for (i = 0; i < ARRAY_SIZE(client); i++) {
+			struct i915_request *rq;
+
+			rq = create_gpr_client(engine, global,
+					       NUM_GPR * i * sizeof(u32));
+			if (IS_ERR(rq))
+				goto end_test;
+
+			client[i] = rq;
+		}
+
+		/* Continuously preempt the set of 3 running contexts */
+		for (i = 1; i <= NUM_GPR; i++) {
+			err = preempt_user(engine, global, i);
+			if (err)
+				goto end_test;
+		}
+
+		if (READ_ONCE(result[0]) != NUM_GPR) {
+			pr_err("%s: Failed to release semaphore\n",
+			       engine->name);
+			err = -EIO;
+			goto end_test;
+		}
+
+		for (i = 0; i < ARRAY_SIZE(client); i++) {
+			int gpr;
+
+			if (i915_request_wait(client[i], 0, HZ / 2) < 0) {
+				err = -ETIME;
+				goto end_test;
+			}
+
+			for (gpr = 1; gpr < NUM_GPR; gpr++) {
+				if (result[NUM_GPR * i + gpr] != 1) {
+					pr_err("%s: Invalid result, client %d, gpr %d, result: %d\n",
+					       engine->name,
+					       i, gpr, result[NUM_GPR * i + gpr]);
+					err = -EINVAL;
+					goto end_test;
+				}
+			}
+		}
+
+end_test:
+		for (i = 0; i < ARRAY_SIZE(client); i++) {
+			if (!client[i])
+				break;
+
+			i915_request_put(client[i]);
+		}
+
+		/* Flush the semaphores on error */
+		smp_store_mb(result[0], -1);
+		if (igt_live_test_end(&t))
+			err = -EIO;
+		if (err)
+			break;
+	}
+
+	i915_vma_unpin_and_release(&global, I915_VMA_RELEASE_MAP);
+	return err;
+}
+
 static int live_preempt_timeout(void *arg)
 {
 	struct intel_gt *gt = arg;
@@ -3998,6 +4324,7 @@ int intel_execlists_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_chain_preempt),
 		SUBTEST(live_preempt_gang),
 		SUBTEST(live_preempt_timeout),
+		SUBTEST(live_preempt_user),
 		SUBTEST(live_preempt_smoke),
 		SUBTEST(live_virtual_engine),
 		SUBTEST(live_virtual_mask),
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
