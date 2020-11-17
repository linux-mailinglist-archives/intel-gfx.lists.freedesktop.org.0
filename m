Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 249512B5DCA
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 12:01:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E5996E199;
	Tue, 17 Nov 2020 11:01:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A59D66E188
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 11:01:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23015801-1500050 
 for multiple; Tue, 17 Nov 2020 11:01:30 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Nov 2020 11:01:28 +0000
Message-Id: <20201117110132.22267-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201117110132.22267-1-chris@chris-wilson.co.uk>
References: <20201117110132.22267-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/8] drm/i915/gt: Enable dynamic adjustment of
 RING_NONPRIV
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

The OA subsystem would like to enable its privileged clients access to
the OA registers from execbuf. This requires temporarily removing the
HW validation from those registers for the duration of the OA client,
for which we need to allow OA to dynamically adjust the set of
RING_NONPRIV.

Care must still be taken since the RING_NONPRIV are global, so any and
all contexts that run at the same time as the OA client, will also be
able to adjust the registers from their execbuf.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  59 +++++
 drivers/gpu/drm/i915/gt/intel_workarounds.h   |   7 +
 .../gpu/drm/i915/gt/selftest_workarounds.c    | 236 ++++++++++++++++++
 3 files changed, 302 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 290aa277ab10..c918739df6a6 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -230,6 +230,18 @@ static void _wa_add(struct i915_wa_list *wal, const struct i915_wa *wa)
 	__wa_add(wal, wa);
 }
 
+static void _wa_del(struct i915_wa_list *wal, i915_reg_t reg)
+{
+	struct i915_wa *wa = wal->list;
+	int index;
+
+	index = wa_index(wal, reg);
+	if (GEM_DEBUG_WARN_ON(index < 0))
+		return;
+
+	memmove(wa + index, wa + index + 1, --wal->count - index);
+}
+
 static void wa_add(struct i915_wa_list *wal, i915_reg_t reg,
 		   u32 clear, u32 set, u32 read_mask)
 {
@@ -2116,6 +2128,53 @@ void intel_engine_init_workarounds(struct intel_engine_cs *engine)
 	wa_init_finish(wal);
 }
 
+int intel_engine_allow_user_register_access(struct intel_engine_cs *engine,
+					    const i915_reg_t *reg,
+					    unsigned int count)
+{
+	struct i915_wa_list *wal = &engine->whitelist;
+	unsigned long flags;
+	int err;
+
+	if (GEM_DEBUG_WARN_ON(wal->count + count >= RING_MAX_NONPRIV_SLOTS))
+		return -ENOSPC;
+
+	spin_lock_irqsave(&engine->uncore->lock, flags);
+
+	err = wa_list_grow(wal, wal->count + count, GFP_ATOMIC | __GFP_NOWARN);
+	if (err)
+		goto out;
+
+	while (count--) {
+		struct i915_wa wa = { .reg = *reg++ };
+
+		__wa_add(wal, &wa);
+	}
+
+	__engine_apply_whitelist(engine);
+
+out:
+	spin_unlock_irqrestore(&engine->uncore->lock, flags);
+	return err;
+}
+
+void intel_engine_deny_user_register_access(struct intel_engine_cs *engine,
+					    const i915_reg_t *reg,
+					    unsigned int count)
+{
+	struct i915_wa_list *wal = &engine->whitelist;
+	unsigned long flags;
+
+	spin_lock_irqsave(&engine->uncore->lock, flags);
+
+	while (count--)
+		_wa_del(wal, *reg++);
+
+	__engine_apply_whitelist(engine);
+
+	spin_unlock_irqrestore(&engine->uncore->lock, flags);
+}
+
 void intel_engine_apply_workarounds(struct intel_engine_cs *engine)
 {
 	wa_list_apply(engine->uncore, &engine->wa_list);
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.h b/drivers/gpu/drm/i915/gt/intel_workarounds.h
index 8c9c769c2204..9c691493ea56 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.h
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.h
@@ -37,4 +37,11 @@ void intel_engine_apply_workarounds(struct intel_engine_cs *engine);
 int intel_engine_verify_workarounds(struct intel_engine_cs *engine,
 				    const char *from);
 
+int intel_engine_allow_user_register_access(struct intel_engine_cs *engine,
+					    const i915_reg_t *reg,
+					    unsigned int count);
+void intel_engine_deny_user_register_access(struct intel_engine_cs *engine,
+					    const i915_reg_t *reg,
+					    unsigned int count);
+
 #endif
diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
index 61a0532d0f3d..6f526199a11a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
@@ -1127,6 +1127,241 @@ static int live_isolated_whitelist(void *arg)
 	return err;
 }
 
+static int rmw_reg(struct intel_engine_cs *engine, const i915_reg_t reg)
+{
+	const u32 values[] = {
+		0x00000000,
+		0x01010101,
+		0x10100101,
+		0x03030303,
+		0x30300303,
+		0x05050505,
+		0x50500505,
+		0x0f0f0f0f,
+		0xf00ff00f,
+		0x10101010,
+		0xf0f01010,
+		0x30303030,
+		0xa0a03030,
+		0x50505050,
+		0xc0c05050,
+		0xf0f0f0f0,
+		0x11111111,
+		0x33333333,
+		0x55555555,
+		0x0000ffff,
+		0x00ff00ff,
+		0xff0000ff,
+		0xffff00ff,
+		0xffffffff,
+	};
+	struct i915_vma *vma, *batch;
+	struct intel_context *ce;
+	struct i915_request *rq;
+	u32 srm, lrm, idx;
+	u32 *cs, *results;
+	u64 addr;
+	int err;
+	int v;
+
+	ce = intel_context_create(engine);
+	if (IS_ERR(ce))
+		return PTR_ERR(ce);
+
+	vma = create_scratch(ce->vm, 1);
+	if (IS_ERR(vma)) {
+		err = PTR_ERR(vma);
+		goto out_context;
+	}
+
+	batch = create_batch(ce->vm);
+	if (IS_ERR(batch)) {
+		err = PTR_ERR(batch);
+		goto out_vma;
+	}
+
+	srm = MI_STORE_REGISTER_MEM;
+	lrm = MI_LOAD_REGISTER_MEM;
+	if (INTEL_GEN(ce->vm->i915) >= 8)
+		lrm++, srm++;
+
+	addr = vma->node.start;
+
+	cs = i915_gem_object_pin_map(batch->obj, I915_MAP_WC);
+	if (IS_ERR(cs)) {
+		err = PTR_ERR(cs);
+		goto out_batch;
+	}
+
+	/* SRM original */
+	*cs++ = srm;
+	*cs++ = i915_mmio_reg_offset(reg);
+	*cs++ = lower_32_bits(addr);
+	*cs++ = upper_32_bits(addr);
+
+	idx = 1;
+	for (v = 0; v < ARRAY_SIZE(values); v++) {
+		/* LRI garbage */
+		*cs++ = MI_LOAD_REGISTER_IMM(1);
+		*cs++ = i915_mmio_reg_offset(reg);
+		*cs++ = values[v];
+
+		/* SRM result */
+		*cs++ = srm;
+		*cs++ = i915_mmio_reg_offset(reg);
+		*cs++ = lower_32_bits(addr + sizeof(u32) * idx);
+		*cs++ = upper_32_bits(addr + sizeof(u32) * idx);
+		idx++;
+	}
+	for (v = 0; v < ARRAY_SIZE(values); v++) {
+		/* LRI garbage */
+		*cs++ = MI_LOAD_REGISTER_IMM(1);
+		*cs++ = i915_mmio_reg_offset(reg);
+		*cs++ = ~values[v];
+
+		/* SRM result */
+		*cs++ = srm;
+		*cs++ = i915_mmio_reg_offset(reg);
+		*cs++ = lower_32_bits(addr + sizeof(u32) * idx);
+		*cs++ = upper_32_bits(addr + sizeof(u32) * idx);
+		idx++;
+	}
+
+	/* LRM original -- don't leave garbage in the context! */
+	*cs++ = lrm;
+	*cs++ = i915_mmio_reg_offset(reg);
+	*cs++ = lower_32_bits(addr);
+	*cs++ = upper_32_bits(addr);
+
+	*cs++ = MI_BATCH_BUFFER_END;
+
+	i915_gem_object_flush_map(batch->obj);
+	i915_gem_object_unpin_map(batch->obj);
+	intel_gt_chipset_flush(engine->gt);
+
+	rq = intel_context_create_request(ce);
+	if (IS_ERR(rq)) {
+		err = PTR_ERR(rq);
+		goto out_batch;
+	}
+
+	if (engine->emit_init_breadcrumb) { /* Be nice if we hang */
+		err = engine->emit_init_breadcrumb(rq);
+		if (err)
+			goto err_request;
+	}
+
+	i915_vma_lock(batch);
+	err = i915_request_await_object(rq, batch->obj, false);
+	if (err == 0)
+		err = i915_vma_move_to_active(batch, rq, 0);
+	i915_vma_unlock(batch);
+	if (err)
+		goto err_request;
+
+	i915_vma_lock(vma);
+	err = i915_request_await_object(rq, vma->obj, true);
+	if (err == 0)
+		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
+	i915_vma_unlock(vma);
+	if (err)
+		goto err_request;
+
+	err = engine->emit_bb_start(rq, batch->node.start, PAGE_SIZE, 0);
+	if (err)
+		goto err_request;
+
+err_request:
+	err = request_add_sync(rq, err);
+	if (err) {
+		pr_err("%s: Futzing %04x timedout; cancelling test\n",
+		       engine->name, i915_mmio_reg_offset(reg));
+		intel_gt_set_wedged(engine->gt);
+		goto out_batch;
+	}
+
+	results = i915_gem_object_pin_map(vma->obj, I915_MAP_WB);
+	if (IS_ERR(results)) {
+		err = PTR_ERR(results);
+		goto out_batch;
+	}
+
+	for (v = 0, idx = 0; v < 2 * ARRAY_SIZE(values); v++) {
+		if (results[++idx] != results[0]) {
+			err = idx;
+			break;
+		}
+	}
+
+out_batch:
+	i915_vma_put(batch);
+out_vma:
+	i915_vma_put(vma);
+out_context:
+	intel_context_put(ce);
+	return err;
+}
+
+static int live_dynamic_whitelist(void *arg)
+{
+	struct intel_gt *gt = arg;
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+	int err = 0;
+
+	if (INTEL_GEN(gt->i915) < 8)
+		return 0;
+
+	for_each_engine(engine, gt, id) {
+		const i915_reg_t reg = RING_MAX_IDLE(engine->mmio_base);
+
+		err = rmw_reg(engine, reg);
+		if (err < 0)
+			break;
+
+		if (err) {
+			pr_err("%s: Able to write to protected reg:%04x!\n",
+			       engine->name, i915_mmio_reg_offset(reg));
+			err = -EINVAL;
+			break;
+		}
+
+		err = intel_engine_allow_user_register_access(engine, &reg, 1);
+		if (err)
+			break;
+
+		err = rmw_reg(engine, reg);
+		intel_engine_deny_user_register_access(engine, &reg, 1);
+		if (err < 0)
+			break;
+
+		if (!err) {
+			pr_err("%s: Unable to write to allowed reg:%04x!\n",
+			       engine->name, i915_mmio_reg_offset(reg));
+			err = -EINVAL;
+			break;
+		}
+
+		err = rmw_reg(engine, reg);
+		if (err < 0)
+			break;
+
+		if (err) {
+			pr_err("%s: Able to write to denied reg:%04x!\n",
+			       engine->name, i915_mmio_reg_offset(reg));
+			err = -EINVAL;
+			break;
+		}
+
+		err = 0;
+	}
+
+	if (igt_flush_test(gt->i915))
+		err = -EIO;
+
+	return err;
+}
+
 static bool
 verify_wa_lists(struct i915_gem_context *ctx, struct wa_lists *lists,
 		const char *str)
@@ -1288,6 +1523,7 @@ int intel_workarounds_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_dirty_whitelist),
 		SUBTEST(live_reset_whitelist),
 		SUBTEST(live_isolated_whitelist),
+		SUBTEST(live_dynamic_whitelist),
 		SUBTEST(live_gpu_reset_workarounds),
 		SUBTEST(live_engine_reset_workarounds),
 	};
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
